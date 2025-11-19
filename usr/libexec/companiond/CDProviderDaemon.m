@interface CDProviderDaemon
- (BOOL)_isVirtualMachine;
- (CDProviderDaemon)init;
- (id)_authenticationSessionWithClient:(id)a3 request:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_activated;
- (void)_foundDeviceWithIdentifier:(id)a3 discoveryType:(int64_t)a4;
- (void)_invalidated;
- (void)_startBluetoothListener;
- (void)_startDeviceDiscovery;
- (void)_startIDSService;
- (void)_startPhotoSetupSessionWithBluetoothDevice:(id)a3;
- (void)_startServiceListener;
- (void)_startSystemMonitor;
- (void)activate;
- (void)invalidate;
- (void)serviceConnection:(id)a3 fetchDaemonStatusWithCompletionHandler:(id)a4;
- (void)serviceConnection:(id)a3 serviceClient:(id)a4 startAuthenticationSessionWithRequest:(id)a5 completionHandler:(id)a6;
@end

@implementation CDProviderDaemon

- (CDProviderDaemon)init
{
  v5.receiver = self;
  v5.super_class = CDProviderDaemon;
  v2 = [(CDProviderDaemon *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3->_activateCalledAtomic = 0;
  }

  return v3;
}

- (void)activate
{
  atomic_store(1u, &self->_activateCalledAtomic);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005E1C;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005EA4;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(CDProviderDaemon *)self _startServiceListener];
  [(CDProviderDaemon *)self _startDeviceDiscovery];
  [(CDProviderDaemon *)self _startIDSService];
  if ([(CDProviderDaemon *)self _isVirtualMachine])
  {

    [(CDProviderDaemon *)self _startBluetoothListener];
  }

  else
  {

    [(CDProviderDaemon *)self _startSystemMonitor];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    [(CDServiceListener *)self->_serviceListener invalidate];
    serviceListener = self->_serviceListener;
    self->_serviceListener = 0;

    [(CDProviderSession *)self->_currentSession invalidate];
    currentSession = self->_currentSession;
    self->_currentSession = 0;

    currentSessionConnection = self->_currentSessionConnection;
    self->_currentSessionConnection = 0;

    [(CDDeviceDiscovery *)self->_deviceDiscovery invalidate];
    deviceDiscovery = self->_deviceDiscovery;
    self->_deviceDiscovery = 0;

    [(CDIDSService *)self->_idsService invalidate];
    idsService = self->_idsService;
    self->_idsService = 0;

    [(CDBluetoothListener *)self->_bluetoothListener invalidate];
    bluetoothListener = self->_bluetoothListener;
    self->_bluetoothListener = 0;

    [(CDPhotoSetupSession *)self->_photoSetupSession invalidate];
    photoSetupSession = self->_photoSetupSession;
    self->_photoSetupSession = 0;

    [(CUSystemMonitor *)self->_systemMonitor invalidate];
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = 0;

    self->_invalidateDone = 1;
  }
}

- (void)_startServiceListener
{
  v3 = objc_alloc_init(CDServiceListener);
  serviceListener = self->_serviceListener;
  self->_serviceListener = v3;

  [(CDServiceListener *)self->_serviceListener setDispatchQueue:self->_dispatchQueue];
  [(CDServiceListener *)self->_serviceListener setDelegate:self];
  v5 = self->_serviceListener;

  [(CDServiceListener *)v5 activate];
}

- (void)_foundDeviceWithIdentifier:(id)a3 discoveryType:(int64_t)a4
{
  v6 = a3;
  if (![(CDProviderDaemon *)self _isSessionActive])
  {
    v7 = [[CDProviderSession alloc] initWithDeviceIdentifier:v6 discoveryType:a4];
    currentSession = self->_currentSession;
    self->_currentSession = v7;

    [(CDProviderSession *)self->_currentSession setDispatchQueue:self->_dispatchQueue];
    v9 = self->_currentSession;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000061A4;
    v12[3] = &unk_100089E20;
    v12[4] = self;
    [(CDProviderSession *)v9 setInvalidationHandler:v12];
    v10 = self->_currentSession;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100006228;
    v11[3] = &unk_100089E20;
    v11[4] = self;
    [(CDProviderSession *)v10 setRapportClientActivatedHandler:v11];
    [(CDProviderSession *)self->_currentSession activate];
  }
}

- (void)_startBluetoothListener
{
  if (([(CUSystemMonitor *)self->_systemMonitor meDeviceValid]& 1) != 0 || [(CDProviderDaemon *)self _isVirtualMachine])
  {
    if (!self->_bluetoothListener)
    {
      v3 = objc_alloc_init(CDBluetoothListener);
      bluetoothListener = self->_bluetoothListener;
      self->_bluetoothListener = v3;

      [(CDBluetoothListener *)self->_bluetoothListener setDispatchQueue:self->_dispatchQueue];
      v5 = self->_bluetoothListener;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100006340;
      v6[3] = &unk_100089F98;
      v6[4] = self;
      [(CDBluetoothListener *)v5 setDeviceFoundHandler:v6];
      [(CDBluetoothListener *)self->_bluetoothListener activate];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Deferring Bluetooth listener until me device known", buf, 2u);
  }
}

- (void)_startPhotoSetupSessionWithBluetoothDevice:(id)a3
{
  v4 = a3;
  if (([(CUSystemMonitor *)self->_systemMonitor meDeviceIsMe]& 1) != 0 || [(CDProviderDaemon *)self _isVirtualMachine])
  {
    if ([(CDProviderDaemon *)self _isSessionActive])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005E294();
      }
    }

    else
    {
      v5 = [[CDPhotoSetupSession alloc] initWithBluetoothDevice:v4];
      photoSetupSession = self->_photoSetupSession;
      self->_photoSetupSession = v5;

      [(CDPhotoSetupSession *)self->_photoSetupSession setDispatchQueue:self->_dispatchQueue];
      v7 = self->_photoSetupSession;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100006558;
      v8[3] = &unk_100089E20;
      v8[4] = self;
      [(CDPhotoSetupSession *)v7 setInvalidationHandler:v8];
      [(CDPhotoSetupSession *)self->_photoSetupSession activate];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Skip start Photo Setup session - not me device.", buf, 2u);
  }
}

