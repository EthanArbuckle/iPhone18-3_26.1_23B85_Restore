@interface CBDLocalServiceServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CBDLocalServiceServer)init;
- (void)invalidate;
- (void)resume;
- (void)setProxyServer:(id)server completion:(id)completion;
- (void)startDiagnosticsWithCompletion:(id)completion;
@end

@implementation CBDLocalServiceServer

- (CBDLocalServiceServer)init
{
  v6.receiver = self;
  v6.super_class = CBDLocalServiceServer;
  v2 = [(CBDLocalServiceServer *)&v6 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.checkerboardd"];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
  }

  return v2;
}

- (void)resume
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Start Local XPC", v5, 2u);
  }

  listener = [(CBDLocalServiceServer *)self listener];
  [listener resume];
}

- (void)invalidate
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidate Local XPC", v6, 2u);
  }

  listener = [(CBDLocalServiceServer *)self listener];

  if (listener)
  {
    listener2 = [(CBDLocalServiceServer *)self listener];
    [listener2 invalidate];

    [(CBDLocalServiceServer *)self setListener:0];
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315394;
    v20 = "[CBDLocalServiceServer listener:shouldAcceptNewConnection:]";
    v21 = 2112;
    v22 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %@", &v19, 0x16u);
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.checkerboardd"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 BOOLValue])
  {
    [(CBDLocalServiceServer *)self setConnection:connectionCopy];
    v8 = +[CBLocalServiceInterface clientInterface];
    connection = [(CBDLocalServiceServer *)self connection];
    [connection setRemoteObjectInterface:v8];

    v10 = +[CBLocalServiceInterface serverInterface];
    connection2 = [(CBDLocalServiceServer *)self connection];
    [connection2 setExportedInterface:v10];

    connection3 = [(CBDLocalServiceServer *)self connection];
    [connection3 setExportedObject:self];

    connection4 = [(CBDLocalServiceServer *)self connection];
    [connection4 setInterruptionHandler:&stru_1000105A8];

    connection5 = [(CBDLocalServiceServer *)self connection];
    [connection5 setInvalidationHandler:&stru_1000105C8];

    connection6 = [(CBDLocalServiceServer *)self connection];
    [connection6 resume];

    v16 = 1;
  }

  else
  {
    v17 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = @"com.apple.checkerboardd";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Incoming connection not entitled. The [%@] entitlement is required.", &v19, 0xCu);
    }

    [connectionCopy invalidate];
    v16 = 0;
  }

  return v16;
}

- (void)setProxyServer:(id)server completion:(id)completion
{
  serverCopy = server;
  completionCopy = completion;
  connection = [(CBDLocalServiceServer *)self connection];

  if (connection)
  {
    connection2 = [(CBDLocalServiceServer *)self connection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100005738;
    v15[3] = &unk_1000105F0;
    v10 = completionCopy;
    v16 = v10;
    v11 = [connection2 synchronousRemoteObjectProxyWithErrorHandler:v15];

    v12 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Local XPC - Pass SocksProxy info to client", buf, 2u);
    }

    [v11 setProxyServer:serverCopy completion:v10];
    v13 = v16;
  }

  else
  {
    v14 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Local XPC - connection is nil.", buf, 2u);
    }

    v13 = [NSError errorWithDomain:@"com.apple.checkerboardd.localServiceDaemonXPCErrorDomain" code:2 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v13);
  }
}

- (void)startDiagnosticsWithCompletion:(id)completion
{
  completionCopy = completion;
  connection = [(CBDLocalServiceServer *)self connection];

  if (connection)
  {
    connection2 = [(CBDLocalServiceServer *)self connection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000059B8;
    v12[3] = &unk_1000105F0;
    v7 = completionCopy;
    v13 = v7;
    v8 = [connection2 synchronousRemoteObjectProxyWithErrorHandler:v12];

    v9 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Local XPC - send moveToDiagnosticsApp to client", buf, 2u);
    }

    [v8 moveToDiagnosticsAppWithcompletion:v7];
    v10 = v13;
  }

  else
  {
    v11 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Local XPC - connection is nil.", buf, 2u);
    }

    v10 = [NSError errorWithDomain:@"com.apple.checkerboardd.localServiceDaemonXPCErrorDomain" code:2 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v10);
  }
}

@end