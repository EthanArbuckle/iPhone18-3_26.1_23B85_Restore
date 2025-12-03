@interface GHSBloodPressureDevice
- (BOOL)extractHealthObservationBloodPressureStatusWithStream:(id)stream timestamp:(id)timestamp;
- (BOOL)extractHealthObservationBloodPressureWithStream:(id)stream timestamp:(id)timestamp isLive:(BOOL)live;
- (BOOL)extractHealthObservationHeartRateWithStream:(id)stream timestamp:(id)timestamp isLive:(BOOL)live;
- (BOOL)handleLiveHealthObservationsData:(id)data observationClassType:(unsigned __int8)type observationType:(unsigned int)observationType userID:(unsigned __int8)d observationID:(unsigned int)iD timestamp:(id)timestamp;
- (BOOL)handleStoredHealthObservationsData:(id)data observationClassType:(unsigned __int8)type observationType:(unsigned int)observationType userID:(unsigned __int8)d observationID:(unsigned int)iD timestamp:(id)timestamp;
- (GHSBloodPressureDevice)initWithProperties:(id)properties healthStore:(id)store;
- (void)healthDataSyncBloodPressuresWithSystolicBP:(double)p systolicBPUnit:(id)unit diastolicBP:(double)bP diastolicBPUnit:(id)pUnit startTime:(id)time endTime:(id)endTime;
- (void)healthDataSyncHeartRate:(double)rate unit:(id)unit startTime:(id)time endTime:(id)endTime;
@end

@implementation GHSBloodPressureDevice

- (GHSBloodPressureDevice)initWithProperties:(id)properties healthStore:(id)store
{
  storeCopy = store;
  propertiesCopy = properties;
  v8 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodPressureSystolic];
  v9 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodPressureDiastolic];
  v10 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
  v11 = [NSSet setWithObjects:v8, v9, v10, 0];

  v15.receiver = self;
  v15.super_class = GHSBloodPressureDevice;
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
    v23 = 141559299;
    v24 = 1752392040;
    v25 = 2113;
    v26 = name;
    v27 = 1024;
    v28 = typeCopy;
    v29 = 1024;
    observationTypeCopy = observationType;
    v31 = 1024;
    v32 = dCopy;
    v33 = 1024;
    iDCopy = iD;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Handle live health observation for peripheral %{private, mask.hash}@: classType %u, observationType %u, userId %u, observationId %u", &v23, 0x2Eu);
  }

  if (typeCopy == 7)
  {
    if (observationType == 150020)
    {
      v20 = 1;
      if ([(GHSBloodPressureDevice *)self extractHealthObservationBloodPressureWithStream:dataCopy timestamp:timestampCopy isLive:1])
      {
        goto LABEL_17;
      }
    }
  }

  else if (typeCopy == 5)
  {
    if (observationType == 8410608 && [(GHSBloodPressureDevice *)self extractHealthObservationBloodPressureStatusWithStream:dataCopy timestamp:timestampCopy])
    {
      v20 = 1;
      goto LABEL_17;
    }
  }

  else if (typeCopy == 1 && observationType == 149546)
  {
    v20 = 1;
    if ([(GHSBloodPressureDevice *)self extractHealthObservationHeartRateWithStream:dataCopy timestamp:timestampCopy isLive:1])
    {
      goto LABEL_17;
    }
  }

  v21 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007C340(v21, self);
  }

  v20 = 0;
LABEL_17:

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
    v21 = 141558275;
    v22 = 1752392040;
    v23 = 2113;
    v24 = name;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Handle stored health observation for peripheral %{private, mask.hash}@", &v21, 0x16u);
  }

  if (typeCopy == 7)
  {
    if (observationType != 150020 || ![(GHSBloodPressureDevice *)self extractHealthObservationBloodPressureWithStream:dataCopy timestamp:timestampCopy isLive:0])
    {
      goto LABEL_11;
    }

LABEL_10:
    v18 = 1;
    goto LABEL_14;
  }

  if (typeCopy == 1 && observationType == 149546 && [(GHSBloodPressureDevice *)self extractHealthObservationHeartRateWithStream:dataCopy timestamp:timestampCopy isLive:0])
  {
    goto LABEL_10;
  }

