@interface HAPAccessoryServerBTLE
+ (id)hapUUIDFromBTLEUUID:(id)d;
- (BOOL)isCached;
- (BOOL)isPaired;
- (BOOL)updatePeripheralIdentifier:(id *)identifier isPairing:(BOOL)pairing;
- (BOOL)updateResumeSessionID:(unint64_t)d;
- (CBPeripheral)peripheral;
- (HAPAccessoryServerBTLE)initWithPeripheral:(id)peripheral name:(id)name pairingUsername:(id)username statusFlags:(id)flags stateNumber:(id)number enhancedEncryption:(BOOL)encryption connectReason:(unsigned __int8)reason configNumber:(id)self0 category:(id)self1 setupHash:(id)self2 connectionIdleTime:(unsigned __int8)self3 browser:(id)self4 keyStore:(id)self5 whbStableIdentifier:(id)self6;
- (HAPAccessoryServerBrowser)browser;
- (HAPBLEPeripheral)blePeripheral;
- (NSNumber)stateNumber;
- (NSString)shortDescription;
- (id)hapCharacteristicForCBCharacteristic:(id)characteristic;
- (id)readAndResetHAPMetrics:(BOOL)metrics;
- (unsigned)connectReason;
- (void)configureCharacteristics:(id)characteristics queue:(id)queue withCompletionHandler:(id)handler;
- (void)generateBroadcastKey:(unsigned __int8)key queue:(id)queue withCompletionHandler:(id)handler;
- (void)handleConnectionWithPeripheral:(id)peripheral withError:(id)error;
- (void)handleDisconnectionWithError:(id)error completionHandler:(id)handler;
- (void)incrementHAPBTLEMetricsConnectionCount;
- (void)incrementHAPBTLEMetricsDiscoveryCount;
- (void)setConnectReason:(unsigned __int8)reason;
- (void)setStateNumber:(id)number;
- (void)updateConnectionIdleTime:(unsigned __int8)time;
@end

@implementation HAPAccessoryServerBTLE

+ (id)hapUUIDFromBTLEUUID:(id)d
{
  dCopy = d;
  v4 = +[HAPMetadata getSharedInstance];
  uUIDString = [dCopy UUIDString];
  v6 = [v4 btleToServiceType:uUIDString];

  v7 = [NSUUID alloc];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 initWithUUIDString:v6];
  }

  else
  {
    uUIDString2 = [dCopy UUIDString];
    v9 = [v8 initWithUUIDString:uUIDString2];
  }

  return v9;
}

- (HAPAccessoryServerBTLE)initWithPeripheral:(id)peripheral name:(id)name pairingUsername:(id)username statusFlags:(id)flags stateNumber:(id)number enhancedEncryption:(BOOL)encryption connectReason:(unsigned __int8)reason configNumber:(id)self0 category:(id)self1 setupHash:(id)self2 connectionIdleTime:(unsigned __int8)self3 browser:(id)self4 keyStore:(id)self5 whbStableIdentifier:(id)self6
{
  peripheralCopy = peripheral;
  nameCopy = name;
  usernameCopy = username;
  flagsCopy = flags;
  obj = number;
  numberCopy = number;
  configNumberCopy = configNumber;
  categoryCopy = category;
  hashCopy = hash;
  browserCopy = browser;
  identifierCopy = identifier;
  v40.receiver = self;
  v40.super_class = HAPAccessoryServerBTLE;
  v27 = [(HAPAccessoryServer *)&v40 initWithKeystore:store];
  v28 = v27;
  if (v27)
  {
    objc_storeWeak((v27 + 356), peripheralCopy);
    cbPeripheral = [peripheralCopy cbPeripheral];
    objc_storeWeak((v28 + 300), cbPeripheral);

    v30 = [nameCopy copy];
    v31 = *(v28 + 1);
    *(v28 + 1) = v30;

    v32 = [usernameCopy copy];
    v33 = *(v28 + 2);
    *(v28 + 2) = v32;

    objc_storeStrong((v28 + 284), obj);
    v28[282] = 0;
    v28[281] = 0;
    v28[280] = reason;
    v28[283] = time;
    objc_storeWeak((v28 + 348), browserCopy);
    objc_storeStrong((v28 + 292), identifier);
    [v28 setSetupHash:hashCopy];
    [v28 setHasPairings:{sub_1000147FC(objc_msgSend(flagsCopy, "unsignedCharValue"))}];
    [v28 setCategory:categoryCopy];
    [v28 setConfigNumber:{objc_msgSend(configNumberCopy, "unsignedIntegerValue")}];
    [v28 updatePeripheralIdentifier:0 isPairing:0];
  }

  return v28;
}

