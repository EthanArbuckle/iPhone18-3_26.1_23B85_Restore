@interface FitnessService
+ (BOOL)manufacturer:(id)a3 andModel:(id)a4 matches:(id)a5;
+ (id)hkQuantityTypeForIdentifier:(id)a3;
- (BOOL)firstSampleTimestampOlderThan:(id)a3;
- (BOOL)isCollectingHKQuantityType:(id)a3;
- (BOOL)latestSampleTimestampWithinSeconds:(double)a3;
- (BOOL)supportsHKQuantityType:(id)a3;
- (BOOL)wasPairedAfter:(id)a3;
- (FitnessService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5;
- (NSArray)alwaysCollectQuantityTypes;
- (id)createDatum:(double)a3 start:(id)a4 end:(id)a5 quantityType:(id)a6;
- (unint64_t)readBytesFromNSData:(id)a3 into:(void *)a4 startingAt:(unint64_t)a5 length:(unint64_t)a6 info:(id)a7;
- (void)createDataCollectorForQuantityType:(id)a3;
- (void)createHKDevice;
- (void)deviceInformation:(id)a3 readCompleteForDeviceUUID:(id)a4;
- (void)featuresReadComplete;
- (void)finishCollectionForQuantityType:(id)a3;
- (void)receiveDeviceInfoUpdateNotification:(id)a3;
- (void)recordDatum:(double)a3 start:(id)a4 end:(id)a5 quantityType:(id)a6;
- (void)recordDatum:(id)a3 forType:(id)a4;
- (void)start;
- (void)stop;
- (void)storeAllDatums;
- (void)storeDatumsForQuantityType:(id)a3;
- (void)storeDatumsForQuantityType:(id)a3 usingHKDevice:(id)a4;
- (void)updateRequestedQuantityTypes:(id)a3;
@end

@implementation FitnessService

+ (id)hkQuantityTypeForIdentifier:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v4 = qword_1000DDA18;
  v10 = qword_1000DDA18;
  if (!qword_1000DDA18)
  {
    sub_100008264();
    v8[3] = objc_getClass("HKQuantityType");
    qword_1000DDA18 = v8[3];
    v4 = v8[3];
  }

  v5 = v4;
  _Block_object_dispose(&v7, 8);
  if (v4)
  {
    v4 = [v4 quantityTypeForIdentifier:v3];
  }

  return v4;
}

+ (BOOL)manufacturer:(id)a3 andModel:(id)a4 matches:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([@"ALL" caseInsensitiveCompare:v9])
  {
    v10 = [v9 componentsSeparatedByString:@"/"];
    if ([v10 count] == 2)
    {
      v11 = [v10 objectAtIndexedSubscript:0];
      v12 = [v10 objectAtIndexedSubscript:1];
      v13 = [v7 uppercaseString];
      v14 = [v11 uppercaseString];
      v15 = [v13 hasPrefix:v14];

      v16 = v15 && (![@"ALL" caseInsensitiveCompare:v12] || !objc_msgSend(v8, "caseInsensitiveCompare:", v12));
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (FitnessService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5
{
  v8 = a4;
  v9 = a5;
  v27.receiver = self;
  v27.super_class = FitnessService;
  v10 = [(ClientService *)&v27 initWithManager:a3 peripheral:v8 service:v9];
  if (v10)
  {
    v11 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v8 name];
      v14 = [v9 UUID];
      v15 = [v14 UUIDString];
      *buf = 138412546;
      v29 = v13;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FitnessService - initWithManager:peripheral:“%@” service:%@", buf, 0x16u);
    }

    [(ClientService *)v10 setIsPrimary:1];
    [(ClientService *)v10 setPriority:8];
    v16 = objc_opt_new();
    [(FitnessService *)v10 setHkDataCollectors:v16];

    v17 = objc_opt_new();
    [(FitnessService *)v10 setHkDatumBuffers:v17];

    v18 = [(ClientService *)v10 manager];
    v19 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
    v20 = [v18 clientServiceForUUID:v19];

    v21 = +[NSNotificationCenter defaultCenter];
    [v21 addObserver:v10 selector:"receiveDeviceInfoUpdateNotification:" name:@"DeviceInformationUpdate" object:v20];

    [(FitnessService *)v10 createHKDevice];
    v22 = [v8 customProperty:@"PairingTimestamp"];
    v23 = v22;
    if (v22)
    {
      [v22 doubleValue];
      v24 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      pairingTimestamp = v10->_pairingTimestamp;
      v10->_pairingTimestamp = v24;
    }
  }

  return v10;
}

- (NSArray)alwaysCollectQuantityTypes
{
  if (qword_1000DDA10 != -1)
  {
    sub_100070CE4();
  }

  v3 = qword_1000DDA08;

  return v3;
}

- (BOOL)supportsHKQuantityType:(id)a3
{
  v4 = a3;
  v5 = [(ClientService *)self peripheral];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 hasTag:v6];
  return v4;
}

