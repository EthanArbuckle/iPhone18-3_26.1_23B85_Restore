@interface NRLaunchDaemon
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NRLaunchDaemon)init;
- (id)_enableNanoDaemons:(unint64_t)daemons;
- (id)deletePairedStoreWithUUID:(id)d;
- (id)getLocalPairingStorePairingID:(id)d;
- (id)launchDaemonsPaths;
- (void)chownWhine:(id)whine;
- (void)dealloc;
- (void)xpcCleanupPairingStoreWithUUIDs:(id)ds withCompletion:(id)completion;
- (void)xpcDeletePairedStoreWithUUID:(id)d withCompletion:(id)completion;
- (void)xpcDeleteQuarantinedDataWithStoreUUID:(id)d completion:(id)completion;
- (void)xpcEnableAltOnlyNanoDaemons:(BOOL)daemons withCompletion:(id)completion;
- (void)xpcEnableNanoDaemons:(unint64_t)daemons withCompletion:(id)completion;
- (void)xpcGetBackupHashWithCompletion:(id)completion;
- (void)xpcQuarantineDataWithStoreUUID:(id)d services:(id)services completion:(id)completion;
- (void)xpcStartListener;
- (void)xpcUnquarantineDataWithStoreUUID:(id)d services:(id)services completion:(id)completion;
@end

@implementation NRLaunchDaemon

