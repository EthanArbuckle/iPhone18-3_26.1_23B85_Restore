@interface RPRecordingManager
- (RPRecordingManager)initWithConnectionManager:(id)manager;
- (id)getCallingConnectionBundleID;
- (id)getCallingConnectionClient;
- (id)purge:(id)purge urgency:(int)urgency;
- (void)applicationDisconnectedWithBundleID:(id)d withProcessIdentifier:(int)identifier;
- (void)connectionManagerDidAcceptNewConnection:(id)connection bundleIdentifier:(id)identifier;
- (void)dealloc;
- (void)discardInAppRecordingWithHandler:(id)handler;
- (void)exportClipToURL:(id)l duration:(double)duration completionHandler:(id)handler;
- (void)getSystemBroadcastExtensionInfo:(id)info;
- (void)getSystemBroadcastPickerInfo:(id)info;
- (void)macApplicationDidBecomeActiveWithContextID:(id)d completionHandler:(id)handler;
- (void)macApplicationDidResignActive;
- (void)openControlCenterSystemRecordingView;
- (void)pauseInAppBroadcast;
- (void)pauseInAppCapture;
- (void)pauseInAppRecording;
- (void)reportCameraUsage:(int64_t)usage;
- (void)resumeHQLRWithCompletionHandler:(id)handler;
- (void)resumeInAppBroadcastWithWindowLayerContextID:(id)d completionHandler:(id)handler;
- (void)resumeInAppCaptureWithWindowLayerContextID:(id)d completionHandler:(id)handler;
- (void)resumeInAppClipWithWindowLayerContextID:(id)d completionHandler:(id)handler;
- (void)resumeInAppRecordingWithWindowLayerContextID:(id)d completionHandler:(id)handler;
- (void)resumeSystemBroadcastWithCompletionHandler:(id)handler;
- (void)resumeSystemRecordingWithCompletionHandler:(id)handler;
- (void)saveClipToCameraRoll:(id)roll handler:(id)handler;
- (void)saveVideo:(id)video handler:(id)handler;
- (void)saveVideoToCameraRoll:(id)roll handler:(id)handler;
- (void)setBroadcastPickerPreferredExt:(id)ext showsMicButton:(BOOL)button;
- (void)setBroadcastURL:(id)l;
- (void)setUpMemoryPressureNotification;
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
- (void)stopClipBufferingWithCompletionHandler:(id)handler;
- (void)stopCurrentActiveSessionWithHandler:(id)handler;
- (void)stopHQLRWithHandler:(id)handler;
- (void)stopInAppBroadcastWithHandler:(id)handler;
- (void)stopInAppCaptureWithHandler:(id)handler;
- (void)stopInAppRecordingWithHandler:(id)handler;
- (void)stopInAppRecordingWithUrl:(id)url handler:(id)handler;
- (void)stopSystemBroadcastWithHandler:(id)handler;
- (void)stopSystemRecordingWithHandler:(id)handler;
- (void)stopSystemRecordingWithURLHandler:(id)handler;
- (void)updateClient:(id)client withHostBundleID:(id)d broadcastExtensionBundleID:(id)iD broadcastConfigurationData:(id)data userInfo:(id)info isSystemBroadcast:(BOOL)broadcast handler:(id)handler;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation RPRecordingManager

