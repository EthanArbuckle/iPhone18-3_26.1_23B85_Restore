@interface HRCBLESource
- (BOOL)available;
- (HRCBLESource)init;
- (void)_setStreamingMode:(unint64_t)a3 discoveryEnabled:(BOOL)a4;
- (void)activate;
- (void)connectedDevicesDidChange:(id)a3;
- (void)dealloc;
- (void)heartRateSampleWasCollected:(id)a3 device:(id)a4;
- (void)setAvailabilityHandler:(id)a3;
- (void)setBluetoothLeSourcesUpdateHandler:(id)a3;
- (void)setDiscoveryEnabled:(BOOL)a3;
- (void)setHeartRateHandler:(id)a3;
- (void)setOpportunisticMode:(BOOL)a3;
- (void)setSourceUpdateHandler:(id)a3;
- (void)setStreamingMode:(unint64_t)a3;
@end

@implementation HRCBLESource

- (HRCBLESource)init
{
  v17.receiver = self;
  v17.super_class = HRCBLESource;
  v2 = [(HRCBLESource *)&v17 init];
  v3 = sub_10000132C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initializing HRCBLESource.", buf, 2u);
  }

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, -1);

  v6 = dispatch_queue_create("com.apple.heartratecoordinator.blesource", v5);
  v7 = *(v2 + 1);
  *(v2 + 1) = v6;

  v8 = objc_opt_new();
  v9 = *(v2 + 9);
  *(v2 + 9) = v8;

  v10 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, *(v2 + 1));
  v11 = *(v2 + 10);
  *(v2 + 10) = v10;

  objc_initWeak(buf, v2);
  v12 = *(v2 + 10);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000686C;
  handler[3] = &unk_1000407A0;
  objc_copyWeak(&v15, buf);
  dispatch_source_set_event_handler(v12, handler);
  dispatch_resume(*(v2 + 10));
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  return v2;
}

- (void)dealloc
{
  v3 = sub_10000132C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HRCBLESource dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = HRCBLESource;
  [(HRCBLESource *)&v4 dealloc];
}

- (BOOL)available
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006A54;
  v5[3] = &unk_1000407F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)activate
{
  if (self->_bleHeartRate)
  {
    v2 = sub_10000132C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_100007C84(v2);
    }
  }

  else
  {
    v4 = [[HLEHeartRateRequestor alloc] initWithDelegate:self onQueue:self->_queue];
    bleHeartRate = self->_bleHeartRate;
    self->_bleHeartRate = v4;
  }
}

- (void)setAvailabilityHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006B8C;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)setHeartRateHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006C68;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)setSourceUpdateHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006D44;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)setBluetoothLeSourcesUpdateHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006E20;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)setOpportunisticMode:(BOOL)a3
{
  v3 = sub_10000132C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Opportunistic mode not supported on BLE sources", v4, 2u);
  }
}

- (void)setStreamingMode:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100006F40;
  v4[3] = &unk_100040840;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)_setStreamingMode:(unint64_t)a3 discoveryEnabled:(BOOL)a4
{
  v4 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (a3 - 1 < 2)
  {
    LOBYTE(v4) = 0;
    v7 = 2;
LABEL_5:
    self->_discoveryEnabled = v4;
    goto LABEL_7;
  }

  if (!a3)
  {
    v7 = v4;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:
  v8 = sub_10000132C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    discoveryEnabled = self->_discoveryEnabled;
    v10[0] = 67109632;
    v10[1] = a3;
    v11 = 1024;
    v12 = discoveryEnabled;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BLE streaming mode set to %u discovery %{BOOL}u HLE: %u", v10, 0x14u);
  }

  [(HLEHeartRateRequestor *)self->_bleHeartRate setHeartRateState:v7];
}

