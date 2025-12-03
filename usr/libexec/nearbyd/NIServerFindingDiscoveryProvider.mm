@interface NIServerFindingDiscoveryProvider
- (NIServerFindingDiscoveryProvider)initWithIdentifier:(const void *)identifier isFinder:(BOOL)finder enableBluetooth:(BOOL)bluetooth launchOnDemand:(BOOL)demand scanRate:(int)rate discoveryTimeout:(double)timeout consumer:(id)consumer queue:(id)self0;
- (NSDictionary)advertisingPeers;
- (NSDictionary)discoveredPeers;
- (NSSet)peersEligibleForDiscovery;
- (array<unsigned)advertisingAddress;
- (id).cxx_construct;
- (id)_cbAdvertisingAddress;
- (id)_configureNearbyActionNoWakeScannerAndRequestScan:(BOOL)scan;
- (id)_configureSpatialInteractionScannerAndRequestScan:(BOOL)scan;
- (id)_getAdvertisementFromCBDevice:(id)device advertisementType:(int)type;
- (id)_getDiscoveryTokenFromCBDevice:(id)device advertisementType:(int)type;
- (id)_nearbyActionNoWakeOOBKeysFromEligibleDiscoveryPeers;
- (id)printableState;
- (id)processAdvertisement:(id)advertisement receivedOOBFromPeer:(id)peer;
- (id)processLostEventReceivedOOBFromPeer:(id)peer;
- (id)startAdvertisingToPeer:(id)peer advertisement:(id)advertisement timeout:(double)timeout;
- (id)stopAdvertisingToPeer:(id)peer;
- (void)_cbAdvertisingAddressChangedHandler;
- (void)_cbBluetoothStateChangedHandler;
- (void)_cbDeviceFoundHandler:(id)handler;
- (void)_cbErrorHandler:(id)handler;
- (void)_cbInterruptionHandler;
- (void)_configureAdvertisementTimeout:(double)timeout forToken:(id)token;
- (void)_configureDiscoveryTimeout:(double)timeout forToken:(id)token;
- (void)_nearbyActionNoWakeDisableScanDupesIfNecessary;
- (void)_processReceivedAdvertisement:(id)advertisement fromPeer:(id)peer overBluetooth:(BOOL)bluetooth cbDevice:(id)device;
- (void)_resetAdvertisingStateForAllPeers;
- (void)_resetDiscoveryStateForAllPeers;
- (void)_resetDiscoveryStateForPeer:(id)peer;
- (void)_updateLaunchOnDemandScannerAndRequestScan:(BOOL)scan;
- (void)activate;
- (void)invalidate;
@end

@implementation NIServerFindingDiscoveryProvider

- (NIServerFindingDiscoveryProvider)initWithIdentifier:(const void *)identifier isFinder:(BOOL)finder enableBluetooth:(BOOL)bluetooth launchOnDemand:(BOOL)demand scanRate:(int)rate discoveryTimeout:(double)timeout consumer:(id)consumer queue:(id)self0
{
  demandCopy = demand;
  bluetoothCopy = bluetooth;
  finderCopy = finder;
  consumerCopy = consumer;
  queueCopy = queue;
  if (!consumerCopy)
  {
    __assert_rtn("[NIServerFindingDiscoveryProvider initWithIdentifier:isFinder:enableBluetooth:launchOnDemand:scanRate:discoveryTimeout:consumer:queue:]", "NIServerFindingDiscovery.mm", 800, "consumer");
  }

  v19 = qword_1009F9820;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = sub_100009210(finderCopy);
    if (rate > 34)
    {
      if (rate > 49)
      {
        if (rate == 50)
        {
          v21 = "High";
          goto LABEL_23;
        }

        if (rate == 60)
        {
          v21 = "Max";
          goto LABEL_23;
        }
      }

      else
      {
        if (rate == 35)
        {
          v21 = "MediumLow";
          goto LABEL_23;
        }

        if (rate == 40)
        {
          v21 = "Medium";
          goto LABEL_23;
        }
      }
    }

    else if (rate > 19)
    {
      if (rate == 20)
      {
        v21 = "Background";
        goto LABEL_23;
      }

      if (rate == 30)
      {
        v21 = "Low";
        goto LABEL_23;
      }
    }

    else
    {
      if (!rate)
      {
        v21 = "Default";
        goto LABEL_23;
      }

      if (rate == 10)
      {
        v21 = "Periodic";
LABEL_23:
        *buf = 136316162;
        v45 = v20;
        v46 = 1024;
        v47 = bluetoothCopy;
        v48 = 1024;
        v49 = demandCopy;
        v50 = 2080;
        v51 = v21;
        v52 = 2048;
        timeoutCopy = timeout;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#find-disc,[%s] init. Enable BT: %d. Launch on demand: %d. Scan rate: %s. Discovery timeout: %0.1f s", buf, 0x2Cu);
        goto LABEL_24;
      }
    }

    v21 = "?";
    goto LABEL_23;
  }

