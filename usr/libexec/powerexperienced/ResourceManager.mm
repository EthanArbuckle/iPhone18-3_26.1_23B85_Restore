@interface ResourceManager
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ResourceManager)init;
- (void)createResourceHint:(id)a3 withReply:(id)a4;
- (void)evaluatePowerController;
- (void)evaluatePowerModes;
- (void)handleProcessExit:(id)a3;
- (void)removeResourceHint:(id)a3;
- (void)removeState:(id)a3;
- (void)restoreResourceHints:(id)a3;
- (void)restoreState;
- (void)saveState:(id)a3;
- (void)start;
- (void)updateResourceHint:(id)a3 withReply:(id)a4;
@end

@implementation ResourceManager

- (void)evaluatePowerModes
{
  v3 = +[PowerModesManager sharedInstance];
  [v3 evaluatePowerModes];
  [(ResourceManager *)self evaluatePowerController];
}

- (void)evaluatePowerController
{
  v3 = +[PowerTargetController sharedInstance];
  [v3 evaluatePowerTargets];
  v2 = +[MobileChargingController sharedInstance];
  [v2 evaluateChargingPolicy];
}

- (void)restoreResourceHints:(id)a3
{
  v4 = a3;
  v5 = [(ResourceManager *)self mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006FD8;
  v7[3] = &unk_10002C698;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)createResourceHint:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSXPCConnection currentConnection];
  v9 = os_transaction_create();
  [(ResourceManager *)self setTransaction:v9];

  v10 = +[NSUUID UUID];
  [v6 setUuid:v10];
  v7[2](v7, v10);

  v11 = [(ResourceManager *)self mainQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007380;
  v15[3] = &unk_10002C6C0;
  v16 = v8;
  v17 = v6;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v6;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)updateResourceHint:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSXPCConnection currentConnection];
  v9 = [(ResourceManager *)self mainQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100007670;
  v13[3] = &unk_10002C6E8;
  v13[4] = self;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  dispatch_async(v9, v13);
}

- (void)removeResourceHint:(id)a3
{
  v4 = a3;
  v5 = qword_100036B38;
  if (os_log_type_enabled(qword_100036B38, OS_LOG_TYPE_DEBUG))
  {
    sub_1000187F0(v4, v5);
  }

  v6 = [(ResourceManager *)self resourceHints];
  [v6 removeObjectForKey:v4];

  [(ResourceManager *)self evaluatePowerModes];
  [(ResourceManager *)self removeState:v4];
}

- (void)handleProcessExit:(id)a3
{
  v4 = a3;
  v5 = qword_100036B38;
  if (os_log_type_enabled(qword_100036B38, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v37 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "process %@ exiting. Releasing resouce hints for this process", buf, 0xCu);
  }

  v6 = +[NSMutableSet set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [(ResourceManager *)self resourceHints];
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        v13 = [(ResourceManager *)self resourceHints];
        v14 = [v13 objectForKeyedSubscript:v12];

        v15 = [v14 pid];

        if (v15 == v4)
        {
          [v6 addObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v27;
    *&v18 = 138412290;
    v25 = v18;
    do
    {
      v21 = 0;
      do
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v26 + 1) + 8 * v21);
        v23 = qword_100036B38;
        if (os_log_type_enabled(qword_100036B38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v25;
          v37 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Removing resource hint %@", buf, 0xCu);
        }

        [(ResourceManager *)self removeResourceHint:v22, v25, v26];
        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }

  v24 = [(ResourceManager *)self processMonitors];
  [v24 removeObjectForKey:v4];

  [(ResourceManager *)self evaluatePowerModes];
}

- (void)saveState:(id)a3
{
  v4 = a3;
  v5 = [(ResourceManager *)self mainQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [v4 uuid];
  v8 = [v7 UUIDString];
  [v6 setObject:v8 forKeyedSubscript:@"uuid"];

  v9 = [v4 pid];
  [v6 setObject:v9 forKeyedSubscript:@"pid"];

  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 state]);
  [v6 setObject:v10 forKeyedSubscript:@"state"];

  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 resourceType]);
  [v6 setObject:v11 forKeyedSubscript:@"type"];

  v12 = [(ResourceManager *)self defaults];
  v13 = [v12 objectForKey:@"resources"];

  v14 = [v13 mutableCopy];
  if (!v14)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
  }

  v15 = [v4 description];
  [v14 setObject:v6 forKeyedSubscript:v15];

  v16 = qword_100036B38;
  if (os_log_type_enabled(qword_100036B38, OS_LOG_TYPE_DEBUG))
  {
    sub_100018868(v14, v16);
  }

  v17 = [(ResourceManager *)self defaults];
  [v17 setValue:v14 forKey:@"resources"];
}

- (void)removeState:(id)a3
{
  v4 = a3;
  v5 = [(ResourceManager *)self defaults];
  v8 = [v5 objectForKey:@"resources"];

  v6 = [v8 mutableCopy];
  [v6 removeObjectForKey:v4];

  v7 = [(ResourceManager *)self defaults];
  [v7 setValue:v6 forKey:@"resources"];
}

