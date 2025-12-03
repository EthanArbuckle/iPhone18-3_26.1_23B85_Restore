@interface GTFileWriterService
- (BOOL)_finishSession:(unint64_t)session error:(id *)error;
- (GTFileWriterService)initWithConnectionProvider:(id)provider deviceUDID:(id)d urlAccessProvider:(id)accessProvider;
- (void)beginTransferSessionWithFileEntries:(id)entries basePath:(id)path toDevice:(id)device options:(id)options sessionID:(unint64_t)d completionHandler:(id)handler;
- (void)initiateTransfer:(id)transfer basePath:(id)path fromDevice:(id)device options:(id)options completionHandler:(id)handler;
- (void)initiateTransfer:(id)transfer basePath:(id)path fromDevice:(id)device toURL:(id)l options:(id)options completionHandler:(id)handler;
- (void)startTransfer:(id)transfer basePath:(id)path fromDevice:(id)device options:(id)options completionHandler:(id)handler;
- (void)startTransfer:(id)transfer basePath:(id)path fromDevice:(id)device toDirectory:(id)directory options:(id)options completionHandler:(id)handler;
- (void)writeFileData:(id)data sessionID:(unint64_t)d completionHandler:(id)handler;
@end

@implementation GTFileWriterService

- (GTFileWriterService)initWithConnectionProvider:(id)provider deviceUDID:(id)d urlAccessProvider:(id)accessProvider
{
  providerCopy = provider;
  dCopy = d;
  accessProviderCopy = accessProvider;
  v22.receiver = self;
  v22.super_class = GTFileWriterService;
  v12 = [(GTFileWriterService *)&v22 init];
  if (v12)
  {
    v13 = NSTemporaryDirectory();
    DeleteAllArchives(v13);

    v14 = GTTransportArchiveDirectory();
    DeleteAllArchives(v14);

    v15 = objc_alloc_init(NSMutableDictionary);
    sessions = v12->_sessions;
    v12->_sessions = v15;

    objc_storeStrong(&v12->_connectionProvider, provider);
    objc_storeStrong(&v12->_deviceUDID, d);
    objc_storeStrong(&v12->_urlAccessProvider, accessProvider);
    v17 = dispatch_queue_create("com.apple.gputools.filetransfer", 0);
    fileTransferQueue = v12->_fileTransferQueue;
    v12->_fileTransferQueue = v17;

    v19 = dispatch_semaphore_create(1);
    writeSem = v12->_writeSem;
    v12->_writeSem = v19;
  }

  return v12;
}

- (void)initiateTransfer:(id)transfer basePath:(id)path fromDevice:(id)device options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  deviceCopy = device;
  pathCopy = path;
  transferCopy = transfer;
  v17 = GTTransportArchiveDirectory();
  v18 = [v17 stringByAppendingPathComponent:pathCopy];
  v19 = [NSURL fileURLWithPath:v18 isDirectory:1];

  [(GTFileWriterService *)self initiateTransfer:transferCopy basePath:pathCopy fromDevice:deviceCopy toURL:v19 options:optionsCopy completionHandler:handlerCopy];
}

- (void)startTransfer:(id)transfer basePath:(id)path fromDevice:(id)device options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  deviceCopy = device;
  pathCopy = path;
  transferCopy = transfer;
  v17 = NSTemporaryDirectory();
  v18 = sub_10000EAA0(pathCopy, v17);

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000EBB8;
  v21[3] = &unk_100040C50;
  v22 = v18;
  v23 = handlerCopy;
  v21[4] = self;
  v19 = v18;
  v20 = handlerCopy;
  [(GTFileWriterService *)self initiateTransfer:transferCopy basePath:pathCopy fromDevice:deviceCopy toURL:v19 options:optionsCopy completionHandler:v21];
}

