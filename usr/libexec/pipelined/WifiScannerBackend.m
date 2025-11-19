@interface WifiScannerBackend
+ (id)copySupportedChannelDicts:(__WiFiDeviceClient *)a3;
- (BOOL)onQueueAllocManagerWithRunLoop:(__CFRunLoop *)a3;
- (BOOL)sensorPresent;
- (WifiScannerBackend)init;
- (id).cxx_construct;
- (unique_ptr<ScanInformation,)initiateScanOnDevice:(__WiFiDeviceClient *)a3 withSettings:(id)a4 deviceNumber:(unint64_t)a5;
- (void)invalidate;
- (void)onQueueDeleteCompletedScan:(void *)a3;
- (void)onQueueHandleDeviceAttached:(__WiFiDeviceClient *)a3;
- (void)onQueueHandlerServerRestart;
- (void)onQueueInitiateScan:(id)a3 initiated:(id)a4;
- (void)onQueueRegisterCallbacks;
- (void)onQueueTeardown;
- (void)scanAsync:(id)a3 initiated:(id)a4;
- (void)startListeningCachedScans;
- (void)stopListeningCachedScans;
@end

@implementation WifiScannerBackend

- (WifiScannerBackend)init
{
  self->_initialized = 0;
  v16.receiver = self;
  v16.super_class = WifiScannerBackend;
  v2 = [(BaseWifiScannerBackend *)&v16 init];
  if (!v2)
  {
    goto LABEL_11;
  }

  if (!MobileWiFiContainsRadio())
  {
    if (qword_10045B050 == -1)
    {
      v13 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        v12 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      sub_100386CE0();
      v13 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }
    }

    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Platform doesn't contain radio", v15, 2u);
    goto LABEL_11;
  }

  v2->_isInternalBuild = MGGetBoolAnswer();
  v3 = dispatch_queue_create("com.apple.wifi.scanner.ios", 0);
  q = v2->_q;
  v2->_q = v3;

  if (!v2->_q)
  {
    goto LABEL_11;
  }

  v5 = dispatch_semaphore_create(0);
  wifiThreadShutdown = v2->_wifiThreadShutdown;
  v2->_wifiThreadShutdown = v5;

  if (!v2->_wifiThreadShutdown)
  {
    goto LABEL_11;
  }

  v7 = dispatch_semaphore_create(0);
  if (v7 && (v8 = dispatch_semaphore_create(0), retryingScan = v2->_retryingScan, v2->_retryingScan = v8, retryingScan, v2->_retryingScan))
  {
    v10 = [[WifiScannerThread alloc] initWithBackend:v2];
    scannerThread = v2->_scannerThread;
    v2->_scannerThread = v10;

    [NSThread detachNewThreadSelector:"runWifiThread:" toTarget:v2->_scannerThread withObject:v7];
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    v2->_initialized = 1;
    v12 = v2;
  }

  else
  {
    v12 = 0;
  }

LABEL_12:
  return v12;
}

