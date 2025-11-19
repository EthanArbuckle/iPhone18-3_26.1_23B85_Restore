@interface CRSetupPromptDirectorAgent
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_mainQueue_dismissLockscreenAlert;
- (void)_mainQueue_presentCurrentRequest;
- (void)_mainQueue_presentLockscreenAlertWithCompletion:(id)a3;
- (void)_mainQueue_presentRequestIfUnlocked;
- (void)_mainQueue_setupBlockedSessionQueue;
- (void)_mainQueue_unblockSessionQueue;
- (void)dismissPromptPresenter;
- (void)initializeLockscreenAlert;
- (void)initializeSetupLauncher;
- (void)performWithPromptPresenter:(id)a3 errorHandler:(id)a4;
- (void)setCurrentPresenterSession:(id)a3;
- (void)setCurrentRequest:(id)a3;
- (void)setSetupLauncher:(id)a3;
@end

@implementation CRSetupPromptDirectorAgent

- (void)performWithPromptPresenter:(id)a3 errorHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = [[CRSetupPromptPresentationRequest alloc] initWithPresentationHandler:v7 errorHandler:v6];

  [(CRSetupPromptDirectorAgent *)self setCurrentRequest:v8];
  [(CRSetupPromptDirectorAgent *)self _mainQueue_presentRequestIfUnlocked];
}

- (void)dismissPromptPresenter
{
  [(CRSetupPromptDirectorAgent *)self setCurrentRequest:0];
  [(CRSetupPromptDirectorAgent *)self _mainQueue_dismissLockscreenAlert];
  [(CRSetupPromptDirectorAgent *)self setSetupLauncher:0];

  [(CRSetupPromptDirectorAgent *)self setCurrentPresenterSession:0];
}

- (void)_mainQueue_presentRequestIfUnlocked
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003ED24;
  v3[3] = &unk_1000DE9B0;
  objc_copyWeak(&v4, &location);
  [CRSetupLockscreenStatus fetchUILockStatus:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_mainQueue_presentCurrentRequest
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = [(CRSetupPromptDirectorAgent *)self currentRequest];
  v4 = [v3 presentationHandler];
  v5 = [v3 errorHandler];
  v6 = v5;
  if (v3 && v4 && v5)
  {
    v7 = CarPairingLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "presenting current CarPlay Setup request", buf, 2u);
    }

    v8 = [(CRSetupPromptDirectorAgent *)self currentPresenterSession];

    if (!v8)
    {
      [(CRSetupPromptDirectorAgent *)self _mainQueue_setupBlockedSessionQueue];
      [(CRSetupPromptDirectorAgent *)self initializeSetupLauncher];
      objc_initWeak(buf, self);
      v9 = [(CRSetupPromptDirectorAgent *)self setupLauncher];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10003F114;
      v14[3] = &unk_1000DE9D8;
      objc_copyWeak(&v16, buf);
      v15 = v6;
      [v9 launchCarPlaySetupWithUserInfo:0 errorHandler:v14];

      objc_destroyWeak(&v16);
      objc_destroyWeak(buf);
    }

    v10 = [(CRSetupPromptDirectorAgent *)self sessionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003F1C0;
    block[3] = &unk_1000DEA00;
    block[4] = self;
    v12 = v6;
    v13 = v4;
    dispatch_async(v10, block);
  }
}

- (void)setCurrentRequest:(id)a3
{
  v4 = a3;
  currentRequest = self->_currentRequest;
  if (currentRequest)
  {
    [(CRSetupPromptPresentationRequest *)currentRequest invalidate];
    v6 = self->_currentRequest;
    self->_currentRequest = 0;
  }

  v7 = self->_currentRequest;
  self->_currentRequest = v4;
}

- (void)setCurrentPresenterSession:(id)a3
{
  v4 = a3;
  currentPresenterSession = self->_currentPresenterSession;
  if (currentPresenterSession)
  {
    [(CRSetupPromptPresenterSession *)currentPresenterSession invalidate];
    v6 = self->_currentPresenterSession;
    self->_currentPresenterSession = 0;
  }

  v7 = self->_currentPresenterSession;
  self->_currentPresenterSession = v4;
}

