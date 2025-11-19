@interface RPConnectionManager
+ (BOOL)hasUnitTestEntitlement;
+ (RPConnectionManager)sharedInstance;
- (BOOL)hasBroadcastEntitlements;
- (BOOL)hasSystemRecordingEntitlements;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSXPCConnection)currentConnection;
- (RPConnectionManager)init;
- (id)connectionManagerQueue;
- (id)getCurrentConnection;
- (int64_t)consumeSandboxExtensionToken:(id)a3;
- (void)consumeSandboxExtension:(id)a3 processNewConnection:(BOOL)a4;
- (void)discardInAppRecordingWithHandler:(id)a3;
- (void)exportClipToURL:(id)a3 duration:(double)a4 completionHandler:(id)a5;
- (void)exportClipToURL:(id)a3 duration:(double)a4 extensionToken:(id)a5 completionHandler:(id)a6;
- (void)getSystemBroadcastExtensionInfo:(id)a3;
- (void)getSystemBroadcastPickerInfo:(id)a3;
- (void)macApplicationDidBecomeActiveWithContextID:(id)a3 completionHandler:(id)a4;
- (void)macApplicationDidResignActive;
- (void)openControlCenterSystemRecordingView;
- (void)pauseInAppBroadcast;
- (void)pauseInAppCapture;
- (void)pauseInAppRecording;
- (void)processNewConnection:(id)a3;
- (void)reportCameraUsage:(int64_t)a3;
- (void)resumeHQLRWithCompletionHandler:(id)a3;
- (void)resumeInAppBroadcastWithWindowLayerContextID:(id)a3 completionHandler:(id)a4;
- (void)resumeInAppCaptureWithWindowLayerContextID:(id)a3 completionHandler:(id)a4;
- (void)resumeInAppClipWithWindowLayerContextID:(id)a3 completionHandler:(id)a4;
- (void)resumeInAppRecordingWithWindowLayerContextID:(id)a3 completionHandler:(id)a4;
- (void)resumeSystemBroadcastWithCompletionHandler:(id)a3;
- (void)resumeSystemRecordingWithCompletionHandler:(id)a3;
- (void)saveClipToCameraRoll:(id)a3 extensionToken:(id)a4 handler:(id)a5;
- (void)saveClipToCameraRoll:(id)a3 handler:(id)a4;
- (void)saveVideo:(id)a3 extensionToken:(id)a4 handler:(id)a5;
- (void)saveVideo:(id)a3 handler:(id)a4;
- (void)saveVideoToCameraRoll:(id)a3 handler:(id)a4;
- (void)setBroadcastPickerPreferredExt:(id)a3 showsMicButton:(BOOL)a4;
- (void)setBroadcastURL:(id)a3;
- (void)setCurrentConnection:(id)a3;
- (void)setMicrophoneEnabled:(BOOL)a3;
- (void)setupBroadcastWithHostBundleID:(id)a3 broadcastExtensionBundleID:(id)a4 broadcastConfigurationData:(id)a5 userInfo:(id)a6 handler:(id)a7;
- (void)setupSystemBroadcastWithHostBundleID:(id)a3 broadcastExtensionBundleID:(id)a4 broadcastConfigurationData:(id)a5 userInfo:(id)a6 handler:(id)a7;
- (void)startClipBufferingWithContextID:(id)a3 windowSize:(CGSize)a4 microphoneEnabled:(BOOL)a5 cameraEnabled:(BOOL)a6 withCompletionHandler:(id)a7;
- (void)startHQLRWithSessionInfo:(id)a3 windowSize:(CGSize)a4 handler:(id)a5;
- (void)startInAppBroadcastWithContextID:(id)a3 windowSize:(CGSize)a4 microphoneEnabled:(BOOL)a5 cameraEnabled:(BOOL)a6 listenerEndpoint:(id)a7 withHandler:(id)a8;
- (void)startInAppCaptureWithContextID:(id)a3 windowSize:(CGSize)a4 microphoneEnabled:(BOOL)a5 cameraEnabled:(BOOL)a6 withHandler:(id)a7;
- (void)startInAppRecordingWithContextID:(id)a3 windowSize:(CGSize)a4 microphoneEnabled:(BOOL)a5 cameraEnabled:(BOOL)a6 withHandler:(id)a7;
- (void)startSystemBroadcastWithContextID:(id)a3 windowSize:(CGSize)a4 microphoneEnabled:(BOOL)a5 cameraEnabled:(BOOL)a6 mixedRealityCameraEnabled:(BOOL)a7 listenerEndpoint:(id)a8 withHandler:(id)a9;
- (void)startSystemRecordingWithContextID:(id)a3 windowSize:(CGSize)a4 microphoneEnabled:(BOOL)a5 cameraEnabled:(BOOL)a6 mixedRealityCameraEnabled:(BOOL)a7 withHandler:(id)a8;
- (void)stopAllActiveClients;
- (void)stopAndDiscardInAppRecordingFromFilePermissionErrorWithHandler:(id)a3;
- (void)stopClipBufferingWithCompletionHandler:(id)a3;
- (void)stopCurrentActiveSessionWithHandler:(id)a3;
- (void)stopHQLRWithHandler:(id)a3;
- (void)stopInAppBroadcastWithHandler:(id)a3;
- (void)stopInAppCaptureWithHandler:(id)a3;
- (void)stopInAppRecordingWithHandler:(id)a3;
- (void)stopInAppRecordingWithUrl:(id)a3 extensionToken:(id)a4 handler:(id)a5;
- (void)stopInAppRecordingWithUrl:(id)a3 handler:(id)a4;
- (void)stopSystemBroadcastWithHandler:(id)a3;
- (void)stopSystemRecordingWithHandler:(id)a3;
- (void)stopSystemRecordingWithURLHandler:(id)a3;
- (void)updateProcessIDForAudioCaptureWithPID:(int)a3;
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
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)hasBroadcastEntitlements
{
  v3 = +[NSXPCConnection currentConnection];
  v4 = [v3 valueForEntitlement:@"com.apple.private.replay-kit.can-setup-broadcast"];
  v5 = [v4 BOOLValue];

  LOBYTE(self) = v5 | [(RPConnectionManager *)self hasSystemRecordingEntitlements];
  return self & 1;
}

