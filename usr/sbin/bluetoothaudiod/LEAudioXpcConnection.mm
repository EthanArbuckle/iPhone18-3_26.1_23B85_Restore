@interface LEAudioXpcConnection
- (LEAudioXpcConnection)init;
- (LEAudioXpcConnection)initWithConnection:(id)connection;
- (id)_objectForKey:(const char *)key dict:(id)dict optional:(BOOL)optional converters:(id)converters;
- (void)_handleEvent:(id)event;
- (void)_sendMsg:(id)msg isReply:(BOOL)reply;
@end

@implementation LEAudioXpcConnection

- (LEAudioXpcConnection)init
{
  v3 = [NSString stringWithUTF8String:"[LEAudioXpcConnection init]"];
  [NSException raise:NSInvalidArgumentException format:@"Calling %@ is not allowed", v3];

  return 0;
}

- (LEAudioXpcConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v20.receiver = self;
  v20.super_class = LEAudioXpcConnection;
  v6 = [(LEAudioXpcConnection *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
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
      connection = [(LEAudioXpcConnection *)v7 connection];
      *buf = 138412290;
      v22 = connection;
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

- (void)_sendMsg:(id)msg isReply:(BOOL)reply
{
  replyCopy = reply;
  msgCopy = msg;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    if (replyCopy)
    {
      v8 = @"reply";
    }

    else
    {
      v8 = @"message";
    }

    v9 = v7;
    v10 = [msgCopy description];
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending XPC %@: %@", &v12, 0x16u);
  }

  connection = [(LEAudioXpcConnection *)self connection];
  xpc_connection_send_message(connection, msgCopy);
}

- (void)_handleEvent:(id)event
{
  eventCopy = event;
  if (xpc_get_type(eventCopy) == &_xpc_type_dictionary)
  {
    v6 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [eventCopy description];
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received XPC message: %@", &v14, 0xCu);
    }

    watchdog = [(LEAudioXpcConnection *)self watchdog];
    [watchdog beginTransaction];

    [(LEAudioXpcConnection *)self handleMsg:eventCopy];
    watchdog2 = [(LEAudioXpcConnection *)self watchdog];
    [watchdog2 endTransaction];
  }

  else if (xpc_get_type(eventCopy) == &_xpc_type_error)
  {
    v11 = qword_1000A9FE0;
    if (eventCopy == &_xpc_error_connection_invalid)
    {
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        connection = [(LEAudioXpcConnection *)self connection];
        v14 = 138412290;
        v15 = connection;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ended XPC session: %@", &v14, 0xCu);
      }
    }

    else if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005EE68(v11, eventCopy);
    }
  }

  else
  {
    v5 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005EDD0(v5, eventCopy);
    }
  }
}

- (id)_objectForKey:(const char *)key dict:(id)dict optional:(BOOL)optional converters:(id)converters
{
  convertersCopy = converters;
  v9 = xpc_dictionary_get_value(dict, key);
  v10 = v9;
  if (v9)
  {
    v11 = [NSValue valueWithPointer:xpc_get_type(v9)];
    v12 = [convertersCopy objectForKeyedSubscript:v11];
    v13 = (v12)[2](v12, v10);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end