- (void)featuresReadComplete
{
  v3 = +[FitnessDeviceManager instance];
  [v3 registerFitnessService:self];
}

- (void)start
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(ClientService *)self service];
    v6 = [v5 UUID];
    v7 = [(FitnessService *)self debugDescription];
    v8 = [(ClientService *)self peripheral];
    v9 = [v8 name];
    *buf = 138413314;
    v35 = v6;
    v36 = 2112;
    v37 = v7;
    v38 = 2112;
    v39 = v9;
    v40 = 1024;
    v41 = [(FitnessService *)self productID];
    v42 = 1024;
    v43 = [(FitnessService *)self vendorID];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FitnessService %@ (%@) starting for “%@” PID:0x%04X VID:0x%04X", buf, 0x2Cu);
  }

  v32.receiver = self;
  v32.super_class = FitnessService;
  [(ClientService *)&v32 start];
  if (_os_feature_enabled_impl())
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FitnessService - allServicesAvailable", buf, 2u);
    }

    v11 = [(ClientService *)self manager];
    v12 = CBUUIDDeviceInformationServiceString;
    v13 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
    v14 = [v11 clientServiceForUUID:v13];

    if (v14)
    {
      if ([v14 haveAllCharacteristicsBeenRead])
      {
        v15 = [(ClientService *)self peripheral];
        v16 = [v15 identifier];
        v17 = [v16 UUIDString];
        [(FitnessService *)self deviceInformation:v14 readCompleteForDeviceUUID:v17];
      }

      else
      {
        [v14 addReadCompleteListener:self];
      }
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v18 = [(ClientService *)self peripheral];
      v19 = [v18 services];

      v20 = [v19 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v29;
        while (2)
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v29 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [*(*(&v28 + 1) + 8 * i) UUID];
            v25 = [CBUUID UUIDWithString:v12];
            v26 = [v24 isEqual:v25];

            if (v26)
            {
              v27 = qword_1000DDBC8;
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
              {
                sub_100070CF8(v27, self);
              }

              goto LABEL_21;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:

      v14 = 0;
    }
  }
}

- (void)stop
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(ClientService *)self service];
    v6 = [v5 UUID];
    v7 = [(FitnessService *)self debugDescription];
    v8 = [(ClientService *)self peripheral];
    v9 = [v8 name];
    *buf = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FitnessService %@ (%@) stopping for “%@”", buf, 0x20u);
  }

  [(FitnessService *)self updateRequestedQuantityTypes:&__NSArray0__struct];
  v10.receiver = self;
  v10.super_class = FitnessService;
  [(ClientService *)&v10 stop];
}

- (void)updateRequestedQuantityTypes:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(ClientService *)self peripheral];
    v8 = [v7 name];
    *buf = 138412290;
    v50 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FitnessService.updateRequestedQuantityTypes:%@", buf, 0xCu);
  }

  v9 = [(FitnessService *)self alwaysCollectQuantityTypes];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [v4 mutableCopy];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v12 = [(FitnessService *)self alwaysCollectQuantityTypes];
    v13 = [v12 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v43;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v43 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v42 + 1) + 8 * i);
          if (([v4 containsObject:v17] & 1) == 0)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v11 = v4;
  }

  v18 = [(NSMutableDictionary *)self->_hkDataCollectors allKeys];
  v19 = [v18 count];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = v11;
  v21 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v39;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v38 + 1) + 8 * j);
        if ([(FitnessService *)self supportsHKQuantityType:v25])
        {
          [(FitnessService *)self createDataCollectorForQuantityType:v25];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v22);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v26 = [(FitnessService *)self hkQuantityTypesCollecting];
  v27 = [v26 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v35;
    do
    {
      for (k = 0; k != v28; k = k + 1)
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v34 + 1) + 8 * k);
        if (([v20 containsObject:v31] & 1) == 0)
        {
          [(FitnessService *)self finishCollectionForQuantityType:v31];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v28);
  }

  v32 = [(NSMutableDictionary *)self->_hkDataCollectors allKeys];
  v33 = [v32 count];

  if ((v19 == 0) == (v33 != 0))
  {
    [(FitnessService *)self collectData:v33 != 0];
  }
}

