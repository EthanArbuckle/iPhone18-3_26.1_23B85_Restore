@interface RPConnectionManager
+ (BOOL)hasUnitTestEntitlement;
+ (RPConnectionManager)sharedInstance;
- (BOOL)hasBroadcastEntitlements;
- (BOOL)hasSystemRecordingEntitlements;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSXPCConnection)currentConnection;
- (RPConnectionManager)init;
- (id)connectionManagerQueue;
- (id)getCurrentConnection;
- (int64_t)consumeSandboxExtensionToken:(id)token;
- (void)consumeSandboxExtension:(id)extension processNewConnection:(BOOL)connection;
- (void)discardInAppRecordingWithHandler:(id)handler;
- (void)exportClipToURL:(id)l duration:(double)duration completionHandler:(id)handler;
- (void)exportClipToURL:(id)l duration:(double)duration extensionToken:(id)token completionHandler:(id)handler;
- (void)getSystemBroadcastExtensionInfo:(id)info;
- (void)getSystemBroadcastPickerInfo:(id)info;
- (void)macApplicationDidBecomeActiveWithContextID:(id)d completionHandler:(id)handler;
- (void)macApplicationDidResignActive;
- (void)openControlCenterSystemRecordingView;
- (void)pauseInAppBroadcast;
- (void)pauseInAppCapture;
- (void)pauseInAppRecording;
- (void)processNewConnection:(id)connection;
- (void)reportCameraUsage:(int64_t)usage;
- (void)resumeHQLRWithCompletionHandler:(id)handler;
- (void)resumeInAppBroadcastWithWindowLayerContextID:(id)d completionHandler:(id)handler;
- (void)resumeInAppCaptureWithWindowLayerContextID:(id)d completionHandler:(id)handler;
- (void)resumeInAppClipWithWindowLayerContextID:(id)d completionHandler:(id)handler;
- (void)resumeInAppRecordingWithWindowLayerContextID:(id)d completionHandler:(id)handler;
- (void)resumeSystemBroadcastWithCompletionHandler:(id)handler;
- (void)resumeSystemRecordingWithCompletionHandler:(id)handler;
- (void)saveClipToCameraRoll:(id)roll extensionToken:(id)token handler:(id)handler;
- (void)saveClipToCameraRoll:(id)roll handler:(id)handler;
- (void)saveVideo:(id)video extensionToken:(id)token handler:(id)handler;
- (void)saveVideo:(id)video handler:(id)handler;
- (void)saveVideoToCameraRoll:(id)roll handler:(id)handler;
- (void)setBroadcastPickerPreferredExt:(id)ext showsMicButton:(BOOL)button;
- (void)setBroadcastURL:(id)l;
- (void)setCurrentConnection:(id)connection;
- (void)setMicrophoneEnabled:(BOOL)enabled;
- (void)setupBroadcastWithHostBundleID:(id)d broadcastExtensionBundleID:(id)iD broadcastConfigurationData:(id)data userInfo:(id)info handler:(id)handler;
- (void)setupSystemBroadcastWithHostBundleID:(id)d broadcastExtensionBundleID:(id)iD broadcastConfigurationData:(id)data userInfo:(id)info handler:(id)handler;
- (void)startClipBufferingWithContextID:(id)d windowSize:(CGSize)size microphoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled withCompletionHandler:(id)handler;
- (void)startHQLRWithSessionInfo:(id)info windowSize:(CGSize)size handler:(id)handler;
- (void)startInAppBroadcastWithContextID:(id)d windowSize:(CGSize)size microphoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled listenerEndpoint:(id)endpoint withHandler:(id)handler;
- (void)startInAppCaptureWithContextID:(id)d windowSize:(CGSize)size microphoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled withHandler:(id)handler;
- (void)startInAppRecordingWithContextID:(id)d windowSize:(CGSize)size microphoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled withHandler:(id)handler;
- (void)startSystemBroadcastWithContextID:(id)d windowSize:(CGSize)size microphoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled mixedRealityCameraEnabled:(BOOL)realityCameraEnabled listenerEndpoint:(id)endpoint withHandler:(id)handler;
- (void)startSystemRecordingWithContextID:(id)d windowSize:(CGSize)size microphoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled mixedRealityCameraEnabled:(BOOL)realityCameraEnabled withHandler:(id)handler;
- (void)stopAllActiveClients;
- (void)stopAndDiscardInAppRecordingFromFilePermissionErrorWithHandler:(id)handler;
- (void)stopClipBufferingWithCompletionHandler:(id)handler;
- (void)stopCurrentActiveSessionWithHandler:(id)handler;
- (void)stopHQLRWithHandler:(id)handler;
- (void)stopInAppBroadcastWithHandler:(id)handler;
- (void)stopInAppCaptureWithHandler:(id)handler;
- (void)stopInAppRecordingWithHandler:(id)handler;
- (void)stopInAppRecordingWithUrl:(id)url extensionToken:(id)token handler:(id)handler;
- (void)stopInAppRecordingWithUrl:(id)url handler:(id)handler;
- (void)stopSystemBroadcastWithHandler:(id)handler;
- (void)stopSystemRecordingWithHandler:(id)handler;
- (void)stopSystemRecordingWithURLHandler:(id)handler;
- (void)updateProcessIDForAudioCaptureWithPID:(int)d;
@end

