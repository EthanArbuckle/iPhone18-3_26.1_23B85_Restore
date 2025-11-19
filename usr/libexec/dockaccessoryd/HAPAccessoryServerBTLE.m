@interface HAPAccessoryServerBTLE
+ (id)hapUUIDFromBTLEUUID:(id)a3;
- (BOOL)isCached;
- (BOOL)isPaired;
- (BOOL)updatePeripheralIdentifier:(id *)a3 isPairing:(BOOL)a4;
- (BOOL)updateResumeSessionID:(unint64_t)a3;
- (CBPeripheral)peripheral;
- (HAPAccessoryServerBTLE)initWithPeripheral:(id)a3 name:(id)a4 pairingUsername:(id)a5 statusFlags:(id)a6 stateNumber:(id)a7 enhancedEncryption:(BOOL)a8 connectReason:(unsigned __int8)a9 configNumber:(id)a10 category:(id)a11 setupHash:(id)a12 connectionIdleTime:(unsigned __int8)a13 browser:(id)a14 keyStore:(id)a15 whbStableIdentifier:(id)a16;
- (HAPAccessoryServerBrowser)browser;
- (HAPBLEPeripheral)blePeripheral;
- (NSNumber)stateNumber;
- (NSString)shortDescription;
- (id)hapCharacteristicForCBCharacteristic:(id)a3;
- (id)readAndResetHAPMetrics:(BOOL)a3;
- (unsigned)connectReason;
- (void)configureCharacteristics:(id)a3 queue:(id)a4 withCompletionHandler:(id)a5;
- (void)generateBroadcastKey:(unsigned __int8)a3 queue:(id)a4 withCompletionHandler:(id)a5;
- (void)handleConnectionWithPeripheral:(id)a3 withError:(id)a4;
- (void)handleDisconnectionWithError:(id)a3 completionHandler:(id)a4;
- (void)incrementHAPBTLEMetricsConnectionCount;
- (void)incrementHAPBTLEMetricsDiscoveryCount;
- (void)setConnectReason:(unsigned __int8)a3;
- (void)setStateNumber:(id)a3;
- (void)updateConnectionIdleTime:(unsigned __int8)a3;
@end

@implementation HAPAccessoryServerBTLE

+ (id)hapUUIDFromBTLEUUID:(id)a3
{
  v3 = a3;
  v4 = +[HAPMetadata getSharedInstance];
  v5 = [v3 UUIDString];
  v6 = [v4 btleToServiceType:v5];

  v7 = [NSUUID alloc];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 initWithUUIDString:v6];
  }

  else
  {
    v10 = [v3 UUIDString];
    v9 = [v8 initWithUUIDString:v10];
  }

  return v9;
}