- (BOOL)isCollectingHKQuantityType:(id)a3
{
  v4 = a3;
  v5 = [(FitnessService *)self hkQuantityTypesCollecting];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (unint64_t)readBytesFromNSData:(id)a3 into:(void *)a4 startingAt:(unint64_t)a5 length:(unint64_t)a6 info:(id)a7
{
  v11 = a3;
  v12 = a7;
  if ([v11 length] <= a5)
  {
    v15 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      v17 = 138413058;
      *v18 = v12;
      *&v18[8] = 1024;
      *&v18[10] = a5;
      v19 = 1024;
      v20 = a6;
      v21 = 2112;
      *v22 = v11;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Out of range error trying to read %@ at index %d length %d from data %@", &v17, 0x22u);
    }

    a6 = 0;
  }

  else if (a6 + a5 <= [v11 length])
  {
    [v11 getBytes:a4 range:{a5, a6}];
  }

  else
  {
    v13 = [v11 length] - a5;
    [v11 getBytes:a4 range:{a5, v13}];
    v14 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      v17 = 67110146;
      *v18 = v13;
      *&v18[4] = 2112;
      *&v18[6] = v12;
      v19 = 1024;
      v20 = a5;
      v21 = 1024;
      *v22 = a6;
      *&v22[4] = 2112;
      *&v22[6] = v11;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could only read %d bytes from %@ at index %d instead of requested length %d from data %@", &v17, 0x28u);
    }

    a6 = v13;
  }

  return a6;
}

- (id)createDatum:(double)a3 start:(id)a4 end:(id)a5 quantityType:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v12 = qword_1000DDA28;
  v27 = qword_1000DDA28;
  if (!qword_1000DDA28)
  {
    sub_100008264();
    v25[3] = objc_getClass("HKQuantity");
    qword_1000DDA28 = v25[3];
    v12 = v25[3];
  }

  v13 = v12;
  _Block_object_dispose(&v24, 8);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v14 = qword_1000DDA30;
  v27 = qword_1000DDA30;
  if (!qword_1000DDA30)
  {
    sub_100008264();
    v25[3] = objc_getClass("HKQuantityDatum");
    qword_1000DDA30 = v25[3];
    v14 = v25[3];
  }

  v15 = v14;
  _Block_object_dispose(&v24, 8);
  if (v12 && v14)
  {
    v16 = +[FitnessDeviceManager instance];
    v17 = [v16 hkUnitForHKQuantityType:v11];

    v18 = [v12 quantityWithUnit:v17 doubleValue:a3];
    v19 = +[NSUUID UUID];
    v20 = [[NSDateInterval alloc] initWithStartDate:v9 endDate:v10];
    v21 = [[v14 alloc] initWithIdentifier:v19 dateInterval:v20 quantity:v18 resumeContext:0];
  }

  else
  {
    v22 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100070DA4(v22, v11);
    }

    v21 = 0;
  }

  return v21;
}

- (BOOL)wasPairedAfter:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_pairingTimestamp)
  {
    v6 = [v4 pairingTimestamp];

    if (v6)
    {
      pairingTimestamp = self->_pairingTimestamp;
      v8 = [v5 pairingTimestamp];
      v9 = [(NSDate *)pairingTimestamp compare:v8]== NSOrderedAscending;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)firstSampleTimestampOlderThan:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_firstSampleTimestamp)
  {
    v6 = [v4 firstSampleTimestamp];

    if (v6)
    {
      firstSampleTimestamp = self->_firstSampleTimestamp;
      v8 = [v5 firstSampleTimestamp];
      v9 = [(NSDate *)firstSampleTimestamp compare:v8]== NSOrderedAscending;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)latestSampleTimestampWithinSeconds:(double)a3
{
  latestSampleTimestamp = self->_latestSampleTimestamp;
  if (latestSampleTimestamp)
  {
    [(NSDate *)latestSampleTimestamp timeIntervalSinceNow];
    LOBYTE(latestSampleTimestamp) = fabs(v5) < a3;
  }

  return latestSampleTimestamp;
}

- (void)recordDatum:(id)a3 forType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = +[NSDate now];
    latestSampleTimestamp = self->_latestSampleTimestamp;
    self->_latestSampleTimestamp = v8;

    if (!self->_firstSampleTimestamp)
    {
      objc_storeStrong(&self->_firstSampleTimestamp, self->_latestSampleTimestamp);
    }

    v10 = +[FitnessDeviceManager instance];
    v11 = [v10 shouldForwardFitnessService:self quantityType:v7];

    if (v11)
    {
      v12 = [(NSMutableDictionary *)self->_hkDatumBuffers objectForKey:v7];
      v13 = v12;
      if (v12)
      {
        [v12 addObject:v6];
      }

      else
      {
        v14 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          v15 = v14;
          v16 = [v7 identifier];
          v17 = [(ClientService *)self peripheral];
          v18 = [v17 name];
          hkDatumBuffers = self->_hkDatumBuffers;
          v20 = 138412802;
          v21 = v16;
          v22 = 2112;
          v23 = v18;
          v24 = 2112;
          v25 = hkDatumBuffers;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "recordDatum:forType:%@ “%@” datumBuffer not available (hkDatumBuffers:%@)", &v20, 0x20u);
        }
      }
    }
  }
}

