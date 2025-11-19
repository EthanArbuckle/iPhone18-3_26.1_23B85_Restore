@interface Daemon
+ (id)sharedDaemon;
- (BOOL)applicationIsInstalled:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (Daemon)init;
- (id)bundleIDsForAppProxies:(id)a3;
- (id)getSessionWithIdentifier:(id)a3 forBundleID:(id)a4;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)createDaemonDirectory;
- (void)managerBecameEmpty:(id)a3 bundleID:(id)a4 withCompletionHandler:(id)a5;
- (void)restoreState;
- (void)setupArchiveTimer;
- (void)setupNewClassMappingsForUnarchiver;
- (void)start;
- (void)waitUntilDeviceIsUnlocked;
@end

@implementation Daemon

+ (id)sharedDaemon
{
  if (qword_1000EB1E0 != -1)
  {
    dispatch_once(&qword_1000EB1E0, &stru_1000D5E60);
  }

  v3 = qword_1000EB1E8;

  return v3;
}

- (void)start
{
  if (![(Daemon *)self isInSyncBubble])
  {
    [(Daemon *)self waitUntilDeviceIsUnlocked];
  }

  v3 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "nsurlsessiond started", buf, 2u);
  }

  v4 = +[NDUserEventAgentConnection sharedUserEventAgentConnection];
  [v4 start];

  [(Daemon *)self createDaemonDirectory];
  v5 = +[NDStatusMonitor sharedMonitor];
  [v5 start];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v6 = +[_DASScheduler sharedScheduler];
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"ConnectionPoolLimit", @"com.apple.nsurlsessiond", 0);
    if (AppIntegerValue)
    {
      v8 = AppIntegerValue;
    }

    else
    {
      v8 = 3;
    }

    v9 = [_DASActivityGroup groupWithName:@"NSURLSessionBackgroundPoolName" maxConcurrent:v8];
    [v6 createActivityGroup:v9];

    if ([(Daemon *)self isInSyncBubble])
    {
      v10 = [NSString stringWithFormat:@"NSURLSessionBackgroundPoolName-sync-%d", geteuid()];
      v11 = CFPreferencesGetAppIntegerValue(@"ConnectionPoolLimit", @"com.apple.nsurlsessiond", 0);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = 3;
      }

      v13 = [_DASActivityGroup groupWithName:v10 maxConcurrent:v12];
      [v6 createActivityGroup:v13];
    }
  }

  notify_post("com.apple.nsurlsessiond.started");
}

- (void)waitUntilDeviceIsUnlocked
{
  if (MKBDeviceFormattedForContentProtection() && MKBDeviceUnlockedSinceBoot() != 1)
  {
    v2 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Waiting for first unlock", buf, 2u);
    }

    *buf = 0;
    v19 = buf;
    v20 = 0x2020000000;
    v21 = 0;
    v3 = dispatch_semaphore_create(0);
    v4 = dispatch_queue_create("com.apple.nsurlsessiond.wait-unlock", 0);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10006FF4C;
    v16[3] = &unk_1000D63D0;
    v5 = v3;
    v17 = v5;
    v6 = objc_retainBlock(v16);
    v7 = kMobileKeyBagLockStatusNotifyToken;
    v8 = v19;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10006FFE4;
    handler[3] = &unk_1000D5FE8;
    v15 = buf;
    v9 = v6;
    v14 = v9;
    if (notify_register_dispatch(v7, v8 + 6, v4, handler))
    {
      v10 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to regsiter for lock status notification! Calling abort()", v12, 2u);
      }

      abort();
    }

    dispatch_async(v4, v9);
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007000C;
    block[3] = &unk_1000D6010;
    block[4] = buf;
    dispatch_sync(v4, block);

    _Block_object_dispose(buf, 8);
  }
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000700E0;
  v7[3] = &unk_1000D6420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100070354;
  v7[3] = &unk_1000D6420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)bundleIDsForAppProxies:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet set];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 bundleIdentifier];
        [v4 addObject:v9];
        v10 = [v8 plugInKitPlugins];
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = [*(*(&v18 + 1) + 8 * j) pluginIdentifier];
              [v4 addObject:v15];
            }

            v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  return v4;
}