- (void)invalidate
{
  if (self->_initialized)
  {
    atomic_store(1u, &self->_shutdownRequested);
    dispatch_semaphore_signal(self->_retryingScan);
    if (self->_wifiThreadRunLoop)
    {
      v14 = 0;
      q = self->_q;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3321888768;
      block[2] = sub_1002EFF18;
      block[3] = &unk_100448158;
      v12 = self;
      v13 = &v14;
      v4 = v12;
      dispatch_sync(q, block);

      if ((v14 & 1) == 0)
      {
        if (qword_10045B050 == -1)
        {
          v5 = qword_10045B058;
          if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_100386CE0();
          v5 = qword_10045B058;
          if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
          {
            goto LABEL_21;
          }
        }

        *buf = 0;
        v6 = "wifiThreadRunLoop already deallocated. Shutdown is complete.";
        goto LABEL_20;
      }

      if (qword_10045B050 == -1)
      {
        v8 = qword_10045B058;
        if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
LABEL_8:
          dispatch_semaphore_wait(v4[10], 0xFFFFFFFFFFFFFFFFLL);
          if (qword_10045B050 != -1)
          {
            sub_100386CE0();
            v5 = qword_10045B058;
            if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
            {
              goto LABEL_21;
            }

            goto LABEL_10;
          }

          v5 = qword_10045B058;
          if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
          {
LABEL_10:
            *buf = 0;
            v6 = "wifiThreadShutdown done. [IOSWifiScannerBackend invalidate] completed successfully.";
LABEL_20:
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, buf, 2u);
          }

LABEL_21:

          return;
        }
      }

      else
      {
        sub_100386CE0();
        v8 = qword_10045B058;
        if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
          goto LABEL_8;
        }
      }

      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Wait for the wifi thread runloop to terminate...", buf, 2u);
      goto LABEL_8;
    }

    if (qword_10045B050 == -1)
    {
      v7 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
LABEL_15:
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Wi-Fi thread already shut-down", buf, 2u);
      }
    }

    else
    {
      sub_100386CCC();
      v7 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }
    }
  }

  else if (self->_wifiThreadRunLoop)
  {
    sub_100386E50();
  }
}

- (void)onQueueTeardown
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v2 = self->_wifiDevices;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v3)
  {
    v4 = *v30;
    do
    {
      v5 = 0;
      do
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v29 + 1) + 8 * v5);
        if (qword_10045B050 != -1)
        {
          sub_100386CE0();
        }

        v7 = qword_10045B058;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [WiFiDeviceClientGetInterfaceName() UTF8String];
          LODWORD(buf.version) = 136315138;
          *(&buf.version + 4) = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Tearing down exiting device %s", &buf, 0xCu);
        }

        WiFiDeviceClientScanCancel();
        if (qword_10045B050 != -1)
        {
          sub_100386CE0();
        }

        v9 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf.version) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Unregistering per-device callbacks", &buf, 2u);
        }

        WiFiDeviceClientRegisterPowerCallback();
        WiFiDeviceClientRegisterScanUpdateCallback();
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v3);
  }

  wifiDevices = self->_wifiDevices;
  self->_wifiDevices = 0;

  if (self->_wifiManager)
  {
    memset(&buf, 0, sizeof(buf));
    v11 = CFRunLoopSourceCreate(kCFAllocatorDefault, 0, &buf);
    CFRunLoopAddSource(self->_wifiThreadRunLoop, v11, kCFRunLoopDefaultMode);
    if (qword_10045B050 != -1)
    {
      sub_100386CE0();
    }

    v12 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Tearing down existing manager", v28, 2u);
    }

    wifiManager = self->_wifiManager;
    WiFiManagerClientRegisterServerRestartCallback();
    v14 = self->_wifiManager;
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    v15 = self->_wifiManager;
    wifiThreadRunLoop = self->_wifiThreadRunLoop;
    WiFiManagerClientUnscheduleFromRunLoop();
    if (qword_10045B050 != -1)
    {
      sub_100386CE0();
    }

    v17 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Releasing the WiFi manager", v28, 2u);
    }

    v18 = self->_wifiManager;
    self->_wifiManager = 0;
    v19 = self->_wifiThreadRunLoop;
    self->_wifiThreadRunLoop = 0;
    v20 = self->_scannerThread;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002F0550;
    block[3] = &unk_100448190;
    v25 = v18;
    v21 = v20;
    v24 = v21;
    v26 = v19;
    v27 = v11;
    CFRunLoopPerformBlock(v19, kCFRunLoopCommonModes, block);
    CFRunLoopWakeUp(v19);
  }
}

- (void)onQueueRegisterCallbacks
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_wifiDevices;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        if (qword_10045B050 != -1)
        {
          sub_100386CE0();
        }

        v8 = qword_10045B058;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = [WiFiDeviceClientGetInterfaceName() UTF8String];
          *buf = 134217984;
          v17 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Registering callbacks for device %p", buf, 0xCu);
        }

        WiFiDeviceClientRegisterPowerCallback();
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v4);
  }

  wifiManager = self->_wifiManager;
  WiFiManagerClientRegisterServerRestartCallback();
  v11 = self->_wifiManager;
  WiFiManagerClientRegisterDeviceAttachmentCallback();
}