@implementation RPConnectionManager

+ (RPConnectionManager)sharedInstance
{
  if (qword_1000B6910 != -1)
  {
    sub_1000627F4();
  }

  v3 = qword_1000B6908;

  return v3;
}

- (RPConnectionManager)init
{
  v8.receiver = self;
  v8.super_class = RPConnectionManager;
  v2 = [(RPConnectionManager *)&v8 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.replayd"];
    publicListener = v2->_publicListener;
    v2->_publicListener = v3;

    [(NSXPCListener *)v2->_publicListener setDelegate:v2];
    v5 = [[RPRecordingManager alloc] initWithConnectionManager:v2];
    recordingManager = v2->_recordingManager;
    v2->_recordingManager = v5;
  }

  return v2;
}

- (BOOL)hasSystemRecordingEntitlements
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.private.replay-kit"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasBroadcastEntitlements
{
  v3 = +[NSXPCConnection currentConnection];
  v4 = [v3 valueForEntitlement:@"com.apple.private.replay-kit.can-setup-broadcast"];
  bOOLValue = [v4 BOOLValue];

  LOBYTE(self) = bOOLValue | [(RPConnectionManager *)self hasSystemRecordingEntitlements];
  return self & 1;
}

+ (BOOL)hasUnitTestEntitlement
{
  v3 = +[RPConnectionManager sharedInstance];
  currentConnection = [v3 currentConnection];
  v5 = [currentConnection valueForEntitlement:@"com.apple.internal.test.replaykit"];

  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 136447234;
    v11 = "+[RPConnectionManager hasUnitTestEntitlement]";
    v12 = 1024;
    v13 = 155;
    v14 = 2112;
    v15 = v7;
    v16 = 2048;
    selfCopy = self;
    v18 = 1024;
    bOOLValue = [v5 BOOLValue];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %@ %p %d", &v10, 0x2Cu);
  }

  bOOLValue2 = [v5 BOOLValue];

  return bOOLValue2;
}

- (id)connectionManagerQueue
{
  if (qword_1000B6920 != -1)
  {
    sub_100062808();
  }

  v3 = qword_1000B6918;

  return v3;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446466;
    v13 = "[RPConnectionManager listener:shouldAcceptNewConnection:]";
    v14 = 1024;
    v15 = 171;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v12, 0x12u);
  }

  [connectionCopy setExportedObject:self];
  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPDaemonProtocol];
  v9 = [NSSet setWithObject:objc_opt_class()];
  [v8 setClasses:v9 forSelector:"startInAppRecordingWithContextID:windowSize:microphoneEnabled:cameraEnabled:withHandler:" argumentIndex:4 ofReply:0];

  [connectionCopy setExportedInterface:v8];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPClientProtocol];
  [connectionCopy setRemoteObjectInterface:v10];

  [(RPConnectionManager *)self processNewConnection:connectionCopy];
  [connectionCopy resume];

  return 1;
}

- (void)processNewConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v6 = [RPConnectionManager uniqueClientIdentifierWithPID:processIdentifier];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v20 = "[RPConnectionManager processNewConnection:]";
    v21 = 1024;
    v22 = 197;
    v23 = 1024;
    v24 = processIdentifier;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d accepted client connection PID: %d", buf, 0x18u);
  }

  if (([off_1000B65F0 isEqualToString:v6] & 1) == 0 && (objc_msgSend(off_1000B65F8, "isEqualToString:", v6) & 1) == 0)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10002B9A8;
    v16[3] = &unk_1000A1ED8;
    v16[4] = self;
    v7 = v6;
    v17 = v7;
    v18 = processIdentifier;
    [connectionCopy setInterruptionHandler:v16];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002BB0C;
    v13[3] = &unk_1000A1ED8;
    v13[4] = self;
    v8 = v7;
    v14 = v8;
    v15 = processIdentifier;
    [connectionCopy setInvalidationHandler:v13];
    connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002BC70;
    block[3] = &unk_1000A1F00;
    block[4] = self;
    v11 = connectionCopy;
    v12 = v8;
    dispatch_sync(connectionManagerQueue, block);
  }
}

