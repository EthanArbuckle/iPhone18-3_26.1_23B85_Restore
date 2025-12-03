@interface CRSetupLauncher
- (void)_launchRemoteAlertWithUserInfo:(id)info errorHandler:(id)handler;
- (void)invalidate;
- (void)launchCarPlaySetupWithUserInfo:(id)info errorHandler:(id)handler;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation CRSetupLauncher

- (void)launchCarPlaySetupWithUserInfo:(id)info errorHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  [(CRSetupLauncher *)self setCurrentErrorHandler:handlerCopy];
  v8 = CarPairingLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "requesting prox card transaction", buf, 2u);
  }

  v9 = objc_alloc_init(SFClient);
  [(CRSetupLauncher *)self setSharingClient:v9];

  objc_initWeak(buf, self);
  sharingClient = [(CRSetupLauncher *)self sharingClient];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100016470;
  v13[3] = &unk_1000DD8A0;
  objc_copyWeak(&v16, buf);
  v11 = infoCopy;
  v14 = v11;
  v12 = handlerCopy;
  v15 = v12;
  [sharingClient startProxCardTransactionWithOptions:0 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)_launchRemoteAlertWithUserInfo:(id)info errorHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  remoteAlert = [(CRSetupLauncher *)self remoteAlert];
  isValid = [remoteAlert isValid];

  if (isValid)
  {
    v10 = CarPairingLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not showing CarPlaySetup - alert is still valid.", v14, 2u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v11 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.CarPlaySetupApp" viewControllerClassName:@"CARSetupContainerViewController"];
    v12 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
    [v12 setUserInfo:infoCopy];
    v13 = [SBSRemoteAlertHandle newHandleWithDefinition:v11 configurationContext:v12];
    [v13 registerObserver:self];
    [v13 activateWithContext:0];
    [(CRSetupLauncher *)self setRemoteAlert:v13];
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016874;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000169B4;
  block[3] = &unk_1000DD8E8;
  objc_copyWeak(&v9, &location);
  v8 = errorCopy;
  v6 = errorCopy;
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
  remoteAlert = [(CRSetupLauncher *)self remoteAlert];
  [remoteAlert unregisterObserver:self];

  remoteAlert2 = [(CRSetupLauncher *)self remoteAlert];
  [remoteAlert2 invalidate];

  [(CRSetupLauncher *)self setRemoteAlert:0];
  sharingClient = [(CRSetupLauncher *)self sharingClient];
  [sharingClient invalidate];

  [(CRSetupLauncher *)self setSharingClient:0];
}

@end