+ (BOOL)hasUnitTestEntitlement
{
  v3 = +[RPConnectionManager sharedInstance];
  v4 = [v3 currentConnection];
  v5 = [v4 valueForEntitlement:@"com.apple.internal.test.replaykit"];

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
    v17 = a1;
    v18 = 1024;
    v19 = [v5 BOOLValue];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %@ %p %d", &v10, 0x2Cu);
  }

  v8 = [v5 BOOLValue];

  return v8;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446466;
    v13 = "[RPConnectionManager listener:shouldAcceptNewConnection:]";
    v14 = 1024;
    v15 = 171;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v12, 0x12u);
  }

  [v7 setExportedObject:self];
  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPDaemonProtocol];
  v9 = [NSSet setWithObject:objc_opt_class()];
  [v8 setClasses:v9 forSelector:"startInAppRecordingWithContextID:windowSize:microphoneEnabled:cameraEnabled:withHandler:" argumentIndex:4 ofReply:0];

  [v7 setExportedInterface:v8];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPClientProtocol];
  [v7 setRemoteObjectInterface:v10];

  [(RPConnectionManager *)self processNewConnection:v7];
  [v7 resume];

  return 1;
}

- (void)processNewConnection:(id)a3
{
  v4 = a3;
  v5 = [v4 processIdentifier];
  v6 = [RPConnectionManager uniqueClientIdentifierWithPID:v5];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v20 = "[RPConnectionManager processNewConnection:]";
    v21 = 1024;
    v22 = 197;
    v23 = 1024;
    v24 = v5;
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
    v18 = v5;
    [v4 setInterruptionHandler:v16];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002BB0C;
    v13[3] = &unk_1000A1ED8;
    v13[4] = self;
    v8 = v7;
    v14 = v8;
    v15 = v5;
    [v4 setInvalidationHandler:v13];
    v9 = [(RPConnectionManager *)self connectionManagerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002BC70;
    block[3] = &unk_1000A1F00;
    block[4] = self;
    v11 = v4;
    v12 = v8;
    dispatch_sync(v9, block);
  }
}

