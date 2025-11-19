@interface RPRecordingManager
- (RPRecordingManager)initWithConnectionManager:(id)a3;
- (id)getCallingConnectionBundleID;
- (id)getCallingConnectionClient;
- (id)purge:(id)a3 urgency:(int)a4;
- (void)applicationDisconnectedWithBundleID:(id)a3 withProcessIdentifier:(int)a4;
- (void)connectionManagerDidAcceptNewConnection:(id)a3 bundleIdentifier:(id)a4;
- (void)dealloc;
- (void)discardInAppRecordingWithHandler:(id)a3;
- (void)exportClipToURL:(id)a3 duration:(double)a4 completionHandler:(id)a5;
- (void)getSystemBroadcastExtensionInfo:(id)a3;
- (void)getSystemBroadcastPickerInfo:(id)a3;
- (void)macApplicationDidBecomeActiveWithContextID:(id)a3 completionHandler:(id)a4;
- (void)macApplicationDidResignActive;
- (void)openControlCenterSystemRecordingView;
- (void)pauseInAppBroadcast;
- (void)pauseInAppCapture;
- (void)pauseInAppRecording;
- (void)reportCameraUsage:(int64_t)a3;
- (void)resumeHQLRWithCompletionHandler:(id)a3;
- (void)resumeInAppBroadcastWithWindowLayerContextID:(id)a3 completionHandler:(id)a4;
- (void)resumeInAppCaptureWithWindowLayerContextID:(id)a3 completionHandler:(id)a4;
- (void)resumeInAppClipWithWindowLayerContextID:(id)a3 completionHandler:(id)a4;
- (void)resumeInAppRecordingWithWindowLayerContextID:(id)a3 completionHandler:(id)a4;
- (void)resumeSystemBroadcastWithCompletionHandler:(id)a3;
- (void)resumeSystemRecordingWithCompletionHandler:(id)a3;
- (void)saveClipToCameraRoll:(id)a3 handler:(id)a4;
- (void)saveVideo:(id)a3 handler:(id)a4;
- (void)saveVideoToCameraRoll:(id)a3 handler:(id)a4;
- (void)setBroadcastPickerPreferredExt:(id)a3 showsMicButton:(BOOL)a4;
- (void)setBroadcastURL:(id)a3;
- (void)setUpMemoryPressureNotification;
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
- (void)stopClipBufferingWithCompletionHandler:(id)a3;
- (void)stopCurrentActiveSessionWithHandler:(id)a3;
- (void)stopHQLRWithHandler:(id)a3;
- (void)stopInAppBroadcastWithHandler:(id)a3;
- (void)stopInAppCaptureWithHandler:(id)a3;
- (void)stopInAppRecordingWithHandler:(id)a3;
- (void)stopInAppRecordingWithUrl:(id)a3 handler:(id)a4;
- (void)stopSystemBroadcastWithHandler:(id)a3;
- (void)stopSystemRecordingWithHandler:(id)a3;
- (void)stopSystemRecordingWithURLHandler:(id)a3;
- (void)updateClient:(id)a3 withHostBundleID:(id)a4 broadcastExtensionBundleID:(id)a5 broadcastConfigurationData:(id)a6 userInfo:(id)a7 isSystemBroadcast:(BOOL)a8 handler:(id)a9;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation RPRecordingManager

- (RPRecordingManager)initWithConnectionManager:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RPRecordingManager;
  v5 = [(RPRecordingManager *)&v11 init];
  if (v5)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v13 = "[RPRecordingManager initWithConnectionManager:]";
      v14 = 1024;
      v15 = 167;
      v16 = 2048;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    [(RPRecordingManager *)v5 setConnectionManager:v4];
    v6 = +[NSMutableDictionary dictionary];
    [(RPRecordingManager *)v5 setCurrentAvailableExtensions:v6];

    v7 = +[NSMutableDictionary dictionary];
    [(RPRecordingManager *)v5 setStreamUpdateFilterTimers:v7];

    v8 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.ReplayKitNotifications"];
    [(RPRecordingManager *)v5 setUserNotificationCenter:v8];

    [(UNUserNotificationCenter *)v5->_userNotificationCenter setDelegate:v5];
    [(UNUserNotificationCenter *)v5->_userNotificationCenter setWantsNotificationResponsesDelivered];
    v9 = +[NSFileManager defaultManager];
    [v9 _srSetupTempDirectory];

    [(RPRecordingManager *)v5 setUpMemoryPressureNotification];
  }

  return v5;
}

