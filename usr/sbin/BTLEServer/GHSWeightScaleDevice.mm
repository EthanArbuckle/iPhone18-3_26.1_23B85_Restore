@interface GHSWeightScaleDevice
- (BOOL)extractHealthObservationBodyHeightWithStream:(id)stream timestamp:(id)timestamp isLive:(BOOL)live;
- (BOOL)extractHealthObservationBodyMassIndexWithStream:(id)stream timestamp:(id)timestamp isLive:(BOOL)live;
- (BOOL)extractHealthObservationBodyMassWithStream:(id)stream timestamp:(id)timestamp isLive:(BOOL)live;
- (BOOL)handleLiveHealthObservationsData:(id)data observationClassType:(unsigned __int8)type observationType:(unsigned int)observationType userID:(unsigned __int8)d observationID:(unsigned int)iD timestamp:(id)timestamp;
- (BOOL)handleStoredHealthObservationsData:(id)data observationClassType:(unsigned __int8)type observationType:(unsigned int)observationType userID:(unsigned __int8)d observationID:(unsigned int)iD timestamp:(id)timestamp;
- (GHSWeightScaleDevice)initWithProperties:(id)properties healthStore:(id)store;
- (void)healthDataSyncBodyMeasurement:(double)measurement measurementType:(id)type unit:(id)unit startTime:(id)time endTime:(id)endTime;
@end

@implementation GHSWeightScaleDevice

- (GHSWeightScaleDevice)initWithProperties:(id)properties healthStore:(id)store
{
  storeCopy = store;
  propertiesCopy = properties;
  v8 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyMass];
  v9 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeight];
  v10 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyMassIndex];
  v11 = [NSSet setWithObjects:v8, v9, v10, 0];

  v15.receiver = self;
  v15.super_class = GHSWeightScaleDevice;
  v12 = [(GHSBluetoothDevice *)&v15 initWithProperties:propertiesCopy healthStore:storeCopy healthSampleTypes:v11];

  if (v12)
  {
    v13 = v12;
  }

  return v12;
}

- (BOOL)handleLiveHealthObservationsData:(id)data observationClassType:(unsigned __int8)type observationType:(unsigned int)observationType userID:(unsigned __int8)d observationID:(unsigned int)iD timestamp:(id)timestamp
{
  dCopy = d;
  typeCopy = type;
  dataCopy = data;
  timestampCopy = timestamp;
  v16 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    peripheral = [(GHSBluetoothDevice *)self peripheral];
    name = [peripheral name];
    v24 = 141559299;
    v25 = 1752392040;
    v26 = 2113;
    v27 = name;
    v28 = 1024;
    v29 = typeCopy;
    v30 = 1024;
    observationTypeCopy = observationType;
    v32 = 1024;
    v33 = dCopy;
    v34 = 1024;
    iDCopy = iD;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Handle live health observation for peripheral %{private, mask.hash}@: classType %u, observationType %u, userId %u, observationId %u", &v24, 0x2Eu);
  }

  if (typeCopy == 1)
  {
    switch(observationType)
    {
      case 0x2E150u:
        v20 = 1;
        if ([(GHSWeightScaleDevice *)self extractHealthObservationBodyMassIndexWithStream:dataCopy timestamp:timestampCopy isLive:1])
        {
          goto LABEL_18;
        }

        break;
      case 0x2E144u:
        v20 = 1;
        if ([(GHSWeightScaleDevice *)self extractHealthObservationBodyHeightWithStream:dataCopy timestamp:timestampCopy isLive:1])
        {
          goto LABEL_18;
        }

        break;
      case 0x2E140u:
        v20 = 1;
        if ([(GHSWeightScaleDevice *)self extractHealthObservationBodyMassWithStream:dataCopy timestamp:timestampCopy isLive:1])
        {
          goto LABEL_18;
        }

        break;
      default:
        v21 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_10007BA64(v21);
        }

        break;
    }
  }

  v22 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007BB1C(v22);
  }

  v20 = 0;