LABEL_24:

  v43.receiver = self;
  v43.super_class = NIServerFindingDiscoveryProvider;
  v22 = [(NIServerFindingDiscoveryProvider *)&v43 init];
  v23 = v22;
  if (v22)
  {
    std::string::operator=((v22 + 8), identifier);
    v23->_isFinder = finderCopy;
    objc_storeWeak(&v23->_consumer, consumerCopy);
    objc_storeStrong(&v23->_consumerQueue, queue);
    v23->_enableBluetooth = bluetoothCopy;
    v23->_launchOnDemand = demandCopy;
    v23->_scanRate = rate;
    controller = v23->_controller;
    v23->_controller = 0;

    v23->_activatedController = 0;
    addressObserver = v23->_addressObserver;
    v23->_addressObserver = 0;

    v23->_activatedAddressObserver = 0;
    nearbyActionNoWakeScanner = v23->_nearbyActionNoWakeScanner;
    v23->_nearbyActionNoWakeScanner = 0;

    spatialInteractionScanner = v23->_spatialInteractionScanner;
    v23->_spatialInteractionScanner = 0;

    spatialInteractionScannerActivationTimestamp = v23->_spatialInteractionScannerActivationTimestamp;
    v23->_spatialInteractionScannerActivationTimestamp = 0;

    v23->_activatedScanner = 0;
    disableScanDupeConfigTimer = v23->_disableScanDupeConfigTimer;
    v23->_disableScanDupeConfigTimer = 0;

    v30 = objc_opt_new();
    eligibleDiscoveryPeers = v23->_eligibleDiscoveryPeers;
    v23->_eligibleDiscoveryPeers = v30;

    v32 = objc_opt_new();
    discoveredPeers = v23->_discoveredPeers;
    v23->_discoveredPeers = v32;

    v34 = objc_opt_new();
    didDiscoverPeerTimestamps = v23->_didDiscoverPeerTimestamps;
    v23->_didDiscoverPeerTimestamps = v34;

    v36 = objc_opt_new();
    discoveryTimeoutTimers = v23->_discoveryTimeoutTimers;
    v23->_discoveryTimeoutTimers = v36;

    v23->_discoveryTimeoutSeconds = fmax(timeout, 30.0);
    v38 = objc_opt_new();
    advertisingPeers = v23->_advertisingPeers;
    v23->_advertisingPeers = v38;

    v40 = objc_opt_new();
    advertisingTimeoutTimers = v23->_advertisingTimeoutTimers;
    v23->_advertisingTimeoutTimers = v40;
  }

  return v23;
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_consumerQueue);
  objc_initWeak(&location, self);
  if (!self->_controller)
  {
    v3 = objc_opt_new();
    controller = self->_controller;
    self->_controller = v3;

    [(CBController *)self->_controller setDispatchQueue:self->_consumerQueue];
    v5 = [NSString stringWithFormat:@"nearbyd%s", sub_100009210(self->_isFinder)];
    [(CBController *)self->_controller setLabel:v5];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100376D5C;
    v27[3] = &unk_10098AB18;
    objc_copyWeak(&v28, &location);
    [(CBController *)self->_controller setInterruptionHandler:v27];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100376DB8;
    v25[3] = &unk_10098AB40;
    objc_copyWeak(&v26, &location);
    [(CBController *)self->_controller setErrorHandler:v25];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100376E2C;
    v23[3] = &unk_10098AB18;
    objc_copyWeak(&v24, &location);
    [(CBController *)self->_controller setBluetoothStateChangedHandler:v23];
    self->_activatedController = 0;
    v6 = qword_1009F9820;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_100009210(self->_isFinder);
      *buf = 136315138;
      v31 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#find-disc,[%s] activate controller", buf, 0xCu);
    }

    v8 = sub_100005288();
    v9 = self->_controller;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100376E88;
    v21[3] = &unk_10099BB00;
    v22[1] = *&v8;
    objc_copyWeak(v22, &location);
    [(CBController *)v9 activateWithCompletion:v21];
    objc_destroyWeak(v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
  }

  if (!self->_addressObserver)
  {
    v10 = objc_opt_new();
    addressObserver = self->_addressObserver;
    self->_addressObserver = v10;

    [(CBAdvertiser *)self->_addressObserver setDispatchQueue:self->_consumerQueue];
    v12 = [NSString stringWithFormat:@"nearbyd%s", sub_100009210(self->_isFinder)];
    [(CBAdvertiser *)self->_addressObserver setLabel:v12];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10037700C;
    v19[3] = &unk_10098AB18;
    objc_copyWeak(&v20, &location);
    [(CBAdvertiser *)self->_addressObserver setAdvertisingAddressChangedHandler:v19];
    self->_activatedAddressObserver = 0;
    v13 = qword_1009F9820;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_100009210(self->_isFinder);
      *buf = 136315138;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#find-disc,[%s] activate address observer", buf, 0xCu);
    }

    v15 = sub_100005288();
    v16 = self->_addressObserver;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100377068;
    v17[3] = &unk_10099BB00;
    v18[1] = *&v15;
    objc_copyWeak(v18, &location);
    [(CBAdvertiser *)v16 activateWithCompletion:v17];
    objc_destroyWeak(v18);
    objc_destroyWeak(&v20);
  }

  objc_destroyWeak(&location);
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_consumerQueue);
  controller = self->_controller;
  if (controller)
  {
    [(CBController *)controller invalidate];
    v4 = self->_controller;
    self->_controller = 0;
  }

  addressObserver = self->_addressObserver;
  if (addressObserver)
  {
    [(CBAdvertiser *)addressObserver invalidate];
    v6 = self->_addressObserver;
    self->_addressObserver = 0;
  }

  nearbyActionNoWakeScanner = self->_nearbyActionNoWakeScanner;
  if (nearbyActionNoWakeScanner)
  {
    [(CBDiscovery *)nearbyActionNoWakeScanner invalidate];
    v8 = self->_nearbyActionNoWakeScanner;
    self->_nearbyActionNoWakeScanner = 0;
  }

  spatialInteractionScanner = self->_spatialInteractionScanner;
  if (spatialInteractionScanner)
  {
    [(CBSpatialInteractionSession *)spatialInteractionScanner invalidate];
    v10 = self->_spatialInteractionScanner;
    self->_spatialInteractionScanner = 0;

    spatialInteractionScannerActivationTimestamp = self->_spatialInteractionScannerActivationTimestamp;
    self->_spatialInteractionScannerActivationTimestamp = 0;
  }

  self->_activatedController = 0;
  self->_activatedAddressObserver = 0;
  self->_activatedScanner = 0;
  advertisingPeers = self->_advertisingPeers;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100377314;
  v13[3] = &unk_10099ED80;
  v13[4] = self;
  [(NSMutableDictionary *)advertisingPeers enumerateKeysAndObjectsUsingBlock:v13];
  [(NIServerFindingDiscoveryProvider *)self _resetDiscoveryStateForAllPeers];
  [(NIServerFindingDiscoveryProvider *)self _resetAdvertisingStateForAllPeers];
  [(NSMutableSet *)self->_eligibleDiscoveryPeers removeAllObjects];
  [(NIServerFindingDiscoveryProvider *)self _updateLaunchOnDemandScannerAndRequestScan:0];
}

- (id)startAdvertisingToPeer:(id)peer advertisement:(id)advertisement timeout:(double)timeout
{
  peerCopy = peer;
  advertisementCopy = advertisement;
  v10 = qword_1009F9820;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_100009210(self->_isFinder);
    descriptionInternal = [peerCopy descriptionInternal];
    *buf = 136315907;
    v27 = v11;
    v28 = 2113;
    v29 = descriptionInternal;
    v30 = 2048;
    timeoutCopy = timeout;
    v32 = 2113;
    v33 = advertisementCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#find-disc,[%s] startAdvertisingToPeer: %{private}@. Timeout: %0.1f s. Advertisement: %{private}@", buf, 0x2Au);
  }

  dispatch_assert_queue_V2(self->_consumerQueue);
  if (!peerCopy)
  {
    v21 = "token";
    v22 = 1063;
    goto LABEL_21;
  }

  if (!advertisementCopy)
  {
    v21 = "advertisement";
    v22 = 1064;
LABEL_21:
    __assert_rtn("[NIServerFindingDiscoveryProvider startAdvertisingToPeer:advertisement:timeout:]", "NIServerFindingDiscovery.mm", v22, v21);
  }

  if (self->_enableBluetooth)
  {
    v13 = +[_FindingAdvertiser sharedInstance];
    v14 = [v13 startAdvertisingAsFinder:self->_isFinder toPeer:peerCopy withAdvertisement:advertisementCopy];

    if (v14)
    {
      v15 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C5484(v14, v15);
      }

      goto LABEL_16;
    }
  }

  else
  {
    v16 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#find-disc,BT not enabled. Skipping configuring advertiser.", buf, 2u);
    }
  }

  if (timeout > 0.0)
  {
    [(NIServerFindingDiscoveryProvider *)self _configureAdvertisementTimeout:peerCopy forToken:timeout];
  }

  v17 = [(NSMutableDictionary *)self->_advertisingPeers objectForKey:peerCopy];
  v18 = [advertisementCopy isEqual:v17];

  if ((v18 & 1) == 0)
  {
    consumerQueue = self->_consumerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100377BD0;
    block[3] = &unk_10099BB28;
    block[4] = self;
    v24 = advertisementCopy;
    v25 = peerCopy;
    dispatch_async(consumerQueue, block);
  }

  [(NSMutableDictionary *)self->_advertisingPeers setObject:advertisementCopy forKey:peerCopy];
  v14 = 0;
LABEL_16:

  return v14;
}

- (id)stopAdvertisingToPeer:(id)peer
{
  peerCopy = peer;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100009210(self->_isFinder);
    v15 = 136315395;
    v16 = v6;
    v17 = 2113;
    v18 = peerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-disc,[%s] stopAdvertisingToPeer: %{private}@", &v15, 0x16u);
  }

  dispatch_assert_queue_V2(self->_consumerQueue);
  if (!peerCopy)
  {
    __assert_rtn("[NIServerFindingDiscoveryProvider stopAdvertisingToPeer:]", "NIServerFindingDiscovery.mm", 1101, "token");
  }

  v7 = +[_FindingAdvertiser sharedInstance];
  v8 = [v7 stopAdvertisingAsFinder:self->_isFinder toPeer:peerCopy];

  if (v8)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C54FC(v8, v9);
    }

    v10 = v8;
  }

  else
  {
    v11 = [(NSMutableDictionary *)self->_advertisingTimeoutTimers objectForKey:peerCopy];
    v12 = v11 == 0;

    if (!v12)
    {
      v13 = [(NSMutableDictionary *)self->_advertisingTimeoutTimers objectForKey:peerCopy];
      dispatch_source_cancel(v13);

      [(NSMutableDictionary *)self->_advertisingTimeoutTimers removeObjectForKey:peerCopy];
    }

    [(NSMutableDictionary *)self->_advertisingPeers removeObjectForKey:peerCopy];
  }

  return v8;
}

