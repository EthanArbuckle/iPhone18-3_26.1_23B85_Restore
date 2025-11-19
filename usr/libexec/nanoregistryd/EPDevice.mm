@interface EPDevice
+ (id)newClassicDeviceWithInfo:(id)a3;
+ (id)newDeviceForClassicPairing;
+ (id)newDeviceWithInfo:(id)a3;
+ (id)newDeviceWithInfo:(id)a3 withAdvertisementData:(id)a4 withRSSI:(id)a5;
+ (id)stringFromCBPairingType:(int64_t)a3;
+ (int64_t)minRSSIInteger;
+ (int64_t)proxRSSIInteger;
- (BOOL)hasPairer;
- (BOOL)isDisplayabilityExpired;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpired;
- (BOOL)isPeripheral;
- (BOOL)isProximateExpired;
- (BOOL)updateWithPeer:(id)a3;
- (EPDevice)initWithInfo:(id)a3;
- (EPDevice)initWithInfo:(id)a3 withAdvertisementData:(id)a4 withRSSI:(id)a5;
- (EPPairerList)pairers;
- (NSString)description;
- (id)initBase;
- (id)initClassicDeviceWithInfo:(id)a3;
- (id)newClassicBTPairerWithDelegate:(id)a3;
- (id)newObserverWithDelegate:(id)a3;
- (id)newPairerWithDelegate:(id)a3 withParameters:(id)a4;
- (id)stringFromPairingPhase:(unint64_t)a3;
- (unint64_t)hash;
- (void)_reset;
- (void)_resetPairingTimeout:(double)a3;
- (void)cancelPairingWithError:(id)a3;
- (void)dealloc;
- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4;
- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5;
- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6;
- (void)reset;
- (void)setEnableOOBPairing:(BOOL)a3;
- (void)updateAndEnterState:(id)a3;
- (void)updateWithPeripheral:(id)a3 withAdvertisementData:(id)a4 withRSSI:(id)a5;
- (void)writeData:(id)a3 begin:(id)a4 completion:(id)a5;
@end

@implementation EPDevice

+ (id)stringFromCBPairingType:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"CBPairingTypeReserved";
  }

  else
  {
    return *(&off_100177B40 + a3);
  }
}

- (id)initBase
{
  v3.receiver = self;
  v3.super_class = EPDevice;
  return [(EPDevice *)&v3 init];
}

+ (id)newDeviceWithInfo:(id)a3 withAdvertisementData:(id)a4 withRSSI:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithInfo:v10 withAdvertisementData:v9 withRSSI:v8];

  return v11;
}

- (EPPairerList)pairers
{
  pairers = self->_pairers;
  if (!pairers)
  {
    v4 = [[EPPairerList alloc] initWithDeviceInfo:self->_info withDelegate:self];
    v5 = self->_pairers;
    self->_pairers = v4;

    pairers = self->_pairers;
  }

  return pairers;
}

- (EPDevice)initWithInfo:(id)a3 withAdvertisementData:(id)a4 withRSSI:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(EPDevice *)self initBase];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 23, a3);
    v14 = [v9 peer];
    [(EPDevice *)v13 updateWithPeripheral:v14 withAdvertisementData:v10 withRSSI:v11];
  }

  return v13;
}

+ (id)newDeviceWithInfo:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithInfo:v4];

  return v5;
}

+ (id)newClassicDeviceWithInfo:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initClassicDeviceWithInfo:v4];

  return v5;
}

+ (id)newDeviceForClassicPairing
{
  v2 = [a1 alloc];

  return [v2 initBase];
}

- (EPDevice)initWithInfo:(id)a3
{
  v5 = a3;
  v6 = [(EPDevice *)self initBase];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 23, a3);
    v8 = [v5 peer];
    [(EPDevice *)v7 updateWithPeer:v8];
  }

  return v7;
}

- (id)initClassicDeviceWithInfo:(id)a3
{
  v5 = a3;
  v6 = [(EPDevice *)self initBase];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 23, a3);
  }

  return v7;
}

+ (int64_t)minRSSIInteger
{
  if (qword_1001B3850 != -1)
  {
    sub_100100758();
  }

  return qword_1001B2CA8;
}

+ (int64_t)proxRSSIInteger
{
  if (qword_1001B3858 != -1)
  {
    sub_10010076C();
  }

  return qword_1001B2CB0;
}