- (BOOL)onQueueAllocManagerWithRunLoop:(__CFRunLoop *)a3
{
  [(WifiScannerBackend *)self onQueueTeardown];
  self->_wifiManager = WiFiManagerClientCreate();
  v5 = WiFiManagerClientCopyDevices();
  wifiDevices = self->_wifiDevices;
  self->_wifiDevices = v5;

  v7 = self->_wifiDevices;
  if (v7 && [(NSArray *)v7 count])
  {
    sub_1002F0DDC(&self->_supportedChannelsPerDevice.__begin_, [(NSArray *)self->_wifiDevices count]);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_wifiDevices;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v9)
    {
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [WifiScannerBackend copySupportedChannelDicts:*(*(&v21 + 1) + 8 * i)];
          v20 = v12;
          var0 = self->_supportedChannelsPerDevice.var0;
          if (var0 >= self->_supportedChannelsPerDevice.var1)
          {
            v14 = sub_1002F4CCC(&self->_supportedChannelsPerDevice, &v20);
          }

          else
          {
            v20 = 0;
            *var0 = v12;
            v14 = (var0 + 1);
          }

          self->_supportedChannelsPerDevice.var0 = v14;
        }

        v9 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v9);
    }

    [(WifiScannerBackend *)self onQueueRegisterCallbacks];
    wifiManager = self->_wifiManager;
    WiFiManagerClientScheduleWithRunLoop();
    v16 = self->_wifiManager;
    WiFiManagerClientSetType();
    self->_wifiThreadRunLoop = a3;
    LOBYTE(v17) = 1;
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100386CCC();
    }

    v18 = qword_10045B058;
    v17 = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Platform doesn't contain any wifi devices", buf, 2u);
      LOBYTE(v17) = 0;
    }
  }

  return v17;
}

- (void)onQueueHandlerServerRestart
{
  if (qword_10045B050 == -1)
  {
    v3 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100386CCC();
  v3 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "wifi daemon restarted", v5, 2u);
  }

LABEL_4:
  for (i = self->_pendingScans.__end_.__next_; i != &self->_pendingScans; i = i->__end_.__next_)
  {
    sub_1002F1060(i->__size_, 54);
  }

  atomic_store(0, &self->_pendingScanCount.__a_.__a_value);
}

- (void)onQueueHandleDeviceAttached:(__WiFiDeviceClient *)a3
{
  if (qword_10045B050 == -1)
  {
    v3 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      return;
    }
  }

  else
  {
    sub_100386CCC();
    v3 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      return;
    }
  }

  *v4 = 0;
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "device attachment unimplemented", v4, 2u);
}

+ (id)copySupportedChannelDicts:(__WiFiDeviceClient *)a3
{
  v4 = [NSNumber numberWithInteger:27];

  return _WiFiDeviceClientCopyProperty(a3, v4);
}

- (BOOL)sensorPresent
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_wifiDevices;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v9 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = *(*(&v8 + 1) + 8 * v5);
      if (WiFiDeviceClientGetPower())
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return 1;
}

- (void)startListeningCachedScans
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1002F1598;
  block[3] = &unk_1004481B0;
  v5 = self;
  v3 = v5;
  dispatch_async(q, block);
}

- (void)stopListeningCachedScans
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1002F179C;
  block[3] = &unk_1004481E0;
  v5 = self;
  v3 = v5;
  dispatch_async(q, block);
}

- (void)scanAsync:(id)a3 initiated:(id)a4
{
  v6 = a3;
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1002F19F0;
  block[3] = &unk_100448210;
  v8 = self;
  v9 = v6;
  v10 = objc_retainBlock(a4);
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  v16 = objc_retainBlock(v10);
  dispatch_async(q, block);
}

