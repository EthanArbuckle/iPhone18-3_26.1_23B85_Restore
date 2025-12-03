@interface XPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (XPCServer)initWithChipManager:(id)manager;
- (void)activate;
- (void)checkForNewPowerTables:(id)tables;
- (void)getPMUFaultInfo:(id)info;
- (void)getSiKPublicKey:(id)key;
- (void)helloCommand:(id)command;
- (void)invalidate;
- (void)preflightQuery:(id)query;
- (void)shellCommand:(id)command reply:(id)reply;
@end

@implementation XPCServer

- (XPCServer)initWithChipManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = XPCServer;
  v6 = [(XPCServer *)&v10 init];
  if (v6)
  {
    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.centaurid.xpc"];
    listener = v6->_listener;
    v6->_listener = v7;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    objc_storeStrong(&v6->_chipManager, manager);
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  bzero(buffer, 0x400uLL);
  if (!proc_name(processIdentifier, buffer, 0x400u))
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
    v32 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: connection from %{public}s: %{public}@", buf, 0x2Au);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100027860;
  v23[3] = &unk_10005CDD8;
  v23[4] = self;
  v23[5] = a2;
  v24 = processIdentifier;
  [connectionCopy setInterruptionHandler:v23];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100027954;
  v21[3] = &unk_10005CDD8;
  v21[4] = self;
  v21[5] = a2;
  v22 = processIdentifier;
  [connectionCopy setInvalidationHandler:v21];
  serviceName = [connectionCopy serviceName];
  v13 = [serviceName isEqualToString:@"com.apple.centaurid.xpc"];

  if ((v13 & 1) == 0)
  {
    v14 = sub_100025204();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = [objc_opt_class() description];
      v19 = NSStringFromSelector(a2);
      serviceName2 = [connectionCopy serviceName];
      *buf = 138543874;
      v26 = v18;
      v27 = 2114;
      v28 = v19;
      v29 = 2114;
      v30 = serviceName2;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: unknown service %{public}@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  v14 = [connectionCopy valueForEntitlement:@"com.apple.centaurid.xpc"];
  if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v14 BOOLValue]& 1) == 0)
  {
    sub_100031818(self, a2);
LABEL_16:
    v16 = 0;
    goto LABEL_12;
  }

  v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CENXPCServerProtocol];
  [connectionCopy setExportedInterface:v15];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];
  v16 = 1;
LABEL_12:

  return v16;
}

- (void)helloCommand:(id)command
{
  commandCopy = command;
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

  [(ChipManager *)self->_chipManager helloCommand:commandCopy];
}

- (void)shellCommand:(id)command reply:(id)reply
{
  replyCopy = reply;
  commandCopy = command;
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

  [(ChipManager *)self->_chipManager shellCommand:commandCopy completion:replyCopy];
}

- (void)getPMUFaultInfo:(id)info
{
  infoCopy = info;
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

  [(ChipManager *)self->_chipManager getPMUFaultInfo:infoCopy];
}

- (void)preflightQuery:(id)query
{
  queryCopy = query;
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

  [(ChipManager *)self->_chipManager preflightQuery:queryCopy];
}

- (void)getSiKPublicKey:(id)key
{
  keyCopy = key;
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

  [(ChipManager *)self->_chipManager getSiKPublicKey:keyCopy];
}

- (void)checkForNewPowerTables:(id)tables
{
  tablesCopy = tables;
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

  [(ChipManager *)self->_chipManager checkForNewPowerTables:tablesCopy];
}

@end