- (void)setCurrentConnection:(id)connection
{
  connectionCopy = connection;
  v4 = objc_storeWeak(&self->_currentConnection, connectionCopy);
  processIdentifier = [connectionCopy processIdentifier];

  v6 = +[RPMultipleClientProxy clientProxy];
  [v6 setCurrentConnectionProcessIdentifier:processIdentifier];
}

- (id)getCurrentConnection
{
  v3 = +[NSXPCConnection currentConnection];
  v4 = v3;
  if (v3)
  {
    WeakRetained = v3;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_currentConnection);
  }

  v6 = WeakRetained;

  return v6;
}

- (void)stopAndDiscardInAppRecordingFromFilePermissionErrorWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPConnectionManager stopAndDiscardInAppRecordingFromFilePermissionErrorWithHandler:]";
    v11 = 1024;
    v12 = 236;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  recordingManager = self->_recordingManager;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002BEBC;
  v7[3] = &unk_1000A1868;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(RPRecordingManager *)recordingManager stopInAppRecordingWithHandler:v7];
}

- (void)stopCurrentActiveSessionWithHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopCurrentActiveSessionWithHandler", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002C234;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_sync(connectionManagerQueue, v8);
}

- (void)stopAllActiveClients
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopAllActiveClients", buf, 2u);
  }

  v3 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v3];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C38C;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_sync(connectionManagerQueue, block);
}

- (void)getSystemBroadcastExtensionInfo:(id)info
{
  infoCopy = info;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: getSystemBroadcastExtensionInfo", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002C50C;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = infoCopy;
  v7 = infoCopy;
  dispatch_sync(connectionManagerQueue, v8);
}

- (void)setBroadcastURL:(id)l
{
  lCopy = l;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: setBroadcastURL", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002C68C;
  v8[3] = &unk_1000A1128;
  v8[4] = self;
  v9 = lCopy;
  v7 = lCopy;
  dispatch_sync(connectionManagerQueue, v8);
}

- (void)updateProcessIDForAudioCaptureWithPID:(int)d
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPConnectionManager updateProcessIDForAudioCaptureWithPID:]";
    v11 = 1024;
    v12 = 286;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C858;
  v7[3] = &unk_1000A1F50;
  v7[4] = self;
  dCopy = d;
  dispatch_sync(connectionManagerQueue, v7);
}

- (void)startInAppRecordingWithContextID:(id)d windowSize:(CGSize)size microphoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled withHandler:(id)handler
{
  height = size.height;
  width = size.width;
  dCopy = d;
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: startInAppRecordingWithContextID", buf, 2u);
  }

  v15 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v15];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002CA94;
  v19[3] = &unk_1000A1F78;
  v19[4] = self;
  v20 = dCopy;
  v22 = width;
  v23 = height;
  enabledCopy = enabled;
  cameraEnabledCopy = cameraEnabled;
  v21 = handlerCopy;
  v17 = handlerCopy;
  v18 = dCopy;
  dispatch_sync(connectionManagerQueue, v19);
}

- (void)resumeInAppRecordingWithWindowLayerContextID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "[RPConnectionManager resumeInAppRecordingWithWindowLayerContextID:completionHandler:]";
    v17 = 1024;
    v18 = 309;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v8 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v8];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002CD94;
  block[3] = &unk_1000A10D8;
  block[4] = self;
  v13 = dCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = dCopy;
  dispatch_sync(connectionManagerQueue, block);
}

- (void)stopInAppRecordingWithHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopInAppRecordingWithHandler", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002D048;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_sync(connectionManagerQueue, v8);
}

- (void)stopInAppRecordingWithUrl:(id)url handler:(id)handler
{
  urlCopy = url;
  handlerCopy = handler;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006281C();
  }

  v8 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v8];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002D298;
  v11[3] = &unk_1000A11E0;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_sync(connectionManagerQueue, v11);
}

- (void)stopInAppRecordingWithUrl:(id)url extensionToken:(id)token handler:(id)handler
{
  urlCopy = url;
  tokenCopy = token;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[RPConnectionManager stopInAppRecordingWithUrl:extensionToken:handler:]";
    v22 = 1024;
    v23 = 343;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v11 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v11];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002D46C;
  v16[3] = &unk_1000A1FC8;
  v16[4] = self;
  v17 = tokenCopy;
  v18 = urlCopy;
  v19 = handlerCopy;
  v13 = urlCopy;
  v14 = handlerCopy;
  v15 = tokenCopy;
  dispatch_sync(connectionManagerQueue, v16);
}

