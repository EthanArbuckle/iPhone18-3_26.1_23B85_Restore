@interface PRBLEDiscoverySession
- (BOOL)marconiBypassEnabled;
- (PRBLEDiscoverySession)init;
- (id).cxx_construct;
- (id)addPeerDiscoveryToken:(id)token;
- (id)removePeerDiscoveryToken:(id)token;
- (optional<unsigned)nonConnectableAdvertisingAddress;
- (void)_cancelScanRateAdjustmentTimer;
- (void)_configureCBSpatialSession;
- (void)_executeActivationPendingOperations;
- (void)activateWithDelegate:(id)delegate delegateQueue:(id)queue sessionIRK:(id)k sessionIdentifier:(id)identifier controlFlags:(NIBluetoothDiscoveryControlFlags)flags tokenFlags:(unsigned int)tokenFlags;
- (void)bluetoothAdvertisingAddressChanged;
- (void)bluetoothServiceInterrupted;
- (void)bluetoothStateChanged;
- (void)clearWifiRangingActiveAdvertisement;
- (void)didDiscoverDevice:(id)device;
- (void)didFailWithError:(id)error;
- (void)didLoseDevice:(id)device;
- (void)invalidate;
- (void)payloadDidChange;
- (void)setDeviceRelationshipFlags:(unint64_t)flags;
- (void)setWifiRangingActiveAdvertisement;
- (void)startAdvertising;
- (void)startAdvertisingBurstForDeviceDiscovery;
- (void)startScanning;
- (void)startScanningWithBurstPeriod:(double)period;
- (void)stopAdvertising;
- (void)stopAndClearState;
- (void)systemOverrideNotification;
@end

@implementation PRBLEDiscoverySession

