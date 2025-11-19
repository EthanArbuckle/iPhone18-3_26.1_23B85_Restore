@interface RPSession
+ (unint64_t)getFileSizeForURL:(id)a3;
- (BOOL)checkContextIDsMatch:(id)a3;
- (BOOL)dispatchLimitReached:(int64_t)a3;
- (BOOL)shouldBypassAlertForTest;
- (BOOL)shouldSupressAlert;
- (BOOL)showAlertRecordingCaptureSessionWithError:(id)a3;
- (BOOL)showStopSystemSessionAlert;
- (BOOL)statusBarCoordinator:(id)a3 receivedTapWithContext:(id)a4 completionBlock:(id)a5;
- (CGAffineTransform)CGAffineTransformFromFigTransformFlags:(SEL)a3;
- (CGSize)windowSize;
- (RPSession)initWithClientProxy:(id)a3 sessionType:(int)a4 callingPID:(int)a5 bundleID:(id)a6 delegate:(id)a7;
- (id)checkApplicationForegroundRequirement;
- (id)checkCaptureRequirementsWithMicrophoneEnabled:(BOOL)a3 cameraEnabled:(BOOL)a4 windowSize:(CGSize)a5;
- (id)checkContextIDRequirement;
- (id)checkDeviceLockedRequirement;
- (id)checkMinWindowSizeRequirement:(CGSize)a3;
- (id)checkMultiWindowRequirement;
- (id)checkSufficientFreeSpace;
- (id)getCallingConnectionBundleID;
- (id)getNotificationBodyTextForSessionType:(int)a3 cameraEnabled:(BOOL)a4 microphoneEnabled:(BOOL)a5;
- (id)getNotificationTitleTextForSessionType:(int)a3 bundleID:(id)a4;
- (id)serviceNameForReporting;
- (void)addObserversForSession;
- (void)callObserver:(id)a3 callChanged:(id)a4;
- (void)checkAndPlaySystemSessionSound:(BOOL)a3;
- (void)checkAndPlaySystemSessionSoundForRecordingOn:(BOOL)a3;
- (void)checkForAcknowledgementAlertTimeout;
- (void)clearBackgroundActivityUI;
- (void)clearSystemRecordingUI;
- (void)clientApplicationDidEnterBackground;
- (void)clientApplicationDidEnterForeground;
- (void)dealloc;
- (void)dispatchCompleted:(int64_t)a3;
- (void)frontmostApplicationDidChange:(id)a3;
- (void)handleDisplayBacklightUpdate:(id)a3;
- (void)handleUpdateDisplayLayout:(id)a3;
- (void)invalidate;
- (void)notifyClientSessionDidStopWithError:(int64_t)a3 movieURL:(id)a4 showAlert:(BOOL)a5;
- (void)pauseSession;
- (void)processSampleBuffer:(opaqueCMSampleBuffer *)a3 transformFlags:(unint64_t)a4 movieWriter:(id)a5;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)removeObserversForSession;
- (void)reportSessionEndReason:(id)a3;
- (void)reportSummaryEvent:(int64_t)a3 recordedFileSize:(int64_t)a4;
- (void)resumeSessionWithWindowLayerContextID:(id)a3 completionHandler:(id)a4;
- (void)sendBiomeEventWithSessionState:(int)a3;
- (void)sessionReportCameraUsage:(int64_t)a3;
- (void)setUpDeviceLockNotifications;
- (void)setUpFrontBoardServices;
- (void)setUpStatusBarAssertionWithServiceName:(id)a3;
- (void)startAcknowledgementAlertTimer;
- (void)startWithContextID:(id)a3 windowSize:(CGSize)a4;
- (void)updatePauseOffsetForSampleBuffer:(opaqueCMSampleBuffer *)a3 withSampleType:(int)a4 handler:(id)a5;
- (void)updatePauseOffsetFromVideoBuffer:(opaqueCMSampleBuffer *)a3;
- (void)updateReportingSampleCount:(int)a3;
@end

@implementation RPSession

- (RPSession)initWithClientProxy:(id)a3 sessionType:(int)a4 callingPID:(int)a5 bundleID:(id)a6 delegate:(id)a7
{
  v33 = a3;
  v13 = a6;
  v14 = a7;
  v34.receiver = self;
  v34.super_class = RPSession;
  v15 = [(RPSession *)&v34 init];
  v16 = objc_opt_class();
  v17 = v16 != objc_opt_class() || dword_1000B6840 > 2;
  if (!v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006060C();
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  else if (!v15)
  {
    goto LABEL_15;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 136446978;
    v36 = "[RPSession initWithClientProxy:sessionType:callingPID:bundleID:delegate:]";
    v37 = 1024;
    v38 = 154;
    v39 = 2112;
    v40 = v19;
    v41 = 2048;
    v42 = v15;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p", buf, 0x26u);
  }

  objc_storeStrong(v15 + 2, a3);
  v20 = *(v15 + 47);
  *(v15 + 47) = 0;

  *(v15 + 392) = CGSizeZero;
  objc_storeStrong(v15 + 46, a6);
  *(v15 + 21) = a4;
  v21 = [RPReportingAgent alloc];
  v22 = [v15 serviceNameForReporting];
  v23 = [(RPReportingAgent *)v21 initWithServiceName:v22];
  v24 = *(v15 + 48);
  *(v15 + 48) = v23;

  objc_storeStrong(v15 + 3, a7);
  v25 = *(v15 + 12);
  *(v15 + 12) = 0;

  v15[88] = 0;
  *(v15 + 21) = 0x4020000000000000;
  *(v15 + 2) = *&kCMTimeInvalid.value;
  *(v15 + 6) = kCMTimeInvalid.epoch;
  *(v15 + 56) = *&kCMTimeZero.value;
  *(v15 + 9) = kCMTimeZero.epoch;
  v15[80] = 0;
  *(v15 + 165) = 0;
  *(v15 + 88) = 0;
  *(v15 + 84) = 3;
  *(v15 + 2) = a5;
  v26 = objc_alloc_init(RPApplicationStateMonitor);
  v27 = *(v15 + 16);
  *(v15 + 16) = v26;

  [*(v15 + 16) addObserver:v15 processIdentifier:*(v15 + 2)];
  if (*(v15 + 21) == 6)
  {
    [*(v15 + 16) addSystemObserver:v15];
  }

  v28 = objc_alloc_init(RPStatusBarAssertion);
  v29 = *(v15 + 20);
  *(v15 + 20) = v28;

  v30 = 0;
  *(v15 + 13) = 0;
  if ((*(v15 + 21) - 5) <= 2)
  {
    v30 = objc_alloc_init(CXCallObserver);
  }

  v31 = *(v15 + 14);
  *(v15 + 14) = v30;

  [v15 setUpFrontBoardServices];
  [v15 setDeviceLocked:0];
  v15[328] = 0;
  [v15 setUpDeviceLockNotifications];
  pthread_mutex_init((v15 + 200), 0);
  pthread_mutex_init((v15 + 264), 0);
LABEL_15:

  return v15;
}

- (void)invalidate
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = 136446978;
    v6 = "[RPSession invalidate]";
    v7 = 1024;
    v8 = 221;
    v9 = 2112;
    v10 = v4;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p", &v5, 0x26u);
  }

  [(RPApplicationStateMonitor *)self->_applicationStateMonitor removeObserverWithProcessIdentifier:self->_callingPID];
  if (self->_sessionType == 6)
  {
    [(RPApplicationStateMonitor *)self->_applicationStateMonitor removeSystemObserver];
  }
}

