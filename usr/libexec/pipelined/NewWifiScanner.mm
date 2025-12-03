@interface NewWifiScanner
+ (duration<long)expectedScanDuration:(id)duration;
- (BOOL)sensorPresent;
- (NewWifiScanner)initWithDelegate:(id)delegate;
- (NewWifiScanner)initWithPlatform:(id)platform andTimer:(id)timer andDelegate:(id)delegate;
- (WifiScannerDelegateProtocol)delegate;
- (void)dealloc;
- (void)invalidate;
- (void)onQueueHandleScan:(id)scan forSettings:(id)settings;
- (void)onQueueHandleScanFailed:(id)failed forSettings:(id)settings;
- (void)onQueueHandleScanTimer;
- (void)onQueueInvalidate;
- (void)onQueueScanAfter:(duration<long)long;
- (void)onQueueScheduleScanFromSettingsWithFailure:(BOOL)failure;
- (void)onQueueStartScanning;
- (void)onQueueStopScanning;
- (void)startListeningCachedScans;
- (void)startScanning;
- (void)stopListeningCachedScans;
- (void)stopScanning;
- (void)wifiCachedScanResult:(id)result withSettings:(id)settings;
- (void)wifiScanFailed:(id)failed withSettings:(id)settings;
- (void)wifiScanResult:(id)result withSettings:(id)settings;
@end

@implementation NewWifiScanner

+ (duration<long)expectedScanDuration:(id)duration
{
  durationCopy = duration;
  dwell = [durationCopy dwell];
  channels = [durationCopy channels];
  v6 = 1000000 * dwell * [channels count];

  return v6;
}

- (NewWifiScanner)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = objc_alloc_init(WifiScannerBackend);
  v6 = [(NewWifiScanner *)self initWithPlatform:v5 andTimer:0 andDelegate:delegateCopy];

  return v6;
}

- (NewWifiScanner)initWithPlatform:(id)platform andTimer:(id)timer andDelegate:(id)delegate
{
  platformCopy = platform;
  timerCopy = timer;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = NewWifiScanner;
  v12 = [(NewWifiScanner *)&v25 init];
  v13 = v12;
  v14 = v12;
  if (!v12)
  {
    goto LABEL_10;
  }

  if (!delegateCopy)
  {
    v21 = @"delegate for scanner is nil";
    goto LABEL_14;
  }

  if (!platformCopy)
  {
    v21 = @"scanning backend is nil";
LABEL_14:
    v22 = [NSException exceptionWithName:NSInvalidArgumentException reason:v21 userInfo:0];
    objc_exception_throw(v22);
  }

  objc_storeWeak(&v12->_delegate, delegateCopy);
  v15 = objc_alloc_init(WifiScannerSettings);
  scanSettings = v14->_scanSettings;
  v14->_scanSettings = v15;

  if (v14->_scanSettings && (v17 = dispatch_queue_create("com.apple.wifiscanner", 0), wifiScanQueue = v14->_wifiScanQueue, v14->_wifiScanQueue = v17, wifiScanQueue, v14->_wifiScanQueue))
  {
    objc_storeStrong(&v13->_platform, platform);
    [(WifiScannerBackendProtocol *)v14->_platform setDelegate:v14];
    objc_initWeak(location, v14);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1002FDFCC;
    v23[3] = &unk_1004488F0;
    objc_copyWeak(&v24, location);
    v19 = objc_retainBlock(v23);
    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
    if (!timerCopy)
    {
      timerCopy = [[DispatchMonotonicTimer alloc] initWithName:@"com.apple.wifiscanner.timer"];
      if (!timerCopy)
      {
        sub_100014A08(location, "");
        sub_10038523C(__p, location);
        sub_10003F5D0(__p);
      }
    }

    objc_storeStrong(&v13->_scanTimer, timerCopy);
    [(MonotonicTimerProtocol *)v14->_scanTimer setEventHandler:v19 onQueue:v14->_wifiScanQueue];
    [(MonotonicTimerProtocol *)v13->_scanTimer setDelay:0x7FFFFFFFFFFFFFFFLL];
    [(MonotonicTimerProtocol *)v13->_scanTimer setInterval:0x7FFFFFFFFFFFFFFFLL];
    v14->_scansInProgress = 0;
    v13 = v14;
  }

  else
  {
    v13 = 0;
  }

LABEL_10:

  return v13;
}