LABEL_11:
  v19 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_1000720C8(v19, self);
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (void)healthDataSyncBloodPressuresWithSystolicBP:(double)p systolicBPUnit:(id)unit diastolicBP:(double)bP diastolicBPUnit:(id)pUnit startTime:(id)time endTime:(id)endTime
{
  unitCopy = unit;
  pUnitCopy = pUnit;
  timeCopy = time;
  endTimeCopy = endTime;
  debugLoggingEnabled = [(GHSBluetoothDevice *)self debugLoggingEnabled];
  LODWORD(time) = [debugLoggingEnabled BOOLValue];

  if (time)
  {
    v19 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      bPCopy = p;
      v50 = 2112;
      v51 = unitCopy;
      v52 = 2112;
      v53 = timeCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync systolicBP=%f, unit=%@, date=%@", buf, 0x20u);
    }

    v20 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      bPCopy = bP;
      v50 = 2112;
      v51 = pUnitCopy;
      v52 = 2112;
      v53 = timeCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync diastolicBP=%f, unit=%@, date=%@", buf, 0x20u);
    }
  }

  peripheral = [(GHSBluetoothDevice *)self peripheral];
  v22 = [peripheral customProperty:@"UpdateHealth"];
  v23 = [v22 isEqualToString:@"1"];

  if (v23)
  {
    v24 = [HKUnit unitFromString:unitCopy];
    v42 = [HKQuantity quantityWithUnit:v24 doubleValue:p];

    v44 = unitCopy;
    [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodPressureSystolic];
    v45 = timeCopy;
    v41 = v25 = endTimeCopy;
    v26 = [HKUnit unitFromString:pUnitCopy];
    v27 = [HKQuantity quantityWithUnit:v26 doubleValue:bP];

    [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodPressureDiastolic];
    v28 = v43 = pUnitCopy;
    hkDevice = [(GHSBluetoothDevice *)self hkDevice];
    v30 = [HKQuantitySample quantitySampleWithType:v41 quantity:v42 startDate:v45 endDate:endTimeCopy device:hkDevice metadata:0];

    hkDevice2 = [(GHSBluetoothDevice *)self hkDevice];
    v32 = v27;
    v33 = [HKQuantitySample quantitySampleWithType:v28 quantity:v27 startDate:v45 endDate:v25 device:hkDevice2 metadata:0];

    v34 = [HKCorrelationType correlationTypeForIdentifier:HKCorrelationTypeIdentifierBloodPressure];
    v35 = [NSSet setWithObjects:v30, v33, 0];
    hkDevice3 = [(GHSBluetoothDevice *)self hkDevice];
    v37 = [HKCorrelation correlationWithType:v34 startDate:v45 endDate:v25 objects:v35 device:hkDevice3 metadata:0];

    hkStore = [(GHSBluetoothDevice *)self hkStore];
    v47 = v37;
    v39 = [NSArray arrayWithObjects:&v47 count:1];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10006BCB0;
    v46[3] = &unk_1000BD528;
    v46[4] = self;
    [hkStore saveObjects:v39 withCompletion:v46];

    unitCopy = v44;
    pUnitCopy = v43;

    endTimeCopy = v25;
    timeCopy = v45;
  }

  else
  {
    v40 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync Skipped due to user configuration", buf, 2u);
    }
  }
}