- (void)dealloc
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    *buf = 136446978;
    v7 = "[RPSession dealloc]";
    v8 = 1024;
    v9 = 231;
    v10 = 2112;
    v11 = v4;
    v12 = 2048;
    v13 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p", buf, 0x26u);
  }

  pthread_mutex_destroy(&self->_videoMutex);
  pthread_mutex_destroy(&self->_audioMutex);
  if (self->_aksEvent)
  {
    AKSEventsUnregister();
    self->_aksEvent = 0;
  }

  v5.receiver = self;
  v5.super_class = RPSession;
  [(RPSession *)&v5 dealloc];
}

- (void)startWithContextID:(id)a3 windowSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v15 = 136446978;
    v16 = "[RPSession startWithContextID:windowSize:]";
    v17 = 1024;
    v18 = 243;
    v19 = 2112;
    v20 = *&v10;
    v21 = 2048;
    v22 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p", &v15, 0x26u);
  }

  objc_storeStrong(&self->_contextID, a3);
  sessionType = self->_sessionType;
  if (sessionType == 5 || sessionType == 8)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136446978;
      v16 = "[RPSession startWithContextID:windowSize:]";
      v17 = 1024;
      v18 = 249;
      v19 = 2048;
      v20 = width;
      v21 = 2048;
      v22 = *&height;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d use requested window size width:%lf x height:%lf", &v15, 0x26u);
    }

    self->_windowSize.width = width;
  }

  else
  {
    [RPHardwareUtility limitRecordingWindowSizeFromSize:width, height];
    height = v13;
    self->_windowSize.width = v14;
  }

  self->_windowSize.height = height;
  *&self->_lastSampleTimestamp.value = *&kCMTimeInvalid.value;
  self->_lastSampleTimestamp.epoch = kCMTimeInvalid.epoch;
  *&self->_sampleTimeOffset.value = *&kCMTimeZero.value;
  self->_sampleTimeOffset.epoch = kCMTimeZero.epoch;
  self->_sessionIsResuming = 0;
  [(RPSession *)self addObserversForSession];
  [(RPSession *)self setSessionState:0];
  [(RPSession *)self checkForAcknowledgementAlertTimeout];
}

- (void)addObserversForSession
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v6 = 136446978;
    v7 = "[RPSession addObserversForSession]";
    v8 = 1024;
    v9 = 262;
    v10 = 2112;
    v11 = v4;
    v12 = 2048;
    v13 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p", &v6, 0x26u);
  }

  [(CXCallObserver *)self->_callObserver setDelegate:self queue:0];
  v5 = +[MCProfileConnection sharedConnection];
  [v5 addObserver:self];
}

- (void)removeObserversForSession
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v6 = 136446978;
    v7 = "[RPSession removeObserversForSession]";
    v8 = 1024;
    v9 = 273;
    v10 = 2112;
    v11 = v4;
    v12 = 2048;
    v13 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p", &v6, 0x26u);
  }

  [(CXCallObserver *)self->_callObserver setDelegate:0 queue:0];
  v5 = +[MCProfileConnection sharedConnection];
  [v5 removeObserver:self];
}

- (void)reportSessionEndReason:(id)a3
{
  v4 = a3;
  v5 = [(RPSession *)self serviceNameForReporting];
  [RPReportingAgent reportSessionEnded:2 endReason:v4 withServiceName:v5 clientBundleId:self->_bundleID];
}

- (void)reportSummaryEvent:(int64_t)a3 recordedFileSize:(int64_t)a4
{
  v7 = [(RPSession *)self reportingAgent];
  [v7 setRecordedFileSize:a4];

  v8 = [(RPSession *)self reportingAgent];
  [v8 setEndReason:a3];

  v11 = [(RPSession *)self reportingAgent];
  v9 = [(RPSession *)self reportingAgent];
  v10 = [v9 collectSummaryEventMetrics];
  [v11 reportEventWithType:1 dictionary:v10 clientBundleId:self->_bundleID];
}

- (void)checkForAcknowledgementAlertTimeout
{
  sessionType = self->_sessionType;
  if ((sessionType - 5) < 4 || sessionType == 3)
  {
    self->_isExempt = 0;
    *&self->_didAcceptMicrophonePermission = 0;
  }

  else
  {
    if (self->_lastExemptTime)
    {
      v5 = +[NSDate date];
      [v5 timeIntervalSinceDate:self->_lastExemptTime];
      v7 = v6 / 60.0;

      if (self->_privacyAcknowledgementAlertTimeoutMinutes >= v7)
      {
        if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          isExempt = self->_isExempt;
          v10 = 136446978;
          v11 = "[RPSession checkForAcknowledgementAlertTimeout]";
          v12 = 1024;
          v13 = 323;
          v14 = 2048;
          v15 = v7;
          v16 = 1024;
          v17 = isExempt;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d after %.2f minutes, user acknowledgement exempt %d", &v10, 0x22u);
        }
      }

      else
      {
        if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136446722;
          v11 = "[RPSession checkForAcknowledgementAlertTimeout]";
          v12 = 1024;
          v13 = 318;
          v14 = 2048;
          v15 = v7;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d after %.2f minutes, user acknowledgement required", &v10, 0x1Cu);
        }

        self->_isExempt = 0;
        *&self->_didAcceptMicrophonePermission = 0;
      }
    }

    lastExemptTime = self->_lastExemptTime;
    self->_lastExemptTime = 0;
  }
}

