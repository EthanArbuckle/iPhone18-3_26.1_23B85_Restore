@interface SDProximityPairingBufferedScanner
- (BOOL)_updateCounterpart:(id)a3;
- (BOOL)pairingUpdatePairedInfo:(id)a3 fields:(id)a4 bleDevice:(id)a5;
- (BOOL)pairingUpdatePairedInfoMB:(id)a3 fields:(id)a4 bleDevice:(id)a5;
- (BOOL)sampleIsTooOld:(id)a3;
- (SDProximityPairingBufferedScanner)initWithQueue:(id)a3;
- (id)pairingParsePayload:(id)a3 identifier:(id)a4 bleDevice:(id)a5 peerInfo:(id)a6;
- (int)_btSessionEnsureStarted;
- (void)_btSessionEnsureStopped;
- (void)_ensureCbDiscoveryStopped;
- (void)_ensureStarted;
- (void)_foundDevice:(id)a3 advertisementData:(id)a4 rssi:(int64_t)a5 fields:(id)a6;
- (void)_invalidate;
- (void)configureCBDiscoveryScreenOffPairing;
- (void)dealloc;
- (void)ensureStarted;
- (void)foundBufferedPairingDevices:(id)a3;
- (void)invalidate;
- (void)pairingParseAccessoryStatusPayloadPtr:(const char *)a3 end:(const char *)a4 fields:(id)a5;
- (void)proxPairingLoggerAndInvalidationHandler:(id)a3 withLogLevel:(unsigned __int8)a4 andError:(id)a5;
- (void)startCBDiscoveryScreenOffPairing;
- (void)turnOffScreenOffScanningIfNoAirPodsOntheAccount;
@end

@implementation SDProximityPairingBufferedScanner

- (void)ensureStarted
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017F38;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_ensureStarted
{
  if (!self->_cbDiscoveryScreenOffPairing)
  {
    v3 = sub_10002F024();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CBDiscoveryScreenOff starting", v4, 2u);
    }

    [(SDProximityPairingBufferedScanner *)self configureCBDiscoveryScreenOffPairing];
    [(SDProximityPairingBufferedScanner *)self startCBDiscoveryScreenOffPairing];
  }

  if ([(SDProximityPairingBufferedScanner *)self _btSessionUsable])
  {
    [(SDProximityPairingBufferedScanner *)self _btSessionEnsureStarted];
  }
}

- (int)_btSessionEnsureStarted
{
  if (self->_btStarted)
  {
    return 0;
  }

  v3 = sub_10002F024();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BTSession attach\n", v10, 2u);
  }

  *v10 = sub_1001FE53C;
  v4 = self;
  v5 = off_100972B68("SDProximityPairingBufferedScanner", v10, v4, v4->_dispatchQueue);
  if (v5)
  {
    v6 = v5;
    CFRelease(v4);
    v7 = v6 + 310000;
    if (v6 != -310000)
    {
      v8 = sub_10002F024();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v12 = v6 + 310000;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "### BTSession attach failed: %d\n", buf, 8u);
      }
    }
  }

  else
  {
    v7 = 0;
    self->_btStarted = 1;
  }

  return v7;
}

- (void)configureCBDiscoveryScreenOffPairing
{
  cbDiscoveryScreenOffPairing = self->_cbDiscoveryScreenOffPairing;
  if (!cbDiscoveryScreenOffPairing)
  {
    v4 = objc_alloc_init(off_100972B60());
    v5 = self->_cbDiscoveryScreenOffPairing;
    self->_cbDiscoveryScreenOffPairing = v4;

    cbDiscoveryScreenOffPairing = self->_cbDiscoveryScreenOffPairing;
  }

  [(CBDiscovery *)cbDiscoveryScreenOffPairing setDispatchQueue:self->_dispatchQueue];
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001FE8AC;
  v12[3] = &unk_1008D35E0;
  objc_copyWeak(&v13, &location);
  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setDevicesBufferedHandler:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001FE908;
  v10[3] = &unk_1008CDD98;
  objc_copyWeak(&v11, &location);
  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setInvalidationHandler:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001FE958;
  v8[3] = &unk_1008CDD98;
  objc_copyWeak(&v9, &location);
  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setInterruptionHandler:v8];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001FE9A8;
  v6[3] = &unk_1008D2B80;
  objc_copyWeak(&v7, &location);
  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setErrorHandler:v6];
  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setDiscoveryFlags:0];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)startCBDiscoveryScreenOffPairing
{
  if (![(CBDiscovery *)self->_cbDiscoveryScreenOffPairing discoveryFlags])
  {
    [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setDiscoveryFlags:0x2000000];
    [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setDiscoveryFlags:[(CBDiscovery *)self->_cbDiscoveryScreenOffPairing discoveryFlags]| 0x800000];
  }

  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing removeAllDiscoveryTypes];
  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing addDiscoveryType:29];
  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setBleScanRate:20];
  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setBleScanRateScreenOff:20];
  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setLabel:@"Prox Pairing Screen Off Buffered Samples"];
  v3 = sub_10002F024();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Going to Activate scanner", buf, 2u);
  }

  objc_initWeak(buf, self);
  cbDiscoveryScreenOffPairing = self->_cbDiscoveryScreenOffPairing;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002F91C;
  v5[3] = &unk_1008D2B80;
  objc_copyWeak(&v6, buf);
  [(CBDiscovery *)cbDiscoveryScreenOffPairing activateWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (SDProximityPairingBufferedScanner)initWithQueue:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    sub_100202AF4(a2, self);
  }

  v10.receiver = self;
  v10.super_class = SDProximityPairingBufferedScanner;
  v7 = [(SDProximityPairingBufferedScanner *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dispatchQueue, a3);
  }

  return v8;
}

- (void)dealloc
{
  if (self->_btSession)
  {
    sub_100202B70();
    [(SDProximityPairingBufferedScanner *)v8 invalidate];
  }

  else
  {
    [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing invalidate];
    cbDiscoveryScreenOffPairing = self->_cbDiscoveryScreenOffPairing;
    self->_cbDiscoveryScreenOffPairing = 0;

    devices = self->_devices;
    self->_devices = 0;

    bufferedDeviceFoundHandler = self->_bufferedDeviceFoundHandler;
    self->_bufferedDeviceFoundHandler = 0;

    dispatchQueue = self->_dispatchQueue;
    if (dispatchQueue)
    {
      self->_dispatchQueue = 0;
    }

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    v10.receiver = self;
    v10.super_class = SDProximityPairingBufferedScanner;
    [(SDProximityPairingBufferedScanner *)&v10 dealloc];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001FE188;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    v3 = sub_10002F024();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating\n", buf, 2u);
    }

    self->_invalidateCalled = 1;
    devices = self->_devices;
    self->_devices = 0;

    [(SDProximityPairingBufferedScanner *)self _btSessionEnsureStopped];
    [(SDProximityPairingBufferedScanner *)self _ensureCbDiscoveryStopped];
    v5 = sub_10002F024();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidated\n", v8, 2u);
    }

    bufferedDeviceFoundHandler = self->_bufferedDeviceFoundHandler;
    self->_bufferedDeviceFoundHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;
  }
}