- (void)managerBecameEmpty:(id)a3 bundleID:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070888;
  block[3] = &unk_1000D5F80;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, block);
}

- (id)getSessionWithIdentifier:(id)a3 forBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100070A1C;
  v21 = sub_100070A2C;
  v22 = 0;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100070A34;
  v13[3] = &unk_1000D5F58;
  v13[4] = self;
  v14 = v7;
  v15 = v6;
  v16 = &v17;
  v9 = v6;
  v10 = v7;
  dispatch_sync(queue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = v5;
  v15 = 0u;
  v16 = 0u;
  if (v5)
  {
    [v5 auditToken];
  }

  v14 = 0;
  *buf = v15;
  *&buf[16] = v16;
  if (CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v7 = v14;
  }

  else
  {
    v7 = 0;
  }

  v8 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Evaluating new XPC connection %@ with client bundle identifier %@", buf, 0x16u);
  }

  v9 = [v6 processIdentifier];
  v10 = [v6 _xpcConnection];
  xpc_connection_is_extension();
  v11 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Process with pid %d does not have a bundle ID, rejecting connection", buf, 8u);
  }

  return 0;
}

- (void)setupArchiveTimer
{
  if (!self->_archiveTimer)
  {
    handler[9] = v2;
    handler[10] = v3;
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    archiveTimer = self->_archiveTimer;
    self->_archiveTimer = v5;

    v7 = self->_archiveTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001E40;
    handler[3] = &unk_1000D63D0;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    v8 = self->_archiveTimer;
    v9 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v8, v9, 0x2540BE400uLL, 0x3B9ACA00uLL);
    dispatch_resume(self->_archiveTimer);
  }
}

- (void)restoreState
{
  [(Daemon *)self setupNewClassMappingsForUnarchiver];
  v28 = +[NSMutableArray array];
  v31 = +[NSFileManager defaultManager];
  [(NDTaskStorageDB *)self->_sessionTasksDB _getAllBundleIDsFromSessionTasks];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v3 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v3)
  {
    v30 = *v39;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v38 + 1) + 8 * i);
        v6 = [NDFileUtilities bundleManagerPath:v5];
        v7 = [LSBundleRecord bundleRecordWithBundleIdentifier:v5 allowPlaceholder:0 error:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          isKindOfClass = 1;
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
        }

        v37 = 0;
        if ([v31 fileExistsAtPath:v6 isDirectory:&v37] && v37 == 1)
        {
          if ((isKindOfClass & 1) != 0 && ![(Daemon *)self applicationIsInstalled:v5])
          {
            v13 = qword_1000EB210;
            if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v44 = v5;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Application %@ is not installed, removing directory", buf, 0xCu);
            }

            [NDFileUtilities removeItemAtPath:v6];
          }

          else
          {
            v9 = [[NDSessionManager alloc] initWithDelegate:self bundleID:v5 isSpringBoardApp:isKindOfClass & 1 forPersona:0 dataSeparatedPath:0 db:self->_sessionTasksDB];
            v36 = 0;
            v10 = [(NDSessionManager *)v9 restoreState:&v36];
            if (v36)
            {
              v11 = qword_1000EB210;
              if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v44 = v5;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSessionManager for client %@ was empty, not restoring", buf, 0xCu);
              }
            }

            else
            {
              [v28 addObjectsFromArray:v10];
              [(NSMutableDictionary *)self->_clients setObject:v9 forKeyedSubscript:v5];
            }
          }
        }

        else
        {
          v12 = qword_1000EB210;
          if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v44 = v5;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No directory for bundleID: %@", buf, 0xCu);
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v3);
  }

  [v28 sortedArrayUsingComparator:&stru_1000D5EA0];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v14 = v33 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v15)
  {
    v16 = *v33;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v32 + 1) + 8 * j);
        if ([(Daemon *)self isInSyncBubble])
        {
          if ([v18 taskKind] != 1)
          {
            continue;
          }

          v19 = [v18 originalRequest];
          [v19 _timeWindowDelay];
          v21 = v20 == 0.0;

          if (!v21)
          {
            continue;
          }
        }

        v22 = +[NDUserSyncStakeholder sharedStakeholder];
        v23 = [v18 uniqueIdentifier];
        [v22 restoredTaskEnqueued:v23];

        v24 = [v18 sessionID];
        v25 = [v18 bundleID];
        v26 = [(Daemon *)self getSessionWithIdentifier:v24 forBundleID:v25];

        [v26 requeueTask:{objc_msgSend(v18, "identifier")}];
      }

      v15 = [v14 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v15);
  }

  v27 = +[NDUserSyncStakeholder sharedStakeholder];
  [v27 tasksHaveBeenEnqueued];
}