- (void)startTransfer:(id)transfer basePath:(id)path fromDevice:(id)device toDirectory:(id)directory options:(id)options completionHandler:(id)handler
{
  pathCopy = path;
  directoryCopy = directory;
  handlerCopy = handler;
  optionsCopy = options;
  deviceCopy = device;
  transferCopy = transfer;
  if (GTCoreLogUseOsLog())
  {
    v20 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_1000134F0();
    }
  }

  else
  {
    v21 = __stdoutp;
    directoryCopy = [NSString stringWithFormat:@"Start transfer of %@ to %@", pathCopy, directoryCopy];
    fprintf(v21, "%s\n", [directoryCopy UTF8String]);
  }

  if (([directoryCopy startAccessingSecurityScopedResource] & 1) == 0)
  {
    if (GTCoreLogUseOsLog())
    {
      directoryCopy2 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(directoryCopy2, OS_LOG_TYPE_DEBUG))
      {
        sub_100013574();
      }
    }

    else
    {
      v24 = __stdoutp;
      directoryCopy2 = [NSString stringWithFormat:@"Failed to consume sandbox extension for URL %@", directoryCopy];
      fprintf(v24, "%s\n", [directoryCopy2 UTF8String]);
    }
  }

  path = [directoryCopy path];
  v26 = sub_10000EAA0(pathCopy, path);

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000EEDC;
  v30[3] = &unk_100040C78;
  v31 = directoryCopy;
  v32 = v26;
  selfCopy = self;
  v34 = handlerCopy;
  v27 = v26;
  v28 = directoryCopy;
  v29 = handlerCopy;
  [(GTFileWriterService *)self initiateTransfer:transferCopy basePath:pathCopy fromDevice:deviceCopy toURL:v27 options:optionsCopy completionHandler:v30];
}

