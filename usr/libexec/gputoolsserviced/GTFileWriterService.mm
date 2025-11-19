@interface GTFileWriterService
- (BOOL)_finishSession:(unint64_t)a3 error:(id *)a4;
- (GTFileWriterService)initWithConnectionProvider:(id)a3 deviceUDID:(id)a4 urlAccessProvider:(id)a5;
- (void)beginTransferSessionWithFileEntries:(id)a3 basePath:(id)a4 toDevice:(id)a5 options:(id)a6 sessionID:(unint64_t)a7 completionHandler:(id)a8;
- (void)initiateTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)initiateTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 toURL:(id)a6 options:(id)a7 completionHandler:(id)a8;
- (void)startTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)startTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 toDirectory:(id)a6 options:(id)a7 completionHandler:(id)a8;
- (void)writeFileData:(id)a3 sessionID:(unint64_t)a4 completionHandler:(id)a5;
@end

@implementation GTFileWriterService

- (GTFileWriterService)initWithConnectionProvider:(id)a3 deviceUDID:(id)a4 urlAccessProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
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

    objc_storeStrong(&v12->_connectionProvider, a3);
    objc_storeStrong(&v12->_deviceUDID, a4);
    objc_storeStrong(&v12->_urlAccessProvider, a5);
    v17 = dispatch_queue_create("com.apple.gputools.filetransfer", 0);
    fileTransferQueue = v12->_fileTransferQueue;
    v12->_fileTransferQueue = v17;

    v19 = dispatch_semaphore_create(1);
    writeSem = v12->_writeSem;
    v12->_writeSem = v19;
  }

  return v12;
}

- (void)initiateTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = GTTransportArchiveDirectory();
  v18 = [v17 stringByAppendingPathComponent:v15];
  v19 = [NSURL fileURLWithPath:v18 isDirectory:1];

  [(GTFileWriterService *)self initiateTransfer:v16 basePath:v15 fromDevice:v14 toURL:v19 options:v13 completionHandler:v12];
}

- (void)startTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = NSTemporaryDirectory();
  v18 = sub_10000EAA0(v15, v17);

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000EBB8;
  v21[3] = &unk_100040C50;
  v22 = v18;
  v23 = v12;
  v21[4] = self;
  v19 = v18;
  v20 = v12;
  [(GTFileWriterService *)self initiateTransfer:v16 basePath:v15 fromDevice:v14 toURL:v19 options:v13 completionHandler:v21];
}

- (void)startTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 toDirectory:(id)a6 options:(id)a7 completionHandler:(id)a8
{
  v14 = a4;
  v15 = a6;
  v16 = a8;
  v17 = a7;
  v18 = a5;
  v19 = a3;
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
    v22 = [NSString stringWithFormat:@"Start transfer of %@ to %@", v14, v15];
    fprintf(v21, "%s\n", [v22 UTF8String]);
  }

  if (([v15 startAccessingSecurityScopedResource] & 1) == 0)
  {
    if (GTCoreLogUseOsLog())
    {
      v23 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        sub_100013574();
      }
    }

    else
    {
      v24 = __stdoutp;
      v23 = [NSString stringWithFormat:@"Failed to consume sandbox extension for URL %@", v15];
      fprintf(v24, "%s\n", [v23 UTF8String]);
    }
  }

  v25 = [v15 path];
  v26 = sub_10000EAA0(v14, v25);

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000EEDC;
  v30[3] = &unk_100040C78;
  v31 = v15;
  v32 = v26;
  v33 = self;
  v34 = v16;
  v27 = v26;
  v28 = v15;
  v29 = v16;
  [(GTFileWriterService *)self initiateTransfer:v19 basePath:v14 fromDevice:v18 toURL:v27 options:v17 completionHandler:v30];
}

