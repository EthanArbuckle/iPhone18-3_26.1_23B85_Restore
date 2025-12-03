@interface FMDXPCManager
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (FMDXPCManager)init;
- (id)initSingleton;
- (void)dealloc;
- (void)initializeXPC;
@end

@implementation FMDXPCManager

+ (id)sharedInstance
{
  if (qword_100314610 != -1)
  {
    sub_100227EA4();
  }

  v2 = qword_100314608;
  if (!qword_100314608)
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** The FMDXPCManager singleton seems to have been deallocated. This is unexpected & damaging.", v5, 2u);
    }

    v2 = qword_100314608;
  }

  return v2;
}

- (FMDXPCManager)init
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100227EFC(v3);
  }

  return 0;
}

- (id)initSingleton
{
  v5.receiver = self;
  v5.super_class = FMDXPCManager;
  v2 = [(FMDXPCManager *)&v5 init];
  if (v2)
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100227F40(v3);
    }

    objc_storeStrong(&qword_100314608, v2);
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1002258DC(self, v3);
  }

  v4 = qword_100314608;
  qword_100314608 = 0;

  v5.receiver = self;
  v5.super_class = FMDXPCManager;
  [(FMDXPCManager *)&v5 dealloc];
}

- (void)initializeXPC
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initializing XPC...", v11, 2u);
  }

  v4 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v5 = [[FMNanoIDSManager alloc] initWithServiceId:@"com.apple.private.alloy.findmydeviced.aoverc" minimumVersion:3];
  [v5 start];
  [(FMDXPCManager *)self setProtectedIDSManager:v5];
  v6 = [NSXPCListener alloc];
  serviceName = [v4 serviceName];
  v8 = [v6 initWithMachServiceName:serviceName];
  [(FMDXPCManager *)self setFmdXPCListener:v8];

  fmdXPCListener = [(FMDXPCManager *)self fmdXPCListener];
  [fmdXPCListener setDelegate:self];

  fmdXPCListener2 = [(FMDXPCManager *)self fmdXPCListener];
  [fmdXPCListener2 resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  listenerCopy = listener;
  v8 = sub_100002880();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received new XPC connection %@", &v14, 0xCu);
  }

  fmdXPCListener = [(FMDXPCManager *)self fmdXPCListener];

  if (fmdXPCListener == listenerCopy)
  {
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FMDFMIPProtocol];
    [connectionCopy setExportedInterface:v10];

    v11 = objc_opt_new();
    protectedIDSManager = [(FMDXPCManager *)self protectedIDSManager];
    [v11 setProtectedIDSManager:protectedIDSManager];

    [connectionCopy setExportedObject:v11];
  }

  [connectionCopy resume];

  return 1;
}

@end