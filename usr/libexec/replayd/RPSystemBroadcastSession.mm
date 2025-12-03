@interface RPSystemBroadcastSession
- (BOOL)showAlertForBroadcastSessionWithError:(id)error;
- (id)dispatchCaptureQueue;
- (id)enableBroadcastWithListenerEndpoint:(id)endpoint;
- (id)systemBroadcastSessionAudioQueue;
- (id)systemBroadcastSessionVideoQueue;
- (unsigned)orientationFromFigTransform:(unint64_t)transform;
- (void)captureDidFailWithError:(id)error;
- (void)disableBroadcast;
- (void)enableBroadcastStartCaptureWithListenerEndpoint:(id)endpoint withHandler:(id)handler;
- (void)handleBroadcastError:(id)error;
- (void)handleDeviceLockedWarning;
- (void)handleDeviceRestrictionWarning;
- (void)handleFrontmostApplicationDidChange:(id)change;
- (void)handleResumeCaptureWithCompletionHandler:(id)handler;
- (void)handleResumeContextIDFailure;
- (void)handleSystemAlertStop;
- (void)handleTimerDidUpdate:(id)update;
- (void)loadBroadcastUploadExtensionWithBaseIdentifier:(id)identifier broadcastExtensionBundleID:(id)d withHandler:(id)handler;
- (void)notifyExtensionOfAction:(int64_t)action completion:(id)completion;
- (void)notifyExtensionOfAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer withType:(int64_t)type;
- (void)pauseSession;
- (void)processSampleBuffer:(opaqueCMSampleBuffer *)buffer transformFlags:(unint64_t)flags;
- (void)resumeSessionWithWindowLayerContextID:(id)d completionHandler:(id)handler;
- (void)setCaptureMicrophoneEnabled:(BOOL)enabled;
- (void)setupSystemBroadcastWithHostBundleID:(id)d broadcastExtensionBundleID:(id)iD broadcastConfigurationData:(id)data userInfo:(id)info handler:(id)handler;
- (void)startCaptureWithHandler:(id)handler;
- (void)stopSystemBroadcastWithHandler:(id)handler;
@end

@implementation RPSystemBroadcastSession

- (void)stopSystemBroadcastWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v14 = "[RPSystemBroadcastSession stopSystemBroadcastWithHandler:]";
    v15 = 1024;
    v16 = 106;
    v17 = 2048;
    selfCopy = self;
    v19 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p stopping in session state %d", buf, 0x22u);
  }

  if ([(RPSession *)self cameraEnabled])
  {
    v5 = +[RPAngelProxy sharedInstance];
    [v5 disableCameraPip];
  }

  if ([(RPSession *)self sessionState]== 3 || ![(RPSession *)self sessionState]|| [(RPSession *)self sessionState]== 2)
  {
    v6 = [NSError _rpUserErrorForCode:-5829 userInfo:0];
    [(RPSession *)self reportSessionEndReason:v6];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v6);
    }
  }

  else
  {
    [(RPSession *)self setSessionState:2];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100034CD0;
    v10 = &unk_1000A11E0;
    selfCopy2 = self;
    v12 = handlerCopy;
    [(RPSystemBroadcastSession *)self notifyExtensionOfAction:4 completion:&v7];
    [(RPSession *)self clearSystemRecordingUI:v7];
    [(RPSession *)self checkAndPlaySystemSessionSound:0];
  }
}

- (void)pauseSession
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v7 = "[RPSystemBroadcastSession pauseSession]";
    v8 = 1024;
    v9 = 150;
    v10 = 2048;
    selfCopy = self;
    v12 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p pausing in session state %d", buf, 0x22u);
  }

  if ([(RPSession *)self sessionState]== 1)
  {
    v3 = +[RPCaptureManager sharedInstance];
    [v3 stopCaptureForDelegate:self];

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100034F0C;
    v5[3] = &unk_1000A1088;
    v5[4] = self;
    [(RPSystemBroadcastSession *)self notifyExtensionOfAction:2 completion:v5];
    v4.receiver = self;
    v4.super_class = RPSystemBroadcastSession;
    [(RPSession *)&v4 pauseSession];
  }
}