- (void)_startDeviceDiscovery
{
  v3 = objc_alloc_init(CDDeviceDiscovery);
  deviceDiscovery = self->_deviceDiscovery;
  self->_deviceDiscovery = v3;

  [(CDDeviceDiscovery *)self->_deviceDiscovery setDispatchQueue:self->_dispatchQueue];
  v5 = self->_deviceDiscovery;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006610;
  v6[3] = &unk_100089E70;
  v6[4] = self;
  [(CDDeviceDiscovery *)v5 setDeviceFoundHandler:v6];
  [(CDDeviceDiscovery *)self->_deviceDiscovery activate];
}

- (void)_startIDSService
{
  v3 = objc_alloc_init(CDIDSService);
  idsService = self->_idsService;
  self->_idsService = v3;

  [(CDIDSService *)self->_idsService setDispatchQueue:self->_dispatchQueue];
  v5 = self->_idsService;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000066C8;
  v6[3] = &unk_100089FC0;
  v6[4] = self;
  [(CDIDSService *)v5 setMessageReceivedHandler:v6];
  [(CDIDSService *)self->_idsService activate];
}

- (void)_startSystemMonitor
{
  v3 = objc_alloc_init(CUSystemMonitor);
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = v3;

  [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000068BC;
  v8[3] = &unk_100089FE8;
  objc_copyWeak(&v9, &location);
  [(CUSystemMonitor *)self->_systemMonitor setMeDeviceChangedHandler:v8];
  [(CUSystemMonitor *)self->_systemMonitor setMeDeviceUseFindMyLocate:1];
  v5 = self->_systemMonitor;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000068FC;
  v6[3] = &unk_100089FE8;
  objc_copyWeak(&v7, &location);
  [(CUSystemMonitor *)v5 activateWithCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)_authenticationSessionWithClient:(id)a3 request:(id)a4
{
  v4 = a4;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 || (objc_opt_self(), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_isKindOfClass(), v7, (v8))
  {
    v9 = [[CDProviderSession alloc] initWithLocalAuthenticationRequest:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_isVirtualMachine
{
  if (qword_10009C028 != -1)
  {
    sub_10005E2DC();
  }

  return byte_10009C020 != 0;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  [BSDescriptionBuilder builderWithObject:self];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006B30;
  v5 = v8[3] = &unk_10008A030;
  v9 = v5;
  v10 = self;
  [v5 appendBodySectionWithName:0 multilinePrefix:v4 block:v8];

  v6 = v5;
  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CDProviderDaemon *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(CDProviderDaemon *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)serviceConnection:(id)a3 serviceClient:(id)a4 startAuthenticationSessionWithRequest:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(CDProviderDaemon *)self _isSessionActive])
  {
    v15 = [NSError errorWithDomain:CPSErrorDomain code:102 userInfo:0];
    v14[2](v14, v15);
  }

  else
  {
    v16 = [(CDProviderDaemon *)self _authenticationSessionWithClient:v12 request:v13];
    currentSession = self->_currentSession;
    self->_currentSession = v16;

    v18 = self->_currentSession;
    if (v18)
    {
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100006F60;
      v29[3] = &unk_10008A058;
      v19 = v11;
      v30 = v19;
      [(CDProviderSession *)v18 setSessionFinishedHandler:v29];
      v20 = self->_currentSession;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100006F6C;
      v27[3] = &unk_10008A080;
      v28 = v19;
      [(CDProviderSession *)v20 setSessionFailedHandler:v27];
      v21 = self->_currentSession;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100006F78;
      v26[3] = &unk_100089E20;
      v26[4] = self;
      [(CDProviderSession *)v21 setInvalidationHandler:v26];
      [(CDProviderSession *)self->_currentSession setDispatchQueue:self->_dispatchQueue];
      objc_storeStrong(&self->_currentSessionConnection, a3);
      [(CDProviderSession *)self->_currentSession activate];
    }

    else
    {
      v22 = CPSErrorDomain;
      v31 = NSDebugDescriptionErrorKey;
      v23 = [NSString stringWithFormat:@"Invalid authentication request: %@", v13];
      v32 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v25 = [NSError errorWithDomain:v22 code:101 userInfo:v24];
      v14[2](v14, v25);
    }
  }
}

- (void)serviceConnection:(id)a3 fetchDaemonStatusWithCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = [(CDProviderDaemon *)self descriptionWithMultilinePrefix:0];
  (*(a4 + 2))(v6, v7, 0);
}

@end