- (void)discardInAppRecordingWithHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: discardInAppRecordingWithHandler", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002D7F8;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_sync(connectionManagerQueue, v8);
}

- (void)pauseInAppRecording
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: pauseInAppRecording", buf, 2u);
  }

  v3 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v3];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D950;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_sync(connectionManagerQueue, block);
}

- (void)startInAppCaptureWithContextID:(id)d windowSize:(CGSize)size microphoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled withHandler:(id)handler
{
  height = size.height;
  width = size.width;
  dCopy = d;
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: startInAppCaptureWithContextID", buf, 2u);
  }

  v15 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v15];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002DB20;
  v19[3] = &unk_1000A1F78;
  v19[4] = self;
  v20 = dCopy;
  v22 = width;
  v23 = height;
  enabledCopy = enabled;
  cameraEnabledCopy = cameraEnabled;
  v21 = handlerCopy;
  v17 = handlerCopy;
  v18 = dCopy;
  dispatch_sync(connectionManagerQueue, v19);
}

- (void)stopInAppCaptureWithHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopInAppCaptureWithHandler", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002DD98;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_sync(connectionManagerQueue, v8);
}

- (void)pauseInAppCapture
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: pauseInAppCapture", buf, 2u);
  }

  v3 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v3];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002DFA4;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_sync(connectionManagerQueue, block);
}

- (void)resumeInAppCaptureWithWindowLayerContextID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "[RPConnectionManager resumeInAppCaptureWithWindowLayerContextID:completionHandler:]";
    v17 = 1024;
    v18 = 418;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v8 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v8];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E1AC;
  block[3] = &unk_1000A10D8;
  block[4] = self;
  v13 = dCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = dCopy;
  dispatch_sync(connectionManagerQueue, block);
}

- (void)setupBroadcastWithHostBundleID:(id)d broadcastExtensionBundleID:(id)iD broadcastConfigurationData:(id)data userInfo:(id)info handler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  infoCopy = info;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v26 = "[RPConnectionManager setupBroadcastWithHostBundleID:broadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]";
    v27 = 1024;
    v28 = 432;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPConnectionManager *)self hasBroadcastEntitlements])
  {
    connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002E5AC;
    v19[3] = &unk_1000A1FF0;
    v19[4] = self;
    v20 = dCopy;
    v21 = iDCopy;
    v22 = dataCopy;
    v23 = infoCopy;
    v24 = handlerCopy;
    dispatch_sync(connectionManagerQueue, v19);
  }

  else
  {
    if (handlerCopy)
    {
      v18 = [NSError errorWithDomain:@"com.apple.ReplayKit.RPRecordingErrorDomain" code:-5819 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v18);
    }

    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006299C();
    }
  }
}

- (void)startInAppBroadcastWithContextID:(id)d windowSize:(CGSize)size microphoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled listenerEndpoint:(id)endpoint withHandler:(id)handler
{
  height = size.height;
  width = size.width;
  dCopy = d;
  endpointCopy = endpoint;
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: startInAppBroadcastWithContextID", buf, 2u);
  }

  v18 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v18];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E814;
  block[3] = &unk_1000A2018;
  block[4] = self;
  v24 = dCopy;
  v27 = width;
  v28 = height;
  enabledCopy = enabled;
  cameraEnabledCopy = cameraEnabled;
  v25 = endpointCopy;
  v26 = handlerCopy;
  v20 = handlerCopy;
  v21 = endpointCopy;
  v22 = dCopy;
  dispatch_sync(connectionManagerQueue, block);
}

- (void)stopInAppBroadcastWithHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopInAppBroadcastWithHandler", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002EA90;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_sync(connectionManagerQueue, v8);
}

- (void)pauseInAppBroadcast
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: pauseInAppBroadcast", buf, 2u);
  }

  v3 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v3];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002EC9C;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_sync(connectionManagerQueue, block);
}

- (void)resumeInAppBroadcastWithWindowLayerContextID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "[RPConnectionManager resumeInAppBroadcastWithWindowLayerContextID:completionHandler:]";
    v17 = 1024;
    v18 = 483;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v8 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v8];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002EEA4;
  block[3] = &unk_1000A10D8;
  block[4] = self;
  v13 = dCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = dCopy;
  dispatch_sync(connectionManagerQueue, block);
}