- (void)resumeSessionWithWindowLayerContextID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v13 = "[RPSystemBroadcastSession resumeSessionWithWindowLayerContextID:completionHandler:]";
    v14 = 1024;
    v15 = 165;
    v16 = 2048;
    selfCopy = self;
    v18 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p resuming in session state %d", buf, 0x22u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000350C4;
  v10[3] = &unk_1000A11B8;
  v11 = handlerCopy;
  v9.receiver = self;
  v9.super_class = RPSystemBroadcastSession;
  v8 = handlerCopy;
  [(RPSession *)&v9 resumeSessionWithWindowLayerContextID:dCopy completionHandler:v10];
  [(RPSystemBroadcastSession *)self notifyExtensionOfAction:3 completion:&stru_1000A2170];
}

- (void)disableBroadcast
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPSystemBroadcastSession disableBroadcast]";
    v8 = 1024;
    v9 = 175;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d disableBroadcast", &v6, 0x12u);
  }

  [(RPSession *)self setSessionState:3];
  broadcastExtension = self->_broadcastExtension;
  self->_broadcastExtension = 0;

  broadcastUserInfo = self->_broadcastUserInfo;
  self->_broadcastUserInfo = 0;

  broadcastConfiguration = self->_broadcastConfiguration;
  self->_broadcastConfiguration = 0;
}

- (void)setCaptureMicrophoneEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(RPSession *)self setMicrophoneEnabled:?];
  if ([(RPSession *)self sessionState]== 1 && enabledCopy)
  {
    v5 = +[RPCaptureManager sharedInstance];
    [v5 enableMicrophone];
  }
}

- (BOOL)showAlertForBroadcastSessionWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy && ([errorCopy domain], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    localizedFailureReason = [v5 localizedFailureReason];

    if (localizedFailureReason)
    {
      [v5 localizedFailureReason];
    }

    else
    {
      [v5 localizedDescription];
    }
    v9 = ;
    v10 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_FAILED_ALERT_MESSAGE_FORMAT"];
    infoDictionary = [(NSExtension *)self->_broadcastExtension infoDictionary];
    v12 = [infoDictionary objectForKey:_kCFBundleDisplayNameKey];
    v13 = [NSString stringWithFormat:v10, v12, v9];

    v14 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_STATUSBAR_TAPPED_ALERT_TITLE"];
    v15 = v13;
    v16 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_FAILED_ALERT_OK_BUTTON"];
    v17 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_FAILED_ALERT_GO_TO_APP_BUTTON"];
    v28[0] = kCFUserNotificationAlertHeaderKey;
    v28[1] = kCFUserNotificationAlertMessageKey;
    v29[0] = v14;
    v29[1] = v15;
    v28[2] = kCFUserNotificationOtherButtonTitleKey;
    v28[3] = kCFUserNotificationDefaultButtonTitleKey;
    v29[2] = v16;
    v29[3] = v17;
    v18 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:4]);
    if (v18)
    {
      v19 = v18;
      *buf = 0;
      CFUserNotificationReceiveResponse(v18, 0.0, buf);
      if (*buf == 2)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100063404();
        }
      }

      else if (!*buf)
      {
        v26 = v9;
        identifier = [(NSExtension *)self->_broadcastExtension identifier];
        v21 = [LSPlugInKitProxy pluginKitProxyForIdentifier:identifier];

        containingBundle = [v21 containingBundle];
        bundleIdentifier = [containingBundle bundleIdentifier];

        v24 = +[LSApplicationWorkspace defaultWorkspace];
        [v24 openApplicationWithBundleID:bundleIdentifier];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100063488();
        }

        v9 = v26;
      }

      CFRelease(v19);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006350C();
    }

    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not showing the alert, as there is no error or the error domain is nil", buf, 2u);
    }

    v8 = 1;
  }

  return v8;
}

