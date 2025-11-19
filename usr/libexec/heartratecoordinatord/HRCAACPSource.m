@interface HRCAACPSource
- (BOOL)available;
- (HRCAACPSource)init;
- (id)initMatching:(id)a3;
- (void)_audioAccessoryDaemonSetup;
- (void)_audioAccessoryDisconnectHandler;
- (void)_audioAccessoryHRMDeviceChanged:(id)a3 abstractedHIDDevice:(unsigned __int8)a4;
- (void)_handleHeartRate:(id)a3;
- (void)_handleVendorDefinedEvent:(id)a3;
- (void)_initMatching:(id)a3;
- (void)_notifySourceUpdate:(unint64_t)a3 forSource:(id)a4;
- (void)_removalHandler:(unint64_t)a3;
- (void)_serviceDidConnect:(id)a3;
- (void)_setStreamingMode:(unint64_t)a3;
- (void)_setStreamingMode:(unint64_t)a3 forService:(id)a4;
- (void)_startStreaming:(id)a3;
- (void)_stopStreaming:(id)a3;
- (void)_updateStreamingMode;
- (void)activate;
- (void)dealloc;
- (void)postUserFitNotification:(id)a3;
- (void)setAnalyticsReportHandler:(id)a3;
- (void)setAvailabilityHandler:(id)a3;
- (void)setFitNotificationParamUpdateHandler:(id)a3;
- (void)setHeartRateHandler:(id)a3;
- (void)setOpportunisticMode:(BOOL)a3;
- (void)setSourceUpdateHandler:(id)a3;
- (void)setStreamingMode:(unint64_t)a3;
@end

@implementation HRCAACPSource

- (HRCAACPSource)init
{
  v11[0] = @"DeviceUsage";
  v11[1] = @"DeviceUsagePage";
  v12[0] = &off_1000432B8;
  v12[1] = &off_1000432D0;
  v11[2] = @"Transport";
  v12[2] = @"BT-AACP";
  v3 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  v13[0] = v3;
  v9[0] = @"DeviceUsage";
  v9[1] = @"DeviceUsagePage";
  v10[0] = &off_1000432B8;
  v10[1] = &off_1000432D0;
  v9[2] = @"Transport";
  v4 = [NSString stringWithUTF8String:"Virtual"];
  v10[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  v13[1] = v5;
  v6 = [NSArray arrayWithObjects:v13 count:2];

  v7 = [(HRCAACPSource *)self initMatching:v6];
  return v7;
}

- (id)initMatching:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = HRCAACPSource;
  v5 = [(HRCAACPSource *)&v25 init];
  v6 = sub_10000132C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Initializing HRCAACPSource.", buf, 2u);
  }

  v7 = objc_opt_new();
  services = v5->_services;
  v5->_services = v7;

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INITIATED, -1);

  v11 = dispatch_queue_create("com.apple.heartratecoordinator.aacpsource", v10);
  serviceQueue = v5->_serviceQueue;
  v5->_serviceQueue = v11;

  v5->_streamingMode = 0;
  v5->_aaToken = -1;
  v13 = objc_opt_new();
  timeSyncFormatter = v5->_timeSyncFormatter;
  v5->_timeSyncFormatter = v13;

  [(NSDateFormatter *)v5->_timeSyncFormatter setDateFormat:@"HH:mm:ss.SSSZZZZZ"];
  v15 = v5->_serviceQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100013834;
  v21[3] = &unk_100040BC8;
  v16 = v5;
  v22 = v16;
  v23 = v4;
  v17 = v4;
  dispatch_sync(v15, v21);
  v18 = v23;
  v19 = v16;

  return v19;
}

- (void)dealloc
{
  aaToken = self->_aaToken;
  if (aaToken != -1)
  {
    notify_cancel(aaToken);
  }

  [(AASystemStateMonitor *)self->_audioSystemStateMonitor invalidate];
  [(HIDEventSystemClient *)self->_streamingClient cancel];
  [(HIDEventSystemClient *)self->_monitorClient cancel];
  v4 = sub_10000132C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HRCAACPSource dealloc", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = HRCAACPSource;
  [(HRCAACPSource *)&v5 dealloc];
}