- (void)setCurrentConnection:(id)a3
{
  v7 = a3;
  v4 = objc_storeWeak(&self->_currentConnection, v7);
  v5 = [v7 processIdentifier];

  v6 = +[RPMultipleClientProxy clientProxy];
  [v6 setCurrentConnectionProcessIdentifier:v5];
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

- (void)stopAndDiscardInAppRecordingFromFilePermissionErrorWithHandler:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
  [(RPRecordingManager *)recordingManager stopInAppRecordingWithHandler:v7];
}

- (void)stopCurrentActiveSessionWithHandler:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopCurrentActiveSessionWithHandler", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  v6 = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002C234;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
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

  v4 = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C38C;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (void)getSystemBroadcastExtensionInfo:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: getSystemBroadcastExtensionInfo", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  v6 = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002C50C;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (void)setBroadcastURL:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: setBroadcastURL", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  v6 = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002C68C;
  v8[3] = &unk_1000A1128;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (void)updateProcessIDForAudioCaptureWithPID:(int)a3
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

  v6 = [(RPConnectionManager *)self connectionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C858;
  v7[3] = &unk_1000A1F50;
  v7[4] = self;
  v8 = a3;
  dispatch_sync(v6, v7);
}

- (void)startInAppRecordingWithContextID:(id)a3 windowSize:(CGSize)a4 microphoneEnabled:(BOOL)a5 cameraEnabled:(BOOL)a6 withHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = a7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: startInAppRecordingWithContextID", buf, 2u);
  }

  v15 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v15];

  v16 = [(RPConnectionManager *)self connectionManagerQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002CA94;
  v19[3] = &unk_1000A1F78;
  v19[4] = self;
  v20 = v13;
  v22 = width;
  v23 = height;
  v24 = a5;
  v25 = a6;
  v21 = v14;
  v17 = v14;
  v18 = v13;
  dispatch_sync(v16, v19);
}

- (void)resumeInAppRecordingWithWindowLayerContextID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v9 = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002CD94;
  block[3] = &unk_1000A10D8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v9, block);
}

- (void)stopInAppRecordingWithHandler:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopInAppRecordingWithHandler", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  v6 = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002D048;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (void)stopInAppRecordingWithUrl:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006281C();
  }

  v8 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v8];

  v9 = [(RPConnectionManager *)self connectionManagerQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002D298;
  v11[3] = &unk_1000A11E0;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  dispatch_sync(v9, v11);
}

- (void)stopInAppRecordingWithUrl:(id)a3 extensionToken:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

  v12 = [(RPConnectionManager *)self connectionManagerQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002D46C;
  v16[3] = &unk_1000A1FC8;
  v16[4] = self;
  v17 = v9;
  v18 = v8;
  v19 = v10;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  dispatch_sync(v12, v16);
}

- (void)discardInAppRecordingWithHandler:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: discardInAppRecordingWithHandler", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  v6 = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002D7F8;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
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

  v4 = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D950;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (void)startInAppCaptureWithContextID:(id)a3 windowSize:(CGSize)a4 microphoneEnabled:(BOOL)a5 cameraEnabled:(BOOL)a6 withHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = a7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: startInAppCaptureWithContextID", buf, 2u);
  }

  v15 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v15];

  v16 = [(RPConnectionManager *)self connectionManagerQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002DB20;
  v19[3] = &unk_1000A1F78;
  v19[4] = self;
  v20 = v13;
  v22 = width;
  v23 = height;
  v24 = a5;
  v25 = a6;
  v21 = v14;
  v17 = v14;
  v18 = v13;
  dispatch_sync(v16, v19);
}