- (void)initiateTransfer:(id)transfer basePath:(id)path fromDevice:(id)device toURL:(id)l options:(id)options completionHandler:(id)handler
{
  transferCopy = transfer;
  pathCopy = path;
  deviceCopy = device;
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  v54 = lCopy;
  if (GTCoreLogUseOsLog())
  {
    v20 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v66 = pathCopy;
      v67 = 2112;
      v68 = deviceCopy;
      v69 = 2112;
      v70 = lCopy;
      v71 = 2048;
      chunkSize = [optionsCopy chunkSize];
      v73 = 2080;
      v74 = sub_10000FB14([optionsCopy compressionAlgorithm]);
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Initiate transfer basePath:%@ device:%@ toURL:%@ chunkSize:%lu compression:%s", buf, 0x34u);
    }
  }

  else
  {
    v21 = __stdoutp;
    v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Initiate transfer basePath:%@ device:%@ toURL:%@ chunkSize:%lu compression:%s", pathCopy, deviceCopy, lCopy, [optionsCopy chunkSize], sub_10000FB14(objc_msgSend(optionsCopy, "compressionAlgorithm")));
    fprintf(v21, "%s\n", [v22 UTF8String]);
  }

  v53 = pathCopy;
  if (sub_10000FB38(optionsCopy))
  {
    v58 = 0;
    v23 = [GTFileWriterSession sessionWithFileEntries:transferCopy relativeToURL:lCopy options:optionsCopy error:&v58];
    v24 = v58;
    if (v23)
    {
      v52 = transferCopy;
      v25 = self->_sessionCounts + 1;
      self->_sessionCounts = v25;
      sessions = self->_sessions;
      v27 = [NSNumber numberWithUnsignedLongLong:v25];
      [(NSMutableDictionary *)sessions setObject:v23 forKeyedSubscript:v27];

      v28 = [(GTConnectionProvider *)self->_connectionProvider connectionForDeviceUDID:deviceCopy];
      v51 = v28;
      if (v28)
      {
        v29 = v28;
        v30 = FindRemoteGTFileWriterService(v28, deviceCopy, self->_connectionProvider);
        v50 = v30;
        if (v30)
        {
          v31 = v30;
          v32 = [GTFileWriterServiceXPCProxy alloc];
          serviceProperties = [v31 serviceProperties];
          v34 = [(GTFileWriterServiceXPCProxy *)v32 initWithConnection:v29 remoteProperties:serviceProperties];

          deviceUDID = self->_deviceUDID;
          v55[0] = _NSConcreteStackBlock;
          v55[1] = 3221225472;
          v55[2] = sub_10000FB8C;
          v55[3] = &unk_100040CA0;
          v55[4] = self;
          v57 = v25;
          v56 = handlerCopy;
          [(GTFileWriterServiceXPCProxy *)v34 beginTransferSessionWithFileEntries:v52 basePath:v53 toDevice:deviceUDID options:optionsCopy sessionID:v25 completionHandler:v55];
        }

        else
        {
          if (GTCoreLogUseOsLog())
          {
            deviceCopy = gt_tagged_log(0x10u);
            if (os_log_type_enabled(deviceCopy, OS_LOG_TYPE_ERROR))
            {
              sub_1000137D8();
            }
          }

          else
          {
            v47 = __stderrp;
            deviceCopy = [NSString stringWithFormat:@"File writer service for %@ is unavailable", deviceCopy];
            fprintf(v47, "%s\n", [deviceCopy UTF8String]);
          }

          v59 = NSLocalizedDescriptionKey;
          v48 = [NSString stringWithFormat:@"Service is unavailable: %@", @"GTFileWriterService"];
          v60 = v48;
          v49 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          v34 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:1 userInfo:v49];

          (*(handlerCopy + 2))(handlerCopy, v34);
        }

        v46 = v50;
      }

      else
      {
        if (GTCoreLogUseOsLog())
        {
          deviceCopy2 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(deviceCopy2, OS_LOG_TYPE_ERROR))
          {
            sub_100013848();
          }
        }

        else
        {
          v43 = __stderrp;
          deviceCopy2 = [NSString stringWithFormat:@"Remote connection for %@ is unavailable", deviceCopy];
          fprintf(v43, "%s\n", [deviceCopy2 UTF8String]);
        }

        v61 = NSLocalizedDescriptionKey;
        v44 = [NSString stringWithFormat:@"Unable to find remote connection"];
        v62 = v44;
        v45 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v46 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:5 userInfo:v45];

        (*(handlerCopy + 2))(handlerCopy, v46);
      }

      transferCopy = v52;
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, v24);
    }
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v36 = gt_tagged_log(0x10u);
      v37 = transferCopy;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_1000137A4();
      }
    }

    else
    {
      v37 = transferCopy;
      v38 = __stderrp;
      v36 = [NSString stringWithFormat:@"Invalid options sent to initiateTransfer"];
      fprintf(v38, "%s\n", [v36 UTF8String]);
    }

    v63 = NSLocalizedDescriptionKey;
    v39 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterService", @"options sent to initiateTransfer are invalid."];
    v64 = v39;
    v40 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v24 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v40];

    (*(handlerCopy + 2))(handlerCopy, v24);
    transferCopy = v37;
  }
}