- (void)dealloc
{
  if (qword_10045B050 != -1)
  {
    sub_10038726C();
  }

  v3 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "wifi scanner %p: dealloc", buf, 0xCu);
  }

  [(NewWifiScanner *)self onQueueInvalidate];
  [(WifiScannerBackendProtocol *)self->_platform invalidate];
  v4.receiver = self;
  v4.super_class = NewWifiScanner;
  [(NewWifiScanner *)&v4 dealloc];
}

- (void)invalidate
{
  if (qword_10045B050 != -1)
  {
    sub_10038726C();
  }

  v3 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "wifi scanner %p: invalidate everything", &buf, 0xCu);
  }

  dispatch_assert_queue_not_V2(self->_wifiScanQueue);
  wifiScanQueue = self->_wifiScanQueue;
  selfCopy = self;
  v7 = selfCopy;
  v6 = wifiScanQueue;
  std::promise<void>::promise(&v9);
  std::promise<void>::get_future(&v9);
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v11 = sub_100300360;
  v12 = &unk_1004406E8;
  v13 = &v7;
  v14 = &v9;
  dispatch_sync(v6, &buf);
  std::future<void>::get(&v8);
  std::future<void>::~future(&v8);
  std::promise<void>::~promise(&v9);

  [(WifiScannerBackendProtocol *)selfCopy->_platform invalidate];
}

- (void)onQueueInvalidate
{
  if (qword_10045B050 != -1)
  {
    sub_10038726C();
  }

  v3 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "wifi scanner %p: invalidate timer", &v8, 0xCu);
  }

  if (self->_scansInProgress > 0 || ![(NewWifiScanner *)self scanning])
  {
    scanTimer = [(NewWifiScanner *)self scanTimer];
    [scanTimer setDelay:0x7FFFFFFFFFFFFFFFLL];

    scanTimer2 = [(NewWifiScanner *)self scanTimer];
    [scanTimer2 setInterval:0x7FFFFFFFFFFFFFFFLL];

    scanTimer3 = [(NewWifiScanner *)self scanTimer];
    [scanTimer3 resume];
  }

  scanTimer4 = [(NewWifiScanner *)self scanTimer];
  [scanTimer4 invalidate];

  [(NewWifiScanner *)self setScanTimer:0];
}

- (BOOL)sensorPresent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  wifiScanQueue = self->_wifiScanQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002FE530;
  v5[3] = &unk_100448918;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(wifiScanQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)startListeningCachedScans
{
  wifiScanQueue = self->_wifiScanQueue;
  selfCopy = self;
  v3 = wifiScanQueue;
  v4 = std::promise<void>::promise(&v8);
  std::promise<void>::get_future(v4);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003003F0;
  block[3] = &unk_1004406E8;
  block[4] = &selfCopy;
  block[5] = &v8;
  dispatch_sync(v3, block);
  std::future<void>::get(&v7);
  std::future<void>::~future(&v7);
  std::promise<void>::~promise(&v8);
}

- (void)stopListeningCachedScans
{
  wifiScanQueue = self->_wifiScanQueue;
  selfCopy = self;
  v3 = wifiScanQueue;
  v4 = std::promise<void>::promise(&v8);
  std::promise<void>::get_future(v4);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003004A0;
  block[3] = &unk_1004406E8;
  block[4] = &selfCopy;
  block[5] = &v8;
  dispatch_sync(v3, block);
  std::future<void>::get(&v7);
  std::future<void>::~future(&v7);
  std::promise<void>::~promise(&v8);
}

- (void)startScanning
{
  wifiScanQueue = self->_wifiScanQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FE81C;
  block[3] = &unk_100432828;
  block[4] = self;
  dispatch_sync(wifiScanQueue, block);
}

