@interface LoggingManager
+ (id)instance;
- (BOOL)isXpcConnected;
- (BOOL)wasUUIDRequestedForLogRetrieval:(id)a3;
- (LoggingManager)init;
- (void)cleanup;
- (void)handleConnection:(id)a3;
- (void)handleConnectionEvent:(id)a3;
- (void)handleDisconnection;
- (void)handleLogRetrievalRequest:(id)a3;
- (void)handleMsg:(id)a3;
- (void)handleServerEvent:(id)a3;
- (void)logRetrievalComplete;
- (void)sendMsg:(id)a3 args:(id)a4;
@end

@implementation LoggingManager

- (LoggingManager)init
{
  v16.receiver = self;
  v16.super_class = LoggingManager;
  v2 = [(LoggingManager *)&v16 init];
  v3 = v2;
  if (v2)
  {
    loggingTimeoutTimer = v2->loggingTimeoutTimer;
    v2->loggingTimeoutTimer = 0;

    v5 = +[NSMutableArray array];
    requestedUUIDs = v3->_requestedUUIDs;
    v3->_requestedUUIDs = v5;

    mach_service = xpc_connection_create_mach_service("com.apple.BTLELoggingManager.xpc", &_dispatch_main_q, 1uLL);
    xpcServer = v3->_xpcServer;
    v3->_xpcServer = mach_service;

    xpcConnection = v3->_xpcConnection;
    v3->_xpcConnection = 0;

    v10 = [(LoggingManager *)v3 xpcServer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100032A94;
    handler[3] = &unk_1000BDAE0;
    v11 = v3;
    v15 = v11;
    xpc_connection_set_event_handler(v10, handler);

    v12 = [(LoggingManager *)v11 xpcServer];
    xpc_connection_resume(v12);
  }

  return v3;
}

+ (id)instance
{
  if (qword_1000DDAD0 != -1)
  {
    sub_10007538C();
  }

  v3 = qword_1000DDAC8;

  return v3;
}

- (BOOL)wasUUIDRequestedForLogRetrieval:(id)a3
{
  v4 = a3;
  v5 = [(LoggingManager *)self requestedUUIDs];
  objc_sync_enter(v5);
  LOBYTE(self) = [(NSMutableArray *)self->_requestedUUIDs containsObject:v4];
  objc_sync_exit(v5);

  return self;
}

- (BOOL)isXpcConnected
{
  v2 = [(LoggingManager *)self xpcConnection];
  v3 = v2 != 0;

  return v3;
}

- (void)handleServerEvent:(id)a3
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_connection)
  {
    [(LoggingManager *)self handleConnection:v4];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_1000753A0();
  }
}

- (void)handleConnection:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v11 = v4;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LoggingManager - XPC connection: %p %@", buf, 0x16u);
  }

  v6 = [(LoggingManager *)self xpcServer];
  xpc_connection_suspend(v6);

  [(LoggingManager *)self setXpcConnection:v4];
  v7 = [(LoggingManager *)self xpcConnection];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100032DAC;
  handler[3] = &unk_1000BDAE0;
  handler[4] = self;
  xpc_connection_set_event_handler(v7, handler);

  v8 = [(LoggingManager *)self xpcConnection];
  xpc_connection_resume(v8);
}

- (void)handleDisconnection
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(LoggingManager *)self xpcConnection];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LoggingManager - XPC disconnection: %@", &v8, 0xCu);
  }

  [(LoggingManager *)self setXpcConnection:0];
  v6 = [(LoggingManager *)self xpcServer];
  xpc_connection_resume(v6);

  v7 = +[UARPServiceUARPControllerManager instance];
  [v7 stopTapToRadar];

  [(LoggingManager *)self cleanup];
}

- (void)handleConnectionEvent:(id)a3
{
  v4 = a3;
  type = xpc_get_type(v4);
  if (type == &_xpc_type_dictionary)
  {
    [(LoggingManager *)self handleMsg:v4];
  }

  else if (type == &_xpc_type_error)
  {
    if (v4 == &_xpc_error_connection_invalid)
    {
      [(LoggingManager *)self handleDisconnection];
    }

    else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100075470();
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100075408();
  }
}

- (void)handleMsg:(id)a3
{
  v4 = a3;
  string = xpc_dictionary_get_string(v4, "kMsgId");
  v6 = xpc_dictionary_get_value(v4, "kMsgArgs");

  v7 = qword_1000DDBC8;
  if (string)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(LoggingManager *)self xpcConnection];
      v10 = 134218242;
      v11 = v9;
      v12 = 2080;
      v13 = string;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "LoggingManager - Received XPC message from %p: %s", &v10, 0x16u);
    }

    if (!strcmp(string, "RetrieveLogs") && v6)
    {
      [(LoggingManager *)self handleLogRetrievalRequest:v6];
    }

    else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000754D8();
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100075540(v7, self);
  }
}