- (void)dealloc
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPRecordingManager dealloc]";
    v6 = 1024;
    v7 = 204;
    v8 = 2048;
    v9 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v3.receiver = self;
  v3.super_class = RPRecordingManager;
  [(RPRecordingManager *)&v3 dealloc];
}

- (void)setUpMemoryPressureNotification
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "[RPRecordingManager setUpMemoryPressureNotification]";
    v11 = 1024;
    v12 = 215;
    v13 = 2048;
    v14 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100017228;
  v8[3] = &unk_1000A1758;
  v8[4] = self;
  v3 = objc_retainBlock(v8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017314;
  v7[3] = &unk_1000A1758;
  v7[4] = self;
  v4 = objc_retainBlock(v7);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000174C0;
  v6[3] = &unk_1000A1758;
  v6[4] = self;
  v5 = objc_retainBlock(v6);
  CacheDeleteRegisterInfoCallbacks();
}

- (id)purge:(id)a3 urgency:(int)a4
{
  v6 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  if ([(RPRecordingManager *)self volumeMatchesCachePath:v6])
  {
    v7 = +[NSFileManager defaultManager];
    v8 = [v7 _srSizeOfTempDir:0];

    if (a4 >= 3)
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v18 = "[RPRecordingManager purge:urgency:]";
        v19 = 1024;
        v20 = 263;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d cacheDeleteUrgencyHigh", buf, 0x12u);
      }

      v9 = [(RPRecordingManager *)self getCallingConnectionClient];
      [v9 handleMemoryWarningForCurrentActiveSession];
      v10 = +[RPClientManager sharedInstance];
      v11 = [NSError _scUserErrorForCode:-3805 userInfo:0];
      [v10 stopAllClientStreamsWithError:v11];
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = [NSNumber numberWithLongLong:v8, @"CACHE_DELETE_VOLUME", @"CACHE_DELETE_AMOUNT", v6];
  v16[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:&v15 count:2];

  return v13;
}

- (void)connectionManagerDidAcceptNewConnection:(id)a3 bundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[RPClientManager sharedInstance];
  v8 = [v7 getClientWithBundleID:v5];

  if (v8)
  {
    v9 = [[RPClientProxy alloc] initWithConnection:v6];
    [v8 setClientProxy:v9];

    v10 = [v6 processIdentifier];
    [v8 setClientPID:v10];
  }

  else
  {
    v11 = [RPClient alloc];
    v12 = [[RPClientProxy alloc] initWithConnection:v6];
    v13 = [(RPClient *)v11 initWithConnection:v6 clientProxy:v12 bundleIdentifier:v5];

    if (v13)
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136446466;
        v16 = "[RPRecordingManager connectionManagerDidAcceptNewConnection:bundleIdentifier:]";
        v17 = 1024;
        v18 = 318;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d client created and adding to client manager", &v15, 0x12u);
      }

      v14 = +[RPClientManager sharedInstance];
      [v14 addClient:v13];
    }

    else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100060B4C();
    }
  }
}

- (void)applicationDisconnectedWithBundleID:(id)a3 withProcessIdentifier:(int)a4
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPRecordingManager: applicationDisconnected", buf, 2u);
  }

  v5 = +[RPClientManager sharedInstance];
  v6 = [v5 getClientWithBundleID:v4];

  if (v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100017DAC;
    v7[3] = &unk_1000A17A0;
    v8 = v6;
    [v8 stopCurrentActiveSessionWithHandler:v7];
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPRecordingManager applicationDisconnectedWithBundleID:withProcessIdentifier:]";
    v11 = 1024;
    v12 = 353;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d client disconnected, RPClient representation not found or removed", buf, 0x12u);
  }
}

