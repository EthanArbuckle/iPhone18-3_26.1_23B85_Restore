@interface DIClient2IODaemonXPCHandler
- (BOOL)addToRefCountWithError:(id *)error;
- (DIClient2IODaemonXPCHandler)initWithEndpoint:(id)endpoint;
- (void)createConnection;
@end

@implementation DIClient2IODaemonXPCHandler

- (DIClient2IODaemonXPCHandler)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v9.receiver = self;
  v9.super_class = DIClient2IODaemonXPCHandler;
  v6 = [(DIBaseXPCHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcListenerEndpoint, endpoint);
  }

  return v7;
}

- (void)createConnection
{
  v3 = *__error();
  if (sub_1000E95F0())
  {
    v4 = sub_1000E957C();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v15 = 47;
    v16 = 2080;
    v17 = "[DIClient2IODaemonXPCHandler createConnection]";
    v5 = _os_log_send_and_compose_impl();

    if (v5)
    {
      fprintf(__stderrp, "%s\n", v5);
      free(v5);
    }
  }

  else
  {
    v6 = sub_1000E957C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v15 = 47;
      v16 = 2080;
      v17 = "[DIClient2IODaemonXPCHandler createConnection]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%.*s: Creating connection to IO daemon clients listener", buf, 0x12u);
    }
  }

  *__error() = v3;
  v7 = [NSXPCConnection alloc];
  xpcListenerEndpoint = [(DIClient2IODaemonXPCHandler *)self xpcListenerEndpoint];
  v9 = [v7 initWithListenerEndpoint:xpcListenerEndpoint];
  [(DIBaseXPCHandler *)self setConnection:v9];

  remoteObjectInterface = [(DIClient2IODaemonXPCHandler *)self remoteObjectInterface];
  connection = [(DIBaseXPCHandler *)self connection];
  [connection setRemoteObjectInterface:remoteObjectInterface];

  connection2 = [(DIBaseXPCHandler *)self connection];
  [connection2 setInvalidationHandler:&stru_100219A50];

  connection3 = [(DIBaseXPCHandler *)self connection];
  [connection3 setInterruptionHandler:&stru_100219A70];
}

- (BOOL)addToRefCountWithError:(id *)error
{
  objc_initWeak(&location, self);
  remoteProxy = [(DIBaseXPCHandler *)self remoteProxy];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100132AD0;
  v10 = &unk_1001FCC58;
  objc_copyWeak(&v11, &location);
  [remoteProxy addToRefCountWithReply:&v7];

  LOBYTE(error) = [(DIBaseXPCHandler *)self completeCommandWithError:error, v7, v8, v9, v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return error;
}

@end