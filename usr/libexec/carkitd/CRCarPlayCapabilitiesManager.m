@interface CRCarPlayCapabilitiesManager
- (CRCarPlayCapabilitiesManager)initWithSessionStatus:(id)a3 vehicleStore:(id)a4;
- (id)_worker_queue_reloadSessionIfNeeded;
- (id)session;
- (void)_worker_queue_runStateMachineIfPossible;
- (void)_worker_queue_setSession:(id)a3;
- (void)accessoryManager:(id)a3 didConnectVehicleAccessory:(id)a4;
- (void)accessoryManager:(id)a3 didUpdateVehicleAccessory:(id)a4;
- (void)persistCarCapabilitiesIfNeeded;
- (void)plistLookupFinishedCompletionHandler:(id)a3;
- (void)reconcileCapabilities;
- (void)resolveCapabilitiesForSession:(id)a3;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)setCarCapabilities:(id)a3;
- (void)setCarCapabilitiesURL:(id)a3;
- (void)setLastLookupIdentifer:(id)a3;
@end

@implementation CRCarPlayCapabilitiesManager

- (CRCarPlayCapabilitiesManager)initWithSessionStatus:(id)a3 vehicleStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = CRCarPlayCapabilitiesManager;
  v9 = [(CRCarPlayCapabilitiesManager *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_vehicleStore, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.carkitd.carcapabilities.manager", v11);
    workerQueue = v10->_workerQueue;
    v10->_workerQueue = v12;

    v14 = +[CRCarPlayCapabilities capabilitiesIdentifier];
    v15 = [CRCarPlayCapabilities fetchCarCapabilitiesWithIdentifier:v14];
    carCapabilities = v10->_carCapabilities;
    v10->_carCapabilities = v15;

    v17 = objc_alloc_init(CRCarplayCapabilitiesStateMachine);
    stateMachine = v10->_stateMachine;
    v10->_stateMachine = v17;

    if ((CRIsTestContext() & 1) == 0)
    {
      v19 = +[NSUserDefaults standardUserDefaults];
      v20 = [v19 URLForKey:@"CRCarPlayCapabilitiesPlistPathKey"];
      carCapabilitiesURL = v10->_carCapabilitiesURL;
      v10->_carCapabilitiesURL = v20;
    }

    objc_storeStrong(&v10->_sessionStatus, a3);
    [(CARSessionStatus *)v10->_sessionStatus addSessionObserver:v10];
    v22 = +[CRVehicleAccessoryManager sharedInstance];
    accessoryManager = v10->_accessoryManager;
    v10->_accessoryManager = v22;

    [(CRVehicleAccessoryManager *)v10->_accessoryManager addObserver:v10];
    objc_initWeak(&location, v10);
    v24 = [(CRCarPlayCapabilitiesManager *)v10 workerQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100019894;
    v26[3] = &unk_1000DDA60;
    objc_copyWeak(&v27, &location);
    dispatch_async(v24, v26);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)setCarCapabilitiesURL:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CRCarPlayCapabilitiesManager *)self workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000199E8;
  block[3] = &unk_1000DD8E8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_worker_queue_setSession:(id)a3
{
  v4 = a3;
  v5 = [(CRCarPlayCapabilitiesManager *)self workerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CARSession *)v4 MFiCertificateSerialNumber];
  [(CRCarPlayCapabilitiesManager *)self setMFiCertificateSerialNumber:v6];

  if (!v4)
  {
    worker_queue_session = self->_worker_queue_session;
    self->_worker_queue_session = 0;

    v9 = 0;
    goto LABEL_21;
  }

  v7 = [(CARSession *)v4 configuration];
  v8 = [v7 hasAccessory];

  if ((v8 & 1) == 0)
  {
    v9 = [(CRCarPlayCapabilitiesManager *)self _worker_queue_reloadSessionIfNeeded];

    v10 = [(CARSession *)v9 configuration];
    v11 = [v10 hasAccessory];

    if ((v11 & 1) == 0)
    {
      v20 = CarGeneralLogging();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315394;
        v23 = "[CRCarPlayCapabilitiesManager _worker_queue_setSession:]";
        v24 = 2112;
        v25 = v9;
        v21 = "%s: skipping partial session %@";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, &v22, 0x16u);
      }

LABEL_20:

      goto LABEL_21;
    }

    v4 = v9;
  }

  v12 = [(CARSession *)v4 configuration];
  v13 = [v12 infoResponse];

  if (v13)
  {
    v9 = v4;
    goto LABEL_9;
  }

  v9 = [(CRCarPlayCapabilitiesManager *)self _worker_queue_reloadSessionIfNeeded];

  v15 = [(CARSession *)v9 configuration];
  v16 = [v15 infoResponse];

  if (!v16)
  {
    v20 = CarGeneralLogging();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315394;
      v23 = "[CRCarPlayCapabilitiesManager _worker_queue_setSession:]";
      v24 = 2112;
      v25 = v9;
      v21 = "%s: skipping partial session (no infoResponse) %@";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

LABEL_9:
  if (self->_worker_queue_session != v9)
  {
    v17 = CarGeneralLogging();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100083138();
    }

    objc_storeStrong(&self->_worker_queue_session, v9);
    v18 = [(CRCarPlayCapabilitiesManager *)self carCapabilitiesURL];

    if (!v18)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.carkit.capabilities-changed", 0, 0, 1u);
    }

    [(CRCarPlayCapabilitiesManager *)self _worker_queue_runStateMachineIfPossible];
  }

