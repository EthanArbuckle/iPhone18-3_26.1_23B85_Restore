@interface RPBroadcastExtensionProxy
- (RPBroadcastExtensionProxy)initWithBroadcastUploadExtension:(id)extension;
- (RPBroadcastExtensionProxy)initWithBroadcastUploadListenerEndpoint:(id)endpoint;
- (void)dealloc;
- (void)establishConnectionWithHandler:(id)handler;
- (void)finishBroadcastWithError:(id)error;
- (void)invalidateConnection;
- (void)ping;
- (void)processPayload:(id)payload completion:(id)completion;
- (void)setupNewConnection:(id)connection;
- (void)updateBroadcastURL:(id)l;
- (void)updateServiceInfo:(id)info;
@end

@implementation RPBroadcastExtensionProxy

- (RPBroadcastExtensionProxy)initWithBroadcastUploadExtension:(id)extension
{
  extensionCopy = extension;
  v9.receiver = self;
  v9.super_class = RPBroadcastExtensionProxy;
  v5 = [(RPBroadcastExtensionProxy *)&v9 init];
  if (v5)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v11 = "[RPBroadcastExtensionProxy initWithBroadcastUploadExtension:]";
      v12 = 1024;
      v13 = 41;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    v6 = +[NSXPCListener anonymousListener];
    [(RPBroadcastExtensionProxy *)v5 setListener:v6];

    [(NSXPCListener *)v5->_listener resume];
    [(NSXPCListener *)v5->_listener setDelegate:v5];
    endpoint = [(NSXPCListener *)v5->_listener endpoint];
    [(RPBroadcastExtensionProxy *)v5 setListenerEndpoint:endpoint];

    [(RPBroadcastExtensionProxy *)v5 setBroadcastUploadExtension:extensionCopy];
  }

  return v5;
}

- (RPBroadcastExtensionProxy)initWithBroadcastUploadListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v8.receiver = self;
  v8.super_class = RPBroadcastExtensionProxy;
  v5 = [(RPBroadcastExtensionProxy *)&v8 init];
  if (v5)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v10 = "[RPBroadcastExtensionProxy initWithBroadcastUploadListenerEndpoint:]";
      v11 = 1024;
      v12 = 53;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    if (!v5->_connection)
    {
      v6 = [[NSXPCConnection alloc] initWithListenerEndpoint:endpointCopy];
      [(RPBroadcastExtensionProxy *)v5 setupNewConnection:v6];
    }
  }

  return v5;
}

- (void)dealloc
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPBroadcastExtensionProxy dealloc]";
    v6 = 1024;
    v7 = 63;
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v3.receiver = self;
  v3.super_class = RPBroadcastExtensionProxy;
  [(RPBroadcastExtensionProxy *)&v3 dealloc];
}

- (void)establishConnectionWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[RPBroadcastExtensionProxy establishConnectionWithHandler:]";
    v14 = 1024;
    v15 = 67;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d establishing connection to extension", buf, 0x12u);
  }

  [(RPBroadcastExtensionProxy *)self setConnectionReadyHandler:handlerCopy];
  v5 = objc_alloc_init(NSExtensionItem);
  broadcastUploadExtension = self->_broadcastUploadExtension;
  v11 = v5;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010164;
  v9[3] = &unk_1000A15C0;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(NSExtension *)broadcastUploadExtension beginExtensionRequestWithInputItems:v7 completion:v9];
}

- (void)invalidateConnection
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v8 = 136446978;
    v9 = "[RPBroadcastExtensionProxy invalidateConnection]";
    v10 = 1024;
    v11 = 100;
    v12 = 2048;
    selfCopy = self;
    v14 = 2048;
    v15 = connection;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p invalidating connection=%p with extension", &v8, 0x26u);
  }

  [(RPBroadcastExtensionProxy *)self setConnectionReadyHandler:0];
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_connection invalidate];
  [(NSXPCListener *)self->_listener invalidate];
  [(RPBroadcastExtensionProxy *)self setConnection:0];
  [(RPBroadcastExtensionProxy *)self setListener:0];
  serviceInfoHandler = self->_serviceInfoHandler;
  self->_serviceInfoHandler = 0;

  broadcastURLHandler = self->_broadcastURLHandler;
  self->_broadcastURLHandler = 0;

  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  broadcastUploadExtension = [(RPBroadcastExtensionProxy *)self broadcastUploadExtension];
  [broadcastUploadExtension _kill:9];

  [(RPBroadcastExtensionProxy *)self setBroadcastUploadExtension:0];
}