- (PRBLEDiscoverySession)init
{
  v11.receiver = self;
  v11.super_class = PRBLEDiscoverySession;
  v2 = [(PRBLEDiscoverySession *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    activationPendingPeers = v2->_activationPendingPeers;
    v2->_activationPendingPeers = v3;

    v5 = objc_opt_new();
    peers = v2->_peers;
    v2->_peers = v5;

    cbSession = v2->_cbSession;
    v2->_cbSession = 0;

    v2->_cbSessionState = 0;
    v8 = objc_opt_new();
    deviceCache = v2->_deviceCache;
    v2->_deviceCache = v8;

    v2->_wifiAdvertisingAllowed = 0;
  }

  return v2;
}

- (void)_configureCBSpatialSession
{
  v3 = objc_alloc_init(CBSpatialInteractionSession);
  cbSession = self->_cbSession;
  self->_cbSession = v3;

  [(CBSpatialInteractionSession *)self->_cbSession setDispatchQueue:self->_clientQueue];
  objc_initWeak(&location, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100026440;
  v20[3] = &unk_10098AAF0;
  objc_copyWeak(&v21, &location);
  [(CBSpatialInteractionSession *)self->_cbSession setDeviceLostHandler:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000264B4;
  v18[3] = &unk_10098AAF0;
  objc_copyWeak(&v19, &location);
  [(CBSpatialInteractionSession *)self->_cbSession setDeviceFoundHandler:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100026528;
  v16[3] = &unk_10098AB18;
  objc_copyWeak(&v17, &location);
  [(CBSpatialInteractionSession *)self->_cbSession setInterruptionHandler:v16];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100026594;
  v14[3] = &unk_10098AB40;
  objc_copyWeak(&v15, &location);
  [(CBSpatialInteractionSession *)self->_cbSession setErrorHandler:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100026608;
  v12[3] = &unk_10098AB18;
  objc_copyWeak(&v13, &location);
  [(CBSpatialInteractionSession *)self->_cbSession setBluetoothStateChangedHandler:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100026664;
  v10[3] = &unk_10098AB18;
  objc_copyWeak(&v11, &location);
  [(CBSpatialInteractionSession *)self->_cbSession setAdvertisingAddressChangedHandler:v10];
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_1000266C0;
  v8 = &unk_10098AB18;
  objc_copyWeak(&v9, &location);
  [(CBSpatialInteractionSession *)self->_cbSession setSystemOverrideHandler:&v5];
  [(CBSpatialInteractionSession *)self->_cbSession setUwbTokenFlags:0, v5, v6, v7, v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (BOOL)marconiBypassEnabled
{
  if (qword_1009EC6C0 != -1)
  {
    sub_10049A57C();
  }

  return 0;
}

- (void)setDeviceRelationshipFlags:(unint64_t)flags
{
  dispatch_assert_queue_V2(self->_clientQueue);
  cbSessionState = self->_cbSessionState;
  if (cbSessionState > 2)
  {
    if ((cbSessionState - 3) > 1)
    {
      return;
    }

    goto LABEL_11;
  }

  if (!cbSessionState)
  {
LABEL_11:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049A678(&self->_cbSessionState);
    }

    return;
  }

  if (cbSessionState != 1)
  {
    if (cbSessionState != 2)
    {
      return;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049A590();
      if ((flags & 2) == 0)
      {
LABEL_8:
        if ((flags & 5) == 0)
        {
          [(CBSpatialInteractionSession *)self->_cbSession setControlFlags:[(CBSpatialInteractionSession *)self->_cbSession controlFlags]| 0x400];
        }

        return;
      }
    }

    else if ((flags & 2) == 0)
    {
      goto LABEL_8;
    }

    [(CBSpatialInteractionSession *)self->_cbSession setControlFlags:[(CBSpatialInteractionSession *)self->_cbSession controlFlags]| 0xE0];
    goto LABEL_8;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049A604();
  }

  self->_activationPendingRelationshipSpecifier.var0.__val_ = flags;
  self->_activationPendingRelationshipSpecifier.__engaged_ = 1;
}

- (void)activateWithDelegate:(id)delegate delegateQueue:(id)queue sessionIRK:(id)k sessionIdentifier:(id)identifier controlFlags:(NIBluetoothDiscoveryControlFlags)flags tokenFlags:(unsigned int)tokenFlags
{
  queueCopy = queue;
  kCopy = k;
  identifierCopy = identifier;
  if ((self->_cbSessionState - 1) >= 2)
  {
    objc_storeWeak(&self->_delegate, delegate);
    objc_storeStrong(&self->_clientQueue, queue);
    cbSession = self->_cbSession;
    self->_cbSession = 0;

    [(PRBLEDiscoverySession *)self _configureCBSpatialSession];
    [(CBSpatialInteractionSession *)self->_cbSession setUwbTokenFlags:[(CBSpatialInteractionSession *)self->_cbSession uwbTokenFlags]| tokenFlags];
    [(CBSpatialInteractionSession *)self->_cbSession setClientIrkData:kCopy];
    [(CBSpatialInteractionSession *)self->_cbSession setClientIdentifierData:identifierCopy];
    [(CBSpatialInteractionSession *)self->_cbSession setBleRSSIThresholdHint:4294967206];
    [(CBSpatialInteractionSession *)self->_cbSession setControlFlags:25];
    if (flags.var0)
    {
      [(CBSpatialInteractionSession *)self->_cbSession setControlFlags:[(CBSpatialInteractionSession *)self->_cbSession controlFlags]| 2];
    }

    if ((*&flags & 0x100) != 0)
    {
      [(CBSpatialInteractionSession *)self->_cbSession setControlFlags:[(CBSpatialInteractionSession *)self->_cbSession controlFlags]| 0x800];
      self->_wifiAdvertisingAllowed = 1;
    }

    v19 = qword_1009F9820;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      controlFlags = [(CBSpatialInteractionSession *)self->_cbSession controlFlags];
      LODWORD(buf) = 67109888;
      HIDWORD(buf) = flags.var0;
      v26 = 1024;
      v27 = (*&flags & 0x100) >> 8;
      v28 = 1024;
      tokenFlagsCopy = tokenFlags;
      v30 = 1024;
      v31 = controlFlags;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ble,Activate. Supports UWB: [%d], Supports WiFi ToF: [%d], TokenFlags: [0x%08x]. ControlFlags: [0x%08x]", &buf, 0x1Au);
    }

    [(NSMutableSet *)self->_activationPendingPeers removeAllObjects];
    self->_activationPendingControlFlags = [(CBSpatialInteractionSession *)self->_cbSession controlFlags];
    self->_activationPendingRssiThresholdHint = [(CBSpatialInteractionSession *)self->_cbSession bleRSSIThresholdHint];
    self->_activationPendingScanBurstPeriod = 0.0;
    if (self->_activationPendingRelationshipSpecifier.__engaged_)
    {
      self->_activationPendingRelationshipSpecifier.__engaged_ = 0;
    }

    objc_initWeak(&buf, self);
    self->_cbSessionState = 1;
    v21 = sub_100005288();
    v22 = self->_cbSession;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100026C94;
    v23[3] = &unk_10098AB88;
    v24[1] = *&v21;
    objc_copyWeak(v24, &buf);
    v23[4] = self;
    [(CBSpatialInteractionSession *)v22 activateWithCompletion:v23];
    objc_destroyWeak(v24);
    objc_destroyWeak(&buf);
  }
}

- (void)_executeActivationPendingOperations
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    activationPendingPeers = self->_activationPendingPeers;
    *buf = 138477827;
    v22[0] = activationPendingPeers;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ble,Activation pending operation: add peers %{private}@", buf, 0xCu);
  }

  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    activationPendingControlFlags = self->_activationPendingControlFlags;
    controlFlags = [(CBSpatialInteractionSession *)self->_cbSession controlFlags];
    *buf = 67109376;
    LODWORD(v22[0]) = activationPendingControlFlags;
    WORD2(v22[0]) = 1024;
    *(v22 + 6) = controlFlags;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ble,Activation pending operation: act on control flags 0x%08x (current 0x%08x)", buf, 0xEu);
  }

  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    activationPendingScanBurstPeriod = self->_activationPendingScanBurstPeriod;
    *buf = 134217984;
    *v22 = activationPendingScanBurstPeriod;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ble,Activation pending operation: scan burst period %0.1f s", buf, 0xCu);
  }

  v10 = qword_1009F9820;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    activationPendingRssiThresholdHint = self->_activationPendingRssiThresholdHint;
    bleRSSIThresholdHint = [(CBSpatialInteractionSession *)self->_cbSession bleRSSIThresholdHint];
    *buf = 67109376;
    LODWORD(v22[0]) = activationPendingRssiThresholdHint;
    WORD2(v22[0]) = 1024;
    *(v22 + 6) = bleRSSIThresholdHint;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ble,Activation pending operation: RSSI hint %d dBm (current %d dBm)", buf, 0xEu);
  }

  v13 = qword_1009F9820;
  if (self->_activationPendingRelationshipSpecifier.__engaged_)
  {
    v14 = qword_1009F9820;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (!self->_activationPendingRelationshipSpecifier.__engaged_)
      {
        sub_1000195BC();
      }

      val = self->_activationPendingRelationshipSpecifier.var0.__val_;
      *buf = 67109120;
      LODWORD(v22[0]) = val;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ble,Activation pending operation: relationship specifier 0x%08x", buf, 8u);
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ble,Activation pending operation: no relationship specifier pending", buf, 2u);
  }

  v16 = self->_activationPendingPeers;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100027374;
  v20[3] = &unk_10098ABB0;
  v20[4] = self;
  [(NSMutableSet *)v16 enumerateObjectsUsingBlock:v20];
  [(NSMutableSet *)self->_activationPendingPeers removeAllObjects];
  if (self->_activationPendingRelationshipSpecifier.__engaged_)
  {
    [(PRBLEDiscoverySession *)self setDeviceRelationshipFlags:self->_activationPendingRelationshipSpecifier.var0.__val_];
    if (self->_activationPendingRelationshipSpecifier.__engaged_)
    {
      self->_activationPendingRelationshipSpecifier.__engaged_ = 0;
    }
  }

  if (([(CBSpatialInteractionSession *)self->_cbSession controlFlags]& 0x800) != (self->_activationPendingControlFlags & 0x800))
  {
    if ((self->_activationPendingControlFlags & 0x800) != 0)
    {
      [(PRBLEDiscoverySession *)self setWifiRangingActiveAdvertisement];
    }

    else
    {
      [(PRBLEDiscoverySession *)self clearWifiRangingActiveAdvertisement];
    }
  }

  if ((self->_activationPendingControlFlags & 0x1000) != 0)
  {
    [(PRBLEDiscoverySession *)self allowScreenOffOperation:1];
  }

  bleRSSIThresholdHint2 = [(CBSpatialInteractionSession *)self->_cbSession bleRSSIThresholdHint];
  v18 = self->_activationPendingRssiThresholdHint;
  if (v18 != bleRSSIThresholdHint2)
  {
    [(PRBLEDiscoverySession *)self setBleRSSIThresholdHint:v18];
  }

  v19 = self->_activationPendingControlFlags;
  if ((v19 & 8) == 0)
  {
    [(PRBLEDiscoverySession *)self startAdvertising];
    v19 = self->_activationPendingControlFlags;
  }

  if ((v19 & 0x10) == 0)
  {
    if (self->_activationPendingScanBurstPeriod <= 0.0)
    {
      [(PRBLEDiscoverySession *)self startScanning];
    }

    else
    {
      [(PRBLEDiscoverySession *)self startScanningWithBurstPeriod:?];
    }
  }
}

- (void)stopAndClearState
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ble,stopAndClearState", v4, 2u);
  }

  [(PRBLEDiscoverySession *)self stopScanningAndRemovePeers:1];
  [(PRBLEDiscoverySession *)self stopAdvertising];
  [(PRBluetoothDeviceCache *)self->_deviceCache reset];
}