LABEL_21:
}

- (id)session
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100019E74;
  v11 = sub_100019E84;
  v12 = 0;
  v3 = [(CRCarPlayCapabilitiesManager *)self workerQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100019E8C;
  v6[3] = &unk_1000DDA88;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_worker_queue_reloadSessionIfNeeded
{
  v3 = [(CRCarPlayCapabilitiesManager *)self workerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = self->_worker_queue_session;
  v5 = v4;
  if (v4 && (-[CARSession configuration](v4, "configuration"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hasAccessory], v6, (v7 & 1) != 0))
  {
    v8 = v5;
  }

  else
  {
    [(CARSessionStatus *)self->_sessionStatus waitForSessionInitialization];
    v9 = [(CARSessionStatus *)self->_sessionStatus currentSession];

    if (v9)
    {
      [(CARSessionStatus *)self->_sessionStatus _handleConfigurationUpdated];
    }

    v8 = [(CARSessionStatus *)self->_sessionStatus currentSession];

    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 configuration];
      v12 = [v11 hasAccessory];
      v13 = @"NO";
      v16 = "[CRCarPlayCapabilitiesManager _worker_queue_reloadSessionIfNeeded]";
      v15 = 136315650;
      v17 = 2112;
      v18 = v8;
      if (v12)
      {
        v13 = @"YES";
      }

      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: updated partial session %@ (hasAccessory = %@)", &v15, 0x20u);
    }
  }

  return v8;
}

- (void)accessoryManager:(id)a3 didConnectVehicleAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(CRCarPlayCapabilitiesManager *)self workerQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001A120;
  v9[3] = &unk_1000DDA60;
  objc_copyWeak(&v10, &location);
  dispatch_async(v8, v9);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)accessoryManager:(id)a3 didUpdateVehicleAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(CRCarPlayCapabilitiesManager *)self workerQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001A27C;
  v9[3] = &unk_1000DDA60;
  objc_copyWeak(&v10, &location);
  dispatch_async(v8, v9);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)sessionDidConnect:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CRCarPlayCapabilitiesManager *)self workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A3DC;
  block[3] = &unk_1000DD8E8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)sessionDidDisconnect:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CRCarPlayCapabilitiesManager *)self workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A544;
  block[3] = &unk_1000DD8E8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)setCarCapabilities:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CRCarPlayCapabilitiesManager *)self workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A6B0;
  block[3] = &unk_1000DD8E8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)setLastLookupIdentifer:(id)a3
{
  v4 = [a3 copy];
  lastLookupIdentifer = self->_lastLookupIdentifer;
  self->_lastLookupIdentifer = v4;

  _objc_release_x1();
}

