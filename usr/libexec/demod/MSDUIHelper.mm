@interface MSDUIHelper
+ (id)sharedInstance;
- (BOOL)launchFullScreenUI;
- (BOOL)launchFullScreenUI_ios;
- (MSDUIHelper)init;
- (void)activateFullScreenUIAppMonitor;
- (void)deactivateFullScreenUIAppMonitor;
- (void)demoUpdateAllowCancel:(BOOL)a3;
- (void)demoUpdateDisableIdleTimer:(BOOL)a3;
- (void)demoUpdateFailed:(id)a3;
- (void)demoUpdateProgress:(int64_t)a3;
- (void)fullScreenUICanceledByUser;
- (void)handleFullScreenUIAppStateChange:(unsigned __int8)a3 withVisibility:(BOOL)a4;
- (void)layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4;
- (void)reenableIdleTimer;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)requestFullScreenUI;
- (void)setConnection:(id)a3;
- (void)startFullScreenUIWith:(id)a3 allowCancel:(BOOL)a4 disableIdleTimer:(BOOL)a5;
- (void)stopFullScreenUI:(id)a3;
@end

@implementation MSDUIHelper

+ (id)sharedInstance
{
  if (qword_1001A5A10 != -1)
  {
    sub_1000E7288();
  }

  v3 = qword_1001A5A08;

  return v3;
}

- (MSDUIHelper)init
{
  v12.receiver = self;
  v12.super_class = MSDUIHelper;
  v2 = [(MSDUIHelper *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(MSDUIHelper *)v2 setFullScreenState:0];
    v4 = dispatch_queue_create("com.apple.msduihelper", 0);
    [(MSDUIHelper *)v3 setUiHelperQueue:v4];

    [(MSDUIHelper *)v3 setCurrentProgress:0];
    [(MSDUIHelper *)v3 setFullScreenUIAppId:@"com.apple.StoreDemoViewService"];
    v5 = [FBSDisplayLayoutMonitor sharedMonitorForDisplayType:0];
    [(MSDUIHelper *)v3 setDisplayLayoutMonitor:v5];

    v6 = [BLSAssertion alloc];
    v7 = +[BLSDisableAlwaysOnAttribute disableAlwaysOn];
    v13 = v7;
    v8 = [NSArray arrayWithObjects:&v13 count:1];
    v9 = [v6 initWithExplanation:@"demod BlockingUI Active" attributes:v8];
    [(MSDUIHelper *)v3 setAlwaysOnDisplayAssertion:v9];

    v10 = v3;
  }

  return v3;
}

