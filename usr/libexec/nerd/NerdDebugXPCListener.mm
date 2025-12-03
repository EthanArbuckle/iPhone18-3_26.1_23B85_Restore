@interface NerdDebugXPCListener
+ (BOOL)isConnectionEntitled:(id)entitled;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NerdDebugXPCListener)initWithNerdController:(id)controller;
- (void)dealloc;
- (void)drawImageFromPath:(id)path withCallback:(id)callback;
- (void)getLastNeRDControllerState:(id)state;
- (void)isInTapToRecover:(id)recover;
- (void)ping:(id)ping withPong:(id)pong;
- (void)postSetupKitEvent:(int64_t)event withParameters:(id)parameters withCallback:(id)callback;
- (void)stopTTR;
- (void)triggerAutoFlow;
@end

@implementation NerdDebugXPCListener

- (NerdDebugXPCListener)initWithNerdController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = NerdDebugXPCListener;
  v5 = [(NerdDebugXPCListener *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(NerdDebugXPCListener *)v5 setController:controllerCopy];
  }

  return v6;
}

+ (BOOL)isConnectionEntitled:(id)entitled
{
  v3 = [entitled valueForEntitlement:@"com.apple.nerd.DebugClient"];
  if (!v3)
  {
    v5 = +[SUCoreLog sharedLogger];
    oslog = [v5 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [NSString stringWithFormat:@"Client process does not have the '%@' entitlement", @"com.apple.nerd.DebugClient"];
      *buf = 136315394;
      v11 = "+[NerdDebugXPCListener isConnectionEntitled:]";
      v12 = 2112;
      v13 = v7;
LABEL_8:
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", buf, 0x16u);
    }

LABEL_9:

    bOOLValue = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = +[SUCoreLog sharedLogger];
    oslog = [v8 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [NSString stringWithFormat:@"Entitlement '%@' is not a BOOLean", @"com.apple.nerd.DebugClient"];
      *buf = 136315394;
      v11 = "+[NerdDebugXPCListener isConnectionEntitled:]";
      v12 = 2112;
      v13 = v7;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  bOOLValue = [v3 BOOLValue];
LABEL_10:

  return bOOLValue;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = +[SUCoreLog sharedLogger];
  oslog = [v8 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    connectionCopy = [NSString stringWithFormat:@"Received should accept new connection from listener: %@ and connection: %@", listenerCopy, connectionCopy];
    *buf = 136315394;
    v25 = "[NerdDebugXPCListener listener:shouldAcceptNewConnection:]";
    v26 = 2112;
    v27 = connectionCopy;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", buf, 0x16u);
  }

  v11 = [objc_opt_class() isConnectionEntitled:connectionCopy];
  v12 = +[SUCoreLog sharedLogger];
  oslog2 = [v12 oslog];

  v14 = os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v14)
    {
      connectionCopy2 = [NSString stringWithFormat:@"Connection %@ is entitled for NeRD Debugging", connectionCopy];
      *buf = 136315394;
      v25 = "[NerdDebugXPCListener listener:shouldAcceptNewConnection:]";
      v26 = 2112;
      v27 = connectionCopy2;
      _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", buf, 0x16u);
    }

    [(NerdDebugXPCListener *)self setConnection:connectionCopy];
    oslog2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NerdDebugXPCServerProtocol];
    [connectionCopy setExportedInterface:oslog2];
    [connectionCopy setExportedObject:self];
    v16 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NerdDebugXPCClientProtocol];
    [connectionCopy setRemoteObjectInterface:v16];
    v17 = +[SUCoreLog sharedLogger];
    oslog3 = [v17 oslog];

    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
    {
      connectionCopy3 = [NSString stringWithFormat:@"Resuming XPC connection on server. Listener: %@ and connection: %@", listenerCopy, connectionCopy];
      *buf = 136315394;
      v25 = "[NerdDebugXPCListener listener:shouldAcceptNewConnection:]";
      v26 = 2112;
      v27 = connectionCopy3;
      _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", buf, 0x16u);
    }

    [connectionCopy resume];
    v20 = +[SUCoreLog sharedLogger];
    oslog4 = [v20 oslog];

    if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [NSString stringWithFormat:@"Returning shouldAcceptNewConnection: YES"];
      *buf = 136315394;
      v25 = "[NerdDebugXPCListener listener:shouldAcceptNewConnection:]";
      v26 = 2112;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, oslog4, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  if (v14)
  {
    v16 = [NSString stringWithFormat:@"Rejecting connection with entitlement %@", @"com.apple.nerd.DebugClient"];
    *buf = 136315394;
    v25 = "[NerdDebugXPCListener listener:shouldAcceptNewConnection:]";
    v26 = 2112;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", buf, 0x16u);
LABEL_13:
  }

  return v11;
}

