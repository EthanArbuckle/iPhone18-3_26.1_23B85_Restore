@interface BTLEXpcServer
+ (id)instance;
- (BTLEXpcServer)init;
- (void)handleConnection:(id)a3;
- (void)handleEvent:(id)a3;
- (void)handleXpcDisconnection:(id)a3;
- (void)sendANCSNotificationSourceRegisteredMsg:(id)a3;
- (void)sendBatteryServiceNotification:(id)a3;
- (void)sendDevMgmtPipeConnectedMsg:(id)a3;
- (void)sendDevMgmtPipeDisconnectedMsg:(id)a3;
- (void)sendMsg:(id)a3 args:(id)a4;
- (void)sendSetConnectionParametersMsg:(id)a3 forPeer:(id)a4;
@end

@implementation BTLEXpcServer

+ (id)instance
{
  if (qword_1000DDB30 != -1)
  {
    sub_100078D78();
  }

  v3 = qword_1000DDB28;

  return v3;
}

- (void)sendMsg:(id)a3 args:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BTLEXpcServer *)self serverConnection];
  [v8 sendMsg:v7 args:v6];
}

- (void)sendSetConnectionParametersMsg:(id)a3 forPeer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v18 = [(BTLEXpcServer *)self serverConnection];
  v21[0] = @"kPeerIdentifier";
  v20 = [v6 msgIdentifier];

  v22[0] = v20;
  v21[1] = @"kMinInterval";
  [v7 minInterval];
  v19 = [NSNumber numberWithFloat:?];
  v22[1] = v19;
  v21[2] = @"kPreferredInterval";
  [v7 preferredInterval];
  v8 = [NSNumber numberWithFloat:?];
  v22[2] = v8;
  v21[3] = @"kMaxInterval";
  [v7 maxInterval];
  v9 = [NSNumber numberWithFloat:?];
  v22[3] = v9;
  v21[4] = @"kMinCELength";
  v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 minCELength]);
  v22[4] = v10;
  v21[5] = @"kMaxCELength";
  v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 maxCELength]);
  v22[5] = v11;
  v21[6] = @"kPreferredPeripheralLatency";
  v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 preferredPeripheralLatency]);
  v22[6] = v12;
  v21[7] = @"kMaxPeripheralLatency";
  v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 maxPeripheralLatency]);
  v22[7] = v13;
  v21[8] = @"kMaxDeferment";
  v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 maxDeferment]);
  v22[8] = v14;
  v21[9] = @"kTimeout";
  v15 = [v7 timeout];

  v16 = [NSNumber numberWithInt:v15];
  v22[9] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:10];
  [v18 sendMsg:@"SetConnectionParameters" args:v17];
}

- (void)sendDevMgmtPipeConnectedMsg:(id)a3
{
  v4 = [a3 UUIDString];
  v5 = CFUUIDCreateFromString(kCFAllocatorDefault, v4);

  v6 = [(BTLEXpcServer *)self serverConnection];
  v8 = @"kPeerIdentifier";
  v9 = CFAutorelease(v5);
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v6 sendMsg:@"DevMgmtPipeConnected" args:v7];
}

- (void)sendDevMgmtPipeDisconnectedMsg:(id)a3
{
  v4 = [a3 UUIDString];
  v5 = CFUUIDCreateFromString(kCFAllocatorDefault, v4);

  v6 = [(BTLEXpcServer *)self serverConnection];
  v8 = @"kPeerIdentifier";
  v9 = CFAutorelease(v5);
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v6 sendMsg:@"DevMgmtPipeDisconnected" args:v7];
}

- (void)sendANCSNotificationSourceRegisteredMsg:(id)a3
{
  v4 = [a3 UUIDString];
  v5 = CFUUIDCreateFromString(kCFAllocatorDefault, v4);

  v6 = [(BTLEXpcServer *)self serverConnection];
  v8 = @"kPeerIdentifier";
  v9 = CFAutorelease(v5);
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v6 sendMsg:@"ANCSNotificationSourceRegistered" args:v7];
}

- (void)sendBatteryServiceNotification:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sendBatteryServiceNotification %@", &v7, 0xCu);
    }

    v6 = [(BTLEXpcServer *)self serverConnection];
    [v6 sendMsg:@"BatteryServiceNotification" args:v4];
  }
}

- (BTLEXpcServer)init
{
  v11.receiver = self;
  v11.super_class = BTLEXpcServer;
  v2 = [(BTLEXpcServer *)&v11 init];
  if (v2)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.BTServer.le", &_dispatch_main_q, 1uLL);
    xpcServer = v2->_xpcServer;
    v2->_xpcServer = mach_service;

    v5 = v2->_xpcServer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100050598;
    handler[3] = &unk_1000BDAE0;
    v10 = v2;
    xpc_connection_set_event_handler(v5, handler);
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting XPC server", v8, 2u);
    }

    xpc_connection_resume(v2->_xpcServer);
  }

  return v2;
}

- (void)handleEvent:(id)a3
{
  v4 = a3;
  type = xpc_get_type(v4);
  if (type == &_xpc_type_connection)
  {
    [(BTLEXpcServer *)self handleConnection:v4];
  }

  else
  {
    v6 = type;
    v7 = qword_1000DDBC8;
    v8 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR);
    if (v6 == &_xpc_type_error)
    {
      if (v8)
      {
        sub_100078E04(v4, v7);
      }
    }

    else if (v8)
    {
      sub_100078D8C(v4, v7);
    }
  }
}

- (void)handleConnection:(id)a3
{
  v4 = a3;
  v5 = xpc_connection_copy_entitlement_value();
  v6 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_BOOL && xpc_BOOL_get_value(v6))
  {
    v7 = [[BTLEXpcConnection alloc] initWithConnection:v4];
    v8 = [(BTLEXpcConnection *)v7 bundleIdentifier];
    v9 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v12[0] = 67109378;
      v12[1] = xpc_connection_get_pid(v4);
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "XPC client set server connection pid %d, bundleID %@", v12, 0x12u);
    }

    if (([v8 hasPrefix:@"com.apple.bluetoothd"] & 1) != 0 || objc_msgSend(v8, "hasPrefix:", @"com.apple.BTServer"))
    {
      [(BTLEXpcServer *)self setServerConnection:v7];
    }
  }

  else
  {
    v11 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100078E7C(v11);
    }

    xpc_connection_cancel(v4);
  }
}

- (void)handleXpcDisconnection:(id)a3
{
  v4 = a3;
  v5 = [(BTLEXpcServer *)self serverConnection];

  if (v5 == v4)
  {

    [(BTLEXpcServer *)self setServerConnection:0];
  }
}

@end