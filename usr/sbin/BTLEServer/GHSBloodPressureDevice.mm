@interface GHSBloodPressureDevice
- (BOOL)extractHealthObservationBloodPressureStatusWithStream:(id)a3 timestamp:(id)a4;
- (BOOL)extractHealthObservationBloodPressureWithStream:(id)a3 timestamp:(id)a4 isLive:(BOOL)a5;
- (BOOL)extractHealthObservationHeartRateWithStream:(id)a3 timestamp:(id)a4 isLive:(BOOL)a5;
- (BOOL)handleLiveHealthObservationsData:(id)a3 observationClassType:(unsigned __int8)a4 observationType:(unsigned int)a5 userID:(unsigned __int8)a6 observationID:(unsigned int)a7 timestamp:(id)a8;
- (BOOL)handleStoredHealthObservationsData:(id)a3 observationClassType:(unsigned __int8)a4 observationType:(unsigned int)a5 userID:(unsigned __int8)a6 observationID:(unsigned int)a7 timestamp:(id)a8;
- (GHSBloodPressureDevice)initWithProperties:(id)a3 healthStore:(id)a4;
- (void)healthDataSyncBloodPressuresWithSystolicBP:(double)a3 systolicBPUnit:(id)a4 diastolicBP:(double)a5 diastolicBPUnit:(id)a6 startTime:(id)a7 endTime:(id)a8;
- (void)healthDataSyncHeartRate:(double)a3 unit:(id)a4 startTime:(id)a5 endTime:(id)a6;
@end

@implementation GHSBloodPressureDevice

- (GHSBloodPressureDevice)initWithProperties:(id)a3 healthStore:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodPressureSystolic];
  v9 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodPressureDiastolic];
  v10 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
  v11 = [NSSet setWithObjects:v8, v9, v10, 0];

  v15.receiver = self;
  v15.super_class = GHSBloodPressureDevice;
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
    v23 = 141559299;
    v24 = 1752392040;
    v25 = 2113;
    v26 = v19;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = a5;
    v31 = 1024;
    v32 = v10;
    v33 = 1024;
    v34 = a7;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Handle live health observation for peripheral %{private, mask.hash}@: classType %u, observationType %u, userId %u, observationId %u", &v23, 0x2Eu);
  }

  if (v12 == 7)
  {
    if (a5 == 150020)
    {
      v20 = 1;
      if ([(GHSBloodPressureDevice *)self extractHealthObservationBloodPressureWithStream:v14 timestamp:v15 isLive:1])
      {
        goto LABEL_17;
      }
    }
  }

  else if (v12 == 5)
  {
    if (a5 == 8410608 && [(GHSBloodPressureDevice *)self extractHealthObservationBloodPressureStatusWithStream:v14 timestamp:v15])
    {
      v20 = 1;
      goto LABEL_17;
    }
  }

  else if (v12 == 1 && a5 == 149546)
  {
    v20 = 1;
    if ([(GHSBloodPressureDevice *)self extractHealthObservationHeartRateWithStream:v14 timestamp:v15 isLive:1])
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
    v21 = 141558275;
    v22 = 1752392040;
    v23 = 2113;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Handle stored health observation for peripheral %{private, mask.hash}@", &v21, 0x16u);
  }

  if (v10 == 7)
  {
    if (a5 != 150020 || ![(GHSBloodPressureDevice *)self extractHealthObservationBloodPressureWithStream:v12 timestamp:v13 isLive:0])
    {
      goto LABEL_11;
    }

LABEL_10:
    v18 = 1;
    goto LABEL_14;
  }

  if (v10 == 1 && a5 == 149546 && [(GHSBloodPressureDevice *)self extractHealthObservationHeartRateWithStream:v12 timestamp:v13 isLive:0])
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