- (void)setConnection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(MSDUIHelper *)self uiHelperQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AA000;
  v7[3] = &unk_10016C1B8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  objc_copyWeak(&v10, &location);
  dispatch_async(v5, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)startFullScreenUIWith:(id)a3 allowCancel:(BOOL)a4 disableIdleTimer:(BOOL)a5
{
  v8 = a3;
  objc_initWeak(&location, self);
  v9 = [(MSDUIHelper *)self uiHelperQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000AA2BC;
  v11[3] = &unk_10016C1E0;
  objc_copyWeak(&v13, &location);
  v14 = a4;
  v12 = v8;
  v15 = a5;
  v10 = v8;
  dispatch_async(v9, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)stopFullScreenUI:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(MSDUIHelper *)self uiHelperQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AA514;
  v7[3] = &unk_10016C230;
  objc_copyWeak(&v10, &location);
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)fullScreenUICanceledByUser
{
  objc_initWeak(&location, self);
  v3 = [(MSDUIHelper *)self uiHelperQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000AA9B4;
  v4[3] = &unk_100169C78;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)reenableIdleTimer
{
  objc_initWeak(&location, self);
  v3 = [(MSDUIHelper *)self uiHelperQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000AAAF8;
  v4[3] = &unk_100169C78;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)requestFullScreenUI
{
  [(MSDUIHelper *)self setFullScreenState:1];
  v3 = [(MSDUIHelper *)self launchFullScreenUI];
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Request to launch blocking UI: %d", &buf, 8u);
  }

  objc_initWeak(&buf, self);
  v5 = dispatch_time(0, 15000000000);
  v6 = [(MSDUIHelper *)self uiHelperQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AAD38;
  block[3] = &unk_100169C78;
  objc_copyWeak(&v8, &buf);
  dispatch_after(v5, v6, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&buf);
}

- (BOOL)launchFullScreenUI
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Trying to start blocking UI...", v5, 2u);
  }

  return [(MSDUIHelper *)self launchFullScreenUI_ios];
}

- (void)activateFullScreenUIAppMonitor
{
  v3 = [(MSDUIHelper *)self displayLayoutMonitor];
  [v3 addObserver:self];

  v4 = [(MSDUIHelper *)self alwaysOnDisplayAssertion];
  [v4 acquireWithObserver:0];

  objc_initWeak(&location, self);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1000AAF6C;
  v9 = &unk_10016C280;
  objc_copyWeak(&v10, &location);
  v5 = [RBSProcessMonitor monitorWithConfiguration:&v6];
  [(MSDUIHelper *)self setFullScreenUIAppMonitor:v5, v6, v7, v8, v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)deactivateFullScreenUIAppMonitor
{
  v3 = [(MSDUIHelper *)self displayLayoutMonitor];
  [v3 removeObserver:self];

  v4 = [(MSDUIHelper *)self alwaysOnDisplayAssertion];
  [v4 cancel];

  v5 = [(MSDUIHelper *)self fullScreenUIAppMonitor];

  if (v5)
  {
    v6 = [(MSDUIHelper *)self fullScreenUIAppMonitor];
    [v6 invalidate];

    [(MSDUIHelper *)self setFullScreenUIAppMonitor:0];
  }
}

- (void)handleFullScreenUIAppStateChange:(unsigned __int8)a3 withVisibility:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109376;
    HIDWORD(buf) = v5;
    v19 = 1024;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Full screen UI app state change to %d, visible:%d", &buf, 0xEu);
  }

  objc_initWeak(&buf, self);
  if (v5 <= 1)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "App is crashed or terminated.", v17, 2u);
    }

    v9 = dispatch_time(0, 1000000000);
    v10 = [(MSDUIHelper *)self uiHelperQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AB520;
    block[3] = &unk_100169C78;
    v11 = &v16;
    objc_copyWeak(&v16, &buf);
    dispatch_after(v9, v10, block);
LABEL_14:

    objc_destroyWeak(v11);
    goto LABEL_15;
  }

  if ((v5 == 3 || v5 == 4 && !v4) && [(MSDUIHelper *)self backlightStatus])
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "App is no longer in foreground.", v17, 2u);
    }

    v10 = [(MSDUIHelper *)self uiHelperQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000AB5BC;
    v13[3] = &unk_100169C78;
    v11 = &v14;
    objc_copyWeak(&v14, &buf);
    dispatch_async(v10, v13);
    goto LABEL_14;
  }

LABEL_15:
  objc_destroyWeak(&buf);
}

- (BOOL)launchFullScreenUI_ios
{
  [(MSDUIHelper *)self setFullScreenUILaunchError_iOS:0];
  v35[0] = @"DisplayString";
  v3 = [(MSDUIHelper *)self message];
  v36[0] = v3;
  v35[1] = @"CancelButton";
  v4 = [NSNumber numberWithBool:[(MSDUIHelper *)self allowCancel]];
  v36[1] = v4;
  v35[2] = @"DisableIdleTimer";
  v5 = [NSNumber numberWithBool:[(MSDUIHelper *)self disableIdleTimer]];
  v36[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:3];

  v7 = [(MSDUIHelper *)self remoteAlertHandle];

  if (v7)
  {
    goto LABEL_2;
  }

  v9 = +[MSDTargetDevice sharedInstance];
  v10 = [v9 mode];

  if (v10 == 4)
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E73B0();
    }

    [MSDAppLauncherTerminator launchApp:@"com.apple.StoreDemoViewService" withOptions:0 outError:0];
  }

  v12 = [SBSRemoteAlertDefinition alloc];
  v13 = [RBSProcessIdentity identityForApplicationJobLabel:@"com.apple.StoreDemoViewService"];
  v14 = [v12 initWithSceneProvidingProcess:v13 configurationIdentifier:@"BlockingUIRemoteAlert"];

  v15 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  [v15 setUserInfo:v6];
  v16 = [SBSRemoteAlertHandle newHandleWithDefinition:v14 configurationContext:v15];
  [(MSDUIHelper *)self setRemoteAlertHandle:v16];

  v17 = objc_alloc_init(SBSRemoteAlertActivationContext);
  v18 = [(MSDUIHelper *)self remoteAlertHandle];
  [v18 addObserver:self];

  v19 = [[NSConditionLock alloc] initWithCondition:0];
  [(MSDUIHelper *)self setConditionLock:v19];

  v20 = [(MSDUIHelper *)self remoteAlertHandle];
  [v20 activateWithContext:v17];

  v21 = sub_100063A54();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 136315138;
    v32 = "[MSDUIHelper launchFullScreenUI_ios]";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: Full screen UI was launched.", &v31, 0xCu);
  }

  v22 = [NSDate dateWithTimeIntervalSinceNow:10.0];
  v23 = [(MSDUIHelper *)self conditionLock];
  v24 = [v23 lockWhenCondition:1 beforeDate:v22];

  v25 = sub_100063A54();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 136315138;
    v32 = "[MSDUIHelper launchFullScreenUI_ios]";
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s: Full screen UI launch completed.", &v31, 0xCu);
  }

  if (!v24)
  {

LABEL_13:
    v27 = [(MSDUIHelper *)self fullScreenUILaunchError_iOS];

    if (v27)
    {
      v28 = sub_100063A54();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(MSDUIHelper *)self fullScreenUILaunchError_iOS];
        v31 = 136315394;
        v32 = "[MSDUIHelper launchFullScreenUI_ios]";
        v33 = 2114;
        v34 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s: Error = %{public}@", &v31, 0x16u);
      }
    }

    else
    {
      if (v24)
      {
LABEL_20:
        v8 = 0;
        goto LABEL_21;
      }

      v28 = sub_100063A54();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136315138;
        v32 = "[MSDUIHelper launchFullScreenUI_ios]";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s: Error = Timeout launching full screen UI.", &v31, 0xCu);
      }
    }

    goto LABEL_20;
  }

  v26 = [(MSDUIHelper *)self fullScreenUILaunchError_iOS];

  if (v26)
  {
    goto LABEL_13;
  }

