@interface WiProxScanner
- (BOOL)highDutyCycle;
- (NSArray)filteredPeers;
- (NSData)filteringBlob;
- (WiProxScanner)initWithDelegate:(id)delegate;
- (WiProxScannerDelegate)delegate;
- (void)dealloc;
- (void)invalidate;
- (void)magicSwitch:(id)switch failedToStartScanningWithError:(id)error;
- (void)magicSwitch:(id)switch foundDevice:(id)device withData:(id)data;
- (void)magicSwitchDidUpdateState:(id)state;
- (void)magicSwitchStartedScanning:(id)scanning;
- (void)magicSwitchStoppedScanning:(id)scanning;
- (void)startScanningWithHighDutyCycle:(BOOL)cycle filteredPeers:(id)peers filteringBlob:(id)blob filteringMask:(id)mask;
- (void)stopScanning;
@end

@implementation WiProxScanner

- (WiProxScanner)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = WiProxScanner;
  v5 = [(WiProxScanner *)&v13 init];
  if (v5)
  {
    v6 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WiProxScanner --- Initializing (%p)", buf, 0xCu);
    }

    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = [WPMagicSwitch alloc];
    v8 = +[MagicSwitchEnabler sharedInstance];
    workQueue = [v8 workQueue];
    v10 = [v7 initWithDelegate:v5 queue:workQueue];
    wirelessProximityManager = v5->_wirelessProximityManager;
    v5->_wirelessProximityManager = v10;
  }

  return v5;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    [(WiProxScanner *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = WiProxScanner;
  [(WiProxScanner *)&v3 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WiProxScanner --- Invalidating (%p)", &v5, 0xCu);
    }

    self->_invalidated = 1;
    objc_storeWeak(&self->_delegate, 0);
    if (self->_isScanning)
    {
      [(WiProxScanner *)self stopScanning];
    }

    [(WPMagicSwitch *)self->_wirelessProximityManager setDelegate:0];
    [(WPMagicSwitch *)self->_wirelessProximityManager invalidate];
    wirelessProximityManager = self->_wirelessProximityManager;
    self->_wirelessProximityManager = 0;
  }
}

- (void)startScanningWithHighDutyCycle:(BOOL)cycle filteredPeers:(id)peers filteringBlob:(id)blob filteringMask:(id)mask
{
  cycleCopy = cycle;
  peersCopy = peers;
  blobCopy = blob;
  maskCopy = mask;
  if (self->_isScanning)
  {
    v14 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Already scanning", &v22, 2u);
    }
  }

  if (![peersCopy count])
  {
    v15 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No filtered peers", &v22, 2u);
    }
  }

  if ([blobCopy length] >= 0x17)
  {
    v16 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Blob too large", &v22, 2u);
    }
  }

  if ([maskCopy length] >= 0x17)
  {
    v17 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Mask too large", &v22, 2u);
    }
  }

  if (!self->_isScanning)
  {
    self->_isScanning = 1;
    self->_highDutyCycle = cycleCopy;
    objc_storeStrong(&self->_filteredPeers, peers);
    objc_storeStrong(&self->_filteringBlob, blob);
    objc_storeStrong(&self->_filteringMask, mask);
    if (cycleCopy)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    v24[0] = WPMagicSwitchScanBlobData;
    v24[1] = WPMagicSwitchScanMaskData;
    v25[0] = blobCopy;
    v25[1] = maskCopy;
    v24[2] = WPMagicSwitchScanDutyCycle;
    v19 = [NSNumber numberWithInteger:v18];
    v24[3] = WPMagicSwitchScanPeers;
    v25[2] = v19;
    v25[3] = peersCopy;
    v20 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];

    v21 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "WiProxScanner --- Telling WirelessProximity to start scanning with options: (%@)", &v22, 0xCu);
    }

    [(WPMagicSwitch *)self->_wirelessProximityManager startScanningWithData:v20];
  }
}