LABEL_18:

  return v20;
}

- (BOOL)handleStoredHealthObservationsData:(id)data observationClassType:(unsigned __int8)type observationType:(unsigned int)observationType userID:(unsigned __int8)d observationID:(unsigned int)iD timestamp:(id)timestamp
{
  typeCopy = type;
  dataCopy = data;
  timestampCopy = timestamp;
  v14 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    peripheral = [(GHSBluetoothDevice *)self peripheral];
    name = [peripheral name];
    v22 = 141558275;
    v23 = 1752392040;
    v24 = 2113;
    v25 = name;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Handle stored health observation for peripheral %{private, mask.hash}@", &v22, 0x16u);
  }

  if (typeCopy != 1)
  {
    goto LABEL_15;
  }

  if (observationType == 188752)
  {
    if (![(GHSWeightScaleDevice *)self extractHealthObservationBodyMassIndexWithStream:dataCopy timestamp:timestampCopy isLive:0])
    {
      goto LABEL_15;
    }

LABEL_12:
    v18 = 1;
    goto LABEL_18;
  }

  if (observationType == 188740)
  {
    if (![(GHSWeightScaleDevice *)self extractHealthObservationBodyHeightWithStream:dataCopy timestamp:timestampCopy isLive:0])
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (observationType != 188736)
  {
    v19 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007BBC4(v19);
    }

    goto LABEL_15;
  }

  if ([(GHSWeightScaleDevice *)self extractHealthObservationBodyMassWithStream:dataCopy timestamp:timestampCopy isLive:0])
  {
    goto LABEL_12;
  }

LABEL_15:
  v20 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007BC7C(v20);
  }

  v18 = 0;
LABEL_18:

  return v18;
}

- (void)healthDataSyncBodyMeasurement:(double)measurement measurementType:(id)type unit:(id)unit startTime:(id)time endTime:(id)endTime
{
  typeCopy = type;
  unitCopy = unit;
  timeCopy = time;
  endTimeCopy = endTime;
  debugLoggingEnabled = [(GHSBluetoothDevice *)self debugLoggingEnabled];
  bOOLValue = [debugLoggingEnabled BOOLValue];

  if (bOOLValue)
  {
    if (HKQuantityTypeIdentifierBodyMass == typeCopy)
    {
      v18 = @"BodyMass";
    }

    else if (HKQuantityTypeIdentifierHeight == typeCopy)
    {
      v18 = @"BodyHeight";
    }

    else
    {
      v18 = HKQuantityTypeIdentifierBodyMassIndex == typeCopy ? @"BodyMassIndex" : @"Unknown";
    }

    v19 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v34 = v18;
      v35 = 2048;
      measurementCopy = measurement;
      v37 = 2112;
      v38 = unitCopy;
      v39 = 2112;
      v40 = timeCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync %@=%f, unit=%@, date=%@", buf, 0x2Au);
    }
  }

  peripheral = [(GHSBluetoothDevice *)self peripheral];
  v21 = [peripheral customProperty:@"UpdateHealth"];
  v22 = [v21 isEqualToString:@"1"];

  if (v22)
  {
    v23 = [HKQuantityType quantityTypeForIdentifier:typeCopy];
    if (unitCopy)
    {
      [HKUnit unitFromString:unitCopy];
    }

    else
    {
      +[HKUnit countUnit];
    }
    v25 = ;
    v26 = [HKQuantity quantityWithUnit:v25 doubleValue:measurement];

    hkDevice = [(GHSBluetoothDevice *)self hkDevice];
    v28 = [HKQuantitySample quantitySampleWithType:v23 quantity:v26 startDate:timeCopy endDate:endTimeCopy device:hkDevice metadata:0];

    hkStore = [(GHSBluetoothDevice *)self hkStore];
    v32 = v28;
    v30 = [NSArray arrayWithObjects:&v32 count:1];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100068DC8;
    v31[3] = &unk_1000BD528;
    v31[4] = self;
    [hkStore saveObjects:v30 withCompletion:v31];
  }

  else
  {
    v24 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync Skipped due to user configuration", buf, 2u);
    }
  }
}

