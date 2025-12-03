@interface GTURLAccessProvider
- (BOOL)_sharesFileSystemWith:(id)with remoteConnection:(id)connection;
- (GTURLAccessProvider)initWithServiceProvider:(id)provider connectionProvider:(id)connectionProvider serviceVendor:(id)vendor;
- (id)makeURL:(id)l;
- (id)urlForPath:(id)path;
- (void)copyIdentifier:(id)identifier toDevice:(id)device allowLocalURL:(BOOL)l directory:(id)directory completionHandler:(id)handler;
- (void)securityScopedURLFromSandboxID:(id)d completionHandler:(id)handler;
- (void)transferIdentifier:(id)identifier toDevice:(id)device completionHandler:(id)handler;
@end

@implementation GTURLAccessProvider

- (GTURLAccessProvider)initWithServiceProvider:(id)provider connectionProvider:(id)connectionProvider serviceVendor:(id)vendor
{
  providerCopy = provider;
  connectionProviderCopy = connectionProvider;
  vendorCopy = vendor;
  v12 = vendorCopy;
  selfCopy = 0;
  if (providerCopy && connectionProviderCopy && vendorCopy)
  {
    v21.receiver = self;
    v21.super_class = GTURLAccessProvider;
    v14 = [(GTURLAccessProvider *)&v21 init];
    if (v14)
    {
      v15 = objc_opt_new();
      registeredURLs = v14->_registeredURLs;
      v14->_registeredURLs = v15;

      v17 = +[GTDeviceProperties uniqueDeviceID];
      deviceUDID = v14->_deviceUDID;
      v14->_deviceUDID = v17;

      objc_storeStrong(&v14->_serviceProvider, provider);
      objc_storeStrong(&v14->_connectionProvider, connectionProvider);
      objc_storeStrong(&v14->_serviceVendor, vendor);
      v19 = NSTemporaryDirectory();
      DeleteAllArchives(v19);
    }

    self = v14;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)urlForPath:(id)path
{
  pathCopy = path;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_registeredURLs;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [(NSMutableDictionary *)self->_registeredURLs objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v9), v14];
      path = [v10 path];
      v12 = [path isEqualToString:pathCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  return v10;
}

- (BOOL)_sharesFileSystemWith:(id)with remoteConnection:(id)connection
{
  withCopy = with;
  connectionCopy = connection;
  v8 = connectionCopy;
  v9 = 0;
  if (withCopy && connectionCopy)
  {
    if ([(NSString *)self->_deviceUDID isEqualToString:withCopy])
    {
      v9 = 1;
    }

    else
    {
      allServices = [(GTServiceProvider *)self->_serviceProvider allServices];
      v11 = filteredArrayByService(allServices, &OBJC_PROTOCOL___GTSimulatorDeviceBrowser);
      firstObject = [v11 firstObject];

      serviceVendor = self->_serviceVendor;
      serviceProperties = [firstObject serviceProperties];
      v15 = [(GTServiceVendor *)serviceVendor getSimulatorDeviceBrowserService:serviceProperties];

      v9 = [v15 isSimulatorDevice:withCopy];
    }
  }

  return v9;
}

- (void)securityScopedURLFromSandboxID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = dCopy;
  if (!v8)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  scheme = [v8 scheme];
  v10 = [scheme isEqualToString:@"gtsandboxid"];

  if (v10 && ([v8 host], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    path = [v8 path];

    if (path)
    {
      if (GTCoreLogUseOsLog())
      {
        v13 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          sub_10001AFB4();
        }
      }

      else
      {
        v17 = __stdoutp;
        v18 = [NSString stringWithFormat:@"securityScopedURLFromSandboxID %@", v8];
        fprintf(v17, "%s\n", [v18 UTF8String]);
      }

      v19 = [(NSMutableDictionary *)self->_registeredURLs objectForKeyedSubscript:v8];
      if (v19)
      {
        host = v19;
        v21 = +[NSFileManager defaultManager];
        path2 = [host path];
        v23 = [v21 fileExistsAtPath:path2];

        v24 = GTCoreLogUseOsLog();
        if (v23)
        {
          if (v24)
          {
            v25 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              sub_10001B08C();
            }
          }

          else
          {
            v27 = __stdoutp;
            v25 = [NSString stringWithFormat:@"File found locally %@", host];
            fprintf(v27, "%s\n", [v25 UTF8String]);
          }

          handlerCopy[2](handlerCopy, host);
LABEL_51:

          goto LABEL_17;
        }

        if (v24)
        {
          v26 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_10001B01C();
          }
        }

        else
        {
          v28 = __stderrp;
          v26 = [NSString stringWithFormat:@"File should exist locally at %@ but can't be found on disk", host];
          fprintf(v28, "%s\n", [v26 UTF8String]);
        }

        [(NSMutableDictionary *)self->_registeredURLs removeObjectForKey:v8];
      }

      host = [v8 host];
      v29 = [(GTConnectionProvider *)self->_connectionProvider connectionForDeviceUDID:host];
      v30 = v29;
      if (v29)
      {
        v31 = allServicesForDeviceUDID(v29, host);
        v32 = filteredArrayByService(v31, &OBJC_PROTOCOL___GTURLAccessProvider);
        firstObject = [v32 firstObject];

        if (firstObject)
        {
          v34 = [GTURLAccessProviderXPCProxy alloc];
          serviceProperties = [firstObject serviceProperties];
          v36 = [(GTURLAccessProviderXPCProxy *)v34 initWithConnection:v30 remoteProperties:serviceProperties];

          if ([(GTURLAccessProvider *)self _sharesFileSystemWith:host remoteConnection:v30])
          {
            v50[0] = _NSConcreteStackBlock;
            v50[1] = 3221225472;
            v50[2] = sub_1000178C8;
            v50[3] = &unk_100040D70;
            v50[4] = self;
            v51 = v8;
            v52 = handlerCopy;
            [(GTURLAccessProviderXPCProxy *)v36 securityScopedURLFromSandboxID:v51 completionHandler:v50];

            v37 = v51;
          }

          else
          {
            v40 = objc_opt_respondsToSelector();
            deviceUDID = self->_deviceUDID;
            if (v40)
            {
              v47[0] = _NSConcreteStackBlock;
              v47[1] = 3221225472;
              v47[2] = sub_100017938;
              v47[3] = &unk_100040D98;
              v49 = handlerCopy;
              v47[4] = self;
              v48 = v8;
              [(GTURLAccessProviderXPCProxy *)v36 copyIdentifier:v48 toDevice:deviceUDID completionHandler:v47];

              v37 = v49;
            }

            else
            {
              v44[0] = _NSConcreteStackBlock;
              v44[1] = 3221225472;
              v44[2] = sub_100017BA4;
              v44[3] = &unk_100040DC0;
              v46 = handlerCopy;
              v44[4] = self;
              v45 = v8;
              [(GTURLAccessProviderXPCProxy *)v36 transferIdentifier:v45 toDevice:deviceUDID completionHandler:v44];

              v37 = v46;
            }
          }
        }

        else
        {
          if (GTCoreLogUseOsLog())
          {
            v39 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              sub_10001B0F4();
            }
          }

          else
          {
            v43 = __stderrp;
            v39 = [NSString stringWithFormat:@"Failed to find URL access provider"];
            fprintf(v43, "%s\n", [v39 UTF8String]);
          }

          handlerCopy[2](handlerCopy, 0);
        }
      }

      else
      {
        if (GTCoreLogUseOsLog())
        {
          v38 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            sub_10001B130();
          }
        }

        else
        {
          v42 = __stderrp;
          v38 = [NSString stringWithFormat:@"Missing remote connection for %@", host];
          fprintf(v42, "%s\n", [v38 UTF8String]);
        }

        handlerCopy[2](handlerCopy, 0);
      }

      goto LABEL_51;
    }
  }

  else
  {
LABEL_10:
  }

  if (GTCoreLogUseOsLog())
  {
    v14 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10001B1A0();
    }
  }

  else
  {
    v15 = __stderrp;
    v16 = [NSString stringWithFormat:@"Invalid sandbox ID %@", v8];
    fprintf(v15, "%s\n", [v16 UTF8String]);
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_17:
}

