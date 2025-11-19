@interface InactiveWatchScanner
- (InactiveWatchScanner)initWithDelegate:(id)a3;
- (InactiveWatchScannerDelegate)delegate;
- (NSArray)inactiveWatches;
- (unsigned)activeWatchWristState;
- (void)dealloc;
- (void)highDutyCycleTimerFired;
- (void)invalidate;
- (void)scheduleHighDutyCycleScanningTimer;
- (void)shouldRollAdvertisingIdentifier;
- (void)startRunningWithInactiveWatches:(id)a3 activeWatchWristState:(unsigned __int8)a4;
- (void)startScanning;
- (void)stopRunning;
- (void)updateScanningState;
- (void)wiProxScannerFoundDevice:(id)a3 withData:(id)a4;
@end

@implementation InactiveWatchScanner

- (InactiveWatchScanner)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = InactiveWatchScanner;
  v5 = [(InactiveWatchScanner *)&v10 init];
  if (v5)
  {
    v6 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "InactiveWatchScanner --- Initializing (%p)", buf, 0xCu);
    }

    objc_storeWeak(&v5->_delegate, v4);
    v7 = [[WiProxScanner alloc] initWithDelegate:v5];
    wiProxScanner = v5->_wiProxScanner;
    v5->_wiProxScanner = v7;
  }

  return v5;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    [(InactiveWatchScanner *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = InactiveWatchScanner;
  [(InactiveWatchScanner *)&v3 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "InactiveWatchScanner --- Invalidating (%p)", &v5, 0xCu);
    }

    self->_invalidated = 1;
    objc_storeWeak(&self->_delegate, 0);
    if (self->_isRunning)
    {
      [(InactiveWatchScanner *)self stopRunning];
    }

    [(WiProxScanner *)self->_wiProxScanner invalidate];
    wiProxScanner = self->_wiProxScanner;
    self->_wiProxScanner = 0;
  }
}

- (void)startRunningWithInactiveWatches:(id)a3 activeWatchWristState:(unsigned __int8)a4
{
  v6 = a3;
  if (self->_isRunning)
  {
    v7 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Already running", &v10, 2u);
    }

    if (self->_isRunning)
    {
      [(InactiveWatchScanner *)self stopRunning];
    }
  }

  v8 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "InactiveWatchScanner --- Starting scanning for inactive watches: %@", &v10, 0xCu);
  }

  self->_isRunning = 1;
  inactiveWatches = self->_inactiveWatches;
  self->_inactiveWatches = v6;

  self->_activeWatchWristState = a4;
  [(InactiveWatchScanner *)self scheduleHighDutyCycleScanningTimer];
  [(InactiveWatchScanner *)self updateScanningState];
}

- (void)stopRunning
{
  if (self->_isRunning)
  {
    v7 = v2;
    v8 = v3;
    v5 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "InactiveWatchScanner --- Stopping scanning for inactive watches", v6, 2u);
    }

    self->_isRunning = 0;
    [(InactiveWatchScanner *)self updateScanningState];
  }
}

- (NSArray)inactiveWatches
{
  if (!self->_isRunning)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not running", v6, 2u);
    }
  }

  inactiveWatches = self->_inactiveWatches;

  return inactiveWatches;
}

- (unsigned)activeWatchWristState
{
  if (!self->_isRunning)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not running", v5, 2u);
    }
  }

  return self->_activeWatchWristState;
}

- (void)updateScanningState
{
  v3 = [(WiProxScanner *)self->_wiProxScanner isScanning];
  v4 = [(WiProxScanner *)self->_wiProxScanner isPoweredOn];
  if (self->_isRunning && (v4 & 1) != 0)
  {
    if ((v3 & 1) == 0)
    {

      [(InactiveWatchScanner *)self startScanning];
    }
  }

  else
  {
    if (v3)
    {
      [(WiProxScanner *)self->_wiProxScanner stopScanning];
    }

    advertisingIdentifierManager = self->_advertisingIdentifierManager;
    if (advertisingIdentifierManager)
    {
      [(AdvertisingIdentifierManager *)advertisingIdentifierManager invalidate];
      v6 = self->_advertisingIdentifierManager;
      self->_advertisingIdentifierManager = 0;
    }

    highDutyCycleScanningTimer = self->_highDutyCycleScanningTimer;
    if (highDutyCycleScanningTimer)
    {
      [(AbstractTimer *)highDutyCycleScanningTimer invalidate];
      v8 = self->_highDutyCycleScanningTimer;
      self->_highDutyCycleScanningTimer = 0;
    }
  }
}