- (void)stopInAppCaptureWithHandler:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopInAppCaptureWithHandler", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  v6 = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002DD98;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
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

  v4 = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002DFA4;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (void)resumeInAppCaptureWithWindowLayerContextID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v9 = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E1AC;
  block[3] = &unk_1000A10D8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v9, block);
}

- (void)setupBroadcastWithHostBundleID:(id)a3 broadcastExtensionBundleID:(id)a4 broadcastConfigurationData:(id)a5 userInfo:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
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
    v17 = [(RPConnectionManager *)self connectionManagerQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002E5AC;
    v19[3] = &unk_1000A1FF0;
    v19[4] = self;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = v16;
    dispatch_sync(v17, v19);
  }

  else
  {
    if (v16)
    {
      v18 = [NSError errorWithDomain:@"com.apple.ReplayKit.RPRecordingErrorDomain" code:-5819 userInfo:0];
      (*(v16 + 2))(v16, v18);
    }

    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006299C();
    }
  }
}

- (void)startInAppBroadcastWithContextID:(id)a3 windowSize:(CGSize)a4 microphoneEnabled:(BOOL)a5 cameraEnabled:(BOOL)a6 listenerEndpoint:(id)a7 withHandler:(id)a8
{
  height = a4.height;
  width = a4.width;
  v15 = a3;
  v16 = a7;
  v17 = a8;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: startInAppBroadcastWithContextID", buf, 2u);
  }

  v18 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v18];

  v19 = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E814;
  block[3] = &unk_1000A2018;
  block[4] = self;
  v24 = v15;
  v27 = width;
  v28 = height;
  v29 = a5;
  v30 = a6;
  v25 = v16;
  v26 = v17;
  v20 = v17;
  v21 = v16;
  v22 = v15;
  dispatch_sync(v19, block);
}

- (void)stopInAppBroadcastWithHandler:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopInAppBroadcastWithHandler", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  v6 = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002EA90;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
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

  v4 = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002EC9C;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (void)resumeInAppBroadcastWithWindowLayerContextID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v9 = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002EEA4;
  block[3] = &unk_1000A10D8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v9, block);
}

- (void)startSystemRecordingWithContextID:(id)a3 windowSize:(CGSize)a4 microphoneEnabled:(BOOL)a5 cameraEnabled:(BOOL)a6 mixedRealityCameraEnabled:(BOOL)a7 withHandler:(id)a8
{
  height = a4.height;
  width = a4.width;
  v15 = a3;
  v16 = a8;
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

    v18 = [(RPConnectionManager *)self connectionManagerQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002F294;
    v20[3] = &unk_1000A2040;
    v20[4] = self;
    v21 = v15;
    v23 = width;
    v24 = height;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v22 = v16;
    dispatch_sync(v18, v20);
  }

  else
  {
    if (v16)
    {
      v19 = [NSError errorWithDomain:@"com.apple.ReplayKit.RPRecordingErrorDomain" code:-5810 userInfo:0];
      (*(v16 + 2))(v16, v19);
    }

    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062A1C();
    }
  }
}

- (void)stopSystemRecordingWithHandler:(id)a3
{
  v4 = a3;
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

    v6 = [(RPConnectionManager *)self connectionManagerQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002F5DC;
    v8[3] = &unk_1000A11E0;
    v8[4] = self;
    v9 = v4;
    dispatch_sync(v6, v8);
  }

  else
  {
    if (v4)
    {
      v7 = [NSError errorWithDomain:@"com.apple.ReplayKit.RPRecordingErrorDomain" code:-5810 userInfo:0];
      (*(v4 + 2))(v4, v7);
    }

    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062A9C();
    }
  }
}