- (NRLaunchDaemon)init
{
  v8.receiver = self;
  v8.super_class = NRLaunchDaemon;
  v2 = [(NRLaunchDaemon *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
    v5 = dispatch_queue_create("com.apple.nanoregistry.nanoregistrylaunchd", v4);
    launchdQueue = v2->_launchdQueue;
    v2->_launchdQueue = v5;

    [(NRLaunchDaemon *)v2 xpcStartListener];
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000E58;
  block[3] = &unk_1000082A0;
  block[4] = self;
  if (qword_10000CC18 != -1)
  {
    dispatch_once(&qword_10000CC18, block);
  }

  v2 = qword_10000CC10;

  return v2;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_xpcListener invalidate];
  xpcListener = self->_xpcListener;
  self->_xpcListener = 0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  xpcClients = [(NRLaunchDaemon *)self xpcClients];
  v5 = [xpcClients countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(xpcClients);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (v9)
        {
          [v9 invalidate];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [xpcClients countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10.receiver = self;
  v10.super_class = NRLaunchDaemon;
  [(NRLaunchDaemon *)&v10 dealloc];
}

- (void)xpcStartListener
{
  v3 = +[NSPointerArray weakObjectsPointerArray];
  xpcClients = self->_xpcClients;
  self->_xpcClients = v3;

  v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nano.nanoregistry.nanoregistrylaunchd"];
  xpcListener = self->_xpcListener;
  self->_xpcListener = v5;

  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  v7 = self->_xpcListener;

  [(NSXPCListener *)v7 resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.nano.nanoregistry.nanoregistrylaunchd"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
  {
    [connectionCopy setExportedObject:self];
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NRLaunchDaemonXPCDaemonDelegate];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v20 count:2];
    v9 = [NSSet setWithArray:v8];
    [v7 setClasses:v9 forSelector:"xpcQuarantineDataWithStoreUUID:services:completion:" argumentIndex:0 ofReply:0];

    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v19 count:2];
    v11 = [NSSet setWithArray:v10];
    [v7 setClasses:v11 forSelector:"xpcCleanupPairingStoreWithUUIDs:withCompletion:" argumentIndex:0 ofReply:0];

    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v12 = [NSArray arrayWithObjects:v18 count:2];
    v13 = [NSSet setWithArray:v12];
    v14 = 1;
    [v7 setClasses:v13 forSelector:"xpcUnquarantineDataWithStoreUUID:services:completion:" argumentIndex:1 ofReply:0];

    [connectionCopy setExportedInterface:v7];
    [connectionCopy resume];
    [(NSPointerArray *)self->_xpcClients compact];
    [(NSPointerArray *)self->_xpcClients addPointer:connectionCopy];
  }

  else
  {
    v15 = nr_root_daemon_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (!v16)
    {
      v14 = 0;
      goto LABEL_10;
    }

    v7 = nr_root_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100004490(v7);
    }

    v14 = 0;
  }

LABEL_10:
  return v14;
}

- (id)launchDaemonsPaths
{
  v2 = objc_opt_new();
  v15[0] = @"/System/Library/NanoLaunchDaemons";
  v15[1] = @"/System/Library/NanoLaunchDaemonsAltAccount";
  [NSArray arrayWithObjects:v15 count:2];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [@"/" stringByAppendingPathComponent:{*(*(&v10 + 1) + 8 * i), v10}];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

- (void)xpcEnableAltOnlyNanoDaemons:(BOOL)daemons withCompletion:(id)completion
{
  completionCopy = completion;
  launchdQueue = self->_launchdQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000150C;
  block[3] = &unk_1000082C8;
  daemonsCopy = daemons;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(launchdQueue, block);
}

- (void)xpcEnableNanoDaemons:(unint64_t)daemons withCompletion:(id)completion
{
  completionCopy = completion;
  launchdQueue = self->_launchdQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001620;
  block[3] = &unk_1000082F0;
  v10 = completionCopy;
  daemonsCopy = daemons;
  block[4] = self;
  v8 = completionCopy;
  dispatch_sync(launchdQueue, block);
}

- (id)_enableNanoDaemons:(unint64_t)daemons
{
  v4 = CFPreferencesCopyValue(@"StoreDemoMode", @"com.apple.demo-settings", @"mobile", kCFPreferencesAnyHost);
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    launchDaemonsPaths = [(NRLaunchDaemon *)self launchDaemonsPaths];
    goto LABEL_33;
  }

  bOOLValue = [v4 BOOLValue];
  launchDaemonsPaths = [(NRLaunchDaemon *)self launchDaemonsPaths];
  if ((bOOLValue & 1) == 0)
  {
LABEL_33:
    if (![launchDaemonsPaths count])
    {
      v78 = 0;
      goto LABEL_85;
    }

    v75 = v4;
    v32 = 0;
    v78 = 0;
    while (1)
    {
      if (v32)
      {
        if (v32 == 1 && daemons - 1 < 2)
        {
LABEL_38:
          v33 = 1;
          v34 = @"launch_enable_directory";
          goto LABEL_41;
        }
      }

      else if (daemons == 1)
      {
        goto LABEL_38;
      }

      v33 = 0;
      v34 = @"launch_disable_directory";
LABEL_41:
      v35 = [launchDaemonsPaths objectAtIndexedSubscript:v32];
      v36 = [NSString stringWithFormat:@"%@(%@)", v34, v35];

      v37 = nr_root_daemon_log();
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);

      if (v38)
      {
        v39 = nr_root_daemon_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v96 = v36;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Calling %{public}@", buf, 0xCu);
        }
      }

      v40 = +[NSDate date];
      v41 = launchDaemonsPaths;
      v42 = [launchDaemonsPaths objectAtIndexedSubscript:v32];
      [v42 cStringUsingEncoding:4];
      if (v33)
      {
        v43 = launch_enable_directory();
      }

      else
      {
        v43 = launch_disable_directory();
      }

      v44 = v43;

      v45 = +[NSDate date];
      [v45 timeIntervalSinceDate:v40];
      v47 = [NSString stringWithFormat:@"%@ duration: %1.3f returned %d", v36, v46, v44];

      v48 = nr_root_daemon_log();
      v49 = v48;
      if (v44)
      {
        v50 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);

        if (v50)
        {
          v51 = nr_root_daemon_log();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v96 = v47;
            _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }
        }

        if (v78)
        {
          goto LABEL_59;
        }

        v91 = NSLocalizedDescriptionKey;
        v92 = v47;
        v52 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
        v78 = [NSError errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:5 userInfo:v52];
        goto LABEL_58;
      }

      v53 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);

      if (v53)
      {
        v52 = nr_root_daemon_log();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v96 = v47;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

LABEL_58:
      }