- (void)invalidate
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ble,Invalidate", v6, 2u);
  }

  self->_cbSessionState = 4;
  [(PRBLEDiscoverySession *)self _cancelScanRateAdjustmentTimer];
  [(CBSpatialInteractionSession *)self->_cbSession invalidate];
  cbSession = self->_cbSession;
  self->_cbSession = 0;

  [(NSMutableSet *)self->_peers removeAllObjects];
  v5 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
  [v5 removePayloadChangeObserver:self];
}

- (id)addPeerDiscoveryToken:(id)token
{
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_clientQueue);
  p_cbSessionState = &self->_cbSessionState;
  cbSessionState = self->_cbSessionState;
  if (cbSessionState > 2)
  {
    if ((cbSessionState - 3) >= 2)
    {
      goto LABEL_15;
    }
  }

  else if (cbSessionState)
  {
    if (cbSessionState == 1)
    {
      v13 = qword_1009F9820;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = CUPrintNSObjectMasked();
        *buf = 138477827;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ble,addPeerToken %{private}@ waiting for activation complete", buf, 0xCu);
      }

      [(NSMutableSet *)self->_activationPendingPeers addObject:tokenCopy];
    }

    else if (cbSessionState == 2)
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = CUPrintNSObjectMasked();
        *buf = 138477827;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ble,addPeerToken %{private}@ started", buf, 0xCu);
      }

      [(NSMutableSet *)self->_peers addObject:tokenCopy];
      objc_initWeak(buf, self);
      v9 = sub_100005288();
      cbSession = self->_cbSession;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000277C0;
      v16[3] = &unk_10098AB88;
      v18[1] = *&v9;
      objc_copyWeak(v18, buf);
      v17 = tokenCopy;
      [(CBSpatialInteractionSession *)cbSession addPeerToken:v17 completion:v16];

      objc_destroyWeak(v18);
      objc_destroyWeak(buf);
    }

    goto LABEL_15;
  }

  v11 = qword_1009F9820;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = CUPrintNSObjectMasked();
    sub_10049A898(v12, p_cbSessionState);
  }