- (void)stopSystemRecordingWithURLHandler:(id)a3
{
  v4 = a3;
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

    v6 = [(RPConnectionManager *)self connectionManagerQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002F8F4;
    v8[3] = &unk_1000A11E0;
    v8[4] = self;
    v9 = v4;
    dispatch_sync(v6, v8);
  }

  else
  {
    if (v4)
    {
      v7 = [NSError errorWithDomain:@"com.apple.ReplayKit.RPRecordingErrorDomain" code:-5810 userInfo:0];
      (*(v4 + 2))(v4, 0, v7);
    }

    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062B1C();
    }
  }
}

- (void)resumeSystemRecordingWithCompletionHandler:(id)a3
{
  v4 = a3;
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
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else if (!v4)
    {
      goto LABEL_10;
    }

    v4[2](v4, 0);
    goto LABEL_10;
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  v6 = [(RPConnectionManager *)self connectionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002FBFC;
  v7[3] = &unk_1000A11E0;
  v7[4] = self;
  v8 = v4;
  dispatch_sync(v6, v7);

LABEL_10:
}

- (void)setupSystemBroadcastWithHostBundleID:(id)a3 broadcastExtensionBundleID:(id)a4 broadcastConfigurationData:(id)a5 userInfo:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: setupSystemBroadcastWithHostBundleID", buf, 2u);
  }

  v17 = +[NSXPCConnection currentConnection];
  v18 = [v17 valueForEntitlement:@"com.apple.private.replay-kit.can-setup-broadcast"];
  v19 = [v18 BOOLValue];

  v20 = [v17 valueForEntitlement:@"com.apple.private.replay-kit"];
  v21 = [v20 BOOLValue];

  if ((v19 & 1) != 0 || v21)
  {
    v23 = [(RPConnectionManager *)self connectionManagerQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10002FFF4;
    v24[3] = &unk_1000A1FF0;
    v24[4] = self;
    v25 = v12;
    v26 = v13;
    v27 = v14;
    v28 = v15;
    v29 = v16;
    dispatch_sync(v23, v24);
  }

  else
  {
    if (v16)
    {
      v22 = [NSError errorWithDomain:@"com.apple.ReplayKit.RPRecordingErrorDomain" code:-5819 userInfo:0];
      (*(v16 + 2))(v16, v22);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: setupBroadcastWithHostBundleID failed because client doesn't have entitlements to setup broadcast", buf, 2u);
    }
  }
}

- (void)startSystemBroadcastWithContextID:(id)a3 windowSize:(CGSize)a4 microphoneEnabled:(BOOL)a5 cameraEnabled:(BOOL)a6 mixedRealityCameraEnabled:(BOOL)a7 listenerEndpoint:(id)a8 withHandler:(id)a9
{
  height = a4.height;
  width = a4.width;
  v17 = a3;
  v18 = a8;
  v19 = a9;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: startSystemBroadcastWithContextID", buf, 2u);
  }

  v20 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v20];

  v21 = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000302CC;
  block[3] = &unk_1000A2068;
  block[4] = self;
  v26 = v17;
  v29 = width;
  v30 = height;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v27 = v18;
  v28 = v19;
  v22 = v19;
  v23 = v18;
  v24 = v17;
  dispatch_sync(v21, block);
}

- (void)stopSystemBroadcastWithHandler:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopSystemBroadcastWithHandler", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  v6 = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100030540;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (void)resumeSystemBroadcastWithCompletionHandler:(id)a3
{
  v4 = a3;
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
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else if (!v4)
    {
      goto LABEL_10;
    }

    v4[2](v4, 0);
    goto LABEL_10;
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  v6 = [(RPConnectionManager *)self connectionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003082C;
  v7[3] = &unk_1000A11E0;
  v7[4] = self;
  v8 = v4;
  dispatch_sync(v6, v7);

LABEL_10:
}

- (void)startHQLRWithSessionInfo:(id)a3 windowSize:(CGSize)a4 handler:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
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

    v12 = [(RPConnectionManager *)self connectionManagerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100030BD8;
    block[3] = &unk_1000A2090;
    block[4] = self;
    v15 = v9;
    v17 = width;
    v18 = height;
    v16 = v10;
    dispatch_sync(v12, block);
  }

  else
  {
    if (v10)
    {
      v13 = [NSError errorWithDomain:@"com.apple.ReplayKit.RPRecordingErrorDomain" code:-5810 userInfo:0];
      (*(v10 + 2))(v10, v13);
    }

    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062C9C();
    }
  }
}

