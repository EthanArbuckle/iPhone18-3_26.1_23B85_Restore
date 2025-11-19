@interface HRCPublisher
- (HRCPublisher)initWithAnalyticsReporter:(id)a3 isInternalVariant:(BOOL)a4;
- (void)_disableDataCollectorForSource:(unsigned __int8)a3;
- (void)_enableDataCollectorForSource:(unsigned __int8)a3;
- (void)_handleSourceUpdate:(const HRCSourceUpdate *)a3;
- (void)_publishHeartRate:(id)a3;
- (void)handleSourceUpdate:(const HRCSourceUpdate *)a3;
- (void)publishHeartRate:(id)a3;
@end

@implementation HRCPublisher

- (HRCPublisher)initWithAnalyticsReporter:(id)a3 isInternalVariant:(BOOL)a4
{
  v7 = a3;
  v20.receiver = self;
  v20.super_class = HRCPublisher;
  v8 = [(HRCPublisher *)&v20 init];
  objc_storeStrong(&v8->_analyticsReporter, a3);
  v9 = dispatch_queue_create("com.apple.heartratecoordinator.healthkit.publisher", 0);
  publisherQueue = v8->_publisherQueue;
  v8->_publisherQueue = v9;

  v11 = v8->_publisherQueue;
  if (v11)
  {
    v8->_isInternalVariant = a4;
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

- (void)handleSourceUpdate:(const HRCSourceUpdate *)a3
{
  v5 = a3->var0;
  var1 = a3->var1;
  v7 = a3->var2;
  v8 = a3->var3;
  v9 = *&a3->var4;
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

- (void)publishHeartRate:(id)a3
{
  v4 = a3;
  publisherQueue = self->_publisherQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000177A4;
  v7[3] = &unk_100040BC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(publisherQueue, v7);
}

- (void)_handleSourceUpdate:(const HRCSourceUpdate *)a3
{
  dispatch_assert_queue_V2(self->_publisherQueue);
  if (a3->var4)
  {
    if (a3->var5)
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

- (void)_enableDataCollectorForSource:(unsigned __int8)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_publisherQueue);
  switch(v3)
  {
    case 3:
      v12 = [(HRCPublisher *)self btleSourceCollector];
      v8 = sub_100017A08(v12);

      if (v8)
      {
        return;
      }

      v10 = [(HRCPublisher *)self hkStore];
      v6 = sub_100017B04(3, v10);
      [(HRCPublisher *)self setBtleSourceCollector:v6];
      break;
    case 2:
      v11 = [(HRCPublisher *)self watchSourceCollector];
      v7 = sub_100017A08(v11);

      if (v7)
      {
        return;
      }

      v10 = [(HRCPublisher *)self hkStore];
      v6 = sub_100017B04(2, v10);
      [(HRCPublisher *)self setWatchSourceCollector:v6];
      break;
    case 1:
      v9 = [(HRCPublisher *)self aacpSourceCollector];
      v5 = sub_100017A08(v9);

      if (v5)
      {
        return;
      }

      v10 = [(HRCPublisher *)self hkStore];
      v6 = sub_100017B04(1, v10);
      [(HRCPublisher *)self setAacpSourceCollector:v6];
      break;
    default:
      return;
  }
}

- (void)_disableDataCollectorForSource:(unsigned __int8)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_publisherQueue);
  switch(v3)
  {
    case 3:
      v11 = [(HRCPublisher *)self btleSourceCollector];

      if (v11)
      {
        v12 = sub_10000132C();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "tearing down hk data collector for btle source", v14, 2u);
        }

        v13 = [(HRCPublisher *)self btleSourceCollector];
        [v13 finishWithCompletion:&stru_100040E08];

        [(HRCPublisher *)self setBtleSourceCollector:0];
      }

      break;
    case 2:
      v8 = [(HRCPublisher *)self watchSourceCollector];

      if (v8)
      {
        v9 = sub_10000132C();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "tearing down hk data collector for watch source", v15, 2u);
        }

        v10 = [(HRCPublisher *)self watchSourceCollector];
        [v10 finishWithCompletion:&stru_100040DE8];

        [(HRCPublisher *)self setWatchSourceCollector:0];
      }

      break;
    case 1:
      v5 = [(HRCPublisher *)self aacpSourceCollector];

      if (v5)
      {
        v6 = sub_10000132C();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "tearing down hk data collector for aacp source", buf, 2u);
        }

        v7 = [(HRCPublisher *)self aacpSourceCollector];
        [v7 finishWithCompletion:&stru_100040DC8];

        [(HRCPublisher *)self setAacpSourceCollector:0];
      }

      break;
  }
}