- (void)startAcknowledgementAlertTimer
{
  sessionType = self->_sessionType;
  v3 = sessionType > 7;
  v4 = (1 << sessionType) & 0xE8;
  if (v3 || v4 == 0)
  {
    if (self->_lastExemptTime)
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        isExempt = self->_isExempt;
        v11 = 136446722;
        v12 = "[RPSession startAcknowledgementAlertTimer]";
        v13 = 1024;
        v14 = 341;
        v15 = 1024;
        v16 = isExempt;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d timer already running for user acknowledgement exempt %d", &v11, 0x18u);
      }
    }

    else
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_isExempt;
        v11 = 136446722;
        v12 = "[RPSession startAcknowledgementAlertTimer]";
        v13 = 1024;
        v14 = 338;
        v15 = 1024;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d starting timer for user acknowledgement exempt %d", &v11, 0x18u);
      }

      v9 = +[NSDate date];
      lastExemptTime = self->_lastExemptTime;
      self->_lastExemptTime = v9;
    }
  }
}

- (void)updateReportingSampleCount:(int)a3
{
  if (a3 == 2)
  {
    v3 = [(RPSession *)self reportingAgent];
    [v3 setMicFrameCount:{objc_msgSend(v3, "micFrameCount") + 1}];
  }

  else if (a3 == 1)
  {
    v3 = [(RPSession *)self reportingAgent];
    [v3 setAppAudioFrameCount:{objc_msgSend(v3, "appAudioFrameCount") + 1}];
  }

  else
  {
    if (a3)
    {
      return;
    }

    v3 = [(RPSession *)self reportingAgent];
    [v3 setVideoFrameCount:{objc_msgSend(v3, "videoFrameCount") + 1}];
  }
}

- (void)setUpStatusBarAssertionWithServiceName:(id)a3
{
  v4 = a3;
  [@"com.apple.replayd" UTF8String];
  if (!os_variant_allows_internal_security_policies())
  {
    goto LABEL_7;
  }

  v5 = CFPreferencesCopyAppValue(@"RPHideStatusBar", @"com.apple.replayd");
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "[RPSession setUpStatusBarAssertionWithServiceName:]";
    v9 = 1024;
    v10 = 398;
    v11 = 1024;
    v12 = v5 != 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d hideStatusBar=%d", buf, 0x18u);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  else
  {
LABEL_7:
    [(RPStatusBarAssertion *)self->_statusBarAssertion setDelegate:self];
    [(RPStatusBarAssertion *)self->_statusBarAssertion setAssertionDelegate:self];
    [(RPStatusBarAssertion *)self->_statusBarAssertion setBroadcasting:self->_sessionType == 6];
    [(RPStatusBarAssertion *)self->_statusBarAssertion setBroadcastServiceName:v4];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001259C;
    block[3] = &unk_1000A1088;
    block[4] = self;
    dispatch_sync(&_dispatch_main_q, block);
  }
}

- (void)clearSystemRecordingUI
{
  if ((self->_sessionType - 5) <= 3)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v6 = 136446978;
      v7 = "[RPSession clearSystemRecordingUI]";
      v8 = 1024;
      v9 = 422;
      v10 = 2112;
      v11 = v4;
      v12 = 2048;
      v13 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p stop monitoring foreground apps", &v6, 0x26u);
    }

    userNotificationStopRecording = self->_userNotificationStopRecording;
    if (userNotificationStopRecording)
    {
      CFUserNotificationCancel(userNotificationStopRecording);
    }

    [(RPStatusBarAssertion *)self->_statusBarAssertion invalidateStatusBar];
  }
}

- (void)notifyClientSessionDidStopWithError:(int64_t)a3 movieURL:(id)a4 showAlert:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [NSError _rpUserErrorForCode:a3 userInfo:0];
  [(RPSessionDelegate *)self->_delegate sessionDidStop];
  [(RPClientProtocol *)self->_clientProxy recordingDidStopWithError:v9 movieURL:v8];

  if (v5)
  {
    [(RPSession *)self showAlertRecordingCaptureSessionWithError:v9];
  }
}

- (void)pauseSession
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = 136446978;
    v6 = "[RPSession pauseSession]";
    v7 = 1024;
    v8 = 470;
    v9 = 2112;
    v10 = v4;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p", &v5, 0x26u);
  }

  [(RPSession *)self setSessionState:4];
  [(RPStatusBarAssertion *)self->_statusBarAssertion pauseSession];
}

- (void)resumeSessionWithWindowLayerContextID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v16 = 136446978;
    v17 = "[RPSession resumeSessionWithWindowLayerContextID:completionHandler:]";
    v18 = 1024;
    v19 = 478;
    v20 = 2112;
    v21 = v9;
    v22 = 2048;
    v23 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p", &v16, 0x26u);
  }

  if (self->_sessionState == 4)
  {
    [(RPSession *)self checkForAcknowledgementAlertTimeout];
    [(RPSession *)self setContextID:v6];
    microphoneEnabled = self->_microphoneEnabled;
    if ([(RPSession *)self getAcknowledgementAlertResultsWithMicrophone:self->_microphoneEnabled cameraEnabled:self->_cameraEnabled])
    {
      if (self->_sessionType == 2 && microphoneEnabled && !self->_microphoneEnabled)
      {
        if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v16 = 136446978;
          v17 = "[RPSession resumeSessionWithWindowLayerContextID:completionHandler:]";
          v18 = 1024;
          v19 = 499;
          v20 = 2112;
          v21 = v15;
          v22 = 2048;
          v23 = self;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p resume capture with mic, but session will silence mic", &v16, 0x26u);
        }

        self->_microphoneEnabled = 1;
        [(RPSession *)self handleResumeCaptureWithCompletionHandler:v7];
        self->_microphoneEnabled = 0;
      }

      else
      {
        [(RPSession *)self handleResumeCaptureWithCompletionHandler:v7];
      }

      [(RPStatusBarAssertion *)self->_statusBarAssertion resumeSession];
      goto LABEL_19;
    }

    [(RPSession *)self setSessionState:3];
    if (!v7)
    {
      goto LABEL_19;
    }

    v12 = -5801;