- (void)startSystemRecordingWithContextID:(id)d windowSize:(CGSize)size microphoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled mixedRealityCameraEnabled:(BOOL)realityCameraEnabled withHandler:(id)handler
{
  height = size.height;
  width = size.width;
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v29 = "[RPConnectionManager startSystemRecordingWithContextID:windowSize:microphoneEnabled:cameraEnabled:mixedRealityCameraEnabled:withHandler:]";
    v30 = 1024;
    v31 = 498;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPConnectionManager *)self hasSystemRecordingEntitlements])
  {
    v17 = +[NSXPCConnection currentConnection];
    [(RPConnectionManager *)self setCurrentConnection:v17];

    connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002F294;
    v20[3] = &unk_1000A2040;
    v20[4] = self;
    v21 = dCopy;
    v23 = width;
    v24 = height;
    enabledCopy = enabled;
    cameraEnabledCopy = cameraEnabled;
    realityCameraEnabledCopy = realityCameraEnabled;
    v22 = handlerCopy;
    dispatch_sync(connectionManagerQueue, v20);
  }

  else
  {
    if (handlerCopy)
    {
      v19 = [NSError errorWithDomain:@"com.apple.ReplayKit.RPRecordingErrorDomain" code:-5810 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v19);
    }

    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062A1C();
    }
  }
}

- (void)stopSystemRecordingWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPConnectionManager stopSystemRecordingWithHandler:]";
    v12 = 1024;
    v13 = 518;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPConnectionManager *)self hasSystemRecordingEntitlements])
  {
    v5 = +[NSXPCConnection currentConnection];
    [(RPConnectionManager *)self setCurrentConnection:v5];

    connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002F5DC;
    v8[3] = &unk_1000A11E0;
    v8[4] = self;
    v9 = handlerCopy;
    dispatch_sync(connectionManagerQueue, v8);
  }

  else
  {
    if (handlerCopy)
    {
      v7 = [NSError errorWithDomain:@"com.apple.ReplayKit.RPRecordingErrorDomain" code:-5810 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v7);
    }

    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062A9C();
    }
  }
}

- (void)stopSystemRecordingWithURLHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPConnectionManager stopSystemRecordingWithURLHandler:]";
    v12 = 1024;
    v13 = 538;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPConnectionManager *)self hasSystemRecordingEntitlements])
  {
    v5 = +[NSXPCConnection currentConnection];
    [(RPConnectionManager *)self setCurrentConnection:v5];

    connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002F8F4;
    v8[3] = &unk_1000A11E0;
    v8[4] = self;
    v9 = handlerCopy;
    dispatch_sync(connectionManagerQueue, v8);
  }

  else
  {
    if (handlerCopy)
    {
      v7 = [NSError errorWithDomain:@"com.apple.ReplayKit.RPRecordingErrorDomain" code:-5810 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, v7);
    }

    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062B1C();
    }
  }
}

- (void)resumeSystemRecordingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPConnectionManager resumeSystemRecordingWithCompletionHandler:]";
    v11 = 1024;
    v12 = 560;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (![(RPConnectionManager *)self hasSystemRecordingEntitlements])
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062B9C();
      if (!handlerCopy)
      {
        goto LABEL_10;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_10;
    }

    handlerCopy[2](handlerCopy, 0);
    goto LABEL_10;
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002FBFC;
  v7[3] = &unk_1000A11E0;
  v7[4] = self;
  v8 = handlerCopy;
  dispatch_sync(connectionManagerQueue, v7);

LABEL_10:
}

- (void)setupSystemBroadcastWithHostBundleID:(id)d broadcastExtensionBundleID:(id)iD broadcastConfigurationData:(id)data userInfo:(id)info handler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  infoCopy = info;
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: setupSystemBroadcastWithHostBundleID", buf, 2u);
  }

  v17 = +[NSXPCConnection currentConnection];
  v18 = [v17 valueForEntitlement:@"com.apple.private.replay-kit.can-setup-broadcast"];
  bOOLValue = [v18 BOOLValue];

  v20 = [v17 valueForEntitlement:@"com.apple.private.replay-kit"];
  bOOLValue2 = [v20 BOOLValue];

  if ((bOOLValue & 1) != 0 || bOOLValue2)
  {
    connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10002FFF4;
    v24[3] = &unk_1000A1FF0;
    v24[4] = self;
    v25 = dCopy;
    v26 = iDCopy;
    v27 = dataCopy;
    v28 = infoCopy;
    v29 = handlerCopy;
    dispatch_sync(connectionManagerQueue, v24);
  }

  else
  {
    if (handlerCopy)
    {
      v22 = [NSError errorWithDomain:@"com.apple.ReplayKit.RPRecordingErrorDomain" code:-5819 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v22);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: setupBroadcastWithHostBundleID failed because client doesn't have entitlements to setup broadcast", buf, 2u);
    }
  }
}

