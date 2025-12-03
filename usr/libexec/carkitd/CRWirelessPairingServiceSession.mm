@interface CRWirelessPairingServiceSession
- (BOOL)isPairingAvailable;
- (BTDeviceImpl)_remoteDeviceFromSession:(BTSessionImpl *)session;
- (BTLocalDeviceImpl)_localDeviceForSession:(BTSessionImpl *)session;
- (CRWirelessPairingServiceSession)initWithBluetoothManager:(id)manager preferences:(id)preferences;
- (CRWirelessPairingServiceSessionDelegate)delegate;
- (id)_addressStringForDevice:(BTDeviceImpl *)device;
- (id)_localDeviceAddressFromSession:(BTSessionImpl *)session;
- (unsigned)_intendedServiceMask;
- (void)_mainQueue_blockSessionQueue;
- (void)_mainQueue_connectDevice:(BTDeviceImpl *)device session:(BTSessionImpl *)session completion:(id)completion;
- (void)_mainQueue_delegateDidFinishWithResult:(unint64_t)result error:(id)error;
- (void)_mainQueue_handleDidConnectDevice:(BTDeviceImpl *)device service:(unsigned int)service;
- (void)_mainQueue_handleEvent:(int)event forSession:(BTSessionImpl *)session;
- (void)_mainQueue_handleLocalOOBDataC192:(char *)c192 r192:(char *)r192 c256:(char *)c256 r256:(char *)r256;
- (void)_mainQueue_invalidateSession;
- (void)_mainQueue_performWithPairingAgent:(id)agent;
- (void)_mainQueue_performWithSession:(id)session;
- (void)_mainQueue_requestLocalOOBDataWithCompletion:(id)completion errorHandler:(id)handler;
- (void)_mainQueue_unblockSessionQueue;
- (void)cancelPairing;
- (void)initializeForVehicleAddress:(id)address keyIdentifier:(id)identifier completion:(id)completion;
- (void)invalidate;
- (void)requestPairingForIntent:(unint64_t)intent completion:(id)completion;
- (void)setActive:(BOOL)active;
- (void)setupVehicleDataC192:(id)c192 r192:(id)r192 c256:(id)c256 r256:(id)r256 completion:(id)completion;
@end

@implementation CRWirelessPairingServiceSession

- (CRWirelessPairingServiceSession)initWithBluetoothManager:(id)manager preferences:(id)preferences
{
  managerCopy = manager;
  preferencesCopy = preferences;
  v22.receiver = self;
  v22.super_class = CRWirelessPairingServiceSession;
  v9 = [(CRWirelessPairingServiceSession *)&v22 init];
  v10 = v9;
  if (v9)
  {
    v9->_intent = 0;
    v9->_btSession = 0;
    v9->_pairingAgent = 0;
    v9->_active = 0;
    objc_storeStrong(&v9->_bluetoothManager, manager);
    objc_storeStrong(&v10->_carPlayPreferences, preferences);
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v12 = dispatch_queue_create("com.apple.carkit.pairing.btSession", v11);
    sessionQueue = v10->_sessionQueue;
    v10->_sessionQueue = v12;

    sessionTransaction = v10->_sessionTransaction;
    v10->_sessionTransaction = 0;

    connectionTimer = v10->_connectionTimer;
    v10->_connectionTimer = 0;

    bluetoothAddress = v10->_bluetoothAddress;
    v10->_bluetoothAddress = 0;

    promptResponseHandler = v10->_promptResponseHandler;
    v10->_promptResponseHandler = 0;

    localOOBDataHandler = v10->_localOOBDataHandler;
    v10->_localOOBDataHandler = 0;

    bluetoothConnectedHandler = v10->_bluetoothConnectedHandler;
    v10->_bluetoothConnectedHandler = 0;

    sessionDetachHandler = v10->_sessionDetachHandler;
    v10->_sessionDetachHandler = 0;
  }

  return v10;
}

- (void)invalidate
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000871F4();
  }

  [(CRWirelessPairingServiceSession *)self _mainQueue_invalidateSession];
}

- (BOOL)isPairingAvailable
{
  carPlayPreferences = [(CRWirelessPairingServiceSession *)self carPlayPreferences];
  isCarPlayAllowed = [carPlayPreferences isCarPlayAllowed];

  if ((isCarPlayAllowed & 1) == 0)
  {
    v4 = CarPairingLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100087228();
    }
  }

  return isCarPlayAllowed;
}