- (void)_ensureCbDiscoveryStopped
{
  cbDiscoveryScreenOffPairing = self->_cbDiscoveryScreenOffPairing;
  if (cbDiscoveryScreenOffPairing)
  {
    [(CBDiscovery *)cbDiscoveryScreenOffPairing invalidate];
    v4 = self->_cbDiscoveryScreenOffPairing;
    self->_cbDiscoveryScreenOffPairing = 0;
  }
}

- (void)turnOffScreenOffScanningIfNoAirPodsOntheAccount
{
  v2 = self;
  [(NSMutableDictionary *)self->_devices removeAllObjects];
  devices = v2->_devices;
  v2->_devices = 0;

  cbDiscoveryScreenOffPairing = v2->_cbDiscoveryScreenOffPairing;
  if (!cbDiscoveryScreenOffPairing)
  {
    return;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(CBDiscovery *)cbDiscoveryScreenOffPairing discoveredDevices];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = v2;
    v19 = 0;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 productID];
        if (v11 - 8194 <= 0x26 && ((1 << (v11 - 2)) & 0x6472863101) != 0)
        {
          v13 = [v10 productID];
          if (v13 != 8202 && v13 != 8223)
          {
            v15 = sub_10002F024();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "CBDiscoveryScreenOff found AirPods on account", buf, 2u);
            }

            v19 = 1;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);

    v2 = v18;
    if (v19)
    {
      v16 = sub_10002F024();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "CBDiscoveryScreenOff screen off scan enabled", buf, 2u);
      }

      return;
    }
  }

  else
  {
  }

  v17 = sub_10002F024();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "CBDiscoveryScreenOff being invalidated because device has no paired AirPods", buf, 2u);
  }

  [(SDProximityPairingBufferedScanner *)v2 _ensureCbDiscoveryStopped];
}

- (void)_btSessionEnsureStopped
{
  p_btSession = &self->_btSession;
  if (self->_btSession)
  {
    v4 = sub_10002F024();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BTSession detach\n", v5, 2u);
    }

    off_100972B70(p_btSession);
    *p_btSession = 0;
  }

  self->_btStarted = 0;
}

- (void)proxPairingLoggerAndInvalidationHandler:(id)a3 withLogLevel:(unsigned __int8)a4 andError:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = sub_10002F024();
  if (os_log_type_enabled(v10, a4))
  {
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, a4, "CBDiscoveryScreenOff handler called: %@ with error: %@", &v12, 0x16u);
  }

  if (([v8 isEqualToString:@"ActivateWithCompletion Handler"] & 1) == 0)
  {
    v11 = sub_10002F024();
    if (os_log_type_enabled(v11, a4))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, a4, "CBDiscoveryScreenOff Invalidating failed CBDiscovery object", &v12, 2u);
    }

    [(SDProximityPairingBufferedScanner *)self _ensureCbDiscoveryStopped];
  }
}

- (BOOL)sampleIsTooOld:(id)a3
{
  v3 = a3;
  v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 1000000000.0;
  v5 = [v3 bleAdvertisementTimestampMachContinuous];

  return v5 / 1000000.0 < v4 + -5.0;
}

- (void)foundBufferedPairingDevices:(id)a3
{
  v4 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v37;
    v33 = WPPairingKeyDeviceAddress;
    v32 = WPPairingKeyAdvertisingChannel;
    *&v6 = 138412290;
    v30 = v6;
    v9 = &NSURLAuthenticationMethodServerTrust_ptr;
    v31 = v4;
    v34 = *v37;
    do
    {
      v10 = 0;
      v35 = v7;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v36 + 1) + 8 * v10);
        if (([v11 discoveryFlags] & 0x1C080) != 0 && -[SDProximityPairingBufferedScanner isAirPods:](self, "isAirPods:", objc_msgSend(v11, "productID")) && !-[SDProximityPairingBufferedScanner sampleIsTooOld:](self, "sampleIsTooOld:", v11))
        {
          v12 = sub_10002F024();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v30;
            v41 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "CBDiscoveryScreenOff handling buffered device: %@", buf, 0xCu);
          }

          v13 = sub_10002F024();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = [v11 identifier];
            v15 = [v11 bleAppleManufacturerData];
            *buf = 138412546;
            v41 = v14;
            v42 = 2112;
            v43 = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "CBDiscoveryScreenOff handling buffered device: %@ with Apple payload: <%@>", buf, 0x16u);
          }

          v16 = [NSUUID alloc];
          v17 = [v11 identifier];
          v18 = [v16 initWithUUIDString:v17];

          v19 = objc_alloc_init(NSMutableDictionary);
          v20 = [v11 btAddressData];
          [v19 setObject:v20 forKeyedSubscript:v33];

          v21 = [v9[258] numberWithInt:{objc_msgSend(v11, "bleChannel")}];
          [v19 setObject:v21 forKeyedSubscript:v32];

          v22 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v18];
          v23 = [v11 bleAppleManufacturerData];
          v24 = [(SDProximityPairingBufferedScanner *)self pairingParsePayload:v23 identifier:v18 bleDevice:v22 peerInfo:v19];

          if (v24)
          {
            v25 = [v9[258] numberWithDouble:{objc_msgSend(v11, "bleAdvertisementTimestampMachContinuous") / 1000000.0}];
            [v24 setObject:v25 forKeyedSubscript:@"sampleTimestamp"];

            v26 = [v9[258] numberWithInt:{objc_msgSend(v11, "bleChannel")}];
            if (v26)
            {
              [v24 setObject:v26 forKeyedSubscript:@"ch"];
            }

            v27 = [v11 bleRSSI];
            v28 = [v11 bleAppleManufacturerData];
            [(SDProximityPairingBufferedScanner *)self _foundDevice:v18 advertisementData:v28 rssi:v27 fields:v24];

            v4 = v31;
          }

          else
          {
            v26 = sub_10002F024();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              v29 = [v11 bleAppleManufacturerData];
              *buf = 138412546;
              v41 = v29;
              v42 = 2112;
              v43 = v18;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "pairingParsePayload failed to parse Pairing payload: <%@> for device: %@", buf, 0x16u);
            }
          }

          v8 = v34;
          v7 = v35;
          v9 = &NSURLAuthenticationMethodServerTrust_ptr;
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [v4 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v7);
  }
}

