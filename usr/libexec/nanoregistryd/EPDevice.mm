@interface EPDevice
+ (id)newClassicDeviceWithInfo:(id)info;
+ (id)newDeviceForClassicPairing;
+ (id)newDeviceWithInfo:(id)info;
+ (id)newDeviceWithInfo:(id)info withAdvertisementData:(id)data withRSSI:(id)i;
+ (id)stringFromCBPairingType:(int64_t)type;
+ (int64_t)minRSSIInteger;
+ (int64_t)proxRSSIInteger;
- (BOOL)hasPairer;
- (BOOL)isDisplayabilityExpired;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpired;
- (BOOL)isPeripheral;
- (BOOL)isProximateExpired;
- (BOOL)updateWithPeer:(id)peer;
- (EPDevice)initWithInfo:(id)info;
- (EPDevice)initWithInfo:(id)info withAdvertisementData:(id)data withRSSI:(id)i;
- (EPPairerList)pairers;
- (NSString)description;
- (id)initBase;
- (id)initClassicDeviceWithInfo:(id)info;
- (id)newClassicBTPairerWithDelegate:(id)delegate;
- (id)newObserverWithDelegate:(id)delegate;
- (id)newPairerWithDelegate:(id)delegate withParameters:(id)parameters;
- (id)stringFromPairingPhase:(unint64_t)phase;
- (unint64_t)hash;
- (void)_reset;
- (void)_resetPairingTimeout:(double)timeout;
- (void)cancelPairingWithError:(id)error;
- (void)dealloc;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)reset;
- (void)setEnableOOBPairing:(BOOL)pairing;
- (void)updateAndEnterState:(id)state;
- (void)updateWithPeripheral:(id)peripheral withAdvertisementData:(id)data withRSSI:(id)i;
- (void)writeData:(id)data begin:(id)begin completion:(id)completion;
@end

@implementation EPDevice

+ (id)stringFromCBPairingType:(int64_t)type
{
  if (type > 5)
  {
    return @"CBPairingTypeReserved";
  }

  else
  {
    return *(&off_100177B40 + type);
  }
}

- (id)initBase
{
  v3.receiver = self;
  v3.super_class = EPDevice;
  return [(EPDevice *)&v3 init];
}

+ (id)newDeviceWithInfo:(id)info withAdvertisementData:(id)data withRSSI:(id)i
{
  iCopy = i;
  dataCopy = data;
  infoCopy = info;
  v11 = [[self alloc] initWithInfo:infoCopy withAdvertisementData:dataCopy withRSSI:iCopy];

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

- (EPDevice)initWithInfo:(id)info withAdvertisementData:(id)data withRSSI:(id)i
{
  infoCopy = info;
  dataCopy = data;
  iCopy = i;
  initBase = [(EPDevice *)self initBase];
  v13 = initBase;
  if (initBase)
  {
    objc_storeStrong(initBase + 23, info);
    peer = [infoCopy peer];
    [(EPDevice *)v13 updateWithPeripheral:peer withAdvertisementData:dataCopy withRSSI:iCopy];
  }

  return v13;
}

+ (id)newDeviceWithInfo:(id)info
{
  infoCopy = info;
  v5 = [[self alloc] initWithInfo:infoCopy];

  return v5;
}

+ (id)newClassicDeviceWithInfo:(id)info
{
  infoCopy = info;
  v5 = [[self alloc] initClassicDeviceWithInfo:infoCopy];

  return v5;
}

+ (id)newDeviceForClassicPairing
{
  v2 = [self alloc];

  return [v2 initBase];
}

- (EPDevice)initWithInfo:(id)info
{
  infoCopy = info;
  initBase = [(EPDevice *)self initBase];
  v7 = initBase;
  if (initBase)
  {
    objc_storeStrong(initBase + 23, info);
    peer = [infoCopy peer];
    [(EPDevice *)v7 updateWithPeer:peer];
  }

  return v7;
}

- (id)initClassicDeviceWithInfo:(id)info
{
  infoCopy = info;
  initBase = [(EPDevice *)self initBase];
  v7 = initBase;
  if (initBase)
  {
    objc_storeStrong(initBase + 23, info);
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

- (void)updateWithPeripheral:(id)peripheral withAdvertisementData:(id)data withRSSI:(id)i
{
  peripheralCopy = peripheral;
  iCopy = i;
  name = [data objectForKeyedSubscript:CBAdvertisementDataLocalNameKey];
  if (!name)
  {
    name = [peripheralCopy name];
  }

  if ([objc_opt_class() isInRangeWithRSSI:iCopy])
  {
    objc_storeStrong(&self->_name, name);
    objc_storeStrong(&self->_RSSI, i);
    self->_lastDiscoveredDate = CFAbsoluteTimeGetCurrent();
    if ([(EPDevice *)self displayable])
    {
      self->_lastDisplayableDate = self->_lastDiscoveredDate;
      objc_storeStrong(&self->_displayableName, name);
      objc_storeStrong(&self->_displayableRSSI, i);
    }

    if ([(EPDevice *)self proximate])
    {
      self->_lastProximateDate = self->_lastDiscoveredDate;
    }
  }
}

- (BOOL)updateWithPeer:(id)peer
{
  peerCopy = peer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [peerCopy name];
    name = self->_name;
    self->_name = name;
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
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "dealloc %@[%p]", buf, 0x16u);
    }
  }

  v8.receiver = self;
  v8.super_class = EPDevice;
  [(EPDevice *)&v8 dealloc];
}

