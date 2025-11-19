@interface XPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (XPCServer)initWithChipManager:(id)a3;
- (void)activate;
- (void)checkForNewPowerTables:(id)a3;
- (void)getPMUFaultInfo:(id)a3;
- (void)getSiKPublicKey:(id)a3;
- (void)helloCommand:(id)a3;
- (void)invalidate;
- (void)preflightQuery:(id)a3;
- (void)shellCommand:(id)a3 reply:(id)a4;
@end

@implementation XPCServer

- (XPCServer)initWithChipManager:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = XPCServer;
  v6 = [(XPCServer *)&v10 init];
  if (v6)
  {
    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.centaurid.xpc"];
    listener = v6->_listener;
    v6->_listener = v7;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    objc_storeStrong(&v6->_chipManager, a3);
  }

  return v6;
}

- (void)activate
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v7, 0x16u);
  }

  [(NSXPCListener *)self->_listener activate];
}

- (void)invalidate
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v7, 0x16u);
  }

  [(NSXPCListener *)self->_listener invalidate];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  v7 = [v6 processIdentifier];
  bzero(buffer, 0x400uLL);
  if (!proc_name(v7, buffer, 0x400u))
  {
    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100031770(self, a2);
    }
  }

  v9 = sub_100025204();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [objc_opt_class() description];
    v11 = NSStringFromSelector(a2);
    *buf = 138544130;
    v26 = v10;
    v27 = 2114;
    v28 = v11;
    v29 = 2082;
    v30 = buffer;
    v31 = 2114;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: connection from %{public}s: %{public}@", buf, 0x2Au);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100027860;
  v23[3] = &unk_10005CDD8;
  v23[4] = self;
  v23[5] = a2;
  v24 = v7;
  [v6 setInterruptionHandler:v23];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100027954;
  v21[3] = &unk_10005CDD8;
  v21[4] = self;
  v21[5] = a2;
  v22 = v7;
  [v6 setInvalidationHandler:v21];
  v12 = [v6 serviceName];
  v13 = [v12 isEqualToString:@"com.apple.centaurid.xpc"];

  if ((v13 & 1) == 0)
  {
    v14 = sub_100025204();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = [objc_opt_class() description];
      v19 = NSStringFromSelector(a2);
      v20 = [v6 serviceName];
      *buf = 138543874;
      v26 = v18;
      v27 = 2114;
      v28 = v19;
      v29 = 2114;
      v30 = v20;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: unknown service %{public}@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  v14 = [v6 valueForEntitlement:@"com.apple.centaurid.xpc"];
  if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v14 BOOLValue]& 1) == 0)
  {
    sub_100031818(self, a2);
LABEL_16:
    v16 = 0;
    goto LABEL_12;
  }

  v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CENXPCServerProtocol];
  [v6 setExportedInterface:v15];

  [v6 setExportedObject:self];
  [v6 resume];
  v16 = 1;
LABEL_12:

  return v16;
}

- (void)helloCommand:(id)a3
{
  v5 = a3;
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v9, 0x16u);
  }

  [(ChipManager *)self->_chipManager helloCommand:v5];
}

- (void)shellCommand:(id)a3 reply:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = sub_100025204();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [objc_opt_class() description];
    v11 = NSStringFromSelector(a2);
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v12, 0x16u);
  }

  [(ChipManager *)self->_chipManager shellCommand:v8 completion:v7];
}

- (void)getPMUFaultInfo:(id)a3
{
  v5 = a3;
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v9, 0x16u);
  }

  [(ChipManager *)self->_chipManager getPMUFaultInfo:v5];
}

- (void)preflightQuery:(id)a3
{
  v5 = a3;
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v9, 0x16u);
  }

  [(ChipManager *)self->_chipManager preflightQuery:v5];
}

- (void)getSiKPublicKey:(id)a3
{
  v5 = a3;
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v9, 0x16u);
  }

  [(ChipManager *)self->_chipManager getSiKPublicKey:v5];
}

- (void)checkForNewPowerTables:(id)a3
{
  v5 = a3;
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v9, 0x16u);
  }

  [(ChipManager *)self->_chipManager checkForNewPowerTables:v5];
}

@end