LABEL_15:
  return 0;
}

- (id)removePeerDiscoveryToken:(id)token
{
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_clientQueue);
  cbSessionState = self->_cbSessionState;
  if (cbSessionState > 2)
  {
    if ((cbSessionState - 3) >= 2)
    {
      goto LABEL_20;
    }

LABEL_13:
    v9 = qword_1009F9820;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = CUPrintNSObjectMasked();
      sub_10049A8FC(v12, &self->_cbSessionState);
    }

    goto LABEL_19;
  }

  switch(cbSessionState)
  {
    case 0:
      goto LABEL_13;
    case 1:
      v13 = qword_1009F9820;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = CUPrintNSObjectMasked();
        *buf = 138477827;
        v22 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ble,removePeerToken %{private}@ removing from tokens that are waiting for activation complete", buf, 0xCu);
      }

      [(NSMutableSet *)self->_activationPendingPeers removeObject:tokenCopy];
      break;
    case 2:
      v6 = qword_1009F9820;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = CUPrintNSObjectMasked();
        *buf = 138477827;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ble,removePeerToken %{private}@ started", buf, 0xCu);
      }

      v8 = [(PRBluetoothDeviceCache *)self->_deviceCache deviceForTokenData:tokenCopy];
      v9 = v8;
      if (v8 && [v8 systemKeyRelationship])
      {
        v10 = qword_1009F9820;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = CUPrintNSObjectMasked();
          *buf = 138477827;
          v22 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ble,removePeerToken %{private}@ of device with system key relationship. Exit early", buf, 0xCu);
        }
      }

      else
      {
        [(NSMutableSet *)self->_peers removeObject:tokenCopy];
        objc_initWeak(buf, self);
        v15 = sub_100005288();
        cbSession = self->_cbSession;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100027D0C;
        v18[3] = &unk_10098AB88;
        v20[1] = *&v15;
        objc_copyWeak(v20, buf);
        v19 = tokenCopy;
        [(CBSpatialInteractionSession *)cbSession removePeerToken:v19 completion:v18];

        objc_destroyWeak(v20);
        objc_destroyWeak(buf);
      }

LABEL_19:

      break;
  }

LABEL_20:

  return 0;
}