- (void)setupNewClassMappingsForUnarchiver
{
  v2 = objc_opt_class();

  [NSKeyedUnarchiver setClass:v2 forClassName:@"NDTaskInfo"];
}

- (BOOL)applicationIsInstalled:(id)a3
{
  v3 = [LSBundleRecord bundleRecordWithBundleIdentifier:a3 allowPlaceholder:0 error:0];
  v4 = v3 != 0;

  return v4;
}

- (Daemon)init
{
  v17.receiver = self;
  v17.super_class = Daemon;
  v2 = [(Daemon *)&v17 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    clients = v2->_clients;
    v2->_clients = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.nsurlsessiond.daemon-queue", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);
    v11 = dispatch_queue_create("com.apple.nsurlsessiond-xpc-transaction-queue", v10);
    transactionQueue = v2->_transactionQueue;
    v2->_transactionQueue = v11;

    v13 = +[LSApplicationWorkspace defaultWorkspace];
    [v13 addObserver:v2];

    v14 = +[NDUserSyncStakeholder sharedStakeholder];
    archiveTimer = v2->_archiveTimer;
    v2->_archiveTimer = 0;
  }

  return v2;
}

- (void)createDaemonDirectory
{
  v29 = NSFileProtectionKey;
  v30 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v3 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v4 = +[NSFileManager defaultManager];
  v22 = 0;
  v5 = +[NDFileUtilities nsurlsessiondPath];
  v6 = [v4 fileExistsAtPath:v5 isDirectory:&v22];

  if (v6)
  {
    if (v22 == 1)
    {
      v7 = +[NDFileUtilities nsurlsessiondPath];
      v21 = 0;
      v8 = [v4 setAttributes:v3 ofItemAtPath:v7 error:&v21];
      v9 = v21;

      if ((v8 & 1) == 0)
      {
        v10 = qword_1000EB210;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v19 = +[NDFileUtilities nsurlsessiondPath];
          v20 = [v9 code];
          *buf = 138412802;
          v24 = v19;
          v25 = 2112;
          v26 = v9;
          v27 = 2048;
          v28 = v20;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not set attributes of directory at %@, error: %@ [%ld]", buf, 0x20u);
        }
      }
    }

    else
    {
      v11 = qword_1000EB210;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v18 = +[NDFileUtilities nsurlsessiondPath];
        *buf = 138412290;
        v24 = v18;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Non-directory file exists at: %@. Removing it.", buf, 0xCu);
      }

      v9 = +[NDFileUtilities nsurlsessiondPath];
      [NDFileUtilities removeItemAtPath:v9];
    }
  }

  v12 = +[NDFileUtilities nsurlsessiondPath];
  self->_createdDataVault = [NDFileUtilities createDataVaultDirectoryAtPath:v12];

  v13 = +[NDFileUtilities nsurlsessiondLaunchdPath];
  [NDFileUtilities createDirectoryAtPath:v13];

  v14 = +[NDFileUtilities nsurlsessiondPath];
  v15 = [NSURL fileURLWithPath:v14];

  v16 = [[NDTaskStorageDB alloc] _initDB:v15];
  sessionTasksDB = self->_sessionTasksDB;
  self->_sessionTasksDB = v16;
}

@end