- (void)onQueueInitiateScan:(id)a3 initiated:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&_mh_execute_header, "Wifi Scan", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v9 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Initiating a scan with settings: %{public}@", &buf, 0xCu);
  }

  buf = 0uLL;
  v28 = 0;
  v10 = [(NSArray *)self->_wifiDevices count];
  if (v10)
  {
    sub_1002F4F04(&buf, v10);
  }

  v11 = [(NSArray *)self->_wifiDevices count];
  v12 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1002F1EE8;
  block[3] = &unk_100448240;
  v13 = self;
  v14 = v8;
  v15 = v6;
  v16 = v13;
  v23 = v16;
  v24 = v14;
  v25 = v15;
  p_buf = &buf;
  dispatch_apply(v11, v12, block);

  sub_1002F5058((v16 + 11), (v16 + 11), buf, *(&buf + 1));
  atomic_store(v16[13], v16 + 14);
  v7[2](v7, [(NSArray *)self->_wifiDevices count]);

  v17 = buf;
  if (buf)
  {
    v18 = *(&buf + 1);
    v19 = buf;
    if (*(&buf + 1) != buf)
    {
      do
      {
        v21 = *--v18;
        v20 = v21;
        *v18 = 0;
        if (v21)
        {
          sub_1002F42F8(v20);
          operator delete();
        }
      }

      while (v18 != v17);
      v19 = buf;
    }

    *(&buf + 1) = v17;
    operator delete(v19);
  }
}

- (unique_ptr<ScanInformation,)initiateScanOnDevice:(__WiFiDeviceClient *)a3 withSettings:(id)a4 deviceNumber:(unint64_t)a5
{
  v13 = a4;
  v8 = self->_supportedChannelsPerDevice.__begin_[a5];
  if (!v8)
  {
    v9 = [WifiScannerBackend copySupportedChannelDicts:a3];
    if (v9)
    {
      v10 = v9;
      objc_storeStrong(&self->_supportedChannelsPerDevice.__begin_[a5], v9);
      v8 = v10;
    }

    else
    {
      if (qword_10045B050 != -1)
      {
        sub_100386CCC();
      }

      v11 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        buf = 134217984;
        buf_4 = a5;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to get supported channels dictionaries for device %zu", &buf, 0xCu);
      }

      v8 = 0;
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002F27E4;
  v14[3] = &unk_100448278;
  v15 = v8;
  v12 = [(BaseWifiScannerBackend *)self log];
  [WifiScannerCommonDarwin scanSettingsToDictionary:v13 usingSupportedChannels:v14 logTo:v12];
  objc_claimAutoreleasedReturnValue();

  operator new();
}

- (void)onQueueDeleteCompletedScan:(void *)a3
{
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v5 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    v13 = 134217984;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Removing pending scan %p", &v13, 0xCu);
  }

  p_pendingScans = &self->_pendingScans;
  next = self->_pendingScans.__end_.__next_;
  if (next != &self->_pendingScans)
  {
    while (next->super._log != a3)
    {
      next = next->super._delegate;
      if (next == p_pendingScans)
      {
        goto LABEL_17;
      }
    }
  }

  if (next == p_pendingScans)
  {
LABEL_17:
    if (qword_10045B050 != -1)
    {
      sub_100386CE0();
    }

    v12 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      v13 = 134217984;
      v14 = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Completed scan %p but don't have it in the pending list", &v13, 0xCu);
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100386CE0();
    }

    v8 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      v14 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Erasing pending scan %p from the list", &v13, 0xCu);
    }

    isa = next->super.super.isa;
    delegate = next->super._delegate;
    *(isa + 1) = delegate;
    *delegate = isa;
    --self->_pendingScans.__size_;
    log = next->super._log;
    next->super._log = 0;
    if (log)
    {
      sub_1002F42F8(log);
      operator delete();
    }

    operator delete(next);
    atomic_store(self->_pendingScans.__size_, &self->_pendingScanCount.__a_.__a_value);
  }
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  *(self + 11) = self + 88;
  *(self + 12) = self + 88;
  *(self + 13) = 0;
  return self;
}

@end