- (void)enableBroadcastStartCaptureWithListenerEndpoint:(id)endpoint withHandler:(id)handler
{
  endpointCopy = endpoint;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[RPSystemBroadcastSession enableBroadcastStartCaptureWithListenerEndpoint:withHandler:]";
    v14 = 1024;
    v15 = 304;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d found broadcast info, enabling for session", buf, 0x12u);
  }

  v8 = [(RPSystemBroadcastSession *)self enableBroadcastWithListenerEndpoint:endpointCopy];
  if (v8)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063590();
    }

    [(RPSession *)self setSessionState:3];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v8);
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v13 = "[RPSystemBroadcastSession enableBroadcastStartCaptureWithListenerEndpoint:withHandler:]";
      v14 = 1024;
      v15 = 317;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d broadcast started without error", buf, 0x12u);
    }

    if ([(RPSession *)self cameraEnabled])
    {
      v9 = +[RPAngelProxy sharedInstance];
      [v9 enableCameraPip];
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100035B38;
    v10[3] = &unk_1000A11E0;
    v10[4] = self;
    v11 = handlerCopy;
    [(RPSystemBroadcastSession *)self notifyExtensionOfAction:1 completion:v10];
  }
}

- (void)startCaptureWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[RPFeatureFlagUtility sharedInstance];
  screenRecordingPassthroughCamera = [v5 screenRecordingPassthroughCamera];

  if (screenRecordingPassthroughCamera)
  {
    mixedRealityCameraEnabled = [(RPSession *)self mixedRealityCameraEnabled];
  }

  else
  {
    mixedRealityCameraEnabled = [(RPBroadcastExtensionProxy *)self->_broadcastUploadExtensionProxy enableMixedRealityCamera];
  }

  v8 = mixedRealityCameraEnabled;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v22 = "[RPSystemBroadcastSession startCaptureWithHandler:]";
    v23 = 1024;
    v24 = 345;
    v25 = 1024;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d enableMixedRealityCamera=%d", buf, 0x18u);
  }

  v9 = +[RPCaptureManager sharedInstance];
  microphoneEnabled = [(RPSession *)self microphoneEnabled];
  [(RPSession *)self windowSize];
  v12 = v11;
  v14 = v13;
  contextID = [(RPSession *)self contextID];
  v16 = [NSArray arrayWithObject:contextID];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100035D7C;
  v19[3] = &unk_1000A1840;
  v19[4] = self;
  v20 = handlerCopy;
  v17 = handlerCopy;
  LOBYTE(v18) = 1;
  [v9 startCaptureForDelegate:self forProcessID:0xFFFFFFFFLL shouldStartMicrophoneCapture:microphoneEnabled windowSize:0 captureType:v16 contextIDs:v8 mixedRealityCamera:v12 systemCapture:v14 didStartHandler:{v18, v19}];
}