- (void)initializeForVehicleAddress:(id)address keyIdentifier:(id)identifier completion:(id)completion
{
  addressCopy = address;
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004CB08;
  block[3] = &unk_1000DEF78;
  objc_copyWeak(&v18, &location);
  v15 = addressCopy;
  v16 = identifierCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = identifierCopy;
  v13 = addressCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)requestPairingForIntent:(unint64_t)intent completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004CCE4;
  v8[3] = &unk_1000DF018;
  objc_copyWeak(v10, &location);
  v10[1] = intent;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(&_dispatch_main_q, v8);

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)setupVehicleDataC192:(id)c192 r192:(id)r192 c256:(id)c256 r256:(id)r256 completion:(id)completion
{
  c192Copy = c192;
  r192Copy = r192;
  c256Copy = c256;
  r256Copy = r256;
  completionCopy = completion;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004D728;
  block[3] = &unk_1000DF0B8;
  objc_copyWeak(&v28, &location);
  v23 = c192Copy;
  v24 = r192Copy;
  v25 = c256Copy;
  v26 = r256Copy;
  v27 = completionCopy;
  v17 = completionCopy;
  v18 = r256Copy;
  v19 = c256Copy;
  v20 = r192Copy;
  v21 = c192Copy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)cancelPairing
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10004DE94;
  v2[3] = &unk_1000DDA60;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)setActive:(BOOL)active
{
  self->_active = active;
  if (active)
  {
    v4 = os_transaction_create();
    [(CRWirelessPairingServiceSession *)self setSessionTransaction:v4];
  }

  else
  {

    [(CRWirelessPairingServiceSession *)self setSessionTransaction:0];
  }
}

- (BTLocalDeviceImpl)_localDeviceForSession:(BTSessionImpl *)session
{
  if (!BTLocalDeviceGetDefault())
  {
    return 0;
  }

  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000875FC();
  }

  return 0;
}

- (id)_localDeviceAddressFromSession:(BTSessionImpl *)session
{
  v3 = [(CRWirelessPairingServiceSession *)self _localDeviceForSession:session];
  if (v3)
  {
    if (BTLocalDeviceGetAddressString())
    {
      v4 = CarPairingLogging();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100087638();
      }

LABEL_8:

      v3 = 0;
      goto LABEL_9;
    }

    v7 = 0;
    v6 = 0;
    if (BTDeviceAddressFromString())
    {
      v4 = CarPairingLogging();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000876A8();
      }

      goto LABEL_8;
    }

    v3 = [NSData dataWithBytes:&v6 length:6];
  }

LABEL_9:

  return v3;
}

- (BTDeviceImpl)_remoteDeviceFromSession:(BTSessionImpl *)session
{
  bluetoothAddress = [(CRWirelessPairingServiceSession *)self bluetoothAddress];

  if (!bluetoothAddress)
  {
    return 0;
  }

  v9 = 0;
  v8 = 0;
  bluetoothAddress2 = [(CRWirelessPairingServiceSession *)self bluetoothAddress];
  [bluetoothAddress2 getBytes:&v8 length:6];

  if (BTDeviceFromAddress())
  {
    v6 = CarPairingLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100087718();
    }

    return 0;
  }

  return 0;
}

- (id)_addressStringForDevice:(BTDeviceImpl *)device
{
  memset(v5, 0, sizeof(v5));
  if (BTDeviceGetAddressString())
  {
    v3 = 0;
  }

  else
  {
    v3 = [NSString stringWithUTF8String:v5];
  }

  return v3;
}

- (unsigned)_intendedServiceMask
{
  if ([(CRWirelessPairingServiceSession *)self intent]== 2)
  {
    return 128;
  }

  else
  {
    return -1;
  }
}

- (void)_mainQueue_performWithSession:(id)session
{
  sessionCopy = session;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (!self->_btSession)
  {
    location = sub_10004E67C;
    v5 = dispatch_semaphore_create(0);
    [(CRWirelessPairingServiceSession *)self setWaitingOnSession:v5];

    v6 = BTSessionAttachWithQueue();
    if (v6)
    {
      v7 = CarPairingLogging();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100087788();
      }
    }

    else
    {
      [(CRWirelessPairingServiceSession *)self _mainQueue_blockSessionQueue];
    }
  }

  objc_initWeak(&location, self);
  sessionQueue = [(CRWirelessPairingServiceSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E740;
  block[3] = &unk_1000DDAD8;
  objc_copyWeak(&v12, &location);
  v11 = sessionCopy;
  v9 = sessionCopy;
  dispatch_async(sessionQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_mainQueue_blockSessionQueue
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  sessionQueue = [(CRWirelessPairingServiceSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E8E4;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(sessionQueue, block);
}

- (void)_mainQueue_unblockSessionQueue
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000877F8();
  }

  waitingOnSession = [(CRWirelessPairingServiceSession *)self waitingOnSession];
  dispatch_semaphore_signal(waitingOnSession);
}

- (void)_mainQueue_invalidateSession
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  sessionQueue = [(CRWirelessPairingServiceSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004EA4C;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(sessionQueue, block);
}

- (void)_mainQueue_handleEvent:(int)event forSession:(BTSessionImpl *)session
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ((event - 1) >= 3)
  {
    if (event)
    {
      return;
    }

    v11 = CarPairingLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1000878FC();
    }

    self->_btSession = session;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10004EE3C;
    v12[3] = &unk_1000DD480;
    v12[4] = self;
    selfCopy = self;
    [(CRWirelessPairingServiceSession *)selfCopy setSessionDetachHandler:v12];
    [(CRWirelessPairingServiceSession *)selfCopy _mainQueue_unblockSessionQueue];
    goto LABEL_12;
  }

  v7 = CarPairingLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100087894();
  }

  sessionDetachHandler = [(CRWirelessPairingServiceSession *)self sessionDetachHandler];

  if (sessionDetachHandler)
  {
    v9 = CarPairingLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000878C8();
    }

    selfCopy = [(CRWirelessPairingServiceSession *)self sessionDetachHandler];
    (selfCopy->_pairingAgent)();
LABEL_12:
  }
}