LABEL_18:
    v13 = [NSError _rpUserErrorForCode:v12 userInfo:0];
    v7[2](v7, v13);

    goto LABEL_19;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sessionState = self->_sessionState;
    v16 = 136446722;
    v17 = "[RPSession resumeSessionWithWindowLayerContextID:completionHandler:]";
    v18 = 1024;
    v19 = 512;
    v20 = 1024;
    LODWORD(v21) = sessionState;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Cannot resume session as it was not in paused state. Session state:%d", &v16, 0x18u);
  }

  if (v7)
  {
    v12 = -5832;
    goto LABEL_18;
  }

LABEL_19:
}

- (void)updatePauseOffsetFromVideoBuffer:(opaqueCMSampleBuffer *)a3
{
  memset(&v8, 0, sizeof(v8));
  CMSampleBufferGetPresentationTimeStamp(&v8, a3);
  if (self->_sessionIsResuming)
  {
    memset(&v7, 0, sizeof(v7));
    CMTimeMake(&v7, v8.value - self->_lastSampleTimestamp.value, v8.timescale);
    time1 = kCMTimeZero;
    sampleTimeOffset = self->_sampleTimeOffset;
    if (CMTimeCompare(&time1, &sampleTimeOffset))
    {
      CMTimeMake(&time1, self->_sampleTimeOffset.value + v7.value, v7.timescale);
      *&self->_sampleTimeOffset.value = *&time1.value;
      epoch = time1.epoch;
    }

    else
    {
      *&self->_sampleTimeOffset.value = *&v7.value;
      epoch = v7.epoch;
    }

    self->_sampleTimeOffset.epoch = epoch;
    self->_sessionIsResuming = 0;
  }

  else
  {
    self->_lastSampleTimestamp = v8;
  }
}

- (void)updatePauseOffsetForSampleBuffer:(opaqueCMSampleBuffer *)a3 withSampleType:(int)a4 handler:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (!a4)
  {
    [(RPSession *)self updatePauseOffsetFromVideoBuffer:a3];
LABEL_5:
    memset(&v16, 0, sizeof(v16));
    CMSampleBufferGetPresentationTimeStamp(&v16, a3);
    time1 = self->_sampleTimeOffset;
    time2 = kCMTimeZero;
    if (CMTimeCompare(&time1, &time2))
    {
      memset(&time1, 0, sizeof(time1));
      time2 = v16;
      sampleTimeOffset = self->_sampleTimeOffset;
      CMTimeSubtract(&time1, &time2, &sampleTimeOffset);
      memset(&time2, 0, sizeof(time2));
      sampleTimeOffset = time1;
      CMTimeConvertScale(&time2, &sampleTimeOffset, v16.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      sampleTimeOffset = time2;
      v10 = sub_100057350(a3, &sampleTimeOffset);
      v11 = v9[2];
      if (v10)
      {
        v12 = v10;
        v11(v9, v10);
        CFRelease(v12);
        goto LABEL_10;
      }
    }

    else
    {
      v11 = v9[2];
    }

    v11(v9, a3);
    goto LABEL_10;
  }

  if (!self->_sessionIsResuming)
  {
    goto LABEL_5;
  }

  (v8[2])(v8, 0);
LABEL_10:
}

- (void)processSampleBuffer:(opaqueCMSampleBuffer *)a3 transformFlags:(unint64_t)a4 movieWriter:(id)a5
{
  v8 = a5;
  if (self->_sessionState == 4)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[RPSession processSampleBuffer:transformFlags:movieWriter:]";
      *&buf[12] = 1024;
      *&buf[14] = 579;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session is paused discard sample", buf, 0x12u);
    }
  }

  else
  {
    v9 = *&CGAffineTransformIdentity.c;
    *buf = *&CGAffineTransformIdentity.a;
    *&buf[16] = v9;
    v12 = *&CGAffineTransformIdentity.tx;
    if ((self->_sessionType - 5) <= 2)
    {
      [(RPSession *)self CGAffineTransformFromFigTransformFlags:a4];
    }

    v10[0] = *buf;
    v10[1] = *&buf[16];
    v10[2] = v12;
    [v8 appendVideoSampleBuffer:a3 withWindowTransform:v10];
  }
}

- (CGAffineTransform)CGAffineTransformFromFigTransformFlags:(SEL)a3
{
  v4 = a4;
  v6 = *&CGAffineTransformIdentity.a;
  v7 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v7;
  v8 = *&CGAffineTransformIdentity.tx;
  *&retstr->tx = v8;
  if ((a4 & 4) != 0)
  {
    v13 = v8;
    v14 = v7;
    v15 = v6;
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.a) = 136446466;
      *(&buf.a + 4) = "[RPSession CGAffineTransformFromFigTransformFlags:]";
      WORD2(buf.b) = 1024;
      *(&buf.b + 6) = 599;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d rotate clockwise", &buf, 0x12u);
    }

    CGAffineTransformMakeRotation(&buf, 1.57079633);
    *&t1.a = v15;
    *&t1.c = v14;
    *&t1.tx = v13;
    self = CGAffineTransformConcat(retstr, &t1, &buf);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        return self;
      }

      goto LABEL_13;
    }
  }

  else if ((a4 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.a) = 136446466;
    *(&buf.a + 4) = "[RPSession CGAffineTransformFromFigTransformFlags:]";
    WORD2(buf.b) = 1024;
    *(&buf.b + 6) = 603;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d flip x", &buf, 0x12u);
  }

  v9 = *&retstr->c;
  *&t1.a = *&retstr->a;
  *&t1.c = v9;
  *&t1.tx = *&retstr->tx;
  self = CGAffineTransformScale(&buf, &t1, -1.0, 1.0);
  v10 = *&buf.c;
  *&retstr->a = *&buf.a;
  *&retstr->c = v10;
  *&retstr->tx = *&buf.tx;
  if (v4)
  {
LABEL_13:
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.a) = 136446466;
      *(&buf.a + 4) = "[RPSession CGAffineTransformFromFigTransformFlags:]";
      WORD2(buf.b) = 1024;
      *(&buf.b + 6) = 607;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d flip y", &buf, 0x12u);
    }

    v11 = *&retstr->c;
    *&t1.a = *&retstr->a;
    *&t1.c = v11;
    *&t1.tx = *&retstr->tx;
    self = CGAffineTransformScale(&buf, &t1, 1.0, -1.0);
    v12 = *&buf.c;
    *&retstr->a = *&buf.a;
    *&retstr->c = v12;
    *&retstr->tx = *&buf.tx;
  }

  return self;
}

