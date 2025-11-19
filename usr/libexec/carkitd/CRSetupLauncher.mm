@interface CRSetupLauncher
- (void)_launchRemoteAlertWithUserInfo:(id)a3 errorHandler:(id)a4;
- (void)invalidate;
- (void)launchCarPlaySetupWithUserInfo:(id)a3 errorHandler:(id)a4;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation CRSetupLauncher

- (void)launchCarPlaySetupWithUserInfo:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CRSetupLauncher *)self setCurrentErrorHandler:v7];
  v8 = CarPairingLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "requesting prox card transaction", buf, 2u);
  }

  v9 = objc_alloc_init(SFClient);
  [(CRSetupLauncher *)self setSharingClient:v9];

  objc_initWeak(buf, self);
  v10 = [(CRSetupLauncher *)self sharingClient];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100016470;
  v13[3] = &unk_1000DD8A0;
  objc_copyWeak(&v16, buf);
  v11 = v6;
  v14 = v11;
  v12 = v7;
  v15 = v12;
  [v10 startProxCardTransactionWithOptions:0 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)_launchRemoteAlertWithUserInfo:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRSetupLauncher *)self remoteAlert];
  v9 = [v8 isValid];

  if (v9)
  {
    v10 = CarPairingLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not showing CarPlaySetup - alert is still valid.", v14, 2u);
    }

    if (v7)
    {
      v7[2](v7, 0);
    }
  }

  else
  {
    v11 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.CarPlaySetupApp" viewControllerClassName:@"CARSetupContainerViewController"];
    v12 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
    [v12 setUserInfo:v6];
    v13 = [SBSRemoteAlertHandle newHandleWithDefinition:v11 configurationContext:v12];
    [v13 registerObserver:self];
    [v13 activateWithContext:0];
    [(CRSetupLauncher *)self setRemoteAlert:v13];
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016874;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000169B4;
  block[3] = &unk_1000DD8E8;
  objc_copyWeak(&v9, &location);
  v8 = v5;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)invalidate
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000828F4(v3);
  }

  [(CRSetupLauncher *)self setCurrentErrorHandler:0];
  v4 = [(CRSetupLauncher *)self remoteAlert];
  [v4 unregisterObserver:self];

  v5 = [(CRSetupLauncher *)self remoteAlert];
  [v5 invalidate];

  [(CRSetupLauncher *)self setRemoteAlert:0];
  v6 = [(CRSetupLauncher *)self sharingClient];
  [v6 invalidate];

  [(CRSetupLauncher *)self setSharingClient:0];
}

@end