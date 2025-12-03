@interface PowerTargetControllerService
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PowerTargetControllerService)init;
- (void)registerWithIdentifier:(id)identifier;
- (void)updateClients:(unint64_t)clients andLevel:(unint64_t)level;
@end

@implementation PowerTargetControllerService

+ (id)sharedInstance
{
  if (qword_100036CC8 != -1)
  {
    sub_100019C98();
  }

  v3 = qword_100036CC0;

  return v3;
}

- (PowerTargetControllerService)init
{
  v9.receiver = self;
  v9.super_class = PowerTargetControllerService;
  v2 = [(PowerTargetControllerService *)&v9 initWithMachServiceName:@"com.apple.powerexperienced.powertargetcontrollerservice"];
  if (v2)
  {
    v3 = qword_100036CD0;
    if (os_log_type_enabled(qword_100036CD0, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "starting service", v8, 2u);
    }

    [(PowerTargetControllerService *)v2 setDelegate:v2];
    v4 = +[NSMutableArray array];
    [(PowerTargetControllerService *)v2 setClients:v4];

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.powerexperienced.powertargetcontrollerservice", v5);
    [(PowerTargetControllerService *)v2 setQueue:v6];
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ContextualPowerTargetsProtocol];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ContextualPowerTargetsCallbackProtocol];
  [connectionCopy setRemoteObjectInterface:v7];

  v8 = qword_100036CD0;
  if (os_log_type_enabled(qword_100036CD0, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v11[0] = 67109120;
    v11[1] = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "PowerTargetControllerService: listener: accepted new connection from pid %d", v11, 8u);
  }

  [connectionCopy resume];

  return 1;
}

- (void)updateClients:(unint64_t)clients andLevel:(unint64_t)level
{
  queue = [(PowerTargetControllerService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017B88;
  block[3] = &unk_10002CCD0;
  block[4] = self;
  block[5] = clients;
  block[6] = level;
  dispatch_async(queue, block);
}

- (void)registerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[NSXPCConnection currentConnection];
  queue = [(PowerTargetControllerService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017DF8;
  block[3] = &unk_10002CCF8;
  v10 = identifierCopy;
  v11 = v5;
  selfCopy = self;
  v7 = v5;
  v8 = identifierCopy;
  dispatch_async(queue, block);
}

@end