LABEL_59:

      ++v32;
      launchDaemonsPaths = v41;
      if (v32 >= [v41 count])
      {
        v4 = v75;
        goto LABEL_85;
      }
    }
  }

  v7 = +[NSMutableDictionary dictionary];
  v8 = launchDaemonsPaths;
  v74 = v4;
  if ([launchDaemonsPaths count])
  {
    v9 = 0;
    v78 = 0;
    v10 = daemons - 1;
    v80 = daemons == 1;
    v77 = v10 < 2;
    do
    {
      if (v9 == 1)
      {
        v11 = v77;
      }

      else if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v80;
      }

      v12 = nr_root_daemon_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (v13)
      {
        v14 = nr_root_daemon_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [launchDaemonsPaths objectAtIndexedSubscript:v9];
          *buf = 138543362;
          v96 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Scanning NanoLaunchDaemons directory at %{public}@", buf, 0xCu);
        }
      }

      v16 = +[NSFileManager defaultManager];
      v17 = [launchDaemonsPaths objectAtIndexedSubscript:v9];
      if (v78)
      {
        v18 = [v16 contentsOfDirectoryAtPath:v17 error:0];
      }

      else
      {
        v90 = 0;
        v18 = [v16 contentsOfDirectoryAtPath:v17 error:&v90];
        v78 = v90;
      }

      if (!v18)
      {
        v19 = nr_root_daemon_log();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

        if (v20)
        {
          v21 = nr_root_daemon_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v31 = [v8 objectAtIndexedSubscript:v9];
            *buf = 138543362;
            v96 = v31;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to scan NanoLaunchDaemons directory at %{public}@", buf, 0xCu);
          }
        }
      }

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v22 = v18;
      v23 = [v22 countByEnumeratingWithState:&v86 objects:v94 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v87;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v87 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v86 + 1) + 8 * i);
            v28 = [v8 objectAtIndexedSubscript:v9];
            v29 = [v28 stringByAppendingPathComponent:v27];

            v30 = [NSNumber numberWithBool:v11];
            [v7 setObject:v30 forKeyedSubscript:v29];
          }

          v24 = [v22 countByEnumeratingWithState:&v86 objects:v94 count:16];
        }

        while (v24);
      }

      ++v9;
      launchDaemonsPaths = v8;
    }

    while (v9 < [v8 count]);
  }

  else
  {
    v78 = 0;
  }

  v76 = CFPreferencesCopyValue(@"ServiceLabelBlocklistArray", @"com.apple.demo-settings", @"mobile", kCFPreferencesAnyHost);
  v81 = [NSSet setWithArray:?];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v54 = v7;
  v55 = [v54 countByEnumeratingWithState:&v82 objects:v93 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v83;
    do
    {
      for (j = 0; j != v56; j = j + 1)
      {
        if (*v83 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v82 + 1) + 8 * j);
        v60 = [v54 objectForKeyedSubscript:v59];
        bOOLValue2 = [v60 BOOLValue];

        v62 = [[NSDictionary alloc] initWithContentsOfFile:v59];
        v63 = [v62 valueForKey:@"Label"];
        LODWORD(v60) = [v81 containsObject:v63];
        [v59 UTF8String];
        if (v60)
        {
          v64 = 1;
        }

        else
        {
          v64 = bOOLValue2 == 0;
        }

        if (v64)
        {
          v65 = launch_disable_directory();
          v66 = "launch_disable_directory";
        }

        else
        {
          v65 = launch_enable_directory();
          v66 = "launch_enable_directory";
        }

        v67 = [NSString stringWithFormat:@"%s(%@) returned %d", v66, v59, v65];
        v68 = nr_root_daemon_log();
        v69 = v68;
        if (v65)
        {
          v70 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);

          if (!v70)
          {
            goto LABEL_82;
          }

          v71 = nr_root_daemon_log();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v96 = v67;
            _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }
        }

        else
        {
          v72 = os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);

          if (!v72)
          {
            goto LABEL_82;
          }

          v71 = nr_root_daemon_log();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v96 = v67;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }
        }

LABEL_82:
      }

      v56 = [v54 countByEnumeratingWithState:&v82 objects:v93 count:16];
    }

    while (v56);
  }

  v4 = v74;
  launchDaemonsPaths = v8;
LABEL_85:

  return v78;
}

- (id)getLocalPairingStorePairingID:(id)d
{
  dCopy = d;
  getLocalPairingStorePath = [(NRLaunchDaemon *)self getLocalPairingStorePath];
  if (dCopy)
  {
    uUIDString = [dCopy UUIDString];
    v7 = [getLocalPairingStorePath stringByAppendingPathComponent:uUIDString];

    getLocalPairingStorePath = v7;
  }

  return getLocalPairingStorePath;
}