- (void)startAdvertising
{
  dispatch_assert_queue_V2(self->_clientQueue);
  cbSessionState = self->_cbSessionState;
  if (cbSessionState > 2)
  {
    if ((cbSessionState - 3) > 1)
    {
      return;
    }
  }

  else if (cbSessionState)
  {
    if (cbSessionState == 1)
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ble,startAdvertising waiting for activation complete", &v8, 2u);
      }

      self->_activationPendingControlFlags &= ~8u;
    }

    else if (cbSessionState == 2)
    {
      v4 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
      aggregatedUWBData = [v4 aggregatedUWBData];

      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = aggregatedUWBData;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ble,startAdvertising with UWB config: %@", &v8, 0xCu);
      }

      [(CBSpatialInteractionSession *)self->_cbSession setAdvertiseRate:40];
      [(CBSpatialInteractionSession *)self->_cbSession setUwbConfigData:aggregatedUWBData];
      [(CBSpatialInteractionSession *)self->_cbSession setAdvertiseRate:50 timeout:2.0];
      [(CBSpatialInteractionSession *)self->_cbSession setControlFlags:[(CBSpatialInteractionSession *)self->_cbSession controlFlags]& 0xFFFFFFF7];
    }

    return;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049A960(&self->_cbSessionState);
  }
}

- (void)stopAdvertising
{
  dispatch_assert_queue_V2(self->_clientQueue);
  cbSessionState = self->_cbSessionState;
  if (cbSessionState > 2)
  {
    if ((cbSessionState - 3) > 1)
    {
      return;
    }
  }

  else if (cbSessionState)
  {
    if (cbSessionState == 1)
    {
      v5 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ble,stopAdvertising waiting for activation complete", buf, 2u);
      }

      self->_activationPendingControlFlags |= 8u;
    }

    else if (cbSessionState == 2)
    {
      v4 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ble,stopAdvertising", v6, 2u);
      }

      [(CBSpatialInteractionSession *)self->_cbSession setControlFlags:[(CBSpatialInteractionSession *)self->_cbSession controlFlags]| 8];
    }

    return;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049A9EC(&self->_cbSessionState);
  }
}

- (void)startScanning
{
  dispatch_assert_queue_V2(self->_clientQueue);
  cbSessionState = self->_cbSessionState;
  if (cbSessionState > 2)
  {
    if ((cbSessionState - 3) > 1)
    {
      return;
    }
  }

  else if (cbSessionState)
  {
    if (cbSessionState == 1)
    {
      v5 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ble,startScanning waiting for activation complete", buf, 2u);
      }

      self->_activationPendingControlFlags &= ~0x10u;
      self->_activationPendingScanBurstPeriod = 0.0;
    }

    else if (cbSessionState == 2)
    {
      v4 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ble,startScanning", v6, 2u);
      }

      [(CBSpatialInteractionSession *)self->_cbSession setScanRate:40];
      [(CBSpatialInteractionSession *)self->_cbSession setScanRateScreenOff:30];
      [(CBSpatialInteractionSession *)self->_cbSession setControlFlags:[(CBSpatialInteractionSession *)self->_cbSession controlFlags]& 0xFFFFFFEF];
    }

    return;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049AA78(&self->_cbSessionState);
  }
}

- (void)startAdvertisingBurstForDeviceDiscovery
{
  dispatch_assert_queue_V2(self->_clientQueue);
  cbSessionState = self->_cbSessionState;
  if (cbSessionState <= 4)
  {
    if (cbSessionState == 2)
    {
      if (([(CBSpatialInteractionSession *)self->_cbSession controlFlags]& 8) != 0)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_10049AB04();
        }
      }

      else
      {
        v4 = +[NSUserDefaults standardUserDefaults];
        v5 = [v4 objectForKey:@"DeviceDiscoveryBurstAdvertiseRate"];

        if (v5)
        {
          v6 = [v4 stringForKey:@"DeviceDiscoveryBurstAdvertiseRate"];
          if ([v6 isEqualToString:@"High"])
          {
            v7 = 50;
          }

          else if ([v6 isEqualToString:@"Max"])
          {
            v7 = 60;
          }

          else if ([v6 isEqualToString:@"MediumHigh"])
          {
            v7 = 45;
          }

          else if ([v6 isEqualToString:@"MediumMid"])
          {
            v7 = 42;
          }

          else if ([v6 isEqualToString:@"Medium"])
          {
            v7 = 40;
          }

          else if ([v6 isEqualToString:@"Low"])
          {
            v7 = 30;
          }

          else if ([v6 isEqualToString:@"Background"])
          {
            v7 = 20;
          }

          else
          {
            v7 = 50;
          }

          v8 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
          {
            sub_10049AB40(v6, v8);
          }
        }

        else
        {
          v7 = 50;
        }

        [v4 doubleForKey:@"DeviceDiscoveryBurstLength"];
        v10 = v9;
        v11 = 2.0;
        if (v9 > 0.0)
        {
          v12 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v14 = 134217984;
            *v15 = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ble,Overriding advertising burst length with %f seconds", &v14, 0xCu);
          }

          v11 = v10;
        }

        v13 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 67109376;
          LODWORD(v15[0]) = v7;
          WORD2(v15[0]) = 2048;
          *(v15 + 6) = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ble,startAdvertisingBurstForDeviceDiscovery. Rate: %d. Timeout: %0.1f s.", &v14, 0x12u);
        }

        [(CBSpatialInteractionSession *)self->_cbSession setAdvertiseRate:v7 timeout:v11];
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049ABB8(&self->_cbSessionState);
    }
  }
}