- (NSSet)peersEligibleForDiscovery
{
  dispatch_assert_queue_V2(self->_consumerQueue);
  eligibleDiscoveryPeers = self->_eligibleDiscoveryPeers;

  return eligibleDiscoveryPeers;
}

- (NSDictionary)discoveredPeers
{
  dispatch_assert_queue_V2(self->_consumerQueue);
  discoveredPeers = self->_discoveredPeers;

  return discoveredPeers;
}

- (NSDictionary)advertisingPeers
{
  dispatch_assert_queue_V2(self->_consumerQueue);
  advertisingPeers = self->_advertisingPeers;

  return advertisingPeers;
}

- (array<unsigned)advertisingAddress
{
  dispatch_assert_queue_V2(self->_consumerQueue);
  _cbAdvertisingAddress = [(NIServerFindingDiscoveryProvider *)self _cbAdvertisingAddress];
  v4 = [NIServerFindingAdvertisement convertCBAddressToRoseAddress:_cbAdvertisingAddress];

  return v4;
}

- (id)processAdvertisement:(id)advertisement receivedOOBFromPeer:(id)peer
{
  advertisementCopy = advertisement;
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_consumerQueue);
  if (qword_1009F7510 != -1)
  {
    sub_1004C5574();
  }

  v8 = byte_1009F7518;
  v9 = qword_1009F9820;
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 == 1)
  {
    if (v10)
    {
      v11 = sub_100009210(self->_isFinder);
      v15 = 136315651;
      v16 = v11;
      v17 = 2113;
      v18 = peerCopy;
      v19 = 2113;
      v20 = advertisementCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#find-disc,[%s] IGNORING processAdvertisementReceivedOOB (disabled in defaults). Peer: %{private}@. Adv: %{private}@", &v15, 0x20u);
    }
  }

  else
  {
    if (v10)
    {
      v12 = sub_100009210(self->_isFinder);
      descriptionInternal = [peerCopy descriptionInternal];
      v15 = 136315651;
      v16 = v12;
      v17 = 2113;
      v18 = descriptionInternal;
      v19 = 2113;
      v20 = advertisementCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#find-disc,[%s] processAdvertisementReceivedOOB. Peer: %{private}@. Adv: %{private}@", &v15, 0x20u);
    }

    [(NIServerFindingDiscoveryProvider *)self _processReceivedAdvertisement:advertisementCopy fromPeer:peerCopy overBluetooth:0 cbDevice:0];
  }

  return 0;
}

- (id)processLostEventReceivedOOBFromPeer:(id)peer
{
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_consumerQueue);
  if (qword_1009F7510 != -1)
  {
    sub_1004C5574();
  }

  v5 = byte_1009F7518;
  v6 = qword_1009F9820;
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (v7)
    {
      v8 = sub_100009210(self->_isFinder);
      *buf = 136315395;
      v16 = v8;
      v17 = 2113;
      v18 = peerCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#find-disc,[%s] IGNORING processLostEventReceivedOOB (disabled in defaults). Peer: %{private}@", buf, 0x16u);
    }
  }

  else
  {
    if (v7)
    {
      v9 = sub_100009210(self->_isFinder);
      *buf = 136315395;
      v16 = v9;
      v17 = 2113;
      v18 = peerCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#find-disc,[%s] processLostEventReceivedOOB. Peer: %{private}@", buf, 0x16u);
    }

    v10 = [(NSMutableDictionary *)self->_discoveredPeers objectForKey:peerCopy];

    [(NIServerFindingDiscoveryProvider *)self _resetDiscoveryStateForPeer:peerCopy];
    if (v10)
    {
      consumerQueue = self->_consumerQueue;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100378354;
      v13[3] = &unk_10098A2E8;
      v13[4] = self;
      v14 = peerCopy;
      dispatch_async(consumerQueue, v13);
    }
  }

  return 0;
}

