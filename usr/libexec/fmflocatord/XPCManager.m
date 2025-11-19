@interface XPCManager
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (XPCManager)init;
- (id)initSingleton;
- (void)dealloc;
- (void)initializeXPC;
@end

@implementation XPCManager

+ (id)sharedInstance
{
  if (qword_100070350 != -1)
  {
    sub_100038CD0();
  }

  v2 = qword_100070348;
  if (!qword_100070348)
  {
    v3 = sub_100002830();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** The XPCManager singleton seems to have been deallocated. This is unexpected & damaging.", v5, 2u);
    }

    v2 = qword_100070348;
  }

  return v2;
}

- (XPCManager)init
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100038D28(v3);
  }

  return 0;
}

- (id)initSingleton
{
  v5.receiver = self;
  v5.super_class = XPCManager;
  v2 = [(XPCManager *)&v5 init];
  if (v2)
  {
    v3 = sub_100002830();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100038D6C(v3);
    }

    objc_storeStrong(&qword_100070348, v2);
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100036958(self, v3);
  }

  v4 = qword_100070348;
  qword_100070348 = 0;

  v5.receiver = self;
  v5.super_class = XPCManager;
  [(XPCManager *)&v5 dealloc];
}

- (void)initializeXPC
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Initializing XPC...", v8, 2u);
  }

  v4 = [NSXPCListener alloc];
  v5 = [v4 initWithMachServiceName:off_10006FAE8];
  [(XPCManager *)self setNsxpcListener:v5];

  v6 = [(XPCManager *)self nsxpcListener];
  [v6 setDelegate:self];

  v7 = [(XPCManager *)self nsxpcListener];
  [v7 resume];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = sub_100002830();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received new XPC connection %@", &v10, 0xCu);
  }

  v6 = &OBJC_PROTOCOL___XPCServerProtocol;
  v7 = objc_opt_new();
  v8 = [NSXPCInterface interfaceWithProtocol:v6];
  [v4 setExportedInterface:v8];

  [v4 setExportedObject:v7];
  [v4 resume];

  return 1;
}

@end