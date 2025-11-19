@interface LEAudioTestXPCListener
+ (id)instance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (LEAudioTestXPCListener)init;
- (void)deregisterDelegateForPeripheralWithUUID:(id)a3 forService:(id)a4;
- (void)receiveMsg:(id)a3 content:(id)a4;
- (void)receiveMsg:(id)a3 content:(id)a4 forPeripheral:(id)a5 service:(id)a6;
- (void)receiveMsg:(id)a3 content:(id)a4 withReply:(id)a5;
- (void)registerClient;
- (void)registerDelegate:(id)a3 forPeripheralWithUUID:(id)a4 forService:(id)a5;
- (void)sendMsg:(id)a3 content:(id)a4;
- (void)sendMsg:(id)a3 content:(id)a4 forPeripheralWithUUID:(id)a5 service:(id)a6;
- (void)sendMsg:(id)a3 content:(id)a4 withReply:(id)a5;
@end

@implementation LEAudioTestXPCListener

+ (id)instance
{
  if (qword_1000AA098 != -1)
  {
    sub_10005EF00();
  }

  v3 = qword_1000AA090;

  return v3;
}

- (LEAudioTestXPCListener)init
{
  v9.receiver = self;
  v9.super_class = LEAudioTestXPCListener;
  v2 = [(LEAudioTestXPCListener *)&v9 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.bluetoothaudiodtest"];
    [(LEAudioTestXPCListener *)v2 setListener:v3];

    v4 = [(LEAudioTestXPCListener *)v2 listener];
    [v4 setDelegate:v2];

    v5 = [(LEAudioTestXPCListener *)v2 listener];
    [v5 resume];

    v6 = +[NSMutableArray array];
    xpcListenerEndpoints = v2->_xpcListenerEndpoints;
    v2->_xpcListenerEndpoints = v6;
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LEAudioAppInterface];
  [v5 setRemoteObjectInterface:v6];

  [v5 setExportedObject:self];
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BluetoothAudiodTestInterface];
  [v5 setExportedInterface:v7];

  [v5 setInvalidationHandler:&stru_100095B78];
  [v5 resume];
  [(LEAudioTestXPCListener *)self setConnection:v5];

  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "leAudioApp connected", v10, 2u);
  }

  return 1;
}

- (void)registerDelegate:(id)a3 forPeripheralWithUUID:(id)a4 forService:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(LEAudioTestXPCListener *)self xpcListenerEndpoints];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10004E4E8;
  v17[3] = &unk_100095BA0;
  v12 = v9;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  v14 = [v11 indexOfObjectPassingTest:v17];

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20[0] = @"kPeripheralUUID";
    v20[1] = @"kServiceName";
    v21[0] = v12;
    v21[1] = v13;
    v20[2] = @"kDelegate";
    v21[2] = v8;
    v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
    v16 = [(LEAudioTestXPCListener *)self xpcListenerEndpoints];
    [v16 addObject:v15];
  }
}

- (void)deregisterDelegateForPeripheralWithUUID:(id)a3 forService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 UUIDString];
    *buf = 138412546;
    v23 = v10;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "LEAudioTestXPCListener deregistering delegate for peripheral with UUID: %@ and service: %@", buf, 0x16u);
  }

  v11 = [(LEAudioTestXPCListener *)self xpcListenerEndpoints];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10004E76C;
  v19 = &unk_100095BA0;
  v20 = v6;
  v21 = v7;
  v12 = v7;
  v13 = v6;
  v14 = [v11 indexOfObjectPassingTest:&v16];

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [(LEAudioTestXPCListener *)self xpcListenerEndpoints:v16];
    [v15 removeObjectAtIndex:v14];
  }
}

- (void)sendMsg:(id)a3 content:(id)a4 forPeripheralWithUUID:(id)a5 service:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = [(LEAudioTestXPCListener *)self connection];
  v14 = [v15 remoteObjectProxy];
  [v14 receiveMsg:v13 content:v12 forPeripheral:v11 service:v10];
}