- (id)printableState
{
  dispatch_assert_queue_V2(self->_consumerQueue);
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_1003735D8;
  v79 = sub_1003735E8;
  v80 = objc_opt_new();
  v3 = v76[5];
  v4 = sub_100009210(self->_isFinder);
  scanRate = self->_scanRate;
  if (scanRate > 34)
  {
    if (scanRate > 49)
    {
      if (scanRate == 50)
      {
        v6 = "High";
        goto LABEL_21;
      }

      if (scanRate == 60)
      {
        v6 = "Max";
        goto LABEL_21;
      }
    }

    else
    {
      if (scanRate == 35)
      {
        v6 = "MediumLow";
        goto LABEL_21;
      }

      if (scanRate == 40)
      {
        v6 = "Medium";
        goto LABEL_21;
      }
    }

LABEL_20:
    v6 = "?";
    goto LABEL_21;
  }

  if (scanRate > 19)
  {
    if (scanRate == 20)
    {
      v6 = "Background";
      goto LABEL_21;
    }

    if (scanRate == 30)
    {
      v6 = "Low";
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!scanRate)
  {
    v6 = "Default";
    goto LABEL_21;
  }

  if (scanRate != 10)
  {
    goto LABEL_20;
  }

  v6 = "Periodic";
LABEL_21:
  v7 = [NSString stringWithFormat:@"Discovery provider (%s). EnableBT: %d. LaunchOnDemand: %d. ScanRate: %s. DiscTimeout: %0.1f s", v4, self->_enableBluetooth, self->_launchOnDemand, v6, *&self->_discoveryTimeoutSeconds];
  [v3 addObject:v7];

  controller = self->_controller;
  activatedController = self->_activatedController;
  if (controller && activatedController)
  {
    v10 = v76[5];
    bluetoothState = [(CBController *)controller bluetoothState];
    if (bluetoothState > 0xA)
    {
      v12 = "?";
    }

    else
    {
      v12 = off_1009A8568[bluetoothState];
    }

    activatedController = [NSString stringWithFormat:@"    BT state: %s", v12];
    [v10 addObject:activatedController];
  }

  else
  {
    v13 = v76[5];
    activatedController = [NSString stringWithFormat:@"    BT state unknown. Controller: %d. Activated: %d", controller != 0, activatedController];
    [v13 addObject:activatedController];
  }

  addressObserver = self->_addressObserver;
  activatedAddressObserver = self->_activatedAddressObserver;
  if (addressObserver && activatedAddressObserver)
  {
    v17 = v76[5];
    advertisingAddressDataNonConnectable = [(CBAdvertiser *)addressObserver advertisingAddressDataNonConnectable];
    v19 = CUPrintNSDataAddress();
    advertisingAddressDataConnectable = [(CBAdvertiser *)self->_addressObserver advertisingAddressDataConnectable];
    v21 = CUPrintNSDataAddress();
    v22 = [NSString stringWithFormat:@"    Addresses: NCA %@, CA %@.", v19, v21];
    [v17 addObject:v22];
  }

  else
  {
    v23 = v76[5];
    advertisingAddressDataNonConnectable = [NSString stringWithFormat:@"    Address unknown. Observer: %d. Activated: %d", addressObserver != 0, activatedAddressObserver];
    [v23 addObject:advertisingAddressDataNonConnectable];
  }

  nearbyActionNoWakeScanner = self->_nearbyActionNoWakeScanner;
  if (nearbyActionNoWakeScanner)
  {
    v25 = v76[5];
    if (self->_activatedScanner)
    {
      bleScanRate = [(CBDiscovery *)nearbyActionNoWakeScanner bleScanRate];
      if (bleScanRate > 34)
      {
        if (bleScanRate > 49)
        {
          if (bleScanRate == 50)
          {
            v27 = "High";
            goto LABEL_62;
          }

          if (bleScanRate == 60)
          {
            v27 = "Max";
            goto LABEL_62;
          }
        }

        else
        {
          if (bleScanRate == 35)
          {
            v27 = "MediumLow";
            goto LABEL_62;
          }

          if (bleScanRate == 40)
          {
            v27 = "Medium";
            goto LABEL_62;
          }
        }
      }

      else if (bleScanRate > 19)
      {
        if (bleScanRate == 20)
        {
          v27 = "Background";
          goto LABEL_62;
        }

        if (bleScanRate == 30)
        {
          v27 = "Low";
          goto LABEL_62;
        }
      }

      else
      {
        if (!bleScanRate)
        {
          v27 = "Default";
          goto LABEL_62;
        }

        if (bleScanRate == 10)
        {
          v27 = "Periodic";
LABEL_62:
          oobKeys = [(CBDiscovery *)self->_nearbyActionNoWakeScanner oobKeys];
          v32 = [oobKeys count];
          if (self->_disableScanDupeConfigTimer)
          {
            v33 = "Y";
          }

          else
          {
            v33 = "N";
          }

          v34 = [NSString stringWithFormat:@"    T26 scan rate: %s. OOB keys: %d. Disabling scan dupes pending: %s", v27, v32, v33];
          [v25 addObject:v34];

          goto LABEL_66;
        }
      }

      v27 = "?";
      goto LABEL_62;
    }

    if (self->_disableScanDupeConfigTimer)
    {
      v31 = "Y";
    }

    else
    {
      v31 = "N";
    }

    oobKeys = [NSString stringWithFormat:@"    T26 scanner still activating. Disabling scan dupes pending: %s", v31];
    [v25 addObject:oobKeys];
  }

  else
  {
    v28 = v76[5];
    if (self->_disableScanDupeConfigTimer)
    {
      v29 = "Y";
    }

    else
    {
      v29 = "N";
    }

    oobKeys = [NSString stringWithFormat:@"    T26 scanner nil. Disabling scan dupes pending: %s", v29];
    [v28 addObject:oobKeys];
  }

LABEL_66:

  if (!self->_spatialInteractionScanner)
  {
    v35 = v76[5];
    v41 = @"    T19 scanner nil";
LABEL_75:
    [v35 addObject:v41];
    goto LABEL_92;
  }

  v35 = v76[5];
  if (!self->_activatedScanner)
  {
    v41 = @"    T19 scanner still activating";
    goto LABEL_75;
  }

  v36 = sub_1003465F0(self->_spatialInteractionScannerActivationTimestamp);
  v37 = [NSString stringWithFormat:@"    T19 scanner activation time: %@", v36];
  [v35 addObject:v37];

  v38 = v76[5];
  scanRate = [(CBSpatialInteractionSession *)self->_spatialInteractionScanner scanRate];
  if (scanRate > 34)
  {
    if (scanRate > 49)
    {
      if (scanRate == 50)
      {
        v40 = "High";
        goto LABEL_91;
      }

      if (scanRate == 60)
      {
        v40 = "Max";
        goto LABEL_91;
      }
    }

    else
    {
      if (scanRate == 35)
      {
        v40 = "MediumLow";
        goto LABEL_91;
      }

      if (scanRate == 40)
      {
        v40 = "Medium";
        goto LABEL_91;
      }
    }

LABEL_90:
    v40 = "?";
    goto LABEL_91;
  }

  if (scanRate > 19)
  {
    if (scanRate == 20)
    {
      v40 = "Background";
      goto LABEL_91;
    }

    if (scanRate == 30)
    {
      v40 = "Low";
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  if (!scanRate)
  {
    v40 = "Default";
    goto LABEL_91;
  }

  if (scanRate != 10)
  {
    goto LABEL_90;
  }

  v40 = "Periodic";
LABEL_91:
  v42 = [NSString stringWithFormat:@"    T19 scan rate: %s", v40];
  [v38 addObject:v42];

LABEL_92:
  v43 = v76[5];
  v44 = [NSString stringWithFormat:@"    Eligible discovery peers (%d)", [(NSMutableSet *)self->_eligibleDiscoveryPeers count]];
  [v43 addObject:v44];

  v45 = v76[5];
  allObjects = [(NSMutableSet *)self->_eligibleDiscoveryPeers allObjects];
  v47 = sub_100346A18(allObjects, 10, 2);
  [v45 addObjectsFromArray:v47];

  v48 = v76[5];
  v49 = [NSString stringWithFormat:@"    Discovered peers (%d)", [(NSMutableDictionary *)self->_discoveredPeers count]];
  [v48 addObject:v49];

  discoveredPeers = self->_discoveredPeers;
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_100378EF8;
  v74[3] = &unk_1009A8458;
  v74[4] = &v75;
  [(NSMutableDictionary *)discoveredPeers enumerateKeysAndObjectsUsingBlock:v74];
  v51 = v76[5];
  v52 = [NSString stringWithFormat:@"    Timestamps for didDiscoverPeer (%d)", [(NSMutableDictionary *)self->_didDiscoverPeerTimestamps count]];
  [v51 addObject:v52];

  didDiscoverPeerTimestamps = self->_didDiscoverPeerTimestamps;
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_100378FCC;
  v73[3] = &unk_1009A8480;
  v73[4] = &v75;
  [(NSMutableDictionary *)didDiscoverPeerTimestamps enumerateKeysAndObjectsUsingBlock:v73];
  v54 = v76[5];
  v55 = [NSString stringWithFormat:@"    Discovery timeout timers (%d)", [(NSMutableDictionary *)self->_discoveryTimeoutTimers count]];
  [v54 addObject:v55];

  v56 = v76[5];
  allKeys = [(NSMutableDictionary *)self->_discoveryTimeoutTimers allKeys];
  v58 = sub_100346A18(allKeys, 10, 2);
  [v56 addObjectsFromArray:v58];

  v59 = v76[5];
  v60 = [NSString stringWithFormat:@"    Advertising peers (%d)", [(NSMutableDictionary *)self->_advertisingPeers count]];
  [v59 addObject:v60];

  advertisingPeers = self->_advertisingPeers;
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_1003790BC;
  v72[3] = &unk_1009A8458;
  v72[4] = &v75;
  [(NSMutableDictionary *)advertisingPeers enumerateKeysAndObjectsUsingBlock:v72];
  v62 = v76[5];
  v63 = [NSString stringWithFormat:@"    Advertising timeout timers (%d)", [(NSMutableDictionary *)self->_advertisingTimeoutTimers count]];
  [v62 addObject:v63];

  v64 = v76[5];
  allKeys2 = [(NSMutableDictionary *)self->_advertisingTimeoutTimers allKeys];
  v66 = sub_100346A18(allKeys2, 10, 2);
  [v64 addObjectsFromArray:v66];

  v67 = v76[5];
  v68 = +[_FindingAdvertiser sharedInstance];
  printableState = [v68 printableState];
  [v67 addObjectsFromArray:printableState];

  v70 = v76[5];
  _Block_object_dispose(&v75, 8);

  return v70;
}

- (void)_resetDiscoveryStateForPeer:(id)peer
{
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_consumerQueue);
  [(NSMutableDictionary *)self->_discoveredPeers removeObjectForKey:peerCopy];
  [(NSMutableDictionary *)self->_didDiscoverPeerTimestamps removeObjectForKey:peerCopy];
  v4 = [(NSMutableDictionary *)self->_discoveryTimeoutTimers objectForKey:peerCopy];

  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_discoveryTimeoutTimers objectForKey:peerCopy];
    dispatch_source_cancel(v5);
  }

  [(NSMutableDictionary *)self->_discoveryTimeoutTimers removeObjectForKey:peerCopy];
  if (![(NSMutableDictionary *)self->_discoveredPeers count]&& sub_1000086B0(!self->_isFinder) == 26)
  {
    [(NIServerFindingDiscoveryProvider *)self _nearbyActionNoWakeDisableScanDupesIfNecessary];
  }
}