LABEL_2:
  v8 = 1;
LABEL_21:

  return v8;
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[MSDUIHelper remoteAlertHandleDidActivate:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s is called.", &v7, 0xCu);
  }

  v5 = [(MSDUIHelper *)self conditionLock];

  if (v5)
  {
    v6 = [(MSDUIHelper *)self conditionLock];
    [v6 unlockWithCondition:1];
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[MSDUIHelper remoteAlertHandleDidDeactivate:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called.", buf, 0xCu);
  }

  v6 = [(MSDUIHelper *)self conditionLock];

  if (v6)
  {
    v7 = [(MSDUIHelper *)self conditionLock];
    [v7 unlockWithCondition:1];
  }

  v8 = [(MSDUIHelper *)self remoteAlertHandle];
  [v8 removeObserver:self];

  v9 = [(MSDUIHelper *)self remoteAlertHandle];
  [v9 invalidate];

  [(MSDUIHelper *)self setRemoteAlertHandle:0];
  objc_initWeak(buf, self);
  v10 = [(MSDUIHelper *)self uiHelperQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000ABE00;
  v11[3] = &unk_10016BDD8;
  v11[4] = self;
  objc_copyWeak(&v12, buf);
  dispatch_async(v10, v11);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = a4;
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 localizedDescription];
    v10 = 136315394;
    v11 = "[MSDUIHelper remoteAlertHandle:didInvalidateWithError:]";
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s is called with error - %{public}@", &v10, 0x16u);
  }

  [(MSDUIHelper *)self setFullScreenUILaunchError_iOS:v5];
  v8 = [(MSDUIHelper *)self conditionLock];

  if (v8)
  {
    v9 = [(MSDUIHelper *)self conditionLock];
    [v9 unlockWithCondition:1];
  }
}

- (void)layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(MSDUIHelper *)self uiHelperQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC0C8;
  block[3] = &unk_10016A1C8;
  objc_copyWeak(&v12, &location);
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)demoUpdateFailed:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(MSDUIHelper *)self uiHelperQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC384;
  block[3] = &unk_10016BDD8;
  v8 = v4;
  v6 = v4;
  objc_copyWeak(&v9, &location);
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)demoUpdateProgress:(int64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [(MSDUIHelper *)self uiHelperQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC82C;
  block[3] = &unk_10016C2D0;
  v7[1] = a3;
  objc_copyWeak(v7, &location);
  dispatch_async(v5, block);

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)demoUpdateAllowCancel:(BOOL)a3
{
  objc_initWeak(&location, self);
  v5 = [(MSDUIHelper *)self uiHelperQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ACA70;
  block[3] = &unk_10016C2F8;
  v8 = a3;
  objc_copyWeak(&v7, &location);
  dispatch_async(v5, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)demoUpdateDisableIdleTimer:(BOOL)a3
{
  objc_initWeak(&location, self);
  v5 = [(MSDUIHelper *)self uiHelperQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ACCD4;
  block[3] = &unk_10016C2F8;
  v8 = a3;
  objc_copyWeak(&v7, &location);
  dispatch_async(v5, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

@end