@interface CCDShieldUILifeCycleManager
+ (id)sharedInstance;
- (CCDShieldUILifeCycleManager)init;
- (CCDShieldUISession)activeSession;
- (void)_acquireAlwaysOnDisplayAssertion;
- (void)_acquireAppSwitcherAssertion;
- (void)_acquireLockScreenAssertion;
- (void)_forceTerminateShieldIfApplicableWithBundleID:(id)a3 completion:(id)a4 completionTimeoutInSec:(unint64_t)a5;
- (void)_launchShieldUIProcess;
- (void)_releaseAlwaysOnDisplayAssertion;
- (void)_releaseAppSwitcherAssertion;
- (void)_releaseLockScreenAssertion;
- (void)_setSystemStatusAttributionStatus:(id)a3;
- (void)assertionTargetProcessDidExit:(id)a3;
- (void)bringShieldUIProcessToForegroundIfApplicable;
- (void)dealloc;
- (void)forceShieldUITerminationIfApplicable;
- (void)launchShieldForDeviceIdentifier:(id)a3 name:(id)a4 model:(int64_t)a5 skipPlacementStep:(BOOL)a6 isDedicated:(BOOL)a7 micOnly:(BOOL)a8 statusHandler:(id)a9;
- (void)notifyShieldStatus:(int64_t)a3;
- (void)prepareForPullConversation:(id)a3;
- (void)shieldDidConnect:(id *)a3;
- (void)shieldDidDisconnect;
- (void)tearDownShield;
@end

@implementation CCDShieldUILifeCycleManager

+ (id)sharedInstance
{
  if (qword_100021B18 != -1)
  {
    sub_100010FDC();
  }

  v3 = qword_100021B20;

  return v3;
}

- (CCDShieldUILifeCycleManager)init
{
  v12.receiver = self;
  v12.super_class = CCDShieldUILifeCycleManager;
  v2 = [(CCDShieldUILifeCycleManager *)&v12 init];
  if (v2)
  {
    v3 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = v2;
      v10 = 2080;
      v11 = "[CCDShieldUILifeCycleManager init]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v8, 0x16u);
    }

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.shieldui.lifecyclemanager", v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (void)dealloc
{
  [(CCDShieldUILifeCycleManager *)self _releaseLockScreenAssertion];
  [(CCDShieldUILifeCycleManager *)self _releaseAppSwitcherAssertion];
  [(CCDShieldUILifeCycleManager *)self _releaseAlwaysOnDisplayAssertion];
  v3.receiver = self;
  v3.super_class = CCDShieldUILifeCycleManager;
  [(CCDShieldUILifeCycleManager *)&v3 dealloc];
}

- (CCDShieldUISession)activeSession
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activeSession;
  objc_sync_exit(v2);

  return v3;
}

- (void)assertionTargetProcessDidExit:(id)a3
{
  v3 = a3;
  v4 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[CCDShieldUILifeCycleManager assertionTargetProcessDidExit:]";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s assertion %@ ", &v5, 0x16u);
  }
}

- (void)_setSystemStatusAttributionStatus:(id)a3
{
  v4 = a3;
  v5 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412802;
    v7 = self;
    v8 = 2080;
    v9 = "[CCDShieldUILifeCycleManager _setSystemStatusAttributionStatus:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ %s %@", &v6, 0x20u);
  }

  [STDynamicActivityAttributionPublisher setCurrentAttributionKey:0 andApp:v4];
}

- (void)shieldDidConnect:(id *)a3
{
  v4 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CCDShieldUILifeCycleManager *)self activeSession];
    *buf = 138543874;
    v10 = self;
    v11 = 2080;
    v12 = "[CCDShieldUILifeCycleManager shieldDidConnect:]";
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s activeSession %{public}@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026F8;
  block[3] = &unk_10001C6E0;
  objc_copyWeak(&v8, buf);
  dispatch_async(queue, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)shieldDidDisconnect
{
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543618;
    v5 = self;
    v6 = 2080;
    v7 = "[CCDShieldUILifeCycleManager shieldDidDisconnect]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v4, 0x16u);
  }

  [(CCDShieldUILifeCycleManager *)self forceShieldUITerminationIfApplicable];
}