- (void)_resetDiscoveryStateForAllPeers
{
  dispatch_assert_queue_V2(self->_consumerQueue);
  [(NSMutableDictionary *)self->_discoveredPeers removeAllObjects];
  [(NSMutableDictionary *)self->_didDiscoverPeerTimestamps removeAllObjects];
  [(NSMutableDictionary *)self->_discoveryTimeoutTimers enumerateKeysAndObjectsUsingBlock:&stru_1009A84C0];
  discoveryTimeoutTimers = self->_discoveryTimeoutTimers;

  [(NSMutableDictionary *)discoveryTimeoutTimers removeAllObjects];
}

- (void)_resetAdvertisingStateForAllPeers
{
  dispatch_assert_queue_V2(self->_consumerQueue);
  [(NSMutableDictionary *)self->_advertisingPeers removeAllObjects];
  [(NSMutableDictionary *)self->_advertisingTimeoutTimers enumerateKeysAndObjectsUsingBlock:&stru_1009A84E0];
  advertisingTimeoutTimers = self->_advertisingTimeoutTimers;

  [(NSMutableDictionary *)advertisingTimeoutTimers removeAllObjects];
}

- (void)_processReceivedAdvertisement:(id)advertisement fromPeer:(id)peer overBluetooth:(BOOL)bluetooth cbDevice:(id)device
{
  bluetoothCopy = bluetooth;
  advertisementCopy = advertisement;
  peerCopy = peer;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_consumerQueue);
  v12 = [(NSMutableDictionary *)self->_discoveredPeers objectForKey:peerCopy];
  v41 = v12;
  v13 = [(NSMutableDictionary *)self->_didDiscoverPeerTimestamps objectForKey:peerCopy];
  v14 = +[NSDate now];
  v42 = v14;
  if (v12)
  {
    v15 = [advertisementCopy isEqual:v12] ^ 1;
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_13:
    v17 = 1;
    goto LABEL_14;
  }

  v15 = 1;
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_3:
  [v14 timeIntervalSinceDate:v13];
  v17 = v16 >= 5.0;
  if (v16 >= 5.0)
  {
    v18 = 1;
  }

  else
  {
    v18 = v15;
  }

  if (v18 != 1)
  {
    v19 = qword_1009F9820;
    v20 = v12;
    v21 = v13;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v22 = sub_100009210(self->_isFinder);
      descriptionInternal = [peerCopy descriptionInternal];
      v24 = descriptionInternal;
      v25 = "OOB";
      *buf = 136315907;
      v49 = v22;
      v50 = 2080;
      if (bluetoothCopy)
      {
        v25 = "BT";
      }

      v51 = v25;
      v52 = 2113;
      v53 = descriptionInternal;
      v54 = 2113;
      *v55 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "#find-disc,[%s] Found device (%s) for token %{private}@, but ignoring. Device: %{private}@", buf, 0x2Au);
    }

LABEL_38:

    goto LABEL_39;
  }

LABEL_14:
  v26 = qword_1009F9820;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v40 = advertisementCopy;
    v27 = sub_100009210(self->_isFinder);
    descriptionInternal2 = [peerCopy descriptionInternal];
    v29 = descriptionInternal2;
    v30 = "OOB";
    *buf = 136316419;
    v49 = v27;
    v50 = 2080;
    if (bluetoothCopy)
    {
      v30 = "BT";
    }

    v51 = v30;
    v52 = 2113;
    v53 = descriptionInternal2;
    v54 = 1024;
    *v55 = v15;
    *&v55[4] = 1024;
    *&v55[6] = v17;
    v56 = 2113;
    v57 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#find-disc,[%s] Found device (%s) for token %{private}@. IsNew: %d. BeenTooLong: %d. Device: %{private}@", buf, 0x36u);

    advertisementCopy = v40;
  }

  v20 = v41;
  if (bluetoothCopy && sub_1000086B0([advertisementCopy isFinder]) == 19)
  {
    v19 = +[NSDate now];
    [v19 timeIntervalSinceDate:self->_spatialInteractionScannerActivationTimestamp];
    v32 = v31;
    if (v31 < 0.1)
    {
      v21 = v13;
      v39 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v49 = *&v32;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#find-disc,DO NOT PROCESS: Stale advertisment thats a cached dupe from previously configured scanner (delivery time from when scanner was configured = %f)", buf, 0xCu);
      }

      goto LABEL_38;
    }
  }

  if ([(NSMutableSet *)self->_eligibleDiscoveryPeers containsObject:peerCopy])
  {
    [(NSMutableDictionary *)self->_discoveredPeers setObject:advertisementCopy forKey:peerCopy];
    [(NSMutableDictionary *)self->_didDiscoverPeerTimestamps setObject:v42 forKey:peerCopy];
    [(NIServerFindingDiscoveryProvider *)self _configureDiscoveryTimeout:peerCopy forToken:self->_discoveryTimeoutSeconds];
    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    v34 = WeakRetained;
    v21 = v13;
    if (bluetoothCopy)
    {
      [WeakRetained didDiscoverPeer:peerCopy advertisement:advertisementCopy overBluetooth:1];
    }

    else
    {
      consumerQueue = self->_consumerQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100379914;
      block[3] = &unk_10099BB28;
      v45 = WeakRetained;
      v46 = peerCopy;
      v47 = advertisementCopy;
      dispatch_async(consumerQueue, block);
    }

    if (sub_1000086B0(!self->_isFinder) == 26)
    {
      if (([(CBDiscovery *)self->_nearbyActionNoWakeScanner discoveryFlags]& 0x200100000) == 0)
      {
        v36 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#find-disc,NearbyActionNoWake: enabling scan dupes", buf, 2u);
        }

        [(CBDiscovery *)self->_nearbyActionNoWakeScanner setDiscoveryFlags:[(CBDiscovery *)self->_nearbyActionNoWakeScanner discoveryFlags]| 0x200100000];
      }

      disableScanDupeConfigTimer = self->_disableScanDupeConfigTimer;
      if (disableScanDupeConfigTimer)
      {
        dispatch_source_cancel(disableScanDupeConfigTimer);
        v38 = self->_disableScanDupeConfigTimer;
        self->_disableScanDupeConfigTimer = 0;
      }
    }
  }

  else
  {
    v21 = v13;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C5588();
    }
  }

LABEL_39:
}

