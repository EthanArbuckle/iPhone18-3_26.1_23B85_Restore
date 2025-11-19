@interface GHSWeightScaleDevice
- (BOOL)extractHealthObservationBodyHeightWithStream:(id)a3 timestamp:(id)a4 isLive:(BOOL)a5;
- (BOOL)extractHealthObservationBodyMassIndexWithStream:(id)a3 timestamp:(id)a4 isLive:(BOOL)a5;
- (BOOL)extractHealthObservationBodyMassWithStream:(id)a3 timestamp:(id)a4 isLive:(BOOL)a5;
- (BOOL)handleLiveHealthObservationsData:(id)a3 observationClassType:(unsigned __int8)a4 observationType:(unsigned int)a5 userID:(unsigned __int8)a6 observationID:(unsigned int)a7 timestamp:(id)a8;
- (BOOL)handleStoredHealthObservationsData:(id)a3 observationClassType:(unsigned __int8)a4 observationType:(unsigned int)a5 userID:(unsigned __int8)a6 observationID:(unsigned int)a7 timestamp:(id)a8;
- (GHSWeightScaleDevice)initWithProperties:(id)a3 healthStore:(id)a4;
- (void)healthDataSyncBodyMeasurement:(double)a3 measurementType:(id)a4 unit:(id)a5 startTime:(id)a6 endTime:(id)a7;
@end

@implementation GHSWeightScaleDevice

- (GHSWeightScaleDevice)initWithProperties:(id)a3 healthStore:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyMass];
  v9 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeight];
  v10 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyMassIndex];
  v11 = [NSSet setWithObjects:v8, v9, v10, 0];

  v15.receiver = self;
  v15.super_class = GHSWeightScaleDevice;
  v12 = [(GHSBluetoothDevice *)&v15 initWithProperties:v7 healthStore:v6 healthSampleTypes:v11];

  if (v12)
  {
    v13 = v12;
  }

  return v12;
}

