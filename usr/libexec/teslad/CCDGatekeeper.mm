@interface CCDGatekeeper
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CCDGatekeeper)init;
- (CCDServer)server;
- (void)idleTimerDidFire:(id)a3;
- (void)resetIdleTimer;
@end

@implementation CCDGatekeeper

- (CCDGatekeeper)init
{
  v5.receiver = self;
  v5.super_class = CCDGatekeeper;
  v2 = [(CCDGatekeeper *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CCDGatekeeper *)v2 resetIdleTimer];
  }

  return v3;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  [(CCDGatekeeper *)self resetIdleTimer];
  v6 = [v5 valueForEntitlement:kCCServiceEntitlement];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v6 BOOLValue] & 1) != 0)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DEPXPCProtocol];
    [v5 setExportedInterface:v7];

    v8 = [CCDServicer alloc];
    v9 = [(CCDGatekeeper *)self server];
    v10 = [(CCDServicer *)v8 initWithXPCConnection:v5 server:v9];
    [v5 setExportedObject:v10];

    [v5 resume];
    v11 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Accepted new connection.", v15, 2u);
    }

    v12 = 1;
  }

  else
  {
    v13 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "rejecting connection because it is not entitled to use this service!", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)idleTimerDidFire:(id)a3
{
  v3 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "idling", v5, 2u);
  }

  Main = CFRunLoopGetMain();
  CFRunLoopStop(Main);
}

- (void)resetIdleTimer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008348;
  block[3] = &unk_10001C9D8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (CCDServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

@end