- (void)_cbDeviceFoundHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_consumerQueue);
  if (!handlerCopy)
  {
    __assert_rtn("[NIServerFindingDiscoveryProvider _cbDeviceFoundHandler:]", "NIServerFindingDiscovery.mm", 1411, "device");
  }

  if ((self->_nearbyActionNoWakeScanner || self->_spatialInteractionScanner) && self->_activatedScanner)
  {
    v5 = sub_1000086B0(!self->_isFinder);
    v6 = [(NIServerFindingDiscoveryProvider *)self _getDiscoveryTokenFromCBDevice:handlerCopy advertisementType:v5];
    if (v6)
    {
      v7 = [(NIServerFindingDiscoveryProvider *)self _getAdvertisementFromCBDevice:handlerCopy advertisementType:v5];
      if (v7)
      {
        [(NIServerFindingDiscoveryProvider *)self _processReceivedAdvertisement:v7 fromPeer:v6 overBluetooth:1 cbDevice:handlerCopy];
      }

      else
      {
        v9 = qword_1009F9820;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = sub_100009210(self->_isFinder);
          sub_1004C55BC(v10, handlerCopy, &v11, v9);
        }
      }
    }

    else
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = sub_100009210(self->_isFinder);
        v11 = 136315395;
        v12 = v8;
        v13 = 2113;
        v14 = handlerCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#find-disc,[%s] Found device (BT) but cannot resolve discovery token. Device: %{private}@", &v11, 0x16u);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C5614();
  }
}

- (void)_cbAdvertisingAddressChangedHandler
{
  dispatch_assert_queue_V2(self->_consumerQueue);
  if (self->_addressObserver && self->_activatedAddressObserver)
  {
    _cbAdvertisingAddress = [(NIServerFindingDiscoveryProvider *)self _cbAdvertisingAddress];
    v4 = [NIServerFindingAdvertisement convertCBAddressToRoseAddress:_cbAdvertisingAddress];
    v5 = qword_1009F9820;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_100009210(self->_isFinder);
      v7 = CUPrintNSDataAddress();
      *buf = 136315395;
      v21 = v6;
      v22 = 2113;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-disc,[%s] BT address changed: %{private}@", buf, 0x16u);
    }

    allKeys = [(NSMutableDictionary *)self->_advertisingPeers allKeys];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100379E84;
    v17[3] = &unk_1009A8508;
    v17[4] = self;
    v18 = v4;
    v19 = WORD2(v4);
    [allKeys enumerateObjectsUsingBlock:v17];
    if (self->_enableBluetooth)
    {
      advertisingPeers = self->_advertisingPeers;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100379F4C;
      v16[3] = &unk_10099ED80;
      v16[4] = self;
      [(NSMutableDictionary *)advertisingPeers enumerateKeysAndObjectsUsingBlock:v16];
    }

    else
    {
      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#find-disc,BT not enabled. Skipping updating advertiser on address change.", buf, 2u);
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    v12 = self->_advertisingPeers;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10037A000;
    v14[3] = &unk_10099ED80;
    v15 = WeakRetained;
    v13 = WeakRetained;
    [(NSMutableDictionary *)v12 enumerateKeysAndObjectsUsingBlock:v14];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C5648();
  }
}

- (id)_cbAdvertisingAddress
{
  dispatch_assert_queue_V2(self->_consumerQueue);
  v12 = 0;
  v11 = 0;
  v3 = [NSData dataWithBytes:&v11 length:6];
  v4 = v3;
  if (!self->_addressObserver || !self->_activatedAddressObserver)
  {
    v7 = v3;
    goto LABEL_14;
  }

  v5 = sub_1000086B0(self->_isFinder);
  if (v5 == 19)
  {
    advertisingAddressDataNonConnectable = [(CBAdvertiser *)self->_addressObserver advertisingAddressDataNonConnectable];
  }

  else
  {
    if (v5 != 26)
    {
      v8 = 0;
LABEL_12:
      v9 = v4;
      goto LABEL_13;
    }

    advertisingAddressDataNonConnectable = [(CBAdvertiser *)self->_addressObserver advertisingAddressDataConnectable];
  }

  v8 = advertisingAddressDataNonConnectable;
  if (!advertisingAddressDataNonConnectable || [advertisingAddressDataNonConnectable length] <= 5)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v8 = v9;
LABEL_13:
  v7 = v9;

LABEL_14:

  return v7;
}

- (void)_cbBluetoothStateChangedHandler
{
  dispatch_assert_queue_V2(self->_consumerQueue);
  controller = self->_controller;
  if (controller && self->_activatedController)
  {
    bluetoothState = [(CBController *)controller bluetoothState];
    v5 = qword_1009F9820;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_100009210(self->_isFinder);
      if (bluetoothState > 0xA)
      {
        v7 = "?";
      }

      else
      {
        v7 = off_1009A8568[bluetoothState];
      }

      v11 = 136315394;
      v12 = v6;
      v13 = 2080;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-disc,[%s] BT state changed: %s", &v11, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    v9 = WeakRetained;
    if (bluetoothState > 3)
    {
      if (bluetoothState == 5)
      {
        [WeakRetained bluetoothDiscoveryBecameAvailable];
        goto LABEL_20;
      }

      if (bluetoothState != 4)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ((bluetoothState - 2) < 2)
      {
        v10 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
        {
          sub_1004C567C(bluetoothState, v10);
        }

        goto LABEL_20;
      }

      if (bluetoothState != 1)
      {
LABEL_20:

        return;
      }
    }

    [WeakRetained bluetoothDiscoveryBecameUnavailable];
    goto LABEL_20;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C5708();
  }
}

- (void)_cbInterruptionHandler
{
  dispatch_assert_queue_V2(self->_consumerQueue);
  if (self->_controller && self->_activatedController)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_100009210(self->_isFinder);
      v6 = 136315138;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-disc,[%s] BT interrupted", &v6, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    [WeakRetained bluetoothDiscoveryBecameUnavailable];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C573C();
  }
}

- (void)_cbErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = sub_100009210(self->_isFinder);
    sub_1004C5770(v6, handlerCopy, v7, v5);
  }
}

- (id)_nearbyActionNoWakeOOBKeysFromEligibleDiscoveryPeers
{
  v3 = objc_opt_new();
  eligibleDiscoveryPeers = self->_eligibleDiscoveryPeers;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10037A5A4;
  v7[3] = &unk_10099EEB0;
  v5 = v3;
  v8 = v5;
  [(NSMutableSet *)eligibleDiscoveryPeers enumerateObjectsUsingBlock:v7];

  return v5;
}