- (void)updateWithPeripheral:(id)a3 withAdvertisementData:(id)a4 withRSSI:(id)a5
{
  v10 = a3;
  v8 = a5;
  v9 = [a4 objectForKeyedSubscript:CBAdvertisementDataLocalNameKey];
  if (!v9)
  {
    v9 = [v10 name];
  }

  if ([objc_opt_class() isInRangeWithRSSI:v8])
  {
    objc_storeStrong(&self->_name, v9);
    objc_storeStrong(&self->_RSSI, a5);
    self->_lastDiscoveredDate = CFAbsoluteTimeGetCurrent();
    if ([(EPDevice *)self displayable])
    {
      self->_lastDisplayableDate = self->_lastDiscoveredDate;
      objc_storeStrong(&self->_displayableName, v9);
      objc_storeStrong(&self->_displayableRSSI, a5);
    }

    if ([(EPDevice *)self proximate])
    {
      self->_lastProximateDate = self->_lastDiscoveredDate;
    }
  }
}

- (BOOL)updateWithPeer:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 name];
    name = self->_name;
    self->_name = v5;
  }

  self->_lastPairingRequestDate = CFAbsoluteTimeGetCurrent();
  if ([(EPDevice *)self displayable])
  {
    self->_lastDisplayableDate = self->_lastPairingRequestDate;
    objc_storeStrong(&self->_displayableName, self->_name);
    objc_storeStrong(&self->_displayableRSSI, self->_RSSI);
  }

  if ([(EPDevice *)self proximate])
  {
    self->_lastProximateDate = self->_lastPairingRequestDate;
  }

  return 1;
}

- (void)dealloc
{
  v3 = sub_1000A9948();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = sub_1000A9948();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412546;
      v10 = v7;
      v11 = 2048;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "dealloc %@[%p]", buf, 0x16u);
    }
  }

  v8.receiver = self;
  v8.super_class = EPDevice;
  [(EPDevice *)&v8 dealloc];
}

- (void)setEnableOOBPairing:(BOOL)a3
{
  if (self->_enableOOBPairing != a3)
  {
    self->_enableOOBPairing = a3;
    self->_enableOOBPairingIsSet = 0;
    [(EPDevice *)self update];
  }
}

- (BOOL)isPeripheral
{
  v2 = [(EPDeviceInfo *)self->_info peer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isExpired
{
  v3 = [(EPDevice *)self peer];

  if (v3)
  {
    if ([(EPDevice *)self isPairing])
    {
      return 0;
    }

    v5 = +[EPPeripheralConnectorManagerFactory sharedConnectorManagerFactory];
    v6 = [(EPDevice *)self uuid];
    v7 = [v5 isConnected:v6];

    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      result = 0;
      self->_lastDiscoveredDate = Current;
      return result;
    }

    if (self->_lastDiscoveredDate != 0.0 || self->_lastPairingRequestDate != 0.0)
    {
      v9 = CFAbsoluteTimeGetCurrent();
      lastDiscoveredDate = self->_lastDiscoveredDate;
      if (lastDiscoveredDate == 0.0 || ((v11 = lastDiscoveredDate - v9, v11 <= 0.0) ? (v12 = v11 < -5.0) : (v12 = 1), !v12))
      {
        lastPairingRequestDate = self->_lastPairingRequestDate;
        if (lastPairingRequestDate == 0.0)
        {
          return 0;
        }

        v14 = lastPairingRequestDate - v9;
        if (v14 <= 0.0 && v14 >= -60.0)
        {
          return 0;
        }
      }
    }
  }

  return 1;
}

- (BOOL)isDisplayabilityExpired
{
  if ([(EPDevice *)self isExpired])
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (!v4)
    {
      return 1;
    }

    v5 = nr_daemon_log();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:

      return 1;
    }

    v21 = 136446210;
    v22 = "[EPDevice isDisplayabilityExpired]";
    v6 = "%{public}s: isExpired.";
LABEL_5:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, &v21, 0xCu);
    goto LABEL_6;
  }

  if ([(EPDevice *)self isPairing])
  {
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    result = 0;
    if (!v9)
    {
      return result;
    }

    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136446210;
      v22 = "[EPDevice isDisplayabilityExpired]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: isPairing.", &v21, 0xCu);
    }
  }

  else
  {
    if (self->_lastDisplayableDate == 0.0)
    {
      v19 = nr_daemon_log();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

      if (!v20)
      {
        return 1;
      }

      v5 = nr_daemon_log();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v21 = 136446210;
      v22 = "[EPDevice isDisplayabilityExpired]";
      v6 = "%{public}s: _lastDisplayableDate not set.";
      goto LABEL_5;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v12 = nr_daemon_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        lastDisplayableDate = self->_lastDisplayableDate;
        v21 = 136446722;
        v22 = "[EPDevice isDisplayabilityExpired]";
        v23 = 2048;
        v24 = lastDisplayableDate;
        v25 = 2048;
        v26 = Current;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: compare last display date (%f) with absolute time (%f).", &v21, 0x20u);
      }
    }

    v16 = self->_lastDisplayableDate;
    if (v16 != 0.0)
    {
      v17 = v16 - Current;
      if (v17 > 0.0 || v17 < -5.0)
      {
        return 1;
      }
    }
  }

  return 0;
}

