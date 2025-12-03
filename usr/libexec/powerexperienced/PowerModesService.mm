@interface PowerModesService
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PowerModesService)init;
- (void)initialStateUpdateForClient:(id)client;
- (void)registerWithIdentifier:(id)identifier forModes:(id)modes;
- (void)start;
- (void)updateClientsforMode:(id)mode withState:(BOOL)state;
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____ContextualPowerModesProtocol];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____ContextualPowerModesCallbackProtocol];
  [connectionCopy setRemoteObjectInterface:v7];

  v8 = qword_100036BB8;
  if (os_log_type_enabled(qword_100036BB8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v11[0] = 67109120;
    v11[1] = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "PowerModesManager: listener: accepted new connection from pid %d", v11, 8u);
  }

  [connectionCopy resume];

  return 1;
}

- (void)initialStateUpdateForClient:(id)client
{
  clientCopy = client;
  v4 = +[PowerModesManager sharedInstance];
  activeModes = [v4 activeModes];
  if ([activeModes count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = activeModes;
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
          connection = [clientCopy connection];

          if (connection)
          {
            connection2 = [clientCopy connection];
            v15[0] = _NSConcreteStackBlock;
            v15[1] = 3221225472;
            v15[2] = sub_10000B370;
            v15[3] = &unk_10002C878;
            v16 = clientCopy;
            v14 = [connection2 remoteObjectProxyWithErrorHandler:v15];
            [v14 updateState:1 forMode:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }
}

- (void)updateClientsforMode:(id)mode withState:(BOOL)state
{
  modeCopy = mode;
  queue = [(PowerModesService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B474;
  block[3] = &unk_10002C8A0;
  block[4] = self;
  v10 = modeCopy;
  stateCopy = state;
  v8 = modeCopy;
  dispatch_async(queue, block);
}

- (void)registerWithIdentifier:(id)identifier forModes:(id)modes
{
  identifierCopy = identifier;
  modesCopy = modes;
  v8 = +[NSXPCConnection currentConnection];
  queue = [(PowerModesService *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B81C;
  v13[3] = &unk_10002C6C0;
  v14 = identifierCopy;
  v15 = modesCopy;
  v16 = v8;
  selfCopy = self;
  v10 = v8;
  v11 = modesCopy;
  v12 = identifierCopy;
  dispatch_async(queue, v13);
}

@end