- (void)setupNewConnection:(id)connection
{
  connectionCopy = connection;
  [(RPBroadcastExtensionProxy *)self setConnection:connectionCopy];
  [(NSXPCConnection *)self->_connection setExportedObject:self];
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPBroadcastDaemonProtocol];
  [(NSXPCConnection *)self->_connection setExportedInterface:v5];

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPBroadcastExtensionProtocol];
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

  objc_initWeak(&location, self);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10001075C;
  v10 = &unk_1000A15E8;
  objc_copyWeak(&v11, &location);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:&v7];
  [(NSXPCConnection *)self->_connection setInterruptionHandler:&stru_1000A1628, v7, v8, v9, v10];
  [(NSXPCConnection *)self->_connection resume];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)updateServiceInfo:(id)info
{
  infoCopy = info;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPBroadcastExtensionProxy updateServiceInfo:]";
    v8 = 1024;
    v9 = 145;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d received serviceInfo", &v6, 0x12u);
  }

  serviceInfoHandler = self->_serviceInfoHandler;
  if (serviceInfoHandler)
  {
    serviceInfoHandler[2](serviceInfoHandler, infoCopy);
  }
}

- (void)updateBroadcastURL:(id)l
{
  lCopy = l;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPBroadcastExtensionProxy updateBroadcastURL:]";
    v8 = 1024;
    v9 = 152;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d received broadcastURL", &v6, 0x12u);
  }

  broadcastURLHandler = self->_broadcastURLHandler;
  if (broadcastURLHandler)
  {
    broadcastURLHandler[2](broadcastURLHandler, lCopy);
  }
}

- (void)ping
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[RPBroadcastExtensionProxy ping]";
    v12 = 1024;
    v13 = 159;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d received ping from extension, notifying handler that connection is ready", &v10, 0x12u);
  }

  connectionReadyHandler = self->_connectionReadyHandler;
  if (connectionReadyHandler)
  {
    connectionReadyHandler[2](connectionReadyHandler, 0);
  }

  v4 = +[NSXPCConnection currentConnection];
  v5 = +[RPFeatureFlagUtility sharedInstance];
  screenRecordingPassthroughCamera = [v5 screenRecordingPassthroughCamera];

  if (screenRecordingPassthroughCamera)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446978;
      v11 = "[RPBroadcastExtensionProxy ping]";
      v12 = 1024;
      v13 = 172;
      v14 = 2048;
      selfCopy2 = self;
      v16 = 2048;
      v17 = v4;
      v7 = " [INFO] %{public}s:%d %p connection=%p";
      v8 = 38;
LABEL_13:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v7, &v10, v8);
    }
  }

  else
  {
    self->_enableMixedRealityCamera = 0;
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      enableMixedRealityCamera = self->_enableMixedRealityCamera;
      v10 = 136447234;
      v11 = "[RPBroadcastExtensionProxy ping]";
      v12 = 1024;
      v13 = 170;
      v14 = 2048;
      selfCopy2 = self;
      v16 = 2048;
      v17 = v4;
      v18 = 1024;
      v19 = enableMixedRealityCamera;
      v7 = " [INFO] %{public}s:%d %p connection=%p enableMixedRealityCamera=%d";
      v8 = 44;
      goto LABEL_13;
    }
  }
}

- (void)finishBroadcastWithError:(id)error
{
  errorCopy = error;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[RPBroadcastExtensionProxy finishBroadcastWithError:]";
    v8 = 1024;
    v9 = 177;
    v10 = 2112;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d received finish request from service due to error %@", &v6, 0x1Cu);
  }

  errorHandler = self->_errorHandler;
  if (errorHandler)
  {
    errorHandler[2](errorHandler, errorCopy);
  }
}

- (void)processPayload:(id)payload completion:(id)completion
{
  payloadCopy = payload;
  completionCopy = completion;
  objc_initWeak(&location, self);
  connection = self->_connection;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100010EC4;
  v14 = &unk_1000A1650;
  objc_copyWeak(&v15, &location);
  v9 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&v11];
  v10 = v9;
  if (v9)
  {
    [v9 processPayload:payloadCopy completion:{completionCopy, v11, v12, v13, v14}];
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

@end