- (BOOL)isProximateExpired
{
  if ([(EPDevice *)self isDisplayabilityExpired])
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (!v4)
    {
      return 1;
    }

    v5 = nr_daemon_log();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:

      return 1;
    }

    v21 = 136446210;
    v22 = "[EPDevice isProximateExpired]";
    v6 = "%{public}s: Displayability Expired.";
LABEL_5:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, &v21, 0xCu);
    goto LABEL_6;
  }

  if ([(EPDevice *)self isPairing])
  {
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    result = 0;
    if (!v9)
    {
      return result;
    }

    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136446210;
      v22 = "[EPDevice isProximateExpired]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: isPairing.", &v21, 0xCu);
    }
  }

  else
  {
    if (self->_lastProximateDate == 0.0)
    {
      v19 = nr_daemon_log();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

      if (!v20)
      {
        return 1;
      }

      v5 = nr_daemon_log();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v21 = 136446210;
      v22 = "[EPDevice isProximateExpired]";
      v6 = "%{public}s: last proximate date not set.";
      goto LABEL_5;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v12 = nr_daemon_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        lastProximateDate = self->_lastProximateDate;
        v21 = 136446722;
        v22 = "[EPDevice isProximateExpired]";
        v23 = 2048;
        v24 = lastProximateDate;
        v25 = 2048;
        v26 = Current;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: compare last proximate date (%f) with absolute time (%f).", &v21, 0x20u);
      }
    }

    v16 = self->_lastProximateDate;
    if (v16 != 0.0)
    {
      v17 = v16 - Current;
      if (v17 > 0.0 || v17 < -5.0)
      {
        return 1;
      }
    }
  }

  return 0;
}

- (id)newObserverWithDelegate:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(EPDeviceInfo *)info peripheralFactory];
  v6 = [v5 newObserverWithDelegate:v4];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = EPDevice;
    if ([(EPDevice *)&v12 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      info = self->_info;
      v6 = v4;
      v7 = [(EPDeviceInfo *)info uuid];
      v8 = v6->_info;

      v9 = [(EPDeviceInfo *)v8 uuid];
      v10 = [v7 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(EPDeviceInfo *)self->_info uuid];
  v3 = [v2 hash];

  return v3 + 31;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(EPDevice *)self uuid];
  v6 = [v5 UUIDString];
  v7 = [(EPDevice *)self name];
  v8 = [NSString stringWithFormat:@"%@[%p] %@ name=%@", v4, self, v6, v7];

  return v8;
}

- (void)reset
{
  if (!self->_pairingError)
  {
    v3 = [NSError errorWithDomain:@"com.apple.nanoregistry.ExtensiblePair" code:555 userInfo:&off_100187D98];
    pairingError = self->_pairingError;
    self->_pairingError = v3;
  }

  self->_pairingPhase = 0;
  self->_endingPairing = 1;
  pairingConnector = self->_pairingConnector;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = self->_pairingConnector;
    [(EPResourceProtocol *)v6 setPeripheralConnectorShouldForceDisconnect];
    [(EPResourceProtocol *)v6 peripheralWasInvalidated];
  }

  [(EPResourceProtocol *)self->_pairingConnector invalidate];
  v7 = self->_pairingConnector;
  self->_pairingConnector = 0;

  [(EPResourceProtocol *)self->_pipe invalidate];
  pipe = self->_pipe;
  self->_pipe = 0;

  [(EPDevice *)self _reset];
}