- (void)healthDataSyncHeartRate:(double)rate unit:(id)unit startTime:(id)time endTime:(id)endTime
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
      rateCopy = rate;
      v31 = 2112;
      v32 = unitCopy;
      v33 = 2112;
      v34 = timeCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync heartRate=%f, unit=%@, date=%@", buf, 0x20u);
    }
  }

  peripheral = [(GHSBluetoothDevice *)self peripheral];
  v17 = [peripheral customProperty:@"UpdateHealth"];
  v18 = [v17 isEqualToString:@"1"];

  if (v18)
  {
    v19 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
    v20 = [HKUnit unitFromString:unitCopy];
    v21 = [HKQuantity quantityWithUnit:v20 doubleValue:rate];

    hkDevice = [(GHSBluetoothDevice *)self hkDevice];
    v23 = [HKQuantitySample quantitySampleWithType:v19 quantity:v21 startDate:timeCopy endDate:endTimeCopy device:hkDevice metadata:0];

    hkStore = [(GHSBluetoothDevice *)self hkStore];
    v28 = v23;
    v25 = [NSArray arrayWithObjects:&v28 count:1];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10006C004;
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

- (BOOL)extractHealthObservationBloodPressureWithStream:(id)stream timestamp:(id)timestamp isLive:(BOOL)live
{
  streamCopy = stream;
  timestampCopy = timestamp;
  v74 = 0;
  if ([streamCopy readUint8:&v74])
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      peripheral = [(GHSBluetoothDevice *)self peripheral];
      name = [peripheral name];
      *buf = 141558531;
      v76 = 1752392040;
      v77 = 2113;
      v78 = name;
      v79 = 1024;
      v80 = v74;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Compound observation for peripheral %{private, mask.hash}@: numOfObservations %u", buf, 0x1Cu);
    }
  }

  v73 = 0.0;
  v72 = 0;
  v71 = 0.0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  if (!v74)
  {
    v17 = 1;
    goto LABEL_52;
  }

  v61 = timestampCopy;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  *&v9 = 141558275;
  v60 = v9;
  do
  {
    v66 = -1;
    if ([streamCopy readUint32:{&v66, v60}])
    {
      v18 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        peripheral2 = [(GHSBluetoothDevice *)self peripheral];
        name2 = [peripheral2 name];
        *buf = 141558531;
        v76 = 1752392040;
        v77 = 2113;
        v78 = name2;
        v79 = 1024;
        v80 = v66;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Compound observation for peripheral %{private, mask.hash}@: observationType %d", buf, 0x1Cu);
      }
    }

    v22 = [streamCopy readUint8:&v67];
    v23 = qword_1000DDBC8;
    if (v22 && v67 == 1)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        peripheral3 = [(GHSBluetoothDevice *)self peripheral];
        name3 = [peripheral3 name];
        *buf = 141558531;
        v76 = 1752392040;
        v77 = 2113;
        v78 = name3;
        v79 = 1024;
        v80 = v67;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Compound observation for peripheral %{private, mask.hash}@: observationClassType %d", buf, 0x1Cu);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007C4B8(&v64, v65, v23);
      }

      v17 = 0;
    }

    switch(v66)
    {
      case 150023:
        if (([streamCopy readUint16:&v68] & 1) == 0)
        {
          v33 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            v42 = v33;
            peripheral4 = [(GHSBluetoothDevice *)self peripheral];
            name4 = [peripheral4 name];
            *buf = v60;
            v76 = 1752392040;
            v77 = 2113;
            v78 = name4;
            _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Compound observation for peripheral %{private, mask.hash}@: unit parse failed", buf, 0x16u);
          }
        }

        if (([streamCopy readIEEEFloat:&v69] & 1) == 0)
        {
          v34 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            v35 = v34;
            peripheral5 = [(GHSBluetoothDevice *)self peripheral];
            name5 = [peripheral5 name];
            *buf = v60;
            v76 = 1752392040;
            v77 = 2113;
            v78 = name5;
            _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Compound observation for peripheral %{private, mask.hash}@ value parse failed", buf, 0x16u);
          }
        }

        goto LABEL_46;
      case 150022:
        if ([streamCopy readUint16:&v70])
        {
          v30 = @"mmHg";
          if (v70 == 3872)
          {
            goto LABEL_33;
          }

          v31 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            v48 = v31;
            peripheral6 = [(GHSBluetoothDevice *)self peripheral];
            name6 = [peripheral6 name];
            *buf = 141558531;
            v76 = 1752392040;
            v77 = 2113;
            v78 = name6;
            v79 = 1024;
            v80 = v70;
            _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Compound observation for peripheral %{private, mask.hash}@: diastolicBP invalid Unit %d", buf, 0x1Cu);
          }
        }

        v30 = v15;
LABEL_33:
        if (([streamCopy readIEEEFloat:&v71] & 1) == 0)
        {
          v32 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            v39 = v32;
            peripheral7 = [(GHSBluetoothDevice *)self peripheral];
            name7 = [peripheral7 name];
            *buf = v60;
            v76 = 1752392040;
            v77 = 2113;
            v78 = name7;
            _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Compound observation for peripheral %{private, mask.hash}@ diastolicBP parse failed", buf, 0x16u);
          }
        }

        v15 = v30;
        goto LABEL_46;
      case 150021:
        if ([streamCopy readUint16:&v72])
        {
          v27 = @"mmHg";
          if (v72 == 3872)
          {
            goto LABEL_24;
          }

          v28 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            v51 = v28;
            peripheral8 = [(GHSBluetoothDevice *)self peripheral];
            name8 = [peripheral8 name];
            *buf = 141558531;
            v76 = 1752392040;
            v77 = 2113;
            v78 = name8;
            v79 = 1024;
            v80 = v70;
            _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Compound observation for peripheral %{private, mask.hash}@: systolicBP invalid Unit %d", buf, 0x1Cu);
          }
        }

        v27 = v14;