- (void)checkAndPlaySystemSessionSound:(BOOL)a3
{
  v3 = a3;
  if ((+[RPHardwareUtility supportsShutterSound](RPHardwareUtility, "supportsShutterSound") || +[RPHardwareUtility isVoiceOverRunning]) && (self->_sessionType - 5) <= 2)
  {
    if (v3)
    {
      v5 = 1117;
    }

    else
    {
      v5 = 1118;
    }

    AudioServicesPlaySystemSound(v5);
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = [MCProfileConnection sharedConnection:a3];
  if ([v5 effectiveBoolValueForSetting:MCFeatureScreenRecordingAllowed] == 2)
  {
    [(RPSession *)self handleDeviceRestrictionWarning];
  }
}

- (void)setUpDeviceLockNotifications
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    *buf = 136446978;
    v11 = "[RPSession setUpDeviceLockNotifications]";
    v12 = 1024;
    v13 = 654;
    v14 = 2112;
    v15 = v4;
    v16 = 2048;
    v17 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p", buf, 0x26u);
  }

  [@"com.apple.replayd" UTF8String];
  if (os_variant_allows_internal_security_policies())
  {
    v5 = CFPreferencesCopyAppValue(@"RPEnableLockedRecording", @"com.apple.replayd");
    self->_enableLockedRecording = v5 != 0;
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      enableLockedRecording = self->_enableLockedRecording;
      *buf = 136446722;
      v11 = "[RPSession setUpDeviceLockNotifications]";
      v12 = 1024;
      v13 = 661;
      v14 = 1024;
      LODWORD(v15) = enableLockedRecording;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d enableLockedRecording=%d", buf, 0x18u);
    }
  }

  else
  {
    v5 = 0;
  }

  if (!self->_enableLockedRecording)
  {
    if (self->_aksEvent)
    {
      AKSEventsUnregister();
    }

    v7 = dispatch_get_global_queue(2, 0);
    v9[5] = _NSConcreteStackBlock;
    v9[6] = 3221225472;
    v9[7] = sub_100013788;
    v9[8] = &unk_1000A1678;
    v9[9] = self;
    self->_aksEvent = AKSEventsRegister();

    if (!self->_aksEvent && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100060734();
    }

    v8 = dispatch_get_global_queue(0, 0);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000138C0;
    v9[3] = &unk_1000A10B0;
    v9[4] = self;
    notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &self->_lockToResetToken, v8, v9);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

- (void)setUpFrontBoardServices
{
  self->_levelOneElementCount = 0;
  v3 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
  [v3 setNeedsUserInteractivePriority:1];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100013AC4;
  v10 = &unk_1000A16A0;
  v11 = self;
  v12 = dispatch_semaphore_create(0);
  v4 = v12;
  [v3 setTransitionHandler:&v7];
  v5 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v3, v7, v8, v9, v10, v11];
  layoutMonitor = self->_layoutMonitor;
  self->_layoutMonitor = v5;

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)handleUpdateDisplayLayout:(id)a3
{
  v4 = a3;
  v5 = +[RPFeatureFlagUtility sharedInstance];
  v6 = [v5 systemBannerEnabled];

  if (v6)
  {
    [(RPSession *)self handleDisplayBacklightUpdate:v4];
  }

  if ([(RPSession *)self checkMultiWindow])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v4 elements];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      LODWORD(v10) = 0;
      v11 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) bundleIdentifier];

          if (v13)
          {
            v10 = (v10 + 1);
          }

          else
          {
            v10 = v10;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
      }

      while (v9);

      if (v10 > 1)
      {
        self->_levelOneElementCount = v10;
        if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          levelOneElementCount = self->_levelOneElementCount;
          *buf = 136446722;
          v20 = "[RPSession handleUpdateDisplayLayout:]";
          v21 = 1024;
          v22 = 809;
          v23 = 2048;
          v24 = levelOneElementCount;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d stop recording from split mode with %ld elements", buf, 0x1Cu);
        }

        [(RPSession *)self handleDisplayWarning];
        goto LABEL_21;
      }
    }

    else
    {

      LODWORD(v10) = 0;
    }

    self->_levelOneElementCount = v10;
  }

LABEL_21:
}

- (void)handleDisplayBacklightUpdate:(id)a3
{
  v4 = a3;
  if ([v4 displayBacklightLevel])
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446722;
      v6 = "[RPSession handleDisplayBacklightUpdate:]";
      v7 = 1024;
      v8 = 824;
      v9 = 1024;
      v10 = [v4 displayBacklightLevel];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Display layout updated displayBacklightLevel=%d", &v5, 0x18u);
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446466;
      v6 = "[RPSession handleDisplayBacklightUpdate:]";
      v7 = 1024;
      v8 = 819;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Display layout updated to minimum backlight", &v5, 0x12u);
    }

    if (!self->_enableLockedRecording)
    {
      [(RPSession *)self handleDeviceLockedWarning];
    }
  }
}

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  v5 = a4;
  if (([v5 isOutgoing] & 1) == 0 && (objc_msgSend(v5, "hasEnded") & 1) == 0)
  {
    [(RPSession *)self handleIncomingCallWarning];
  }
}

