@interface DIBaseXPCHandler
- (BOOL)completeCommandWithError:(id *)a3;
- (BOOL)connectWithError:(id *)a3;
- (BOOL)dupStderrWithError:(id *)a3;
- (DIBaseXPCHandler)init;
- (void)closeConnection;
- (void)createConnection;
- (void)dealloc;
- (void)signalCommandCompletedWithXpcError:(id)a3;
@end

@implementation DIBaseXPCHandler

- (DIBaseXPCHandler)init
{
  v11.receiver = self;
  v11.super_class = DIBaseXPCHandler;
  v2 = [(DIBaseXPCHandler *)&v11 init];
  if (v2 && (v3 = dispatch_semaphore_create(0), [(DIBaseXPCHandler *)v2 setSemaphore:v3], v3, [(DIBaseXPCHandler *)v2 semaphore], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v6 = *__error();
    if (sub_1000E95F0())
    {
      v7 = sub_1000E957C();
      os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      v13 = 24;
      v14 = 2080;
      v15 = "[DIBaseXPCHandler init]";
      v8 = _os_log_send_and_compose_impl();

      if (v8)
      {
        fprintf(__stderrp, "%s\n", v8);
        free(v8);
      }
    }

    else
    {
      v9 = sub_1000E957C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v13 = 24;
        v14 = 2080;
        v15 = "[DIBaseXPCHandler init]";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%.*s: Failed creating semaphore", buf, 0x12u);
      }
    }

    v5 = 0;
    *__error() = v6;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
  }

  v4.receiver = self;
  v4.super_class = DIBaseXPCHandler;
  [(DIBaseXPCHandler *)&v4 dealloc];
}

- (BOOL)connectWithError:(id *)a3
{
  objc_initWeak(&location, self);
  [(DIBaseXPCHandler *)self createConnection];
  v5 = [(DIBaseXPCHandler *)self connection];

  if (v5)
  {
    v6 = [(DIBaseXPCHandler *)self connection];
    [v6 resume];

    v7 = [(DIBaseXPCHandler *)self connection];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000587E0;
    v14 = &unk_1001FCC58;
    objc_copyWeak(&v15, &location);
    v8 = [v7 remoteObjectProxyWithErrorHandler:&v11];
    [(DIBaseXPCHandler *)self setRemoteProxy:v8, v11, v12, v13, v14];

    objc_destroyWeak(&v15);
    v9 = 1;
  }

  else
  {
    v9 = [DIError failWithEnumValue:151 verboseInfo:@"Failed to create XPC connection object" error:a3];
  }

  objc_destroyWeak(&location);
  return v9;
}

- (void)signalCommandCompletedWithXpcError:(id)a3
{
  [(DIBaseXPCHandler *)self setXpcError:a3];
  v4 = [(DIBaseXPCHandler *)self semaphore];
  dispatch_semaphore_signal(v4);
}

- (BOOL)completeCommandWithError:(id *)a3
{
  v5 = [(DIBaseXPCHandler *)self semaphore];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  v6 = [(DIBaseXPCHandler *)self xpcError];
  [(DIBaseXPCHandler *)self setXpcError:0];
  v7 = [(DIBaseXPCHandler *)self connection];

  if (!v7)
  {
    v11 = [DIError failWithEnumValue:151 verboseInfo:@"XPC connection failed" error:a3];
LABEL_12:
    v12 = v11;
    goto LABEL_13;
  }

  if (v6)
  {
    v8 = *__error();
    if (sub_1000E95F0())
    {
      v9 = sub_1000E957C();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      *buf = 68158210;
      v16 = 45;
      v17 = 2080;
      v18 = "[DIBaseXPCHandler completeCommandWithError:]";
      v19 = 2114;
      v20 = v6;
      v10 = _os_log_send_and_compose_impl();

      if (v10)
      {
        fprintf(__stderrp, "%s\n", v10);
        free(v10);
      }
    }

    else
    {
      v13 = sub_1000E957C();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        v16 = 45;
        v17 = 2080;
        v18 = "[DIBaseXPCHandler completeCommandWithError:]";
        v19 = 2114;
        v20 = v6;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%.*s: Got error from last XPC command: %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v8;
    v11 = [DIError failWithInError:v6 outError:a3];
    goto LABEL_12;
  }

  v12 = 1;
LABEL_13:

  return v12;
}

- (void)closeConnection
{
  v3 = [(DIBaseXPCHandler *)self connection];
  [v3 invalidate];

  [(DIBaseXPCHandler *)self setConnection:0];
}

- (BOOL)dupStderrWithError:(id *)a3
{
  objc_initWeak(&location, self);
  v5 = [NSFileHandle alloc];
  v6 = [v5 initWithFileDescriptor:fileno(__stderrp)];
  v7 = [(DIBaseXPCHandler *)self remoteProxy];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100058C68;
  v12 = &unk_1001FCC58;
  objc_copyWeak(&v13, &location);
  [v7 dupWithStderrHandle:v6 reply:&v9];

  LOBYTE(a3) = [(DIBaseXPCHandler *)self completeCommandWithError:a3, v9, v10, v11, v12];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return a3;
}

- (void)createConnection
{
  v3 = *__error();
  if (sub_1000E95F0())
  {
    v4 = sub_1000E957C();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    [(DIBaseXPCHandler *)self serviceName];
    *buf = 68158210;
    v14 = 36;
    v15 = 2080;
    v16 = "[DIBaseXPCHandler createConnection]";
    v18 = v17 = 2114;
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
      v7 = [(DIBaseXPCHandler *)self serviceName];
      *buf = 68158210;
      v14 = 36;
      v15 = 2080;
      v16 = "[DIBaseXPCHandler createConnection]";
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%.*s: Creating connection with %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v3;
  v8 = [NSXPCConnection alloc];
  v9 = [(DIBaseXPCHandler *)self serviceName];
  v10 = [v8 initWithServiceName:v9];
  [(DIBaseXPCHandler *)self setConnection:v10];

  v11 = [(DIBaseXPCHandler *)self remoteObjectInterface];
  v12 = [(DIBaseXPCHandler *)self connection];
  [v12 setRemoteObjectInterface:v11];
}

@end