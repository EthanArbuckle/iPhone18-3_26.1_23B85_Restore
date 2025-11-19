@interface GHSBloodGlucoseMeterDevice
- (BOOL)extractHealthObservationBloodGlucoseWithStream:(id)a3 observationType:(unsigned int)a4 timestamp:(id)a5 isLive:(BOOL)a6;
- (GHSBloodGlucoseMeterDevice)initWithProperties:(id)a3 healthStore:(id)a4;
- (void)healthDataSyncBloodGlucose:(double)a3 unit:(id)a4 startTime:(id)a5 endTime:(id)a6;
@end

@implementation GHSBloodGlucoseMeterDevice

- (GHSBloodGlucoseMeterDevice)initWithProperties:(id)a3 healthStore:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodGlucose];
  v9 = [NSSet setWithObjects:v8, 0];

  v13.receiver = self;
  v13.super_class = GHSBloodGlucoseMeterDevice;
  v10 = [(GHSBluetoothDevice *)&v13 initWithProperties:v7 healthStore:v6 healthSampleTypes:v9];

  if (v10)
  {
    v11 = v10;
  }

  return v10;
}

- (void)healthDataSyncBloodGlucose:(double)a3 unit:(id)a4 startTime:(id)a5 endTime:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(GHSBluetoothDevice *)self debugLoggingEnabled];
  v14 = [v13 BOOLValue];

  if (v14)
  {
    v15 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v30 = a3;
      v31 = 2112;
      v32 = v10;
      v33 = 2112;
      v34 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync bloodGlucose=%f, unit=%@, date=%@", buf, 0x20u);
    }
  }

  v16 = [(GHSBluetoothDevice *)self peripheral];
  v17 = [v16 customProperty:@"UpdateHealth"];
  v18 = [v17 isEqualToString:@"1"];

  if (v18)
  {
    v19 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodGlucose];
    v20 = [HKUnit unitFromString:v10];
    v21 = [HKQuantity quantityWithUnit:v20 doubleValue:a3];

    v22 = [(GHSBluetoothDevice *)self hkDevice];
    v23 = [HKQuantitySample quantitySampleWithType:v19 quantity:v21 startDate:v11 endDate:v12 device:v22 metadata:0];

    v24 = [(GHSBluetoothDevice *)self hkStore];
    v28 = v23;
    v25 = [NSArray arrayWithObjects:&v28 count:1];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000130E4;
    v27[3] = &unk_1000BD528;
    v27[4] = self;
    [v24 saveObjects:v25 withCompletion:v27];
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

- (BOOL)extractHealthObservationBloodGlucoseWithStream:(id)a3 observationType:(unsigned int)a4 timestamp:(id)a5 isLive:(BOOL)a6
{
  v9 = a3;
  v10 = a5;
  if (a4 == 160184)
  {
    v21 = 0;
    v20 = 0.0;
    if ([v9 readUint16:&v21])
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

    if (([v9 readIEEEFloat:&v20] & 1) == 0)
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
        v17 = [(GHSBluetoothDevice *)self peripheral];
        v18 = [v17 name];
        *buf = 141558275;
        v23 = 1752392040;
        v24 = 2113;
        v25 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Peripheral %{private, mask.hash}@ observation value not saved due to invalid value", buf, 0x16u);
      }
    }

    else
    {
      [(GHSBloodGlucoseMeterDevice *)self healthDataSyncBloodGlucose:v12 unit:v10 startTime:v10 endTime:v20];
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end