- (void)sendMsg:(id)a3 content:(id)a4 withReply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(LEAudioTestXPCListener *)self connection];
  v11 = [v12 remoteObjectProxy];
  [v11 receiveMsg:v10 content:v9 withReply:v8];
}

- (void)sendMsg:(id)a3 content:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(LEAudioTestXPCListener *)self connection];
  v8 = [v9 remoteObjectProxy];
  [v8 receiveMsg:v7 content:v6];
}

- (void)receiveMsg:(id)a3 content:(id)a4 forPeripheral:(id)a5 service:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  NSLog(@"XPC listener receive msg with name with msg %@ with options: %@", v10, v11);
  v14 = [(LEAudioTestXPCListener *)self xpcListenerEndpoints];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10004EBA4;
  v22[3] = &unk_100095BA0;
  v23 = v12;
  v24 = v13;
  v15 = v13;
  v16 = v12;
  v17 = [v14 indexOfObjectPassingTest:v22];

  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [(LEAudioTestXPCListener *)self xpcListenerEndpoints];
    v19 = [v18 objectAtIndexedSubscript:v17];

    v20 = [v19 objectForKey:@"kDelegate"];
    v21 = v20;
    if (v20)
    {
      [v20 handleMsg:v10 content:v11];
    }
  }
}

- (void)receiveMsg:(id)a3 content:(id)a4 withReply:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  NSLog(@"XPC listener receive msg with name with msg %@ with options: %@", v12, v7);
  if ([v12 isEqualToString:@"bapCmdRequest"])
  {
    v9 = +[ConnectionManager instance];
    v10 = [v9 handleBapUnicastRequest:v7];
LABEL_19:
    v11 = v10;

    goto LABEL_20;
  }

  if ([v12 isEqualToString:@"retrieveConnectedDevices"])
  {
    v9 = +[ConnectionManager instance];
    v10 = [v9 retrieveCapSessionsAndPeripherals];
    goto LABEL_19;
  }

  if ([v12 isEqualToString:@"CAPUnicastProcedure"])
  {
    v9 = +[ConnectionManager instance];
    v10 = [v9 handleCapUnicastRequest:v7];
    goto LABEL_19;
  }

  if ([v12 isEqualToString:@"CAPCommanderProcedure"])
  {
    v9 = +[ConnectionManager instance];
    v10 = [v9 handleCapCommanderRequest:v7];
    goto LABEL_19;
  }

  if ([v12 isEqualToString:@"captureRenderingControl"])
  {
    v9 = +[ConnectionManager instance];
    v10 = [v9 handleCaptureRenderingControl:v7];
    goto LABEL_19;
  }

  if ([v12 isEqualToString:@"hapUnicastRequest"])
  {
    v9 = +[ConnectionManager instance];
    v10 = [v9 handleHapUnicastRequest:v7];
    goto LABEL_19;
  }

  if ([v12 isEqualToString:@"mediaControlRequest"])
  {
    v9 = +[ConnectionManager instance];
    v10 = [v9 handleMediaControlCommands:v7];
    goto LABEL_19;
  }

  if ([v12 isEqualToString:@"telephonyControlRequest"])
  {
    v9 = +[ConnectionManager instance];
    v10 = [v9 handleTelephonyControlCommands:v7];
    goto LABEL_19;
  }

  if ([v12 isEqualToString:@"acceptorInterfaceRequest"])
  {
    v9 = +[ConnectionManager instance];
    v10 = [v9 handleAcceptorInterfaceRequest:v7];
    goto LABEL_19;
  }

  v11 = 0;
LABEL_20:
  v8[2](v8, v11);
}

- (void)receiveMsg:(id)a3 content:(id)a4
{
  v6 = a4;
  if ([a3 isEqualToString:@"AudioConfig"])
  {
    v5 = +[ConnectionManager instance];
    [v5 setAudioConfiguration:v6 forSession:0];
  }
}

- (void)registerClient
{
  v2 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client registered", v3, 2u);
  }
}

@end