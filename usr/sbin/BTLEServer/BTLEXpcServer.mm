@interface BTLEXpcServer
+ (id)instance;
- (BTLEXpcServer)init;
- (void)handleConnection:(id)connection;
- (void)handleEvent:(id)event;
- (void)handleXpcDisconnection:(id)disconnection;
- (void)sendANCSNotificationSourceRegisteredMsg:(id)msg;
- (void)sendBatteryServiceNotification:(id)notification;
- (void)sendDevMgmtPipeConnectedMsg:(id)msg;
- (void)sendDevMgmtPipeDisconnectedMsg:(id)msg;
- (void)sendMsg:(id)msg args:(id)args;
- (void)sendSetConnectionParametersMsg:(id)msg forPeer:(id)peer;
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

- (void)sendMsg:(id)msg args:(id)args
{
  argsCopy = args;
  msgCopy = msg;
  serverConnection = [(BTLEXpcServer *)self serverConnection];
  [serverConnection sendMsg:msgCopy args:argsCopy];
}

- (void)sendSetConnectionParametersMsg:(id)msg forPeer:(id)peer
{
  peerCopy = peer;
  msgCopy = msg;
  serverConnection = [(BTLEXpcServer *)self serverConnection];
  v21[0] = @"kPeerIdentifier";
  msgIdentifier = [peerCopy msgIdentifier];

  v22[0] = msgIdentifier;
  v21[1] = @"kMinInterval";
  [msgCopy minInterval];
  v19 = [NSNumber numberWithFloat:?];
  v22[1] = v19;
  v21[2] = @"kPreferredInterval";
  [msgCopy preferredInterval];
  v8 = [NSNumber numberWithFloat:?];
  v22[2] = v8;
  v21[3] = @"kMaxInterval";
  [msgCopy maxInterval];
  v9 = [NSNumber numberWithFloat:?];
  v22[3] = v9;
  v21[4] = @"kMinCELength";
  v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [msgCopy minCELength]);
  v22[4] = v10;
  v21[5] = @"kMaxCELength";
  v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [msgCopy maxCELength]);
  v22[5] = v11;
  v21[6] = @"kPreferredPeripheralLatency";
  v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [msgCopy preferredPeripheralLatency]);
  v22[6] = v12;
  v21[7] = @"kMaxPeripheralLatency";
  v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [msgCopy maxPeripheralLatency]);
  v22[7] = v13;
  v21[8] = @"kMaxDeferment";
  v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [msgCopy maxDeferment]);
  v22[8] = v14;
  v21[9] = @"kTimeout";
  timeout = [msgCopy timeout];

  v16 = [NSNumber numberWithInt:timeout];
  v22[9] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:10];
  [serverConnection sendMsg:@"SetConnectionParameters" args:v17];
}

- (void)sendDevMgmtPipeConnectedMsg:(id)msg
{
  uUIDString = [msg UUIDString];
  v5 = CFUUIDCreateFromString(kCFAllocatorDefault, uUIDString);

  serverConnection = [(BTLEXpcServer *)self serverConnection];
  v8 = @"kPeerIdentifier";
  v9 = CFAutorelease(v5);
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [serverConnection sendMsg:@"DevMgmtPipeConnected" args:v7];
}

- (void)sendDevMgmtPipeDisconnectedMsg:(id)msg
{
  uUIDString = [msg UUIDString];
  v5 = CFUUIDCreateFromString(kCFAllocatorDefault, uUIDString);

  serverConnection = [(BTLEXpcServer *)self serverConnection];
  v8 = @"kPeerIdentifier";
  v9 = CFAutorelease(v5);
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [serverConnection sendMsg:@"DevMgmtPipeDisconnected" args:v7];
}

- (void)sendANCSNotificationSourceRegisteredMsg:(id)msg
{
  uUIDString = [msg UUIDString];
  v5 = CFUUIDCreateFromString(kCFAllocatorDefault, uUIDString);

  serverConnection = [(BTLEXpcServer *)self serverConnection];
  v8 = @"kPeerIdentifier";
  v9 = CFAutorelease(v5);
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [serverConnection sendMsg:@"ANCSNotificationSourceRegistered" args:v7];
}

- (void)sendBatteryServiceNotification:(id)notification
{
  notificationCopy = notification;
  if (_os_feature_enabled_impl())
  {
    v5 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = notificationCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sendBatteryServiceNotification %@", &v7, 0xCu);
    }

    serverConnection = [(BTLEXpcServer *)self serverConnection];
    [serverConnection sendMsg:@"BatteryServiceNotification" args:notificationCopy];
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

- (void)handleEvent:(id)event
{
  eventCopy = event;
  type = xpc_get_type(eventCopy);
  if (type == &_xpc_type_connection)
  {
    [(BTLEXpcServer *)self handleConnection:eventCopy];
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
        sub_100078E04(eventCopy, v7);
      }
    }

    else if (v8)
    {
      sub_100078D8C(eventCopy, v7);
    }
  }
}

- (void)handleConnection:(id)connection
{
  connectionCopy = connection;
  v5 = xpc_connection_copy_entitlement_value();
  v6 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_BOOL && xpc_BOOL_get_value(v6))
  {
    v7 = [[BTLEXpcConnection alloc] initWithConnection:connectionCopy];
    bundleIdentifier = [(BTLEXpcConnection *)v7 bundleIdentifier];
    v9 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v12[0] = 67109378;
      v12[1] = xpc_connection_get_pid(connectionCopy);
      v13 = 2112;
      v14 = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "XPC client set server connection pid %d, bundleID %@", v12, 0x12u);
    }

    if (([bundleIdentifier hasPrefix:@"com.apple.bluetoothd"] & 1) != 0 || objc_msgSend(bundleIdentifier, "hasPrefix:", @"com.apple.BTServer"))
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

    xpc_connection_cancel(connectionCopy);
  }
}

- (void)handleXpcDisconnection:(id)disconnection
{
  disconnectionCopy = disconnection;
  serverConnection = [(BTLEXpcServer *)self serverConnection];

  if (serverConnection == disconnectionCopy)
  {

    [(BTLEXpcServer *)self setServerConnection:0];
  }
}

@end