- (void)_reset
{
  pairingTimer = self->_pairingTimer;
  if (pairingTimer)
  {
    dispatch_source_cancel(pairingTimer);
    v4 = self->_pairingTimer;
    self->_pairingTimer = 0;
  }

  v5 = [(EPDevice *)self isPairing];
  v6 = self->_pairingError;
  pairingError = self->_pairingError;
  self->_pairingError = 0;

  if (v6)
  {
    pairingConnector = self->_pairingConnector;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = self->_pairingConnector;
      [(EPResourceProtocol *)v9 setPeripheralConnectorShouldForceDisconnect];
      [(EPResourceProtocol *)v9 peripheralWasInvalidated];
    }

    [(EPResourceProtocol *)self->_pairingConnector invalidate];
    v10 = self->_pairingConnector;
    self->_pairingConnector = 0;

    [(EPResourceProtocol *)self->_pipe invalidate];
    pipe = self->_pipe;
    self->_pipe = 0;
  }

  self->_pendingPairingRequest = 0;
  self->_endingPairing = 0;
  self->_pairingPhase = 0;
  self->_lastDisplayableDate = 0.0;
  self->_lastProximateDate = 0.0;
  self->_lastDiscoveredDate = 0.0;
  self->_lastPairingRequestDate = 0.0;
  me = self->me;
  self->me = 0;

  if (v5)
  {
    v13 = [(EPDevice *)self pairers];
    [v13 pairer:0 completedWithError:v6];

    v14 = [(EPDevice *)self delegate];
    v15 = [(EPDeviceInfo *)self->_info peer];
    [v14 device:self peerDidInvalidate:v15];

    v16 = +[EPFactory queue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10005BEE4;
    v19[3] = &unk_100175598;
    v20 = v6;
    v21 = self;
    dispatch_async(v16, v19);
  }

  else
  {
    v17 = [(EPDevice *)self delegate];
    v18 = [(EPDeviceInfo *)self->_info peer];
    [v17 device:self peerDidInvalidate:v18];
  }
}

- (void)_resetPairingTimeout:(double)a3
{
  pairingTimer = self->_pairingTimer;
  if (pairingTimer)
  {
    dispatch_source_cancel(pairingTimer);
  }

  v6 = +[EPFactory queue];
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);

  v8 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10005C0E0;
  handler[3] = &unk_100175660;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(v7);
  v9 = self->_pairingTimer;
  self->_pairingTimer = v7;
  v10 = v7;
}

- (id)stringFromPairingPhase:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"EPPairingPhaseIdle";
  }

  else
  {
    return *(&off_100177B70 + a3 - 1);
  }
}

- (BOOL)hasPairer
{
  pairers = self->_pairers;
  if (pairers)
  {
    LOBYTE(pairers) = [(EPPairerList *)pairers hasPairer];
  }

  return pairers;
}

- (void)cancelPairingWithError:(id)a3
{
  v5 = a3;
  if (!self->_endingPairing && [(EPDevice *)self pairingPhase])
  {
    v6 = sub_1000A98C0();
    v7 = v6;
    if (v5)
    {
      v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = sub_1000A98C0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100100780(v5, v9);
      }
    }

    else
    {
      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

      if (!v10)
      {
        goto LABEL_11;
      }

      v9 = sub_1000A98C0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Call to cancelPairingWithError: with no error", v15, 2u);
      }
    }

LABEL_11:
    objc_storeStrong(&self->_pairingError, a3);
    self->_endingPairing = 1;
    if (v5)
    {
      v11 = +[NRDataCollector sharedInstance];
      v12 = [v11 incrementCounterForKey:@"btPairingRetryCount"];
      pairingConnector = self->_pairingConnector;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = self->_pairingConnector;
        [(EPResourceProtocol *)v14 setPeripheralConnectorShouldForceDisconnect];
        [(EPResourceProtocol *)v14 peripheralWasInvalidated];
      }
    }

    else
    {
      if (![(EPDevice *)self isPeripheral])
      {
LABEL_18:
        [(EPDevice *)self updateAndEnterState:&off_100186D00];
        goto LABEL_19;
      }

      v11 = [(EPDevice *)self peer];
      [v11 tag:@"IsAppleWatch"];
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (id)newPairerWithDelegate:(id)a3 withParameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(EPDevice *)self hasPairer])
  {
    v8 = sub_1000A98C0();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = sub_1000A98C0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "newPairer called when pairing or ending pairing", v15, 2u);
      }
    }

    v11 = 0;
  }

  else
  {
    v12 = [(EPDevice *)self pairers];
    v11 = [v12 newPairerWithDelegate:v6 withParameters:v7];

    if (![(EPDevice *)self isPairing])
    {
      v13 = +[EPFactory queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005C4E8;
      block[3] = &unk_100175660;
      block[4] = self;
      dispatch_async(v13, block);
    }
  }

  return v11;
}