- (id)makeURL:(id)l
{
  ++dword_100051F64;
  lCopy = l;
  path = [lCopy path];
  v6 = +[NSCharacterSet URLPathAllowedCharacterSet];
  v7 = [path stringByAddingPercentEncodingWithAllowedCharacters:v6];

  dword_100051F64 = [NSString stringWithFormat:@"%@://%@/%@?id=%u", @"gtsandboxid", self->_deviceUDID, v7, dword_100051F64];
  v9 = [NSURL URLWithString:dword_100051F64];
  [(NSMutableDictionary *)self->_registeredURLs setObject:lCopy forKeyedSubscript:v9];

  return v9;
}

- (void)transferIdentifier:(id)identifier toDevice:(id)device completionHandler:(id)handler
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100017E84;
  v9[3] = &unk_100040DE8;
  handlerCopy = handler;
  v8 = handlerCopy;
  [(GTURLAccessProvider *)self copyIdentifier:identifier toDevice:device allowLocalURL:0 directory:0 completionHandler:v9];
}

- (void)copyIdentifier:(id)identifier toDevice:(id)device allowLocalURL:(BOOL)l directory:(id)directory completionHandler:(id)handler
{
  lCopy = l;
  identifierCopy = identifier;
  deviceCopy = device;
  directoryCopy = directory;
  handlerCopy = handler;
  if (GTCoreLogUseOsLog())
  {
    v16 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B2E0();
    }
  }

  else
  {
    v17 = __stdoutp;
    deviceCopy = [NSString stringWithFormat:@"copyIdentifier %@ to device %@", identifierCopy, deviceCopy];
    fprintf(v17, "%s\n", [deviceCopy UTF8String]);
  }

  v19 = [(NSMutableDictionary *)self->_registeredURLs objectForKeyedSubscript:identifierCopy];
  v123 = lCopy;
  if (GTCoreLogUseOsLog())
  {
    v20 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B364();
    }
  }

  else
  {
    v21 = __stdoutp;
    v20 = [NSString stringWithFormat:@"currentURL %@", v19];
    fprintf(v21, "%s\n", [v20 UTF8String]);
  }

  v22 = [(GTConnectionProvider *)self->_connectionProvider connectionForDeviceUDID:deviceCopy];
  v23 = v22;
  if (!v22)
  {
    if (GTCoreLogUseOsLog())
    {
      deviceCopy2 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(deviceCopy2, OS_LOG_TYPE_ERROR))
      {
        sub_10001B4E0();
      }
    }

    else
    {
      v30 = __stderrp;
      deviceCopy2 = [NSString stringWithFormat:@"No remote connection for device %@", deviceCopy];
      fprintf(v30, "%s\n", [deviceCopy2 UTF8String]);
    }

    v164 = NSLocalizedDescriptionKey;
    deviceCopy3 = [NSString stringWithFormat:@"Missing connection for device: %@", deviceCopy];
    v165 = deviceCopy3;
    v32 = [NSDictionary dictionaryWithObjects:&v165 forKeys:&v164 count:1];
    v24 = [NSError errorWithDomain:@"com.apple.gputools.urlaccessprovider" code:0 userInfo:v32];

    handlerCopy[2](handlerCopy, 0, v24);
    goto LABEL_93;
  }

  selfCopy = self;
  v24 = FindRemoteGTFileWriterService(v22, deviceCopy, self->_connectionProvider);
  if (!v24)
  {
    if (GTCoreLogUseOsLog())
    {
      deviceCopy4 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(deviceCopy4, OS_LOG_TYPE_ERROR))
      {
        sub_10001B470();
      }
    }

    else
    {
      v33 = __stderrp;
      deviceCopy4 = [NSString stringWithFormat:@"Failed to find remote file writer service for device %@", deviceCopy];
      fprintf(v33, "%s\n", [deviceCopy4 UTF8String]);
    }

    v162 = NSLocalizedDescriptionKey;
    deviceCopy5 = [NSString stringWithFormat:@"Missing file writer service for device: %@", deviceCopy];
    v163 = deviceCopy5;
    v35 = [NSDictionary dictionaryWithObjects:&v163 forKeys:&v162 count:1];
    v36 = [NSError errorWithDomain:@"com.apple.gputools.urlaccessprovider" code:1 userInfo:v35];

    handlerCopy[2](handlerCopy, 0, v36);
    goto LABEL_92;
  }

  v25 = [GTFileWriterServiceXPCProxy alloc];
  serviceProperties = [v24 serviceProperties];
  v122 = [(GTFileWriterServiceXPCProxy *)v25 initWithConnection:v23 remoteProperties:serviceProperties];

  if (([v19 startAccessingSecurityScopedResource] & 1) == 0)
  {
    if (GTCoreLogUseOsLog())
    {
      v27 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_10001B3CC();
      }
    }

    else
    {
      v37 = __stdoutp;
      v27 = [NSString stringWithFormat:@"Failed to consume sandbox extension for URL %@", v19];
      fprintf(v37, "%s\n", [v27 UTF8String]);
    }
  }

  v118 = identifierCopy;
  v38 = directoryCopy;
  v136 = 0;
  v39 = v19;
  v159 = 0;
  v40 = [v39 getResourceValue:&v159 forKey:? error:?];
  v41 = v159;
  v42 = 0;
  v120 = v24;
  if (!v40)
  {
    goto LABEL_75;
  }

  v112 = v23;
  v108 = v41;
  pathComponents = [v41 pathComponents];
  v155 = 0;
  v156 = &v155;
  v157 = 0x2020000000;
  v158 = 0;
  v149 = 0;
  v150 = &v149;
  v151 = 0x3032000000;
  v152 = sub_10001AF44;
  v153 = sub_10001AF54;
  v154 = 0;
  v43 = +[NSFileManager defaultManager];
  v167[0] = NSURLIsDirectoryKey;
  v167[1] = NSURLFileSizeKey;
  v167[2] = NSURLIsSymbolicLinkKey;
  v44 = [NSArray arrayWithObjects:v167 count:3];
  v148[0] = _NSConcreteStackBlock;
  v148[1] = 3221225472;
  v148[2] = sub_10001AF5C;
  v148[3] = &unk_100040E88;
  v148[4] = &v155;
  v148[5] = &v149;
  v109 = v39;
  v45 = [v43 enumeratorAtURL:v39 includingPropertiesForKeys:v44 options:0 errorHandler:v148];

  v46 = objc_alloc_init(NSMutableArray);
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  obj = v45;
  v47 = [obj countByEnumeratingWithState:&v144 objects:v166 count:16];
  if (!v47)
  {
    goto LABEL_71;
  }

  v48 = v47;
  v126 = *v145;
  v117 = v46;
  v106 = handlerCopy;
  v107 = deviceCopy;
  v114 = v38;
  v110 = v19;
  while (2)
  {
    v49 = 0;
    v121 = v48;
    do
    {
      if (*v145 != v126)
      {
        objc_enumerationMutation(obj);
      }

      v50 = *(*(&v144 + 1) + 8 * v49);
      v51 = objc_autoreleasePoolPush();
      v142 = 0;
      v143 = 0;
      v52 = v150;
      v53 = [v50 getResourceValue:&v143 forKey:NSURLIsDirectoryKey error:&v142];
      v54 = v143;
      objc_storeStrong(v52 + 5, v142);
      if ((v53 & 1) == 0)
      {
        *(v156 + 24) = 1;
        goto LABEL_70;
      }

      if ([v54 BOOLValue])
      {
        goto LABEL_60;
      }

      v140 = 0;
      v141 = 0;
      v55 = v150;
      v56 = [v50 getResourceValue:&v141 forKey:NSURLIsSymbolicLinkKey error:&v140];
      v57 = v141;
      objc_storeStrong(v55 + 5, v140);
      if ((v56 & 1) == 0)
      {
        *(v156 + 24) = 1;
        goto LABEL_69;
      }

      v58 = v150 + 5;
      v139 = v150[5];
      v59 = pathComponents;
      *v174 = 0;
      v60 = 0;
      if ([v50 getResourceValue:v174 forKey:NSURLCanonicalPathKey error:&v139])
      {
        [*v174 pathComponents];
        v62 = v61 = v57;
        v63 = [v62 subarrayWithRange:{objc_msgSend(v59, "count"), objc_msgSend(v62, "count") - objc_msgSend(v59, "count")}];

        v57 = v61;
        v60 = [NSString pathWithComponents:v63];

        v46 = v117;
      }

      objc_storeStrong(v58, v139);
      if (!v60)
      {
        *(v156 + 24) = 1;
        goto LABEL_68;
      }

      if ([v57 BOOLValue])
      {
        v116 = v57;
        v65 = v150 + 5;
        v64 = v150[5];
        v66 = v50;
        v67 = readlink([v66 fileSystemRepresentation], v174, 0x400uLL);
        if ((v67 & 0x8000000000000000) != 0)
        {
          v75 = *__error();
          if (GTCoreLogUseOsLog())
          {
            v76 = gt_tagged_log(0x10u);
            v77 = &SecTaskCopySigningIdentifier_ptr;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v66;
              v169 = 1024;
              LODWORD(v170) = v75;
              _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "Failed to read symlink for %@ (%d)", buf, 0x12u);
            }
          }

          else
          {
            v78 = __stderrp;
            v77 = &SecTaskCopySigningIdentifier_ptr;
            v76 = [NSString stringWithFormat:@"Failed to read symlink for %@ (%d)", v66, v75];
            fprintf(v78, "%s\n", [v76 UTF8String]);
          }

          v79 = v75;

          v173 = NSLocalizedDescriptionKey;
          v80 = [v77[248] stringWithFormat:@"Failed to read symlink for %@", v66];
          *buf = v80;
          v81 = [NSDictionary dictionaryWithObjects:buf forKeys:&v173 count:1];
          v64 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v79 userInfo:v81];
          v82 = v64;

          v73 = 0;
          v46 = v117;
        }

        else
        {
          v68 = v67;
          if (v67 < 0x400)
          {
            v174[v67] = 0;
            v73 = [NSString stringWithUTF8String:v174];
          }

          else
          {
            v105 = v65;
            if (GTCoreLogUseOsLog())
            {
              1024 = gt_tagged_log(0x10u);
              v70 = &SecTaskCopySigningIdentifier_ptr;
              if (os_log_type_enabled(1024, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                *&buf[4] = v66;
                v169 = 2048;
                v170 = v68;
                v171 = 2048;
                v172 = 1024;
                _os_log_error_impl(&_mh_execute_header, 1024, OS_LOG_TYPE_ERROR, "Target path for symlink %@ is too long (%zd bytes >= %lu bytes [PATH_MAX])", buf, 0x20u);
              }
            }

            else
            {
              v83 = __stderrp;
              v70 = &SecTaskCopySigningIdentifier_ptr;
              1024 = [NSString stringWithFormat:@"Target path for symlink %@ is too long (%zd bytes >= %lu bytes [PATH_MAX])", v66, v68, 1024];
              fprintf(v83, "%s\n", [1024 UTF8String]);
            }

            v173 = NSLocalizedDescriptionKey;
            10242 = [v70[248] stringWithFormat:@"Target path for symlink %@ is too long (%zd bytes >= %lu bytes [PATH_MAX])", v66, v68, 1024];
            *buf = 10242;
            v85 = [NSDictionary dictionaryWithObjects:buf forKeys:&v173 count:1];
            v64 = [NSError errorWithDomain:NSPOSIXErrorDomain code:55 userInfo:v85];
            v86 = v64;

            v73 = 0;
            v46 = v117;
            v65 = v105;
          }
        }

        objc_storeStrong(v65, v64);
        if (!v73)
        {
          *(v156 + 24) = 1;
          v57 = v116;
          goto LABEL_68;
        }

        v74 = [[GTFileEntry alloc] initWithLink:v60 destination:v73];
        v57 = v116;
        goto LABEL_59;
      }

      v137 = 0;
      v138 = 0;
      v71 = v150;
      v72 = [v50 getResourceValue:&v138 forKey:NSURLFileSizeKey error:&v137];
      v73 = v138;
      objc_storeStrong(v71 + 5, v137);
      if (!v72)
      {
        *(v156 + 24) = 1;

LABEL_68:
LABEL_69:

LABEL_70:
        v19 = v110;

        objc_autoreleasePoolPop(v51);
        handlerCopy = v106;
        deviceCopy = v107;
        v38 = v114;
        v24 = v120;
        goto LABEL_71;
      }

      v74 = -[GTFileEntry initWithPath:fileSize:]([GTFileEntry alloc], "initWithPath:fileSize:", v60, [v73 unsignedIntegerValue]);