- (NSNumber)stateNumber
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->_connectionIdleTime + 1);
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setStateNumber:(id)number
{
  numberCopy = number;
  os_unfair_lock_lock_with_options();
  v6 = *(&self->_connectionIdleTime + 1);
  if (HMFEqualObjects())
  {
    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    objc_storeStrong((&self->_connectionIdleTime + 1), number);
    os_unfair_lock_unlock(&self->super._lock);
    delegate = [(HAPAccessoryServer *)self delegate];
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    if (delegateQueue)
    {
      v9 = delegateQueue;
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        delegateQueue2 = [(HAPAccessoryServer *)self delegateQueue];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10007D4F0;
        v12[3] = &unk_100273370;
        v13 = delegate;
        selfCopy = self;
        dispatch_async(delegateQueue2, v12);
      }
    }
  }
}

- (unsigned)connectReason
{
  os_unfair_lock_lock_with_options();
  connectReason = self->_connectReason;
  os_unfair_lock_unlock(&self->super._lock);
  return connectReason;
}

- (void)setConnectReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  os_unfair_lock_lock_with_options();
  self->_connectReason = reasonCopy;
  if (reasonCopy)
  {
    ++*(&self->_metricHAPBTLEDiscoveryCount + 4);
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)handleConnectionWithPeripheral:(id)peripheral withError:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)handleDisconnectionWithError:(id)error completionHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (BOOL)updateResumeSessionID:(unint64_t)d
{
  browser = [(HAPAccessoryServerBTLE *)self browser];
  identifier = [(HAPAccessoryServer *)self identifier];
  v7 = [browser isPaired:identifier];

  if (!v7)
  {
    return 0;
  }

  *(&self->_hapBLEProtocolVersion + 4) = d;
  selfCopy = self;
  v9 = sub_10007FAA0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = sub_10007FAFC(selfCopy);
    *buf = 138543618;
    v23 = v10;
    v24 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@Updating resumeSessionID: %llu", buf, 0x16u);
  }

  keyStore = [(HAPAccessoryServer *)selfCopy keyStore];
  blePeripheral = [(HAPAccessoryServerBTLE *)selfCopy blePeripheral];
  uniqueBTIdentifier = [blePeripheral uniqueBTIdentifier];
  identifier2 = [(HAPAccessoryServer *)selfCopy identifier];
  v21 = 0;
  v15 = [keyStore updatePeripheralIdentifier:uniqueBTIdentifier forAccessoryIdentifier:identifier2 protocolVersion:-[HAPAccessoryServerBTLE hapBLEProtocolVersion](selfCopy previousVersion:"hapBLEProtocolVersion") resumeSessionID:0 error:{d, &v21}];
  v16 = v21;

  if ((v15 & 1) == 0)
  {
    v17 = selfCopy;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(v17);
      *buf = 138543618;
      v23 = v19;
      v24 = 2112;
      dCopy = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to update the peripheral identifier with error: %@", buf, 0x16u);
    }
  }

  return v15;
}

- (BOOL)updatePeripheralIdentifier:(id *)identifier isPairing:(BOOL)pairing
{
  browser = [(HAPAccessoryServerBTLE *)self browser];
  identifier = [(HAPAccessoryServer *)self identifier];
  v9 = [browser isPaired:identifier];

  if ((v9 & 1) != 0 || pairing)
  {
    v32 = 0;
    v33 = 0;
    keyStore = [(HAPAccessoryServer *)self keyStore];
    identifier2 = [(HAPAccessoryServer *)self identifier];
    v31 = 0;
    v13 = [keyStore readPeripheralIdentifierForAccessoryIdentifier:identifier2 protocolVersion:0 resumeSessionID:&v32 error:&v31];
    v14 = v31;

    if (v32)
    {
      selfCopy = self;
      v16 = sub_10007FAA0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = sub_10007FAFC(selfCopy);
        *buf = 138543618;
        v35 = v17;
        v36 = 2048;
        v37 = v32;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@Initializing BLE Server with resumeSessionID: %llu", buf, 0x16u);
      }

      *(&selfCopy->_hapBLEProtocolVersion + 4) = v32;
    }

    keyStore2 = [(HAPAccessoryServer *)self keyStore];
    blePeripheral = [(HAPAccessoryServerBTLE *)self blePeripheral];
    uniqueBTIdentifier = [blePeripheral uniqueBTIdentifier];
    identifier3 = [(HAPAccessoryServer *)self identifier];
    v30 = 0;
    v10 = [keyStore2 updatePeripheralIdentifier:uniqueBTIdentifier forAccessoryIdentifier:identifier3 protocolVersion:-[HAPAccessoryServerBTLE hapBLEProtocolVersion](self previousVersion:"hapBLEProtocolVersion") resumeSessionID:&v33 error:{-[HAPAccessoryServerBTLE resumeSessionID](self, "resumeSessionID"), &v30}];
    v22 = v30;

    if (v10)
    {
      if (v33 == 1 && [(HAPAccessoryServerBTLE *)self hapBLEProtocolVersion]!= 1)
      {
        selfCopy2 = self;
        v24 = sub_10007FAA0();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = sub_10007FAFC(selfCopy2);
          *buf = 138543362;
          v35 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Incompatible update BLE 1.0 -> BLE 2.x", buf, 0xCu);
        }

        [(HAPAccessoryServer *)selfCopy2 setIncompatibleUpdate:1];
      }
    }

    else
    {
      selfCopy3 = self;
      v27 = sub_10007FAA0();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = sub_10007FAFC(selfCopy3);
        *buf = 138543618;
        v35 = v28;
        v36 = 2112;
        v37 = v22;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to update the peripheral identifier with error: %@", buf, 0x16u);
      }

      if (identifier)
      {
        *identifier = [NSError hapErrorWithcode:1 description:@"Failed to update peripheral" reason:@"Failed to store peripheral identifier to the keystore" suggestion:0 underlyingError:v22];
      }
    }
  }

  else if (identifier)
  {
    [NSError hapErrorWithcode:3 description:@"Failed to update peripheral." reason:@"The accessory is unpaired" suggestion:0 underlyingError:0];
    *identifier = v10 = 0;
  }

  else
  {
    return 0;
  }

  return v10;
}