- (void)clearWifiRangingActiveAdvertisement
{
  dispatch_assert_queue_V2(self->_clientQueue);
  cbSessionState = self->_cbSessionState;
  if (cbSessionState > 2)
  {
    if ((cbSessionState - 3) > 1)
    {
      return;
    }
  }

  else if (cbSessionState)
  {
    if (cbSessionState == 1)
    {
      v5 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ble,clearWifiRangingActiveAdvertisement waiting for activation complete", buf, 2u);
      }

      self->_activationPendingControlFlags &= ~0x800u;
    }

    else if (cbSessionState == 2)
    {
      v4 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ble,clearWifiRangingActiveAdvertisement", v6, 2u);
      }

      [(CBSpatialInteractionSession *)self->_cbSession setControlFlags:[(CBSpatialInteractionSession *)self->_cbSession controlFlags]& 0xFFFFF7FF];
    }

    return;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049AC44(&self->_cbSessionState);
  }
}

- (void)setWifiRangingActiveAdvertisement
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (self->_wifiAdvertisingAllowed)
  {
    cbSessionState = self->_cbSessionState;
    if (cbSessionState > 2)
    {
      if ((cbSessionState - 3) > 1)
      {
        return;
      }
    }

    else if (cbSessionState)
    {
      if (cbSessionState == 1)
      {
        v5 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ble,setWifiRangingActiveAdvertisement waiting for activation complete", buf, 2u);
        }

        self->_activationPendingControlFlags |= 0x800u;
      }

      else if (cbSessionState == 2)
      {
        v4 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v6 = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ble,setWifiRangingActiveAdvertisement", v6, 2u);
        }

        [(CBSpatialInteractionSession *)self->_cbSession setControlFlags:[(CBSpatialInteractionSession *)self->_cbSession controlFlags]| 0x800];
      }

      return;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049AD0C(&self->_cbSessionState);
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049ACD0();
  }
}

- (void)startScanningWithBurstPeriod:(double)period
{
  dispatch_assert_queue_V2(self->_clientQueue);
  cbSessionState = self->_cbSessionState;
  if (cbSessionState > 2)
  {
    if ((cbSessionState - 3) > 1)
    {
      return;
    }
  }

  else if (cbSessionState)
  {
    if (cbSessionState == 1)
    {
      v13 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        periodCopy2 = period;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ble,startScanningWithBurstPeriod [%0.1f s] waiting for activation complete", buf, 0xCu);
      }

      self->_activationPendingControlFlags &= ~0x10u;
      self->_activationPendingScanBurstPeriod = period;
    }

    else if (cbSessionState == 2)
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        periodCopy2 = period;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ble,startScanningWithBurstPeriod [%0.1f s]", buf, 0xCu);
      }

      [(CBSpatialInteractionSession *)self->_cbSession setScanRate:40];
      [(CBSpatialInteractionSession *)self->_cbSession setControlFlags:[(CBSpatialInteractionSession *)self->_cbSession controlFlags]& 0xFFFFFFEF];
      [(PRBLEDiscoverySession *)self _cancelScanRateAdjustmentTimer];
      v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_clientQueue);
      p_scanRateAdjustmentTimer = &self->_scanRateAdjustmentTimer;
      scanRateAdjustmentTimer = self->_scanRateAdjustmentTimer;
      self->_scanRateAdjustmentTimer = v7;

      v10 = self->_scanRateAdjustmentTimer;
      v11 = dispatch_time(0, llround(period * 1000000000.0));
      dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
      objc_initWeak(buf, self);
      v12 = self->_scanRateAdjustmentTimer;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100028BB8;
      v14[3] = &unk_10098ABD8;
      objc_copyWeak(v15, buf);
      v15[1] = *&period;
      dispatch_source_set_event_handler(v12, v14);
      dispatch_resume(*p_scanRateAdjustmentTimer);
      objc_destroyWeak(v15);
      objc_destroyWeak(buf);
    }

    return;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049AD98(&self->_cbSessionState);
  }
}

- (void)_cancelScanRateAdjustmentTimer
{
  dispatch_assert_queue_V2(self->_clientQueue);
  scanRateAdjustmentTimer = self->_scanRateAdjustmentTimer;
  if (scanRateAdjustmentTimer)
  {
    dispatch_source_cancel(scanRateAdjustmentTimer);
    v4 = self->_scanRateAdjustmentTimer;
    self->_scanRateAdjustmentTimer = 0;
  }
}