- (void)sendMsg:(id)a3 args:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "kMsgId", [v6 UTF8String]);
  if (v7)
  {
    xpc_dictionary_set_value(v8, "kMsgArgs", v7);
  }

  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(LoggingManager *)self xpcConnection];
    v13 = 134218242;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LoggingManager - sending XPC message to %p: %@", &v13, 0x16u);
  }

  v12 = [(LoggingManager *)self xpcConnection];
  xpc_connection_send_message(v12, v8);
}

- (void)handleLogRetrievalRequest:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(LoggingManager *)self xpcConnection];
    *buf = 134217984;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LoggingManager - handleLogRetrievalRequest Received RetrieveLogs XPC message from %p", buf, 0xCu);
  }

  if (v4 && xpc_get_type(v4) == &_xpc_type_array)
  {
    if (xpc_array_get_count(v4))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        string = xpc_array_get_string(v4, v9);
        if (string)
        {
          v12 = [NSUUID alloc];
          v13 = [NSString stringWithUTF8String:string];
          v14 = [v12 initWithUUIDString:v13];

          if (v14)
          {
            v15 = self->_requestedUUIDs;
            objc_sync_enter(v15);
            [(NSMutableArray *)self->_requestedUUIDs addObject:v14];
            objc_sync_exit(v15);

            v16 = +[UARPServiceUARPControllerManager instance];
            [v16 setOpportunisticConnection:0 forAccessoryUUID:v14];
          }

          else
          {
            v18 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v22 = string;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "LoggingManager - handleLogRetrievalRequest Invalid UUID %s", buf, 0xCu);
            }
          }
        }

        else
        {
          v17 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v22) = v10;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "LoggingManager - handleLogRetrievalRequest Unexpected XPC object at index %u", buf, 8u);
          }
        }

        count = xpc_array_get_count(v4);
        v9 = ++v10;
      }

      while (count > v10);
    }
  }

  else
  {
    v8 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000755E4(v8);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000335A4;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)logRetrievalComplete
{
  v2 = +[UARPServiceUARPControllerManager instance];
  [v2 stopTapToRadar];

  xarray = xpc_array_create_empty();
  v3 = +[NSFileManager defaultManager];
  v4 = +[UARPServiceUARPControllerManager instance];
  v5 = [v4 uarpLogPath];
  v6 = [NSURL fileURLWithPath:v5 isDirectory:1];

  v7 = NSURLFileResourceTypeKey;
  v47 = NSURLFileResourceTypeKey;
  [NSArray arrayWithObjects:&v47 count:1];
  v31 = v6;
  v30 = v32 = v3;
  [v3 enumeratorAtURL:v6 includingPropertiesForKeys:? options:? errorHandler:?];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v8 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  v9 = &qword_1000DDBC8;
  if (v8)
  {
    v10 = v8;
    v11 = *v39;
    v12 = NSURLFileResourceTypeRegular;
    do
    {
      v13 = 0;
      v35 = v10;
      do
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v37 = 0;
        [v14 getResourceValue:&v37 forKey:v7 error:0];
        v16 = v37;
        v17 = [v16 isEqualToString:v12];
        v18 = *v9;
        if (v17)
        {
          v19 = v12;
          v20 = v11;
          v21 = v7;
          v22 = v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v18;
            v24 = [v14 path];
            *buf = 138412290;
            v45 = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "LoggingManager - file path: %@", buf, 0xCu);
          }

          v25 = [v14 path];
          v26 = xpc_string_create([v25 UTF8String]);

          xpc_array_append_value(xarray, v26);
          v9 = v22;
          v7 = v21;
          v11 = v20;
          v12 = v19;
          v10 = v35;
        }

        else if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          sub_100075628(v42, v18, v14, &v43);
        }

        objc_autoreleasePoolPop(v15);
        v13 = v13 + 1;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v10);
  }

  v27 = *v9;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v27;
    count = xpc_array_get_count(xarray);
    *buf = 134217984;
    v45 = count;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "LoggingManager - logRetrievalComplete Preparing to dispatch %lu file(s)", buf, 0xCu);
  }

  [(LoggingManager *)self sendMsg:@"RetrievedLogs" args:xarray];
  [(LoggingManager *)self cleanup];
}

- (void)cleanup
{
  v3 = self->_requestedUUIDs;
  objc_sync_enter(v3);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_requestedUUIDs;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = +[UARPServiceUARPControllerManager instance];
        [v9 setOpportunisticConnection:1 forAccessoryUUID:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_requestedUUIDs removeAllObjects];
  objc_sync_exit(v3);

  loggingTimeoutTimer = self->loggingTimeoutTimer;
  p_loggingTimeoutTimer = &self->loggingTimeoutTimer;
  [(NSTimer *)loggingTimeoutTimer invalidate];
  v12 = *p_loggingTimeoutTimer;
  *p_loggingTimeoutTimer = 0;
}

@end