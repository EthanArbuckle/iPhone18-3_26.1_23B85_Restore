@interface CRSetupPromptDirectorAgent
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_mainQueue_dismissLockscreenAlert;
- (void)_mainQueue_presentCurrentRequest;
- (void)_mainQueue_presentLockscreenAlertWithCompletion:(id)completion;
- (void)_mainQueue_presentRequestIfUnlocked;
- (void)_mainQueue_setupBlockedSessionQueue;
- (void)_mainQueue_unblockSessionQueue;
- (void)dismissPromptPresenter;
- (void)initializeLockscreenAlert;
- (void)initializeSetupLauncher;
- (void)performWithPromptPresenter:(id)presenter errorHandler:(id)handler;
- (void)setCurrentPresenterSession:(id)session;
- (void)setCurrentRequest:(id)request;
- (void)setSetupLauncher:(id)launcher;
@end

@implementation CRSetupPromptDirectorAgent

- (void)performWithPromptPresenter:(id)presenter errorHandler:(id)handler
{
  handlerCopy = handler;
  presenterCopy = presenter;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = [[CRSetupPromptPresentationRequest alloc] initWithPresentationHandler:presenterCopy errorHandler:handlerCopy];

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
  currentRequest = [(CRSetupPromptDirectorAgent *)self currentRequest];
  presentationHandler = [currentRequest presentationHandler];
  errorHandler = [currentRequest errorHandler];
  v6 = errorHandler;
  if (currentRequest && presentationHandler && errorHandler)
  {
    v7 = CarPairingLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "presenting current CarPlay Setup request", buf, 2u);
    }

    currentPresenterSession = [(CRSetupPromptDirectorAgent *)self currentPresenterSession];

    if (!currentPresenterSession)
    {
      [(CRSetupPromptDirectorAgent *)self _mainQueue_setupBlockedSessionQueue];
      [(CRSetupPromptDirectorAgent *)self initializeSetupLauncher];
      objc_initWeak(buf, self);
      setupLauncher = [(CRSetupPromptDirectorAgent *)self setupLauncher];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10003F114;
      v14[3] = &unk_1000DE9D8;
      objc_copyWeak(&v16, buf);
      v15 = v6;
      [setupLauncher launchCarPlaySetupWithUserInfo:0 errorHandler:v14];

      objc_destroyWeak(&v16);
      objc_destroyWeak(buf);
    }

    sessionQueue = [(CRSetupPromptDirectorAgent *)self sessionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003F1C0;
    block[3] = &unk_1000DEA00;
    block[4] = self;
    v12 = v6;
    v13 = presentationHandler;
    dispatch_async(sessionQueue, block);
  }
}

- (void)setCurrentRequest:(id)request
{
  requestCopy = request;
  currentRequest = self->_currentRequest;
  if (currentRequest)
  {
    [(CRSetupPromptPresentationRequest *)currentRequest invalidate];
    v6 = self->_currentRequest;
    self->_currentRequest = 0;
  }

  v7 = self->_currentRequest;
  self->_currentRequest = requestCopy;
}

- (void)setCurrentPresenterSession:(id)session
{
  sessionCopy = session;
  currentPresenterSession = self->_currentPresenterSession;
  if (currentPresenterSession)
  {
    [(CRSetupPromptPresenterSession *)currentPresenterSession invalidate];
    v6 = self->_currentPresenterSession;
    self->_currentPresenterSession = 0;
  }

  v7 = self->_currentPresenterSession;
  self->_currentPresenterSession = sessionCopy;
}

- (void)initializeSetupLauncher
{
  launcherInitializer = [(CRSetupPromptDirectorAgent *)self launcherInitializer];
  v4 = launcherInitializer;
  if (launcherInitializer)
  {
    v5 = (*(launcherInitializer + 16))(launcherInitializer);
  }

  else
  {
    v5 = objc_alloc_init(CRSetupLauncher);
  }

  v6 = v5;
  [(CRSetupPromptDirectorAgent *)self setSetupLauncher:v5];
}

- (void)setSetupLauncher:(id)launcher
{
  launcherCopy = launcher;
  setupLauncher = self->_setupLauncher;
  if (setupLauncher)
  {
    [(CRSetupLauncher *)setupLauncher invalidate];
    v6 = self->_setupLauncher;
    self->_setupLauncher = 0;
  }

  v7 = self->_setupLauncher;
  self->_setupLauncher = launcherCopy;
}

- (void)initializeLockscreenAlert
{
  alertInitializer = [(CRSetupPromptDirectorAgent *)self alertInitializer];
  v4 = alertInitializer;
  if (alertInitializer)
  {
    v5 = (*(alertInitializer + 16))(alertInitializer);
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
  sessionQueue = [(CRSetupPromptDirectorAgent *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F620;
  block[3] = &unk_1000DD480;
  v9 = v5;
  v7 = v5;
  dispatch_async(sessionQueue, block);
}

- (void)_mainQueue_unblockSessionQueue
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100086868();
  }

  waitingOnSession = [(CRSetupPromptDirectorAgent *)self waitingOnSession];
  dispatch_semaphore_signal(waitingOnSession);
}

- (void)_mainQueue_presentLockscreenAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CarPlay Setup presenting lockscreen alert", buf, 2u);
  }

  [(CRSetupPromptDirectorAgent *)self initializeLockscreenAlert];
  objc_initWeak(buf, self);
  lockscreenAlert = [(CRSetupPromptDirectorAgent *)self lockscreenAlert];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003F838;
  v8[3] = &unk_1000DEA28;
  objc_copyWeak(&v10, buf);
  v7 = completionCopy;
  v9 = v7;
  [lockscreenAlert presentAlertWithCompletion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)_mainQueue_dismissLockscreenAlert
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  lockscreenAlert = [(CRSetupPromptDirectorAgent *)self lockscreenAlert];

  if (lockscreenAlert)
  {
    v4 = CarPairingLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CarPlay Setup dismissing lockscreen alert", v6, 2u);
    }

    lockscreenAlert2 = [(CRSetupPromptDirectorAgent *)self lockscreenAlert];
    [lockscreenAlert2 dismissAlert];

    [(CRSetupPromptDirectorAgent *)self setLockscreenAlert:0];
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  serviceName = [connectionCopy serviceName];
  v9 = [serviceName isEqualToString:@"com.apple.carkit.setupPromptDirector.service"];

  if (v9)
  {
    v10 = [connectionCopy valueForEntitlement:@"com.apple.private.carkit.setupPromptDirector"];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRSetupPromptDirectorService];
      [connectionCopy setExportedInterface:v12];
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
      v13 = connectionCopy;
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
      selfCopy = self;
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
        sub_10008689C(connectionCopy, v12);
      }
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end