- (id)newClassicBTPairerWithDelegate:(id)a3
{
  v4 = a3;
  if ([(EPDevice *)self hasPairer])
  {
    v5 = sub_1000A98C0();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (!v6)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v7 = sub_1000A98C0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "newPairer called when pairing or ending pairing", v13, 2u);
    }

    v8 = 0;
  }

  else
  {
    v9 = [(EPDevice *)self pairers];
    v10 = [v9 newPairerWithDelegate:v4 withParameters:0];

    v11 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005C6A8;
    block[3] = &unk_100175598;
    v15 = v4;
    v8 = v10;
    v16 = v8;
    dispatch_async(v11, block);

    v7 = v15;
  }

LABEL_9:
  return v8;
}

- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6
{
  v13 = a6;
  v10 = [a4 identifier];
  v11 = [(EPDeviceInfo *)self->_info uuid];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
    self->_lastPairingRequestDate = CFAbsoluteTimeGetCurrent();
    self->_pendingPairingRequest = 1;
    self->_lastPairingRequestType = a5;
    objc_storeStrong(&self->_lastPairingRequestPasskey, a6);
    [(EPDevice *)self update];
  }
}

- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4
{
  v5 = [a4 identifier];
  v6 = [(EPDeviceInfo *)self->_info uuid];
  v7 = [v5 isEqual:v6];

  if (v7)
  {

    [(EPDevice *)self cancelPairingWithError:0];
  }
}

- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5
{
  v10 = a5;
  v7 = [a4 identifier];
  v8 = [(EPDeviceInfo *)self->_info uuid];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    [(EPDevice *)self cancelPairingWithError:v10];
  }
}

- (void)writeData:(id)a3 begin:(id)a4 completion:(id)a5
{
  info = self->_info;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(EPDeviceInfo *)info peripheralFactory];
  v16 = [v11 newObserverWithDelegate:0];

  v12 = [EPCharacteristicWriter alloc];
  v13 = [CBUUID UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
  v14 = [CBUUID UUIDWithString:@"5F6C6A23-8AC8-400E-810B-017134943460"];
  v15 = [(EPCharacteristicWriter *)v12 initWithPeripheral:v16 serviceUUID:v13 characteristicUUID:v14];

  [(EPCharacteristicWriter *)v15 writeData:v10 begin:v9 completion:v8];
}