- (void)startInAppRecordingWithContextID:(id)a3 windowSize:(CGSize)a4 microphoneEnabled:(BOOL)a5 cameraEnabled:(BOOL)a6 withHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = a7;
  v15 = +[RPClientManager sharedInstance];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100017FCC;
  v18[3] = &unk_1000A17F0;
  v18[4] = self;
  v19 = v13;
  v21 = width;
  v22 = height;
  v23 = a5;
  v24 = a6;
  v20 = v14;
  v16 = v14;
  v17 = v13;
  [v15 stopAllClientsWithHandler:v18];
}

- (void)stopInAppRecordingWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000181CC;
  v7[3] = &unk_1000A1818;
  v8 = v4;
  v6 = v4;
  [v5 stopInAppRecordingSessionWithHandler:v7];
}

- (void)stopInAppRecordingWithUrl:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v15 = "[RPRecordingManager stopInAppRecordingWithUrl:handler:]";
    v16 = 1024;
    v17 = 519;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v8 = [(RPRecordingManager *)self getCallingConnectionClient];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001835C;
  v11[3] = &unk_1000A1868;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 stopInAppRecordingSessionWithHandler:v11];
}

- (void)pauseInAppRecording
{
  v2 = [(RPRecordingManager *)self getCallingConnectionClient];
  [v2 pauseInAppRecording];
}

- (void)resumeInAppRecordingWithWindowLayerContextID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RPRecordingManager *)self getCallingConnectionClient];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100018688;
  v10[3] = &unk_1000A17C8;
  v11 = v6;
  v9 = v6;
  [v8 resumeInAppRecordingWithContextID:v7 completionHandler:v10];
}

- (void)discardInAppRecordingWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RPRecordingManager *)self getCallingConnectionClient];
  [v5 discardInAppRecordingWithHandler:v4];
}

- (void)startInAppCaptureWithContextID:(id)a3 windowSize:(CGSize)a4 microphoneEnabled:(BOOL)a5 cameraEnabled:(BOOL)a6 withHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = a7;
  v15 = +[RPClientManager sharedInstance];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100018808;
  v18[3] = &unk_1000A17F0;
  v18[4] = self;
  v19 = v13;
  v21 = width;
  v22 = height;
  v23 = a5;
  v24 = a6;
  v20 = v14;
  v16 = v14;
  v17 = v13;
  [v15 stopAllClientsWithHandler:v18];
}

- (void)stopInAppCaptureWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018A08;
  v7[3] = &unk_1000A11B8;
  v8 = v4;
  v6 = v4;
  [v5 stopInAppCaptureSessionWithHandler:v7];
}

- (void)pauseInAppCapture
{
  v2 = [(RPRecordingManager *)self getCallingConnectionClient];
  [v2 pauseInAppCapture];
}

- (void)resumeInAppCaptureWithWindowLayerContextID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RPRecordingManager *)self getCallingConnectionClient];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100018B28;
  v10[3] = &unk_1000A17C8;
  v11 = v6;
  v9 = v6;
  [v8 resumeInAppCaptureWithContextID:v7 completionHandler:v10];
}