- (void)healthDataSyncBloodPressuresWithSystolicBP:(double)a3 systolicBPUnit:(id)a4 diastolicBP:(double)a5 diastolicBPUnit:(id)a6 startTime:(id)a7 endTime:(id)a8
{
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [(GHSBluetoothDevice *)self debugLoggingEnabled];
  LODWORD(a7) = [v18 BOOLValue];

  if (a7)
  {
    v19 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v49 = a3;
      v50 = 2112;
      v51 = v14;
      v52 = 2112;
      v53 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync systolicBP=%f, unit=%@, date=%@", buf, 0x20u);
    }

    v20 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v49 = a5;
      v50 = 2112;
      v51 = v15;
      v52 = 2112;
      v53 = v16;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync diastolicBP=%f, unit=%@, date=%@", buf, 0x20u);
    }
  }

  v21 = [(GHSBluetoothDevice *)self peripheral];
  v22 = [v21 customProperty:@"UpdateHealth"];
  v23 = [v22 isEqualToString:@"1"];

  if (v23)
  {
    v24 = [HKUnit unitFromString:v14];
    v42 = [HKQuantity quantityWithUnit:v24 doubleValue:a3];

    v44 = v14;
    [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodPressureSystolic];
    v45 = v16;
    v41 = v25 = v17;
    v26 = [HKUnit unitFromString:v15];
    v27 = [HKQuantity quantityWithUnit:v26 doubleValue:a5];

    [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodPressureDiastolic];
    v28 = v43 = v15;
    v29 = [(GHSBluetoothDevice *)self hkDevice];
    v30 = [HKQuantitySample quantitySampleWithType:v41 quantity:v42 startDate:v45 endDate:v17 device:v29 metadata:0];

    v31 = [(GHSBluetoothDevice *)self hkDevice];
    v32 = v27;
    v33 = [HKQuantitySample quantitySampleWithType:v28 quantity:v27 startDate:v45 endDate:v25 device:v31 metadata:0];

    v34 = [HKCorrelationType correlationTypeForIdentifier:HKCorrelationTypeIdentifierBloodPressure];
    v35 = [NSSet setWithObjects:v30, v33, 0];
    v36 = [(GHSBluetoothDevice *)self hkDevice];
    v37 = [HKCorrelation correlationWithType:v34 startDate:v45 endDate:v25 objects:v35 device:v36 metadata:0];

    v38 = [(GHSBluetoothDevice *)self hkStore];
    v47 = v37;
    v39 = [NSArray arrayWithObjects:&v47 count:1];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10006BCB0;
    v46[3] = &unk_1000BD528;
    v46[4] = self;
    [v38 saveObjects:v39 withCompletion:v46];

    v14 = v44;
    v15 = v43;

    v17 = v25;
    v16 = v45;
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

- (void)healthDataSyncHeartRate:(double)a3 unit:(id)a4 startTime:(id)a5 endTime:(id)a6
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
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync heartRate=%f, unit=%@, date=%@", buf, 0x20u);
    }
  }

  v16 = [(GHSBluetoothDevice *)self peripheral];
  v17 = [v16 customProperty:@"UpdateHealth"];
  v18 = [v17 isEqualToString:@"1"];

  if (v18)
  {
    v19 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
    v20 = [HKUnit unitFromString:v10];
    v21 = [HKQuantity quantityWithUnit:v20 doubleValue:a3];

    v22 = [(GHSBluetoothDevice *)self hkDevice];
    v23 = [HKQuantitySample quantitySampleWithType:v19 quantity:v21 startDate:v11 endDate:v12 device:v22 metadata:0];

    v24 = [(GHSBluetoothDevice *)self hkStore];
    v28 = v23;
    v25 = [NSArray arrayWithObjects:&v28 count:1];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10006C004;
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

- (BOOL)extractHealthObservationBloodPressureWithStream:(id)a3 timestamp:(id)a4 isLive:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v74 = 0;
  if ([v7 readUint8:&v74])
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [(GHSBluetoothDevice *)self peripheral];
      v13 = [v12 name];
      *buf = 141558531;
      v76 = 1752392040;
      v77 = 2113;
      v78 = v13;
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

  v61 = v8;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  *&v9 = 141558275;
  v60 = v9;
  do
  {
    v66 = -1;
    if ([v7 readUint32:{&v66, v60}])
    {
      v18 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        v20 = [(GHSBluetoothDevice *)self peripheral];
        v21 = [v20 name];
        *buf = 141558531;
        v76 = 1752392040;
        v77 = 2113;
        v78 = v21;
        v79 = 1024;
        v80 = v66;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Compound observation for peripheral %{private, mask.hash}@: observationType %d", buf, 0x1Cu);
      }
    }

    v22 = [v7 readUint8:&v67];
    v23 = qword_1000DDBC8;
    if (v22 && v67 == 1)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        v25 = [(GHSBluetoothDevice *)self peripheral];
        v26 = [v25 name];
        *buf = 141558531;
        v76 = 1752392040;
        v77 = 2113;
        v78 = v26;
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
        if (([v7 readUint16:&v68] & 1) == 0)
        {
          v33 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            v42 = v33;
            v43 = [(GHSBluetoothDevice *)self peripheral];
            v44 = [v43 name];
            *buf = v60;
            v76 = 1752392040;
            v77 = 2113;
            v78 = v44;
            _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Compound observation for peripheral %{private, mask.hash}@: unit parse failed", buf, 0x16u);
          }
        }

        if (([v7 readIEEEFloat:&v69] & 1) == 0)
        {
          v34 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            v35 = v34;
            v36 = [(GHSBluetoothDevice *)self peripheral];
            v37 = [v36 name];
            *buf = v60;
            v76 = 1752392040;
            v77 = 2113;
            v78 = v37;
            _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Compound observation for peripheral %{private, mask.hash}@ value parse failed", buf, 0x16u);
          }
        }

        goto LABEL_46;
      case 150022:
        if ([v7 readUint16:&v70])
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
            v49 = [(GHSBluetoothDevice *)self peripheral];
            v50 = [v49 name];
            *buf = 141558531;
            v76 = 1752392040;
            v77 = 2113;
            v78 = v50;
            v79 = 1024;
            v80 = v70;
            _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Compound observation for peripheral %{private, mask.hash}@: diastolicBP invalid Unit %d", buf, 0x1Cu);
          }
        }

        v30 = v15;