- (void)xpcDeletePairedStoreWithUUID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = [(NRLaunchDaemon *)self deletePairedStoreWithUUID:d];
  completionCopy[2](completionCopy, v7);
}

- (id)deletePairedStoreWithUUID:(id)d
{
  dCopy = d;
  v5 = +[NSFileManager defaultManager];
  v6 = [(NRLaunchDaemon *)self getLocalPairingStorePairingID:dCopy];

  v10 = 0;
  [v5 removeItemAtPath:v6 error:&v10];
  v7 = v10;
  v8 = v10;

  return v7;
}

- (void)chownWhine:(id)whine
{
  whineCopy = whine;
  memset(&v7, 0, sizeof(v7));
  stat([whineCopy UTF8String], &v7);
  if (!v7.st_uid || !v7.st_gid)
  {
    v4 = nr_root_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = nr_root_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100004514(whineCopy, v6);
      }
    }

    chown([whineCopy UTF8String], 0x1F5u, 0x1F5u);
  }
}

- (void)xpcCleanupPairingStoreWithUUIDs:(id)ds withCompletion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v8 = nr_root_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_root_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Began pairing store cleanup", buf, 2u);
    }
  }

  v11 = dispatch_get_global_queue(5, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000242C;
  block[3] = &unk_100008318;
  block[4] = self;
  v15 = dsCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = dsCopy;
  dispatch_sync(v11, block);
}

- (void)xpcQuarantineDataWithStoreUUID:(id)d services:(id)services completion:(id)completion
{
  dCopy = d;
  servicesCopy = services;
  completionCopy = completion;
  v10 = nr_root_daemon_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = nr_root_daemon_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = dCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Began quarantine %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x3032000000;
  v20 = sub_1000029FC;
  v21 = sub_100002A0C;
  v22 = [[NRSyncDataDeleter alloc] initWithStoreUUID:dCopy services:servicesCopy];
  v13 = *(*(&buf + 1) + 40);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002A14;
  v15[3] = &unk_100008340;
  v14 = completionCopy;
  v16 = v14;
  p_buf = &buf;
  [v13 quarantineDataWithCompletion:v15];

  _Block_object_dispose(&buf, 8);
}

- (void)xpcUnquarantineDataWithStoreUUID:(id)d services:(id)services completion:(id)completion
{
  dCopy = d;
  servicesCopy = services;
  completionCopy = completion;
  v10 = nr_root_daemon_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = nr_root_daemon_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = dCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Began unquarantine %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x3032000000;
  v20 = sub_1000029FC;
  v21 = sub_100002A0C;
  v22 = [[NRSyncDataDeleter alloc] initWithStoreUUID:dCopy services:servicesCopy];
  v13 = *(*(&buf + 1) + 40);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002C5C;
  v15[3] = &unk_100008340;
  v14 = completionCopy;
  v16 = v14;
  p_buf = &buf;
  [v13 unquarantineDataWithCompletion:v15];

  _Block_object_dispose(&buf, 8);
}

- (void)xpcDeleteQuarantinedDataWithStoreUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v7 = nr_root_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_root_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Began delete %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x3032000000;
  v17 = sub_1000029FC;
  v18 = sub_100002A0C;
  v19 = [[NRSyncDataDeleter alloc] initWithStoreUUID:dCopy services:0];
  v10 = *(*(&buf + 1) + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002E8C;
  v12[3] = &unk_100008368;
  v11 = completionCopy;
  v13 = v11;
  p_buf = &buf;
  [v10 deleteQuarantinedDataWithCompletion:v12];

  _Block_object_dispose(&buf, 8);
}

- (void)xpcGetBackupHashWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = objc_opt_new();
  CFPreferencesSynchronize(@"com.apple.MobileBackup", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  v4 = CFPreferencesCopyAppValue(@"RestoreInfo", @"com.apple.MobileBackup");
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 objectForKeyedSubscript:@"RestoreDate"];
      if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v6 = [v5 description];
        v7 = [v6 dataUsingEncoding:4];
        nRSHA256 = [v7 NRSHA256];

        v3 = nRSHA256;
      }
    }
  }

  completionCopy[2](completionCopy, v3, 0);
}

@end