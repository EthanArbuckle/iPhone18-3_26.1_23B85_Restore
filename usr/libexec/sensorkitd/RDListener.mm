@interface RDListener
+ (void)initialize;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)dealloc;
@end

@implementation RDListener

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_1000719B8 = os_log_create("com.apple.SensorKit", "DaemonListener");
  }
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(RDListener *)self setListener:0];

  self->_connections = 0;
  self->_exportedObject = 0;

  self->_exportedInterface = 0;
  self->_remoteObjectInterface = 0;

  self->_serviceName = 0;
  self->_stateCache = 0;
  objc_setProperty_nonatomic(self, v3, 0, 40);
  v4.receiver = self;
  v4.super_class = RDListener;
  [(RDListener *)&v4 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v6 = qword_1000719B8;
  if (os_log_type_enabled(qword_1000719B8, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = self->_serviceName;
    *buf = 138412290;
    v21 = serviceName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Got a connection attempt on %@", buf, 0xCu);
  }

  else if (!self)
  {
    goto LABEL_11;
  }

  stateCache = self->_stateCache;
  if (stateCache)
  {
    v9 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      v15 = v9;
      dispatch_once(&qword_100071B60, &stru_100060D90);
      v9 = v15;
    }

    v10 = qword_100071B68 < v9;
    v11 = *&qword_100071B70;
    v12 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    if (!v10)
    {
      v13 = -v13;
    }

    if (v12 + v11 + v13 < stateCache->_localDaemonLaunchTime + 3.0 + stateCache->_remoteRTCOffset)
    {
      AnalyticsSendEventLazy();
    }
  }

LABEL_11:
  [connection _setQueue:self->_q];
  [connection setExportedInterface:self->_exportedInterface];
  [connection setExportedObject:self->_exportedObject];
  [connection setRemoteObjectInterface:self->_remoteObjectInterface];
  objc_initWeak(buf, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100008024;
  v18[3] = &unk_100060CE0;
  objc_copyWeak(&v19, buf);
  [connection setInterruptionHandler:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000080CC;
  v16[3] = &unk_100060D08;
  objc_copyWeak(&v17, buf);
  v16[4] = connection;
  [connection setInvalidationHandler:v16];
  [connection resume];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
  return 1;
}

@end