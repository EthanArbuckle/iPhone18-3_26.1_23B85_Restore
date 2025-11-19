@interface GHSThermometerDevice
- (BOOL)extractHealthObservationBodyTemperatureWithStream:(id)a3 observationType:(unsigned int)a4 timestamp:(id)a5 isLive:(BOOL)a6;
- (GHSThermometerDevice)initWithProperties:(id)a3 healthStore:(id)a4;
- (void)healthDataSyncBodyTemperature:(double)a3 unit:(id)a4 startTime:(id)a5 endTime:(id)a6 sensorLocType:(int64_t)a7;
@end

@implementation GHSThermometerDevice

- (GHSThermometerDevice)initWithProperties:(id)a3 healthStore:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyTemperature];
  v9 = [NSSet setWithObjects:v8, 0];

  v13.receiver = self;
  v13.super_class = GHSThermometerDevice;
  v10 = [(GHSBluetoothDevice *)&v13 initWithProperties:v7 healthStore:v6 healthSampleTypes:v9];

  if (v10)
  {
    v11 = v10;
  }

  return v10;
}

- (void)healthDataSyncBodyTemperature:(double)a3 unit:(id)a4 startTime:(id)a5 endTime:(id)a6 sensorLocType:(int64_t)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(GHSBluetoothDevice *)self debugLoggingEnabled];
  v16 = [v15 BOOLValue];

  if (v16)
  {
    v17 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v36 = a3;
      v37 = 2112;
      v38 = v12;
      v39 = 2112;
      v40 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync bodyTemperature=%f, unit=%@, date=%@", buf, 0x20u);
    }
  }

  v18 = [(GHSBluetoothDevice *)self peripheral];
  v19 = [v18 customProperty:@"UpdateHealth"];
  v20 = [v19 isEqualToString:@"1"];

  if (v20)
  {
    v21 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyTemperature];
    v22 = [HKUnit unitFromString:v12];
    v23 = [HKQuantity quantityWithUnit:v22 doubleValue:a3];

    v33 = HKMetadataKeyBodyTemperatureSensorLocation;
    v24 = [NSNumber numberWithInteger:a7];
    v34 = v24;
    v25 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];

    v26 = [(GHSBluetoothDevice *)self hkDevice];
    v27 = [HKQuantitySample quantitySampleWithType:v21 quantity:v23 startDate:v13 endDate:v14 device:v26 metadata:v25];

    v28 = [(GHSBluetoothDevice *)self hkStore];
    v32 = v27;
    v29 = [NSArray arrayWithObjects:&v32 count:1];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000510A4;
    v31[3] = &unk_1000BD528;
    v31[4] = self;
    [v28 saveObjects:v29 withCompletion:v31];
  }

  else
  {
    v30 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync Skipped due to user configuration", buf, 2u);
    }
  }
}

- (BOOL)extractHealthObservationBodyTemperatureWithStream:(id)a3 observationType:(unsigned int)a4 timestamp:(id)a5 isLive:(BOOL)a6
{
  v9 = a3;
  v10 = a5;
  if (a4 > 188423)
  {
    if (a4 > 188451)
    {
      switch(a4)
      {
        case 0x2E024u:
          v11 = 1;
          goto LABEL_26;
        case 0x2E028u:
          v11 = 5;
          goto LABEL_26;
        case 0x2E030u:
          v11 = 8;
          goto LABEL_26;
      }
    }

    else
    {
      switch(a4)
      {
        case 0x2E008u:
          v11 = 6;
          goto LABEL_26;
        case 0x2E00Cu:
          v11 = 3;
          goto LABEL_26;
        case 0x2E010u:
          v11 = 4;
          goto LABEL_26;
      }
    }

LABEL_43:
    v18 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100079248(v18, self);
    }

    v12 = 0;
    goto LABEL_42;
  }

  v11 = 2;
  if (a4 > 150387)
  {
    switch(a4)
    {
      case 0x24B74u:
        goto LABEL_26;
      case 0x24B78u:
        v11 = 9;
        goto LABEL_26;
      case 0x2E004u:
        v11 = 7;
        goto LABEL_26;
    }

    goto LABEL_43;
  }

  if (a4 != 150344)
  {
    if (a4 == 150352)
    {
      v11 = 10;
    }

    else if (a4 != 150364)
    {
      goto LABEL_43;
    }
  }

LABEL_26:
  v20 = 0;
  v19 = 0.0;
  if ([v9 readUint16:&v20])
  {
    if (v20 == 4416)
    {
      v12 = 1;
      v13 = @"degF";
    }

    else if (v20 == 6048)
    {
      v12 = 1;
      v13 = @"degC";
    }

    else
    {
      v14 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100079018(v14, self, &v20);
      }

      v13 = 0;
      v12 = 0;
    }
  }

  else
  {
    v13 = 0;
    v12 = 1;
  }

  if (([v9 readIEEEFloat:&v19] & 1) == 0)
  {
    v15 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000790F0(v15);
    }
  }

  if (v19 == 0.0)
  {
    v16 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007919C(v16);
    }
  }

  else
  {
    [(GHSThermometerDevice *)self healthDataSyncBodyTemperature:v13 unit:v10 startTime:v10 endTime:v11 sensorLocType:v19];
  }

LABEL_42:

  return v12;
}

@end