- (BOOL)extractHealthObservationBodyMassWithStream:(id)stream timestamp:(id)timestamp isLive:(BOOL)live
{
  streamCopy = stream;
  timestampCopy = timestamp;
  v17 = 0;
  v16 = 0.0;
  if ([streamCopy readUint16:&v17])
  {
    if (v17 == 1731)
    {
      v9 = 1;
      v10 = @"g";
    }

    else if (v17 == 1760)
    {
      v9 = 1;
      v10 = @"lb";
    }

    else
    {
      v11 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007BE1C(v11, self, &v17);
      }

      v10 = 0;
      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  if (([streamCopy readIEEEFloat:&v16] & 1) == 0)
  {
    v12 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007BECC(v12);
    }

    if (v17 == 1731)
    {
      v9 = 0;
      v13 = v16 * 1000.0;
      v16 = v16 * 1000.0;
      goto LABEL_17;
    }

    v9 = 0;
  }

  v13 = v16;
LABEL_17:
  if (v13 == 0.0)
  {
    v14 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007BF74(v14);
    }
  }

  else
  {
    [(GHSWeightScaleDevice *)self healthDataSyncBodyMeasurement:HKQuantityTypeIdentifierBodyMass measurementType:v10 unit:timestampCopy startTime:timestampCopy endTime:v13];
  }

  return v9;
}

- (BOOL)extractHealthObservationBodyHeightWithStream:(id)stream timestamp:(id)timestamp isLive:(BOOL)live
{
  streamCopy = stream;
  timestampCopy = timestamp;
  v17 = 0;
  v16 = 0.0;
  if ([streamCopy readUint16:&v17])
  {
    if (v17 == 1297)
    {
      v9 = 1;
      v10 = @"m";
    }

    else if (v17 == 1376)
    {
      v9 = 1;
      v10 = @"in";
    }

    else
    {
      v11 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007BE1C(v11, self, &v17);
      }

      v10 = 0;
      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  if (([streamCopy readIEEEFloat:&v16] & 1) == 0)
  {
    v12 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007BECC(v12);
    }

    if (v17 == 1297)
    {
      v9 = 0;
      v13 = v16 / 100.0;
      v16 = v16 / 100.0;
      goto LABEL_17;
    }

    v9 = 0;
  }

  v13 = v16;
LABEL_17:
  if (v13 == 0.0)
  {
    v14 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007BF74(v14);
    }
  }

  else
  {
    [(GHSWeightScaleDevice *)self healthDataSyncBodyMeasurement:HKQuantityTypeIdentifierHeight measurementType:v10 unit:timestampCopy startTime:timestampCopy endTime:v13];
  }

  return v9;
}

- (BOOL)extractHealthObservationBodyMassIndexWithStream:(id)stream timestamp:(id)timestamp isLive:(BOOL)live
{
  streamCopy = stream;
  timestampCopy = timestamp;
  v16 = 0;
  v15 = 0.0;
  v9 = [streamCopy readUint16:&v16];
  if (v16 == 7747)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (v10 == 1)
  {
    v11 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007BE1C(v11, self, &v16);
    }
  }

  if (([streamCopy readIEEEFloat:&v15] & 1) == 0)
  {
    v12 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007BECC(v12);
    }
  }

  if (v15 == 0.0)
  {
    v13 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007BF74(v13);
    }
  }

  else
  {
    [(GHSWeightScaleDevice *)self healthDataSyncBodyMeasurement:HKQuantityTypeIdentifierBodyMassIndex measurementType:0 unit:timestampCopy startTime:timestampCopy endTime:v15];
  }

  return v10 ^ 1;
}

@end