- (void)_nearbyActionNoWakeDisableScanDupesIfNecessary
{
  dispatch_assert_queue_V2(self->_consumerQueue);
  disableScanDupeConfigTimer = self->_disableScanDupeConfigTimer;
  if (disableScanDupeConfigTimer)
  {
    dispatch_source_cancel(disableScanDupeConfigTimer);
    v4 = self->_disableScanDupeConfigTimer;
    self->_disableScanDupeConfigTimer = 0;
  }

  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_consumerQueue);
  v6 = self->_disableScanDupeConfigTimer;
  self->_disableScanDupeConfigTimer = v5;

  v7 = self->_disableScanDupeConfigTimer;
  v8 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  objc_initWeak(&location, self);
  v9 = self->_disableScanDupeConfigTimer;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10037A7B0;
  v10[3] = &unk_10098AB18;
  objc_copyWeak(&v11, &location);
  dispatch_source_set_event_handler(v9, v10);
  dispatch_resume(self->_disableScanDupeConfigTimer);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)_configureNearbyActionNoWakeScannerAndRequestScan:(BOOL)scan
{
  scanCopy = scan;
  dispatch_assert_queue_V2(self->_consumerQueue);
  v5 = [(NSMutableSet *)self->_eligibleDiscoveryPeers count];
  nearbyActionNoWakeScanner = self->_nearbyActionNoWakeScanner;
  if (v5 && scanCopy)
  {
    if (nearbyActionNoWakeScanner)
    {
      if (self->_activatedScanner)
      {
        _nearbyActionNoWakeOOBKeysFromEligibleDiscoveryPeers = [(NIServerFindingDiscoveryProvider *)self _nearbyActionNoWakeOOBKeysFromEligibleDiscoveryPeers];
        [(CBDiscovery *)self->_nearbyActionNoWakeScanner setOobKeys:_nearbyActionNoWakeOOBKeysFromEligibleDiscoveryPeers];

        if (([(CBDiscovery *)self->_nearbyActionNoWakeScanner discoveryFlags]& 0x200100000) == 0)
        {
          v8 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-disc,NearbyActionNoWake: enabling scan dupes", &buf, 2u);
          }

          [(CBDiscovery *)self->_nearbyActionNoWakeScanner setDiscoveryFlags:[(CBDiscovery *)self->_nearbyActionNoWakeScanner discoveryFlags]| 0x200100000];
        }

        if (![(NSMutableDictionary *)self->_discoveredPeers count])
        {
          [(NIServerFindingDiscoveryProvider *)self _nearbyActionNoWakeDisableScanDupesIfNecessary];
        }
      }

      else
      {
        v19 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#find-disc,NearbyActionNoWake: scanner still activating", &buf, 2u);
        }
      }
    }

    else
    {
      v12 = objc_opt_new();
      v13 = self->_nearbyActionNoWakeScanner;
      self->_nearbyActionNoWakeScanner = v12;

      [(CBDiscovery *)self->_nearbyActionNoWakeScanner setDispatchQueue:self->_consumerQueue];
      v14 = [NSString stringWithFormat:@"nearbyd%s", sub_100009210(self->_isFinder)];
      [(CBDiscovery *)self->_nearbyActionNoWakeScanner setLabel:v14];

      [(CBDiscovery *)self->_nearbyActionNoWakeScanner setUseCase:458753];
      objc_initWeak(&buf, self);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10037AD0C;
      v24[3] = &unk_10098AAF0;
      objc_copyWeak(&v25, &buf);
      [(CBDiscovery *)self->_nearbyActionNoWakeScanner setDeviceFoundHandler:v24];
      [(CBDiscovery *)self->_nearbyActionNoWakeScanner setBleScanRate:self->_scanRate];
      [(CBDiscovery *)self->_nearbyActionNoWakeScanner setBleRSSIThresholdHint:4294967176];
      [(CBDiscovery *)self->_nearbyActionNoWakeScanner setDiscoveryFlags:[(CBDiscovery *)self->_nearbyActionNoWakeScanner discoveryFlags]| 0x80202100000];
      [(CBDiscovery *)self->_nearbyActionNoWakeScanner addDiscoveryType:16];
      _nearbyActionNoWakeOOBKeysFromEligibleDiscoveryPeers2 = [(NIServerFindingDiscoveryProvider *)self _nearbyActionNoWakeOOBKeysFromEligibleDiscoveryPeers];
      [(CBDiscovery *)self->_nearbyActionNoWakeScanner setOobKeys:_nearbyActionNoWakeOOBKeysFromEligibleDiscoveryPeers2];

      self->_activatedScanner = 0;
      v16 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#find-disc,NearbyActionNoWake: activating scanner (enabling scan dupes)", v23, 2u);
      }

      v17 = sub_100005288();
      v18 = self->_nearbyActionNoWakeScanner;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10037AD80;
      v21[3] = &unk_10099BB00;
      v22[1] = *&v17;
      objc_copyWeak(v22, &buf);
      [(CBDiscovery *)v18 activateWithCompletion:v21];
      objc_destroyWeak(v22);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&buf);
    }
  }

  else
  {
    if (nearbyActionNoWakeScanner)
    {
      [(CBDiscovery *)nearbyActionNoWakeScanner invalidate];
      v9 = self->_nearbyActionNoWakeScanner;
      self->_nearbyActionNoWakeScanner = 0;

      self->_activatedScanner = 0;
    }

    v10 = qword_1009F9820;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(NSMutableSet *)self->_eligibleDiscoveryPeers count];
      LODWORD(buf) = 67109376;
      HIDWORD(buf) = v11;
      v27 = 1024;
      v28 = scanCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#find-disc,NearbyActionNoWake: not configuring scanner. Eligible discovery peers: %d. Request scan: %d.", &buf, 0xEu);
    }
  }

  return 0;
}

- (id)_configureSpatialInteractionScannerAndRequestScan:(BOOL)scan
{
  scanCopy = scan;
  dispatch_assert_queue_V2(self->_consumerQueue);
  spatialInteractionScanner = self->_spatialInteractionScanner;
  if (spatialInteractionScanner)
  {
    [(CBSpatialInteractionSession *)spatialInteractionScanner invalidate];
    v6 = self->_spatialInteractionScanner;
    self->_spatialInteractionScanner = 0;

    spatialInteractionScannerActivationTimestamp = self->_spatialInteractionScannerActivationTimestamp;
    self->_spatialInteractionScannerActivationTimestamp = 0;

    self->_activatedScanner = 0;
  }

  if ([(NSMutableSet *)self->_eligibleDiscoveryPeers count]&& scanCopy)
  {
    v8 = objc_opt_new();
    v9 = self->_spatialInteractionScanner;
    self->_spatialInteractionScanner = v8;

    [(CBSpatialInteractionSession *)self->_spatialInteractionScanner setDispatchQueue:self->_consumerQueue];
    v10 = [NSString stringWithFormat:@"nearbyd%s", sub_100009210(self->_isFinder)];
    [(CBSpatialInteractionSession *)self->_spatialInteractionScanner setLabel:v10];

    [(CBSpatialInteractionSession *)self->_spatialInteractionScanner setControlFlags:12296];
    [(CBSpatialInteractionSession *)self->_spatialInteractionScanner setScanRate:self->_scanRate];
    [(CBSpatialInteractionSession *)self->_spatialInteractionScanner setBleRSSIThresholdOrder:132];
    [(CBSpatialInteractionSession *)self->_spatialInteractionScanner setBleRSSIThresholdHint:4294967176];
    objc_initWeak(&location, self);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10037B2B8;
    v20[3] = &unk_10098AAF0;
    objc_copyWeak(&v21, &location);
    [(CBSpatialInteractionSession *)self->_spatialInteractionScanner setDeviceFoundHandler:v20];
    self->_activatedScanner = 0;
    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#find-disc,SpatialInteraction: activating scanner", buf, 2u);
    }

    v12 = sub_100005288();
    v13 = self->_spatialInteractionScanner;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10037B32C;
    v17[3] = &unk_10099BB00;
    v18[1] = *&v12;
    objc_copyWeak(v18, &location);
    [(CBSpatialInteractionSession *)v13 activateWithCompletion:v17];
    objc_destroyWeak(v18);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = qword_1009F9820;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSMutableSet *)self->_eligibleDiscoveryPeers count];
      LODWORD(location) = 67109376;
      HIDWORD(location) = v15;
      v23 = 1024;
      v24 = scanCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#find-disc,SpatialInteraction: not configuring scanner. Eligible discovery peers: %d. Request scan: %d.", &location, 0xEu);
    }
  }

  return 0;
}