- (void)stopScanning
{
  wifiScanQueue = self->_wifiScanQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FE8D4;
  block[3] = &unk_100432828;
  block[4] = self;
  dispatch_sync(wifiScanQueue, block);
}

- (void)onQueueHandleScanTimer
{
  if ([(NewWifiScanner *)self scanning])
  {
    delegate = [(NewWifiScanner *)self delegate];
    if (delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate wifiScanInitiating];
      }

      if (qword_10045B050 != -1)
      {
        sub_10038726C();
      }

      v4 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "scan timer tick - %p requesting scan & pausing timer", buf, 0xCu);
      }

      if (self->_scansInProgress)
      {
        if (qword_10045B050 != -1)
        {
          sub_100387280();
        }

        v5 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "scan already in progress, ignoring scan timer firing", buf, 2u);
        }
      }

      else
      {
        platform = self->_platform;
        scanSettings = self->_scanSettings;
        v13 = _NSConcreteStackBlock;
        v14 = 3321888768;
        v15 = sub_1002FEC24;
        v16 = &unk_100448938;
        selfCopy2 = self;
        v11 = delegate;
        v12 = selfCopy2;
        v17 = v12;
        v18 = v11;
        [(WifiScannerBackendProtocol *)platform scanAsync:scanSettings initiated:&v13];

        ++self->_scansInProgress;
        [v12[3] pause];
      }
    }

    else
    {
      if (qword_10045B050 != -1)
      {
        sub_10038726C();
      }

      v7 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "delegate disappeared while running - stopping scanning", buf, 2u);
      }

      [(NewWifiScanner *)self onQueueStopScanning];
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_10038726C();
    }

    v6 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "ignoring scan tick - scanning stopped", buf, 2u);
    }
  }
}

- (void)wifiScanResult:(id)result withSettings:(id)settings
{
  resultCopy = result;
  settingsCopy = settings;
  wifiScanQueue = self->_wifiScanQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FEF2C;
  block[3] = &unk_100448970;
  block[4] = self;
  v12 = resultCopy;
  v13 = settingsCopy;
  v9 = settingsCopy;
  v10 = resultCopy;
  dispatch_sync(wifiScanQueue, block);
}

- (void)wifiCachedScanResult:(id)result withSettings:(id)settings
{
  resultCopy = result;
  settingsCopy = settings;
  wifiScanQueue = self->_wifiScanQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FF038;
  block[3] = &unk_100448970;
  block[4] = self;
  v12 = resultCopy;
  v13 = settingsCopy;
  v9 = settingsCopy;
  v10 = resultCopy;
  dispatch_sync(wifiScanQueue, block);
}

- (void)wifiScanFailed:(id)failed withSettings:(id)settings
{
  failedCopy = failed;
  settingsCopy = settings;
  wifiScanQueue = self->_wifiScanQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FF148;
  block[3] = &unk_100448970;
  v12 = settingsCopy;
  v13 = failedCopy;
  selfCopy = self;
  v9 = failedCopy;
  v10 = settingsCopy;
  dispatch_sync(wifiScanQueue, block);
}

- (void)onQueueScheduleScanFromSettingsWithFailure:(BOOL)failure
{
  failureCopy = failure;
  if (qword_10045B050 != -1)
  {
    sub_10038726C();
  }

  v5 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "scheduling next scan", &v18, 2u);
  }

  if (failureCopy)
  {
    channels = [(WifiScannerSettings *)self->_scanSettings channels];
    v7 = [channels count];
    v8.__rep_ = [(WifiScannerSettings *)self->_scanSettings dwell];

    v9 = 1000000 * v7 * v8.__rep_;
  }

  else
  {
    v9 = 0;
  }

  delegate = [(NewWifiScanner *)self delegate];
  [delegate updateWifiSettingsForNextScan:self->_scanSettings];
  channels2 = [(WifiScannerSettings *)self->_scanSettings channels];
  v12 = [channels2 count];
  v13.__rep_ = [(WifiScannerSettings *)self->_scanSettings dwell];
  [(WifiScannerSettings *)self->_scanSettings dutyCycle];
  v15 = sub_1000E075C(v13.__rep_ * v12, v14);

  if (qword_10045B050 != -1)
  {
    sub_100387280();
  }

  v16 = v15 + v9;
  v17 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    v18 = 134217984;
    v19 = v16 / 1000000.0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "scheduling another scan in %lf ms", &v18, 0xCu);
  }

  [(NewWifiScanner *)self onQueueScanAfter:v16];
}