- (BOOL)pairingUpdatePairedInfoMB:(id)a3 fields:(id)a4 bleDevice:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 paired];
  if (!v10 || (Current = CFAbsoluteTimeGetCurrent(), [v10 pairCheckTime], Current - v13 > 1.0))
  {
    if (self->_btSession)
    {
      v52[0] = 0;
      v52[1] = 0;
      v36 = 0;
      [v8 getUUIDBytes:v52];
      v14 = off_100972B78(self->_btSession, v52, &v36);
      v15 = v14 == 0;
      if (!v14)
      {
        memset(v51, 0, sizeof(v51));
        v50 = 0u;
        v49 = 0u;
        v48 = 0u;
        v47 = 0u;
        v46 = 0u;
        v45 = 0u;
        v44 = 0u;
        v43 = 0u;
        v42 = 0u;
        v41 = 0u;
        v40 = 0u;
        v39 = 0u;
        memset(v37, 0, sizeof(v37));
        v34 = 0;
        v33 = 0;
        memset(buf, 0, sizeof(buf));
        if (!off_100972B80(v36, buf, 248) && buf[0])
        {
          v16 = [NSString stringWithUTF8String:buf];
          [v9 setObject:v16 forKeyedSubscript:@"name"];
        }

        v35 = 0;
        if (off_100972B88(v36, &v35))
        {
          v11 = v11;
        }

        else
        {
          v11 = v35 != 0;
        }

        v17 = [NSNumber numberWithBool:v11];
        [v9 setObject:v17 forKeyedSubscript:@"paired"];

        v32 = 0;
        off_100972B90(v36, &v32);
        [v10 setTempPaired:v32 != 0];
        v31 = 0;
        if (off_100972B98(v36, &v31))
        {
          v31 = 0;
        }

        else if (v31)
        {
          v19 = [NSNumber numberWithUnsignedInt:?];
          [v9 setObject:v19 forKeyedSubscript:@"CnSv"];
        }

        v20 = [v10 bluetoothAddress];
        if (v20)
        {
          [v9 setObject:v20 forKeyedSubscript:@"publicAddress"];
        }

        else
        {
          LOBYTE(v37[0]) = 0;
          if (!off_100972BA0(v36, v37, 32) && LOBYTE(v37[0]) && !off_100972BA8(v37, &v33))
          {
            v30 = [NSData dataWithBytes:&v33 length:6];
            [v9 setObject:v30 forKeyedSubscript:@"publicAddress"];
          }
        }
      }

      v21 = sub_10002F024();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = [v9 objectForKeyedSubscript:@"name"];
        v23 = v22;
        v24 = "no";
        *&buf[4] = v52;
        *buf = 136315650;
        if (v11)
        {
          v24 = "yes";
        }

        *&buf[12] = 2112;
        *&buf[14] = v22;
        *&buf[22] = 2080;
        *&buf[24] = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Updated paired info for %s: Name '%@', Paired %s\n", buf, 0x20u);
      }

      if (v10)
      {
LABEL_29:
        [v10 setPairCheckTime:CFAbsoluteTimeGetCurrent()];
      }
    }

    else
    {
      if (self->_btStarted)
      {
        v18 = sub_10002F024();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v8;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "### No BTSession to look up device %@\n", buf, 0xCu);
        }
      }

      v15 = 0;
      if (v10)
      {
        goto LABEL_29;
      }
    }

    if (v15)
    {
      goto LABEL_38;
    }
  }

  v25 = [v10 bluetoothAddress];
  if (v25)
  {
    [v9 setObject:v25 forKeyedSubscript:@"publicAddress"];
  }

  if ([v10 connectedServices])
  {
    v26 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 connectedServices]);
    [v9 setObject:v26 forKeyedSubscript:@"CnSv"];
  }

  v27 = [v10 name];

  if (v27)
  {
    [v9 setObject:v27 forKeyedSubscript:@"name"];
  }

  v28 = [NSNumber numberWithBool:v11];
  [v9 setObject:v28 forKeyedSubscript:@"paired"];

LABEL_38:
  return v11;
}

- (BOOL)pairingUpdatePairedInfo:(id)a3 fields:(id)a4 bleDevice:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(SDProximityPairingBufferedScanner *)self _btSessionUsable])
  {
    v11 = [(SDProximityPairingBufferedScanner *)self pairingUpdatePairedInfoMB:v8 fields:v9 bleDevice:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)pairingParseAccessoryStatusPayloadPtr:(const char *)a3 end:(const char *)a4 fields:(id)a5
{
  v7 = a5;
  if (a4 - a3 < 1)
  {
    goto LABEL_10;
  }

  v9 = *a3;
  v8 = a3 + 1;
  v10 = [NSNumber numberWithInt:v9 & 7];
  [v7 setObject:v10 forKeyedSubscript:@"locP"];

  v11 = (v9 & 4) != 0 ? &__kCFBooleanTrue : &__kCFBooleanFalse;
  [v7 setObject:v11 forKeyedSubscript:@"lc"];
  if (a4 - v8 < 1)
  {
LABEL_10:
    LOBYTE(v12) = 0;
    goto LABEL_11;
  }

  v12 = *v8;
  if (v12 != 254)
  {
    if (v12 == 255)
    {
      goto LABEL_20;
    }

    if ((v12 & 0x80) != 0)
    {
      v13 = 2;
LABEL_12:
      v14 = v12 & 0x7F;
      if (v14 >= 0x64)
      {
        v14 = 100;
      }

      v15 = v14 / 100.0;
      goto LABEL_15;
    }

LABEL_11:
    v13 = 1;
    goto LABEL_12;
  }

  v15 = 0.8;
  v13 = 2;
LABEL_15:
  v16 = objc_alloc_init(SFBatteryInfo);
  v17 = v16;
  v18 = 1.0;
  if (v15 <= 1.0)
  {
    v18 = v15;
  }

  if (v18 < 0.0001)
  {
    v18 = 0.0001;
  }

  [v16 setBatteryLevel:v18];
  [v17 setBatteryState:v13];
  [v17 setBatteryType:1];
  v20 = v17;
  v19 = [NSArray arrayWithObjects:&v20 count:1];
  [v7 setObject:v19 forKeyedSubscript:@"batteryInfo"];

LABEL_20:
}

- (void)_foundDevice:(id)a3 advertisementData:(id)a4 rssi:(int64_t)a5 fields:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ((a5 - 20) >= 0x6B)
  {
    v13 = a5;
  }

  else
  {
    v13 = a5 - 126;
  }

  if ((v13 - 1) >= 0xFFFFFFFFFFFFFFA5)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v62 = 0;
  v15 = [gSFNearbyAgent idsDeviceForBluetoothDeviceID:v10 conflictDetected:&v62];
  v16 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v10];
  if (v16)
  {
    v17 = v16;
    if (v15)
    {
      v18 = [v15 uniqueIDOverride];
      if (v18)
      {
        [v12 setObject:v18 forKeyedSubscript:@"idsID"];
      }

      v19 = v14;
      v20 = [NSNumber numberWithBool:v62];
      [v12 setObject:v20 forKeyedSubscript:@"idsIDCD"];
    }

    else
    {
      v19 = v14;
      v18 = 0;
    }

    v35 = [v17 advertisementFields];
    CFStringGetTypeID();
    v36 = CFDictionaryGetTypedValue();

    if (v18)
    {
      [v36 isEqual:v18];
    }

    v59 = v36;
    v60 = v18;
    CFStringGetTypeID();
    v37 = CFDictionaryGetTypedValue();
    v38 = v37;
    if (v15)
    {
      if (!v37)
      {
        v38 = [v15 modelIdentifier];
        if (v38)
        {
          [v12 setObject:v38 forKeyedSubscript:@"model"];
        }
      }
    }

    v61 = v10;
    v39 = [v17 advertisementFields];
    CFStringGetTypeID();
    v40 = CFDictionaryGetTypedValue();

    if (v38)
    {
      [v40 isEqual:v38];
    }

    [v17 setLastSeen:CFAbsoluteTimeGetCurrent()];
    v41 = [v17 advertisementData];
    v42 = [v41 isEqual:v11];

    if ((v42 & 1) == 0)
    {
      [v17 setAdvertisementData:v11];
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    if ([v17 connectedServices] != Int64Ranged)
    {
      [v17 setConnectedServices:Int64Ranged];
    }

    v58 = v38;
    if (v19)
    {
      [v17 updateRSSI:v19];
    }

    v44 = v15;
    v45 = [v17 bluetoothAddress];
    if (!v45)
    {
      CFDataGetTypeID();
      v45 = CFDictionaryGetTypedValue();
      if (v45)
      {
        [v17 setBluetoothAddress:v45];
      }
    }

    v46 = v40;
    v47 = self;
    CFStringGetTypeID();
    v48 = CFDictionaryGetTypedValue();
    v49 = v48;
    v50 = v11;
    if (v44 && !v48)
    {
      v49 = [v44 name];
    }

    if (v49)
    {
      v51 = [v17 name];
      v52 = [v51 isEqual:v49];

      if ((v52 & 1) == 0)
      {
        [v17 setName:v49];
      }
    }

    Int64 = CFDictionaryGetInt64();
    if (v44)
    {
      [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"paired"];
    }

    if (![v17 paired] || Int64)
    {
      v11 = v50;
      if (([v17 paired] & 1) == 0 && Int64)
      {
        [v17 setPaired:1];
      }
    }

    else
    {
      [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"paired"];
      v11 = v50;
    }

    v54 = [v17 counterpartIdentifier];
    if (v54)
    {

      if (!v12)
      {
LABEL_69:
        sub_100200404(v55, v17);
        v56 = sub_10002F024();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v64 = v17;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Updated %@\n", buf, 0xCu);
        }

        bufferedDeviceFoundHandler = v47->_bufferedDeviceFoundHandler;
        if (bufferedDeviceFoundHandler)
        {
          bufferedDeviceFoundHandler[2](bufferedDeviceFoundHandler, v17);
        }

        v23 = v60;
        v10 = v61;
        v15 = v44;
        goto LABEL_74;
      }
    }

    else
    {
      v55 = [(SDProximityPairingBufferedScanner *)v47 _updateCounterpart:v17];
      if (!v12)
      {
        goto LABEL_69;
      }
    }

    v55 = [v17 setAdvertisementFields:v12];
    goto LABEL_69;
  }

  v21 = CFDictionaryGetInt64();
  CFStringGetTypeID();
  v22 = CFDictionaryGetTypedValue();
  v23 = v22;
  if (v15)
  {
    if (!v22)
    {
      v23 = [v15 name];
    }

    CFStringGetTypeID();
    v24 = CFDictionaryGetTypedValue();
    if (v24 || ([v15 modelIdentifier], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v25 = v24;
      [v12 setObject:v24 forKeyedSubscript:@"model"];
    }

    v26 = self;
    v27 = v11;
    v28 = [v15 uniqueIDOverride];
    if (v28)
    {
      [v12 setObject:v28 forKeyedSubscript:@"idsID"];
    }

    v29 = [NSNumber numberWithBool:v62];
    [v12 setObject:v29 forKeyedSubscript:@"idsIDCD"];

    [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"paired"];
    v11 = v27;
    self = v26;
  }

  else
  {
    if (!v21)
    {
      goto LABEL_22;
    }

    v28 = sub_10002F024();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v64 = v10;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "### No IDS device found for paired ID %@\n", buf, 0xCu);
    }
  }

  v21 = 1;