- (void)_updateLaunchOnDemandScannerAndRequestScan:(BOOL)scan
{
  scanCopy = scan;
  dispatch_assert_queue_V2(self->_consumerQueue);
  if (self->_launchOnDemand && sub_1000086B0(!self->_isFinder) == 26)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_1003735D8;
    v18 = sub_1003735E8;
    v19 = xpc_array_create(0, 0);
    if (scanCopy)
    {
      eligibleDiscoveryPeers = self->_eligibleDiscoveryPeers;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10037BAA8;
      v13[3] = &unk_10099D9C8;
      v13[4] = &v14;
      [(NSMutableSet *)eligibleDiscoveryPeers enumerateObjectsUsingBlock:v13];
    }

    v6 = xpc_array_create(0, 0);
    v7 = xpc_array_create(0, 0);
    if ([(NSMutableSet *)self->_eligibleDiscoveryPeers count]&& scanCopy)
    {
      xpc_array_set_string(v6, 0xFFFFFFFFFFFFFFFFLL, "ScreenOff");
      xpc_array_set_string(v7, 0xFFFFFFFFFFFFFFFFLL, "PrecisionFinding");
    }

    v8 = xpc_copy_event();
    if (+[NIPlatformInfo isInternalBuild])
    {
      v9 = qword_1009F9820;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = CUPrintXPC();
        *buf = 138739971;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#find-disc,Configuring launch on demand. XPC event before update: %{sensitive}@", buf, 0xCu);
      }
    }

    xpc_dictionary_set_value(v8, "oobKeys", v15[5]);
    xpc_dictionary_set_value(v8, "discoveryFlags", v6);
    xpc_dictionary_set_value(v8, "discoveryTypes", v7);
    if (+[NIPlatformInfo isInternalBuild])
    {
      v11 = qword_1009F9820;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = CUPrintXPC();
        *buf = 138739971;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#find-disc,XPC event after update: %{sensitive}@", buf, 0xCu);
      }
    }

    xpc_set_event();

    _Block_object_dispose(&v14, 8);
  }
}

- (void)_configureAdvertisementTimeout:(double)timeout forToken:(id)token
{
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_consumerQueue);
  if (timeout <= 0.0)
  {
    __assert_rtn("[NIServerFindingDiscoveryProvider _configureAdvertisementTimeout:forToken:]", "NIServerFindingDiscovery.mm", 1876, "timeoutSeconds > 0.0");
  }

  v7 = [(NSMutableDictionary *)self->_advertisingTimeoutTimers objectForKey:tokenCopy];
  v8 = v7;
  if (v7)
  {
    dispatch_source_cancel(v7);
    [(NSMutableDictionary *)self->_advertisingTimeoutTimers removeObjectForKey:tokenCopy];
  }

  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_consumerQueue);

  v10 = dispatch_time(0, (timeout * 1000000000.0));
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  objc_initWeak(&location, self);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10037BDE8;
  handler[3] = &unk_10098B940;
  objc_copyWeak(&v14, &location);
  v11 = tokenCopy;
  v13 = v11;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(v9);
  [(NSMutableDictionary *)self->_advertisingTimeoutTimers setObject:v9 forKey:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_configureDiscoveryTimeout:(double)timeout forToken:(id)token
{
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_consumerQueue);
  v7 = [(NSMutableDictionary *)self->_discoveryTimeoutTimers objectForKey:tokenCopy];
  v8 = v7;
  if (v7)
  {
    dispatch_source_cancel(v7);
    [(NSMutableDictionary *)self->_discoveryTimeoutTimers removeObjectForKey:tokenCopy];
  }

  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_consumerQueue);

  v10 = dispatch_time(0, (timeout * 1000000000.0));
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  objc_initWeak(&location, self);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10037C070;
  handler[3] = &unk_10098B940;
  objc_copyWeak(&v14, &location);
  v11 = tokenCopy;
  v13 = v11;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(v9);
  [(NSMutableDictionary *)self->_discoveryTimeoutTimers setObject:v9 forKey:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (id)_getDiscoveryTokenFromCBDevice:(id)device advertisementType:(int)type
{
  deviceCopy = device;
  v7 = deviceCopy;
  if (!deviceCopy)
  {
    __assert_rtn("[NIServerFindingDiscoveryProvider _getDiscoveryTokenFromCBDevice:advertisementType:]", "NIServerFindingDiscovery.mm", 1958, "device");
  }

  btAddressData = [deviceCopy btAddressData];

  if (!btAddressData)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C5980();
    }

    goto LABEL_9;
  }

  if (type != 26)
  {
    if (type != 19)
    {
      goto LABEL_10;
    }

    spatialInteractionTokenData = [v7 spatialInteractionTokenData];

    if (spatialInteractionTokenData)
    {
      v10 = [NIDiscoveryToken alloc];
      spatialInteractionTokenData2 = [v7 spatialInteractionTokenData];
      self = [(NIDiscoveryToken *)v10 initWithBytes:spatialInteractionTokenData2];

      goto LABEL_10;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C594C();
    }

    goto LABEL_9;
  }

  nearbyActionNoWakeAuthTagData = [v7 nearbyActionNoWakeAuthTagData];

  if (!nearbyActionNoWakeAuthTagData)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C5918();
    }

LABEL_9:
    self = 0;
    goto LABEL_10;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1003735D8;
  v22 = sub_1003735E8;
  v23 = 0;
  eligibleDiscoveryPeers = self->_eligibleDiscoveryPeers;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10037C3C4;
  v15[3] = &unk_10099ECB8;
  v16 = v7;
  v17 = &v18;
  [(NSMutableSet *)eligibleDiscoveryPeers enumerateObjectsUsingBlock:v15];
  self = v19[5];

  _Block_object_dispose(&v18, 8);
LABEL_10:

  return self;
}

- (id)_getAdvertisementFromCBDevice:(id)device advertisementType:(int)type
{
  deviceCopy = device;
  v7 = deviceCopy;
  if (!deviceCopy)
  {
    __assert_rtn("[NIServerFindingDiscoveryProvider _getAdvertisementFromCBDevice:advertisementType:]", "NIServerFindingDiscovery.mm", 2000, "device");
  }

  btAddressData = [deviceCopy btAddressData];
  v9 = [NIServerFindingAdvertisement convertCBAddressToRoseAddress:btAddressData];
  v24 = v9;
  v25 = WORD2(v9);

  if (type == 19)
  {
    spatialInteractionUWBConfigData = [v7 spatialInteractionUWBConfigData];
    v15 = [spatialInteractionUWBConfigData length];

    if (v15 > 4)
    {
      v16 = [NIServerSpatialInteractionPayload alloc];
      spatialInteractionUWBConfigData2 = [v7 spatialInteractionUWBConfigData];
      nearbyActionNoWakeConfigData = [(NIServerSpatialInteractionPayload *)v16 initWithUWBConfigData:spatialInteractionUWBConfigData2];

      if ([(NIServerSpatialInteractionPayload *)nearbyActionNoWakeConfigData findingEnabled])
      {
        v20[0] = [(NIServerSpatialInteractionPayload *)nearbyActionNoWakeConfigData findingConfig];
        v20[1] = [(NIServerSpatialInteractionPayload *)nearbyActionNoWakeConfigData findingConfig2];
        v22 = 0;
        v23 = 0;
        __p = 0;
        sub_1000069DC(&__p, v20, &__p, 2);
        v18 = [NSData dataWithBytes:__p length:v22 - __p];
        v13 = [NIServerFindingAdvertisement advertisementForFinder:!self->_isFinder address:&v24 statusFlags:[(NIServerSpatialInteractionPayload *)nearbyActionNoWakeConfigData findingStatus] payload:v18 extraOOBData:0 uniqueIdentifier:0];

        if (__p)
        {
          v22 = __p;
          operator delete(__p);
        }

        goto LABEL_5;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C59B4();
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C59E8();
    }
  }

  else if (type == 26)
  {
    isFinder = self->_isFinder;
    nearbyActionNWPrecisionFindingStatus = [v7 nearbyActionNWPrecisionFindingStatus];
    nearbyActionNoWakeConfigData = [v7 nearbyActionNoWakeConfigData];
    v13 = [NIServerFindingAdvertisement advertisementForFinder:!isFinder address:&v24 statusFlags:nearbyActionNWPrecisionFindingStatus payload:nearbyActionNoWakeConfigData extraOOBData:0 uniqueIdentifier:0];
LABEL_5:

    goto LABEL_16;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (id).cxx_construct
{
  *(self + 8) = 0uLL;
  *(self + 3) = 0;
  return self;
}

@end