- (void)stopScanning
{
  if (self->_isScanning)
  {
    goto LABEL_5;
  }

  v3 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not scanning", buf, 2u);
  }

  if (self->_isScanning)
  {
LABEL_5:
    self->_isScanning = 0;
    v4 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WiProxScanner --- Telling WirelessProximity to stop scanning", v5, 2u);
    }

    [(WPMagicSwitch *)self->_wirelessProximityManager stopScanning];
  }
}

- (BOOL)highDutyCycle
{
  if (!self->_isScanning)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not scanning", v5, 2u);
    }
  }

  return self->_highDutyCycle;
}

- (NSArray)filteredPeers
{
  if (!self->_isScanning)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not scanning", v6, 2u);
    }
  }

  filteredPeers = self->_filteredPeers;

  return filteredPeers;
}

- (NSData)filteringBlob
{
  if (!self->_isScanning)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not scanning", v6, 2u);
    }
  }

  filteringBlob = self->_filteringBlob;

  return filteringBlob;
}

- (void)magicSwitchDidUpdateState:(id)state
{
  stateCopy = state;
  wirelessProximityManager = self->_wirelessProximityManager;
  if (wirelessProximityManager != stateCopy)
  {
    v6 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unknown WPMagicSwitch", &v12, 2u);
    }

    wirelessProximityManager = self->_wirelessProximityManager;
  }

  state = [(WPMagicSwitch *)wirelessProximityManager state];
  v8 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [WPClient stateAsString:state];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WiProxScanner --- WPMagicSwitch did update state (%@)", &v12, 0xCu);
  }

  if (state <= 2)
  {
    if (state == 2)
    {
      if (self->_isScanning)
      {
        [(WiProxScanner *)self stopScanning];
      }
    }

    else
    {
      self->_isScanning = 0;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained wiProxScannerChangedState];
}

- (void)magicSwitchStartedScanning:(id)scanning
{
  scanningCopy = scanning;
  if (self->_wirelessProximityManager != scanningCopy)
  {
    v5 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unknown WPMagicSwitch", buf, 2u);
    }
  }

  v6 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WiProxScanner --- WPMagicSwitch started scanning", v7, 2u);
  }
}

- (void)magicSwitchStoppedScanning:(id)scanning
{
  scanningCopy = scanning;
  if (self->_wirelessProximityManager != scanningCopy)
  {
    v5 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unknown WPMagicSwitch", buf, 2u);
    }
  }

  v6 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WiProxScanner --- WPMagicSwitch stopped scanning", v7, 2u);
  }
}

- (void)magicSwitch:(id)switch failedToStartScanningWithError:(id)error
{
  switchCopy = switch;
  errorCopy = error;
  if (self->_wirelessProximityManager != switchCopy)
  {
    v8 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unknown WPMagicSwitch", &v10, 2u);
    }
  }

  v9 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WiProxScanner --- WPMagicSwitch failed to start scanning with error: (%@)", &v10, 0xCu);
  }
}

- (void)magicSwitch:(id)switch foundDevice:(id)device withData:(id)data
{
  switchCopy = switch;
  deviceCopy = device;
  dataCopy = data;
  if (self->_wirelessProximityManager != switchCopy)
  {
    v11 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unknown WPMagicSwitch", &v18, 2u);
    }
  }

  v12 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    uUIDString = [deviceCopy UUIDString];
    v18 = 138412546;
    v19 = uUIDString;
    v20 = 2112;
    v21 = dataCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WiProxScanner --- WPMagicSwitch discovered peripheral (%@); data: (%@)", &v18, 0x16u);
  }

  if (self->_isScanning)
  {
    v15 = [dataCopy objectForKey:WPMagicSwitchAdvertisingData];
    if (v15)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained wiProxScannerFoundDevice:deviceCopy withData:v15];
    }
  }

  else
  {
    v17 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "WiProxScanner --- WPMagicSwitch early return because NOT scanning", &v18, 2u);
    }
  }
}

- (WiProxScannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end