- (void)updateClient:(id)a3 withHostBundleID:(id)a4 broadcastExtensionBundleID:(id)a5 broadcastConfigurationData:(id)a6 userInfo:(id)a7 isSystemBroadcast:(BOOL)a8 handler:(id)a9
{
  v9 = a8;
  v15 = a9;
  v16 = v15;
  if (v9)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100018FB8;
    v20[3] = &unk_1000A11B8;
    v17 = &v21;
    v21 = v15;
    [a3 setupSystemBroadcastWithHostBundleID:a4 broadcastExtensionBundleID:a5 broadcastConfigurationData:a6 userInfo:a7 handler:v20];
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100019034;
    v18[3] = &unk_1000A11B8;
    v17 = &v19;
    v19 = v15;
    [a3 setupInAppBroadcastExtensionBundleID:a5 broadcastConfigurationData:a6 userInfo:a7 handler:v18];
  }
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
    v20 = "[RPRecordingManager setupBroadcastWithHostBundleID:broadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]";
    v21 = 1024;
    v22 = 695;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Getting client and setting up broadcast", buf, 0x12u);
  }

  v17 = +[RPClientManager sharedInstance];
  v18 = [v17 getClientForBroadcastWithHostBundleID:v12];

  if (v18)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v20 = "[RPRecordingManager setupBroadcastWithHostBundleID:broadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]";
      v21 = 1024;
      v22 = 704;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Calling set up in app broadcast on client: %@", buf, 0x1Cu);
    }

    [(RPRecordingManager *)self updateClient:v18 withHostBundleID:v12 broadcastExtensionBundleID:v13 broadcastConfigurationData:v14 userInfo:v15 isSystemBroadcast:0 handler:v16];
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v20 = "[RPRecordingManager setupBroadcastWithHostBundleID:broadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]";
      v21 = 1024;
      v22 = 700;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Calling client doesn't not exist, we need to create a new client with bundleID: %@", buf, 0x1Cu);
    }

    [(RPRecordingManager *)self createNewBroadcastClientWithBundleID:v12 broadcastExtensionBundleID:v13 broadcastConfigurationData:v14 userInfo:v15 isSystemBroadcast:0 handler:v16];
  }
}

- (void)startInAppBroadcastWithContextID:(id)a3 windowSize:(CGSize)a4 microphoneEnabled:(BOOL)a5 cameraEnabled:(BOOL)a6 listenerEndpoint:(id)a7 withHandler:(id)a8
{
  height = a4.height;
  width = a4.width;
  v15 = a3;
  v16 = a7;
  v17 = a8;
  v18 = +[RPClientManager sharedInstance];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100019480;
  v22[3] = &unk_1000A1890;
  v22[4] = self;
  v23 = v15;
  v26 = width;
  v27 = height;
  v28 = a5;
  v29 = a6;
  v24 = v16;
  v25 = v17;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  [v18 stopAllClientsWithHandler:v22];
}

- (void)stopInAppBroadcastWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000197A4;
  v7[3] = &unk_1000A11B8;
  v8 = v4;
  v6 = v4;
  [v5 stopInAppBroadcastSessionWithHandler:v7];
}

- (void)pauseInAppBroadcast
{
  v2 = [(RPRecordingManager *)self getCallingConnectionClient];
  [v2 pauseInAppBroadcast];
}

- (void)resumeInAppBroadcastWithWindowLayerContextID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RPRecordingManager *)self getCallingConnectionClient];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000199C8;
  v10[3] = &unk_1000A17C8;
  v11 = v6;
  v9 = v6;
  [v8 resumeInAppBroadcastWithContextID:v7 completionHandler:v10];
}

- (void)setBroadcastURL:(id)a3
{
  v4 = a3;
  v5 = [(RPRecordingManager *)self getCallingConnectionClient];
  [v5 updateBroadcastURL:v4];
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
    v29 = "[RPRecordingManager startSystemRecordingWithContextID:windowSize:microphoneEnabled:cameraEnabled:mixedRealityCameraEnabled:withHandler:]";
    v30 = 1024;
    v31 = 788;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v17 = +[RPClientManager sharedInstance];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100019BFC;
  v20[3] = &unk_1000A18B8;
  v20[4] = self;
  v21 = v15;
  v23 = width;
  v24 = height;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v22 = v16;
  v18 = v16;
  v19 = v15;
  [v17 stopAllClientsWithHandler:v20];
}

- (void)stopSystemRecordingWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100019E78;
  v7[3] = &unk_1000A11B8;
  v8 = v4;
  v6 = v4;
  [v5 stopSystemRecordingSessionWithHandler:v7];
}