- (void)updateAndEnterState:(id)a3
{
  v4 = a3;
  if ([(EPDeviceInfo *)self->_info hasClassicDevice])
  {
    goto LABEL_85;
  }

  if (v4)
  {
    v5 = [v4 integerValue];

    if (v5 != [(EPDevice *)self pairingPhase])
    {
      v6 = sub_1000A98C0();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

      if (v7)
      {
        v8 = sub_1000A98C0();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [(EPDevice *)self uuid];
          v10 = [v9 UUIDString];
          v11 = [(EPDevice *)self stringFromPairingPhase:[(EPDevice *)self pairingPhase]];
          v12 = [(EPDevice *)self stringFromPairingPhase:v5];
          *buf = 138412802;
          v94 = v10;
          v95 = 2112;
          v96 = v11;
          v97 = 2112;
          v98 = v12;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: EPDevice updateAndEnterState %@ --> %@", buf, 0x20u);
        }
      }

      if ([(EPDevice *)self pairingPhase])
      {
        if (v5 != 3)
        {
          if (v5 != 2)
          {
            if (!v5)
            {
              pairingTimer = self->_pairingTimer;
              if (pairingTimer)
              {
                dispatch_source_cancel(pairingTimer);
                v14 = self->_pairingTimer;
                self->_pairingTimer = 0;
              }

              goto LABEL_40;
            }

LABEL_46:
            [(EPDevice *)self setPairingPhase:v5];
            goto LABEL_47;
          }

          goto LABEL_23;
        }
      }

      else
      {
        if (self->_enableOOBPairing)
        {
          v15 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"bluetoothTimeout"];
          v16 = v15;
          if (v15)
          {
            [v15 doubleValue];
            v18 = v17;
          }

          else
          {
            v18 = 14.0;
          }
        }

        else
        {
          v18 = 120.0;
        }

        [(EPDevice *)self _resetPairingTimeout:v18];
        if (!v5)
        {
LABEL_40:
          self->_endingPairing = 1;
          [(EPDevice *)self _reset];
          goto LABEL_46;
        }

        if (v5 != 3)
        {
          if (v5 != 2)
          {
            goto LABEL_46;
          }

LABEL_23:
          if ([(EPDevice *)self isPeripheral])
          {
            if (!self->_enableOOBPairingIsSet)
            {
              self->_enableOOBPairingIsSet = 1;
              v19 = sub_1000A98C0();
              v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

              if (v20)
              {
                v21 = sub_1000A98C0();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  if (self->_enableOOBPairing)
                  {
                    v22 = @"YES";
                  }

                  else
                  {
                    v22 = @"NO";
                  }

                  v23 = [(EPDevice *)self uuid];
                  v24 = [v23 UUIDString];
                  *buf = 138412546;
                  v94 = v22;
                  v95 = 2112;
                  v96 = v24;
                  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPairingAgent setOOBPairingEnabled:%@ forPeer:%@", buf, 0x16u);
                }
              }

              v25 = [(EPPairingAgent *)self->_agent agent];
              enableOOBPairing = self->_enableOOBPairing;
              v27 = [(EPDevice *)self peer];
              [v25 setOOBPairingEnabled:enableOOBPairing forPeer:v27];
            }

            v28 = [(EPDeviceInfo *)self->_info newConnectorWithDelegate:self];
            pairingConnector = self->_pairingConnector;
            self->_pairingConnector = v28;
          }

          else
          {
            pairingConnector = +[EPFactory sharedFactory];
            v40 = [pairingConnector newNullResourceWithDelegate:self];
            v41 = self->_pairingConnector;
            self->_pairingConnector = v40;
          }

          v42 = sub_1000A98C0();
          v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);

          if (!v43)
          {
            goto LABEL_46;
          }

          v39 = sub_1000A98C0();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v44 = self->_pairingConnector;
            v45 = objc_opt_class();
            v46 = NSStringFromClass(v45);
            v47 = self->_pairingConnector;
            *buf = 138412546;
            v94 = v46;
            v95 = 2048;
            v96 = v47;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Grabbed pairing connector %@[%p]", buf, 0x16u);
          }

          goto LABEL_45;
        }
      }

      v30 = [(EPDeviceInfo *)self->_info peer];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_46;
      }

      v32 = sub_1000A98C0();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

      if (v33)
      {
        v34 = sub_1000A98C0();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [(EPDevice *)self uuid];
          v36 = [v35 UUIDString];
          *buf = 138412290;
          v94 = v36;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPairingAgent pairPeer: on %@", buf, 0xCu);
        }
      }

      v37 = [(EPPairingAgent *)self->_agent agent];
      v38 = [(EPDeviceInfo *)self->_info peer];
      [v37 pairPeer:v38];

      v39 = [(EPDevice *)self pairers];
      [v39 pairerDidBeginToPair:0];
LABEL_45:

      goto LABEL_46;
    }
  }