- (void)setEnableOOBPairing:(BOOL)pairing
{
  if (self->_enableOOBPairing != pairing)
  {
    self->_enableOOBPairing = pairing;
    self->_enableOOBPairingIsSet = 0;
    [(EPDevice *)self update];
  }
}

- (BOOL)isPeripheral
{
  peer = [(EPDeviceInfo *)self->_info peer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isExpired
{
  peer = [(EPDevice *)self peer];

  if (peer)
  {
    if ([(EPDevice *)self isPairing])
    {
      return 0;
    }

    v5 = +[EPPeripheralConnectorManagerFactory sharedConnectorManagerFactory];
    uuid = [(EPDevice *)self uuid];
    v7 = [v5 isConnected:uuid];

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

- (id)newObserverWithDelegate:(id)delegate
{
  info = self->_info;
  delegateCopy = delegate;
  peripheralFactory = [(EPDeviceInfo *)info peripheralFactory];
  v6 = [peripheralFactory newObserverWithDelegate:delegateCopy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = EPDevice;
    if ([(EPDevice *)&v12 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      info = self->_info;
      v6 = equalCopy;
      uuid = [(EPDeviceInfo *)info uuid];
      v8 = v6->_info;

      uuid2 = [(EPDeviceInfo *)v8 uuid];
      v10 = [uuid isEqual:uuid2];
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
  uuid = [(EPDeviceInfo *)self->_info uuid];
  v3 = [uuid hash];

  return v3 + 31;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  uuid = [(EPDevice *)self uuid];
  uUIDString = [uuid UUIDString];
  name = [(EPDevice *)self name];
  v8 = [NSString stringWithFormat:@"%@[%p] %@ name=%@", v4, self, uUIDString, name];

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

  isPairing = [(EPDevice *)self isPairing];
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

  if (isPairing)
  {
    pairers = [(EPDevice *)self pairers];
    [pairers pairer:0 completedWithError:v6];

    delegate = [(EPDevice *)self delegate];
    peer = [(EPDeviceInfo *)self->_info peer];
    [delegate device:self peerDidInvalidate:peer];

    v16 = +[EPFactory queue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10005BEE4;
    v19[3] = &unk_100175598;
    v20 = v6;
    selfCopy = self;
    dispatch_async(v16, v19);
  }

  else
  {
    delegate2 = [(EPDevice *)self delegate];
    peer2 = [(EPDeviceInfo *)self->_info peer];
    [delegate2 device:self peerDidInvalidate:peer2];
  }
}

- (void)_resetPairingTimeout:(double)timeout
{
  pairingTimer = self->_pairingTimer;
  if (pairingTimer)
  {
    dispatch_source_cancel(pairingTimer);
  }

  v6 = +[EPFactory queue];
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);

  v8 = dispatch_time(0, (timeout * 1000000000.0));
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

- (id)stringFromPairingPhase:(unint64_t)phase
{
  if (phase - 1 > 2)
  {
    return @"EPPairingPhaseIdle";
  }

  else
  {
    return *(&off_100177B70 + phase - 1);
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

- (void)cancelPairingWithError:(id)error
{
  errorCopy = error;
  if (!self->_endingPairing && [(EPDevice *)self pairingPhase])
  {
    v6 = sub_1000A98C0();
    v7 = v6;
    if (errorCopy)
    {
      v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = sub_1000A98C0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100100780(errorCopy, v9);
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
    objc_storeStrong(&self->_pairingError, error);
    self->_endingPairing = 1;
    if (errorCopy)
    {
      peer = +[NRDataCollector sharedInstance];
      v12 = [peer incrementCounterForKey:@"btPairingRetryCount"];
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

      peer = [(EPDevice *)self peer];
      [peer tag:@"IsAppleWatch"];
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (id)newPairerWithDelegate:(id)delegate withParameters:(id)parameters
{
  delegateCopy = delegate;
  parametersCopy = parameters;
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
    pairers = [(EPDevice *)self pairers];
    v11 = [pairers newPairerWithDelegate:delegateCopy withParameters:parametersCopy];

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

- (id)newClassicBTPairerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
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
    pairers = [(EPDevice *)self pairers];
    v10 = [pairers newPairerWithDelegate:delegateCopy withParameters:0];

    v11 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005C6A8;
    block[3] = &unk_100175598;
    v15 = delegateCopy;
    v8 = v10;
    v16 = v8;
    dispatch_async(v11, block);

    v7 = v15;
  }

LABEL_9:
  return v8;
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  passkeyCopy = passkey;
  identifier = [pairing identifier];
  uuid = [(EPDeviceInfo *)self->_info uuid];
  v12 = [identifier isEqual:uuid];

  if (v12)
  {
    self->_lastPairingRequestDate = CFAbsoluteTimeGetCurrent();
    self->_pendingPairingRequest = 1;
    self->_lastPairingRequestType = type;
    objc_storeStrong(&self->_lastPairingRequestPasskey, passkey);
    [(EPDevice *)self update];
  }
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  identifier = [pairing identifier];
  uuid = [(EPDeviceInfo *)self->_info uuid];
  v7 = [identifier isEqual:uuid];

  if (v7)
  {

    [(EPDevice *)self cancelPairingWithError:0];
  }
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  errorCopy = error;
  identifier = [pairing identifier];
  uuid = [(EPDeviceInfo *)self->_info uuid];
  v9 = [identifier isEqual:uuid];

  if (v9)
  {
    [(EPDevice *)self cancelPairingWithError:errorCopy];
  }
}

- (void)writeData:(id)data begin:(id)begin completion:(id)completion
{
  info = self->_info;
  completionCopy = completion;
  beginCopy = begin;
  dataCopy = data;
  peripheralFactory = [(EPDeviceInfo *)info peripheralFactory];
  v16 = [peripheralFactory newObserverWithDelegate:0];

  v12 = [EPCharacteristicWriter alloc];
  v13 = [CBUUID UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
  v14 = [CBUUID UUIDWithString:@"5F6C6A23-8AC8-400E-810B-017134943460"];
  v15 = [(EPCharacteristicWriter *)v12 initWithPeripheral:v16 serviceUUID:v13 characteristicUUID:v14];

  [(EPCharacteristicWriter *)v15 writeData:dataCopy begin:beginCopy completion:completionCopy];
}

- (void)updateAndEnterState:(id)state
{
  stateCopy = state;
  if ([(EPDeviceInfo *)self->_info hasClassicDevice])
  {
    goto LABEL_85;
  }

  if (stateCopy)
  {
    integerValue = [stateCopy integerValue];

    if (integerValue != [(EPDevice *)self pairingPhase])
    {
      v6 = sub_1000A98C0();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

      if (v7)
      {
        v8 = sub_1000A98C0();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          uuid = [(EPDevice *)self uuid];
          uUIDString = [uuid UUIDString];
          v11 = [(EPDevice *)self stringFromPairingPhase:[(EPDevice *)self pairingPhase]];
          v12 = [(EPDevice *)self stringFromPairingPhase:integerValue];
          *buf = 138412802;
          v94 = uUIDString;
          v95 = 2112;
          v96 = v11;
          v97 = 2112;
          v98 = v12;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: EPDevice updateAndEnterState %@ --> %@", buf, 0x20u);
        }
      }

      if ([(EPDevice *)self pairingPhase])
      {
        if (integerValue != 3)
        {
          if (integerValue != 2)
          {
            if (!integerValue)
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
            [(EPDevice *)self setPairingPhase:integerValue];
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
        if (!integerValue)
        {
LABEL_40:
          self->_endingPairing = 1;
          [(EPDevice *)self _reset];
          goto LABEL_46;
        }

        if (integerValue != 3)
        {
          if (integerValue != 2)
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

                  uuid2 = [(EPDevice *)self uuid];
                  uUIDString2 = [uuid2 UUIDString];
                  *buf = 138412546;
                  v94 = v22;
                  v95 = 2112;
                  v96 = uUIDString2;
                  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPairingAgent setOOBPairingEnabled:%@ forPeer:%@", buf, 0x16u);
                }
              }

              agent = [(EPPairingAgent *)self->_agent agent];
              enableOOBPairing = self->_enableOOBPairing;
              peer = [(EPDevice *)self peer];
              [agent setOOBPairingEnabled:enableOOBPairing forPeer:peer];
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

          pairers = sub_1000A98C0();
          if (os_log_type_enabled(pairers, OS_LOG_TYPE_DEFAULT))
          {
            v44 = self->_pairingConnector;
            v45 = objc_opt_class();
            v46 = NSStringFromClass(v45);
            v47 = self->_pairingConnector;
            *buf = 138412546;
            v94 = v46;
            v95 = 2048;
            v96 = v47;
            _os_log_impl(&_mh_execute_header, pairers, OS_LOG_TYPE_DEFAULT, "Grabbed pairing connector %@[%p]", buf, 0x16u);
          }

          goto LABEL_45;
        }
      }

      peer2 = [(EPDeviceInfo *)self->_info peer];
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
          uuid3 = [(EPDevice *)self uuid];
          uUIDString3 = [uuid3 UUIDString];
          *buf = 138412290;
          v94 = uUIDString3;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPairingAgent pairPeer: on %@", buf, 0xCu);
        }
      }

      agent2 = [(EPPairingAgent *)self->_agent agent];
      peer3 = [(EPDeviceInfo *)self->_info peer];
      [agent2 pairPeer:peer3];

      pairers = [(EPDevice *)self pairers];
      [pairers pairerDidBeginToPair:0];
LABEL_45:

      goto LABEL_46;
    }
  }

LABEL_47:
  if ([(EPDevice *)self isPairing]|| [(EPDevice *)self hasPairer])
  {
    selfCopy = self;
    me = self->me;
    self->me = selfCopy;
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
          pairers2 = [(EPDevice *)self pairers];
          v53 = [pairers2 pairer:0 newEndpointWithDelegate:self];
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
      agentManager = [v61 agentManager];
      v63 = [agentManager newAgentWithDelegate:self fromCentral:{-[EPDevice isPeripheral](self, "isPeripheral")}];
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

    pairers3 = [(EPDevice *)self pairers];
    [pairers3 update];
    goto LABEL_77;
  }

  v73 = self->_agent;
  self->_agent = 0;

  if (![(EPDevice *)self hasPairer])
  {
    pairers3 = self->_pipe;
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

  stateCopy = 0;
LABEL_85:
}

@end