- (void)connectedDevicesDidChange:(id)a3
{
  v32 = a3;
  dispatch_assert_queue_V2(self->_queue);
  available = self->_available;
  self->_available = [v32 count] != 0;
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134349056;
    *(&buf + 4) = [v32 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "received updated bluetooth le source list with count : %{public}lu", &buf, 0xCu);
  }

  bleSourcesUpdateHandler = self->_bleSourcesUpdateHandler;
  if (bleSourcesUpdateHandler)
  {
    v7 = sub_1000018EC(v32);
    bleSourcesUpdateHandler[2](bleSourcesUpdateHandler, v7);
  }

  if (self->_available != available)
  {
    v8 = sub_10000132C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_available;
      LODWORD(buf) = 67109376;
      DWORD1(buf) = available;
      WORD4(buf) = 1024;
      *(&buf + 10) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BLE availability changed: %{BOOL}u -> %{BOOL}u", &buf, 0xEu);
    }

    availabilityHandler = self->_availabilityHandler;
    if (availabilityHandler)
    {
      availabilityHandler[2](availabilityHandler, self->_available);
    }

    if (self->_available)
    {
      v11 = os_transaction_create();
      [(HRCBLESource *)self setTransaction:v11];

      v12 = sub_10000132C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        v13 = "Holding transaction because BLE device is connected";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &buf, 2u);
      }
    }

    else
    {
      [(HRCBLESource *)self setTransaction:0];
      v12 = sub_10000132C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        v13 = "Releasing transaction because BLE device disconnected";
        goto LABEL_15;
      }
    }
  }

  if (self->_sourceUpdateHandler)
  {
    v14 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = v32;
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v16)
    {
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          v20 = [NSUUID alloc];
          v21 = [v19 localIdentifier];
          v22 = [v20 initWithUUIDString:v21];

          if (v22)
          {
            if (([(NSMutableArray *)self->_activeDeviceUUIDs containsObject:v22]& 1) == 0)
            {
              *&buf = +[NSDate now];
              *(&buf + 1) = std::chrono::steady_clock::now();
              v43 = 0;
              v23 = v22;
              v44 = v23;
              v45 = 771;
              (*(self->_sourceUpdateHandler + 2))();
              [(NSMutableArray *)v14 addObject:v23];
            }
          }

          else
          {
            v24 = sub_10000132C();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
            {
              v25 = [v19 localIdentifier];
              sub_100007CC8(v25, v46, &v47, v24);
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v37 objects:v48 count:16];
      }

      while (v16);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = self->_activeDeviceUUIDs;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v27)
    {
      v28 = *v34;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v33 + 1) + 8 * j);
          if (([(NSMutableArray *)v14 containsObject:v30]& 1) == 0)
          {
            *&buf = +[NSDate now];
            *(&buf + 1) = std::chrono::steady_clock::now();
            v43 = 0;
            v44 = v30;
            v45 = 3;
            (*(self->_sourceUpdateHandler + 2))();
          }
        }

        v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v27);
    }

    activeDeviceUUIDs = self->_activeDeviceUUIDs;
    self->_activeDeviceUUIDs = v14;
  }
}

- (void)heartRateSampleWasCollected:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [v6 UUID];
  v9 = [v6 dateInterval];
  v10 = [v9 startDate];

  v11 = [v6 quantity];
  [v11 _beatsPerMinute];
  v13 = v12;

  v14 = sub_10000132C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134546179;
    v26 = v13;
    v27 = 2114;
    v28 = v8;
    v29 = 2114;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BLE HR %{sensitive}f %{public}@ TS: %{public}@", buf, 0x20u);
  }

  if (v7)
  {
    v15 = [NSUUID alloc];
    v16 = [v7 localIdentifier];
    v17 = [v15 initWithUUIDString:v16];

    if (v17)
    {
      v18 = [HRCHeartRateData alloc];
      v19 = [HRCUtilities translateToHRCDevice:v7];
      LOBYTE(v24) = 0;
      LOWORD(v23) = 3;
      v20 = [v18 initWithHeartRate:0 confidence:0 confidenceLevel:0 arbitrationStatus:0 context:0 hrContext:v10 timestamp:v13 sampleUuid:v8 sourceType:v23 streamingThrottleStatus:v17 deviceUuid:v19 device:v24 sensorLocation:? flags:?];

      heartRateHandler = self->_heartRateHandler;
      if (heartRateHandler)
      {
        heartRateHandler[2](heartRateHandler, v20);
      }
    }

    else
    {
      v20 = sub_10000132C();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v22 = [v7 localIdentifier];
        sub_100007D24(v22, buf, v20);
      }
    }
  }

  else
  {
    v17 = sub_10000132C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_100007D7C(v17);
    }
  }
}

- (void)setDiscoveryEnabled:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100007A14;
  v4[3] = &unk_100040868;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

@end