- (id)enableBroadcastWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v23 = "[RPSystemBroadcastSession enableBroadcastWithListenerEndpoint:]";
    v24 = 1024;
    v25 = 392;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d enableBroadcastWithExtension", buf, 0x12u);
  }

  objc_initWeak(&location, self);
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v23 = "[RPSystemBroadcastSession enableBroadcastWithListenerEndpoint:]";
    v24 = 1024;
    v25 = 399;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d setting up extension proxy", buf, 0x12u);
  }

  if (endpointCopy)
  {
    v5 = [[RPBroadcastExtensionProxy alloc] initWithBroadcastUploadListenerEndpoint:endpointCopy];
    broadcastUploadExtensionProxy = self->_broadcastUploadExtensionProxy;
    self->_broadcastUploadExtensionProxy = v5;
  }

  else
  {
    v7 = [[RPBroadcastExtensionProxy alloc] initWithBroadcastUploadExtension:self->_broadcastExtension];
    v8 = self->_broadcastUploadExtensionProxy;
    self->_broadcastUploadExtensionProxy = v7;

    v9 = dispatch_semaphore_create(0);
    v10 = self->_broadcastUploadExtensionProxy;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000362F4;
    v18[3] = &unk_1000A1348;
    broadcastUploadExtensionProxy = v9;
    v19 = broadcastUploadExtensionProxy;
    selfCopy = self;
    [(RPBroadcastExtensionProxy *)v10 establishConnectionWithHandler:v18];
    dispatch_semaphore_wait(&broadcastUploadExtensionProxy->super, 0xFFFFFFFFFFFFFFFFLL);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000363E4;
  v16[3] = &unk_1000A1B28;
  objc_copyWeak(&v17, &location);
  [(RPBroadcastExtensionProxy *)self->_broadcastUploadExtensionProxy setServiceInfoHandler:v16];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100036440;
  v14[3] = &unk_1000A2198;
  objc_copyWeak(&v15, &location);
  [(RPBroadcastExtensionProxy *)self->_broadcastUploadExtensionProxy setBroadcastURLHandler:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003649C;
  v12[3] = &unk_1000A1650;
  objc_copyWeak(&v13, &location);
  [(RPBroadcastExtensionProxy *)self->_broadcastUploadExtensionProxy setErrorHandler:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return 0;
}

- (void)handleBroadcastError:(id)error
{
  errorCopy = error;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "[RPSystemBroadcastSession handleBroadcastError:]";
    v9 = 1024;
    v10 = 446;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d error %@", buf, 0x1Cu);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100036688;
    v5[3] = &unk_1000A1348;
    v5[4] = self;
    v6 = errorCopy;
    [(RPSystemBroadcastSession *)self stopSystemBroadcastWithHandler:v5];
  }
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
    v27 = "[RPSystemBroadcastSession setupSystemBroadcastWithHostBundleID:broadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]";
    v28 = 1024;
    v29 = 457;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v17 = [NSBundle baseIdentifier:iDCopy];
  [(RPSystemBroadcastSession *)self setBroadcastHostBundleId:v17];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000368BC;
  v21[3] = &unk_1000A21C0;
  v22 = dataCopy;
  selfCopy = self;
  v24 = infoCopy;
  v25 = handlerCopy;
  v18 = handlerCopy;
  v19 = infoCopy;
  v20 = dataCopy;
  [(RPSystemBroadcastSession *)self loadBroadcastUploadExtensionWithBaseIdentifier:v17 broadcastExtensionBundleID:iDCopy withHandler:v21];
}

- (void)loadBroadcastUploadExtensionWithBaseIdentifier:(id)identifier broadcastExtensionBundleID:(id)d withHandler:(id)handler
{
  identifierCopy = identifier;
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v18 = "[RPSystemBroadcastSession loadBroadcastUploadExtensionWithBaseIdentifier:broadcastExtensionBundleID:withHandler:]";
    v19 = 1024;
    v20 = 496;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d looking for upload extension", buf, 0x12u);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100036C44;
  v13[3] = &unk_1000A2210;
  v15 = identifierCopy;
  v16 = handlerCopy;
  v14 = dCopy;
  v10 = identifierCopy;
  v11 = handlerCopy;
  v12 = dCopy;
  [NSExtension extensionsWithMatchingPointName:@"com.apple.broadcast-services-upload" baseIdentifier:v10 completion:v13];
}

- (id)dispatchCaptureQueue
{
  if (qword_1000B6940 != -1)
  {
    sub_1000638E4();
  }

  v3 = qword_1000B6938;

  return v3;
}

- (void)captureDidFailWithError:(id)error
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100037334;
  v5[3] = &unk_1000A1348;
  errorCopy = error;
  selfCopy = self;
  v4 = errorCopy;
  [(RPSystemBroadcastSession *)self stopSystemBroadcastWithHandler:v5];
}