- (void)activate
{
  serviceQueue = self->_serviceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013994;
  block[3] = &unk_1000406C0;
  block[4] = self;
  dispatch_async(serviceQueue, block);
}

- (void)setStreamingMode:(unint64_t)a3
{
  serviceQueue = self->_serviceQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100013BA8;
  v4[3] = &unk_100040840;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(serviceQueue, v4);
}

- (void)setHeartRateHandler:(id)a3
{
  v4 = a3;
  serviceQueue = self->_serviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013C4C;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serviceQueue, v7);
}

- (void)setAvailabilityHandler:(id)a3
{
  v4 = a3;
  serviceQueue = self->_serviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013D28;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serviceQueue, v7);
}

- (void)setSourceUpdateHandler:(id)a3
{
  v4 = a3;
  serviceQueue = self->_serviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013E04;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serviceQueue, v7);
}

- (void)setOpportunisticMode:(BOOL)a3
{
  v3 = sub_10000132C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Unsupported attempt to set opportunistic mode for AACP source", v4, 2u);
  }
}

- (BOOL)available
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serviceQueue = self->_serviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100013F5C;
  v5[3] = &unk_1000407F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serviceQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAnalyticsReportHandler:(id)a3
{
  v4 = a3;
  serviceQueue = self->_serviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014010;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serviceQueue, v7);
}

- (void)setFitNotificationParamUpdateHandler:(id)a3
{
  v4 = a3;
  serviceQueue = self->_serviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000140F0;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serviceQueue, v7);
}

- (void)postUserFitNotification:(id)a3
{
  v4 = a3;
  serviceQueue = self->_serviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000141CC;
  v7[3] = &unk_100040BC8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(serviceQueue, v7);
}

- (void)_initMatching:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = self->_serviceQueue;
  dispatch_assert_queue_V2(self->_serviceQueue);
  serviceQueue = self->_serviceQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000145C0;
  handler[3] = &unk_100040C58;
  objc_copyWeak(&v22, &location);
  notify_register_dispatch("com.apple.AudioAccessory.daemonStarted", &self->_aaToken, serviceQueue, handler);
  [(HRCAACPSource *)self _audioAccessoryDaemonSetup];
  v7 = [[HIDEventSystemClient alloc] initWithType:3];
  streamingClient = self->_streamingClient;
  self->_streamingClient = v7;

  [(HIDEventSystemClient *)self->_streamingClient setDispatchQueue:self->_serviceQueue];
  [(HIDEventSystemClient *)self->_streamingClient setMatching:v4];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100014650;
  v19[3] = &unk_100040C80;
  objc_copyWeak(&v20, &location);
  [(HIDEventSystemClient *)self->_streamingClient setServiceNotificationHandler:v19];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000146C4;
  v16[3] = &unk_100040CA8;
  v9 = v5;
  v17 = v9;
  objc_copyWeak(&v18, &location);
  [(HIDEventSystemClient *)self->_streamingClient setEventHandler:v16];
  v10 = [[HIDEventSystemClient alloc] initWithType:1];
  monitorClient = self->_monitorClient;
  self->_monitorClient = v10;

  [(HIDEventSystemClient *)self->_monitorClient setMatching:v4];
  [(HIDEventSystemClient *)self->_monitorClient setDispatchQueue:self->_serviceQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100014784;
  v13[3] = &unk_100040CA8;
  v12 = v9;
  v14 = v12;
  objc_copyWeak(&v15, &location);
  [(HIDEventSystemClient *)self->_monitorClient setEventHandler:v13];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&location);
}