- (void)scheduleHighDutyCycleScanningTimer
{
  if (self->_highDutyCycleScanningTimer)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Timer already scheduled", buf, 2u);
    }
  }

  if ([(WiProxScanner *)self->_wiProxScanner isScanning])
  {
    v4 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Already scanning", buf, 2u);
    }
  }

  v5 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "InactiveWatchScanner --- Scheduling high duty cycle scanning timer", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = [NSString stringWithUTF8String:"com.apple.magicswitchd.highDutyScanning"];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000262C;
  v9[3] = &unk_1000184D0;
  objc_copyWeak(&v10, buf);
  v7 = [TimerFactory timerWithIdentifier:v6 delay:1 gracePeriod:v9 waking:30.0 handlerBlock:0.0];
  highDutyCycleScanningTimer = self->_highDutyCycleScanningTimer;
  self->_highDutyCycleScanningTimer = v7;

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)highDutyCycleTimerFired
{
  if (!self->_highDutyCycleScanningTimer)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Timer not scheduled", buf, 2u);
    }
  }

  v4 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "InactiveWatchScanner --- High duty cycle scanning timer fired!", v6, 2u);
  }

  highDutyCycleScanningTimer = self->_highDutyCycleScanningTimer;
  self->_highDutyCycleScanningTimer = 0;

  [(WiProxScanner *)self->_wiProxScanner stopScanning];
  [(InactiveWatchScanner *)self updateScanningState];
}

- (void)startScanning
{
  if ([(WiProxScanner *)self->_wiProxScanner isScanning])
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Already scanning", buf, 2u);
    }
  }

  v4 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "InactiveWatchScanner --- Starting scanning", v19, 2u);
  }

  v18 = 0;
  v17 = 0;
  advertisingIdentifierManager = self->_advertisingIdentifierManager;
  if (!advertisingIdentifierManager)
  {
    v6 = [AdvertisingIdentifierManager alloc];
    v7 = +[NRMagicSwitchHelper companionSeed];
    v8 = [(AdvertisingIdentifierManager *)v6 initWithDelegate:self seed:v7];
    v9 = self->_advertisingIdentifierManager;
    self->_advertisingIdentifierManager = v8;

    advertisingIdentifierManager = self->_advertisingIdentifierManager;
  }

  v10 = self->_activeWatchWristState + 1;
  v11 = self->_highDutyCycleScanningTimer != 0;
  v12 = [(AdvertisingIdentifierManager *)advertisingIdentifierManager advertisingIdentifier];
  [v12 getBytes:&v17 length:2];
  LOBYTE(v17) = v17 & 0xFE;
  v18 = v10;
  v13 = [NSData dataWithBytes:&v17 length:3];
  v15 = -1;
  v16 = v10;
  v14 = [NSData dataWithBytes:&v15 length:3];
  [(WiProxScanner *)self->_wiProxScanner startScanningWithHighDutyCycle:v11 filteredPeers:self->_inactiveWatches filteringBlob:v13 filteringMask:v14];
}

- (void)wiProxScannerFoundDevice:(id)a3 withData:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length] >= 3)
  {
    v9 = 0;
    [v7 getBytes:&v9 range:{2, 1}];
    if (v9 > self->_activeWatchWristState)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained didDiscoverInactiveWatch:v6 withWristState:v9];
    }
  }
}

- (void)shouldRollAdvertisingIdentifier
{
  if (![(WiProxScanner *)self->_wiProxScanner isScanning])
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not scanning", buf, 2u);
    }
  }

  v4 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "InactiveWatchScanner --- Rolling the advertising identifier", v5, 2u);
  }

  [(WiProxScanner *)self->_wiProxScanner stopScanning];
  [(InactiveWatchScanner *)self updateScanningState];
}

- (InactiveWatchScannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end