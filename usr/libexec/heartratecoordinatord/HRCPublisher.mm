@interface HRCPublisher
- (HRCPublisher)initWithAnalyticsReporter:(id)reporter isInternalVariant:(BOOL)variant;
- (void)_disableDataCollectorForSource:(unsigned __int8)source;
- (void)_enableDataCollectorForSource:(unsigned __int8)source;
- (void)_handleSourceUpdate:(const HRCSourceUpdate *)update;
- (void)_publishHeartRate:(id)rate;
- (void)handleSourceUpdate:(const HRCSourceUpdate *)update;
- (void)publishHeartRate:(id)rate;
@end

@implementation HRCPublisher

- (HRCPublisher)initWithAnalyticsReporter:(id)reporter isInternalVariant:(BOOL)variant
{
  reporterCopy = reporter;
  v20.receiver = self;
  v20.super_class = HRCPublisher;
  v8 = [(HRCPublisher *)&v20 init];
  objc_storeStrong(&v8->_analyticsReporter, reporter);
  v9 = dispatch_queue_create("com.apple.heartratecoordinator.healthkit.publisher", 0);
  publisherQueue = v8->_publisherQueue;
  v8->_publisherQueue = v9;

  v11 = v8->_publisherQueue;
  if (v11)
  {
    v8->_isInternalVariant = variant;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017540;
    block[3] = &unk_1000406C0;
    v12 = v8;
    v19 = v12;
    dispatch_async(v11, block);
    v13 = sub_10000132C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "HRCPublisher init", v17, 2u);
    }

    v14 = v12;
    p_super = &v19->super;
  }

  else
  {
    p_super = sub_10000132C();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      sub_1000190B4();
    }

    v14 = 0;
  }

  return v14;
}

- (void)handleSourceUpdate:(const HRCSourceUpdate *)update
{
  v5 = update->var0;
  var1 = update->var1;
  v7 = update->var2;
  v8 = update->var3;
  v9 = *&update->var4;
  publisherQueue = self->_publisherQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3321888768;
  v14[2] = sub_1000176FC;
  v14[3] = &unk_100040D78;
  v14[4] = self;
  v15 = v5;
  v16 = var1;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v11 = v8;
  v12 = v7;
  v13 = v5;
  dispatch_async(publisherQueue, v14);
}

- (void)publishHeartRate:(id)rate
{
  rateCopy = rate;
  publisherQueue = self->_publisherQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000177A4;
  v7[3] = &unk_100040BC8;
  v7[4] = self;
  v8 = rateCopy;
  v6 = rateCopy;
  dispatch_async(publisherQueue, v7);
}

- (void)_handleSourceUpdate:(const HRCSourceUpdate *)update
{
  dispatch_assert_queue_V2(self->_publisherQueue);
  if (update->var4)
  {
    if (update->var5)
    {

      [(HRCPublisher *)self _enableDataCollectorForSource:?];
    }

    else
    {

      [(HRCPublisher *)self _disableDataCollectorForSource:?];
    }
  }

  else
  {
    v5 = sub_10000132C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1000190E8();
    }
  }
}

- (void)_enableDataCollectorForSource:(unsigned __int8)source
{
  sourceCopy = source;
  dispatch_assert_queue_V2(self->_publisherQueue);
  switch(sourceCopy)
  {
    case 3:
      btleSourceCollector = [(HRCPublisher *)self btleSourceCollector];
      v8 = sub_100017A08(btleSourceCollector);

      if (v8)
      {
        return;
      }

      hkStore = [(HRCPublisher *)self hkStore];
      v6 = sub_100017B04(3, hkStore);
      [(HRCPublisher *)self setBtleSourceCollector:v6];
      break;
    case 2:
      watchSourceCollector = [(HRCPublisher *)self watchSourceCollector];
      v7 = sub_100017A08(watchSourceCollector);

      if (v7)
      {
        return;
      }

      hkStore = [(HRCPublisher *)self hkStore];
      v6 = sub_100017B04(2, hkStore);
      [(HRCPublisher *)self setWatchSourceCollector:v6];
      break;
    case 1:
      aacpSourceCollector = [(HRCPublisher *)self aacpSourceCollector];
      v5 = sub_100017A08(aacpSourceCollector);

      if (v5)
      {
        return;
      }

      hkStore = [(HRCPublisher *)self hkStore];
      v6 = sub_100017B04(1, hkStore);
      [(HRCPublisher *)self setAacpSourceCollector:v6];
      break;
    default:
      return;
  }
}