LABEL_22:
  v17 = objc_alloc_init(SFBLEDevice);
  [v17 setAdvertisementData:v11];
  if (v12)
  {
    [v17 setAdvertisementFields:v12];
  }

  CFDataGetTypeID();
  [v17 setBluetoothAddress:CFDictionaryGetTypedValue()];
  [v17 setConnectedServices:CFDictionaryGetInt64Ranged()];
  [v17 setFoundTicks:mach_absolute_time()];
  [v17 setIdentifier:v10];
  [v17 setLastSeen:CFAbsoluteTimeGetCurrent()];
  if (v23)
  {
    [v17 setName:v23];
  }

  [v17 setPaired:v21];
  if (v14)
  {
    [v17 updateRSSI:v14];
  }

  sub_100200404([(SDProximityPairingBufferedScanner *)self _updateCounterpart:v17], v17);
  devices = self->_devices;
  if (!devices)
  {
    v31 = objc_alloc_init(NSMutableDictionary);
    v32 = self->_devices;
    self->_devices = v31;

    devices = self->_devices;
  }

  [(NSMutableDictionary *)devices setObject:v17 forKeyedSubscript:v10];
  v33 = sub_10002F024();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v64 = v17;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Found %@\n", buf, 0xCu);
  }

  v34 = self->_bufferedDeviceFoundHandler;
  if (v34)
  {
    v34[2](v34, v17);
  }

LABEL_74:
}