- (void)processSampleBuffer:(opaqueCMSampleBuffer *)buffer transformFlags:(unint64_t)flags
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPSystemBroadcastSession processSampleBuffer:transformFlags:]";
    v9 = 1024;
    v10 = 612;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d processing sample buffer for streaming", &v7, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 4)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = "[RPSystemBroadcastSession processSampleBuffer:transformFlags:]";
      v9 = 1024;
      v10 = 615;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session is paused discard sample", &v7, 0x12u);
    }
  }

  else
  {
    [(RPSystemBroadcastSession *)self notifyExtensionOfVideoSampleBuffer:buffer withType:1 sampleOrientation:[(RPSystemBroadcastSession *)self orientationFromFigTransform:flags]];
  }
}

- (void)notifyExtensionOfAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer withType:(int64_t)type
{
  if (self->_broadcastExtension)
  {
    if (self->_broadcastUploadExtensionProxy)
    {
      if (![(RPSession *)self dispatchLimitReached:type])
      {
        if (buffer)
        {
          CFRetain(buffer);
        }

        v7 = sub_1000575D0(buffer, type);
        systemBroadcastSessionAudioQueue = [(RPSystemBroadcastSession *)self systemBroadcastSessionAudioQueue];
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_1000376B4;
        v10[3] = &unk_1000A2280;
        v10[4] = self;
        v11 = v7;
        typeCopy = type;
        bufferCopy = buffer;
        v9 = v7;
        dispatch_async(systemBroadcastSessionAudioQueue, v10);
      }
    }

    else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000639A4();
    }
  }

  else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100063A2C();
  }
}

- (void)notifyExtensionOfAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  if (!self->_broadcastExtension)
  {
    if (dword_1000B6840 > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136446466;
    v20 = "[RPSystemBroadcastSession notifyExtensionOfAction:completion:]";
    v21 = 1024;
    v22 = 714;
    v13 = " [INFO] %{public}s:%d no broadcast extension found!";
    goto LABEL_15;
  }

  if (!self->_broadcastUploadExtensionProxy)
  {
    if (dword_1000B6840 > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136446466;
    v20 = "[RPSystemBroadcastSession notifyExtensionOfAction:completion:]";
    v21 = 1024;
    v22 = 720;
    v13 = " [INFO] %{public}s:%d broadcast extension not ready";
LABEL_15:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v13, buf, 0x12u);
LABEL_16:
    completionCopy[2](completionCopy);
    goto LABEL_19;
  }

  v7 = +[NSMutableDictionary dictionary];
  v8 = [NSNumber numberWithInteger:action];
  [v7 setObject:v8 forKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyActionType"];

  [v7 setObject:self->_broadcastUserInfo forKeyedSubscript:@"RPBroadcastExtensionKeyExtensionUserInfo"];
  if (action == 4)
  {
    v9 = dispatch_semaphore_create(0);
    broadcastUploadExtensionProxy = self->_broadcastUploadExtensionProxy;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100038018;
    v15[3] = &unk_1000A1088;
    v11 = v9;
    v16 = v11;
    [(RPBroadcastExtensionProxy *)broadcastUploadExtensionProxy processPayload:v7 completion:v15];
    v12 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v11, v12) && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063AB4();
    }

    completionCopy[2](completionCopy);
  }

  else
  {
    v14 = self->_broadcastUploadExtensionProxy;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100038008;
    v17[3] = &unk_1000A1F28;
    v18 = completionCopy;
    [(RPBroadcastExtensionProxy *)v14 processPayload:v7 completion:v17];
    v11 = v18;
  }

LABEL_19:
}

- (id)systemBroadcastSessionAudioQueue
{
  if (qword_1000B6950 != -1)
  {
    sub_100063B60();
  }

  v3 = qword_1000B6948;

  return v3;
}

