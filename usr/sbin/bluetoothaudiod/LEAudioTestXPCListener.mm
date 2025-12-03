@interface LEAudioTestXPCListener
+ (id)instance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (LEAudioTestXPCListener)init;
- (void)deregisterDelegateForPeripheralWithUUID:(id)d forService:(id)service;
- (void)receiveMsg:(id)msg content:(id)content;
- (void)receiveMsg:(id)msg content:(id)content forPeripheral:(id)peripheral service:(id)service;
- (void)receiveMsg:(id)msg content:(id)content withReply:(id)reply;
- (void)registerClient;
- (void)registerDelegate:(id)delegate forPeripheralWithUUID:(id)d forService:(id)service;
- (void)sendMsg:(id)msg content:(id)content;
- (void)sendMsg:(id)msg content:(id)content forPeripheralWithUUID:(id)d service:(id)service;
- (void)sendMsg:(id)msg content:(id)content withReply:(id)reply;
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

    listener = [(LEAudioTestXPCListener *)v2 listener];
    [listener setDelegate:v2];

    listener2 = [(LEAudioTestXPCListener *)v2 listener];
    [listener2 resume];

    v6 = +[NSMutableArray array];
    xpcListenerEndpoints = v2->_xpcListenerEndpoints;
    v2->_xpcListenerEndpoints = v6;
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LEAudioAppInterface];
  [connectionCopy setRemoteObjectInterface:v6];

  [connectionCopy setExportedObject:self];
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BluetoothAudiodTestInterface];
  [connectionCopy setExportedInterface:v7];

  [connectionCopy setInvalidationHandler:&stru_100095B78];
  [connectionCopy resume];
  [(LEAudioTestXPCListener *)self setConnection:connectionCopy];

  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "leAudioApp connected", v10, 2u);
  }

  return 1;
}

- (void)registerDelegate:(id)delegate forPeripheralWithUUID:(id)d forService:(id)service
{
  delegateCopy = delegate;
  dCopy = d;
  serviceCopy = service;
  xpcListenerEndpoints = [(LEAudioTestXPCListener *)self xpcListenerEndpoints];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10004E4E8;
  v17[3] = &unk_100095BA0;
  v12 = dCopy;
  v18 = v12;
  v13 = serviceCopy;
  v19 = v13;
  v14 = [xpcListenerEndpoints indexOfObjectPassingTest:v17];

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20[0] = @"kPeripheralUUID";
    v20[1] = @"kServiceName";
    v21[0] = v12;
    v21[1] = v13;
    v20[2] = @"kDelegate";
    v21[2] = delegateCopy;
    v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
    xpcListenerEndpoints2 = [(LEAudioTestXPCListener *)self xpcListenerEndpoints];
    [xpcListenerEndpoints2 addObject:v15];
  }
}

- (void)deregisterDelegateForPeripheralWithUUID:(id)d forService:(id)service
{
  dCopy = d;
  serviceCopy = service;
  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    uUIDString = [dCopy UUIDString];
    *buf = 138412546;
    v23 = uUIDString;
    v24 = 2112;
    v25 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "LEAudioTestXPCListener deregistering delegate for peripheral with UUID: %@ and service: %@", buf, 0x16u);
  }

  xpcListenerEndpoints = [(LEAudioTestXPCListener *)self xpcListenerEndpoints];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10004E76C;
  v19 = &unk_100095BA0;
  v20 = dCopy;
  v21 = serviceCopy;
  v12 = serviceCopy;
  v13 = dCopy;
  v14 = [xpcListenerEndpoints indexOfObjectPassingTest:&v16];

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [(LEAudioTestXPCListener *)self xpcListenerEndpoints:v16];
    [v15 removeObjectAtIndex:v14];
  }
}