- (void)stopSystemRecordingWithURLHandler:(id)a3
{
  v4 = a3;
  v5 = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100019F3C;
  v7[3] = &unk_1000A1818;
  v8 = v4;
  v6 = v4;
  [v5 stopSystemRecordingSessionWithURLHandler:v7];
}

- (void)resumeSystemRecordingWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A000;
  v7[3] = &unk_1000A18E0;
  v8 = v4;
  v6 = v4;
  [v5 resumeSystemRecordingWithCompletionHandler:v7];
}

- (void)setupSystemBroadcastWithHostBundleID:(id)a3 broadcastExtensionBundleID:(id)a4 broadcastConfigurationData:(id)a5 userInfo:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v20 = "[RPRecordingManager setupSystemBroadcastWithHostBundleID:broadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]";
    v21 = 1024;
    v22 = 863;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Getting client and setting up broadcast", buf, 0x12u);
  }

  v17 = +[RPClientManager sharedInstance];
  v18 = [v17 getClientWithBundleID:v12];

  if (v18)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v20 = "[RPRecordingManager setupSystemBroadcastWithHostBundleID:broadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]";
      v21 = 1024;
      v22 = 872;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Calling set up system broadcast on client: %@", buf, 0x1Cu);
    }

    [(RPRecordingManager *)self updateClient:v18 withHostBundleID:v12 broadcastExtensionBundleID:v13 broadcastConfigurationData:v14 userInfo:v15 isSystemBroadcast:1 handler:v16];
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v20 = "[RPRecordingManager setupSystemBroadcastWithHostBundleID:broadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]";
      v21 = 1024;
      v22 = 868;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Calling client doesn't not exist, we need to create a new client with bundleID: %@", buf, 0x1Cu);
    }

    [(RPRecordingManager *)self createNewBroadcastClientWithBundleID:v12 broadcastExtensionBundleID:v13 broadcastConfigurationData:v14 userInfo:v15 isSystemBroadcast:1 handler:v16];
  }
}

- (void)startSystemBroadcastWithContextID:(id)a3 windowSize:(CGSize)a4 microphoneEnabled:(BOOL)a5 cameraEnabled:(BOOL)a6 mixedRealityCameraEnabled:(BOOL)a7 listenerEndpoint:(id)a8 withHandler:(id)a9
{
  height = a4.height;
  width = a4.width;
  v17 = a3;
  v18 = a8;
  v19 = a9;
  v20 = +[RPClientManager sharedInstance];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001A3F0;
  v24[3] = &unk_1000A1908;
  v24[4] = self;
  v25 = v17;
  v28 = width;
  v29 = height;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v26 = v18;
  v27 = v19;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  [v20 stopAllClientsWithHandler:v24];
}

- (void)stopSystemBroadcastWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A604;
  v7[3] = &unk_1000A11B8;
  v8 = v4;
  v6 = v4;
  [v5 stopSystemBroadcastSessionWithHandler:v7];
}

- (void)resumeSystemBroadcastWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A6C8;
  v7[3] = &unk_1000A18E0;
  v8 = v4;
  v6 = v4;
  [v5 resumeSystemBroadcastWithCompletionHandler:v7];
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
    v20 = "[RPRecordingManager startHQLRWithSessionInfo:windowSize:handler:]";
    v21 = 1024;
    v22 = 934;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v11 = +[RPClientManager sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001A874;
  v14[3] = &unk_1000A1930;
  v14[4] = self;
  v15 = v9;
  v17 = width;
  v18 = height;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 stopAllClientsWithHandler:v14];
}

- (void)stopHQLRWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001AAD0;
  v7[3] = &unk_1000A11B8;
  v8 = v4;
  v6 = v4;
  [v5 stopHQLRSessionWithHandler:v7];
}

