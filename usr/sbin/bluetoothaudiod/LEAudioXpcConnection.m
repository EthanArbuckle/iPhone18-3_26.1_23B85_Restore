@interface LEAudioXpcConnection
- (LEAudioXpcConnection)init;
- (LEAudioXpcConnection)initWithConnection:(id)a3;
- (id)_objectForKey:(const char *)a3 dict:(id)a4 optional:(BOOL)a5 converters:(id)a6;
- (void)_handleEvent:(id)a3;
- (void)_sendMsg:(id)a3 isReply:(BOOL)a4;
@end

@implementation LEAudioXpcConnection

- (LEAudioXpcConnection)init
{
  v3 = [NSString stringWithUTF8String:"[LEAudioXpcConnection init]"];
  [NSException raise:NSInvalidArgumentException format:@"Calling %@ is not allowed", v3];

  return 0;
}

- (LEAudioXpcConnection)initWithConnection:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = LEAudioXpcConnection;
  v6 = [(LEAudioXpcConnection *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = [NSString stringWithFormat:@"com.apple.%@", objc_opt_class()];
    [v8 UTF8String];
    v9 = os_transaction_create();
    transaction = v7->_transaction;
    v7->_transaction = v9;

    v11 = objc_alloc_init(LEAudioXpcWatchdog);
    watchdog = v7->_watchdog;
    v7->_watchdog = v11;

    v13 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [(LEAudioXpcConnection *)v7 connection];
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Started XPC session: %@", buf, 0xCu);
    }

    xpc_connection_set_target_queue(v7->_connection, &_dispatch_main_q);
    connection = v7->_connection;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10004CE60;
    handler[3] = &unk_100094C90;
    v19 = v7;
    xpc_connection_set_event_handler(connection, handler);
    xpc_connection_resume(v7->_connection);
  }

  return v7;
}

- (void)_sendMsg:(id)a3 isReply:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v8 = @"reply";
    }

    else
    {
      v8 = @"message";
    }

    v9 = v7;
    v10 = [v6 description];
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending XPC %@: %@", &v12, 0x16u);
  }

  v11 = [(LEAudioXpcConnection *)self connection];
  xpc_connection_send_message(v11, v6);
}

- (void)_handleEvent:(id)a3
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v6 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v4 description];
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received XPC message: %@", &v14, 0xCu);
    }

    v9 = [(LEAudioXpcConnection *)self watchdog];
    [v9 beginTransaction];

    [(LEAudioXpcConnection *)self handleMsg:v4];
    v10 = [(LEAudioXpcConnection *)self watchdog];
    [v10 endTransaction];
  }

  else if (xpc_get_type(v4) == &_xpc_type_error)
  {
    v11 = qword_1000A9FE0;
    if (v4 == &_xpc_error_connection_invalid)
    {
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [(LEAudioXpcConnection *)self connection];
        v14 = 138412290;
        v15 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ended XPC session: %@", &v14, 0xCu);
      }
    }

    else if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005EE68(v11, v4);
    }
  }

  else
  {
    v5 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005EDD0(v5, v4);
    }
  }
}

- (id)_objectForKey:(const char *)a3 dict:(id)a4 optional:(BOOL)a5 converters:(id)a6
{
  v8 = a6;
  v9 = xpc_dictionary_get_value(a4, a3);
  v10 = v9;
  if (v9)
  {
    v11 = [NSValue valueWithPointer:xpc_get_type(v9)];
    v12 = [v8 objectForKeyedSubscript:v11];
    v13 = (v12)[2](v12, v10);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end