- (id)systemBroadcastSessionVideoQueue
{
  if (qword_1000B6960 != -1)
  {
    sub_100063B74();
  }

  v3 = qword_1000B6958;

  return v3;
}

- (unsigned)orientationFromFigTransform:(unint64_t)transform
{
  if (transform - 1 > 6)
  {
    return 1;
  }

  else
  {
    return dword_1000765C8[transform - 1];
  }
}

- (void)handleTimerDidUpdate:(id)update
{
  updateCopy = update;
  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    [(RPClientProtocol *)self->super._clientProxy recordingTimerDidUpdate:updateCopy];
  }
}

- (void)handleSystemAlertStop
{
  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000382B0;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPSystemBroadcastSession *)self stopSystemBroadcastWithHandler:v3];
  }
}

- (void)handleDeviceLockedWarning
{
  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10003841C;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPSystemBroadcastSession *)self stopSystemBroadcastWithHandler:v3];
  }
}

- (void)handleDeviceRestrictionWarning
{
  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100038588;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPSystemBroadcastSession *)self stopSystemBroadcastWithHandler:v3];
  }
}

- (void)handleResumeCaptureWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v22 = "[RPSystemBroadcastSession handleResumeCaptureWithCompletionHandler:]";
    v23 = 1024;
    v24 = 852;
    v25 = 2048;
    selfCopy = self;
    v27 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p resuming in session state %d", buf, 0x22u);
  }

  v5 = +[RPFeatureFlagUtility sharedInstance];
  screenRecordingPassthroughCamera = [v5 screenRecordingPassthroughCamera];

  if (screenRecordingPassthroughCamera)
  {
    mixedRealityCameraEnabled = [(RPSession *)self mixedRealityCameraEnabled];
  }

  else
  {
    mixedRealityCameraEnabled = [(RPBroadcastExtensionProxy *)self->_broadcastUploadExtensionProxy enableMixedRealityCamera];
  }

  v8 = mixedRealityCameraEnabled;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v22 = "[RPSystemBroadcastSession handleResumeCaptureWithCompletionHandler:]";
    v23 = 1024;
    v24 = 859;
    v25 = 1024;
    LODWORD(selfCopy) = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d enableMixedRealityCamera=%d", buf, 0x18u);
  }

  self->super._sessionIsResuming = 1;
  v9 = +[RPCaptureManager sharedInstance];
  microphoneEnabled = [(RPSession *)self microphoneEnabled];
  [(RPSession *)self windowSize];
  v12 = v11;
  v14 = v13;
  contextID = [(RPSession *)self contextID];
  v16 = [NSArray arrayWithObject:contextID];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100038938;
  v19[3] = &unk_1000A1840;
  v19[4] = self;
  v20 = handlerCopy;
  v17 = handlerCopy;
  LOBYTE(v18) = 1;
  [v9 startCaptureForDelegate:self forProcessID:0xFFFFFFFFLL shouldStartMicrophoneCapture:microphoneEnabled windowSize:0 captureType:v16 contextIDs:v8 mixedRealityCamera:v12 systemCapture:v14 didStartHandler:{v18, v19}];
}

- (void)handleResumeContextIDFailure
{
  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100038AE0;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPSystemBroadcastSession *)self stopSystemBroadcastWithHandler:v3];
  }
}

- (void)handleFrontmostApplicationDidChange:(id)change
{
  changeCopy = change;
  if (self->_broadcastExtension)
  {
    if (self->_broadcastUploadExtensionProxy)
    {
      v5 = +[NSMutableDictionary dictionary];
      [v5 setObject:changeCopy forKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyFrontmostAppBundleID"];
      [(RPBroadcastExtensionProxy *)self->_broadcastUploadExtensionProxy processPayload:v5 completion:&stru_1000A22E0];
    }

    else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063B88();
    }
  }

  else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100063C10();
  }
}

@end