- (optional<unsigned)nonConnectableAdvertisingAddress
{
  if (self->_cbSessionState == 2)
  {
    advertisingAddressData = [(CBSpatialInteractionSession *)self->_cbSession advertisingAddressData];
    v3 = advertisingAddressData;
    if (advertisingAddressData)
    {
      if ([advertisingAddressData length] == 6)
      {
        [v3 getBytes:v10 length:6];
        v4 = v10[5];
        v5 = (v10[4] << 8) | (v10[3] << 16) | (v10[2] << 24) | (v10[1] << 32) | (v10[0] << 40);
        v6 = 1;
LABEL_12:

        v7.__val_ = v5 | v4;
        goto LABEL_13;
      }

      v8 = qword_1009F9820;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10049AED0(v10, [v3 length], v8);
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049AF28();
    }

    v4 = 0;
    v6 = 0;
    v5 = 0;
    goto LABEL_12;
  }

  v6 = 0;
  v7.__val_ = 0;
LABEL_13:
  v9 = v6;
  result.__engaged_ = v9;
  result.var0 = v7;
  return result;
}

- (void)didDiscoverDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_clientQueue);
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ble,Discovered device: %@", &v15, 0xCu);
  }

  if (deviceCopy)
  {
    btAddressData = [deviceCopy btAddressData];
    if (btAddressData && ([deviceCopy btAddressData], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length") == 6, v7, btAddressData, v8))
    {
      v9 = [[PRBluetoothDevice alloc] initWithCBDevice:deviceCopy];
      deviceCache = self->_deviceCache;
      discoveryTokenData = [(PRBluetoothDevice *)v9 discoveryTokenData];
      v12 = [(PRBluetoothDeviceCache *)deviceCache deviceForTokenData:discoveryTokenData];

      [(PRBluetoothDeviceCache *)self->_deviceCache cacheDevice:v9];
      if (self->_cbSessionState == 2)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v14 = WeakRetained;
        if (v12)
        {
          [WeakRetained discoveredDevice:v12 didUpdate:v9];
        }

        else
        {
          [WeakRetained didDiscoverDevice:v9];
        }
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049B09C();
    }
  }
}

- (void)didLoseDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_clientQueue);
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ble,Lost device: %@", &v14, 0xCu);
  }

  if (deviceCopy)
  {
    btAddressData = [deviceCopy btAddressData];
    if (btAddressData && ([deviceCopy btAddressData], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length") == 6, v7, btAddressData, v8))
    {
      btAddressData2 = [deviceCopy btAddressData];
      v10 = sub_1000298A8(btAddressData2);

      v11 = [(PRBluetoothDeviceCache *)self->_deviceCache deviceForIdentifier:v10];
      v12 = v11;
      if (self->_cbSessionState == 2)
      {
        if (!v11)
        {
          v12 = [[PRBluetoothDevice alloc] initWithCBDevice:deviceCopy];
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained didLoseDevice:v12];
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049B0D8();
    }
  }
}

- (void)didFailWithError:(id)error
{
  errorCopy = error;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049B114();
  }
}

- (void)bluetoothStateChanged
{
  dispatch_assert_queue_V2(self->_clientQueue);
  bluetoothState = [(CBSpatialInteractionSession *)self->_cbSession bluetoothState];
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (bluetoothState > 0xA)
    {
      v5 = "?";
    }

    else
    {
      v5 = off_10098AC48[bluetoothState];
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ble,Bluetooth state changed: %s", &v7, 0xCu);
  }

  if (self->_cbSessionState == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained bluetoothDidChangeState:{-[CBSpatialInteractionSession bluetoothState](self->_cbSession, "bluetoothState")}];
  }
}

- (void)bluetoothServiceInterrupted
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (self->_cbSessionState == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained bluetoothServiceInterrupted];
  }
}

- (void)systemOverrideNotification
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (self->_cbSessionState == 2)
  {
    v3 = qword_1009F9820;
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
LABEL_48:

      return;
    }

    systemOverrideFlags = [(CBSpatialInteractionSession *)self->_cbSession systemOverrideFlags];
    systemOverrideFlags2 = [(CBSpatialInteractionSession *)self->_cbSession systemOverrideFlags];
    scanRate = [(CBSpatialInteractionSession *)self->_cbSession scanRate];
    if (scanRate > 34)
    {
      if (scanRate > 49)
      {
        if (scanRate == 50)
        {
          v7 = "High";
          goto LABEL_23;
        }

        if (scanRate == 60)
        {
          v7 = "Max";
          goto LABEL_23;
        }
      }

      else
      {
        if (scanRate == 35)
        {
          v7 = "MediumLow";
          goto LABEL_23;
        }

        if (scanRate == 40)
        {
          v7 = "Medium";
          goto LABEL_23;
        }
      }
    }

    else if (scanRate > 19)
    {
      if (scanRate == 20)
      {
        v7 = "Background";
        goto LABEL_23;
      }

      if (scanRate == 30)
      {
        v7 = "Low";
        goto LABEL_23;
      }
    }

    else
    {
      if (!scanRate)
      {
        v7 = "Default";
        goto LABEL_23;
      }

      if (scanRate == 10)
      {
        v7 = "Periodic";
        goto LABEL_23;
      }
    }

    v7 = "?";