- (void)resumeHQLRWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001AB94;
  v7[3] = &unk_1000A18E0;
  v8 = v4;
  v6 = v4;
  [v5 resumeHQLRSessionWithCompletionHandler:v7];
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
    v26 = "[RPRecordingManager startClipBufferingWithContextID:windowSize:microphoneEnabled:cameraEnabled:withCompletionHandler:]";
    v27 = 1024;
    v28 = 987;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v15 = +[RPClientManager sharedInstance];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001AD58;
  v18[3] = &unk_1000A17F0;
  v18[4] = self;
  v19 = v13;
  v21 = width;
  v22 = height;
  v23 = a5;
  v24 = a6;
  v20 = v14;
  v16 = v14;
  v17 = v13;
  [v15 stopAllClientsWithHandler:v18];
}

- (void)stopClipBufferingWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPRecordingManager stopClipBufferingWithCompletionHandler:]";
    v11 = 1024;
    v12 = 1014;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v5 = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001AFFC;
  v7[3] = &unk_1000A11B8;
  v8 = v4;
  v6 = v4;
  [v5 stopInAppClipSessionWithHandler:v7];
}

- (void)exportClipToURL:(id)a3 duration:(double)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v15 = "[RPRecordingManager exportClipToURL:duration:completionHandler:]";
    v16 = 1024;
    v17 = 1028;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v10 = [(RPRecordingManager *)self getCallingConnectionClient];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001B190;
  v12[3] = &unk_1000A11B8;
  v13 = v9;
  v11 = v9;
  [v10 exportClipToURL:v8 duration:v12 completionHandler:a4];
}

- (void)resumeInAppClipWithWindowLayerContextID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RPRecordingManager *)self getCallingConnectionClient];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001B270;
  v10[3] = &unk_1000A17C8;
  v11 = v6;
  v9 = v6;
  [v8 resumeInAppClipWithContextID:v7 completionHandler:v10];
}

- (id)getCallingConnectionBundleID
{
  v2 = [(RPRecordingManager *)self connectionManager];
  v3 = [v2 currentConnection];

  v4 = +[RPConnectionManager uniqueClientIdentifierWithPID:](RPConnectionManager, "uniqueClientIdentifierWithPID:", [v3 processIdentifier]);

  return v4;
}

- (id)getCallingConnectionClient
{
  v2 = [(RPRecordingManager *)self getCallingConnectionBundleID];
  v3 = +[RPClientManager sharedInstance];
  v4 = [v3 getClientWithBundleID:v2];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = dword_1000B6840 > 2;
  }

  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100060F9C();
  }

  return v4;
}

- (void)macApplicationDidResignActive
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPRecordingManager macApplicationDidResignActive]";
    v6 = 1024;
    v7 = 1075;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v4, 0x12u);
  }

  v3 = [(RPRecordingManager *)self getCallingConnectionClient];
  [v3 pauseCurrentActiveSession];
}

- (void)macApplicationDidBecomeActiveWithContextID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[RPRecordingManager macApplicationDidBecomeActiveWithContextID:completionHandler:]";
    v11 = 1024;
    v12 = 1082;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v9, 0x12u);
  }

  v8 = [(RPRecordingManager *)self getCallingConnectionClient];
  [v8 resumeCurrentActiveSessionWithContextID:v6 completionHandler:v7];
}

- (void)stopCurrentActiveSessionWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RPRecordingManager *)self getCallingConnectionClient];
  [v5 stopCurrentActiveSessionWithHandler:v4];
}

- (void)stopAllActiveClients
{
  v2 = +[RPClientManager sharedInstance];
  [v2 stopAllClientsWithHandler:&stru_1000A1970];
}

- (void)saveVideoToCameraRoll:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[RPRecordingManager saveVideoToCameraRoll:handler:]";
    v10 = 1024;
    v11 = 1107;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v8, 0x12u);
  }

  [(RPRecordingManager *)self saveToCameraRoll:v6 mixAudioTracks:1 ignoreDoNotDisturb:0 isClip:0 handler:v7];
}

- (void)saveClipToCameraRoll:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[RPRecordingManager saveClipToCameraRoll:handler:]";
    v10 = 1024;
    v11 = 1112;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v8, 0x12u);
  }

  [(RPRecordingManager *)self saveToCameraRoll:v6 mixAudioTracks:1 ignoreDoNotDisturb:0 isClip:1 handler:v7];
}