LABEL_47:
  if ([(EPDevice *)self isPairing]|| [(EPDevice *)self hasPairer])
  {
    v48 = self;
    me = self->me;
    self->me = v48;
  }

  else
  {
    me = self->me;
    self->me = 0;
  }

  if (![(EPDevice *)self hasPairer])
  {
    [(EPResourceProtocol *)self->_pairingConnector invalidate];
    v50 = self->_pairingConnector;
    self->_pairingConnector = 0;

    [(EPResourceProtocol *)self->_pipe invalidate];
    pipe = self->_pipe;
    self->_pipe = 0;
  }

  if (self->_pairingPhase)
  {
    if (!self->_pipe)
    {
      if ([(EPDevice *)self hasPairer])
      {
        if (self->_pairingPhase != 2)
        {
          v52 = [(EPDevice *)self pairers];
          v53 = [v52 pairer:0 newEndpointWithDelegate:self];
          v54 = self->_pipe;
          self->_pipe = v53;

          if (!self->_pipe)
          {
            v91 = NSLocalizedDescriptionKey;
            v92 = @"Pipe creation failed";
            v55 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
            v56 = [NSError errorWithDomain:@"com.apple.nanoregistry.extensiblepair" code:777 userInfo:v55];

            v57 = +[EPFactory queue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10005D540;
            block[3] = &unk_100175598;
            block[4] = self;
            v86 = v56;
            v58 = v56;
            dispatch_async(v57, block);
          }
        }
      }
    }

    if (![(EPDevice *)self hasPairer])
    {
      [(EPResourceProtocol *)self->_pipe invalidate];
      v59 = self->_pipe;
      self->_pipe = 0;
    }

    agent = self->_agent;
    if (!agent)
    {
      self->_enableOOBPairingIsSet = 0;
      v61 = +[EPFactory sharedFactory];
      v62 = [v61 agentManager];
      v63 = [v62 newAgentWithDelegate:self fromCentral:{-[EPDevice isPeripheral](self, "isPeripheral")}];
      v64 = self->_agent;
      self->_agent = v63;

      agent = self->_agent;
    }

    if ([(EPResource *)agent availability]!= 1 && self->_pairingPhase == 3)
    {
      v89 = NSLocalizedDescriptionKey;
      v90 = @"Bluetooth restarted";
      v65 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
      v66 = [NSError errorWithDomain:@"com.apple.nanoregistry.extensiblepair" code:727 userInfo:v65];
      pairingError = self->_pairingError;
      self->_pairingError = v66;

      v68 = +[EPFactory queue];
      v84[0] = _NSConcreteStackBlock;
      v84[1] = 3221225472;
      v84[2] = sub_10005D54C;
      v84[3] = &unk_100175660;
      v84[4] = self;
      dispatch_async(v68, v84);
    }

    if ([(EPResource *)self->_agent availability]== 1)
    {
      pairingPhase = self->_pairingPhase;
      if (pairingPhase == 1)
      {
        v70 = +[EPFactory queue];
        v83[0] = _NSConcreteStackBlock;
        v83[1] = 3221225472;
        v83[2] = sub_10005D558;
        v83[3] = &unk_100175660;
        v83[4] = self;
        dispatch_async(v70, v83);

        pairingPhase = self->_pairingPhase;
      }

      if (pairingPhase == 2 && [(EPResourceProtocol *)self->_pipe availability]== 1 && [(EPResourceProtocol *)self->_pairingConnector availability]== 1)
      {
        v71 = +[EPFactory queue];
        v82[0] = _NSConcreteStackBlock;
        v82[1] = 3221225472;
        v82[2] = sub_10005D568;
        v82[3] = &unk_100175660;
        v82[4] = self;
        dispatch_async(v71, v82);
      }
    }

    if (self->_pairingPhase != 3)
    {
      goto LABEL_78;
    }

    v72 = [(EPDevice *)self pairers];
    [v72 update];
    goto LABEL_77;
  }

  v73 = self->_agent;
  self->_agent = 0;

  if (![(EPDevice *)self hasPairer])
  {
    v72 = self->_pipe;
    self->_pipe = 0;
LABEL_77:
  }

LABEL_78:
  if ([(EPDevice *)self hasPairer])
  {
    if ([(EPResource *)self->_agent availability]== 1 && self->_pendingPairingRequest)
    {
      self->_pendingPairingRequest = 0;
      v74 = +[EPFactory queue];
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_10005D578;
      v81[3] = &unk_100175660;
      v81[4] = self;
      dispatch_async(v74, v81);
    }
  }

  else if ([(EPDevice *)self isPairing])
  {
    v87 = NSLocalizedDescriptionKey;
    v88 = @"Pairing aborted because the EPPairer object deallocated";
    v75 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    v76 = [NSError errorWithDomain:@"com.apple.NanoRegistry" code:4567 userInfo:v75];

    v77 = +[EPFactory queue];
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_10005D5D4;
    v79[3] = &unk_100175598;
    v79[4] = self;
    v80 = v76;
    v78 = v76;
    dispatch_async(v77, v79);
  }

  v4 = 0;
LABEL_85:
}

@end