LABEL_59:
      [v46 addObject:v74];

      v48 = v121;
LABEL_60:

      objc_autoreleasePoolPop(v51);
      v49 = v49 + 1;
    }

    while (v48 != v49);
    v48 = [obj countByEnumeratingWithState:&v144 objects:v166 count:16];
    handlerCopy = v106;
    deviceCopy = v107;
    v38 = v114;
    v19 = v110;
    v24 = v120;
    if (v48)
    {
      continue;
    }

    break;
  }

LABEL_71:

  if (*(v156 + 24) == 1)
  {
    v42 = 0;
    v136 = v150[5];
  }

  else
  {
    v42 = [v46 copy];
  }

  v23 = v112;

  _Block_object_dispose(&v149, 8);
  _Block_object_dispose(&v155, 8);

  v41 = v108;
  v39 = v109;
LABEL_75:

  v87 = v136;
  [v39 stopAccessingSecurityScopedResource];
  if (v42)
  {
    v128 = v87;
    v88 = v39;
    v127 = objc_opt_new();
    directoryCopy = v38;
    if (v38)
    {
      v115 = v38;
      identifierCopy = v118;
      if (objc_opt_respondsToSelector())
      {
        v89 = objc_opt_new();
        path = [v88 path];
        v113 = v23;
        v91 = v19;
        deviceUDID = selfCopy->_deviceUDID;
        v134[0] = _NSConcreteStackBlock;
        v134[1] = 3221225472;
        v134[2] = sub_100019080;
        v134[3] = &unk_100040DE8;
        v135 = handlerCopy;
        v93 = deviceUDID;
        v19 = v91;
        v23 = v113;
        directoryCopy = v115;
        [(GTFileWriterServiceXPCProxy *)v122 startTransfer:v42 basePath:path fromDevice:v93 toDirectory:v115 options:v89 completionHandler:v134];

        v94 = v127;
        v87 = v128;
      }

      else
      {
        v111 = v19;
        if (GTCoreLogUseOsLog())
        {
          v98 = gt_tagged_log(0x10u);
          directoryCopy = v115;
          v99 = v128;
          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            sub_10001B434();
          }
        }

        else
        {
          v102 = __stderrp;
          v98 = [NSString stringWithFormat:@"The gputrace file transfer service is too old to support remote macOS debugging. Try updating your device's DDI by installing a newer Xcode."];
          fprintf(v102, "%s\n", [v98 UTF8String]);
          directoryCopy = v115;
          v99 = v128;
        }

        v160 = NSLocalizedDescriptionKey;
        v103 = [NSString stringWithFormat:@"File writer service is too old. Missing selector %@", @"startTransfer:basePath:fromDevice:toDirectory:options:completionHandler:"];
        v161 = v103;
        v104 = [NSDictionary dictionaryWithObjects:&v161 forKeys:&v160 count:1];
        v87 = [NSError errorWithDomain:@"com.apple.gputools.urlaccessprovider" code:2 userInfo:v104];

        handlerCopy[2](handlerCopy, 0, v87);
        v19 = v111;
        v94 = v127;
      }
    }

    else
    {
      identifierCopy = v118;
      if (v123 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        path2 = [v88 path];
        v96 = selfCopy->_deviceUDID;
        v132[0] = _NSConcreteStackBlock;
        v132[1] = 3221225472;
        v132[2] = sub_100019090;
        v132[3] = &unk_100040DE8;
        v133 = handlerCopy;
        v94 = v127;
        [(GTFileWriterServiceXPCProxy *)v122 startTransfer:v42 basePath:path2 fromDevice:v96 options:v127 completionHandler:v132];

        v97 = v133;
      }

      else
      {
        path3 = [v88 path];
        v101 = selfCopy->_deviceUDID;
        v129[0] = _NSConcreteStackBlock;
        v129[1] = 3221225472;
        v129[2] = sub_1000190A0;
        v129[3] = &unk_100040E10;
        v131 = handlerCopy;
        v130 = v88;
        v94 = v127;
        [(GTFileWriterServiceXPCProxy *)v122 initiateTransfer:v42 basePath:path3 fromDevice:v101 options:v127 completionHandler:v129];

        v97 = v131;
      }

      v87 = v128;
    }

    v24 = v120;
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, v87);
    directoryCopy = v38;
    identifierCopy = v118;
  }

  v36 = v122;
LABEL_92:

LABEL_93:
}

@end