- (void)_audioAccessoryDaemonSetup
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  v3 = objc_opt_new();
  audioSystemStateMonitor = self->_audioSystemStateMonitor;
  self->_audioSystemStateMonitor = v3;

  [(AASystemStateMonitor *)self->_audioSystemStateMonitor setDispatchQueue:self->_serviceQueue];
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100014A6C;
  v11[3] = &unk_100040CD0;
  objc_copyWeak(&v12, &location);
  [(AASystemStateMonitor *)self->_audioSystemStateMonitor setActiveHRMDeviceChangedHandler:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100014AF0;
  v9[3] = &unk_1000407A0;
  objc_copyWeak(&v10, &location);
  [(AASystemStateMonitor *)self->_audioSystemStateMonitor setInterruptionHandler:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014B80;
  v7[3] = &unk_1000407A0;
  objc_copyWeak(&v8, &location);
  [(AASystemStateMonitor *)self->_audioSystemStateMonitor setInvalidationHandler:v7];
  [(AASystemStateMonitor *)self->_audioSystemStateMonitor activateWithCompletion:&stru_100040D10];
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HRCAACPSource configured audio accessory daemon connection", v6, 2u);
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_audioAccessoryHRMDeviceChanged:(id)a3 abstractedHIDDevice:(unsigned __int8)a4
{
  v4 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v8 = sub_10000132C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 name];
    v10 = [v7 bluetoothAddress];
    v11 = v10;
    if (v4 > 2)
    {
      v12 = "default";
    }

    else
    {
      v12 = off_100040D58[v4];
    }

    *buf = 138543874;
    v30 = v9;
    v31 = 2114;
    v32 = v10;
    v33 = 2082;
    v34 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "HRCAACPSource Active HRM route set to %{public}@ (%{public}@) %{public}s", buf, 0x20u);
  }

  if (!v7 || v4)
  {
    objc_storeStrong(&self->_aaDevice, a3);
    self->_virtualDevice = v4 == 2;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = [(HRCAACPSource *)self services];
    v16 = [v15 allValues];

    v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v17)
    {
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v16);
          }

          if (self->_aaDevice)
          {
            v20 = *(*(&v24 + 1) + 8 * i);
            v21 = [v20 bluetoothAddress];
            v22 = [(AudioAccessoryDevice *)self->_aaDevice bluetoothAddressData];
            v23 = [v21 isEqualToData:v22];

            if (v23)
            {
              [v20 setAaDevice:self->_aaDevice];
            }
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }

    [(HRCAACPSource *)self _updateStreamingMode];
  }

  else
  {
    v13 = sub_10000132C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = [v7 name];
      sub_100017114(v14, buf, v13);
    }
  }
}

- (void)_audioAccessoryDisconnectHandler
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  aaDevice = self->_aaDevice;
  self->_aaDevice = 0;

  [(HRCAACPSource *)self _updateStreamingMode];
}