- (id)checkCaptureRequirementsWithMicrophoneEnabled:(BOOL)a3 cameraEnabled:(BOOL)a4 windowSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v16 = 136446978;
    v17 = "[RPSession checkCaptureRequirementsWithMicrophoneEnabled:cameraEnabled:windowSize:]";
    v18 = 1024;
    v19 = 847;
    v20 = 2112;
    v21 = v9;
    v22 = 2048;
    v23 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p", &v16, 0x26u);
  }

  v10 = [(RPSession *)self checkSufficientFreeSpace];
  if ((self->_sessionType - 9) <= 0xFFFFFFFB && v10 == 0)
  {
    v10 = [(RPSession *)self checkContextIDRequirement];
    if (!v10)
    {
      v10 = [(RPSession *)self checkApplicationForegroundRequirement];
      if (!v10)
      {
        v10 = [(RPSession *)self checkMultiWindowRequirement];
      }
    }
  }

  v12 = v10;
  sessionType = self->_sessionType;
  if ((sessionType - 5) < 3)
  {
    if (v10)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (sessionType == 8 && !v10)
  {
LABEL_17:
    v14 = [(RPSession *)self checkDeviceLockedRequirement];

    v12 = v14;
  }

  if (!v12)
  {
    v12 = [(RPSession *)self checkMinWindowSizeRequirement:width, height];
  }

LABEL_20:
  if (v12 && dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136446722;
    v17 = "[RPSession checkCaptureRequirementsWithMicrophoneEnabled:cameraEnabled:windowSize:]";
    v18 = 1024;
    v19 = 889;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Check requirements error %@", &v16, 0x1Cu);
  }

  return v12;
}

- (id)checkDeviceLockedRequirement
{
  if (self->_deviceLocked)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446466;
      v5 = "[RPSession checkDeviceLockedRequirement]";
      v6 = 1024;
      v7 = 898;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d failed to start system recording because device was in locked state", &v4, 0x12u);
    }

    v2 = [NSError _rpUserErrorForCode:-5809 userInfo:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)checkContextIDRequirement
{
  v2 = self;
  contextID = self->_contextID;
  v3 = [NSArray arrayWithObjects:&contextID count:1];
  LOBYTE(v2) = [(RPSession *)v2 checkContextIDsMatch:v3];

  if (v2)
  {
    v4 = 0;
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446466;
      v7 = "[RPSession checkContextIDRequirement]";
      v8 = 1024;
      v9 = 913;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d contextIDs do not match", &v6, 0x12u);
    }

    v4 = [NSError _rpUserErrorForCode:-5803 userInfo:0];
  }

  return v4;
}

- (BOOL)checkContextIDsMatch:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [RPStringUtility numberFromString:*(*(&v14 + 1) + 8 * v8), v14];
      [v9 unsignedIntValue];

      ClientPort = CARenderServerGetClientPort();
      if (!ClientPort)
      {
        break;
      }

      v11 = [RPConnectionManager uniqueClientIdentifierWithPID:CARenderServerGetClientProcessId()];
      v12 = [(RPSession *)self getCallingConnectionBundleID];
      mach_port_deallocate(mach_task_self_, ClientPort);
      ClientPort = [v11 isEqualToString:v12];

      if (!ClientPort)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        LOBYTE(ClientPort) = 1;
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(ClientPort) = 1;
  }

  return ClientPort;
}

- (id)getCallingConnectionBundleID
{
  v2 = +[RPConnectionManager sharedInstance];
  v3 = [v2 currentConnection];

  v4 = +[RPConnectionManager uniqueClientIdentifierWithPID:](RPConnectionManager, "uniqueClientIdentifierWithPID:", [v3 processIdentifier]);

  return v4;
}

- (id)checkSufficientFreeSpace
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 _srDeviceHasSufficientFreeSpaceForRecording];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446466;
      v7 = "[RPSession checkSufficientFreeSpace]";
      v8 = 1024;
      v9 = 972;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d insufficient disk space for recording", &v6, 0x12u);
    }

    v4 = [NSError _rpUserErrorForCode:-5805 userInfo:0];
  }

  return v4;
}

- (id)checkApplicationForegroundRequirement
{
  if ([(RPApplicationStateMonitor *)self->_applicationStateMonitor isApplicationInForegroundWithBundleIdentifier:self->_bundleID])
  {
    v2 = 0;
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446466;
      v5 = "[RPSession checkApplicationForegroundRequirement]";
      v6 = 1024;
      v7 = 984;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d attempted to start recording with application not in the foreground", &v4, 0x12u);
    }

    v2 = [NSError _rpUserErrorForCode:-5803 userInfo:0];
  }

  return v2;
}

- (id)checkMultiWindowRequirement
{
  if (self->_levelOneElementCount < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = [NSError _rpUserErrorForCode:-5807 userInfo:0];
    if (v2)
    {
      v3 = dword_1000B6840 > 1;
    }

    else
    {
      v3 = 1;
    }

    if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446466;
      v6 = "[RPSession checkMultiWindowRequirement]";
      v7 = 1024;
      v8 = 996;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d attempted to start recording in split mode, bailing out", &v5, 0x12u);
    }
  }

  return v2;
}

- (id)checkMinWindowSizeRequirement:(CGSize)a3
{
  if (a3.height <= 0.0 || a3.width <= 0.0)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000607BC();
    }

    v3 = [NSError _rpUserErrorForCode:-5834 userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldSupressAlert
{
  [@"com.apple.replayd" UTF8String];
  if (!os_variant_allows_internal_security_policies())
  {
    return 0;
  }

  v3 = CFPreferencesCopyAppValue(@"RPSuppressAlert", @"com.apple.replayd");
  v4 = v3 != 0;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446722;
    v9 = "[RPSession shouldSupressAlert]";
    v10 = 1024;
    v11 = 1057;
    v12 = 1024;
    v13 = v3 != 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d suppressAlert=%d", &v8, 0x18u);
  }

  v5 = CFPreferencesCopyAppValue(@"RPEnableShortPrivacyTrigger", @"com.apple.replayd");
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446722;
    v9 = "[RPSession shouldSupressAlert]";
    v10 = 1024;
    v11 = 1059;
    v12 = 1024;
    v13 = v5 != 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d shortPrivacyPrompt=%d", &v8, 0x18u);
  }

  v6 = 0.333333333;
  if (!v5)
  {
    v6 = 8.0;
  }

  self->_privacyAcknowledgementAlertTimeoutMinutes = v6;
  if (v3)
  {
    CFRelease(v3);
    return 1;
  }

  return v4;
}

- (id)getNotificationTitleTextForSessionType:(int)a3 bundleID:(id)a4
{
  v5 = [NSBundle _rpLocalizedAppNameFromBundleID:self->_bundleID, a4];
  v6 = self->_sessionType - 1;
  if (v6 > 3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:off_1000A16C0[v6]];
    v8 = [NSString stringWithFormat:v7, v5];
  }

  return v8;
}