- (void)updateConnectionIdleTime:(unsigned __int8)time
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)configureCharacteristics:(id)characteristics queue:(id)queue withCompletionHandler:(id)handler
{
  characteristicsCopy = characteristics;
  queueCopy = queue;
  handlerCopy = handler;
  v11 = NSStringFromSelector(a2);
  v12 = [NSString stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)generateBroadcastKey:(unsigned __int8)key queue:(id)queue withCompletionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v9 = NSStringFromSelector(a2);
  v10 = [NSString stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (BOOL)isPaired
{
  browser = [(HAPAccessoryServerBTLE *)self browser];
  identifier = [(HAPAccessoryServer *)self identifier];
  v5 = [browser isPaired:identifier];

  return v5;
}

- (BOOL)isCached
{
  blePeripheral = [(HAPAccessoryServerBTLE *)self blePeripheral];
  isCached = [blePeripheral isCached];

  return isCached;
}

- (NSString)shortDescription
{
  v7.receiver = self;
  v7.super_class = HAPAccessoryServerBTLE;
  shortDescription = [(HAPAccessoryServer *)&v7 shortDescription];
  stateNumber = [(HAPAccessoryServerBTLE *)self stateNumber];
  v5 = [NSString stringWithFormat:@"%@ (%@)", shortDescription, stateNumber];

  return v5;
}

- (id)hapCharacteristicForCBCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (CBPeripheral)peripheral
{
  WeakRetained = objc_loadWeakRetained((&self->_whbStableIdentifier + 4));

  return WeakRetained;
}

- (HAPAccessoryServerBrowser)browser
{
  WeakRetained = objc_loadWeakRetained((&self->_metricHAPBTLEConnectionPerReasonCount + 4));

  return WeakRetained;
}

- (HAPBLEPeripheral)blePeripheral
{
  WeakRetained = objc_loadWeakRetained((&self->_browser + 4));

  return WeakRetained;
}

- (void)incrementHAPBTLEMetricsConnectionCount
{
  os_unfair_lock_lock_with_options();
  ++*(&self->_resumeSessionID + 4);

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)incrementHAPBTLEMetricsDiscoveryCount
{
  os_unfair_lock_lock_with_options();
  ++*(&self->_metricHAPBTLEConnectionCount + 4);

  os_unfair_lock_unlock(&self->super._lock);
}

- (id)readAndResetHAPMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  os_unfair_lock_lock_with_options();
  v10[0] = &off_100282398;
  v5 = [NSNumber numberWithUnsignedInteger:*(&self->_metricHAPBTLEConnectionCount + 4)];
  v11[0] = v5;
  v10[1] = &off_1002823B0;
  v6 = [NSNumber numberWithUnsignedInteger:*(&self->_resumeSessionID + 4)];
  v11[1] = v6;
  v10[2] = &off_1002823C8;
  v7 = [NSNumber numberWithUnsignedInteger:*(&self->_metricHAPBTLEDiscoveryCount + 4)];
  v11[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  if (metricsCopy)
  {
    *(&self->_metricHAPBTLEConnectionCount + 4) = 0;
    *(&self->_resumeSessionID + 4) = 0;
    *(&self->_metricHAPBTLEDiscoveryCount + 4) = 0;
  }

  os_unfair_lock_unlock(&self->super._lock);

  return v8;
}

@end