- (BOOL)handleLiveHealthObservationsData:(id)a3 observationClassType:(unsigned __int8)a4 observationType:(unsigned int)a5 userID:(unsigned __int8)a6 observationID:(unsigned int)a7 timestamp:(id)a8
{
  v10 = a6;
  v12 = a4;
  v14 = a3;
  v15 = a8;
  v16 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [(GHSBluetoothDevice *)self peripheral];
    v19 = [v18 name];
    v24 = 141559299;
    v25 = 1752392040;
    v26 = 2113;
    v27 = v19;
    v28 = 1024;
    v29 = v12;
    v30 = 1024;
    v31 = a5;
    v32 = 1024;
    v33 = v10;
    v34 = 1024;
    v35 = a7;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Handle live health observation for peripheral %{private, mask.hash}@: classType %u, observationType %u, userId %u, observationId %u", &v24, 0x2Eu);
  }

  if (v12 == 1)
  {
    switch(a5)
    {
      case 0x2E150u:
        v20 = 1;
        if ([(GHSWeightScaleDevice *)self extractHealthObservationBodyMassIndexWithStream:v14 timestamp:v15 isLive:1])
        {
          goto LABEL_18;
        }

        break;
      case 0x2E144u:
        v20 = 1;
        if ([(GHSWeightScaleDevice *)self extractHealthObservationBodyHeightWithStream:v14 timestamp:v15 isLive:1])
        {
          goto LABEL_18;
        }

        break;
      case 0x2E140u:
        v20 = 1;
        if ([(GHSWeightScaleDevice *)self extractHealthObservationBodyMassWithStream:v14 timestamp:v15 isLive:1])
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

- (BOOL)handleStoredHealthObservationsData:(id)a3 observationClassType:(unsigned __int8)a4 observationType:(unsigned int)a5 userID:(unsigned __int8)a6 observationID:(unsigned int)a7 timestamp:(id)a8
{
  v10 = a4;
  v12 = a3;
  v13 = a8;
  v14 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [(GHSBluetoothDevice *)self peripheral];
    v17 = [v16 name];
    v22 = 141558275;
    v23 = 1752392040;
    v24 = 2113;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Handle stored health observation for peripheral %{private, mask.hash}@", &v22, 0x16u);
  }

  if (v10 != 1)
  {
    goto LABEL_15;
  }

  if (a5 == 188752)
  {
    if (![(GHSWeightScaleDevice *)self extractHealthObservationBodyMassIndexWithStream:v12 timestamp:v13 isLive:0])
    {
      goto LABEL_15;
    }

LABEL_12:
    v18 = 1;
    goto LABEL_18;
  }

  if (a5 == 188740)
  {
    if (![(GHSWeightScaleDevice *)self extractHealthObservationBodyHeightWithStream:v12 timestamp:v13 isLive:0])
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (a5 != 188736)
  {
    v19 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007BBC4(v19);
    }

    goto LABEL_15;
  }

  if ([(GHSWeightScaleDevice *)self extractHealthObservationBodyMassWithStream:v12 timestamp:v13 isLive:0])
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

- (void)healthDataSyncBodyMeasurement:(double)a3 measurementType:(id)a4 unit:(id)a5 startTime:(id)a6 endTime:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(GHSBluetoothDevice *)self debugLoggingEnabled];
  v17 = [v16 BOOLValue];

  if (v17)
  {
    if (HKQuantityTypeIdentifierBodyMass == v12)
    {
      v18 = @"BodyMass";
    }

    else if (HKQuantityTypeIdentifierHeight == v12)
    {
      v18 = @"BodyHeight";
    }

    else
    {
      v18 = HKQuantityTypeIdentifierBodyMassIndex == v12 ? @"BodyMassIndex" : @"Unknown";
    }

    v19 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v34 = v18;
      v35 = 2048;
      v36 = a3;
      v37 = 2112;
      v38 = v13;
      v39 = 2112;
      v40 = v14;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync %@=%f, unit=%@, date=%@", buf, 0x2Au);
    }
  }

  v20 = [(GHSBluetoothDevice *)self peripheral];
  v21 = [v20 customProperty:@"UpdateHealth"];
  v22 = [v21 isEqualToString:@"1"];

  if (v22)
  {
    v23 = [HKQuantityType quantityTypeForIdentifier:v12];
    if (v13)
    {
      [HKUnit unitFromString:v13];
    }

    else
    {
      +[HKUnit countUnit];
    }
    v25 = ;
    v26 = [HKQuantity quantityWithUnit:v25 doubleValue:a3];

    v27 = [(GHSBluetoothDevice *)self hkDevice];
    v28 = [HKQuantitySample quantitySampleWithType:v23 quantity:v26 startDate:v14 endDate:v15 device:v27 metadata:0];

    v29 = [(GHSBluetoothDevice *)self hkStore];
    v32 = v28;
    v30 = [NSArray arrayWithObjects:&v32 count:1];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100068DC8;
    v31[3] = &unk_1000BD528;
    v31[4] = self;
    [v29 saveObjects:v30 withCompletion:v31];
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

- (BOOL)extractHealthObservationBodyMassWithStream:(id)a3 timestamp:(id)a4 isLive:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v17 = 0;
  v16 = 0.0;
  if ([v7 readUint16:&v17])
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

  if (([v7 readIEEEFloat:&v16] & 1) == 0)
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
    [(GHSWeightScaleDevice *)self healthDataSyncBodyMeasurement:HKQuantityTypeIdentifierBodyMass measurementType:v10 unit:v8 startTime:v8 endTime:v13];
  }

  return v9;
}

- (BOOL)extractHealthObservationBodyHeightWithStream:(id)a3 timestamp:(id)a4 isLive:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v17 = 0;
  v16 = 0.0;
  if ([v7 readUint16:&v17])
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

  if (([v7 readIEEEFloat:&v16] & 1) == 0)
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
    [(GHSWeightScaleDevice *)self healthDataSyncBodyMeasurement:HKQuantityTypeIdentifierHeight measurementType:v10 unit:v8 startTime:v8 endTime:v13];
  }

  return v9;
}

- (BOOL)extractHealthObservationBodyMassIndexWithStream:(id)a3 timestamp:(id)a4 isLive:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v16 = 0;
  v15 = 0.0;
  v9 = [v7 readUint16:&v16];
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

  if (([v7 readIEEEFloat:&v15] & 1) == 0)
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
    [(GHSWeightScaleDevice *)self healthDataSyncBodyMeasurement:HKQuantityTypeIdentifierBodyMassIndex measurementType:0 unit:v8 startTime:v8 endTime:v15];
  }

  return v10 ^ 1;
}

@end