- (RPRecordingManager)initWithConnectionManager:(id)manager
{
  managerCopy = manager;
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

    [(RPRecordingManager *)v5 setConnectionManager:managerCopy];
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
    selfCopy = self;
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
    selfCopy = self;
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

- (id)purge:(id)purge urgency:(int)urgency
{
  v6 = [purge objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  if ([(RPRecordingManager *)self volumeMatchesCachePath:v6])
  {
    v7 = +[NSFileManager defaultManager];
    v8 = [v7 _srSizeOfTempDir:0];

    if (urgency >= 3)
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v18 = "[RPRecordingManager purge:urgency:]";
        v19 = 1024;
        v20 = 263;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d cacheDeleteUrgencyHigh", buf, 0x12u);
      }

      getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
      [getCallingConnectionClient handleMemoryWarningForCurrentActiveSession];
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

- (void)connectionManagerDidAcceptNewConnection:(id)connection bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  connectionCopy = connection;
  v7 = +[RPClientManager sharedInstance];
  v8 = [v7 getClientWithBundleID:identifierCopy];

  if (v8)
  {
    v9 = [[RPClientProxy alloc] initWithConnection:connectionCopy];
    [v8 setClientProxy:v9];

    processIdentifier = [connectionCopy processIdentifier];
    [v8 setClientPID:processIdentifier];
  }

  else
  {
    v11 = [RPClient alloc];
    v12 = [[RPClientProxy alloc] initWithConnection:connectionCopy];
    v13 = [(RPClient *)v11 initWithConnection:connectionCopy clientProxy:v12 bundleIdentifier:identifierCopy];

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

- (void)applicationDisconnectedWithBundleID:(id)d withProcessIdentifier:(int)identifier
{
  dCopy = d;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPRecordingManager: applicationDisconnected", buf, 2u);
  }

  v5 = +[RPClientManager sharedInstance];
  v6 = [v5 getClientWithBundleID:dCopy];

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

- (void)startInAppRecordingWithContextID:(id)d windowSize:(CGSize)size microphoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled withHandler:(id)handler
{
  height = size.height;
  width = size.width;
  dCopy = d;
  handlerCopy = handler;
  v15 = +[RPClientManager sharedInstance];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100017FCC;
  v18[3] = &unk_1000A17F0;
  v18[4] = self;
  v19 = dCopy;
  v21 = width;
  v22 = height;
  enabledCopy = enabled;
  cameraEnabledCopy = cameraEnabled;
  v20 = handlerCopy;
  v16 = handlerCopy;
  v17 = dCopy;
  [v15 stopAllClientsWithHandler:v18];
}

- (void)stopInAppRecordingWithHandler:(id)handler
{
  handlerCopy = handler;
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000181CC;
  v7[3] = &unk_1000A1818;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [getCallingConnectionClient stopInAppRecordingSessionWithHandler:v7];
}

- (void)stopInAppRecordingWithUrl:(id)url handler:(id)handler
{
  urlCopy = url;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v15 = "[RPRecordingManager stopInAppRecordingWithUrl:handler:]";
    v16 = 1024;
    v17 = 519;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001835C;
  v11[3] = &unk_1000A1868;
  v12 = urlCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = urlCopy;
  [getCallingConnectionClient stopInAppRecordingSessionWithHandler:v11];
}

- (void)pauseInAppRecording
{
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  [getCallingConnectionClient pauseInAppRecording];
}

- (void)resumeInAppRecordingWithWindowLayerContextID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100018688;
  v10[3] = &unk_1000A17C8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [getCallingConnectionClient resumeInAppRecordingWithContextID:dCopy completionHandler:v10];
}

- (void)discardInAppRecordingWithHandler:(id)handler
{
  handlerCopy = handler;
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  [getCallingConnectionClient discardInAppRecordingWithHandler:handlerCopy];
}

- (void)startInAppCaptureWithContextID:(id)d windowSize:(CGSize)size microphoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled withHandler:(id)handler
{
  height = size.height;
  width = size.width;
  dCopy = d;
  handlerCopy = handler;
  v15 = +[RPClientManager sharedInstance];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100018808;
  v18[3] = &unk_1000A17F0;
  v18[4] = self;
  v19 = dCopy;
  v21 = width;
  v22 = height;
  enabledCopy = enabled;
  cameraEnabledCopy = cameraEnabled;
  v20 = handlerCopy;
  v16 = handlerCopy;
  v17 = dCopy;
  [v15 stopAllClientsWithHandler:v18];
}

- (void)stopInAppCaptureWithHandler:(id)handler
{
  handlerCopy = handler;
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018A08;
  v7[3] = &unk_1000A11B8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [getCallingConnectionClient stopInAppCaptureSessionWithHandler:v7];
}

- (void)pauseInAppCapture
{
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  [getCallingConnectionClient pauseInAppCapture];
}

- (void)resumeInAppCaptureWithWindowLayerContextID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100018B28;
  v10[3] = &unk_1000A17C8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [getCallingConnectionClient resumeInAppCaptureWithContextID:dCopy completionHandler:v10];
}

- (void)updateClient:(id)client withHostBundleID:(id)d broadcastExtensionBundleID:(id)iD broadcastConfigurationData:(id)data userInfo:(id)info isSystemBroadcast:(BOOL)broadcast handler:(id)handler
{
  broadcastCopy = broadcast;
  handlerCopy = handler;
  v16 = handlerCopy;
  if (broadcastCopy)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100018FB8;
    v20[3] = &unk_1000A11B8;
    v17 = &v21;
    v21 = handlerCopy;
    [client setupSystemBroadcastWithHostBundleID:d broadcastExtensionBundleID:iD broadcastConfigurationData:data userInfo:info handler:v20];
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100019034;
    v18[3] = &unk_1000A11B8;
    v17 = &v19;
    v19 = handlerCopy;
    [client setupInAppBroadcastExtensionBundleID:iD broadcastConfigurationData:data userInfo:info handler:v18];
  }
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
    v20 = "[RPRecordingManager setupBroadcastWithHostBundleID:broadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]";
    v21 = 1024;
    v22 = 695;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Getting client and setting up broadcast", buf, 0x12u);
  }

  v17 = +[RPClientManager sharedInstance];
  v18 = [v17 getClientForBroadcastWithHostBundleID:dCopy];

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

    [(RPRecordingManager *)self updateClient:v18 withHostBundleID:dCopy broadcastExtensionBundleID:iDCopy broadcastConfigurationData:dataCopy userInfo:infoCopy isSystemBroadcast:0 handler:handlerCopy];
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
      v24 = dCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Calling client doesn't not exist, we need to create a new client with bundleID: %@", buf, 0x1Cu);
    }

    [(RPRecordingManager *)self createNewBroadcastClientWithBundleID:dCopy broadcastExtensionBundleID:iDCopy broadcastConfigurationData:dataCopy userInfo:infoCopy isSystemBroadcast:0 handler:handlerCopy];
  }
}