LABEL_23:
    advertiseRate = [(CBSpatialInteractionSession *)self->_cbSession advertiseRate];
    if (advertiseRate > 39)
    {
      if (advertiseRate <= 44)
      {
        if (advertiseRate == 40)
        {
          v9 = "Medium";
          goto LABEL_47;
        }

        if (advertiseRate == 42)
        {
          v9 = "MediumMid";
          goto LABEL_47;
        }
      }

      else
      {
        switch(advertiseRate)
        {
          case '-':
            v9 = "MediumHigh";
            goto LABEL_47;
          case '2':
            v9 = "High";
            goto LABEL_47;
          case '<':
            v9 = "Max";
            goto LABEL_47;
        }
      }
    }

    else if (advertiseRate <= 14)
    {
      if (!advertiseRate)
      {
        v9 = "Default";
        goto LABEL_47;
      }

      if (advertiseRate == 10)
      {
        v9 = "Periodic";
        goto LABEL_47;
      }
    }

    else
    {
      switch(advertiseRate)
      {
        case 15:
          v9 = "PeriodicHigh";
          goto LABEL_47;
        case 20:
          v9 = "Background";
          goto LABEL_47;
        case 30:
          v9 = "Low";
LABEL_47:
          v10[0] = 67109890;
          v10[1] = systemOverrideFlags;
          v11 = 1024;
          v12 = systemOverrideFlags2 & 1;
          v13 = 2080;
          v14 = v7;
          v15 = 2080;
          v16 = v9;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ble,[BLE Discovery] #nicoex System override flags: %x. WiFi critical: %d. Scan rate (%s), advertise rate (%s)", v10, 0x22u);
          goto LABEL_48;
      }
    }

    v9 = "?";
    goto LABEL_47;
  }
}

- (void)bluetoothAdvertisingAddressChanged
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (self->_cbSessionState == 2)
  {
    nonConnectableAdvertisingAddress = [(PRBLEDiscoverySession *)self nonConnectableAdvertisingAddress];
    if (v4)
    {
      v5 = nonConnectableAdvertisingAddress;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained bluetoothAdvertisingAddressChanged:v5];
    }
  }
}

- (void)payloadDidChange
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (self->_cbSessionState == 2)
  {
    v3 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
    aggregatedUWBData = [v3 aggregatedUWBData];

    uwbConfigData = [(CBSpatialInteractionSession *)self->_cbSession uwbConfigData];
    if (uwbConfigData | aggregatedUWBData && (-[CBSpatialInteractionSession uwbConfigData](self->_cbSession, "uwbConfigData"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToData:aggregatedUWBData], v6, uwbConfigData, !v7))
    {
      if (([(CBSpatialInteractionSession *)self->_cbSession controlFlags]& 8) == 0)
      {
        [(CBSpatialInteractionSession *)self->_cbSession setControlFlags:[(CBSpatialInteractionSession *)self->_cbSession controlFlags]| 8];
        [(CBSpatialInteractionSession *)self->_cbSession setUwbConfigData:aggregatedUWBData];
        v12 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = aggregatedUWBData;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ble,Payload did change: %@. Session updated, and control flags toggled for it to take effect", &v14, 0xCu);
        }

        [(CBSpatialInteractionSession *)self->_cbSession setControlFlags:[(CBSpatialInteractionSession *)self->_cbSession controlFlags]& 0xFFFFFFF7];
        goto LABEL_13;
      }

      [(CBSpatialInteractionSession *)self->_cbSession setUwbConfigData:aggregatedUWBData];
      v13 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = aggregatedUWBData;
        v9 = "#ble,Payload did change: %@. Session updated, but not currently advertising";
        v10 = v13;
        v11 = 12;
        goto LABEL_6;
      }
    }

    else
    {
      v8 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        v9 = "#ble,Payload did change called, but no change to apply";
        v10 = v8;
        v11 = 2;
LABEL_6:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
      }
    }

LABEL_13:
  }
}

- (id).cxx_construct
{
  *(self + 80) = 0;
  *(self + 88) = 0;
  return self;
}

@end