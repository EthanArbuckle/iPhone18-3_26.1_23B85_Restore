@interface SCDaemon
+ (id)sharedDaemon;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSArray)backgroundSystemTasks;
- (NSArray)notifyDListeners;
- (SCDaemon)init;
- (id)_listenersByEventName;
- (void)registerBackgroundSystemTasks;
- (void)registerXPCEventHandlers;
- (void)start;
@end

@implementation SCDaemon

+ (id)sharedDaemon
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000013DC;
  block[3] = &unk_1000103F8;
  block[4] = self;
  if (qword_100015120 != -1)
  {
    dispatch_once(&qword_100015120, block);
  }

  v2 = qword_100015118;

  return v2;
}

- (SCDaemon)init
{
  v6.receiver = self;
  v6.super_class = SCDaemon;
  v2 = [(SCDaemon *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.safetycheckd.queue", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;
  }

  return v2;
}

- (void)start
{
  [(SCDaemon *)self registerXPCEventHandlers];
  [(SCDaemon *)self registerBackgroundSystemTasks];
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.safetycheckd"];
  xpcListener = self->_xpcListener;
  self->_xpcListener = v3;

  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  v5 = self->_xpcListener;

  [(NSXPCListener *)v5 resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = sub_100002AF4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received new connection: %@", &v10, 0xCu);
  }

  v6 = +[SCDaemonService exportedInterface];
  [connectionCopy setExportedInterface:v6];

  v7 = [[SCDaemonClient alloc] initWithConnection:connectionCopy];
  v8 = [[SCDaemonService alloc] initWithClient:v7];
  [connectionCopy setExportedObject:v8];
  [connectionCopy resume];

  return 1;
}

- (void)registerXPCEventHandlers
{
  _listenersByEventName = [(SCDaemon *)self _listenersByEventName];
  if ([_listenersByEventName count])
  {
    workQueue = self->_workQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000016BC;
    handler[3] = &unk_100010420;
    v6 = _listenersByEventName;
    xpc_set_event_stream_handler("com.apple.notifyd.matching", workQueue, handler);
  }
}

- (void)registerBackgroundSystemTasks
{
  backgroundSystemTasks = [(SCDaemon *)self backgroundSystemTasks];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [backgroundSystemTasks countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(backgroundSystemTasks);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        workQueue = [(SCDaemon *)self workQueue];
        [v8 registerForTaskUsingQueue:workQueue];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [backgroundSystemTasks countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)_listenersByEventName
{
  v3 = +[NSMutableDictionary dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(SCDaemon *)self notifyDListeners];
  v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v16)
  {
    v15 = *v22;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v21 + 1) + 8 * i);
        interestedEvents = [v5 interestedEvents];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v7 = [interestedEvents countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v18;
          do
          {
            for (j = 0; j != v8; j = j + 1)
            {
              if (*v18 != v9)
              {
                objc_enumerationMutation(interestedEvents);
              }

              v11 = *(*(&v17 + 1) + 8 * j);
              v12 = [v3 objectForKey:v11];
              if (!v12)
              {
                v12 = +[NSMutableArray array];
                [v3 setObject:v12 forKey:v11];
              }

              [v12 addObject:v5];
            }

            v8 = [interestedEvents countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v8);
        }
      }

      v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v16);
  }

  return v3;
}

- (NSArray)notifyDListeners
{
  v2 = objc_opt_new();
  if (_os_feature_enabled_impl())
  {
    v3 = objc_alloc_init(SCSharingReminderServiceProvider);
    [v2 addObject:v3];
  }

  return v2;
}

- (NSArray)backgroundSystemTasks
{
  v2 = objc_opt_new();
  if (_os_feature_enabled_impl())
  {
    v3 = +[SCSharingReminderServiceProvider tasks];
    [v2 addObjectsFromArray:v3];
  }

  return v2;
}

@end