- (void)sendMsg:(id)msg content:(id)content forPeripheralWithUUID:(id)d service:(id)service
{
  serviceCopy = service;
  dCopy = d;
  contentCopy = content;
  msgCopy = msg;
  connection = [(LEAudioTestXPCListener *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy receiveMsg:msgCopy content:contentCopy forPeripheral:dCopy service:serviceCopy];
}

- (void)sendMsg:(id)msg content:(id)content withReply:(id)reply
{
  replyCopy = reply;
  contentCopy = content;
  msgCopy = msg;
  connection = [(LEAudioTestXPCListener *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy receiveMsg:msgCopy content:contentCopy withReply:replyCopy];
}

- (void)sendMsg:(id)msg content:(id)content
{
  contentCopy = content;
  msgCopy = msg;
  connection = [(LEAudioTestXPCListener *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy receiveMsg:msgCopy content:contentCopy];
}

- (void)receiveMsg:(id)msg content:(id)content forPeripheral:(id)peripheral service:(id)service
{
  msgCopy = msg;
  contentCopy = content;
  peripheralCopy = peripheral;
  serviceCopy = service;
  NSLog(@"XPC listener receive msg with name with msg %@ with options: %@", msgCopy, contentCopy);
  xpcListenerEndpoints = [(LEAudioTestXPCListener *)self xpcListenerEndpoints];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10004EBA4;
  v22[3] = &unk_100095BA0;
  v23 = peripheralCopy;
  v24 = serviceCopy;
  v15 = serviceCopy;
  v16 = peripheralCopy;
  v17 = [xpcListenerEndpoints indexOfObjectPassingTest:v22];

  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    xpcListenerEndpoints2 = [(LEAudioTestXPCListener *)self xpcListenerEndpoints];
    v19 = [xpcListenerEndpoints2 objectAtIndexedSubscript:v17];

    v20 = [v19 objectForKey:@"kDelegate"];
    v21 = v20;
    if (v20)
    {
      [v20 handleMsg:msgCopy content:contentCopy];
    }
  }
}

- (void)receiveMsg:(id)msg content:(id)content withReply:(id)reply
{
  msgCopy = msg;
  contentCopy = content;
  replyCopy = reply;
  NSLog(@"XPC listener receive msg with name with msg %@ with options: %@", msgCopy, contentCopy);
  if ([msgCopy isEqualToString:@"bapCmdRequest"])
  {
    v9 = +[ConnectionManager instance];
    retrieveCapSessionsAndPeripherals = [v9 handleBapUnicastRequest:contentCopy];
LABEL_19:
    v11 = retrieveCapSessionsAndPeripherals;

    goto LABEL_20;
  }

  if ([msgCopy isEqualToString:@"retrieveConnectedDevices"])
  {
    v9 = +[ConnectionManager instance];
    retrieveCapSessionsAndPeripherals = [v9 retrieveCapSessionsAndPeripherals];
    goto LABEL_19;
  }

  if ([msgCopy isEqualToString:@"CAPUnicastProcedure"])
  {
    v9 = +[ConnectionManager instance];
    retrieveCapSessionsAndPeripherals = [v9 handleCapUnicastRequest:contentCopy];
    goto LABEL_19;
  }

  if ([msgCopy isEqualToString:@"CAPCommanderProcedure"])
  {
    v9 = +[ConnectionManager instance];
    retrieveCapSessionsAndPeripherals = [v9 handleCapCommanderRequest:contentCopy];
    goto LABEL_19;
  }

  if ([msgCopy isEqualToString:@"captureRenderingControl"])
  {
    v9 = +[ConnectionManager instance];
    retrieveCapSessionsAndPeripherals = [v9 handleCaptureRenderingControl:contentCopy];
    goto LABEL_19;
  }

  if ([msgCopy isEqualToString:@"hapUnicastRequest"])
  {
    v9 = +[ConnectionManager instance];
    retrieveCapSessionsAndPeripherals = [v9 handleHapUnicastRequest:contentCopy];
    goto LABEL_19;
  }

  if ([msgCopy isEqualToString:@"mediaControlRequest"])
  {
    v9 = +[ConnectionManager instance];
    retrieveCapSessionsAndPeripherals = [v9 handleMediaControlCommands:contentCopy];
    goto LABEL_19;
  }

  if ([msgCopy isEqualToString:@"telephonyControlRequest"])
  {
    v9 = +[ConnectionManager instance];
    retrieveCapSessionsAndPeripherals = [v9 handleTelephonyControlCommands:contentCopy];
    goto LABEL_19;
  }

  if ([msgCopy isEqualToString:@"acceptorInterfaceRequest"])
  {
    v9 = +[ConnectionManager instance];
    retrieveCapSessionsAndPeripherals = [v9 handleAcceptorInterfaceRequest:contentCopy];
    goto LABEL_19;
  }

  v11 = 0;
LABEL_20:
  replyCopy[2](replyCopy, v11);
}

- (void)receiveMsg:(id)msg content:(id)content
{
  contentCopy = content;
  if ([msg isEqualToString:@"AudioConfig"])
  {
    v5 = +[ConnectionManager instance];
    [v5 setAudioConfiguration:contentCopy forSession:0];
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