- (void)restoreState
{
  p_superclass = &OBJC_METACLASS___CPMTrialManager.superclass;
  v3 = qword_100036B38;
  if (os_log_type_enabled(qword_100036B38, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "restoring state on init", buf, 2u);
  }

  v4 = [(ResourceManager *)self defaults];
  v5 = [v4 objectForKey:@"resources"];

  v6 = qword_100036B38;
  if (v5)
  {
    if (os_log_type_enabled(qword_100036B38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "restoring %@", buf, 0xCu);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [v5 allKeys];
    v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      v10 = &_mh_execute_header;
      do
      {
        v11 = 0;
        v26 = v8;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v29 + 1) + 8 * v11);
          v13 = p_superclass[359];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v35 = v12;
            _os_log_impl(v10, v13, OS_LOG_TYPE_INFO, "restoring resource with uuid %@", buf, 0xCu);
          }

          v14 = [v5 objectForKey:v12];
          v15 = [v14 objectForKeyedSubscript:@"type"];
          if ([qword_100036B40 containsObject:v15])
          {
            v16 = p_superclass[359];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v35 = v15;
              _os_log_impl(v10, v16, OS_LOG_TYPE_DEFAULT, "skipping restoring resource type %@", buf, 0xCu);
            }
          }

          else
          {
            v17 = [[ResourceHintWithProperties alloc] initWithProperties:v14];
            if (v17)
            {
              [(ResourceManager *)self resourceHints];
              v18 = v9;
              v19 = v5;
              v21 = v20 = v10;
              [(ResourceHintWithProperties *)v17 description];
              v23 = v22 = p_superclass;
              [v21 setObject:v17 forKeyedSubscript:v23];

              p_superclass = v22;
              v10 = v20;
              v5 = v19;
              v9 = v18;
              v8 = v26;
            }
          }

          v11 = v11 + 1;
        }

        while (v8 != v11);
        v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v8);
    }
  }

  else if (os_log_type_enabled(qword_100036B38, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "no resources to restore", buf, 2u);
  }

  v24 = [(ResourceManager *)self mainQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008540;
  block[3] = &unk_10002C738;
  block[4] = self;
  dispatch_async(v24, block);
}

- (ResourceManager)init
{
  v22.receiver = self;
  v22.super_class = ResourceManager;
  v2 = [(ResourceManager *)&v22 initWithMachServiceName:@"com.apple.powerexperienced.resourceusage"];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    resourceHints = v2->_resourceHints;
    v2->_resourceHints = v3;

    v5 = sub_100001600();
    mainQueue = v2->_mainQueue;
    v2->_mainQueue = v5;

    v7 = os_log_create("com.apple.powerexperienced", "resourcemanager");
    v8 = qword_100036B38;
    qword_100036B38 = v7;

    v9 = qword_100036B38;
    if (os_log_type_enabled(qword_100036B38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Listening for resource usage connections", buf, 2u);
    }

    v10 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.powerexperienced.resourcemanager"];
    defaults = v2->_defaults;
    v2->_defaults = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    processMonitors = v2->_processMonitors;
    v2->_processMonitors = v12;

    v14 = [NSSet setWithObjects:&off_10002E1F0, &off_10002E208, &off_10002E220, &off_10002E238, 0];
    v15 = qword_100036B40;
    qword_100036B40 = v14;

    [(ResourceManager *)v2 setDelegate:v2];
    if (MKBDeviceUnlockedSinceBoot())
    {
      [(ResourceManager *)v2 restoreState];
      v16 = qword_100036B38;
      if (os_log_type_enabled(qword_100036B38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "restoring state", buf, 2u);
      }
    }

    v17 = qword_100036B38;
    if (os_log_type_enabled(qword_100036B38, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      v19 = [(ResourceManager *)v2 mainQueue];
      *buf = 138412290;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Initialized ResourceManager with queue %@", buf, 0xCu);
    }
  }

  else
  {
    v20 = qword_100036B38;
    if (os_log_type_enabled(qword_100036B38, OS_LOG_TYPE_ERROR))
    {
      sub_1000188E0(v20);
    }
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_100036B50 != -1)
  {
    sub_100018924();
  }

  v3 = qword_100036B48;

  return v3;
}

- (void)start
{
  v3 = qword_100036B38;
  if (os_log_type_enabled(qword_100036B38, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "starting service", v4, 2u);
  }

  [(ResourceManager *)self activate];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____ResourceManagerProtocol];
  [v5 setExportedInterface:v6];

  v7 = qword_100036B38;
  if (os_log_type_enabled(qword_100036B38, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v10[0] = 67109120;
    v10[1] = [v5 processIdentifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "ResourceManager: listener: accepted new connection from pid %d", v10, 8u);
  }

  [v5 setExportedObject:self];
  [v5 resume];

  return 1;
}

@end