@interface GHSBloodGlucoseMeterDevice
- (BOOL)extractHealthObservationBloodGlucoseWithStream:(id)stream observationType:(unsigned int)type timestamp:(id)timestamp isLive:(BOOL)live;
- (GHSBloodGlucoseMeterDevice)initWithProperties:(id)properties healthStore:(id)store;
- (void)healthDataSyncBloodGlucose:(double)glucose unit:(id)unit startTime:(id)time endTime:(id)endTime;
@end

@implementation GHSBloodGlucoseMeterDevice

- (GHSBloodGlucoseMeterDevice)initWithProperties:(id)properties healthStore:(id)store
{
  storeCopy = store;
  propertiesCopy = properties;
  v8 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodGlucose];
  v9 = [NSSet setWithObjects:v8, 0];

  v13.receiver = self;
  v13.super_class = GHSBloodGlucoseMeterDevice;
  v10 = [(GHSBluetoothDevice *)&v13 initWithProperties:propertiesCopy healthStore:storeCopy healthSampleTypes:v9];

  if (v10)
  {
    v11 = v10;
  }

  return v10;
}

- (void)healthDataSyncBloodGlucose:(double)glucose unit:(id)unit startTime:(id)time endTime:(id)endTime
{
  unitCopy = unit;
  timeCopy = time;
  endTimeCopy = endTime;
  debugLoggingEnabled = [(GHSBluetoothDevice *)self debugLoggingEnabled];
  bOOLValue = [debugLoggingEnabled BOOLValue];

  if (bOOLValue)
  {
    v15 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      glucoseCopy = glucose;
      v31 = 2112;
      v32 = unitCopy;
      v33 = 2112;
      v34 = timeCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync bloodGlucose=%f, unit=%@, date=%@", buf, 0x20u);
    }
  }

  peripheral = [(GHSBluetoothDevice *)self peripheral];
  v17 = [peripheral customProperty:@"UpdateHealth"];
  v18 = [v17 isEqualToString:@"1"];

  if (v18)
  {
    v19 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodGlucose];
    v20 = [HKUnit unitFromString:unitCopy];
    v21 = [HKQuantity quantityWithUnit:v20 doubleValue:glucose];

    hkDevice = [(GHSBluetoothDevice *)self hkDevice];
    v23 = [HKQuantitySample quantitySampleWithType:v19 quantity:v21 startDate:timeCopy endDate:endTimeCopy device:hkDevice metadata:0];

    hkStore = [(GHSBluetoothDevice *)self hkStore];
    v28 = v23;
    v25 = [NSArray arrayWithObjects:&v28 count:1];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000130E4;
    v27[3] = &unk_1000BD528;
    v27[4] = self;
    [hkStore saveObjects:v25 withCompletion:v27];
  }

  else
  {
    v26 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync Skipped due to user configuration", buf, 2u);
    }
  }
}

- (BOOL)extractHealthObservationBloodGlucoseWithStream:(id)stream observationType:(unsigned int)type timestamp:(id)timestamp isLive:(BOOL)live
{
  streamCopy = stream;
  timestampCopy = timestamp;
  if (type == 160184)
  {
    v21 = 0;
    v20 = 0.0;
    if ([streamCopy readUint16:&v21])
    {
      if (v21 == 2130)
      {
        v11 = 1;
        v12 = @"mg/dL";
      }

      else if (v21 == 4722)
      {
        v11 = 1;
        v12 = @"mmol/L";
      }

      else
      {
        v13 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_10007225C(v13, self, &v21);
        }

        v12 = 0;
        v11 = 0;
      }
    }

    else
    {
      v12 = 0;
      v11 = 1;
    }

    if (([streamCopy readIEEEFloat:&v20] & 1) == 0)
    {
      v14 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100072344(v14, self);
      }
    }

    if (v20 == 0.0)
    {
      v15 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        peripheral = [(GHSBluetoothDevice *)self peripheral];
        name = [peripheral name];
        *buf = 141558275;
        v23 = 1752392040;
        v24 = 2113;
        v25 = name;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Peripheral %{private, mask.hash}@ observation value not saved due to invalid value", buf, 0x16u);
      }
    }

    else
    {
      [(GHSBloodGlucoseMeterDevice *)self healthDataSyncBloodGlucose:v12 unit:timestampCopy startTime:timestampCopy endTime:v20];
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end