- (id)getNotificationBodyTextForSessionType:(int)a3 cameraEnabled:(BOOL)a4 microphoneEnabled:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = self->_sessionType - 1;
  if (v8 <= 3)
  {
    v9 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:off_1000A16E0[v8]];
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    sessionType = self->_sessionType;
    v11 = [v9 stringByAppendingString:@" "];
    if (sessionType == 3)
    {
      v12 = @"ACKNOWLEDGEMENT_BROADCAST_ALERT_BODY_CAMERA";
      goto LABEL_10;
    }

LABEL_9:
    v12 = @"ACKNOWLEDGEMENT_ALERT_BODY_CAMERA";
    goto LABEL_10;
  }

  v9 = 0;
  if (a4)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!v5)
  {
    goto LABEL_11;
  }

  v10 = self->_sessionType;
  v11 = [v9 stringByAppendingString:@" "];
  if (v10 != 3)
  {
    goto LABEL_9;
  }

  v12 = @"ACKNOWLEDGEMENT_BROADCAST_ALERT_BODY_MIC";
LABEL_10:
  v14 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v12];
  v15 = [v11 stringByAppendingString:v14];

  v9 = v15;
LABEL_11:

  return v9;
}

- (BOOL)shouldBypassAlertForTest
{
  v2 = [(RPSession *)self bundleID];
  v3 = [v2 isEqualToString:@"com.apple.replayKit.ReplayKitTestRunneriOS"];

  return v3;
}

- (BOOL)showStopSystemSessionAlert
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    *buf = 136446978;
    v25 = "[RPSession showStopSystemSessionAlert]";
    v26 = 1024;
    v27 = 1324;
    v28 = 2112;
    v29 = v4;
    v30 = 2048;
    v31 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p", buf, 0x26u);
  }

  if (self->_sessionState != 1)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      sessionState = self->_sessionState;
      *buf = 136447234;
      v25 = "[RPSession showStopSystemSessionAlert]";
      v26 = 1024;
      v27 = 1328;
      v28 = 2112;
      v29 = v13;
      v30 = 2048;
      v31 = self;
      v32 = 1024;
      v33 = sessionState;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p ignore stop session in state %d", buf, 0x2Cu);
    }

    v11 = 0;
    v10 = 0;
    v9 = 0;
    v6 = 0;
    goto LABEL_35;
  }

  if (self->_sessionType == 8 || ([(RPSession *)self pauseSession], sessionType = self->_sessionType, sessionType == 8))
  {
    v6 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"HQLR_STATUSBAR_TAPPED_ALERT_TITLE"];
    v9 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"HQLR_STATUSBAR_TAPPED_ALERT_BODY"];
    v10 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"HQLR_STATUSBAR_TAPPED_ALERT_DECLINE_BUTTON"];
    v15 = @"HQLR_STATUSBAR_TAPPED_ALERT_ACCEPT_BUTTON";
LABEL_14:
    v11 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v15];
    goto LABEL_15;
  }

  if (sessionType != 6)
  {
    v6 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"RECORDING_STATUSBAR_TAPPED_ALERT_TITLE"];
    v9 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"RECORDING_STATUSBAR_TAPPED_ALERT_BODY"];
    v10 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"RECORDING_STATUSBAR_TAPPED_ALERT_DECLINE_BUTTON"];
    v15 = @"RECORDING_STATUSBAR_TAPPED_ALERT_ACCEPT_BUTTON";
    goto LABEL_14;
  }

  v6 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_STATUSBAR_TAPPED_ALERT_TITLE"];
  v7 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_STATUSBAR_TAPPED_ALERT_BODY"];
  v8 = [(RPStatusBarAssertion *)self->_statusBarAssertion broadcastServiceName];
  v9 = [NSString stringWithFormat:v7, v8];

  v10 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_STATUSBAR_TAPPED_ALERT_DECLINE_BUTTON"];
  v11 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_STATUSBAR_TAPPED_ALERT_ACCEPT_BUTTON"];

LABEL_15:
  v22[0] = kCFUserNotificationAlertHeaderKey;
  v22[1] = kCFUserNotificationAlertMessageKey;
  v23[0] = v6;
  v23[1] = v9;
  v22[2] = kCFUserNotificationOtherButtonTitleKey;
  v22[3] = kCFUserNotificationDefaultButtonTitleKey;
  v23[2] = v11;
  v23[3] = v10;
  v16 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4]);
  self->_userNotificationStopRecording = v16;
  if (v16)
  {
    responseFlags = 0;
    CFUserNotificationReceiveResponse(v16, 0.0, &responseFlags);
    if (responseFlags != 2)
    {
      if (!responseFlags)
      {
        if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v25 = "[RPSession showStopSystemSessionAlert]";
          v26 = 1024;
          v27 = 1366;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d user stop recording, broadcast, or local capture", buf, 0x12u);
        }

        [(RPSession *)self handleSystemAlertStop];
      }

      goto LABEL_34;
    }

    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v25 = "[RPSession showStopSystemSessionAlert]";
      v26 = 1024;
      v27 = 1370;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d user canceled stop of recording, broadcast, or local capture", buf, 0x12u);
    }

    v17 = self->_sessionType;
    if (v17 == 6)
    {
      clientProxy = self->_clientProxy;
      v19 = @"RPSystemBroadcast";
    }

    else
    {
      if (v17 != 5)
      {
LABEL_34:
        CFRelease(self->_userNotificationStopRecording);
        self->_userNotificationStopRecording = 0;
        goto LABEL_35;
      }

      clientProxy = self->_clientProxy;
      v19 = @"RPSystemRecording";
    }

    [(RPClientProtocol *)clientProxy shouldResumeSessionType:v19];
    goto LABEL_34;
  }

  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000608FC();
  }

LABEL_35:

  return 0;
}

- (id)serviceNameForReporting
{
  v2 = self->_sessionType - 1;
  if (v2 > 7)
  {
    return 0;
  }

  else
  {
    return off_1000A1700[v2];
  }
}

- (void)sessionReportCameraUsage:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = [(RPSession *)self reportingAgent];
    v5 = [v4 backCameraUsed];
  }

  else
  {
    if (a3 != 2)
    {
      return;
    }

    v4 = [(RPSession *)self reportingAgent];
    v5 = [v4 frontCameraUsed];
  }

  v6 = v5;

  if ((v6 & 1) == 0)
  {
    v7 = [(RPSession *)self reportingAgent];
    [v7 setFrontCameraUsed:1];
  }
}