- (void)saveVideo:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[RPRecordingManager saveVideo:handler:]";
    v10 = 1024;
    v11 = 1117;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v8, 0x12u);
  }

  [(RPRecordingManager *)self saveToCameraRoll:v6 mixAudioTracks:0 ignoreDoNotDisturb:1 isClip:0 handler:v7];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = [NSString stringWithUTF8String:"[RPRecordingManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]"];
  NSLog(@"%@", v8);

  v9 = [v6 actionIdentifier];
  v10 = [v9 isEqualToString:@"deleteAction"];

  if (v10)
  {
    v11 = [v6 notification];
    v12 = [v11 request];
    v13 = [v12 content];
    v14 = [v13 userInfo];

    if (!v14)
    {
      goto LABEL_15;
    }

    v15 = [v14 objectForKey:@"photoAssetIdKey"];
    if (!v15)
    {
      goto LABEL_15;
    }

    v16 = v15;
    v26 = v15;
    v17 = [NSArray arrayWithObjects:&v26 count:1];
    v18 = [PHAsset fetchAssetsWithLocalIdentifiers:v17 options:0];
    v19 = [v18 firstObject];

    if (v19)
    {
      v20 = +[PHPhotoLibrary sharedPhotoLibrary];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10001C810;
      v24[3] = &unk_1000A1088;
      v21 = v19;
      v25 = v21;
      v23 = 0;
      [v20 performChangesAndWait:v24 error:&v23];
      v22 = v23;

      if (v22)
      {
        NSLog(@"RPRecordingManager: didReceiveNotificationResponse: Error deleting photo asset: %@", v22);
      }

      v7[2](v7);
    }

    else
    {
LABEL_15:
      if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100061248();
      }
    }
  }
}

- (void)getSystemBroadcastExtensionInfo:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001C93C;
  v4[3] = &unk_1000A19E0;
  v5 = a3;
  v3 = v5;
  [NSExtension extensionsWithMatchingPointName:@"com.apple.broadcast-services-upload" completion:v4];
}

- (void)getSystemBroadcastPickerInfo:(id)a3
{
  v4 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    currentPreferredBroadcastExt = self->_currentPreferredBroadcastExt;
    showsBroadcastPickerMicButton = self->_showsBroadcastPickerMicButton;
    v7 = 136446978;
    v8 = "[RPRecordingManager getSystemBroadcastPickerInfo:]";
    v9 = 1024;
    v10 = 1368;
    v11 = 2112;
    v12 = currentPreferredBroadcastExt;
    v13 = 1024;
    v14 = showsBroadcastPickerMicButton;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d preferredExtension: %@ showsMic: %d", &v7, 0x22u);
  }

  v4[2](v4, self->_currentPreferredBroadcastExt, self->_showsBroadcastPickerMicButton);
}

- (void)setBroadcastPickerPreferredExt:(id)a3 showsMicButton:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446978;
    v9 = "[RPRecordingManager setBroadcastPickerPreferredExt:showsMicButton:]";
    v10 = 1024;
    v11 = 1373;
    v12 = 2112;
    v13 = v6;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d preferredExtension: %@ showsMic: %d", &v8, 0x22u);
  }

  currentPreferredBroadcastExt = self->_currentPreferredBroadcastExt;
  self->_currentPreferredBroadcastExt = v6;

  self->_showsBroadcastPickerMicButton = v4;
}

- (void)openControlCenterSystemRecordingView
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446466;
    v3 = "[RPRecordingManager openControlCenterSystemRecordingView]";
    v4 = 1024;
    v5 = 1379;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v2, 0x12u);
  }

  dispatch_async(&_dispatch_main_q, &stru_1000A1A00);
}

- (void)reportCameraUsage:(int64_t)a3
{
  v4 = [(RPRecordingManager *)self getCallingConnectionClient];
  [v4 reportCameraUsage:a3];
}

@end