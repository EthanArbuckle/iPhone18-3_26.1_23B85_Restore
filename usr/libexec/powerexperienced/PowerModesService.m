@interface PowerModesService
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PowerModesService)init;
- (void)initialStateUpdateForClient:(id)a3;
- (void)registerWithIdentifier:(id)a3 forModes:(id)a4;
- (void)start;
- (void)updateClientsforMode:(id)a3 withState:(BOOL)a4;
@end

@implementation PowerModesService

+ (id)sharedInstance
{
  if (qword_100036BB0 != -1)
  {
    sub_100018BE4();
  }

  v3 = qword_100036BA8;

  return v3;
}

- (PowerModesService)init
{
  v9.receiver = self;
  v9.super_class = PowerModesService;
  v2 = [(PowerModesService *)&v9 initWithMachServiceName:@"com.apple.powerexperienced.powermodesservice"];
  if (v2)
  {
    v3 = qword_100036BB8;
    if (os_log_type_enabled(qword_100036BB8, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "starting service", v8, 2u);
    }

    [(PowerModesService *)v2 setDelegate:v2];
    v4 = +[NSMutableArray array];
    [(PowerModesService *)v2 setClients:v4];

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.powerexperienced.powermodesservice", v5);
    [(PowerModesService *)v2 setQueue:v6];
  }

  return v2;
}

- (void)start
{
  [(PowerModesService *)self activate];

  notify_post("com.apple.powerexperienced.restart");
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____ContextualPowerModesProtocol];
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____ContextualPowerModesCallbackProtocol];
  [v5 setRemoteObjectInterface:v7];

  v8 = qword_100036BB8;
  if (os_log_type_enabled(qword_100036BB8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v11[0] = 67109120;
    v11[1] = [v5 processIdentifier];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "PowerModesManager: listener: accepted new connection from pid %d", v11, 8u);
  }

  [v5 resume];

  return 1;
}

- (void)initialStateUpdateForClient:(id)a3
{
  v3 = a3;
  v4 = +[PowerModesManager sharedInstance];
  v5 = [v4 activeModes];
  if ([v5 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v17 + 1) + 8 * i) description];
          v12 = [v3 connection];

          if (v12)
          {
            v13 = [v3 connection];
            v15[0] = _NSConcreteStackBlock;
            v15[1] = 3221225472;
            v15[2] = sub_10000B370;
            v15[3] = &unk_10002C878;
            v16 = v3;
            v14 = [v13 remoteObjectProxyWithErrorHandler:v15];
            [v14 updateState:1 forMode:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }
}

- (void)updateClientsforMode:(id)a3 withState:(BOOL)a4
{
  v6 = a3;
  v7 = [(PowerModesService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B474;
  block[3] = &unk_10002C8A0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)registerWithIdentifier:(id)a3 forModes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSXPCConnection currentConnection];
  v9 = [(PowerModesService *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B81C;
  v13[3] = &unk_10002C6C0;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = self;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  dispatch_async(v9, v13);
}

@end