- (void)_serviceDidConnect:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v5 = [v4 serviceID];
  v6 = [[HRCServiceInfo alloc] initWithService:v4];
  v7 = [(HRCAACPSource *)self services];
  v8 = [NSNumber numberWithUnsignedLongLong:v5];
  [v7 setObject:v6 forKeyedSubscript:v8];

  v9 = [(HRCServiceInfo *)v6 bluetoothAddress];
  v10 = [(AudioAccessoryDevice *)self->_aaDevice bluetoothAddressData];
  v11 = [v9 isEqualToData:v10];

  if (v11)
  {
    [(HRCServiceInfo *)v6 setAaDevice:self->_aaDevice];
  }

  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100015244;
  v13[3] = &unk_1000409E0;
  objc_copyWeak(v14, &location);
  v14[1] = v5;
  [v4 setRemovalHandler:v13];
  self->_available = [(NSMutableDictionary *)self->_services count]!= 0;
  if ([(NSMutableDictionary *)self->_services count]== 1)
  {
    availabilityHandler = self->_availabilityHandler;
    if (availabilityHandler)
    {
      availabilityHandler[2](availabilityHandler, 1);
    }
  }

  [(HRCAACPSource *)self _updateStreamingMode];
  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (void)_removalHandler:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  activeService = self->_activeService;
  services = self->_services;
  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  v8 = [(NSMutableDictionary *)services objectForKeyedSubscript:v7];

  if (activeService == v8)
  {
    [(HRCAACPSource *)self _notifySourceUpdate:0 forSource:self->_activeService];
    v9 = self->_activeService;
    self->_activeService = 0;
  }

  v10 = self->_services;
  v11 = [NSNumber numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)v10 removeObjectForKey:v11];

  if (![(NSMutableDictionary *)self->_services count])
  {
    availabilityHandler = self->_availabilityHandler;
    if (availabilityHandler)
    {
      availabilityHandler[2](availabilityHandler, 0);
    }
  }

  self->_available = [(NSMutableDictionary *)self->_services count]!= 0;
  v13 = sub_10000132C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(HRCAACPSource *)self services];
    v15 = [NSNumber numberWithUnsignedLongLong:a3];
    v16 = [v14 objectForKeyedSubscript:v15];
    v17 = [v16 uuid];
    available = self->_available;
    v19 = 134218498;
    v20 = a3;
    v21 = 2114;
    v22 = v17;
    v23 = 1024;
    v24 = available;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AACP HR service removed:0x%llx uuid: %{public}@ available:%{BOOL}u", &v19, 0x1Cu);
  }

  [(HRCAACPSource *)self _updateStreamingMode];
}

- (void)_setStreamingMode:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  if (self->_streamingMode != a3)
  {
    self->_streamingMode = a3;
    v5 = sub_10000132C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      available = self->_available;
      v7[0] = 67240448;
      v7[1] = a3;
      v8 = 1024;
      v9 = available;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AACP Source streaming mode set %{public}d available:%{BOOL}u", v7, 0xEu);
    }

    [(HRCAACPSource *)self _updateStreamingMode];
  }
}

- (void)_updateStreamingMode
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  activeService = self->_activeService;
  location = &self->_activeService;
  if (!self->_streamingMode)
  {
    if (activeService)
    {
      [(HRCAACPSource *)self _notifySourceUpdate:0 forSource:?];
      v27 = self->_activeService;
      self->_activeService = 0;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v28 = [(HRCAACPSource *)self services];
    v8 = [v28 allValues];

    v29 = [v8 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v29)
    {
      v30 = *v44;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v44 != v30)
          {
            objc_enumerationMutation(v8);
          }

          v32 = [*(*(&v43 + 1) + 8 * i) service];
          [(HRCAACPSource *)self _setStreamingMode:0 forService:v32];
        }

        v29 = [v8 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v29);
    }

    goto LABEL_37;
  }

  v4 = [(HRCServiceInfo *)activeService bluetoothAddress];
  v5 = [(AudioAccessoryDevice *)self->_aaDevice bluetoothAddressData];
  v6 = [v4 isEqualToData:v5];

  if (((*location != 0) & v6) == 1)
  {
    virtualDevice = self->_virtualDevice;
    if (virtualDevice == [*location virtualDevice])
    {
      v8 = sub_10000132C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*location service];
        *buf = 134349056;
        v49 = [v9 serviceID];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Active service 0x%{public}llx still valid", buf, 0xCu);
      }