- (void)prepareForPullConversation:(id)a3
{
  v4 = a3;
  v5 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = self;
    v12 = 2080;
    v13 = "[CCDShieldUILifeCycleManager prepareForPullConversation:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002970;
  v8[3] = &unk_10001C770;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, v8);
}

- (void)notifyShieldStatus:(int64_t)a3
{
  v5 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CCDShieldUILifeCycleManager *)self activeSession];
    v10 = 138544130;
    v11 = self;
    v12 = 2080;
    v13 = "[CCDShieldUILifeCycleManager notifyShieldStatus:]";
    v14 = 1024;
    v15 = a3;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s error %d for session %{public}@", &v10, 0x26u);
  }

  v7 = self;
  objc_sync_enter(v7);
  v8 = objc_retainBlock(v7->_statusHandler);
  objc_sync_exit(v7);

  if (v8)
  {
    v9 = [(CCDShieldUILifeCycleManager *)v7 activeSession];
    v8[2](v8, v9, a3);
  }
}

- (void)launchShieldForDeviceIdentifier:(id)a3 name:(id)a4 model:(int64_t)a5 skipPlacementStep:(BOOL)a6 isDedicated:(BOOL)a7 micOnly:(BOOL)a8 statusHandler:(id)a9
{
  v9 = a8;
  v10 = a7;
  v11 = a6;
  v15 = a3;
  v16 = a4;
  v17 = a9;
  v18 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(CCDShieldUILifeCycleManager *)self activeSession];
    *buf = 138545410;
    v33 = self;
    v34 = 2080;
    v35 = "[CCDShieldUILifeCycleManager launchShieldForDeviceIdentifier:name:model:skipPlacementStep:isDedicated:micOnly:statusHandler:]";
    v36 = 1024;
    v37 = v11;
    v38 = 1024;
    v39 = v10;
    v40 = 1024;
    v41 = v9;
    v42 = 2114;
    v43 = v15;
    v44 = 2114;
    v45 = v16;
    v46 = 1024;
    v47 = a5;
    v48 = 2114;
    v49 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ %s skipPlacementStep:%d isDedicated:%d micOnly:%d identifier:%{public}@ name:%{public}@ model:%d activeSession:%{public}@", buf, 0x4Cu);
  }

  queue = self->_queue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100002CCC;
  v24[3] = &unk_10001C798;
  v24[4] = self;
  v25 = v15;
  v27 = v17;
  v28 = a5;
  v29 = v11;
  v30 = v10;
  v31 = v9;
  v26 = v16;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  dispatch_async(queue, v24);
}