- (HAPAccessoryServerBTLE)initWithPeripheral:(id)a3 name:(id)a4 pairingUsername:(id)a5 statusFlags:(id)a6 stateNumber:(id)a7 enhancedEncryption:(BOOL)a8 connectReason:(unsigned __int8)a9 configNumber:(id)a10 category:(id)a11 setupHash:(id)a12 connectionIdleTime:(unsigned __int8)a13 browser:(id)a14 keyStore:(id)a15 whbStableIdentifier:(id)a16
{
  v20 = a3;
  v38 = a4;
  v39 = a5;
  v21 = a6;
  obj = a7;
  v37 = a7;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a14;
  v26 = a16;
  v40.receiver = self;
  v40.super_class = HAPAccessoryServerBTLE;
  v27 = [(HAPAccessoryServer *)&v40 initWithKeystore:a15];
  v28 = v27;
  if (v27)
  {
    objc_storeWeak((v27 + 356), v20);
    v29 = [v20 cbPeripheral];
    objc_storeWeak((v28 + 300), v29);

    v30 = [v38 copy];
    v31 = *(v28 + 1);
    *(v28 + 1) = v30;

    v32 = [v39 copy];
    v33 = *(v28 + 2);
    *(v28 + 2) = v32;

    objc_storeStrong((v28 + 284), obj);
    v28[282] = 0;
    v28[281] = 0;
    v28[280] = a9;
    v28[283] = a13;
    objc_storeWeak((v28 + 348), v25);
    objc_storeStrong((v28 + 292), a16);
    [v28 setSetupHash:v24];
    [v28 setHasPairings:{sub_1000147FC(objc_msgSend(v21, "unsignedCharValue"))}];
    [v28 setCategory:v23];
    [v28 setConfigNumber:{objc_msgSend(v22, "unsignedIntegerValue")}];
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

- (void)setStateNumber:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v6 = *(&self->_connectionIdleTime + 1);
  if (HMFEqualObjects())
  {
    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    objc_storeStrong((&self->_connectionIdleTime + 1), a3);
    os_unfair_lock_unlock(&self->super._lock);
    v7 = [(HAPAccessoryServer *)self delegate];
    v8 = [(HAPAccessoryServer *)self delegateQueue];
    if (v8)
    {
      v9 = v8;
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = [(HAPAccessoryServer *)self delegateQueue];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10007D4F0;
        v12[3] = &unk_100273370;
        v13 = v7;
        v14 = self;
        dispatch_async(v11, v12);
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

- (void)setConnectReason:(unsigned __int8)a3
{
  v3 = a3;
  os_unfair_lock_lock_with_options();
  self->_connectReason = v3;
  if (v3)
  {
    ++*(&self->_metricHAPBTLEDiscoveryCount + 4);
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)handleConnectionWithPeripheral:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)handleDisconnectionWithError:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (BOOL)updateResumeSessionID:(unint64_t)a3
{
  v5 = [(HAPAccessoryServerBTLE *)self browser];
  v6 = [(HAPAccessoryServer *)self identifier];
  v7 = [v5 isPaired:v6];

  if (!v7)
  {
    return 0;
  }

  *(&self->_hapBLEProtocolVersion + 4) = a3;
  v8 = self;
  v9 = sub_10007FAA0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = sub_10007FAFC(v8);
    *buf = 138543618;
    v23 = v10;
    v24 = 2048;
    v25 = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@Updating resumeSessionID: %llu", buf, 0x16u);
  }

  v11 = [(HAPAccessoryServer *)v8 keyStore];
  v12 = [(HAPAccessoryServerBTLE *)v8 blePeripheral];
  v13 = [v12 uniqueBTIdentifier];
  v14 = [(HAPAccessoryServer *)v8 identifier];
  v21 = 0;
  v15 = [v11 updatePeripheralIdentifier:v13 forAccessoryIdentifier:v14 protocolVersion:-[HAPAccessoryServerBTLE hapBLEProtocolVersion](v8 previousVersion:"hapBLEProtocolVersion") resumeSessionID:0 error:{a3, &v21}];
  v16 = v21;

  if ((v15 & 1) == 0)
  {
    v17 = v8;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(v17);
      *buf = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to update the peripheral identifier with error: %@", buf, 0x16u);
    }
  }

  return v15;
}

- (BOOL)updatePeripheralIdentifier:(id *)a3 isPairing:(BOOL)a4
{
  v7 = [(HAPAccessoryServerBTLE *)self browser];
  v8 = [(HAPAccessoryServer *)self identifier];
  v9 = [v7 isPaired:v8];

  if ((v9 & 1) != 0 || a4)
  {
    v32 = 0;
    v33 = 0;
    v11 = [(HAPAccessoryServer *)self keyStore];
    v12 = [(HAPAccessoryServer *)self identifier];
    v31 = 0;
    v13 = [v11 readPeripheralIdentifierForAccessoryIdentifier:v12 protocolVersion:0 resumeSessionID:&v32 error:&v31];
    v14 = v31;

    if (v32)
    {
      v15 = self;
      v16 = sub_10007FAA0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = sub_10007FAFC(v15);
        *buf = 138543618;
        v35 = v17;
        v36 = 2048;
        v37 = v32;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@Initializing BLE Server with resumeSessionID: %llu", buf, 0x16u);
      }

      *(&v15->_hapBLEProtocolVersion + 4) = v32;
    }

    v18 = [(HAPAccessoryServer *)self keyStore];
    v19 = [(HAPAccessoryServerBTLE *)self blePeripheral];
    v20 = [v19 uniqueBTIdentifier];
    v21 = [(HAPAccessoryServer *)self identifier];
    v30 = 0;
    v10 = [v18 updatePeripheralIdentifier:v20 forAccessoryIdentifier:v21 protocolVersion:-[HAPAccessoryServerBTLE hapBLEProtocolVersion](self previousVersion:"hapBLEProtocolVersion") resumeSessionID:&v33 error:{-[HAPAccessoryServerBTLE resumeSessionID](self, "resumeSessionID"), &v30}];
    v22 = v30;

    if (v10)
    {
      if (v33 == 1 && [(HAPAccessoryServerBTLE *)self hapBLEProtocolVersion]!= 1)
      {
        v23 = self;
        v24 = sub_10007FAA0();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = sub_10007FAFC(v23);
          *buf = 138543362;
          v35 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Incompatible update BLE 1.0 -> BLE 2.x", buf, 0xCu);
        }

        [(HAPAccessoryServer *)v23 setIncompatibleUpdate:1];
      }
    }

    else
    {
      v26 = self;
      v27 = sub_10007FAA0();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = sub_10007FAFC(v26);
        *buf = 138543618;
        v35 = v28;
        v36 = 2112;
        v37 = v22;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to update the peripheral identifier with error: %@", buf, 0x16u);
      }

      if (a3)
      {
        *a3 = [NSError hapErrorWithcode:1 description:@"Failed to update peripheral" reason:@"Failed to store peripheral identifier to the keystore" suggestion:0 underlyingError:v22];
      }
    }
  }

  else if (a3)
  {
    [NSError hapErrorWithcode:3 description:@"Failed to update peripheral." reason:@"The accessory is unpaired" suggestion:0 underlyingError:0];
    *a3 = v10 = 0;
  }

  else
  {
    return 0;
  }

  return v10;
}

