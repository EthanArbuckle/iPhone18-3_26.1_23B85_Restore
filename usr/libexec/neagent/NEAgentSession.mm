@interface NEAgentSession
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)managerObject;
- (id)managerObjectWithErrorHandler:(id)handler;
- (void)disposeWithCompletionHandler:(id)handler;
- (void)setupWithPluginType:(id)type pluginVersion:(int64_t)version pluginClass:(int64_t)class pluginInfo:(id)info completionHandler:(id)handler;
@end

@implementation NEAgentSession

- (id)managerObjectWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = [Property remoteObjectProxyWithErrorHandler:handlerCopy];
  if (!v7)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to get the remote manager object", v11, 2u);
    }

    sub_100015D40(self, v9);
  }

  return v7;
}

- (id)managerObject
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  remoteObjectProxy = [(NEAgentSession *)self remoteObjectProxy];
  if (!remoteObjectProxy)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to get the remote manager object", v7, 2u);
    }

    sub_100015D40(selfCopy, v5);
  }

  return remoteObjectProxy;
}

- (void)disposeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self)
  {
    Property = objc_getProperty(self, v4, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000160C8;
  v8[3] = &unk_100024A98;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(Property, v8);
}

- (void)setupWithPluginType:(id)type pluginVersion:(int64_t)version pluginClass:(int64_t)class pluginInfo:(id)info completionHandler:(id)handler
{
  typeCopy = type;
  infoCopy = info;
  handlerCopy = handler;
  if (self)
  {
    Property = objc_getProperty(self, v14, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000163AC;
  v20[3] = &unk_100024A70;
  versionCopy = version;
  classCopy = class;
  v20[4] = self;
  v21 = typeCopy;
  v22 = infoCopy;
  v23 = handlerCopy;
  v17 = infoCopy;
  v18 = typeCopy;
  v19 = handlerCopy;
  dispatch_async(Property, v20);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  delegateConnection = self->_delegateConnection;
  if (delegateConnection)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Received a second delegate connection", buf, 2u);
    }
  }

  else
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100016A48;
    v16[3] = &unk_100024A20;
    v16[4] = self;
    v9 = objc_retainBlock(v16);
    v11 = [objc_getProperty(self v10];
    [connectionCopy setExportedInterface:v11];

    v13 = [objc_getProperty(self v12];
    [connectionCopy setRemoteObjectInterface:v13];

    [connectionCopy setExportedObject:{objc_getProperty(self, v14, 8, 1)}];
    [connectionCopy setInvalidationHandler:v9];
    [connectionCopy setInterruptionHandler:v9];
    objc_storeStrong(&self->_delegateConnection, connection);
    [connectionCopy resume];
  }

  return delegateConnection == 0;
}

@end