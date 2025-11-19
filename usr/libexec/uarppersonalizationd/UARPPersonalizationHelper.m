@interface UARPPersonalizationHelper
- (NSMutableArray)tssRequests;
- (UARPPersonalizationHelper)initWithMachServiceName:(id)a3 updaterName:(id)a4;
- (void)completedTssResponse:(id)a3;
- (void)dealloc;
- (void)queryOutstandingTssRequests;
- (void)start;
@end

@implementation UARPPersonalizationHelper

- (UARPPersonalizationHelper)initWithMachServiceName:(id)a3 updaterName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = UARPPersonalizationHelper;
  v8 = [(UARPPersonalizationHelper *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];
    serviceName = v8->_serviceName;
    v8->_serviceName = v9;

    v11 = [v7 copy];
    updaterName = v8->_updaterName;
    v8->_updaterName = v11;

    v13 = os_log_create("com.apple.accessoryupdater.uarp", "personalization");
    log = v8->_log;
    v8->_log = v13;

    v15 = objc_opt_new();
    pendingRequests = v8->_pendingRequests;
    v8->_pendingRequests = v15;
  }

  return v8;
}

- (void)start
{
  v3 = [[NSXPCConnection alloc] initWithMachServiceName:self->_serviceName options:4096];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v3;

  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPPersonalizationProtocol];
  xpcInterface = self->_xpcInterface;
  self->_xpcInterface = v5;

  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v18[2] = objc_opt_class();
  v18[3] = objc_opt_class();
  v18[4] = objc_opt_class();
  v7 = [NSArray arrayWithObjects:v18 count:5];
  v8 = [NSSet setWithArray:v7];

  [(NSXPCInterface *)self->_xpcInterface setClasses:v8 forSelector:"getOutstandingPersonalizationRequests:reply:" argumentIndex:0 ofReply:1];
  [(NSXPCInterface *)self->_xpcInterface setClasses:v8 forSelector:"personalizationResponse:updaterName:" argumentIndex:0 ofReply:0];
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:self->_xpcInterface];
  objc_initWeak(&location, self->_log);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000021E4;
  v15[3] = &unk_10000C380;
  objc_copyWeak(&v16, &location);
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000224C;
  v13[3] = &unk_10000C380;
  objc_copyWeak(&v14, &location);
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v13];
  [(NSXPCConnection *)self->_xpcConnection resume];
  v9 = self->_xpcConnection;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000022B4;
  v12[3] = &unk_10000C3D0;
  v12[4] = self;
  v10 = [(NSXPCConnection *)v9 synchronousRemoteObjectProxyWithErrorHandler:v12];
  proxy = self->_proxy;
  self->_proxy = v10;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = UARPPersonalizationHelper;
  [(UARPPersonalizationHelper *)&v3 dealloc];
}

- (void)queryOutstandingTssRequests
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100002524;
  v12 = sub_100002534;
  v13 = 0;
  proxy = self->_proxy;
  updaterName = self->_updaterName;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000253C;
  v7[3] = &unk_10000C3F8;
  v7[4] = self;
  v7[5] = &v8;
  [proxy getOutstandingPersonalizationRequests:updaterName reply:v7];
  [(NSMutableArray *)self->_pendingRequests addObjectsFromArray:v9[5]];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    pendingRequests = self->_pendingRequests;
    *buf = 138412290;
    v15 = pendingRequests;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Pending Tatsu Requests are %@", buf, 0xCu);
  }

  _Block_object_dispose(&v8, 8);
}

- (NSMutableArray)tssRequests
{
  v2 = [(NSMutableArray *)self->_pendingRequests copy];

  return v2;
}

- (void)completedTssResponse:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[UARPPersonalizationHelper completedTssResponse:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: Tatsu Response is %@", &v6, 0x16u);
  }

  [self->_proxy personalizationResponse:v4 updaterName:self->_updaterName];
}

@end