- (void)_launchShieldUIProcess
{
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:SBSOpenApplicationEnvironmentSecureOnLockScreen forKey:SBSOpenApplicationOptionKeyLaunchEnvironment];
  [v3 setObject:&__kCFBooleanTrue forKey:FBSOpenApplicationOptionKeyPromptUnlockDevice];
  [v3 setObject:&__kCFBooleanTrue forKey:FBSOpenApplicationOptionKeyUnlockDevice];
  if (!self->_shieldConnected)
  {
    v4 = [(CCDShieldUILifeCycleManager *)self activeSession];
    v5 = [v4 bundleIdentifier];
    v6 = [v5 isEqual:@"com.apple.ContinuitySingShieldUI"];

    v7 = @"ContinuityCaptureShieldUILaunch";
    if (v6)
    {
      v7 = @"ContinuitySing";
    }

    v8 = [NSString stringWithFormat:@"%@://", v7];
    v9 = [NSURL URLWithString:v8];

    v10 = [(CCDShieldUILifeCycleManager *)self activeSession];
    v11 = [v10 configuration];

    v26 = 0;
    v12 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v26];
    v13 = v26;
    if (v13 || !v12)
    {
      v14 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100010FF0(v13, v14);
      }
    }

    else
    {
      [v3 setObject:v9 forKey:FBSOpenApplicationOptionKeyPayloadURL];
      v24 = @"kContinuityCaptureLaunchUIConfigurationKey";
      v25 = v12;
      v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      [v3 setObject:v14 forKey:FBSOpenApplicationOptionKeyPayloadAnnotation];
    }
  }

  v15 = [v3 copy];
  v16 = [FBSOpenApplicationOptions optionsWithDictionary:v15];

  v17 = SBSCreateOpenApplicationService();
  v18 = [(CCDShieldUILifeCycleManager *)self activeSession];
  v19 = [v18 bundleIdentifier];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000035F4;
  v21[3] = &unk_10001C7E0;
  objc_copyWeak(&v23, &location);
  v20 = v19;
  v22 = v20;
  [v17 openApplication:v20 withOptions:v16 completion:v21];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)bringShieldUIProcessToForegroundIfApplicable
{
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v7 = self;
    v8 = 2080;
    v9 = "[CCDShieldUILifeCycleManager bringShieldUIProcessToForegroundIfApplicable]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000037DC;
  block[3] = &unk_10001C808;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_forceTerminateShieldIfApplicableWithBundleID:(id)a3 completion:(id)a4 completionTimeoutInSec:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(location, self);
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 0;
  v10 = @"com.apple.ContinuityCaptureShieldUI";
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;
  v12 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v11];
  v45 = 0;
  v13 = [RBSProcessHandle handleForPredicate:v12 error:&v45];
  v14 = v45;
  if (v13)
  {
    v25 = a5;
    v15 = dispatch_queue_create("com.apple.forceTerminateShield", 0);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100003B8C;
    v40[3] = &unk_10001C858;
    objc_copyWeak(&v44, location);
    v16 = v15;
    v41 = v16;
    v43 = v46;
    v26 = v9;
    v17 = v9;
    v42 = v17;
    [v13 monitorForDeath:v40];
    v24 = v11;
    v18 = [[RBSTerminateContext alloc] initWithExplanation:@"Terminated by ccd due to timeout"];
    v19 = [[RBSTerminateRequest alloc] initWithPredicate:v12 context:v18];
    v39 = 0;
    v20 = [v19 execute:&v39];
    v21 = v39;

    v22 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v32 = "[CCDShieldUILifeCycleManager _forceTerminateShieldIfApplicableWithBundleID:completion:completionTimeoutInSec:]";
      v33 = 2112;
      v34 = v19;
      v35 = 2114;
      v36 = v21;
      v37 = 1024;
      v38 = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s request %@ error %{public}@ status %d", buf, 0x26u);
    }

    v23 = dispatch_time(0, 1000000000 * v25);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003D20;
    block[3] = &unk_10001C880;
    v29 = v46;
    objc_copyWeak(&v30, location);
    v28 = v17;
    dispatch_after(v23, v16, block);

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v44);

    v14 = v21;
    v9 = v26;
    v11 = v24;
  }

  else
  {
    v9[2](v9);
  }

  _Block_object_dispose(v46, 8);
  objc_destroyWeak(location);
}

- (void)forceShieldUITerminationIfApplicable
{
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v7 = self;
    v8 = 2080;
    v9 = "[CCDShieldUILifeCycleManager forceShieldUITerminationIfApplicable]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003ED4;
  block[3] = &unk_10001C808;
  block[4] = self;
  dispatch_async_and_wait(queue, block);
}

- (void)tearDownShield
{
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v7 = self;
    v8 = 2080;
    v9 = "[CCDShieldUILifeCycleManager tearDownShield]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004124;
  block[3] = &unk_10001C808;
  block[4] = self;
  dispatch_async_and_wait(queue, block);
}