- (void)stopHQLRWithHandler:(id)a3
{
  v4 = a3;
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

    v6 = [(RPConnectionManager *)self connectionManagerQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100030F00;
    v8[3] = &unk_1000A11E0;
    v8[4] = self;
    v9 = v4;
    dispatch_sync(v6, v8);
  }

  else
  {
    if (v4)
    {
      v7 = [NSError errorWithDomain:@"com.apple.ReplayKit.RPRecordingErrorDomain" code:-5810 userInfo:0];
      (*(v4 + 2))(v4, v7);
    }

    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062D1C();
    }
  }
}

- (void)resumeHQLRWithCompletionHandler:(id)a3
{
  v4 = a3;
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
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else if (!v4)
    {
      goto LABEL_10;
    }

    v4[2](v4, 0);
    goto LABEL_10;
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  v6 = [(RPConnectionManager *)self connectionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000311EC;
  v7[3] = &unk_1000A11E0;
  v7[4] = self;
  v8 = v4;
  dispatch_sync(v6, v7);

LABEL_10:
}

- (void)startClipBufferingWithContextID:(id)a3 windowSize:(CGSize)a4 microphoneEnabled:(BOOL)a5 cameraEnabled:(BOOL)a6 withCompletionHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = a7;
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

  v16 = [(RPConnectionManager *)self connectionManagerQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100031538;
  v19[3] = &unk_1000A1F78;
  v19[4] = self;
  v20 = v13;
  v22 = width;
  v23 = height;
  v24 = a5;
  v25 = a6;
  v21 = v14;
  v17 = v14;
  v18 = v13;
  dispatch_sync(v16, v19);
}

- (void)stopClipBufferingWithCompletionHandler:(id)a3
{
  v4 = a3;
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

  v6 = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100031878;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (void)exportClipToURL:(id)a3 duration:(double)a4 completionHandler:(id)a5
{
  v6 = a3;
  v7 = a5;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100062E1C();
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v7)
  {
LABEL_4:
    v8 = [NSError _rpUserErrorForCode:-5835 userInfo:0];
    v7[2](v7, v8);
  }

LABEL_5:
}

- (void)exportClipToURL:(id)a3 duration:(double)a4 extensionToken:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
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

  v14 = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031C7C;
  block[3] = &unk_1000A20B8;
  block[4] = self;
  v19 = v11;
  v20 = v10;
  v21 = v12;
  v22 = a4;
  v15 = v10;
  v16 = v12;
  v17 = v11;
  dispatch_sync(v14, block);
}

- (void)resumeInAppClipWithWindowLayerContextID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v9 = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000320D4;
  block[3] = &unk_1000A10D8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v9, block);
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

  v4 = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032360;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (void)macApplicationDidBecomeActiveWithContextID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v9 = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032568;
  block[3] = &unk_1000A10D8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v9, block);
}

- (void)saveVideo:(id)a3 handler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100062F9C();
  }

  v7 = [NSError _rpUserErrorForCode:-5835 userInfo:0];
  v6[2](v6, v7);
}

- (void)saveVideo:(id)a3 extensionToken:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v19 = [(RPConnectionManager *)self consumeSandboxExtensionToken:v9];
  if (*(*&buf[8] + 24) == -1)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006301C();
    }

    v13 = [NSError _rpUserErrorForCode:-5835 userInfo:0];
    v10[2](v10, v13);
  }

  else
  {
    v12 = [(RPConnectionManager *)self connectionManagerQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100032958;
    v14[3] = &unk_1000A20E0;
    v14[4] = self;
    v15 = v8;
    v17 = buf;
    v16 = v10;
    dispatch_sync(v12, v14);
  }

  _Block_object_dispose(buf, 8);
}