LABEL_37:

      v12 = 0;
      v25 = 0;
      goto LABEL_45;
    }
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = [(HRCAACPSource *)self services];
  v11 = [v10 allValues];

  obj = v11;
  v12 = 0;
  v13 = 0;
  v14 = [v11 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (!v14)
  {
    goto LABEL_40;
  }

  v15 = *v40;
  do
  {
    for (j = 0; j != v14; j = j + 1)
    {
      if (*v40 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v39 + 1) + 8 * j);
      v18 = [v17 bluetoothAddress];
      v19 = [(AudioAccessoryDevice *)self->_aaDevice bluetoothAddressData];
      v20 = [v18 isEqualToData:v19];

      if (v20)
      {
        v21 = self->_virtualDevice;
        if (v21 == [v17 virtualDevice])
        {
          if (v13)
          {
            v22 = sub_10000132C();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
            {
              sub_10001716C(buf, &buf[1], v22);
            }
          }

          v23 = v13;
          v13 = v17;
          goto LABEL_20;
        }
      }

      if (([v17 simulator]& 1) != 0)
      {
        v23 = v12;
        v12 = v17;
LABEL_20:
        v24 = v17;
        goto LABEL_22;
      }

      v23 = [v17 service];
      [(HRCAACPSource *)self _setStreamingMode:0 forService:v23];
LABEL_22:
    }

    v14 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  }

  while (v14);

  v25 = v13;
  if (v13 && v12)
  {
    v26 = sub_10000132C();
    obj = v26;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1000171AC(v26);
    }

LABEL_40:

    v25 = v13;
  }

  else if (v12)
  {
    v13 = v12;
    obj = v25;
    v12 = v13;
    goto LABEL_40;
  }

  if (*locationa)
  {
    [(HRCAACPSource *)self _notifySourceUpdate:0 forSource:?];
    v33 = *locationa;
    *locationa = 0;
  }

  if (v25)
  {
    streamingMode = self->_streamingMode;
    v35 = [v25 service];
    [(HRCAACPSource *)self _setStreamingMode:streamingMode forService:v35];

    objc_storeStrong(locationa, v25);
    [(HRCAACPSource *)self _notifySourceUpdate:self->_streamingMode forSource:self->_activeService];
  }

LABEL_45:
}

- (void)_notifySourceUpdate:(unint64_t)a3 forSource:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 && self->_fitNotificationParamUpdateHandler)
  {
    v8 = [v6 aaDevice];
    if ([v8 productID] == 8221)
    {

      v9.n128_u32[0] = 1036831949;
    }

    else
    {
      v10 = [v7 simProductID] == 8221;

      v9.n128_u32[0] = dword_10002C8C8[v10];
    }

    (*(self->_fitNotificationParamUpdateHandler + 2))(v9);
  }

  if (self->_sourceUpdateHandler)
  {
    v13 = +[NSDate now];
    std::chrono::steady_clock::now();
    v11 = [v7 service];
    v12 = [v7 aaDevice];
    v14 = [HRCServiceInfo makeDevice:v11 aaDevice:v12];
    v15 = [v7 uuid];
    [v7 virtualDevice];
    [v7 aaDevice];

    (*(self->_sourceUpdateHandler + 2))();
  }
}

- (void)_setStreamingMode:(unint64_t)a3 forService:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 - 1 >= 2)
  {
    if (!a3)
    {
      [(HRCAACPSource *)self _stopStreaming:v6];
    }
  }

  else
  {
    [(HRCAACPSource *)self _startStreaming:v6];
  }
}

- (void)_startStreaming:(id)a3
{
  v3 = a3;
  if ([v3 setProperty:&off_1000432A0 forKey:@"ReportInterval"])
  {
    v4 = sub_10000132C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134349056;
      v6 = [v3 serviceID];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Streaming started for AACP source 0x%{public}llx", &v5, 0xCu);
    }
  }

  else
  {
    v4 = sub_10000132C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000171F0(&v5, [v3 serviceID], v4);
    }
  }
}

- (void)_stopStreaming:(id)a3
{
  v3 = a3;
  if ([v3 setProperty:&off_1000432E8 forKey:@"ReportInterval"])
  {
    v4 = sub_10000132C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134349056;
      v6 = [v3 serviceID];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Streaming stopped for AACP source 0x%{public}llx", &v5, 0xCu);
    }
  }

  else
  {
    v4 = sub_10000132C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001722C(&v5, [v3 serviceID], v4);
    }
  }
}