- (void)_disableDataCollectorForSource:(unsigned __int8)source
{
  sourceCopy = source;
  dispatch_assert_queue_V2(self->_publisherQueue);
  switch(sourceCopy)
  {
    case 3:
      btleSourceCollector = [(HRCPublisher *)self btleSourceCollector];

      if (btleSourceCollector)
      {
        v12 = sub_10000132C();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "tearing down hk data collector for btle source", v14, 2u);
        }

        btleSourceCollector2 = [(HRCPublisher *)self btleSourceCollector];
        [btleSourceCollector2 finishWithCompletion:&stru_100040E08];

        [(HRCPublisher *)self setBtleSourceCollector:0];
      }

      break;
    case 2:
      watchSourceCollector = [(HRCPublisher *)self watchSourceCollector];

      if (watchSourceCollector)
      {
        v9 = sub_10000132C();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "tearing down hk data collector for watch source", v15, 2u);
        }

        watchSourceCollector2 = [(HRCPublisher *)self watchSourceCollector];
        [watchSourceCollector2 finishWithCompletion:&stru_100040DE8];

        [(HRCPublisher *)self setWatchSourceCollector:0];
      }

      break;
    case 1:
      aacpSourceCollector = [(HRCPublisher *)self aacpSourceCollector];

      if (aacpSourceCollector)
      {
        v6 = sub_10000132C();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "tearing down hk data collector for aacp source", buf, 2u);
        }

        aacpSourceCollector2 = [(HRCPublisher *)self aacpSourceCollector];
        [aacpSourceCollector2 finishWithCompletion:&stru_100040DC8];

        [(HRCPublisher *)self setAacpSourceCollector:0];
      }

      break;
  }
}