- (void)startSystemBroadcastWithContextID:(id)d windowSize:(CGSize)size microphoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled mixedRealityCameraEnabled:(BOOL)realityCameraEnabled listenerEndpoint:(id)endpoint withHandler:(id)handler
{
  height = size.height;
  width = size.width;
  dCopy = d;
  endpointCopy = endpoint;
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: startSystemBroadcastWithContextID", buf, 2u);
  }

  v20 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v20];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000302CC;
  block[3] = &unk_1000A2068;
  block[4] = self;
  v26 = dCopy;
  v29 = width;
  v30 = height;
  enabledCopy = enabled;
  cameraEnabledCopy = cameraEnabled;
  realityCameraEnabledCopy = realityCameraEnabled;
  v27 = endpointCopy;
  v28 = handlerCopy;
  v22 = handlerCopy;
  v23 = endpointCopy;
  v24 = dCopy;
  dispatch_sync(connectionManagerQueue, block);
}

- (void)stopSystemBroadcastWithHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopSystemBroadcastWithHandler", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100030540;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_sync(connectionManagerQueue, v8);
}

- (void)resumeSystemBroadcastWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPConnectionManager resumeSystemBroadcastWithCompletionHandler:]";
    v11 = 1024;
    v12 = 629;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (![(RPConnectionManager *)self hasBroadcastEntitlements])
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062C1C();
      if (!handlerCopy)
      {
        goto LABEL_10;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_10;
    }

    handlerCopy[2](handlerCopy, 0);
    goto LABEL_10;
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003082C;
  v7[3] = &unk_1000A11E0;
  v7[4] = self;
  v8 = handlerCopy;
  dispatch_sync(connectionManagerQueue, v7);

LABEL_10:
}

- (void)startHQLRWithSessionInfo:(id)info windowSize:(CGSize)size handler:(id)handler
{
  height = size.height;
  width = size.width;
  infoCopy = info;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v20 = "[RPConnectionManager startHQLRWithSessionInfo:windowSize:handler:]";
    v21 = 1024;
    v22 = 651;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPConnectionManager *)self hasSystemRecordingEntitlements])
  {
    v11 = +[NSXPCConnection currentConnection];
    [(RPConnectionManager *)self setCurrentConnection:v11];

    connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100030BD8;
    block[3] = &unk_1000A2090;
    block[4] = self;
    v15 = infoCopy;
    v17 = width;
    v18 = height;
    v16 = handlerCopy;
    dispatch_sync(connectionManagerQueue, block);
  }

  else
  {
    if (handlerCopy)
    {
      v13 = [NSError errorWithDomain:@"com.apple.ReplayKit.RPRecordingErrorDomain" code:-5810 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v13);
    }

    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062C9C();
    }
  }
}

- (void)stopHQLRWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPConnectionManager stopHQLRWithHandler:]";
    v12 = 1024;
    v13 = 671;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPConnectionManager *)self hasSystemRecordingEntitlements])
  {
    v5 = +[NSXPCConnection currentConnection];
    [(RPConnectionManager *)self setCurrentConnection:v5];

    connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100030F00;
    v8[3] = &unk_1000A11E0;
    v8[4] = self;
    v9 = handlerCopy;
    dispatch_sync(connectionManagerQueue, v8);
  }

  else
  {
    if (handlerCopy)
    {
      v7 = [NSError errorWithDomain:@"com.apple.ReplayKit.RPRecordingErrorDomain" code:-5810 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v7);
    }

    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062D1C();
    }
  }
}

- (void)resumeHQLRWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPConnectionManager resumeHQLRWithCompletionHandler:]";
    v11 = 1024;
    v12 = 691;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (![(RPConnectionManager *)self hasSystemRecordingEntitlements])
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062D9C();
      if (!handlerCopy)
      {
        goto LABEL_10;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_10;
    }

    handlerCopy[2](handlerCopy, 0);
    goto LABEL_10;
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000311EC;
  v7[3] = &unk_1000A11E0;
  v7[4] = self;
  v8 = handlerCopy;
  dispatch_sync(connectionManagerQueue, v7);

LABEL_10:
}