- (void)_handleHeartRate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_53;
  }

  v58 = v3;
  [v3 doubleValueForField:2818049];
  v6 = v5;
  v54 = [v4 integerValueForField:2818050];
  v7 = [v4 timestamp];
  v53 = [v4 integerValueForField:2818048];
  dispatch_assert_queue_V2(self->_serviceQueue);
  v55 = +[NSUUID UUID];
  v8 = [(HRCAACPSource *)self services];
  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v58 senderID]);
  v10 = [v8 objectForKeyedSubscript:v9];

  v57 = v10;
  v11 = [v10 hrcDevice];

  if (!v11)
  {
    v12 = [v10 service];
    v13 = [v10 aaDevice];
    v14 = [HRCServiceInfo makeDevice:v12 aaDevice:v13];
    [v57 setHrcDevice:v14];
  }

  v15 = [(HRCAACPSource *)self services];
  v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v58 senderID]);
  v17 = [v15 objectForKeyedSubscript:v16];
  v56 = [v17 uuid];

  v18 = sub_10000132C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134547203;
    v68 = v53;
    v69 = 2053;
    v70 = v6;
    v71 = 1026;
    v72 = v54;
    v73 = 2050;
    v74 = v7;
    v75 = 2050;
    v76 = [v58 senderID];
    v77 = 2114;
    v78 = v56;
    v79 = 2114;
    v80 = v55;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "AACP HR %{sensitive}ld (%{sensitive}f conf) loc:%{public}hu gen:%{public}llu sender:0x%{public}llx Source:%{public}@ Sample:%{public}@ \n", buf, 0x44u);
  }

  v19 = [(HRCServiceInfo *)self->_activeService uuid];
  v20 = [v56 isEqual:v19];

  if ((v20 & 1) == 0)
  {
    v21 = sub_10000132C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [(HRCServiceInfo *)self->_activeService uuid];
      sub_100017268(v22, v56, buf, v21);
    }
  }

  v23 = [v57 hrcDevice];
  v24 = v23 == 0;

  if (v24)
  {
    v49 = sub_10000132C();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_100017314(v65, [v58 senderID], v49);
    }

    goto LABEL_51;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v25 = [v58 children];
  v26 = [v25 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (!v26)
  {

LABEL_49:
    v49 = sub_10000132C();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
    {
      sub_1000172D0(v49);
    }

LABEL_51:
    v28 = 0;
    goto LABEL_52;
  }

  v27 = 0;
  v28 = 0;
  v29 = *v61;
  do
  {
    v30 = 0;
    do
    {
      if (*v61 != v29)
      {
        objc_enumerationMutation(v25);
      }

      v31 = *(*(&v60 + 1) + 8 * v30);
      v32 = sub_10000132C();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *v65 = 138543362;
        v66 = v31;
        _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "AACP child event %{public}@", v65, 0xCu);
      }

      if ([v31 type] == 1 && objc_msgSend(v31, "integerValueForField:", 0x10000) == 65301 && objc_msgSend(v31, "integerValueForField:", 65537) == 290)
      {
        v33 = [v31 dataValueForField:65540];
        v34 = [v31 integerValueForField:65539];
        if (v34 == 20)
        {
          LODWORD(v35) = v33[3];
          LODWORD(v36) = v33[4];
          v37 = [NSDate dateWithTimeIntervalSince1970:v36 / 1000000000.0 + v35];

          v38 = sub_10000132C();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [(NSDateFormatter *)self->_timeSyncFormatter stringFromDate:v37];
            *v65 = 138543362;
            v66 = v39;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "AACP HR TimeSync: %{public}@", v65, 0xCu);
          }

          goto LABEL_34;
        }

        v38 = sub_10000132C();
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        *v65 = 134349056;
        v66 = v34;
        v42 = v38;
        v43 = "AACP HR TimeSync invalid size %{public}zu";
        goto LABEL_38;
      }

      if ([v31 type] == 1 && objc_msgSend(v31, "integerValueForField:", 0x10000) == 65301 && objc_msgSend(v31, "integerValueForField:", 65537) == 18)
      {
        v40 = [v31 dataValueForField:65540];
        v41 = [v31 integerValueForField:65539];
        if (v41 == 4)
        {
          v27 = *v40;
          v38 = sub_10000132C();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *v65 = 67240192;
            LODWORD(v66) = v27;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "AACP Flags %{public}08x\n", v65, 8u);
          }