- (void)_worker_queue_runStateMachineIfPossible
{
  v3 = [(CRCarPlayCapabilitiesManager *)self workerQueue];
  dispatch_assert_queue_V2(v3);

  if (self->_worker_queue_session && self->_carCapabilitiesURL)
  {

    [(CRCarPlayCapabilitiesManager *)self resolveCapabilitiesForSession:?];
  }
}

- (void)resolveCapabilitiesForSession:(id)a3
{
  v4 = a3;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000833B4();
  }

  objc_initWeak(&location, self);
  stateMachine = self->_stateMachine;
  carCapabilitiesURL = self->_carCapabilitiesURL;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001A8C4;
  v8[3] = &unk_1000DDAB0;
  objc_copyWeak(&v9, &location);
  [(CRCarplayCapabilitiesStateMachine *)stateMachine lookupCarcapabilitiesForSession:v4 plistURL:carCapabilitiesURL completionHandler:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)persistCarCapabilitiesIfNeeded
{
  v3 = +[CRCarPlayCapabilities capabilitiesIdentifier];
  v4 = [CRCarPlayCapabilities fetchCarCapabilitiesWithIdentifier:v3];

  v5 = [(CRCarPlayCapabilitiesManager *)self carCapabilities];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [v4 copy];
    carCapabilities = self->_carCapabilities;
    self->_carCapabilities = v7;
  }

  else
  {
    v9 = [(CRCarPlayCapabilitiesManager *)self carCapabilities];
    v10 = [v9 version];
    v11 = [v10 integerValue];

    if (v11 >= 1)
    {
      v12 = [(CRCarPlayCapabilitiesManager *)self carCapabilities];
      [v12 persistCapabilitiesToGlobalDomain];

      v13 = CarGeneralLogging();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(CRCarPlayCapabilitiesManager *)self carCapabilities];
        *buf = 136315394;
        v31 = "[CRCarPlayCapabilitiesManager persistCarCapabilitiesIfNeeded]";
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: sending CARSessionCarCapabilitiesUpdatedNotification signaling capabilities have change to %@", buf, 0x16u);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, CARSessionCarCapabilitiesUpdatedNotification, 0, 0, 1u);
    }
  }

  objc_initWeak(&location, self);
  v16 = [(CRCarPlayCapabilitiesManager *)self workerQueue];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_10001AD60;
  v27 = &unk_1000DDA60;
  objc_copyWeak(&v28, &location);
  dispatch_async(v16, &v24);

  v17 = [(CRCarPlayCapabilitiesManager *)self carCapabilities:v24];
  v18 = [v17 version];
  if ([v18 integerValue] <= 0)
  {
  }

  else
  {
    v19 = [(CRCarPlayCapabilitiesManager *)self carCapabilities];
    v20 = [v19 persisted];

    if (v20)
    {
      v21 = CarGeneralLogging();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(CRCarPlayCapabilitiesManager *)self carCapabilities];
        *buf = 136315394;
        v31 = "[CRCarPlayCapabilitiesManager persistCarCapabilitiesIfNeeded]";
        v32 = 2112;
        v33 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: sending CARSessionCarCapabilitiesReadyNotification signaling capabilities are loaded %@", buf, 0x16u);
      }

      v23 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(v23, CARSessionCarCapabilitiesReadyNotification, 0, 0, 1u);
    }
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)reconcileCapabilities
{
  objc_initWeak(&location, self);
  v3 = [(CRCarPlayCapabilitiesManager *)self workerQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001B01C;
  v4[3] = &unk_1000DDA60;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)plistLookupFinishedCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CRCarPlayCapabilitiesManager *)self workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B8B8;
  block[3] = &unk_1000DDAD8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

@end