LABEL_24:
        if (([streamCopy readIEEEFloat:&v73] & 1) == 0)
        {
          v29 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            v45 = v29;
            peripheral9 = [(GHSBluetoothDevice *)self peripheral];
            name9 = [peripheral9 name];
            *buf = v60;
            v76 = 1752392040;
            v77 = 2113;
            v78 = name9;
            _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Compound observation for peripheral %{private, mask.hash}@ systolicBP parse failed", buf, 0x16u);
          }
        }

        v14 = v27;
        goto LABEL_46;
    }

    v38 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007C4F8(&v62, v63, v38);
    }

    v17 = 0;
LABEL_46:
    ++v16;
  }

  while (v16 < v74);
  if (v73 != 0.0 && v71 != 0.0)
  {
    v54 = v15;
    timestampCopy = v61;
    [(GHSBloodPressureDevice *)self healthDataSyncBloodPressuresWithSystolicBP:v14 systolicBPUnit:v54 diastolicBP:v61 diastolicBPUnit:v61 startTime:v73 endTime:v71];
    goto LABEL_54;
  }

  timestampCopy = v61;
LABEL_52:
  v55 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v56 = v55;
    peripheral10 = [(GHSBluetoothDevice *)self peripheral];
    name10 = [peripheral10 name];
    *buf = 141558275;
    v76 = 1752392040;
    v77 = 2113;
    v78 = name10;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Peripheral %{private, mask.hash}@ observation value not saved due to invalid value", buf, 0x16u);
  }

LABEL_54:

  return v17 & 1;
}

- (BOOL)extractHealthObservationBloodPressureStatusWithStream:(id)stream timestamp:(id)timestamp
{
  streamCopy = stream;
  v24 = 0;
  if ([streamCopy readUint8:&v24])
  {
    v7 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      peripheral = [(GHSBluetoothDevice *)self peripheral];
      name = [peripheral name];
      *buf = 141558531;
      v26 = 1752392040;
      v27 = 2113;
      v28 = name;
      v29 = 1024;
      v30 = v24;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Status for peripheral %{private, mask.hash}@: numOfObservations %u", buf, 0x1Cu);
    }
  }

  v22 = 0;
  v23 = 0;
  if (v24)
  {
    v11 = 0;
    *&v6 = 141558531;
    v21 = v6;
    do
    {
      if ([streamCopy readUint32:{&v23, v21}])
      {
        v12 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          peripheral2 = [(GHSBluetoothDevice *)self peripheral];
          name2 = [peripheral2 name];
          *buf = v21;
          v26 = 1752392040;
          v27 = 2113;
          v28 = name2;
          v29 = 1024;
          v30 = v23;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Status for peripheral %{private, mask.hash}@: %d", buf, 0x1Cu);
        }
      }

      if ([streamCopy readUint32:&v22])
      {
        v16 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          peripheral3 = [(GHSBluetoothDevice *)self peripheral];
          name3 = [peripheral3 name];
          *buf = v21;
          v26 = 1752392040;
          v27 = 2113;
          v28 = name3;
          v29 = 1024;
          v30 = v22;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Status for peripheral %{private, mask.hash}@: %d", buf, 0x1Cu);
        }
      }

      ++v11;
    }

    while (v11 < v24);
  }

  return 1;
}

- (BOOL)extractHealthObservationHeartRateWithStream:(id)stream timestamp:(id)timestamp isLive:(BOOL)live
{
  streamCopy = stream;
  timestampCopy = timestamp;
  v18 = 0;
  v17 = 0;
  if (![streamCopy readUint16:&v18])
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (v18 != 2720)
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007C538(v10, self, &v18);
    }

    goto LABEL_6;
  }

  v9 = @"bpm";
LABEL_7:
  if (([streamCopy readUint32:&v17] & 1) == 0)
  {
    v11 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      peripheral = [(GHSBluetoothDevice *)self peripheral];
      name = [peripheral name];
      *buf = 141558275;
      v20 = 1752392040;
      v21 = 2113;
      v22 = name;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Observation value for peripheral %{private, mask.hash}@: parse failed", buf, 0x16u);
    }
  }

  if (v17)
  {
    [(GHSBloodPressureDevice *)self healthDataSyncHeartRate:v9 unit:timestampCopy startTime:timestampCopy endTime:v17];
  }

  else
  {
    v15 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007C620(v15, self);
    }
  }

  return 1;
}

@end