- (void)updateConnectionIdleTime:(unsigned __int8)a3
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)configureCharacteristics:(id)a3 queue:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = NSStringFromSelector(a2);
  v12 = [NSString stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)generateBroadcastKey:(unsigned __int8)a3 queue:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = NSStringFromSelector(a2);
  v10 = [NSString stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (BOOL)isPaired
{
  v3 = [(HAPAccessoryServerBTLE *)self browser];
  v4 = [(HAPAccessoryServer *)self identifier];
  v5 = [v3 isPaired:v4];

  return v5;
}

- (BOOL)isCached
{
  v2 = [(HAPAccessoryServerBTLE *)self blePeripheral];
  v3 = [v2 isCached];

  return v3;
}

- (NSString)shortDescription
{
  v7.receiver = self;
  v7.super_class = HAPAccessoryServerBTLE;
  v3 = [(HAPAccessoryServer *)&v7 shortDescription];
  v4 = [(HAPAccessoryServerBTLE *)self stateNumber];
  v5 = [NSString stringWithFormat:@"%@ (%@)", v3, v4];

  return v5;
}

- (id)hapCharacteristicForCBCharacteristic:(id)a3
{
  v4 = a3;
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

- (id)readAndResetHAPMetrics:(BOOL)a3
{
  v3 = a3;
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

  if (v3)
  {
    *(&self->_metricHAPBTLEConnectionCount + 4) = 0;
    *(&self->_resumeSessionID + 4) = 0;
    *(&self->_metricHAPBTLEDiscoveryCount + 4) = 0;
  }

  os_unfair_lock_unlock(&self->super._lock);

  return v8;
}

@end