- (void)startInAppBroadcastWithContextID:(id)d windowSize:(CGSize)size microphoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled listenerEndpoint:(id)endpoint withHandler:(id)handler
{
  height = size.height;
  width = size.width;
  dCopy = d;
  endpointCopy = endpoint;
  handlerCopy = handler;
  v18 = +[RPClientManager sharedInstance];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100019480;
  v22[3] = &unk_1000A1890;
  v22[4] = self;
  v23 = dCopy;
  v26 = width;
  v27 = height;
  enabledCopy = enabled;
  cameraEnabledCopy = cameraEnabled;
  v24 = endpointCopy;
  v25 = handlerCopy;
  v19 = handlerCopy;
  v20 = endpointCopy;
  v21 = dCopy;
  [v18 stopAllClientsWithHandler:v22];
}

- (void)stopInAppBroadcastWithHandler:(id)handler
{
  handlerCopy = handler;
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000197A4;
  v7[3] = &unk_1000A11B8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [getCallingConnectionClient stopInAppBroadcastSessionWithHandler:v7];
}

- (void)pauseInAppBroadcast
{
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  [getCallingConnectionClient pauseInAppBroadcast];
}

- (void)resumeInAppBroadcastWithWindowLayerContextID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000199C8;
  v10[3] = &unk_1000A17C8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [getCallingConnectionClient resumeInAppBroadcastWithContextID:dCopy completionHandler:v10];
}

- (void)setBroadcastURL:(id)l
{
  lCopy = l;
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  [getCallingConnectionClient updateBroadcastURL:lCopy];
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
  v21 = dCopy;
  v23 = width;
  v24 = height;
  enabledCopy = enabled;
  cameraEnabledCopy = cameraEnabled;
  realityCameraEnabledCopy = realityCameraEnabled;
  v22 = handlerCopy;
  v18 = handlerCopy;
  v19 = dCopy;
  [v17 stopAllClientsWithHandler:v20];
}

- (void)stopSystemRecordingWithHandler:(id)handler
{
  handlerCopy = handler;
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100019E78;
  v7[3] = &unk_1000A11B8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [getCallingConnectionClient stopSystemRecordingSessionWithHandler:v7];
}

- (void)stopSystemRecordingWithURLHandler:(id)handler
{
  handlerCopy = handler;
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100019F3C;
  v7[3] = &unk_1000A1818;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [getCallingConnectionClient stopSystemRecordingSessionWithURLHandler:v7];
}

- (void)resumeSystemRecordingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A000;
  v7[3] = &unk_1000A18E0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [getCallingConnectionClient resumeSystemRecordingWithCompletionHandler:v7];
}

- (void)setupSystemBroadcastWithHostBundleID:(id)d broadcastExtensionBundleID:(id)iD broadcastConfigurationData:(id)data userInfo:(id)info handler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  infoCopy = info;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v20 = "[RPRecordingManager setupSystemBroadcastWithHostBundleID:broadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]";
    v21 = 1024;
    v22 = 863;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Getting client and setting up broadcast", buf, 0x12u);
  }

  v17 = +[RPClientManager sharedInstance];
  v18 = [v17 getClientWithBundleID:dCopy];

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

    [(RPRecordingManager *)self updateClient:v18 withHostBundleID:dCopy broadcastExtensionBundleID:iDCopy broadcastConfigurationData:dataCopy userInfo:infoCopy isSystemBroadcast:1 handler:handlerCopy];
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
      v24 = dCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Calling client doesn't not exist, we need to create a new client with bundleID: %@", buf, 0x1Cu);
    }

    [(RPRecordingManager *)self createNewBroadcastClientWithBundleID:dCopy broadcastExtensionBundleID:iDCopy broadcastConfigurationData:dataCopy userInfo:infoCopy isSystemBroadcast:1 handler:handlerCopy];
  }
}