- (void)onQueueScanAfter:(duration<long)long
{
  if ([(NewWifiScanner *)self scanning])
  {
    if (self->_scansInProgress < 1)
    {
      if (qword_10045B050 != -1)
      {
        sub_10038726C();
      }

      v7 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        v8 = 134217984;
        v9 = a3.__rep_ / 1000000;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Starting scan timer to run in %lldms", &v8, 0xCu);
      }

      [(MonotonicTimerProtocol *)self->_scanTimer setDelay:a3.__rep_];
      [(MonotonicTimerProtocol *)self->_scanTimer resume];
    }

    else
    {
      if (qword_10045B050 != -1)
      {
        sub_10038726C();
      }

      v5 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v8) = 0;
        v6 = "not scheduling new scan while scan still in progress; next will schedule when previous one returns or fails";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, &v8, 2u);
      }
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_10038726C();
    }

    v5 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      v6 = "attempt to scan while stopped";
      goto LABEL_11;
    }
  }
}

- (void)onQueueHandleScan:(id)scan forSettings:(id)settings
{
  scanCopy = scan;
  settingsCopy = settings;
  if ([settingsCopy cachedScan])
  {
    if (qword_10045B050 != -1)
    {
      sub_10038726C();
    }

    v8 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Got cached scan from backend", &v16, 2u);
    }

    if (!scanCopy)
    {
LABEL_13:
      if (qword_10045B050 != -1)
      {
        sub_100387280();
      }

      v10 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "unexpected nil result from scanning platform", &v16, 2u);
      }

      scanCopy = &__NSArray0__struct;
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_10038726C();
    }

    v9 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Got completed scan from backend", &v16, 2u);
    }

    --self->_scansInProgress;
    if (!scanCopy)
    {
      goto LABEL_13;
    }
  }

  if ([(NewWifiScanner *)self scanning])
  {
    delegate = [(NewWifiScanner *)self delegate];
    if (delegate)
    {
      if (qword_10045B050 != -1)
      {
        sub_100387280();
      }

      v12 = qword_10045B058;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [scanCopy count];
        v16 = 134217984;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "notifying delegate of %zu scan results", &v16, 0xCu);
      }

      [delegate wifiScanData:scanCopy forSettings:settingsCopy];
      if (([settingsCopy cachedScan] & 1) == 0)
      {
        [(NewWifiScanner *)self onQueueScheduleScanFromSettingsWithFailure:0];
      }
    }

    else
    {
      if (qword_10045B050 != -1)
      {
        sub_100387280();
      }

      v15 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "WARNING: got scan but delegate is nil - stopping", &v16, 2u);
      }

      [(NewWifiScanner *)self onQueueStopScanning];
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100387280();
    }

    v14 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "got a scan result but no longer scanning", &v16, 2u);
    }
  }
}

