@interface CDPhotoSetupSession
- (CDPhotoSetupSession)initWithBluetoothDevice:(id)device;
- (void)_activated;
- (void)_invalidated;
- (void)_showViewService;
- (void)_startCSKClient;
- (void)_startNotificationSession;
- (void)activate;
- (void)invalidate;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation CDPhotoSetupSession

- (CDPhotoSetupSession)initWithBluetoothDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = CDPhotoSetupSession;
  v6 = [(CDPhotoSetupSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bluetoothDevice, device);
    objc_storeStrong(&v7->_dispatchQueue, &_dispatch_main_q);
  }

  return v7;
}

- (void)activate
{
  atomic_store(1u, &self->_activateCalledAtomic);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005250;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000052D8;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = sub_100005370();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activated.", v4, 2u);
  }

  [(CDPhotoSetupSession *)self _startCSKClient];
  [(CDPhotoSetupSession *)self _startNotificationSession];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    v3 = sub_100005370();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session invalidated.", v9, 2u);
    }

    [(CDCSKClient *)self->_cskClient invalidate];
    cskClient = self->_cskClient;
    self->_cskClient = 0;

    [(CUUserNotificationSession *)self->_notificationSession invalidate];
    notificationSession = self->_notificationSession;
    self->_notificationSession = 0;

    [(SBSRemoteAlertHandle *)self->_viewServiceHandle invalidate];
    viewServiceHandle = self->_viewServiceHandle;
    self->_viewServiceHandle = 0;

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
      v8 = self->_invalidationHandler;
      self->_invalidationHandler = 0;
    }

    self->_invalidateDone = 1;
  }
}

- (void)_startCSKClient
{
  v3 = [[_TtC10companiond11CDCSKClient alloc] initWithBluetoothDevice:self->_bluetoothDevice discoveryType:32];
  cskClient = self->_cskClient;
  self->_cskClient = v3;

  [(CDCSKClient *)self->_cskClient setDispatchQueue:self->_dispatchQueue];
  v5 = self->_cskClient;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005548;
  v6[3] = &unk_100089E20;
  v6[4] = self;
  [(CDCSKClient *)v5 setSetupNotNeededHandler:v6];
  [(CDCSKClient *)self->_cskClient activate];
}

- (void)_startNotificationSession
{
  v3 = sub_100005370();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Posting notification.", buf, 2u);
  }

  v4 = +[CDUserNotificationContent photoSetupContent];
  v5 = [CUUserNotificationSession cad_sessionWithContent:v4];
  [v5 setDispatchQueue:self->_dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000056DC;
  v8[3] = &unk_100089F20;
  v8[4] = self;
  [v5 setActionHandler:v8];
  notificationSession = self->_notificationSession;
  self->_notificationSession = v5;
  v7 = v5;

  [v7 activate];
}

- (void)_showViewService
{
  v3 = sub_100005370();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Showing view service", v10, 2u);
  }

  v4 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.CompanionSetup" viewControllerClassName:@"CompanionSetup.PhotoSetupProxCardFlowViewController"];
  v11 = @"device";
  dictionaryRepresentation = [(CBDevice *)self->_bluetoothDevice dictionaryRepresentation];
  v12 = dictionaryRepresentation;
  v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  v7 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  [v7 setUserInfo:v6];
  v8 = [SBSRemoteAlertHandle newHandleWithDefinition:v4 configurationContext:v7];
  viewServiceHandle = self->_viewServiceHandle;
  self->_viewServiceHandle = v8;

  [(SBSRemoteAlertHandle *)self->_viewServiceHandle registerObserver:self];
  [(SBSRemoteAlertHandle *)self->_viewServiceHandle activateWithContext:0];
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  v4 = sub_100005370();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = activateCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "View service activated: %@", &v5, 0xCu);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  v5 = sub_100005370();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = deactivateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "View service deactivated: %@", buf, 0xCu);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005B28;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  v8 = sub_100005370();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = handleCopy;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "View service invalidated: %@, error: %@", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005C58;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

@end