- (void)ping:(id)ping withPong:(id)pong
{
  pongCopy = pong;
  v5 = +[NSDate date];
  v6 = [v5 description];

  v7 = +[SUCoreLog sharedLogger];
  oslog = [v7 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSString stringWithFormat:@"%@: Got ping from client. Replying with pong", v6];
    *buf = 136315394;
    v11 = "[NerdDebugXPCListener ping:withPong:]";
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", buf, 0x16u);
  }

  pongCopy[2](pongCopy, v6);
}

- (void)dealloc
{
  v3 = +[SUCoreLog sharedLogger];
  oslog = [v3 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSString stringWithFormat:@"%@: dealloc XPC listener delegate!", self];
    *buf = 136315394;
    v8 = "[NerdDebugXPCListener dealloc]";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = NerdDebugXPCListener;
  [(NerdDebugXPCListener *)&v6 dealloc];
}

- (void)triggerAutoFlow
{
  v3 = +[SUCoreLog sharedLogger];
  oslog = [v3 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSString stringWithFormat:@"Trigerring an auto flow NeRD recovery attempt. Resetting download attempts"];
    v11 = 136315394;
    v12 = "[NerdDebugXPCListener triggerAutoFlow]";
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", &v11, 0x16u);
  }

  [(NerdDebugXPCListener *)self stopTTR];
  v6 = +[SUCoreLog sharedLogger];
  oslog2 = [v6 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSString stringWithFormat:@"Asking the FSM to continue to next step"];
    v11 = 136315394;
    v12 = "[NerdDebugXPCListener triggerAutoFlow]";
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", &v11, 0x16u);
  }

  controller = [(NerdDebugXPCListener *)self controller];
  nerdFSM = [controller nerdFSM];
  [nerdFSM postEvent:@"ProceedToNextUpdateStep"];
}

- (void)stopTTR
{
  v3 = +[SUCoreLog sharedLogger];
  oslog = [v3 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSString stringWithFormat:@"Stopping TTR"];
    v13 = 136315394;
    v14 = "[NerdDebugXPCListener stopTTR]";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", &v13, 0x16u);
  }

  controller = [(NerdDebugXPCListener *)self controller];
  tapToManager = [controller tapToManager];
  suspendTTR = [tapToManager suspendTTR];

  v9 = +[SUCoreLog sharedLogger];
  oslog2 = [v9 oslog];

  v11 = os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT);
  if (suspendTTR)
  {
    if (v11)
    {
      v12 = [NSString stringWithFormat:@"Successfully suspended Tap to Setup"];
      v13 = 136315394;
      v14 = "[NerdDebugXPCListener stopTTR]";
      v15 = 2112;
      v16 = v12;
LABEL_8:
      _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", &v13, 0x16u);
    }
  }

  else if (v11)
  {
    v12 = [NSString stringWithFormat:@"Failed to suspend Tap to Setup"];
    v13 = 136315394;
    v14 = "[NerdDebugXPCListener stopTTR]";
    v15 = 2112;
    v16 = v12;
    goto LABEL_8;
  }
}

- (void)drawImageFromPath:(id)path withCallback:(id)callback
{
  pathCopy = path;
  callbackCopy = callback;
  v8 = +[SUCoreLog sharedLogger];
  oslog = [v8 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    pathCopy = [NSString stringWithFormat:@"Drawing image from path: %@", pathCopy];
    *buf = 136315394;
    v19 = "[NerdDebugXPCListener drawImageFromPath:withCallback:]";
    v20 = 2112;
    v21 = pathCopy;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", buf, 0x16u);
  }

  controller = [(NerdDebugXPCListener *)self controller];
  tapToManager = [controller tapToManager];
  v13 = [tapToManager draw:pathCopy withDrawType:1];

  v14 = +[SUCoreLog sharedLogger];
  oslog2 = [v14 oslog];

  v16 = os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v16)
    {
      v17 = [NSString stringWithFormat:@"Successfully drew image"];
      *buf = 136315394;
      v19 = "[NerdDebugXPCListener drawImageFromPath:withCallback:]";
      v20 = 2112;
      v21 = v17;
LABEL_8:
      _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", buf, 0x16u);
    }
  }

  else if (v16)
  {
    v17 = [NSString stringWithFormat:@"Failed to draw image"];
    *buf = 136315394;
    v19 = "[NerdDebugXPCListener drawImageFromPath:withCallback:]";
    v20 = 2112;
    v21 = v17;
    goto LABEL_8;
  }

  callbackCopy[2](callbackCopy, v13);
}