- (void)onQueueHandleScanFailed:(id)failed forSettings:(id)settings
{
  failedCopy = failed;
  settingsCopy = settings;
  if ([settingsCopy cachedScan])
  {
    if (qword_10045B050 != -1)
    {
      sub_10038726C();
    }

    v8 = qword_10045B058;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v22 = 67109120;
      LODWORD(v23[0]) = [failedCopy code];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "cached scan failed with %d", &v22, 8u);
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_10038726C();
    }

    v9 = qword_10045B058;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v22 = 67109120;
      LODWORD(v23[0]) = [failedCopy code];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "our scan failed with %d", &v22, 8u);
    }

    --self->_scansInProgress;
  }

  if ([(NewWifiScanner *)self scanning])
  {
    if ([failedCopy code] == 82)
    {
      if (qword_10045B050 != -1)
      {
        sub_100387280();
      }

      v10 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "scan failed because wifi is powered off", &v22, 2u);
      }
    }

    else
    {
      settings = [settingsCopy settings];
      lowPriorityScan = [settings lowPriorityScan];

      if (lowPriorityScan)
      {
        if (qword_10045B050 != -1)
        {
          sub_100387280();
        }

        v15 = qword_10045B058;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          code = [failedCopy code];
          v17 = [failedCopy description];
          v22 = 67109378;
          LODWORD(v23[0]) = code;
          WORD2(v23[0]) = 2112;
          *(v23 + 6) = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "WARNING: got an error (%d) initiating a scan: %@", &v22, 0x12u);
        }
      }

      else
      {
        if (qword_10045B050 != -1)
        {
          sub_100387280();
        }

        v15 = qword_10045B058;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          code2 = [failedCopy code];
          v19 = [failedCopy description];
          v22 = 67109378;
          LODWORD(v23[0]) = code2;
          WORD2(v23[0]) = 2112;
          *(v23 + 6) = v19;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "got an error (%d) initiating a scan: %@", &v22, 0x12u);
        }
      }
    }

    delegate = [(NewWifiScanner *)self delegate];
    v11 = delegate;
    if (delegate)
    {
      [delegate wifiScanFailed:settingsCopy];
      if (([settingsCopy cachedScan] & 1) == 0)
      {
        [(NewWifiScanner *)self onQueueScheduleScanFromSettingsWithFailure:1];
      }
    }

    else
    {
      if (qword_10045B050 != -1)
      {
        sub_100387280();
      }

      v21 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "WARNING: got scan failure but delegate is nil - stopping", &v22, 2u);
      }

      [(NewWifiScanner *)self onQueueStopScanning];
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100387280();
    }

    v11 = qword_10045B058;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [failedCopy description];
      v22 = 138412290;
      v23[0] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "got an error: %@, but not scanning anymore", &v22, 0xCu);
    }
  }
}

- (void)onQueueStartScanning
{
  if ([(NewWifiScanner *)self scanning])
  {
    if (qword_10045B050 != -1)
    {
      sub_10038726C();
    }

    v3 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "WARNING: Already scanning", &v8, 2u);
    }
  }

  else
  {
    delegate = [(NewWifiScanner *)self delegate];
    if (delegate)
    {
      if (qword_10045B050 != -1)
      {
        sub_10038726C();
      }

      v5 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        v8 = 134217984;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "wifi scanner %p: start scanning", &v8, 0xCu);
      }

      [(NewWifiScanner *)self setScanning:1];
      [delegate updateWifiSettingsForNextScan:self->_scanSettings];
      if (qword_10045B050 != -1)
      {
        sub_100387280();
      }

      v6 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "starting scan timer", &v8, 2u);
      }

      [(NewWifiScanner *)self onQueueScanAfter:0];
    }

    else
    {
      if (qword_10045B050 != -1)
      {
        sub_10038726C();
      }

      v7 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "No delegate - cannot start scanning", &v8, 2u);
      }
    }
  }
}

- (void)onQueueStopScanning
{
  if ([(NewWifiScanner *)self scanning])
  {
    if (!self->_scansInProgress)
    {
      [(MonotonicTimerProtocol *)self->_scanTimer pause];
    }

    if (qword_10045B050 != -1)
    {
      sub_10038726C();
    }

    v3 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "wifi scanner %p: stop scanning", &v6, 0xCu);
    }

    [(MonotonicTimerProtocol *)self->_scanTimer setDelay:0x7FFFFFFFFFFFFFFFLL];
    [(NewWifiScanner *)self setScanning:0];
    if (qword_10045B050 != -1)
    {
      sub_100387280();
    }

    v4 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      v5 = "scan timer stopped";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v5, &v6, 2u);
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_10038726C();
    }

    v4 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      v5 = "WARNING: Already not scanning";
      goto LABEL_16;
    }
  }
}

- (WifiScannerDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end