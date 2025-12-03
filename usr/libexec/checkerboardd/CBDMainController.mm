@interface CBDMainController
- (CBDMainController)init;
- (void)didConnectDeviceConnection:(id)connection;
- (void)didDisconnectDeviceConnection:(id)connection;
- (void)didReceiveRemoteXPCMessage:(id)message completion:(id)completion;
- (void)invalidate;
- (void)start;
@end

@implementation CBDMainController

- (CBDMainController)init
{
  v29.receiver = self;
  v29.super_class = CBDMainController;
  v2 = [(CBDMainController *)&v29 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.maccheckerboardd.hostDevice", 0);
    hostDeviceSerialQueue = v2->_hostDeviceSerialQueue;
    v2->_hostDeviceSerialQueue = v3;

    hostDevice = v2->_hostDevice;
    v2->_hostDevice = 0;

    v6 = objc_alloc_init(CBDLocalServiceServer);
    localXPCServer = v2->_localXPCServer;
    v2->_localXPCServer = v6;

    v8 = objc_alloc_init(CBDRemoteDeviceDiscovery);
    discovery = v2->_discovery;
    v2->_discovery = v8;

    [(CBDRemoteDeviceDiscovery *)v2->_discovery setDelegate:v2];
    v10 = objc_opt_new();
    v11 = [[CBDRemoteXPCMessageSetupHandler alloc] initWithProxyReceiver:v2->_localXPCServer];
    v12 = [[CBDRemoteXPCMessageStartDiagnosticsHandler alloc] initWithProxyReceiver:v2->_localXPCServer];
    v13 = [NSSet setWithObjects:v10, v11, v12, 0];
    messageHandlers = v2->_messageHandlers;
    v2->_messageHandlers = v13;

    v15 = +[NSMutableSet set];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v2->_messageHandlers;
    v17 = [(NSSet *)v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        v20 = 0;
        do
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          expectedRemoteMessageClasses = [*(*(&v25 + 1) + 8 * v20) expectedRemoteMessageClasses];
          [v15 unionSet:expectedRemoteMessageClasses];

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [(NSSet *)v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v18);
    }

    v22 = [[CBDRemoteXPCServiceServer alloc] initWithAllowedMessageClasses:v15];
    remoteXPCServer = v2->_remoteXPCServer;
    v2->_remoteXPCServer = v22;

    [(CBDRemoteXPCServiceServer *)v2->_remoteXPCServer setDelegate:v2];
  }

  return v2;
}

- (void)start
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CBDMainController: start", v7, 2u);
  }

  localXPCServer = [(CBDMainController *)self localXPCServer];
  [localXPCServer resume];

  discovery = [(CBDMainController *)self discovery];
  [discovery resume];

  remoteXPCServer = [(CBDMainController *)self remoteXPCServer];
  [remoteXPCServer resume];
}

- (void)invalidate
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CBDMainController: invalidate", v7, 2u);
  }

  localXPCServer = [(CBDMainController *)self localXPCServer];
  [localXPCServer invalidate];

  discovery = [(CBDMainController *)self discovery];
  [discovery invalidate];

  remoteXPCServer = [(CBDMainController *)self remoteXPCServer];
  [remoteXPCServer invalidate];
}

- (void)didConnectDeviceConnection:(id)connection
{
  connectionCopy = connection;
  hostDeviceSerialQueue = [(CBDMainController *)self hostDeviceSerialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005F8C;
  v7[3] = &unk_100010618;
  v8 = connectionCopy;
  selfCopy = self;
  v6 = connectionCopy;
  dispatch_async(hostDeviceSerialQueue, v7);
}

- (void)didDisconnectDeviceConnection:(id)connection
{
  connectionCopy = connection;
  hostDeviceSerialQueue = [(CBDMainController *)self hostDeviceSerialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006168;
  v7[3] = &unk_100010618;
  v8 = connectionCopy;
  selfCopy = self;
  v6 = connectionCopy;
  dispatch_async(hostDeviceSerialQueue, v7);
}

- (void)didReceiveRemoteXPCMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v8 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = messageCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didReceiveRemoteXPCMessage: %@", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  messageHandlers = [(CBDMainController *)self messageHandlers];
  v10 = [messageHandlers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(messageHandlers);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        expectedRemoteMessageClasses = [v14 expectedRemoteMessageClasses];
        v16 = [expectedRemoteMessageClasses containsObject:objc_opt_class()];

        if (v16)
        {
          [v14 handleRemoteMessage:messageCopy completion:completionCopy];

          goto LABEL_15;
        }
      }

      v11 = [messageHandlers countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = messageCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Error: no handler for %@", buf, 0xCu);
  }

  completionCopy[2](completionCopy, 0);
LABEL_15:
}

@end