LABEL_33:
        if (([v7 readIEEEFloat:&v71] & 1) == 0)
        {
          v32 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            v39 = v32;
            v40 = [(GHSBluetoothDevice *)self peripheral];
            v41 = [v40 name];
            *buf = v60;
            v76 = 1752392040;
            v77 = 2113;
            v78 = v41;
            _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Compound observation for peripheral %{private, mask.hash}@ diastolicBP parse failed", buf, 0x16u);
          }
        }

        v15 = v30;
        goto LABEL_46;
      case 150021:
        if ([v7 readUint16:&v72])
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
            v52 = [(GHSBluetoothDevice *)self peripheral];
            v53 = [v52 name];
            *buf = 141558531;
            v76 = 1752392040;
            v77 = 2113;
            v78 = v53;
            v79 = 1024;
            v80 = v70;
            _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Compound observation for peripheral %{private, mask.hash}@: systolicBP invalid Unit %d", buf, 0x1Cu);
          }
        }

        v27 = v14;
LABEL_24:
        if (([v7 readIEEEFloat:&v73] & 1) == 0)
        {
          v29 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            v45 = v29;
            v46 = [(GHSBluetoothDevice *)self peripheral];
            v47 = [v46 name];
            *buf = v60;
            v76 = 1752392040;
            v77 = 2113;
            v78 = v47;
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
    v8 = v61;
    [(GHSBloodPressureDevice *)self healthDataSyncBloodPressuresWithSystolicBP:v14 systolicBPUnit:v54 diastolicBP:v61 diastolicBPUnit:v61 startTime:v73 endTime:v71];
    goto LABEL_54;
  }

  v8 = v61;
LABEL_52:
  v55 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v56 = v55;
    v57 = [(GHSBluetoothDevice *)self peripheral];
    v58 = [v57 name];
    *buf = 141558275;
    v76 = 1752392040;
    v77 = 2113;
    v78 = v58;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Peripheral %{private, mask.hash}@ observation value not saved due to invalid value", buf, 0x16u);
  }

LABEL_54:

  return v17 & 1;
}

- (BOOL)extractHealthObservationBloodPressureStatusWithStream:(id)a3 timestamp:(id)a4
{
  v5 = a3;
  v24 = 0;
  if ([v5 readUint8:&v24])
  {
    v7 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(GHSBluetoothDevice *)self peripheral];
      v10 = [v9 name];
      *buf = 141558531;
      v26 = 1752392040;
      v27 = 2113;
      v28 = v10;
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
      if ([v5 readUint32:{&v23, v21}])
      {
        v12 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          v14 = [(GHSBluetoothDevice *)self peripheral];
          v15 = [v14 name];
          *buf = v21;
          v26 = 1752392040;
          v27 = 2113;
          v28 = v15;
          v29 = 1024;
          v30 = v23;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Status for peripheral %{private, mask.hash}@: %d", buf, 0x1Cu);
        }
      }

      if ([v5 readUint32:&v22])
      {
        v16 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          v18 = [(GHSBluetoothDevice *)self peripheral];
          v19 = [v18 name];
          *buf = v21;
          v26 = 1752392040;
          v27 = 2113;
          v28 = v19;
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

- (BOOL)extractHealthObservationHeartRateWithStream:(id)a3 timestamp:(id)a4 isLive:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v18 = 0;
  v17 = 0;
  if (![v7 readUint16:&v18])
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
  if (([v7 readUint32:&v17] & 1) == 0)
  {
    v11 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(GHSBluetoothDevice *)self peripheral];
      v14 = [v13 name];
      *buf = 141558275;
      v20 = 1752392040;
      v21 = 2113;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Observation value for peripheral %{private, mask.hash}@: parse failed", buf, 0x16u);
    }
  }

  if (v17)
  {
    [(GHSBloodPressureDevice *)self healthDataSyncHeartRate:v9 unit:v8 startTime:v8 endTime:v17];
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