- (void)saveVideoToCameraRoll:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: saveVideoToCameraRoll", buf, 2u);
  }

  v8 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v8];

  v9 = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032C6C;
  block[3] = &unk_1000A10D8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v9, block);
}

- (void)saveClipToCameraRoll:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: saveClipToCameraRoll", buf, 2u);
  }

  v8 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v8];

  v9 = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032E18;
  block[3] = &unk_1000A10D8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v9, block);
}

- (void)saveClipToCameraRoll:(id)a3 extensionToken:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v19 = [(RPConnectionManager *)self consumeSandboxExtensionToken:v9];
  if (*(*&buf[8] + 24) == -1)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006311C();
    }

    v13 = [NSError _rpUserErrorForCode:-5835 userInfo:0];
    v10[2](v10, v13);
  }

  else
  {
    v12 = [(RPConnectionManager *)self connectionManagerQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100033100;
    v14[3] = &unk_1000A20E0;
    v14[4] = self;
    v15 = v8;
    v17 = buf;
    v16 = v10;
    dispatch_sync(v12, v14);
  }

  _Block_object_dispose(buf, 8);
}

- (void)reportCameraUsage:(int64_t)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: reportCameraUsage", buf, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  v6 = [(RPConnectionManager *)self connectionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000333D4;
  v7[3] = &unk_1000A1230;
  v7[4] = self;
  v7[5] = a3;
  dispatch_sync(v6, v7);
}

- (int64_t)consumeSandboxExtensionToken:(id)a3
{
  v3 = [a3 UTF8String];

  return _sandbox_extension_consume(v3);
}

- (void)consumeSandboxExtension:(id)a3 processNewConnection:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 136446466;
    *&v10[4] = "[RPConnectionManager consumeSandboxExtension:processNewConnection:]";
    v11 = 1024;
    v12 = 900;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", v10, 0x12u);
  }

  if (!v6)
  {
    sub_10006329C(v10);
    v8 = *v10;
    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = [(RPConnectionManager *)self consumeSandboxExtensionToken:v6];
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

    if (!v4)
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

- (void)setMicrophoneEnabled:(BOOL)a3
{
  v3 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "[RPConnectionManager setMicrophoneEnabled:]";
    v11 = 1024;
    v12 = 925;
    v13 = 1024;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d microphone set:%d ", buf, 0x18u);
  }

  v5 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v5];

  v6 = [(RPConnectionManager *)self connectionManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000337E4;
  v7[3] = &unk_1000A2108;
  v7[4] = self;
  v8 = v3;
  dispatch_sync(v6, v7);
}

- (void)getSystemBroadcastPickerInfo:(id)a3
{
  v4 = a3;
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

  v6 = [(RPConnectionManager *)self connectionManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100033974;
  v8[3] = &unk_1000A11E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (void)setBroadcastPickerPreferredExt:(id)a3 showsMicButton:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v14 = "[RPConnectionManager setBroadcastPickerPreferredExt:showsMicButton:]";
    v15 = 1024;
    v16 = 942;
    v17 = 2112;
    v18 = v6;
    v19 = 1024;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d preferred ext:%@  shows mic button:%i", buf, 0x22u);
  }

  v7 = +[NSXPCConnection currentConnection];
  [(RPConnectionManager *)self setCurrentConnection:v7];

  v8 = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033BB4;
  block[3] = &unk_1000A2130;
  block[4] = self;
  v11 = v6;
  v12 = v4;
  v9 = v6;
  dispatch_sync(v8, block);
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

  v4 = [(RPConnectionManager *)self connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033DB8;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (NSXPCConnection)currentConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_currentConnection);

  return WeakRetained;
}

@end