- (void)startSystemBroadcastWithContextID:(id)d windowSize:(CGSize)size microphoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled mixedRealityCameraEnabled:(BOOL)realityCameraEnabled listenerEndpoint:(id)endpoint withHandler:(id)handler
{
  height = size.height;
  width = size.width;
  dCopy = d;
  endpointCopy = endpoint;
  handlerCopy = handler;
  v20 = +[RPClientManager sharedInstance];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001A3F0;
  v24[3] = &unk_1000A1908;
  v24[4] = self;
  v25 = dCopy;
  v28 = width;
  v29 = height;
  enabledCopy = enabled;
  cameraEnabledCopy = cameraEnabled;
  realityCameraEnabledCopy = realityCameraEnabled;
  v26 = endpointCopy;
  v27 = handlerCopy;
  v21 = handlerCopy;
  v22 = endpointCopy;
  v23 = dCopy;
  [v20 stopAllClientsWithHandler:v24];
}

- (void)stopSystemBroadcastWithHandler:(id)handler
{
  handlerCopy = handler;
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A604;
  v7[3] = &unk_1000A11B8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [getCallingConnectionClient stopSystemBroadcastSessionWithHandler:v7];
}

- (void)resumeSystemBroadcastWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A6C8;
  v7[3] = &unk_1000A18E0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [getCallingConnectionClient resumeSystemBroadcastWithCompletionHandler:v7];
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
  v15 = infoCopy;
  v17 = width;
  v18 = height;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = infoCopy;
  [v11 stopAllClientsWithHandler:v14];
}

- (void)stopHQLRWithHandler:(id)handler
{
  handlerCopy = handler;
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001AAD0;
  v7[3] = &unk_1000A11B8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [getCallingConnectionClient stopHQLRSessionWithHandler:v7];
}

- (void)resumeHQLRWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001AB94;
  v7[3] = &unk_1000A18E0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [getCallingConnectionClient resumeHQLRSessionWithCompletionHandler:v7];
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
  v19 = dCopy;
  v21 = width;
  v22 = height;
  enabledCopy = enabled;
  cameraEnabledCopy = cameraEnabled;
  v20 = handlerCopy;
  v16 = handlerCopy;
  v17 = dCopy;
  [v15 stopAllClientsWithHandler:v18];
}

- (void)stopClipBufferingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPRecordingManager stopClipBufferingWithCompletionHandler:]";
    v11 = 1024;
    v12 = 1014;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001AFFC;
  v7[3] = &unk_1000A11B8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [getCallingConnectionClient stopInAppClipSessionWithHandler:v7];
}

- (void)exportClipToURL:(id)l duration:(double)duration completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v15 = "[RPRecordingManager exportClipToURL:duration:completionHandler:]";
    v16 = 1024;
    v17 = 1028;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001B190;
  v12[3] = &unk_1000A11B8;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [getCallingConnectionClient exportClipToURL:lCopy duration:v12 completionHandler:duration];
}

- (void)resumeInAppClipWithWindowLayerContextID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001B270;
  v10[3] = &unk_1000A17C8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [getCallingConnectionClient resumeInAppClipWithContextID:dCopy completionHandler:v10];
}

- (id)getCallingConnectionBundleID
{
  connectionManager = [(RPRecordingManager *)self connectionManager];
  currentConnection = [connectionManager currentConnection];

  v4 = +[RPConnectionManager uniqueClientIdentifierWithPID:](RPConnectionManager, "uniqueClientIdentifierWithPID:", [currentConnection processIdentifier]);

  return v4;
}

- (id)getCallingConnectionClient
{
  getCallingConnectionBundleID = [(RPRecordingManager *)self getCallingConnectionBundleID];
  v3 = +[RPClientManager sharedInstance];
  v4 = [v3 getClientWithBundleID:getCallingConnectionBundleID];

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

  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  [getCallingConnectionClient pauseCurrentActiveSession];
}

- (void)macApplicationDidBecomeActiveWithContextID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[RPRecordingManager macApplicationDidBecomeActiveWithContextID:completionHandler:]";
    v11 = 1024;
    v12 = 1082;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v9, 0x12u);
  }

  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  [getCallingConnectionClient resumeCurrentActiveSessionWithContextID:dCopy completionHandler:handlerCopy];
}