- (void)_acquireLockScreenAssertion
{
  dispatch_assert_queue_V2(self->_queue);
  lockScreenAssertion = self->_lockScreenAssertion;
  v4 = CMContinuityCaptureLog();
  v5 = v4;
  if (lockScreenAssertion)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001109C(v5);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Acquiring SBSSecureAppAssertion for lock screen", buf, 2u);
    }

    objc_initWeak(buf, self);
    v6 = [(CCDShieldUILifeCycleManager *)self activeSession];
    v7 = [v6 bundleIdentifier];
    v8 = [v7 isEqual:@"com.apple.ContinuitySingShieldUI"];

    if (v8)
    {
      v9 = 8;
    }

    else
    {
      v9 = 7;
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100004604;
    v12[3] = &unk_10001C8A8;
    objc_copyWeak(&v13, buf);
    v10 = [SBSSecureAppAssertion acquireSecureAppAssertionWithType:v9 errorHandler:v12];
    v11 = self->_lockScreenAssertion;
    self->_lockScreenAssertion = v10;

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

- (void)_releaseLockScreenAssertion
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing SBSSecureAppAssertion for lock screen", v6, 2u);
  }

  lockScreenAssertion = self->_lockScreenAssertion;
  if (lockScreenAssertion)
  {
    [(SBSLockScreenContentAssertion *)lockScreenAssertion invalidate];
    v5 = self->_lockScreenAssertion;
    self->_lockScreenAssertion = 0;
  }
}

- (void)_acquireAppSwitcherAssertion
{
  dispatch_assert_queue_V2(self->_queue);
  appSwitcherAssertion = self->_appSwitcherAssertion;
  v4 = CMContinuityCaptureLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (appSwitcherAssertion)
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempted to acquire AppSwitcherAssertion even though we already have one", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Acquiring SBSRequestAppSwitcherAppearanceForHiddenApplication", buf, 2u);
    }

    objc_initWeak(buf, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000049A0;
    v11[3] = &unk_10001C8D0;
    objc_copyWeak(&v12, buf);
    v6 = objc_retainBlock(v11);
    appSwitcherAssertionCompletion = self->_appSwitcherAssertionCompletion;
    self->_appSwitcherAssertionCompletion = v6;

    v8 = [(CCDShieldUILifeCycleManager *)self activeSession];
    v9 = [v8 bundleIdentifier];
    objc_copyWeak(&v10, buf);
    SBSRequestAppSwitcherAppearanceForHiddenApplication();

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

- (void)_releaseAppSwitcherAssertion
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing AppSwitcherAssertion", v7, 2u);
  }

  appSwitcherAssertionCompletion = self->_appSwitcherAssertionCompletion;
  self->_appSwitcherAssertionCompletion = 0;

  appSwitcherAssertion = self->_appSwitcherAssertion;
  if (appSwitcherAssertion)
  {
    [(SBSAssertion *)appSwitcherAssertion invalidate];
    v6 = self->_appSwitcherAssertion;
    self->_appSwitcherAssertion = 0;
  }
}

- (void)_acquireAlwaysOnDisplayAssertion
{
  dispatch_assert_queue_V2(self->_queue);
  alwaysOnDisplayAssertionToken = self->_alwaysOnDisplayAssertionToken;
  v4 = CMContinuityCaptureLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (alwaysOnDisplayAssertionToken)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempted to acquire always on display assertion even though we already have one", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Acquiring always on display assertion", v8, 2u);
    }

    v4 = objc_alloc_init(SBSLockScreenService);
    v6 = [v4 preventSpuriousScreenUndimWithReason:@"Continuity Capture Enabled"];
    v7 = self->_alwaysOnDisplayAssertionToken;
    self->_alwaysOnDisplayAssertionToken = v6;

    [v4 invalidate];
  }
}

- (void)_releaseAlwaysOnDisplayAssertion
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing always on display assertion", v6, 2u);
  }

  alwaysOnDisplayAssertionToken = self->_alwaysOnDisplayAssertionToken;
  if (alwaysOnDisplayAssertionToken)
  {
    [(BSInvalidatable *)alwaysOnDisplayAssertionToken invalidate];
    v5 = self->_alwaysOnDisplayAssertionToken;
    self->_alwaysOnDisplayAssertionToken = 0;
  }
}

@end