LABEL_33:
          v37 = v28;
LABEL_34:

          v28 = v37;
          goto LABEL_35;
        }

        v38 = sub_10000132C();
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        *v65 = 134349056;
        v66 = v41;
        v42 = v38;
        v43 = "AACP Flags invalid size %{public}zu";
LABEL_38:
        _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, v43, v65, 0xCu);
        goto LABEL_33;
      }

LABEL_35:
      v30 = v30 + 1;
    }

    while (v26 != v30);
    v44 = [v25 countByEnumeratingWithState:&v60 objects:v64 count:16];
    v26 = v44;
  }

  while (v44);

  if (!v28)
  {
    goto LABEL_49;
  }

  if ((v54 & 0xFFFC) != 0)
  {
    v45 = 0;
  }

  else
  {
    v45 = v54;
  }

  v46 = [HRCHeartRateData alloc];
  v47 = [NSNumber numberWithDouble:v6];
  v48 = [v57 hrcDevice];
  HIDWORD(v52) = v27;
  LOBYTE(v52) = v45;
  LOWORD(v51) = 1;
  v49 = [v46 initWithHeartRate:v47 confidence:0 confidenceLevel:1 arbitrationStatus:2 context:2 hrContext:v28 timestamp:v53 sampleUuid:v55 sourceType:v51 streamingThrottleStatus:v56 deviceUuid:v48 device:v52 sensorLocation:? flags:?];

  heartRateHandler = self->_heartRateHandler;
  if (heartRateHandler)
  {
    heartRateHandler[2](heartRateHandler, v49);
  }

LABEL_52:

  v4 = v58;
LABEL_53:
}

- (void)_handleVendorDefinedEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValueForField:0x10000];
    v7 = [v5 integerValueForField:65537];
    v8 = v7;
    if (v6 != 65290 || v7 != 19)
    {
      v11 = sub_10000132C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v22 = 134218240;
        v23 = v6;
        v24 = 2048;
        v25 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Ignoring vendor-defined event usage page: %04lX usage: %04lX", &v22, 0x16u);
      }

      goto LABEL_27;
    }

    v9 = [(HRCAACPSource *)self services];
    v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 senderID]);
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = [v11 aaDevice];
    if (v12)
    {
    }

    else if (([v11 simulator]& 1) == 0)
    {
      v19 = sub_10000132C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100017350(v19);
      }

      goto LABEL_27;
    }

    v13 = [v5 dataValueForField:65540];
    v14 = [v5 integerValueForField:65539];
    v15 = sub_10000132C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134217984;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Handling CoreAnalytics Event length %zu", &v22, 0xCu);
    }

    if (!self->_analyticsHandler)
    {
LABEL_27:

      goto LABEL_28;
    }

    v16 = [NSData dataWithBytes:v13 length:v14];
    v17 = [v11 aaDevice];
    if ([v17 productID] == 8221)
    {

      goto LABEL_26;
    }

    if ([v11 simulator])
    {
      v18 = [v11 simProductID]== 8221;

      if (v18)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v20 = [v11 aaDevice];
    if ([v20 productID] != 8231)
    {
      v21 = [v11 aaDevice];
      if ([v21 productID] != 8232)
      {
        [v11 simulator];

        goto LABEL_26;
      }
    }

LABEL_26:
    (*(self->_analyticsHandler + 2))();

    goto LABEL_27;
  }

LABEL_28:
}

@end