- (void)recordDatum:(double)a3 start:(id)a4 end:(id)a5 quantityType:(id)a6
{
  v10 = a6;
  v11 = [(FitnessService *)self createDatum:a4 start:a5 end:v10 quantityType:a3];
  [(FitnessService *)self recordDatum:v11 forType:v10];
}

- (void)storeDatumsForQuantityType:(id)a3 usingHKDevice:(id)a4
{
  v6 = a3;
  v29 = a4;
  v7 = [(NSMutableDictionary *)self->_hkDataCollectors objectForKey:v6];
  v30 = v6;
  v8 = [(NSMutableDictionary *)self->_hkDatumBuffers objectForKey:v6];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [v30 identifier];
      *buf = 138412802;
      v42 = v7;
      v43 = 2112;
      v44 = v9;
      v45 = 2112;
      v46 = v13;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "storeDatumsForQuantityType: Missing dataCollector:%@ or datumBuffer:%@ for qty:%@", buf, 0x20u);
    }
  }

  else if ([v8 count])
  {
    v27 = v9;
    v28 = v7;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        v18 = 0;
        do
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
          {
            v20 = *(*(&v37 + 1) + 8 * v18);
            log = v19;
            v31 = [v30 identifier];
            v21 = [v29 name];
            v33 = [v20 quantity];
            [v33 _value];
            v23 = v22;
            v24 = [v20 quantity];
            v25 = [v24 _unit];
            v26 = [v25 unitString];
            *buf = 138413058;
            v42 = v31;
            v43 = 2112;
            v44 = v21;
            v45 = 2048;
            v46 = v23;
            v47 = 2112;
            v48 = v26;
            _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "storeDatumForQuantityType:%@ - device:“%@”: value:%f %@", buf, 0x2Au);
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v16);
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100006C2C;
    v34[3] = &unk_1000BD240;
    v35 = v29;
    v36 = v30;
    v7 = v28;
    [v28 insertDatums:v14 device:v35 metadata:0 completion:v34];
    [v14 removeAllObjects];

    v9 = v27;
  }
}

- (void)storeDatumsForQuantityType:(id)a3
{
  v4 = a3;
  v6 = [(ClientService *)self peripheral];
  v5 = [v6 hkDevice];
  [(FitnessService *)self storeDatumsForQuantityType:v4 usingHKDevice:v5];
}