- (void)_mainQueue_performWithPairingAgent:(id)agent
{
  agentCopy = agent;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004EF80;
  v6[3] = &unk_1000DF108;
  objc_copyWeak(&v8, &location);
  v5 = agentCopy;
  v7 = v5;
  [(CRWirelessPairingServiceSession *)self _mainQueue_performWithSession:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_mainQueue_requestLocalOOBDataWithCompletion:(id)completion errorHandler:(id)handler
{
  completionCopy = completion;
  handlerCopy = handler;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004F228;
  v10[3] = &unk_1000DF158;
  objc_copyWeak(&v13, &location);
  v8 = handlerCopy;
  v11 = v8;
  v9 = completionCopy;
  v12 = v9;
  [(CRWirelessPairingServiceSession *)self _mainQueue_performWithPairingAgent:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_mainQueue_handleLocalOOBDataC192:(char *)c192 r192:(char *)r192 c256:(char *)c256 r256:(char *)r256
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v16 = [NSData dataWithBytes:c192 length:16];
  v11 = [NSData dataWithBytes:r192 length:16];
  v12 = [NSData dataWithBytes:c256 length:16];
  v13 = [NSData dataWithBytes:r256 length:16];
  localOOBDataHandler = [(CRWirelessPairingServiceSession *)self localOOBDataHandler];

  if (localOOBDataHandler)
  {
    localOOBDataHandler2 = [(CRWirelessPairingServiceSession *)self localOOBDataHandler];
    (localOOBDataHandler2)[2](localOOBDataHandler2, v16, v11, v12, v13);

    [(CRWirelessPairingServiceSession *)self setLocalOOBDataHandler:0];
  }
}

- (void)_mainQueue_connectDevice:(BTDeviceImpl *)device session:(BTSessionImpl *)session completion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  _intendedServiceMask = [(CRWirelessPairingServiceSession *)self _intendedServiceMask];
  if (BTServiceAddCallbacks())
  {
    v9 = CarPairingLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000879DC();
    }

    if (completionCopy)
    {
LABEL_5:
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v10 = BTDeviceConnectServices() == 0;
    v11 = CarPairingLogging();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = _intendedServiceMask;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "started connecting BT using OOB pairing data, service mask: %u", &buf, 8u);
      }

      objc_initWeak(&buf, self);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10004F800;
      v20[3] = &unk_1000DF180;
      objc_copyWeak(v22, &buf);
      v22[1] = session;
      v21 = completionCopy;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10004F8BC;
      v18[3] = &unk_1000DD960;
      v13 = objc_retainBlock(v20);
      v19 = v13;
      [(CRWirelessPairingServiceSession *)self setBluetoothConnectedHandler:v18];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10004F93C;
      v16[3] = &unk_1000DF1A8;
      v14 = v13;
      v17 = v14;
      v15 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v16 block:30.0];
      [(CRWirelessPairingServiceSession *)self setConnectionTimer:v15];

      objc_destroyWeak(v22);
      objc_destroyWeak(&buf);
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100087A4C();
      }

      if (completionCopy)
      {
        goto LABEL_5;
      }
    }
  }
}

- (void)_mainQueue_handleDidConnectDevice:(BTDeviceImpl *)device service:(unsigned int)service
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004FA24;
  v6[3] = &unk_1000DF1D0;
  v6[4] = self;
  v6[5] = device;
  [(CRWirelessPairingServiceSession *)self _mainQueue_performWithSession:v6];
}

- (void)_mainQueue_delegateDidFinishWithResult:(unint64_t)result error:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  delegate = [(CRWirelessPairingServiceSession *)self delegate];
  if (delegate)
  {
    if (result || (objc_opt_respondsToSelector() & 1) == 0)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_8;
      }

      delegate2 = [(CRWirelessPairingServiceSession *)self delegate];
      [delegate2 pairingServiceSession:self didFailPairingAttemptWithError:errorCopy];
    }

    else
    {
      delegate2 = [(CRWirelessPairingServiceSession *)self delegate];
      [delegate2 pairingServiceSessionDidFinishPairing:self];
    }
  }

LABEL_8:
}

- (CRWirelessPairingServiceSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end