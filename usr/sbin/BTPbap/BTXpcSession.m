@interface BTXpcSession
- (BTXpcSession)init;
- (BTXpcSession)initWithConnection:(id)a3;
- (id)_objectForKey:(const char *)a3 dict:(id)a4 optional:(BOOL)a5 converters:(id)a6;
- (void)_handleEvent:(id)a3;
@end

@implementation BTXpcSession

- (BTXpcSession)init
{
  v3 = [NSString stringWithUTF8String:"[BTXpcSession init]"];
  [NSException raise:NSInvalidArgumentException format:@"Calling %@ is not allowed", v3];

  return 0;
}

- (BTXpcSession)initWithConnection:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = BTXpcSession;
  v6 = [(BTXpcSession *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = [NSString stringWithFormat:@"com.apple.%@", objc_opt_class()];
    [v8 UTF8String];
    v9 = os_transaction_create();
    transaction = v7->_transaction;
    v7->_transaction = v9;

    v11 = objc_alloc_init(BTWatchdog);
    watchdog = v7->_watchdog;
    v7->_watchdog = v11;

    v13 = qword_10000C908;
    if (os_log_type_enabled(qword_10000C908, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [(BTXpcSession *)v7 connection];
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Started XPC session: %@", buf, 0xCu);
    }

    xpc_connection_set_target_queue(v7->_connection, &_dispatch_main_q);
    connection = v7->_connection;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000014A8;
    handler[3] = &unk_1000083A0;
    v19 = v7;
    xpc_connection_set_event_handler(connection, handler);
    xpc_connection_resume(v7->_connection);
  }

  return v7;
}

- (void)_handleEvent:(id)a3
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v6 = qword_10000C908;
    if (os_log_type_enabled(qword_10000C908, OS_LOG_TYPE_DEBUG))
    {
      sub_100003114(v6);
    }

    v7 = [(BTXpcSession *)self watchdog];
    [v7 beginTransaction];

    [(BTXpcSession *)self handleMsg:v4];
    v8 = [(BTXpcSession *)self watchdog];
    [v8 endTransaction];
  }

  else if (xpc_get_type(v4) == &_xpc_type_error)
  {
    v9 = qword_10000C908;
    if (v4 == &_xpc_error_connection_invalid)
    {
      if (os_log_type_enabled(qword_10000C908, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [(BTXpcSession *)self connection];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ended XPC session: %@", &v12, 0xCu);
      }
    }

    else if (os_log_type_enabled(qword_10000C908, OS_LOG_TYPE_ERROR))
    {
      sub_100003074(v9);
    }
  }

  else
  {
    v5 = qword_10000C908;
    if (os_log_type_enabled(qword_10000C908, OS_LOG_TYPE_ERROR))
    {
      sub_100002FD4(v5);
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