@interface GHSThermometerDevice
- (BOOL)extractHealthObservationBodyTemperatureWithStream:(id)stream observationType:(unsigned int)type timestamp:(id)timestamp isLive:(BOOL)live;
- (GHSThermometerDevice)initWithProperties:(id)properties healthStore:(id)store;
- (void)healthDataSyncBodyTemperature:(double)temperature unit:(id)unit startTime:(id)time endTime:(id)endTime sensorLocType:(int64_t)type;
@end

@implementation GHSThermometerDevice

- (GHSThermometerDevice)initWithProperties:(id)properties healthStore:(id)store
{
  storeCopy = store;
  propertiesCopy = properties;
  v8 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyTemperature];
  v9 = [NSSet setWithObjects:v8, 0];

  v13.receiver = self;
  v13.super_class = GHSThermometerDevice;
  v10 = [(GHSBluetoothDevice *)&v13 initWithProperties:propertiesCopy healthStore:storeCopy healthSampleTypes:v9];

  if (v10)
  {
    v11 = v10;
  }

  return v10;
}

- (void)healthDataSyncBodyTemperature:(double)temperature unit:(id)unit startTime:(id)time endTime:(id)endTime sensorLocType:(int64_t)type
{
  unitCopy = unit;
  timeCopy = time;
  endTimeCopy = endTime;
  debugLoggingEnabled = [(GHSBluetoothDevice *)self debugLoggingEnabled];
  bOOLValue = [debugLoggingEnabled BOOLValue];

  if (bOOLValue)
  {
    v17 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      temperatureCopy = temperature;
      v37 = 2112;
      v38 = unitCopy;
      v39 = 2112;
      v40 = timeCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync bodyTemperature=%f, unit=%@, date=%@", buf, 0x20u);
    }
  }

  peripheral = [(GHSBluetoothDevice *)self peripheral];
  v19 = [peripheral customProperty:@"UpdateHealth"];
  v20 = [v19 isEqualToString:@"1"];

  if (v20)
  {
    v21 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyTemperature];
    v22 = [HKUnit unitFromString:unitCopy];
    v23 = [HKQuantity quantityWithUnit:v22 doubleValue:temperature];

    v33 = HKMetadataKeyBodyTemperatureSensorLocation;
    v24 = [NSNumber numberWithInteger:type];
    v34 = v24;
    v25 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];

    hkDevice = [(GHSBluetoothDevice *)self hkDevice];
    v27 = [HKQuantitySample quantitySampleWithType:v21 quantity:v23 startDate:timeCopy endDate:endTimeCopy device:hkDevice metadata:v25];

    hkStore = [(GHSBluetoothDevice *)self hkStore];
    v32 = v27;
    v29 = [NSArray arrayWithObjects:&v32 count:1];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000510A4;
    v31[3] = &unk_1000BD528;
    v31[4] = self;
    [hkStore saveObjects:v29 withCompletion:v31];
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

- (BOOL)extractHealthObservationBodyTemperatureWithStream:(id)stream observationType:(unsigned int)type timestamp:(id)timestamp isLive:(BOOL)live
{
  streamCopy = stream;
  timestampCopy = timestamp;
  if (type > 188423)
  {
    if (type > 188451)
    {
      switch(type)
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
      switch(type)
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
  if (type > 150387)
  {
    switch(type)
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

  if (type != 150344)
  {
    if (type == 150352)
    {
      v11 = 10;
    }

    else if (type != 150364)
    {
      goto LABEL_43;
    }
  }

LABEL_26:
  v20 = 0;
  v19 = 0.0;
  if ([streamCopy readUint16:&v20])
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

  if (([streamCopy readIEEEFloat:&v19] & 1) == 0)
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
    [(GHSThermometerDevice *)self healthDataSyncBodyTemperature:v13 unit:timestampCopy startTime:timestampCopy endTime:v11 sensorLocType:v19];
  }

LABEL_42:

  return v12;
}

@end