- (void)_publishHeartRate:(id)rate
{
  rateCopy = rate;
  dispatch_assert_queue_V2(self->_publisherQueue);
  if ([rateCopy sourceType])
  {
    v47 = _HKPrivateMetadataKeyHeartRateContext;
    v66 = _HKPrivateMetadataKeyHeartRateContext;
    v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [rateCopy context]);
    v67 = v3;
    v56 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];

    v4 = sub_10000132C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      uuid = [rateCopy uuid];
      [rateCopy heartRate];
      *buf = 138544131;
      *&buf[4] = uuid;
      v60 = 2053;
      v61 = v6;
      v62 = 2053;
      hrContext = [rateCopy hrContext];
      v64 = 1026;
      streamingThrottleStatus = [rateCopy streamingThrottleStatus];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "publishing HR sample to HK with UUID : %{public}@ , bpm : %{sensitive}f , context : %{sensitive}ld , streamingThrottleStatus : %{public}d", buf, 0x26u);
    }

    v7 = [HKDevice alloc];
    device = [rateCopy device];
    name = [device name];
    device2 = [rateCopy device];
    manufacturer = [device2 manufacturer];
    device3 = [rateCopy device];
    model = [device3 model];
    device4 = [rateCopy device];
    hardwareVersion = [device4 hardwareVersion];
    device5 = [rateCopy device];
    firmwareVersion = [device5 firmwareVersion];
    device6 = [rateCopy device];
    softwareVersion = [device6 softwareVersion];
    device7 = [rateCopy device];
    localIdentifier = [device7 localIdentifier];
    device8 = [rateCopy device];
    uDIDeviceIdentifier = [device8 UDIDeviceIdentifier];
    v55 = [v7 initWithName:name manufacturer:manufacturer model:model hardwareVersion:hardwareVersion firmwareVersion:firmwareVersion softwareVersion:softwareVersion localIdentifier:localIdentifier UDIDeviceIdentifier:uDIDeviceIdentifier];

    device9 = [rateCopy device];
    bluetoothIdentifier = [device9 bluetoothIdentifier];
    [v55 _setBluetoothIdentifier:bluetoothIdentifier];

    sourceType = [rateCopy sourceType];
    if (sourceType > 1)
    {
      if (sourceType == 2)
      {
        if ([rateCopy hrContext] == 2)
        {
          watchSourceCollector = [(HRCPublisher *)self watchSourceCollector];
          v33 = watchSourceCollector == 0;

          if (v33)
          {
            v34 = sub_10000132C();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              sub_100019190();
            }

            hkStore = [(HRCPublisher *)self hkStore];
            v36 = sub_100017B04(2, hkStore);
            [(HRCPublisher *)self setWatchSourceCollector:v36];
          }

          watchSourceCollector2 = [(HRCPublisher *)self watchSourceCollector];
          v26 = +[HKDevice localDevice];
          v37 = sub_100018CC4(rateCopy);
          sub_100018B60(watchSourceCollector2, v26, v56, v37);
        }

        else
        {
          watchSourceCollector2 = [(HRCPublisher *)self hkStore];
          v38 = rateCopy;
          v39 = [HKUnit unitFromString:@"count/min"];
          [v38 heartRate];
          v40 = [HKQuantity quantityWithUnit:v39 doubleValue:?];

          v41 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
          v68 = v47;
          v42 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[HRCUtilities translateToHealthKitContextType:](HRCUtilities, "translateToHealthKitContextType:", [v38 hrContext]));
          *buf = v42;
          v43 = [NSDictionary dictionaryWithObjects:buf forKeys:&v68 count:1];

          timestamp = [v38 timestamp];
          timestamp2 = [v38 timestamp];
          v46 = +[HKDevice localDevice];
          v26 = [HKQuantitySample quantitySampleWithType:v41 quantity:v40 startDate:timestamp endDate:timestamp2 device:v46 metadata:v43];

          [watchSourceCollector2 saveObject:v26 withCompletion:&stru_100040E28];
        }

        goto LABEL_28;
      }

      if (sourceType == 3)
      {
        btleSourceCollector = [(HRCPublisher *)self btleSourceCollector];
        v28 = btleSourceCollector == 0;

        if (v28)
        {
          v29 = sub_10000132C();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            sub_10001915C();
          }

          hkStore2 = [(HRCPublisher *)self hkStore];
          v31 = sub_100017B04(3, hkStore2);
          [(HRCPublisher *)self setBtleSourceCollector:v31];
        }

        watchSourceCollector2 = [(HRCPublisher *)self btleSourceCollector];
        v26 = sub_100018CC4(rateCopy);
        sub_100018B60(watchSourceCollector2, v55, v56, v26);
        goto LABEL_28;
      }
    }

    else
    {
      if (!sourceType)
      {
LABEL_30:

        goto LABEL_31;
      }

      if (sourceType == 1)
      {
        aacpSourceCollector = [(HRCPublisher *)self aacpSourceCollector];
        v21 = aacpSourceCollector == 0;

        if (v21)
        {
          v22 = sub_10000132C();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            sub_1000191C4();
          }

          hkStore3 = [(HRCPublisher *)self hkStore];
          v24 = sub_100017B04(1, hkStore3);
          [(HRCPublisher *)self setAacpSourceCollector:v24];
        }

        watchSourceCollector2 = [(HRCPublisher *)self aacpSourceCollector];
        v26 = sub_100018CC4(rateCopy);
        sub_100018B60(watchSourceCollector2, v55, v56, v26);
LABEL_28:
      }
    }

    -[HRCAnalyticsReporter heartRatePublishedFromSource:steadyClockDurationCount:](self->_analyticsReporter, "heartRatePublishedFromSource:steadyClockDurationCount:", [rateCopy sourceType], std::chrono::steady_clock::now().__d_.__rep_);
    goto LABEL_30;
  }

  v56 = sub_10000132C();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
  {
    sub_1000191F8();
  }

LABEL_31:
}

@end