- (void)storeAllDatums
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->_hkDataCollectors allKeys];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(FitnessService *)self storeDatumsForQuantityType:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)finishCollectionForQuantityType:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(ClientService *)self peripheral];
    v8 = [v7 name];
    v9 = [v4 identifier];
    *buf = 138412546;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finishing data collection on %@ for %@", buf, 0x16u);
  }

  [(FitnessService *)self storeDatumsForQuantityType:v4];
  v10 = [(FitnessService *)self hkDataCollectors];
  v11 = [v10 objectForKey:v4];

  v12 = [HKDataCollectorState alloc];
  v13 = [v12 initWithType:1 priority:HKDataCollectorPriorityDefault + 10];
  [v11 setState:v13];
  objc_initWeak(buf, self);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100007060;
  v19 = &unk_1000BD268;
  objc_copyWeak(&v21, buf);
  v14 = v4;
  v20 = v14;
  [v11 finishWithCompletion:&v16];
  v15 = [(FitnessService *)self hkDataCollectors:v16];
  [v15 removeObjectForKey:v14];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (void)createDataCollectorForQuantityType:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_hkDataCollectors objectForKey:v4];
  if (v5)
  {
    v6 = v5;
    v7 = [HKDataCollectorState alloc];
    v8 = [v7 initWithType:2 priority:HKDataCollectorPriorityDefault + 10];
    [v6 setState:v8];
    goto LABEL_3;
  }

  v9 = +[FitnessDeviceManager instance];
  v6 = [v9 createHKDataCollectorForHKQuantityType:v4];

  if (v6)
  {
    if (_os_feature_enabled_impl())
    {
      v10 = [HKDataCollectorState alloc];
      v11 = [v10 initWithType:2 priority:HKDataCollectorPriorityDefault + 10];
      [v6 setState:v11];
    }

    [(NSMutableDictionary *)self->_hkDataCollectors setObject:v6 forKey:v4];
    hkDatumBuffers = self->_hkDatumBuffers;
    v13 = objc_opt_new();
    [(NSMutableDictionary *)hkDatumBuffers setObject:v13 forKey:v4];

    v14 = qword_1000DDBC8;
    if (!os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_4;
    }

    v15 = v14;
    v8 = [(ClientService *)self peripheral];
    v16 = [v8 name];
    v18 = 138412546;
    v19 = v16;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Created data collector for device “%@” quantity type %@", &v18, 0x16u);

LABEL_3:
LABEL_4:

    goto LABEL_5;
  }

  v17 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100070F40(v17, self, v4);
  }

LABEL_5:
}

- (void)createHKDevice
{
  v3 = [(ClientService *)self peripheral];

  if (v3)
  {
    v4 = [(ClientService *)self peripheral];
    v5 = [v4 hkDevice];

    if (v5)
    {
      v6 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = [(ClientService *)self peripheral];
        v9 = [v8 name];
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "HKDevice for %@ already exists", buf, 0xCu);
      }
    }

    else
    {
      v51 = 0;
      v52 = &v51;
      v53 = 0x2050000000;
      v11 = qword_1000DDA38;
      v54 = qword_1000DDA38;
      if (!qword_1000DDA38)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100008448;
        v56 = &unk_1000BD290;
        *v57 = &v51;
        sub_100008264();
        Class = objc_getClass("HKDevice");
        *(*(*v57 + 8) + 24) = Class;
        qword_1000DDA38 = *(*(*v57 + 8) + 24);
        v11 = v52[3];
      }

      v13 = v11;
      _Block_object_dispose(&v51, 8);
      if (v11)
      {
        v14 = [(ClientService *)self manager];
        v15 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
        v50 = [v14 clientServiceForUUID:v15];

        self->_vendorID = [v50 vendorID];
        self->_productID = [v50 productID];
        v16 = [(ClientService *)self peripheral];
        v47 = [v16 name];

        v17 = [v11 alloc];
        v48 = [v50 manufacturerName];
        v18 = [v50 modelNumber];
        v19 = [v50 hardwareRevision];
        v20 = [v50 firmwareRevision];
        v21 = [v50 softwareRevision];
        v22 = [(ClientService *)self peripheral];
        v23 = [v22 identifier];
        v24 = [v23 UUIDString];
        v25 = [v17 initWithName:v47 manufacturer:v48 model:v18 hardwareVersion:v19 firmwareVersion:v20 softwareVersion:v21 localIdentifier:v24 UDIDeviceIdentifier:0];
        v26 = [(ClientService *)self peripheral];
        [v26 setHkDevice:v25];

        v27 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          log = v27;
          v49 = [(ClientService *)self peripheral];
          v46 = [v49 hkDevice];
          v39 = [v46 name];
          v45 = [(ClientService *)self peripheral];
          v44 = [v45 hkDevice];
          v40 = [v44 manufacturer];
          v43 = [(ClientService *)self peripheral];
          v42 = [v43 hkDevice];
          v28 = [v42 model];
          v29 = [(ClientService *)self peripheral];
          v30 = [v29 hkDevice];
          v31 = [v30 hardwareVersion];
          v32 = [(ClientService *)self peripheral];
          v33 = [v32 hkDevice];
          v34 = [v33 firmwareVersion];
          v35 = [(ClientService *)self peripheral];
          v36 = [v35 hkDevice];
          v37 = [v36 localIdentifier];
          *buf = 138413570;
          *&buf[4] = v39;
          *&buf[12] = 2112;
          *&buf[14] = v40;
          *&buf[22] = 2112;
          v56 = v28;
          *v57 = 2112;
          *&v57[2] = v31;
          v58 = 2112;
          v59 = v34;
          v60 = 2112;
          v61 = v37;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Created HKDevice name:“%@” manufacturer:“%@” model:“%@” HW:“%@” FW:“%@” localID:“%@”", buf, 0x3Eu);
        }
      }

      else
      {
        v38 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_10007100C(v38, self);
        }
      }
    }
  }

  else
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000710BC(v10);
    }
  }
}

- (void)receiveDeviceInfoUpdateNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  if ([v5 isEqualToString:@"DeviceInformationUpdate"])
  {
    v6 = [(ClientService *)self peripheral];
    v7 = [v6 identifier];
    v8 = [v7 UUIDString];
    v9 = [v4 userInfo];
    v10 = [v9 valueForKey:@"UUID"];
    v11 = [v8 isEqualToString:v10];

    if (v11)
    {
      v12 = [(ClientService *)self peripheral];
      v13 = [v12 hkDevice];

      if (v13)
      {
        v14 = [v4 userInfo];
        v15 = [v14 valueForKey:@"ModelNumber"];

        if (v15)
        {
          [v13 _setModel:v15];
        }

        v16 = [v4 userInfo];
        v17 = [v16 valueForKey:@"FirmwareRevision"];

        if (v17)
        {
          [v13 _setFirmwareVersion:v17];
        }

        v18 = [v4 userInfo];
        v19 = [v18 valueForKey:@"HardwareRevision"];

        if (v19)
        {
          [v13 _setHardwareVersion:v19];
        }

        v20 = [v4 userInfo];
        v21 = [v20 valueForKey:@"ManufacturerName"];

        if (v21)
        {
          [v13 _setManufacturer:v21];
        }

        v22 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          v24 = [v13 name];
          v25 = [v13 manufacturer];
          v26 = [v13 model];
          v27 = [v13 hardwareVersion];
          v28 = [v13 firmwareVersion];
          v29 = [v13 localIdentifier];
          v30 = 138413570;
          v31 = v24;
          v32 = 2112;
          v33 = v25;
          v34 = 2112;
          v35 = v26;
          v36 = 2112;
          v37 = v27;
          v38 = 2112;
          v39 = v28;
          v40 = 2112;
          v41 = v29;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Updated HKDevice name:“%@” manufacturer:“%@” model:“%@” HW:“%@” FW:“%@” localID:“%@”", &v30, 0x3Eu);
        }
      }
    }
  }

  else
  {
  }
}

- (void)deviceInformation:(id)a3 readCompleteForDeviceUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v8 = [(ClientService *)self peripheral];
    v9 = [v8 identifier];
    v10 = [v9 UUIDString];
    v11 = [v7 isEqualToString:v10];

    if (v11)
    {
      v12 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = [(ClientService *)self peripheral];
        v15 = [v14 name];
        *buf = 138412290;
        v33 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "DeviceInformation for “%@” read complete for HRM", buf, 0xCu);
      }

      [v6 removeReadCompleteListener:self];
      v16 = [(ClientService *)self peripheral];
      v17 = [v16 hkDevice];

      if (v6)
      {
        if (v17)
        {
          v18 = [v6 modelNumber];
          [v17 _setModel:v18];

          v19 = [v6 softwareRevision];
          [v17 _setSoftwareVersion:v19];

          v20 = [v6 firmwareRevision];
          [v17 _setFirmwareVersion:v20];

          v21 = [v6 hardwareRevision];
          [v17 _setHardwareVersion:v21];

          v22 = [v6 manufacturerName];
          [v17 _setManufacturer:v22];

          v23 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
          {
            log = v23;
            v30 = [v17 name];
            v24 = [v17 manufacturer];
            v25 = [v17 model];
            v26 = [v17 hardwareVersion];
            v27 = [v17 softwareVersion];
            v28 = [v17 firmwareVersion];
            v29 = [v17 localIdentifier];
            *buf = 138413826;
            v33 = v30;
            v34 = 2112;
            v35 = v24;
            v36 = 2112;
            v37 = v25;
            v38 = 2112;
            v39 = v26;
            v40 = 2112;
            v41 = v27;
            v42 = 2112;
            v43 = v28;
            v44 = 2112;
            v45 = v29;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Updated HKDevice name:“%@” manufacturer:“%@” model:“%@” HW:“%@” SW:“%@” FW:“%@” localID:“%@”", buf, 0x48u);
          }
        }
      }
    }
  }
}

@end