- (void)startClipBufferingWithContextID:(id)d windowSize:(CGSize)size microphoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled withCompletionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v27 = "[RPConnectionManager startClipBufferingWithContextID:windowSize:microphoneEnabled:cameraEnabled:withCompletionHandler:]";
    v28 = 1024;
    v29 = 712;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v15 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v15];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100031538;
  v19[3] = &unk_1000A1F78;
  v19[4] = self;
  v20 = dCopy;
  v22 = width;
  v23 = height;
  enabledCopy = enabled;
  cameraEnabledCopy = cameraEnabled;
  v21 = handlerCopy;
  v17 = handlerCopy;
  v18 = dCopy;
  dispatch_sync(connectionManagerQueue, v19);
}

- (void)stopClipBufferingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPConnectionManager stopClipBufferingWithCompletionHandler:]";
    v12 = 1024;
    v13 = 725;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100031878;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_sync(connectionManagerQueue, v8);
}

- (void)exportClipToURL:(id)l duration:(double)duration completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100062E1C();
    if (!handlerCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (handlerCopy)
  {
LABEL_4:
    v8 = [NSError _rpUserErrorForCode:-5835 userInfo:0];
    handlerCopy[2](handlerCopy, v8);
  }

LABEL_5:
}

- (void)exportClipToURL:(id)l duration:(double)duration extensionToken:(id)token completionHandler:(id)handler
{
  lCopy = l;
  tokenCopy = token;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v24 = "[RPConnectionManager exportClipToURL:duration:extensionToken:completionHandler:]";
    v25 = 1024;
    v26 = 745;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v13 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v13];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031C7C;
  block[3] = &unk_1000A20B8;
  block[4] = self;
  v19 = tokenCopy;
  v20 = lCopy;
  v21 = handlerCopy;
  durationCopy = duration;
  v15 = lCopy;
  v16 = handlerCopy;
  v17 = tokenCopy;
  dispatch_sync(connectionManagerQueue, block);
}

- (void)resumeInAppClipWithWindowLayerContextID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "[RPConnectionManager resumeInAppClipWithWindowLayerContextID:completionHandler:]";
    v17 = 1024;
    v18 = 770;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v8 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v8];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000320D4;
  block[3] = &unk_1000A10D8;
  block[4] = self;
  v13 = dCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = dCopy;
  dispatch_sync(connectionManagerQueue, block);
}

- (void)macApplicationDidResignActive
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: macApplicationDidResignActive", buf, 2u);
  }

  v3 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v3];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032360;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_sync(connectionManagerQueue, block);
}

- (void)macApplicationDidBecomeActiveWithContextID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "[RPConnectionManager macApplicationDidBecomeActiveWithContextID:completionHandler:]";
    v17 = 1024;
    v18 = 793;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v8 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v8];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032568;
  block[3] = &unk_1000A10D8;
  block[4] = self;
  v13 = dCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = dCopy;
  dispatch_sync(connectionManagerQueue, block);
}

- (void)saveVideo:(id)video handler:(id)handler
{
  videoCopy = video;
  handlerCopy = handler;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100062F9C();
  }

  v7 = [NSError _rpUserErrorForCode:-5835 userInfo:0];
  handlerCopy[2](handlerCopy, v7);
}

- (void)saveVideo:(id)video extensionToken:(id)token handler:(id)handler
{
  videoCopy = video;
  tokenCopy = token;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[RPConnectionManager saveVideo:extensionToken:handler:]";
    *&buf[12] = 1024;
    *&buf[14] = 808;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v11 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v11];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v19 = [(RPConnectionManager *)self consumeSandboxExtensionToken:tokenCopy];
  if (*(*&buf[8] + 24) == -1)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006301C();
    }

    v13 = [NSError _rpUserErrorForCode:-5835 userInfo:0];
    handlerCopy[2](handlerCopy, v13);
  }

  else
  {
    connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100032958;
    v14[3] = &unk_1000A20E0;
    v14[4] = self;
    v15 = videoCopy;
    v17 = buf;
    v16 = handlerCopy;
    dispatch_sync(connectionManagerQueue, v14);
  }

  _Block_object_dispose(buf, 8);
}

- (void)saveVideoToCameraRoll:(id)roll handler:(id)handler
{
  rollCopy = roll;
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: saveVideoToCameraRoll", buf, 2u);
  }

  v8 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v8];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032C6C;
  block[3] = &unk_1000A10D8;
  block[4] = self;
  v13 = rollCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = rollCopy;
  dispatch_sync(connectionManagerQueue, block);
}

- (void)saveClipToCameraRoll:(id)roll handler:(id)handler
{
  rollCopy = roll;
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: saveClipToCameraRoll", buf, 2u);
  }

  v8 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v8];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032E18;
  block[3] = &unk_1000A10D8;
  block[4] = self;
  v13 = rollCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = rollCopy;
  dispatch_sync(connectionManagerQueue, block);
}