- (void)initializeSetupLauncher
{
  v3 = [(CRSetupPromptDirectorAgent *)self launcherInitializer];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3);
  }

  else
  {
    v5 = objc_alloc_init(CRSetupLauncher);
  }

  v6 = v5;
  [(CRSetupPromptDirectorAgent *)self setSetupLauncher:v5];
}

- (void)setSetupLauncher:(id)a3
{
  v4 = a3;
  setupLauncher = self->_setupLauncher;
  if (setupLauncher)
  {
    [(CRSetupLauncher *)setupLauncher invalidate];
    v6 = self->_setupLauncher;
    self->_setupLauncher = 0;
  }

  v7 = self->_setupLauncher;
  self->_setupLauncher = v4;
}

- (void)initializeLockscreenAlert
{
  v3 = [(CRSetupPromptDirectorAgent *)self alertInitializer];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3);
  }

  else
  {
    v5 = objc_alloc_init(CRSetupLockscreenAlert);
  }

  v6 = v5;
  [(CRSetupPromptDirectorAgent *)self setLockscreenAlert:v5];
}

- (void)_mainQueue_setupBlockedSessionQueue
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v4 = dispatch_queue_create("com.apple.carkit.setupPromptPresenterSession", v3);

  [(CRSetupPromptDirectorAgent *)self setSessionQueue:v4];
  v5 = dispatch_semaphore_create(0);
  [(CRSetupPromptDirectorAgent *)self setWaitingOnSession:v5];
  v6 = [(CRSetupPromptDirectorAgent *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F620;
  block[3] = &unk_1000DD480;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)_mainQueue_unblockSessionQueue
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100086868();
  }

  v4 = [(CRSetupPromptDirectorAgent *)self waitingOnSession];
  dispatch_semaphore_signal(v4);
}

- (void)_mainQueue_presentLockscreenAlertWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CarPlay Setup presenting lockscreen alert", buf, 2u);
  }

  [(CRSetupPromptDirectorAgent *)self initializeLockscreenAlert];
  objc_initWeak(buf, self);
  v6 = [(CRSetupPromptDirectorAgent *)self lockscreenAlert];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003F838;
  v8[3] = &unk_1000DEA28;
  objc_copyWeak(&v10, buf);
  v7 = v4;
  v9 = v7;
  [v6 presentAlertWithCompletion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)_mainQueue_dismissLockscreenAlert
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = [(CRSetupPromptDirectorAgent *)self lockscreenAlert];

  if (v3)
  {
    v4 = CarPairingLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CarPlay Setup dismissing lockscreen alert", v6, 2u);
    }

    v5 = [(CRSetupPromptDirectorAgent *)self lockscreenAlert];
    [v5 dismissAlert];

    [(CRSetupPromptDirectorAgent *)self setLockscreenAlert:0];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 serviceName];
  v9 = [v8 isEqualToString:@"com.apple.carkit.setupPromptDirector.service"];

  if (v9)
  {
    v10 = [v7 valueForEntitlement:@"com.apple.private.carkit.setupPromptDirector"];
    v11 = [v10 BOOLValue];

    if (v11)
    {
      v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRSetupPromptDirectorService];
      [v7 setExportedInterface:v12];
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = sub_10003FDA8;
      v34 = sub_10003FDB8;
      v35 = 0;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10003FDC0;
      block[3] = &unk_1000DDE60;
      v29 = &v30;
      block[4] = self;
      v13 = v7;
      v28 = v13;
      dispatch_sync(&_dispatch_main_q, block);
      [v13 setExportedObject:v31[5]];
      v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRSetupPromptPresenterService];
      [v13 setRemoteObjectInterface:v14];
      objc_initWeak(&location, v13);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10003FE44;
      v24[3] = &unk_1000DD8E8;
      objc_copyWeak(&v25, &location);
      v24[4] = self;
      [v13 setInterruptionHandler:v24];
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_10003FF68;
      v21 = &unk_1000DD8E8;
      objc_copyWeak(&v23, &location);
      v22 = self;
      [v13 setInvalidationHandler:&v18];
      v15 = CarPairingLogging();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 processIdentifier]);
        *buf = 138412290;
        v37 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Receiving setup prompt service connection from %@", buf, 0xCu);
      }

      [v13 resume];
      objc_destroyWeak(&v23);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);

      _Block_object_dispose(&v30, 8);
    }

    else
    {
      v12 = CarPairingLogging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10008689C(v7, v12);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end