- (void)isInTapToRecover:(id)recover
{
  recoverCopy = recover;
  controller = [(NerdDebugXPCListener *)self controller];
  tapToManager = [controller tapToManager];
  managerIsActive = [tapToManager managerIsActive];

  v8 = +[SUCoreLog sharedLogger];
  oslog = [v8 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [NSString stringWithFormat:@"NeRD is isInTTR answer: %d", managerIsActive];
    *buf = 136315394;
    v12 = "[NerdDebugXPCListener isInTapToRecover:]";
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", buf, 0x16u);
  }

  recoverCopy[2](recoverCopy, managerIsActive);
}

- (void)getLastNeRDControllerState:(id)state
{
  stateCopy = state;
  controller = [(NerdDebugXPCListener *)self controller];
  lastRecordedState = [controller lastRecordedState];

  v7 = +[SUCoreLog sharedLogger];
  oslog = [v7 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSString stringWithFormat:@"NeRD last recorded state was: %@", lastRecordedState];
    *buf = 136315394;
    v11 = "[NerdDebugXPCListener getLastNeRDControllerState:]";
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", buf, 0x16u);
  }

  stateCopy[2](stateCopy, lastRecordedState);
}

- (void)postSetupKitEvent:(int64_t)event withParameters:(id)parameters withCallback:(id)callback
{
  parametersCopy = parameters;
  callbackCopy = callback;
  v10 = +[SUCoreLog sharedLogger];
  oslog = [v10 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (event == 1)
    {
      v12 = @"SETUP_EVENT_TYPE_PRESENT_AUTH";
    }

    else if (event == 2)
    {
      v12 = @"SETUP_EVENT_TYPE_AUTH_COMPLETED";
    }

    else
    {
      v12 = @"SETUP_EVENT_TYPE_UNKNOWN";
      if (event == 3)
      {
        v12 = @"SETUP_EVENT_TYPE_SETUP_COMPLETED";
      }
    }

    parametersCopy = [NSString stringWithFormat:@"Posting event: %@ with parameters: %@", v12, parametersCopy];
    *buf = 136315394;
    v32 = "[NerdDebugXPCListener postSetupKitEvent:withParameters:withCallback:]";
    v33 = 2112;
    v34 = parametersCopy;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", buf, 0x16u);
  }

  if (event == 3)
  {
    v21 = [SKEvent alloc];
    v22 = 20;
LABEL_18:
    v20 = [v21 initWithEventType:v22];
    if (!v20)
    {
LABEL_28:
      callbackCopy[2](callbackCopy, 0, @"Couldn't create SKEvent to send to tapToManager");
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  if (event == 2)
  {
    v21 = [SKEvent alloc];
    v22 = 140;
    goto LABEL_18;
  }

  if (event != 1)
  {
    callbackCopy[2](callbackCopy, 0, @"Unknown event type");
    goto LABEL_29;
  }

  v14 = [parametersCopy objectForKeyedSubscript:@"password"];
  v15 = v14;
  if (!v14)
  {
    v30 = @"Missing password key in provided parameters";
LABEL_25:
    callbackCopy[2](callbackCopy, 0, v30);

    goto LABEL_29;
  }

  if ([v14 length] != 6)
  {
    v30 = @"Password must be 6 digits long";
    goto LABEL_25;
  }

  v16 = +[NSCharacterSet alphanumericCharacterSet];
  v17 = [v15 stringByTrimmingCharactersInSet:v16];

  if (v17)
  {
    v18 = [SKAuthenticationPresentEvent alloc];
    v19 = [parametersCopy objectForKeyedSubscript:@"password"];
    v20 = [v18 initWithPasswordType:2 password:v19];
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    goto LABEL_28;
  }

LABEL_19:
  controller = [(NerdDebugXPCListener *)self controller];
  tapToManager = [controller tapToManager];
  server = [tapToManager server];
  eventHandler = [server eventHandler];
  (eventHandler)[2](eventHandler, v20);

  v27 = +[SUCoreLog sharedLogger];
  oslog2 = [v27 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [NSString stringWithFormat:@"Event posted to tapToManager successfully"];
    *buf = 136315394;
    v32 = "[NerdDebugXPCListener postSetupKitEvent:withParameters:withCallback:]";
    v33 = 2112;
    v34 = v29;
    _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "[NeRD] %s: %@", buf, 0x16u);
  }

  callbackCopy[2](callbackCopy, 1, 0);
LABEL_29:
}

@end