- (void)beginTransferSessionWithFileEntries:(id)entries basePath:(id)path toDevice:(id)device options:(id)options sessionID:(unint64_t)d completionHandler:(id)handler
{
  entriesCopy = entries;
  pathCopy = path;
  deviceCopy = device;
  optionsCopy = options;
  handlerCopy = handler;
  v50 = [(GTURLAccessProvider *)self->_urlAccessProvider urlForPath:pathCopy];
  if (![entriesCopy count])
  {
    if (GTCoreLogUseOsLog())
    {
      v29 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_100013A08();
      }
    }

    else
    {
      v31 = __stderrp;
      v32 = [NSString stringWithFormat:@"No files specified"];
      fprintf(v31, "%s\n", [v32 UTF8String]);
    }

    v66 = NSLocalizedDescriptionKey;
    v67 = @"No files specified";
    v20 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v33 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:v20];
    goto LABEL_28;
  }

  if (sub_10000FB38(optionsCopy))
  {
    v19 = [(GTConnectionProvider *)self->_connectionProvider connectionForDeviceUDID:deviceCopy];
    v20 = v19;
    if (v19)
    {
      v21 = FindRemoteGTFileWriterService(v19, deviceCopy, self->_connectionProvider);
      v49 = v21;
      if (v21)
      {
        v22 = v21;
        v23 = [GTFileWriterServiceXPCProxy alloc];
        serviceProperties = [v22 serviceProperties];
        v25 = [(GTFileWriterServiceXPCProxy *)v23 initWithConnection:v20 remoteProperties:serviceProperties];

        [v50 startAccessingSecurityScopedResource];
        v26 = [NSURL fileURLWithPath:pathCopy isDirectory:1];
        queue = self->_fileTransferQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000104E8;
        block[3] = &unk_100040CF0;
        v52 = entriesCopy;
        v53 = v26;
        v54 = optionsCopy;
        selfCopy = self;
        v56 = v25;
        dCopy = d;
        v57 = v50;
        v58 = handlerCopy;
        v27 = v25;
        v28 = v26;
        dispatch_async(queue, block);
      }

      else
      {
        if (GTCoreLogUseOsLog())
        {
          v39 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_1000137D8();
          }
        }

        else
        {
          v44 = __stderrp;
          deviceCopy = [NSString stringWithFormat:@"File writer service for %@ is unavailable", deviceCopy];
          fprintf(v44, "%s\n", [deviceCopy UTF8String]);
        }

        v60 = NSLocalizedDescriptionKey;
        v46 = [NSString stringWithFormat:@"Service is unavailable: %@", @"GTFileWriterService"];
        v61 = v46;
        v47 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v28 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:1 userInfo:v47];

        (*(handlerCopy + 2))(handlerCopy, v28);
      }

      v33 = v49;
      goto LABEL_32;
    }

    if (GTCoreLogUseOsLog())
    {
      v38 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_100013848();
      }
    }

    else
    {
      v40 = __stderrp;
      deviceCopy2 = [NSString stringWithFormat:@"Remote connection for %@ is unavailable", deviceCopy];
      fprintf(v40, "%s\n", [deviceCopy2 UTF8String]);
    }

    v62 = NSLocalizedDescriptionKey;
    v42 = [NSString stringWithFormat:@"Unable to find remote connection"];
    v63 = v42;
    v43 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v33 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:5 userInfo:v43];

LABEL_28:
    (*(handlerCopy + 2))(handlerCopy, v33);
LABEL_32:

    goto LABEL_33;
  }

  if (GTCoreLogUseOsLog())
  {
    v30 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1000139D4();
    }
  }

  else
  {
    v34 = __stderrp;
    v35 = [NSString stringWithFormat:@"Invalid options sent to beginTransferSessionWithFileEntries"];
    fprintf(v34, "%s\n", [v35 UTF8String]);
  }

  v64 = NSLocalizedDescriptionKey;
  v36 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterService", @"options sent to beginTransferSessionWithFileEntries is invalid"];
  v65 = v36;
  v37 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v20 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v37];

  (*(handlerCopy + 2))(handlerCopy, v20);
LABEL_33:
}

- (void)writeFileData:(id)data sessionID:(unint64_t)d completionHandler:(id)handler
{
  sessions = self->_sessions;
  handlerCopy = handler;
  dataCopy = data;
  v11 = [NSNumber numberWithUnsignedLongLong:d];
  v10 = [(NSMutableDictionary *)sessions objectForKeyedSubscript:v11];
  [v10 writeFileData:dataCopy completionHandler:handlerCopy];
}

- (BOOL)_finishSession:(unint64_t)session error:(id *)error
{
  sessions = self->_sessions;
  v8 = [NSNumber numberWithUnsignedLongLong:?];
  v9 = [(NSMutableDictionary *)sessions objectForKeyedSubscript:v8];

  v10 = self->_sessions;
  v11 = [NSNumber numberWithUnsignedLongLong:session];
  [(NSMutableDictionary *)v10 removeObjectForKey:v11];

  LOBYTE(error) = [v9 finish:error];
  return error;
}

@end