- (void)stopCurrentActiveSessionWithHandler:(id)handler
{
  handlerCopy = handler;
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  [getCallingConnectionClient stopCurrentActiveSessionWithHandler:handlerCopy];
}

- (void)stopAllActiveClients
{
  v2 = +[RPClientManager sharedInstance];
  [v2 stopAllClientsWithHandler:&stru_1000A1970];
}

- (void)saveVideoToCameraRoll:(id)roll handler:(id)handler
{
  rollCopy = roll;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[RPRecordingManager saveVideoToCameraRoll:handler:]";
    v10 = 1024;
    v11 = 1107;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v8, 0x12u);
  }

  [(RPRecordingManager *)self saveToCameraRoll:rollCopy mixAudioTracks:1 ignoreDoNotDisturb:0 isClip:0 handler:handlerCopy];
}

- (void)saveClipToCameraRoll:(id)roll handler:(id)handler
{
  rollCopy = roll;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[RPRecordingManager saveClipToCameraRoll:handler:]";
    v10 = 1024;
    v11 = 1112;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v8, 0x12u);
  }

  [(RPRecordingManager *)self saveToCameraRoll:rollCopy mixAudioTracks:1 ignoreDoNotDisturb:0 isClip:1 handler:handlerCopy];
}

- (void)saveVideo:(id)video handler:(id)handler
{
  videoCopy = video;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[RPRecordingManager saveVideo:handler:]";
    v10 = 1024;
    v11 = 1117;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v8, 0x12u);
  }

  [(RPRecordingManager *)self saveToCameraRoll:videoCopy mixAudioTracks:0 ignoreDoNotDisturb:1 isClip:0 handler:handlerCopy];
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v8 = [NSString stringWithUTF8String:"[RPRecordingManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]"];
  NSLog(@"%@", v8);

  actionIdentifier = [responseCopy actionIdentifier];
  v10 = [actionIdentifier isEqualToString:@"deleteAction"];

  if (v10)
  {
    notification = [responseCopy notification];
    request = [notification request];
    content = [request content];
    userInfo = [content userInfo];

    if (!userInfo)
    {
      goto LABEL_15;
    }

    v15 = [userInfo objectForKey:@"photoAssetIdKey"];
    if (!v15)
    {
      goto LABEL_15;
    }

    v16 = v15;
    v26 = v15;
    v17 = [NSArray arrayWithObjects:&v26 count:1];
    v18 = [PHAsset fetchAssetsWithLocalIdentifiers:v17 options:0];
    firstObject = [v18 firstObject];

    if (firstObject)
    {
      v20 = +[PHPhotoLibrary sharedPhotoLibrary];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10001C810;
      v24[3] = &unk_1000A1088;
      v21 = firstObject;
      v25 = v21;
      v23 = 0;
      [v20 performChangesAndWait:v24 error:&v23];
      v22 = v23;

      if (v22)
      {
        NSLog(@"RPRecordingManager: didReceiveNotificationResponse: Error deleting photo asset: %@", v22);
      }

      handlerCopy[2](handlerCopy);
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

- (void)getSystemBroadcastExtensionInfo:(id)info
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001C93C;
  v4[3] = &unk_1000A19E0;
  infoCopy = info;
  v3 = infoCopy;
  [NSExtension extensionsWithMatchingPointName:@"com.apple.broadcast-services-upload" completion:v4];
}

- (void)getSystemBroadcastPickerInfo:(id)info
{
  infoCopy = info;
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

  infoCopy[2](infoCopy, self->_currentPreferredBroadcastExt, self->_showsBroadcastPickerMicButton);
}

- (void)setBroadcastPickerPreferredExt:(id)ext showsMicButton:(BOOL)button
{
  buttonCopy = button;
  extCopy = ext;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446978;
    v9 = "[RPRecordingManager setBroadcastPickerPreferredExt:showsMicButton:]";
    v10 = 1024;
    v11 = 1373;
    v12 = 2112;
    v13 = extCopy;
    v14 = 1024;
    v15 = buttonCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d preferredExtension: %@ showsMic: %d", &v8, 0x22u);
  }

  currentPreferredBroadcastExt = self->_currentPreferredBroadcastExt;
  self->_currentPreferredBroadcastExt = extCopy;

  self->_showsBroadcastPickerMicButton = buttonCopy;
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

- (void)reportCameraUsage:(int64_t)usage
{
  getCallingConnectionClient = [(RPRecordingManager *)self getCallingConnectionClient];
  [getCallingConnectionClient reportCameraUsage:usage];
}

@end