- (void)saveClipToCameraRoll:(id)roll extensionToken:(id)token handler:(id)handler
{
  rollCopy = roll;
  tokenCopy = token;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[RPConnectionManager saveClipToCameraRoll:extensionToken:handler:]";
    *&buf[12] = 1024;
    *&buf[14] = 848;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v11 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v11];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v19 = [(RPConnectionManager *)self consumeSandboxExtensionToken:tokenCopy];
  if (*(*&buf[8] + 24) == -1)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006311C();
    }

    v13 = [NSError _rpUserErrorForCode:-5835 userInfo:0];
    handlerCopy[2](handlerCopy, v13);
  }

  else
  {
    connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100033100;
    v14[3] = &unk_1000A20E0;
    v14[4] = self;
    v15 = rollCopy;
    v17 = buf;
    v16 = handlerCopy;
    dispatch_sync(connectionManagerQueue, v14);
  }

  _Block_object_dispose(buf, 8);
}

- (void)reportCameraUsage:(int64_t)usage
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: reportCameraUsage", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000333D4;
  v7[3] = &unk_1000A1230;
  v7[4] = self;
  v7[5] = usage;
  dispatch_sync(connectionManagerQueue, v7);
}

- (int64_t)consumeSandboxExtensionToken:(id)token
{
  uTF8String = [token UTF8String];

  return _sandbox_extension_consume(uTF8String);
}

- (void)consumeSandboxExtension:(id)extension processNewConnection:(BOOL)connection
{
  connectionCopy = connection;
  extensionCopy = extension;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 136446466;
    *&v10[4] = "[RPConnectionManager consumeSandboxExtension:processNewConnection:]";
    v11 = 1024;
    v12 = 900;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", v10, 0x12u);
  }

  if (!extensionCopy)
  {
    sub_10006329C(v10);
    v8 = *v10;
    if (!connectionCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = [(RPConnectionManager *)self consumeSandboxExtensionToken:extensionCopy];
  if (v7 != -1)
  {
    v8 = v7;
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 136446466;
      *&v10[4] = "[RPConnectionManager consumeSandboxExtension:processNewConnection:]";
      v11 = 1024;
      v12 = 909;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Did consume extension token", v10, 0x12u);
    }

    if (!connectionCopy)
    {
      goto LABEL_11;
    }

LABEL_10:
    v9 = +[NSXPCConnection currentConnection];
    [(RPConnectionManager *)self processNewConnection:v9];

LABEL_11:
    [(RPConnectionManager *)self releaseSandboxExtensionHandle:v8];
    goto LABEL_15;
  }

  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006321C();
  }

LABEL_15:
}

- (void)setMicrophoneEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "[RPConnectionManager setMicrophoneEnabled:]";
    v11 = 1024;
    v12 = 925;
    v13 = 1024;
    v14 = enabledCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d microphone set:%d ", buf, 0x18u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000337E4;
  v7[3] = &unk_1000A2108;
  v7[4] = self;
  v8 = enabledCopy;
  dispatch_sync(connectionManagerQueue, v7);
}

- (void)getSystemBroadcastPickerInfo:(id)info
{
  infoCopy = info;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPConnectionManager getSystemBroadcastPickerInfo:]";
    v12 = 1024;
    v13 = 933;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100033974;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = infoCopy;
  v7 = infoCopy;
  dispatch_sync(connectionManagerQueue, v8);
}

- (void)setBroadcastPickerPreferredExt:(id)ext showsMicButton:(BOOL)button
{
  buttonCopy = button;
  extCopy = ext;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v14 = "[RPConnectionManager setBroadcastPickerPreferredExt:showsMicButton:]";
    v15 = 1024;
    v16 = 942;
    v17 = 2112;
    v18 = extCopy;
    v19 = 1024;
    v20 = buttonCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d preferred ext:%@  shows mic button:%i", buf, 0x22u);
  }

  v7 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v7];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033BB4;
  block[3] = &unk_1000A2130;
  block[4] = self;
  v11 = extCopy;
  v12 = buttonCopy;
  v9 = extCopy;
  dispatch_sync(connectionManagerQueue, block);
}

- (void)openControlCenterSystemRecordingView
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "[RPConnectionManager openControlCenterSystemRecordingView]";
    v8 = 1024;
    v9 = 951;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v3 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v3];

  connectionManagerQueue = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033DB8;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_sync(connectionManagerQueue, block);
}

- (NSXPCConnection)currentConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_currentConnection);

  return WeakRetained;
}

@end