- (BOOL)showAlertRecordingCaptureSessionWithError:(id)a3
{
  v4 = a3;
  v5 = [(RPSession *)self shouldBypassAlertForTest];
  if (!v5)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 136446978;
      v25 = "[RPSession showAlertRecordingCaptureSessionWithError:]";
      v26 = 1024;
      v27 = 1443;
      v28 = 2112;
      v29 = v7;
      v30 = 2048;
      v31 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p", buf, 0x26u);
    }

    v8 = self->_sessionType == 8;
    if (self->_sessionType == 8)
    {
      v9 = @"LOCAL_CAPTURE_FAILED_ALERT_MESSAGE_FORMAT";
    }

    else
    {
      v9 = @"RECORDING_FAILED_ALERT_MESSAGE_FORMAT";
    }

    v10 = @"LOCAL_CAPTURE_STATUSBAR_TAPPED_ALERT_TITLE";
    if (!v8)
    {
      v10 = @"RECORDING_STATUSBAR_TAPPED_ALERT_TITLE";
    }

    v11 = v10;
    v12 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v9];
    v13 = [v4 localizedDescription];
    v14 = [NSString stringWithFormat:v12, v13];

    v15 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v11];

    v16 = v14;
    v17 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_FAILED_ALERT_OK_BUTTON"];
    v22[0] = kCFUserNotificationAlertHeaderKey;
    v22[1] = kCFUserNotificationAlertMessageKey;
    v23[0] = v15;
    v23[1] = v16;
    v22[2] = kCFUserNotificationDefaultButtonTitleKey;
    v23[2] = v17;
    v18 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3]);
    if (v18)
    {
      v19 = v18;
      responseFlags = 0;
      CFUserNotificationReceiveResponse(v18, 0.0, &responseFlags);
      if (!responseFlags && dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v25 = "[RPSession showAlertRecordingCaptureSessionWithError:]";
        v26 = 1024;
        v27 = 1475;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d user has hit okay, alert will be dismissed", buf, 0x12u);
      }

      CFRelease(v19);
    }

    else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100060984();
    }
  }

  return v5;
}

- (void)checkAndPlaySystemSessionSoundForRecordingOn:(BOOL)a3
{
  v3 = a3;
  if (+[RPHardwareUtility supportsShutterSound](RPHardwareUtility, "supportsShutterSound") || +[RPHardwareUtility isVoiceOverRunning])
  {
    if (v3)
    {
      v4 = 1117;
    }

    else
    {
      v4 = 1118;
    }

    AudioServicesPlaySystemSound(v4);
  }
}

+ (unint64_t)getFileSizeForURL:(id)a3
{
  v3 = a3;
  v9 = 0;
  v8 = 0;
  [v3 getResourceValue:&v9 forKey:NSURLFileSizeKey error:&v8];
  v4 = v9;
  v5 = v8;
  if (v4)
  {
    v6 = [v4 unsignedIntegerValue];
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v11 = "+[RPSession getFileSizeForURL:]";
      v12 = 1024;
      v13 = 1515;
      v14 = 2048;
      v15 = v6;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d recordedFileSize for URL %lu bytes URL: %@", buf, 0x26u);
    }
  }

  else
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100060A0C(v5);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)statusBarCoordinator:(id)a3 receivedTapWithContext:(id)a4 completionBlock:(id)a5
{
  v6 = a5;
  [(RPSession *)self showStopSystemSessionAlert];
  v6[2](v6);

  return 1;
}

- (void)frontmostApplicationDidChange:(id)a3
{
  v4 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 136446978;
    v8 = "[RPSession frontmostApplicationDidChange:]";
    v9 = 1024;
    v10 = 1559;
    v11 = 2112;
    v12 = v6;
    v13 = 2048;
    v14 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p", &v7, 0x26u);
  }

  [(RPSession *)self handleFrontmostApplicationDidChange:v4];
}

- (void)clientApplicationDidEnterBackground
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = 136446978;
    v6 = "[RPSession clientApplicationDidEnterBackground]";
    v7 = 1024;
    v8 = 1565;
    v9 = 2112;
    v10 = v4;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p", &v5, 0x26u);
  }

  [(RPSession *)self handleClientApplicationDidEnterBackground];
  [(RPSession *)self startAcknowledgementAlertTimer];
}

- (void)clientApplicationDidEnterForeground
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = 136446978;
    v6 = "[RPSession clientApplicationDidEnterForeground]";
    v7 = 1024;
    v8 = 1572;
    v9 = 2112;
    v10 = v4;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ %p", &v5, 0x26u);
  }

  [(RPSession *)self handleClientApplicationDidEnterForeground];
}

- (void)clearBackgroundActivityUI
{
  v3 = [(RPSession *)self elapsedTimeTimer];
  [v3 invalidate];

  [(RPSession *)self setElapsedTimeTimer:0];
  v4 = [(RPSession *)self backgroundActivity];
  [v4 deactivate];

  [(RPSession *)self setBackgroundActivity:0];

  [(RPSession *)self setRecordingStartTime:0.0];
}

- (BOOL)dispatchLimitReached:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = 184;
  }

  else
  {
    v4 = 192;
  }

  if (a3 == 1)
  {
    v5 = 200;
  }

  else
  {
    v5 = 264;
  }

  pthread_mutex_lock((self + v5));
  v6 = *(&self->super.isa + v4);
  if (v6 <= 4)
  {
    *(&self->super.isa + v4) = (v6 + 1);
  }

  pthread_mutex_unlock((self + v5));
  v7 = v6 < 5 || dword_1000B6840 > 2;
  if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100060AB0();
  }

  return v6 > 4;
}

- (void)dispatchCompleted:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = 200;
  }

  else
  {
    v4 = 264;
  }

  if (a3 == 1)
  {
    v5 = 184;
  }

  else
  {
    v5 = 192;
  }

  pthread_mutex_lock((self + v4));
  --*(&self->super.isa + v5);

  pthread_mutex_unlock((self + v4));
}

- (void)sendBiomeEventWithSessionState:(int)a3
{
  if (a3 <= 4 && ((1 << a3) & 0x1A) != 0)
  {
    [(RPSession *)self sendBiomeEventIsStarting:a3 == 1];
  }
}

- (CGSize)windowSize
{
  width = self->_windowSize.width;
  height = self->_windowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end