- (id)pairingParsePayload:(id)a3 identifier:(id)a4 bleDevice:(id)a5 peerInfo:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = a3;
  v14 = [v13 bytes];
  v15 = [v13 length];

  v16 = objc_alloc_init(NSMutableDictionary);
  if (v15 >= 7)
  {
    v17 = v14[4];
    v18 = *(v14 + 5);
    v287 = 1;
    v19 = (v18 - 8194) > 0xD || ((1 << (v18 - 2)) & 0x3001) == 0;
    if (v19)
    {
      v32 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
      [v32 isAirPods];

      sub_100200BA4();
      if (v19)
      {
        v287 = 1;
      }

      else
      {
        v33 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
        v287 = [v33 hasSplitBattery];
      }
    }

    v291 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
    v20 = [NSNumber numberWithUnsignedChar:v17];
    sub_100035E1C();

    if (!v17 && v15 == 14)
    {
      v21 = [NSNumber numberWithUnsignedInt:[(SDProximityPairingBufferedScanner *)self statusToHeadsetStatus:v14[7] forProductID:v18]];
      sub_100021F1C();

      v22 = [(SDProximityPairingBufferedScanner *)self modelWithProductID:v18];
      sub_100021F1C();

      v23 = [NSNumber numberWithUnsignedShort:v18];
      sub_100021F1C();

      v24 = [NSData dataWithBytes:v14 + 8 length:6];
      sub_100021F1C();

      [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ns"];
LABEL_298:
      v25 = v16;
      goto LABEL_299;
    }

    v25 = 0;
    v284 = &v14[v15];
    switch(v17)
    {
      case 0:
      case 7:
        v282 = v10;
        v283 = v11;
        if (v17)
        {
          if (v15 < 0xD)
          {
            goto LABEL_301;
          }

          v277 = v14[7];
          v273 = v14[8];
          v26 = v14[9];
          v27 = v14[10];
          v28 = v14 + 12;
          v29 = v14[11];
          if (v17 == 7)
          {
            v30 = 0;
            v31 = 0;
            goto LABEL_40;
          }
        }

        else
        {
          if (v15 < 0x13)
          {
LABEL_302:
            v25 = 0;
            v11 = v283;
            goto LABEL_299;
          }

          v277 = v14[13];
          v273 = v14[14];
          v67 = v14[15];
          v68 = v14[16];
          v28 = v14 + 18;
          v29 = v14[17];
        }

        v31 = *v28;
        v30 = 1;
LABEL_40:
        sub_100200BA4();
        v280 = v9;
        v263 = v70;
        v268 = v71;
        v271 = v72;
        if (v19)
        {
          v76 = 1;
        }

        else
        {
          v73 = v29;
          v74 = v69;
          v75 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
          v76 = [v75 hasSplitCaseColors];

          v69 = v74;
          v29 = v73;
        }

        if ((v30 & v76) == 1)
        {
          if (v284 - v69 < 1)
          {
            v265 = v69;
            v77 = 0;
          }

          else
          {
            v265 = v69 + 1;
            v77 = *v69 >> 5;
          }

          v95 = v31 >> 4;
          v96 = [NSNumber numberWithUnsignedChar:v31 & 0xF];
          sub_100200B44();

          v97 = [NSNumber numberWithUnsignedChar:v95];
          sub_100200B44();

          v98 = [NSNumber numberWithUnsignedChar:v77];
          [sub_100019E60() setObject:? forKeyedSubscript:?];
        }

        else
        {
          v265 = v69;
          v78 = +[SFHeadphoneProduct airPodsMax];

          if (v291 == v78)
          {
            [NSNumber numberWithInt:v31 & 0x1F];
          }

          else
          {
            [NSNumber numberWithUnsignedChar:v31];
          }
          v98 = ;
          [sub_100019E60() setObject:? forKeyedSubscript:?];
        }

        v99 = [(SDProximityPairingBufferedScanner *)self statusToHeadsetStatus:v277 forProductID:v18];
        if (v273 == 255)
        {
          v276 = 0;
        }

        else
        {
          sub_100200B7C();
          v100 = sub_100200B6C();
          v102 = v101 < 0;
          v103 = 1;
          if (v102)
          {
            v103 = 2;
          }

          v276 = v103;
        }

        v104 = v268;
        if (v271 == 255)
        {
          v272 = 0;
        }

        else
        {
          sub_100200B7C();
          v100 = sub_100200B6C();
          v102 = v105 < 0;
          v106 = 1;
          if (v102)
          {
            v106 = 2;
          }

          v272 = v106;
        }

        if (v104 == 255)
        {
          v108 = 0;
        }

        else
        {
          v100 = sub_100200B6C();
          if (v107 >= 0)
          {
            v108 = 1;
          }

          else
          {
            v108 = 2;
          }
        }

        if (v18 - 8194) < 0xE && ((0x3201u >> (v18 - 2)))
        {
          v109 = 1;
        }

        else
        {
          v110 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
          v109 = [v110 hasLid];
        }

        if ((v29 & 0x80u) == 0)
        {
          v111 = 1;
        }

        else
        {
          v111 = v109;
        }

        if (v111)
        {
          v112 = v99;
        }

        else
        {
          v112 = v99 | 0x400;
        }

        v113 = [NSNumber numberWithUnsignedInt:v112, v100];
        [v16 setObject:v113 forKeyedSubscript:@"hsStatus"];

        if ((v109 & ((v29 & 8) >> 3)) != 0)
        {
          v114 = &__kCFBooleanTrue;
        }

        else
        {
          v114 = &__kCFBooleanFalse;
        }

        [v16 setObject:v114 forKeyedSubscript:@"lc"];
        v115 = [NSNumber numberWithInt:v29 & 7];
        if ((v112 & 0x100) != 0)
        {
          [sub_100019E60() setObject:? forKeyedSubscript:?];

          v119 = [v282 advertisementFields];
          v117 = [v119 objectForKeyedSubscript:@"locS"];

          v118 = v108;
          if (!v117)
          {
            goto LABEL_107;
          }
        }

        else
        {
          [sub_100019E60() setObject:? forKeyedSubscript:?];

          v116 = [v282 advertisementFields];
          v117 = [v116 objectForKeyedSubscript:@"locP"];

          v118 = v108;
          if (!v117)
          {
            goto LABEL_107;
          }
        }

        [sub_100019E60() setObject:? forKeyedSubscript:?];
LABEL_107:
        v9 = v280;
        v11 = v283;

        sub_100200B90();
        [SDProximityPairingBufferedScanner parseStatus3:"parseStatus3:productID:caseLEDColor:caseLEDStatus:" productID:v29 caseLEDColor:v18 caseLEDStatus:?];
        v120 = +[SFHeadphoneProduct airPodsMax];

        if (v291 == v120)
        {
          v123 = [NSNumber numberWithInt:v277 & 0x1F];
          sub_100035E1C();
          v122 = v272;
        }

        else
        {
          v121 = v18 == 8207 || v18 == 8194;
          v122 = v272;
          if (!v121)
          {
LABEL_116:
            if ([v291 supportsDigitalEngraving] && v284 - v265 >= 17)
            {
              v124 = [NSData dataWithBytes:v265 length:17];
              sub_100035E1C();
            }

            v125 = [NSNumber numberWithUnsignedChar:buf[0]];
            sub_100035E1C();

            v126 = [NSNumber numberWithUnsignedChar:v293];
            sub_100035E1C();

            v127 = [(SDProximityPairingBufferedScanner *)self modelWithProductID:v18];
            sub_100035E1C();

            v128 = [NSNumber numberWithUnsignedShort:v18];
            sub_100035E1C();

            [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ns"];
            if (v17)
            {
              [v283 objectForKeyedSubscript:WPPairingKeyDeviceAddress];
            }

            else
            {
              [NSData dataWithBytes:v263 length:6];
            }
            v129 = ;
            v130 = v276;
            sub_100021F1C();

            v42 = objc_alloc_init(NSMutableArray);
            if (!v287)
            {
              v131 = objc_alloc_init(SFBatteryInfo);
              v135 = sub_100008A24();
              v136 = sub_100019D28(v135, 0.0001);
              [v137 setBatteryLevel:v136];
              [v131 setBatteryState:v276];
              [v131 setBatteryType:4];
              goto LABEL_138;
            }

            if (v118)
            {
              v131 = objc_alloc_init(SFBatteryInfo);
              v132 = sub_100023FB4();
              v133 = sub_100019D28(v132, 0.0001);
              [v134 setBatteryLevel:v133];
              [v131 setBatteryState:v118];
              [v131 setBatteryType:1];
              [v42 addObject:v131];
              if (!(v276 | v122))
              {
                LOBYTE(v112) = 0x80;
                v130 = 2;
                v122 = 2;
                goto LABEL_129;
              }
            }

            else
            {
              v131 = 0;
            }

            if (!v276)
            {
LABEL_133:
              if (!v122)
              {
                goto LABEL_139;
              }

              v141 = objc_alloc_init(SFBatteryInfo);

              v142 = sub_10002A838();
              [v141 setBatteryLevel:{sub_100019D28(v142, 0.0001)}];
              [v141 setBatteryState:v122];
              if ((v112 & 0x80) != 0)
              {
                v143 = 3;
              }

              else
              {
                v143 = 2;
              }

              [v141 setBatteryType:v143];
              v131 = v141;
LABEL_138:
              [v42 addObject:v131];
LABEL_139:
              v10 = v282;
              sub_100021F1C();

LABEL_140:
              goto LABEL_298;
            }

LABEL_129:
            v138 = objc_alloc_init(SFBatteryInfo);

            v139 = sub_100008A24();
            [v138 setBatteryLevel:{sub_100019D28(v139, 0.0001)}];
            [v138 setBatteryState:v130];
            if ((v112 & 0x80) != 0)
            {
              v140 = 2;
            }

            else
            {
              v140 = 3;
            }

            [v138 setBatteryType:v140];
            [v42 addObject:v138];
            v131 = v138;
            goto LABEL_133;
          }

          v123 = [NSNumber numberWithInt:(v29 >> 4) & 1];
          sub_100035E1C();
        }

        goto LABEL_116;
      case 1:
        if (v15 < 0xA)
        {
          goto LABEL_301;
        }

        v50 = v14[7];
        v269 = v14[9];
        v261 = v14[8];
        if (v15 == 26)
        {
          v51 = v10;
          v52 = v9;
          v274 = 0;
          v264 = 0;
          v266 = 0;
          v53 = (v14 + 10);
          v54 = (v14 + 11);
          v55 = (v14 + 12);
          v56 = (v14 + 13);
          v258 = (v14 + 14);
          v259 = 0;
          v257 = (v14 + 17);
        }

        else
        {
          if (v15 < 0x17)
          {
            goto LABEL_301;
          }

          v51 = v10;
          v52 = v9;
          v274 = v14[10];
          v53 = (v14 + 13);
          LODWORD(v259) = v14[11];
          HIDWORD(v259) = v14[12];
          v54 = (v14 + 14);
          v55 = (v14 + 15);
          v56 = (v14 + 16);
          v257 = (v14 + 20);
          v258 = (v14 + 17);
          v264 = v14[23];
          v266 = v14[24];
        }

        v79 = *v56;
        v80 = *v55;
        v81 = *v54;
        v286 = *v53;
        v256 = v50;
        v279 = [SDProximityPairingBufferedScanner statusToHeadsetStatus:"statusToHeadsetStatus:forProductID:" forProductID:?];
        if ([(SDProximityPairingBufferedScanner *)self pairingUpdatePairedInfo:v52 fields:v16 bleDevice:v51])
        {
          if (v15 == 26 || !sub_1001FFBA8(v18))
          {
            v255 = 0;
          }

          else
          {
            if ((v286 & 0x20) != 0)
            {
              v83 = 2;
            }

            else
            {
              v83 = 1;
            }

            v255 = v83;
          }

          if (v81 == -1)
          {
            *(&v262 + 1) = 0;
          }

          else
          {
            v180 = v81 & 0x7F;
            if (v180 >= 0x64)
            {
              v180 = 100;
            }

            v82 = sub_100200B5C(v180);
            v181 = 1;
            if (v81 < 0)
            {
              v181 = 2;
            }

            *(&v262 + 1) = v181;
          }

          v9 = v52;
          if (v80 == -1)
          {
            *&v262 = 0;
          }

          else
          {
            v194 = v80 & 0x7F;
            if (v194 >= 0x64)
            {
              v194 = 100;
            }

            v82 = sub_100200B5C(v194);
            v195 = 1;
            if (v80 < 0)
            {
              v195 = 2;
            }

            *&v262 = v195;
          }

          v10 = v51;
          if (v79 == -1)
          {
            v260 = 0;
          }

          else
          {
            v196 = v79 & 0x7F;
            if (v196 >= 0x64)
            {
              v196 = 100;
            }

            v82 = sub_100200B5C(v196);
            v197 = 1;
            if (v79 < 0)
            {
              v197 = 2;
            }

            v260 = v197;
          }

          v193 = &NSURLAuthenticationMethodServerTrust_ptr;
          v198 = [NSNumber numberWithUnsignedChar:v82];
          sub_100200B44();

          v199 = [NSNumber numberWithInteger:v286 & 3];
          sub_100200B44();

          v200 = [NSData dataWithBytes:v257 length:3];
          sub_100035E1C();

          v201 = [NSData dataWithBytes:v258 length:3];
          sub_100035E1C();

          [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"paired"];
          v202 = [NSNumber numberWithUnsignedChar:v255];
          sub_100035E1C();

          v185 = self;
        }

        else
        {
          v93 = v261;
          v94 = v269;
          if ((v261 & 0xF) == 0xF)
          {
            *(&v262 + 1) = 0;
          }

          else
          {
            sub_100200B38();
            if (v155)
            {
              v182 = v183;
            }

            sub_10002FCE0(v182);
            v184 = 1;
            if ((v94 & 0x10) != 0)
            {
              v184 = 2;
            }

            *(&v262 + 1) = v184;
          }

          v9 = v52;
          v10 = v51;
          v185 = self;
          if (v93 >> 4 == 15)
          {
            *&v262 = 0;
          }

          else
          {
            sub_100200B38();
            if (v155)
            {
              v186 = v187;
            }

            sub_10002FCE0(v186);
            v188 = 1;
            if ((v94 & 0x20) != 0)
            {
              v188 = 2;
            }

            *&v262 = v188;
          }

          if ((v94 & 0xF) == 0xF)
          {
            v260 = 0;
          }

          else
          {
            sub_100200B38();
            if (v155)
            {
              v189 = v190;
            }

            sub_10002FCE0(v189);
            v192 = 1;
            if ((v191 & 0x40) != 0)
            {
              v192 = 2;
            }

            v260 = v192;
          }

          v193 = &NSURLAuthenticationMethodServerTrust_ptr;
        }

        v203 = [(SDProximityPairingBufferedScanner *)v185 modelWithProductID:v18];
        sub_100035E1C();

        v204 = [v193[258] numberWithUnsignedShort:v18];
        sub_100035E1C();

        if (v15 == 26)
        {
          goto LABEL_265;
        }

        sub_100200B90();
        [SDProximityPairingBufferedScanner parseStatus3:v185 productID:"parseStatus3:productID:caseLEDColor:caseLEDStatus:" caseLEDColor:v274 caseLEDStatus:v18];
        sub_100200BA4();
        if (v19 || (v205 = [[SFHeadphoneProduct alloc] initWithProductID:v18], v206 = objc_msgSend(v205, "hasSplitCaseColors"), v205, v206))
        {
          v207 = [v193[258] numberWithUnsignedChar:v259 & 0xF];
          sub_100200B44();

          v208 = [v193[258] numberWithUnsignedChar:v259 >> 4];
          sub_100035E1C();

          v209 = [v193[258] numberWithUnsignedChar:HIDWORD(v259) >> 5];
        }

        else
        {
          v210 = +[SFHeadphoneProduct airPodsMax];

          v211 = v193[258];
          if (v291 == v210)
          {
            [v211 numberWithInt:v259 & 0x1F];
          }

          else
          {
            [v211 numberWithUnsignedChar:v259];
          }
          v209 = ;
        }

        sub_100035E1C();

        v212 = +[SFHeadphoneProduct airPodsMax];

        if (v291 == v212)
        {
          v214 = v256 & 0x1F;
        }

        else
        {
          if (v18 != 8207)
          {
            sub_100200BA4();
            if (v19 || v18 == 8206)
            {
              goto LABEL_249;
            }

            if (v18 != 8194)
            {
LABEL_250:
              v217 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
              v216 = [v217 hasLid];

LABEL_251:
              if ((v274 & 0x80u) == 0)
              {
                v218 = 1;
              }

              else
              {
                v218 = v216;
              }

              v219 = v279;
              if (!v218)
              {
                v219 = v279 | 0x400;
              }

              v220 = [v193[258] numberWithInt:v274 & 7];
              v279 = v219;
              if ((v219 & 0x100) != 0)
              {
                [sub_100019E60() setObject:? forKeyedSubscript:?];

                v223 = [v10 advertisementFields];
                v222 = [v223 objectForKeyedSubscript:@"locS"];

                if (v222)
                {
LABEL_260:
                  [sub_100019E60() setObject:? forKeyedSubscript:?];
                }
              }

              else
              {
                [sub_100019E60() setObject:? forKeyedSubscript:?];

                v221 = [v10 advertisementFields];
                v222 = [v221 objectForKeyedSubscript:@"locP"];

                if (v222)
                {
                  goto LABEL_260;
                }
              }

              if ((v216 & ((v274 & 8) >> 3)) != 0)
              {
                v224 = &__kCFBooleanTrue;
              }

              else
              {
                v224 = &__kCFBooleanFalse;
              }

              [v16 setObject:v224 forKeyedSubscript:@"lc"];
              v225 = [v193[258] numberWithUnsignedChar:buf[0]];
              sub_100021F1C();

              v226 = [v193[258] numberWithUnsignedChar:v293];
              sub_100021F1C();

LABEL_265:
              v227 = v279;
              v228 = [v193[258] numberWithUnsignedInt:v279];
              sub_100021F1C();

              if ((v269 & 0x80) != 0)
              {
                v229 = [v193[258] numberWithUnsignedInt:2048];
                sub_100021F1C();
              }

              v290 = objc_alloc_init(NSMutableArray);
              v230 = v262;
              if (!v287)
              {
                if (!*(&v262 + 1))
                {
                  v232 = 0;
                  goto LABEL_286;
                }

                v232 = objc_alloc_init(SFBatteryInfo);
                v236 = sub_100008A24();
                v237 = sub_100019D28(v236, 0.0001);
                [v238 setBatteryLevel:v237];
                [v232 setBatteryState:*(&v262 + 1)];
                [v232 setBatteryType:4];
                goto LABEL_284;
              }

              v231 = *(&v262 + 1);
              if (v260)
              {
                v232 = objc_alloc_init(SFBatteryInfo);
                v233 = sub_100023FB4();
                v234 = sub_100019D28(v233, 0.0001);
                [v235 setBatteryLevel:v234];
                [v232 setBatteryState:v260];
                [v232 setBatteryType:1];
                [v290 addObject:v232];
                if (v262 == 0)
                {
                  v227 = 0x80;
                  v230 = 2;
                  v231 = 2;
                  goto LABEL_275;
                }
              }

              else
              {
                v232 = 0;
              }

              if (!*(&v262 + 1))
              {
LABEL_279:
                if (!v230)
                {
LABEL_286:
                  v245 = +[SFHeadphoneProduct airPodsMax];

                  if (v291 == v245)
                  {
                    if ((v259 & 0x1000000000) != 0)
                    {
                      v246 = &__kCFBooleanTrue;
                    }

                    else
                    {
                      v246 = &__kCFBooleanFalse;
                    }

                    [v16 setObject:v246 forKeyedSubscript:@"usbAudioConnected"];
                  }

                  [v16 setObject:v290 forKeyedSubscript:@"batteryInfo"];
                  if ((v286 & 0x40) != 0)
                  {
                    v247 = &__kCFBooleanTrue;
                  }

                  else
                  {
                    v247 = &__kCFBooleanFalse;
                  }

                  [v16 setObject:v247 forKeyedSubscript:@"srConnected"];
                  v248 = [v193[258] numberWithInt:v264 & 0xF];
                  [sub_100019E60() setObject:? forKeyedSubscript:?];

                  v249 = [v193[258] numberWithInt:v264 >> 4];
                  [sub_100019E60() setObject:? forKeyedSubscript:?];

                  v250 = [v193[258] numberWithInt:v266 & 3];
                  [sub_100019E60() setObject:? forKeyedSubscript:?];

                  v251 = [v193[258] numberWithInt:(v266 >> 2) & 3];
                  [sub_100019E60() setObject:? forKeyedSubscript:?];

                  if ((v266 & 0x10) != 0)
                  {
                    v252 = &__kCFBooleanTrue;
                  }

                  else
                  {
                    v252 = &__kCFBooleanFalse;
                  }

                  [v16 setObject:v252 forKeyedSubscript:@"primaryiCloudSignIn"];

                  goto LABEL_298;
                }

                v242 = objc_alloc_init(SFBatteryInfo);

                v243 = sub_10002A838();
                [v242 setBatteryLevel:{sub_100019D28(v243, 0.0001)}];
                [v242 setBatteryState:v230];
                if (v227 < 0)
                {
                  v244 = 3;
                }

                else
                {
                  v244 = 2;
                }

                [v242 setBatteryType:v244];
                v232 = v242;
LABEL_284:
                [v290 addObject:v232];
                goto LABEL_286;
              }

LABEL_275:
              v239 = objc_alloc_init(SFBatteryInfo);

              v240 = sub_100008A24();
              [v239 setBatteryLevel:{sub_100019D28(v240, 0.0001)}];
              [v239 setBatteryState:v231];
              if (v227 < 0)
              {
                v241 = 2;
              }

              else
              {
                v241 = 3;
              }

              [v239 setBatteryType:v241];
              [v290 addObject:v239];
              v232 = v239;
              goto LABEL_279;
            }
          }

          v214 = (v274 >> 4) & 1;
        }

        v215 = [v193[258] numberWithInt:v214];
        [sub_100019E60() setObject:? forKeyedSubscript:?];

        if (v18 - 8194) < 0xE && ((0x3201u >> (v18 - 2)))
        {
LABEL_249:
          v216 = 1;
          goto LABEL_251;
        }

        goto LABEL_250;
      case 4:
        v283 = v11;
        if (v15 < 0x1B)
        {
          goto LABEL_302;
        }

        v57 = v14[7];
        v278 = v14[8];
        v285 = v14[9];
        v58 = v14[10];
        v59 = v14[11];
        v275 = v14[12];
        *buf = *(v14 + 13);
        LOWORD(v296) = *(v14 + 17);
        v293 = *(v14 + 19);
        v294 = *(v14 + 23);
        v267 = v57;
        v270 = *(v14 + 25);
        v60 = [SDProximityPairingBufferedScanner statusToHeadsetStatus:"statusToHeadsetStatus:forProductID:" forProductID:?];
        v61 = [NSNumber numberWithUnsignedChar:v59];
        sub_100200B44();

        v62 = [NSNumber numberWithUnsignedInt:v60];
        sub_100200B44();

        if ((v58 & 8) != 0)
        {
          v63 = &__kCFBooleanTrue;
        }

        else
        {
          v63 = &__kCFBooleanFalse;
        }

        [v16 setObject:v63 forKeyedSubscript:@"lc"];
        v64 = [NSNumber numberWithInt:v58 & 7];
        v288 = v60;
        if ((v60 & 0x100) != 0)
        {
          sub_100200B44();

          v84 = [v10 advertisementFields];
          v66 = [v84 objectForKeyedSubscript:@"locS"];

          if (!v66)
          {
            goto LABEL_59;
          }
        }

        else
        {
          sub_100200B44();

          v65 = [v10 advertisementFields];
          v66 = [v65 objectForKeyedSubscript:@"locP"];

          if (!v66)
          {
            goto LABEL_59;
          }
        }

        sub_100200B44();
LABEL_59:
        v281 = v9;

        v292 = 0;
        [(SDProximityPairingBufferedScanner *)self parseStatus3:v58 productID:v18 caseLEDColor:&v292 + 1 caseLEDStatus:&v292];
        v85 = [v291 isAirPodsPro];
        v86 = +[SFHeadphoneProduct airPods];
        if ([v86 productID] == v18)
        {
          v87 = 1;
        }

        else
        {
          +[SFHeadphoneProduct airPodsSecondGeneration];
          v89 = v88 = v10;
          v87 = ([v89 productID] == v18) | v85;

          v10 = v88;
        }

        v90 = +[SFHeadphoneProduct airPodsMax];

        if (v291 == v90)
        {
          v92 = [NSNumber numberWithInt:v267 & 0x1F];
        }

        else
        {
          if ((v87 & 1) == 0)
          {
            goto LABEL_143;
          }

          if (v85)
          {
            v91 = (v58 >> 4) & 1 | 2;
          }

          else
          {
            v91 = (v58 >> 4) & 1;
          }

          v92 = [NSNumber numberWithUnsignedChar:v91];
        }

        sub_100035E1C();

LABEL_143:
        v144 = [NSNumber numberWithUnsignedChar:HIBYTE(v292)];
        sub_100035E1C();

        v145 = [NSNumber numberWithUnsignedChar:v292];
        sub_100035E1C();

        v146 = [(SDProximityPairingBufferedScanner *)self modelWithProductID:v18];
        sub_100035E1C();

        v147 = [NSNumber numberWithUnsignedShort:v18];
        sub_100035E1C();

        v148 = [NSNumber numberWithUnsignedShort:v270];
        sub_100035E1C();

        v149 = [NSData dataWithBytes:buf length:6];
        sub_100035E1C();

        v150 = [NSData dataWithBytes:&v293 length:6];
        sub_100035E1C();

        if (v275)
        {
          [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"notMyCase"];
        }

        v9 = v281;
        [(SDProximityPairingBufferedScanner *)self pairingUpdatePairedInfo:v281 fields:v16 bleDevice:v10];
        v151 = objc_alloc_init(NSMutableArray);
        if ((v285 & 0xF) == 0xF)
        {
          v152 = 0;
        }

        else
        {
          sub_100200B38();
          if (v155)
          {
            v153 = v154;
          }

          sub_10002FCE0(v153);
          if ((v156 & 0x40) != 0)
          {
            v152 = 2;
          }

          else
          {
            v152 = 1;
          }
        }

        v157 = v278;
        if ((v278 & 0xF) == 0xF)
        {
          v158 = 0;
        }

        else
        {
          sub_100200B38();
          if (v155)
          {
            v159 = v160;
          }

          sub_10002FCE0(v159);
          if ((v161 & 0x10) != 0)
          {
            v158 = 2;
          }

          else
          {
            v158 = 1;
          }
        }

        if (v157 >> 4 == 15)
        {
          v162 = 0;
        }

        else
        {
          sub_100200B38();
          if (v155)
          {
            v163 = v164;
          }

          sub_10002FCE0(v163);
          if ((v165 & 0x20) != 0)
          {
            v162 = 2;
          }

          else
          {
            v162 = 1;
          }
        }

        if (v152)
        {
          v166 = objc_alloc_init(SFBatteryInfo);
          v167 = sub_100023FB4();
          v168 = sub_100019D28(v167, 0.0001);
          [v169 setBatteryLevel:v168];
          [v166 setBatteryState:v152];
          [v166 setBatteryType:1];
          [v151 addObject:v166];
          if (!(v162 | v158))
          {
            v288 = 0x80;
            v158 = 2;
            v162 = 2;
          }
        }

        if (v158)
        {
          v170 = objc_alloc_init(SFBatteryInfo);
          v171 = sub_10002A838();
          v172 = sub_100019D28(v171, 0.0001);
          [v173 setBatteryLevel:v172];
          [v170 setBatteryState:v158];
          if (v288 < 0)
          {
            v174 = 2;
          }

          else
          {
            v174 = 3;
          }

          [v170 setBatteryType:v174];
          [v151 addObject:v170];
        }

        if (v162)
        {
          v175 = objc_alloc_init(SFBatteryInfo);
          v176 = sub_100008A24();
          v177 = sub_100019D28(v176, 0.0001);
          [v178 setBatteryLevel:v177];
          [v175 setBatteryState:v162];
          if (v288 < 0)
          {
            v179 = 3;
          }

          else
          {
            v179 = 2;
          }

          [v175 setBatteryType:v179];
          [v151 addObject:v175];
        }

        sub_100035E1C();

        v11 = v283;
        goto LABEL_298;
      case 5:
      case 9:
        v34 = v14 + 7;
        v35 = [NSNumber numberWithUnsignedShort:v18];
        sub_100021F1C();

        v36 = [(SDProximityPairingBufferedScanner *)self modelWithProductID:v18];
        sub_100021F1C();

        if (v15 != 7)
        {
          v34 = v14 + 8;
          v37 = [NSNumber numberWithUnsignedChar:v14[7]];
          sub_100021F1C();
        }

        if (v284 - v34 < 1)
        {
          goto LABEL_298;
        }

        v38 = *v34;
        v39 = [NSNumber numberWithInt:v38 & 3];
        sub_100021F1C();

        v40 = [NSNumber numberWithInt:(v38 >> 2) & 3];
        sub_100021F1C();

        if (&v284[~v34] < 1)
        {
          goto LABEL_298;
        }

        v41 = [NSNumber numberWithUnsignedChar:v34[1]];
        sub_100021F1C();

        if (v284 - v34 - 2 < 18)
        {
          goto LABEL_298;
        }

        v42 = [NSData dataWithBytes:v34 + 3 length:18];
        sub_100021F1C();
        goto LABEL_140;
      case 6:
        v43 = (v14 + 7);
        Int64 = CFDictionaryGetInt64();
        [(SDProximityPairingBufferedScanner *)self pairingUpdatePairedInfo:v9 fields:v16 bleDevice:v10];
        if (Int64)
        {
          v45 = [(SDProximityPairingBufferedScanner *)self modelWithProductID:v18];
          sub_100021F1C();

          v46 = [NSNumber numberWithUnsignedShort:v18];
          sub_100021F1C();

          v47 = [v11 objectForKeyedSubscript:WPPairingKeyDeviceAddress];
          sub_100021F1C();

          v48 = [NSNumber numberWithBool:1];
          sub_100021F1C();

          v49 = sub_10002F024();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v296 = v16;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "AccessoryStatus found: %@\n", buf, 0xCu);
          }

          [(SDProximityPairingBufferedScanner *)self pairingParseAccessoryStatusPayloadPtr:v43 end:v284 fields:v16];
        }

        goto LABEL_298;
      default:
        goto LABEL_299;
    }
  }

  v291 = 0;
LABEL_301:
  v25 = 0;
LABEL_299:
  v253 = v25;

  return v25;
}

- (BOOL)_updateCounterpart:(id)a3
{
  v4 = a3;
  v5 = [v4 bluetoothAddress];
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_devices;
    v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i), v17];
          v12 = v11;
          if (v11 == v4)
          {
            v13 = 0;
          }

          else
          {
            v13 = [v11 bluetoothAddress];
            if ([v13 isEqual:v5])
            {
              v14 = [v12 identifier];
              [v4 setCounterpartIdentifier:v14];

              v15 = 1;
              goto LABEL_14;
            }
          }
        }

        v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v15 = 0;
LABEL_14:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end