- (void)_publishHeartRate:(id)a3
{
  v58 = a3;
  dispatch_assert_queue_V2(self->_publisherQueue);
  if ([v58 sourceType])
  {
    v47 = _HKPrivateMetadataKeyHeartRateContext;
    v66 = _HKPrivateMetadataKeyHeartRateContext;
    v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v58 context]);
    v67 = v3;
    v56 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];

    v4 = sub_10000132C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v58 uuid];
      [v58 heartRate];
      *buf = 138544131;
      *&buf[4] = v5;
      v60 = 2053;
      v61 = v6;
      v62 = 2053;
      v63 = [v58 hrContext];
      v64 = 1026;
      v65 = [v58 streamingThrottleStatus];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "publishing HR sample to HK with UUID : %{public}@ , bpm : %{sensitive}f , context : %{sensitive}ld , streamingThrottleStatus : %{public}d", buf, 0x26u);
    }

    v7 = [HKDevice alloc];
    v51 = [v58 device];
    v52 = [v51 name];
    v50 = [v58 device];
    v54 = [v50 manufacturer];
    v49 = [v58 device];
    v53 = [v49 model];
    v48 = [v58 device];
    v8 = [v48 hardwareVersion];
    v9 = [v58 device];
    v10 = [v9 firmwareVersion];
    v11 = [v58 device];
    v12 = [v11 softwareVersion];
    v13 = [v58 device];
    v14 = [v13 localIdentifier];
    v15 = [v58 device];
    v16 = [v15 UDIDeviceIdentifier];
    v55 = [v7 initWithName:v52 manufacturer:v54 model:v53 hardwareVersion:v8 firmwareVersion:v10 softwareVersion:v12 localIdentifier:v14 UDIDeviceIdentifier:v16];

    v17 = [v58 device];
    v18 = [v17 bluetoothIdentifier];
    [v55 _setBluetoothIdentifier:v18];

    v19 = [v58 sourceType];
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        if ([v58 hrContext] == 2)
        {
          v32 = [(HRCPublisher *)self watchSourceCollector];
          v33 = v32 == 0;

          if (v33)
          {
            v34 = sub_10000132C();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              sub_100019190();
            }

            v35 = [(HRCPublisher *)self hkStore];
            v36 = sub_100017B04(2, v35);
            [(HRCPublisher *)self setWatchSourceCollector:v36];
          }

          v25 = [(HRCPublisher *)self watchSourceCollector];
          v26 = +[HKDevice localDevice];
          v37 = sub_100018CC4(v58);
          sub_100018B60(v25, v26, v56, v37);
        }

        else
        {
          v25 = [(HRCPublisher *)self hkStore];
          v38 = v58;
          v39 = [HKUnit unitFromString:@"count/min"];
          [v38 heartRate];
          v40 = [HKQuantity quantityWithUnit:v39 doubleValue:?];

          v41 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
          v68 = v47;
          v42 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[HRCUtilities translateToHealthKitContextType:](HRCUtilities, "translateToHealthKitContextType:", [v38 hrContext]));
          *buf = v42;
          v43 = [NSDictionary dictionaryWithObjects:buf forKeys:&v68 count:1];

          v44 = [v38 timestamp];
          v45 = [v38 timestamp];
          v46 = +[HKDevice localDevice];
          v26 = [HKQuantitySample quantitySampleWithType:v41 quantity:v40 startDate:v44 endDate:v45 device:v46 metadata:v43];

          [v25 saveObject:v26 withCompletion:&stru_100040E28];
        }

        goto LABEL_28;
      }

      if (v19 == 3)
      {
        v27 = [(HRCPublisher *)self btleSourceCollector];
        v28 = v27 == 0;

        if (v28)
        {
          v29 = sub_10000132C();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            sub_10001915C();
          }

          v30 = [(HRCPublisher *)self hkStore];
          v31 = sub_100017B04(3, v30);
          [(HRCPublisher *)self setBtleSourceCollector:v31];
        }

        v25 = [(HRCPublisher *)self btleSourceCollector];
        v26 = sub_100018CC4(v58);
        sub_100018B60(v25, v55, v56, v26);
        goto LABEL_28;
      }
    }

    else
    {
      if (!v19)
      {
LABEL_30:

        goto LABEL_31;
      }

      if (v19 == 1)
      {
        v20 = [(HRCPublisher *)self aacpSourceCollector];
        v21 = v20 == 0;

        if (v21)
        {
          v22 = sub_10000132C();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            sub_1000191C4();
          }

          v23 = [(HRCPublisher *)self hkStore];
          v24 = sub_100017B04(1, v23);
          [(HRCPublisher *)self setAacpSourceCollector:v24];
        }

        v25 = [(HRCPublisher *)self aacpSourceCollector];
        v26 = sub_100018CC4(v58);
        sub_100018B60(v25, v55, v56, v26);
LABEL_28:
      }
    }

    -[HRCAnalyticsReporter heartRatePublishedFromSource:steadyClockDurationCount:](self->_analyticsReporter, "heartRatePublishedFromSource:steadyClockDurationCount:", [v58 sourceType], std::chrono::steady_clock::now().__d_.__rep_);
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