- (void)initiateTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 toURL:(id)a6 options:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v54 = v17;
  if (GTCoreLogUseOsLog())
  {
    v20 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v66 = v15;
      v67 = 2112;
      v68 = v16;
      v69 = 2112;
      v70 = v17;
      v71 = 2048;
      v72 = [v18 chunkSize];
      v73 = 2080;
      v74 = sub_10000FB14([v18 compressionAlgorithm]);
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Initiate transfer basePath:%@ device:%@ toURL:%@ chunkSize:%lu compression:%s", buf, 0x34u);
    }
  }

  else
  {
    v21 = __stdoutp;
    v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Initiate transfer basePath:%@ device:%@ toURL:%@ chunkSize:%lu compression:%s", v15, v16, v17, [v18 chunkSize], sub_10000FB14(objc_msgSend(v18, "compressionAlgorithm")));
    fprintf(v21, "%s\n", [v22 UTF8String]);
  }

  v53 = v15;
  if (sub_10000FB38(v18))
  {
    v58 = 0;
    v23 = [GTFileWriterSession sessionWithFileEntries:v14 relativeToURL:v17 options:v18 error:&v58];
    v24 = v58;
    if (v23)
    {
      v52 = v14;
      v25 = self->_sessionCounts + 1;
      self->_sessionCounts = v25;
      sessions = self->_sessions;
      v27 = [NSNumber numberWithUnsignedLongLong:v25];
      [(NSMutableDictionary *)sessions setObject:v23 forKeyedSubscript:v27];

      v28 = [(GTConnectionProvider *)self->_connectionProvider connectionForDeviceUDID:v16];
      v51 = v28;
      if (v28)
      {
        v29 = v28;
        v30 = FindRemoteGTFileWriterService(v28, v16, self->_connectionProvider);
        v50 = v30;
        if (v30)
        {
          v31 = v30;
          v32 = [GTFileWriterServiceXPCProxy alloc];
          v33 = [v31 serviceProperties];
          v34 = [(GTFileWriterServiceXPCProxy *)v32 initWithConnection:v29 remoteProperties:v33];

          deviceUDID = self->_deviceUDID;
          v55[0] = _NSConcreteStackBlock;
          v55[1] = 3221225472;
          v55[2] = sub_10000FB8C;
          v55[3] = &unk_100040CA0;
          v55[4] = self;
          v57 = v25;
          v56 = v19;
          [(GTFileWriterServiceXPCProxy *)v34 beginTransferSessionWithFileEntries:v52 basePath:v53 toDevice:deviceUDID options:v18 sessionID:v25 completionHandler:v55];
        }

        else
        {
          if (GTCoreLogUseOsLog())
          {
            v42 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              sub_1000137D8();
            }
          }

          else
          {
            v47 = __stderrp;
            v42 = [NSString stringWithFormat:@"File writer service for %@ is unavailable", v16];
            fprintf(v47, "%s\n", [v42 UTF8String]);
          }

          v59 = NSLocalizedDescriptionKey;
          v48 = [NSString stringWithFormat:@"Service is unavailable: %@", @"GTFileWriterService"];
          v60 = v48;
          v49 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          v34 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:1 userInfo:v49];

          (*(v19 + 2))(v19, v34);
        }

        v46 = v50;
      }

      else
      {
        if (GTCoreLogUseOsLog())
        {
          v41 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            sub_100013848();
          }
        }

        else
        {
          v43 = __stderrp;
          v41 = [NSString stringWithFormat:@"Remote connection for %@ is unavailable", v16];
          fprintf(v43, "%s\n", [v41 UTF8String]);
        }

        v61 = NSLocalizedDescriptionKey;
        v44 = [NSString stringWithFormat:@"Unable to find remote connection"];
        v62 = v44;
        v45 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v46 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:5 userInfo:v45];

        (*(v19 + 2))(v19, v46);
      }

      v14 = v52;
    }

    else
    {
      (*(v19 + 2))(v19, v24);
    }
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v36 = gt_tagged_log(0x10u);
      v37 = v14;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_1000137A4();
      }
    }

    else
    {
      v37 = v14;
      v38 = __stderrp;
      v36 = [NSString stringWithFormat:@"Invalid options sent to initiateTransfer"];
      fprintf(v38, "%s\n", [v36 UTF8String]);
    }

    v63 = NSLocalizedDescriptionKey;
    v39 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterService", @"options sent to initiateTransfer are invalid."];
    v64 = v39;
    v40 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v24 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v40];

    (*(v19 + 2))(v19, v24);
    v14 = v37;
  }
}

- (void)beginTransferSessionWithFileEntries:(id)a3 basePath:(id)a4 toDevice:(id)a5 options:(id)a6 sessionID:(unint64_t)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v50 = [(GTURLAccessProvider *)self->_urlAccessProvider urlForPath:v15];
  if (![v14 count])
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

  if (sub_10000FB38(v17))
  {
    v19 = [(GTConnectionProvider *)self->_connectionProvider connectionForDeviceUDID:v16];
    v20 = v19;
    if (v19)
    {
      v21 = FindRemoteGTFileWriterService(v19, v16, self->_connectionProvider);
      v49 = v21;
      if (v21)
      {
        v22 = v21;
        v23 = [GTFileWriterServiceXPCProxy alloc];
        v24 = [v22 serviceProperties];
        v25 = [(GTFileWriterServiceXPCProxy *)v23 initWithConnection:v20 remoteProperties:v24];

        [v50 startAccessingSecurityScopedResource];
        v26 = [NSURL fileURLWithPath:v15 isDirectory:1];
        queue = self->_fileTransferQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000104E8;
        block[3] = &unk_100040CF0;
        v52 = v14;
        v53 = v26;
        v54 = v17;
        v55 = self;
        v56 = v25;
        v59 = a7;
        v57 = v50;
        v58 = v18;
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
          v45 = [NSString stringWithFormat:@"File writer service for %@ is unavailable", v16];
          fprintf(v44, "%s\n", [v45 UTF8String]);
        }

        v60 = NSLocalizedDescriptionKey;
        v46 = [NSString stringWithFormat:@"Service is unavailable: %@", @"GTFileWriterService"];
        v61 = v46;
        v47 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v28 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:1 userInfo:v47];

        (*(v18 + 2))(v18, v28);
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
      v41 = [NSString stringWithFormat:@"Remote connection for %@ is unavailable", v16];
      fprintf(v40, "%s\n", [v41 UTF8String]);
    }

    v62 = NSLocalizedDescriptionKey;
    v42 = [NSString stringWithFormat:@"Unable to find remote connection"];
    v63 = v42;
    v43 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v33 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:5 userInfo:v43];

LABEL_28:
    (*(v18 + 2))(v18, v33);
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

  (*(v18 + 2))(v18, v20);
LABEL_33:
}

- (void)writeFileData:(id)a3 sessionID:(unint64_t)a4 completionHandler:(id)a5
{
  sessions = self->_sessions;
  v8 = a5;
  v9 = a3;
  v11 = [NSNumber numberWithUnsignedLongLong:a4];
  v10 = [(NSMutableDictionary *)sessions objectForKeyedSubscript:v11];
  [v10 writeFileData:v9 completionHandler:v8];
}

- (BOOL)_finishSession:(unint64_t)a3 error:(id *)a4
{
  sessions = self->_sessions;
  v8 = [NSNumber numberWithUnsignedLongLong:?];
  v9 = [(NSMutableDictionary *)sessions objectForKeyedSubscript:v8];

  v10 = self->_sessions;
  v11 = [NSNumber numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)v10 removeObjectForKey:v11];

  LOBYTE(a4) = [v9 finish:a4];
  return a4;
}

@end