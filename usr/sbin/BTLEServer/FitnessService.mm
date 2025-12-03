@interface FitnessService
+ (BOOL)manufacturer:(id)manufacturer andModel:(id)model matches:(id)matches;
+ (id)hkQuantityTypeForIdentifier:(id)identifier;
- (BOOL)firstSampleTimestampOlderThan:(id)than;
- (BOOL)isCollectingHKQuantityType:(id)type;
- (BOOL)latestSampleTimestampWithinSeconds:(double)seconds;
- (BOOL)supportsHKQuantityType:(id)type;
- (BOOL)wasPairedAfter:(id)after;
- (FitnessService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service;
- (NSArray)alwaysCollectQuantityTypes;
- (id)createDatum:(double)datum start:(id)start end:(id)end quantityType:(id)type;
- (unint64_t)readBytesFromNSData:(id)data into:(void *)into startingAt:(unint64_t)at length:(unint64_t)length info:(id)info;
- (void)createDataCollectorForQuantityType:(id)type;
- (void)createHKDevice;
- (void)deviceInformation:(id)information readCompleteForDeviceUUID:(id)d;
- (void)featuresReadComplete;
- (void)finishCollectionForQuantityType:(id)type;
- (void)receiveDeviceInfoUpdateNotification:(id)notification;
- (void)recordDatum:(double)datum start:(id)start end:(id)end quantityType:(id)type;
- (void)recordDatum:(id)datum forType:(id)type;
- (void)start;
- (void)stop;
- (void)storeAllDatums;
- (void)storeDatumsForQuantityType:(id)type;
- (void)storeDatumsForQuantityType:(id)type usingHKDevice:(id)device;
- (void)updateRequestedQuantityTypes:(id)types;
@end

@implementation FitnessService

+ (id)hkQuantityTypeForIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
    v4 = [v4 quantityTypeForIdentifier:identifierCopy];
  }

  return v4;
}

+ (BOOL)manufacturer:(id)manufacturer andModel:(id)model matches:(id)matches
{
  manufacturerCopy = manufacturer;
  modelCopy = model;
  matchesCopy = matches;
  if ([@"ALL" caseInsensitiveCompare:matchesCopy])
  {
    v10 = [matchesCopy componentsSeparatedByString:@"/"];
    if ([v10 count] == 2)
    {
      v11 = [v10 objectAtIndexedSubscript:0];
      v12 = [v10 objectAtIndexedSubscript:1];
      uppercaseString = [manufacturerCopy uppercaseString];
      uppercaseString2 = [v11 uppercaseString];
      v15 = [uppercaseString hasPrefix:uppercaseString2];

      v16 = v15 && (![@"ALL" caseInsensitiveCompare:v12] || !objc_msgSend(modelCopy, "caseInsensitiveCompare:", v12));
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

- (FitnessService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  v27.receiver = self;
  v27.super_class = FitnessService;
  v10 = [(ClientService *)&v27 initWithManager:manager peripheral:peripheralCopy service:serviceCopy];
  if (v10)
  {
    v11 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      name = [peripheralCopy name];
      uUID = [serviceCopy UUID];
      uUIDString = [uUID UUIDString];
      *buf = 138412546;
      v29 = name;
      v30 = 2112;
      v31 = uUIDString;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FitnessService - initWithManager:peripheral:“%@” service:%@", buf, 0x16u);
    }

    [(ClientService *)v10 setIsPrimary:1];
    [(ClientService *)v10 setPriority:8];
    v16 = objc_opt_new();
    [(FitnessService *)v10 setHkDataCollectors:v16];

    v17 = objc_opt_new();
    [(FitnessService *)v10 setHkDatumBuffers:v17];

    manager = [(ClientService *)v10 manager];
    v19 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
    v20 = [manager clientServiceForUUID:v19];

    v21 = +[NSNotificationCenter defaultCenter];
    [v21 addObserver:v10 selector:"receiveDeviceInfoUpdateNotification:" name:@"DeviceInformationUpdate" object:v20];

    [(FitnessService *)v10 createHKDevice];
    v22 = [peripheralCopy customProperty:@"PairingTimestamp"];
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

- (BOOL)supportsHKQuantityType:(id)type
{
  typeCopy = type;
  peripheral = [(ClientService *)self peripheral];
  identifier = [typeCopy identifier];

  LOBYTE(typeCopy) = [peripheral hasTag:identifier];
  return typeCopy;
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
    service = [(ClientService *)self service];
    uUID = [service UUID];
    v7 = [(FitnessService *)self debugDescription];
    peripheral = [(ClientService *)self peripheral];
    name = [peripheral name];
    *buf = 138413314;
    v35 = uUID;
    v36 = 2112;
    v37 = v7;
    v38 = 2112;
    v39 = name;
    v40 = 1024;
    productID = [(FitnessService *)self productID];
    v42 = 1024;
    vendorID = [(FitnessService *)self vendorID];
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

    manager = [(ClientService *)self manager];
    v12 = CBUUIDDeviceInformationServiceString;
    v13 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
    v14 = [manager clientServiceForUUID:v13];

    if (v14)
    {
      if ([v14 haveAllCharacteristicsBeenRead])
      {
        peripheral2 = [(ClientService *)self peripheral];
        identifier = [peripheral2 identifier];
        uUIDString = [identifier UUIDString];
        [(FitnessService *)self deviceInformation:v14 readCompleteForDeviceUUID:uUIDString];
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
      peripheral3 = [(ClientService *)self peripheral];
      services = [peripheral3 services];

      v20 = [services countByEnumeratingWithState:&v28 objects:v33 count:16];
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
              objc_enumerationMutation(services);
            }

            uUID2 = [*(*(&v28 + 1) + 8 * i) UUID];
            v25 = [CBUUID UUIDWithString:v12];
            v26 = [uUID2 isEqual:v25];

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

          v21 = [services countByEnumeratingWithState:&v28 objects:v33 count:16];
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
    service = [(ClientService *)self service];
    uUID = [service UUID];
    v7 = [(FitnessService *)self debugDescription];
    peripheral = [(ClientService *)self peripheral];
    name = [peripheral name];
    *buf = 138412802;
    v12 = uUID;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = name;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FitnessService %@ (%@) stopping for “%@”", buf, 0x20u);
  }

  [(FitnessService *)self updateRequestedQuantityTypes:&__NSArray0__struct];
  v10.receiver = self;
  v10.super_class = FitnessService;
  [(ClientService *)&v10 stop];
}

- (void)updateRequestedQuantityTypes:(id)types
{
  typesCopy = types;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    peripheral = [(ClientService *)self peripheral];
    name = [peripheral name];
    *buf = 138412290;
    v50 = name;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FitnessService.updateRequestedQuantityTypes:%@", buf, 0xCu);
  }

  alwaysCollectQuantityTypes = [(FitnessService *)self alwaysCollectQuantityTypes];
  v10 = [alwaysCollectQuantityTypes count];

  if (v10)
  {
    v11 = [typesCopy mutableCopy];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    alwaysCollectQuantityTypes2 = [(FitnessService *)self alwaysCollectQuantityTypes];
    v13 = [alwaysCollectQuantityTypes2 countByEnumeratingWithState:&v42 objects:v48 count:16];
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
            objc_enumerationMutation(alwaysCollectQuantityTypes2);
          }

          v17 = *(*(&v42 + 1) + 8 * i);
          if (([typesCopy containsObject:v17] & 1) == 0)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [alwaysCollectQuantityTypes2 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v11 = typesCopy;
  }

  allKeys = [(NSMutableDictionary *)self->_hkDataCollectors allKeys];
  v19 = [allKeys count];

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
  hkQuantityTypesCollecting = [(FitnessService *)self hkQuantityTypesCollecting];
  v27 = [hkQuantityTypesCollecting countByEnumeratingWithState:&v34 objects:v46 count:16];
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
          objc_enumerationMutation(hkQuantityTypesCollecting);
        }

        v31 = *(*(&v34 + 1) + 8 * k);
        if (([v20 containsObject:v31] & 1) == 0)
        {
          [(FitnessService *)self finishCollectionForQuantityType:v31];
        }
      }

      v28 = [hkQuantityTypesCollecting countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v28);
  }

  allKeys2 = [(NSMutableDictionary *)self->_hkDataCollectors allKeys];
  v33 = [allKeys2 count];

  if ((v19 == 0) == (v33 != 0))
  {
    [(FitnessService *)self collectData:v33 != 0];
  }
}

- (BOOL)isCollectingHKQuantityType:(id)type
{
  typeCopy = type;
  hkQuantityTypesCollecting = [(FitnessService *)self hkQuantityTypesCollecting];
  v6 = [hkQuantityTypesCollecting containsObject:typeCopy];

  return v6;
}

- (unint64_t)readBytesFromNSData:(id)data into:(void *)into startingAt:(unint64_t)at length:(unint64_t)length info:(id)info
{
  dataCopy = data;
  infoCopy = info;
  if ([dataCopy length] <= at)
  {
    v15 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      v17 = 138413058;
      *v18 = infoCopy;
      *&v18[8] = 1024;
      *&v18[10] = at;
      v19 = 1024;
      atCopy = length;
      v21 = 2112;
      *v22 = dataCopy;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Out of range error trying to read %@ at index %d length %d from data %@", &v17, 0x22u);
    }

    length = 0;
  }

  else if (length + at <= [dataCopy length])
  {
    [dataCopy getBytes:into range:{at, length}];
  }

  else
  {
    v13 = [dataCopy length] - at;
    [dataCopy getBytes:into range:{at, v13}];
    v14 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      v17 = 67110146;
      *v18 = v13;
      *&v18[4] = 2112;
      *&v18[6] = infoCopy;
      v19 = 1024;
      atCopy = at;
      v21 = 1024;
      *v22 = length;
      *&v22[4] = 2112;
      *&v22[6] = dataCopy;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could only read %d bytes from %@ at index %d instead of requested length %d from data %@", &v17, 0x28u);
    }

    length = v13;
  }

  return length;
}

- (id)createDatum:(double)datum start:(id)start end:(id)end quantityType:(id)type
{
  startCopy = start;
  endCopy = end;
  typeCopy = type;
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
    v17 = [v16 hkUnitForHKQuantityType:typeCopy];

    v18 = [v12 quantityWithUnit:v17 doubleValue:datum];
    v19 = +[NSUUID UUID];
    v20 = [[NSDateInterval alloc] initWithStartDate:startCopy endDate:endCopy];
    v21 = [[v14 alloc] initWithIdentifier:v19 dateInterval:v20 quantity:v18 resumeContext:0];
  }

  else
  {
    v22 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100070DA4(v22, typeCopy);
    }

    v21 = 0;
  }

  return v21;
}

- (BOOL)wasPairedAfter:(id)after
{
  afterCopy = after;
  v5 = afterCopy;
  if (self->_pairingTimestamp)
  {
    pairingTimestamp = [afterCopy pairingTimestamp];

    if (pairingTimestamp)
    {
      pairingTimestamp = self->_pairingTimestamp;
      pairingTimestamp2 = [v5 pairingTimestamp];
      v9 = [(NSDate *)pairingTimestamp compare:pairingTimestamp2]== NSOrderedAscending;
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

- (BOOL)firstSampleTimestampOlderThan:(id)than
{
  thanCopy = than;
  v5 = thanCopy;
  if (self->_firstSampleTimestamp)
  {
    firstSampleTimestamp = [thanCopy firstSampleTimestamp];

    if (firstSampleTimestamp)
    {
      firstSampleTimestamp = self->_firstSampleTimestamp;
      firstSampleTimestamp2 = [v5 firstSampleTimestamp];
      v9 = [(NSDate *)firstSampleTimestamp compare:firstSampleTimestamp2]== NSOrderedAscending;
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

- (BOOL)latestSampleTimestampWithinSeconds:(double)seconds
{
  latestSampleTimestamp = self->_latestSampleTimestamp;
  if (latestSampleTimestamp)
  {
    [(NSDate *)latestSampleTimestamp timeIntervalSinceNow];
    LOBYTE(latestSampleTimestamp) = fabs(v5) < seconds;
  }

  return latestSampleTimestamp;
}

- (void)recordDatum:(id)datum forType:(id)type
{
  datumCopy = datum;
  typeCopy = type;
  if (datumCopy)
  {
    v8 = +[NSDate now];
    latestSampleTimestamp = self->_latestSampleTimestamp;
    self->_latestSampleTimestamp = v8;

    if (!self->_firstSampleTimestamp)
    {
      objc_storeStrong(&self->_firstSampleTimestamp, self->_latestSampleTimestamp);
    }

    v10 = +[FitnessDeviceManager instance];
    v11 = [v10 shouldForwardFitnessService:self quantityType:typeCopy];

    if (v11)
    {
      v12 = [(NSMutableDictionary *)self->_hkDatumBuffers objectForKey:typeCopy];
      v13 = v12;
      if (v12)
      {
        [v12 addObject:datumCopy];
      }

      else
      {
        v14 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          v15 = v14;
          identifier = [typeCopy identifier];
          peripheral = [(ClientService *)self peripheral];
          name = [peripheral name];
          hkDatumBuffers = self->_hkDatumBuffers;
          v20 = 138412802;
          v21 = identifier;
          v22 = 2112;
          v23 = name;
          v24 = 2112;
          v25 = hkDatumBuffers;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "recordDatum:forType:%@ “%@” datumBuffer not available (hkDatumBuffers:%@)", &v20, 0x20u);
        }
      }
    }
  }
}

- (void)recordDatum:(double)datum start:(id)start end:(id)end quantityType:(id)type
{
  typeCopy = type;
  v11 = [(FitnessService *)self createDatum:start start:end end:typeCopy quantityType:datum];
  [(FitnessService *)self recordDatum:v11 forType:typeCopy];
}

- (void)storeDatumsForQuantityType:(id)type usingHKDevice:(id)device
{
  typeCopy = type;
  deviceCopy = device;
  v7 = [(NSMutableDictionary *)self->_hkDataCollectors objectForKey:typeCopy];
  v30 = typeCopy;
  v8 = [(NSMutableDictionary *)self->_hkDatumBuffers objectForKey:typeCopy];
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
      identifier = [v30 identifier];
      *buf = 138412802;
      v42 = v7;
      v43 = 2112;
      v44 = v9;
      v45 = 2112;
      v46 = identifier;
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
            identifier2 = [v30 identifier];
            name = [deviceCopy name];
            quantity = [v20 quantity];
            [quantity _value];
            v23 = v22;
            quantity2 = [v20 quantity];
            _unit = [quantity2 _unit];
            unitString = [_unit unitString];
            *buf = 138413058;
            v42 = identifier2;
            v43 = 2112;
            v44 = name;
            v45 = 2048;
            v46 = v23;
            v47 = 2112;
            v48 = unitString;
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
    v35 = deviceCopy;
    v36 = v30;
    v7 = v28;
    [v28 insertDatums:v14 device:v35 metadata:0 completion:v34];
    [v14 removeAllObjects];

    v9 = v27;
  }
}

- (void)storeDatumsForQuantityType:(id)type
{
  typeCopy = type;
  peripheral = [(ClientService *)self peripheral];
  hkDevice = [peripheral hkDevice];
  [(FitnessService *)self storeDatumsForQuantityType:typeCopy usingHKDevice:hkDevice];
}

- (void)storeAllDatums
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allKeys = [(NSMutableDictionary *)self->_hkDataCollectors allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        [(FitnessService *)self storeDatumsForQuantityType:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)finishCollectionForQuantityType:(id)type
{
  typeCopy = type;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    peripheral = [(ClientService *)self peripheral];
    name = [peripheral name];
    identifier = [typeCopy identifier];
    *buf = 138412546;
    v23 = name;
    v24 = 2112;
    v25 = identifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finishing data collection on %@ for %@", buf, 0x16u);
  }

  [(FitnessService *)self storeDatumsForQuantityType:typeCopy];
  hkDataCollectors = [(FitnessService *)self hkDataCollectors];
  v11 = [hkDataCollectors objectForKey:typeCopy];

  v12 = [HKDataCollectorState alloc];
  v13 = [v12 initWithType:1 priority:HKDataCollectorPriorityDefault + 10];
  [v11 setState:v13];
  objc_initWeak(buf, self);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100007060;
  v19 = &unk_1000BD268;
  objc_copyWeak(&v21, buf);
  v14 = typeCopy;
  v20 = v14;
  [v11 finishWithCompletion:&v16];
  v15 = [(FitnessService *)self hkDataCollectors:v16];
  [v15 removeObjectForKey:v14];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (void)createDataCollectorForQuantityType:(id)type
{
  typeCopy = type;
  v5 = [(NSMutableDictionary *)self->_hkDataCollectors objectForKey:typeCopy];
  if (v5)
  {
    v6 = v5;
    v7 = [HKDataCollectorState alloc];
    peripheral = [v7 initWithType:2 priority:HKDataCollectorPriorityDefault + 10];
    [v6 setState:peripheral];
    goto LABEL_3;
  }

  v9 = +[FitnessDeviceManager instance];
  v6 = [v9 createHKDataCollectorForHKQuantityType:typeCopy];

  if (v6)
  {
    if (_os_feature_enabled_impl())
    {
      v10 = [HKDataCollectorState alloc];
      v11 = [v10 initWithType:2 priority:HKDataCollectorPriorityDefault + 10];
      [v6 setState:v11];
    }

    [(NSMutableDictionary *)self->_hkDataCollectors setObject:v6 forKey:typeCopy];
    hkDatumBuffers = self->_hkDatumBuffers;
    v13 = objc_opt_new();
    [(NSMutableDictionary *)hkDatumBuffers setObject:v13 forKey:typeCopy];

    v14 = qword_1000DDBC8;
    if (!os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_4;
    }

    v15 = v14;
    peripheral = [(ClientService *)self peripheral];
    name = [peripheral name];
    v18 = 138412546;
    v19 = name;
    v20 = 2112;
    v21 = typeCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Created data collector for device “%@” quantity type %@", &v18, 0x16u);

LABEL_3:
LABEL_4:

    goto LABEL_5;
  }

  v17 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100070F40(v17, self, typeCopy);
  }

LABEL_5:
}

- (void)createHKDevice
{
  peripheral = [(ClientService *)self peripheral];

  if (peripheral)
  {
    peripheral2 = [(ClientService *)self peripheral];
    hkDevice = [peripheral2 hkDevice];

    if (hkDevice)
    {
      v6 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        peripheral3 = [(ClientService *)self peripheral];
        name = [peripheral3 name];
        *buf = 138412290;
        *&buf[4] = name;
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
        manager = [(ClientService *)self manager];
        v15 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
        v50 = [manager clientServiceForUUID:v15];

        self->_vendorID = [v50 vendorID];
        self->_productID = [v50 productID];
        peripheral4 = [(ClientService *)self peripheral];
        name2 = [peripheral4 name];

        v17 = [v11 alloc];
        manufacturerName = [v50 manufacturerName];
        modelNumber = [v50 modelNumber];
        hardwareRevision = [v50 hardwareRevision];
        firmwareRevision = [v50 firmwareRevision];
        softwareRevision = [v50 softwareRevision];
        peripheral5 = [(ClientService *)self peripheral];
        identifier = [peripheral5 identifier];
        uUIDString = [identifier UUIDString];
        v25 = [v17 initWithName:name2 manufacturer:manufacturerName model:modelNumber hardwareVersion:hardwareRevision firmwareVersion:firmwareRevision softwareVersion:softwareRevision localIdentifier:uUIDString UDIDeviceIdentifier:0];
        peripheral6 = [(ClientService *)self peripheral];
        [peripheral6 setHkDevice:v25];

        v27 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          log = v27;
          peripheral7 = [(ClientService *)self peripheral];
          hkDevice2 = [peripheral7 hkDevice];
          name3 = [hkDevice2 name];
          peripheral8 = [(ClientService *)self peripheral];
          hkDevice3 = [peripheral8 hkDevice];
          manufacturer = [hkDevice3 manufacturer];
          peripheral9 = [(ClientService *)self peripheral];
          hkDevice4 = [peripheral9 hkDevice];
          model = [hkDevice4 model];
          peripheral10 = [(ClientService *)self peripheral];
          hkDevice5 = [peripheral10 hkDevice];
          hardwareVersion = [hkDevice5 hardwareVersion];
          peripheral11 = [(ClientService *)self peripheral];
          hkDevice6 = [peripheral11 hkDevice];
          firmwareVersion = [hkDevice6 firmwareVersion];
          peripheral12 = [(ClientService *)self peripheral];
          hkDevice7 = [peripheral12 hkDevice];
          localIdentifier = [hkDevice7 localIdentifier];
          *buf = 138413570;
          *&buf[4] = name3;
          *&buf[12] = 2112;
          *&buf[14] = manufacturer;
          *&buf[22] = 2112;
          v56 = model;
          *v57 = 2112;
          *&v57[2] = hardwareVersion;
          v58 = 2112;
          v59 = firmwareVersion;
          v60 = 2112;
          v61 = localIdentifier;
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

- (void)receiveDeviceInfoUpdateNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  if ([name isEqualToString:@"DeviceInformationUpdate"])
  {
    peripheral = [(ClientService *)self peripheral];
    identifier = [peripheral identifier];
    uUIDString = [identifier UUIDString];
    userInfo = [notificationCopy userInfo];
    v10 = [userInfo valueForKey:@"UUID"];
    v11 = [uUIDString isEqualToString:v10];

    if (v11)
    {
      peripheral2 = [(ClientService *)self peripheral];
      hkDevice = [peripheral2 hkDevice];

      if (hkDevice)
      {
        userInfo2 = [notificationCopy userInfo];
        v15 = [userInfo2 valueForKey:@"ModelNumber"];

        if (v15)
        {
          [hkDevice _setModel:v15];
        }

        userInfo3 = [notificationCopy userInfo];
        v17 = [userInfo3 valueForKey:@"FirmwareRevision"];

        if (v17)
        {
          [hkDevice _setFirmwareVersion:v17];
        }

        userInfo4 = [notificationCopy userInfo];
        v19 = [userInfo4 valueForKey:@"HardwareRevision"];

        if (v19)
        {
          [hkDevice _setHardwareVersion:v19];
        }

        userInfo5 = [notificationCopy userInfo];
        v21 = [userInfo5 valueForKey:@"ManufacturerName"];

        if (v21)
        {
          [hkDevice _setManufacturer:v21];
        }

        v22 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          name2 = [hkDevice name];
          manufacturer = [hkDevice manufacturer];
          model = [hkDevice model];
          hardwareVersion = [hkDevice hardwareVersion];
          firmwareVersion = [hkDevice firmwareVersion];
          localIdentifier = [hkDevice localIdentifier];
          v30 = 138413570;
          v31 = name2;
          v32 = 2112;
          v33 = manufacturer;
          v34 = 2112;
          v35 = model;
          v36 = 2112;
          v37 = hardwareVersion;
          v38 = 2112;
          v39 = firmwareVersion;
          v40 = 2112;
          v41 = localIdentifier;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Updated HKDevice name:“%@” manufacturer:“%@” model:“%@” HW:“%@” FW:“%@” localID:“%@”", &v30, 0x3Eu);
        }
      }
    }
  }

  else
  {
  }
}

- (void)deviceInformation:(id)information readCompleteForDeviceUUID:(id)d
{
  informationCopy = information;
  dCopy = d;
  if (_os_feature_enabled_impl())
  {
    peripheral = [(ClientService *)self peripheral];
    identifier = [peripheral identifier];
    uUIDString = [identifier UUIDString];
    v11 = [dCopy isEqualToString:uUIDString];

    if (v11)
    {
      v12 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        peripheral2 = [(ClientService *)self peripheral];
        name = [peripheral2 name];
        *buf = 138412290;
        v33 = name;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "DeviceInformation for “%@” read complete for HRM", buf, 0xCu);
      }

      [informationCopy removeReadCompleteListener:self];
      peripheral3 = [(ClientService *)self peripheral];
      hkDevice = [peripheral3 hkDevice];

      if (informationCopy)
      {
        if (hkDevice)
        {
          modelNumber = [informationCopy modelNumber];
          [hkDevice _setModel:modelNumber];

          softwareRevision = [informationCopy softwareRevision];
          [hkDevice _setSoftwareVersion:softwareRevision];

          firmwareRevision = [informationCopy firmwareRevision];
          [hkDevice _setFirmwareVersion:firmwareRevision];

          hardwareRevision = [informationCopy hardwareRevision];
          [hkDevice _setHardwareVersion:hardwareRevision];

          manufacturerName = [informationCopy manufacturerName];
          [hkDevice _setManufacturer:manufacturerName];

          v23 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
          {
            log = v23;
            name2 = [hkDevice name];
            manufacturer = [hkDevice manufacturer];
            model = [hkDevice model];
            hardwareVersion = [hkDevice hardwareVersion];
            softwareVersion = [hkDevice softwareVersion];
            firmwareVersion = [hkDevice firmwareVersion];
            localIdentifier = [hkDevice localIdentifier];
            *buf = 138413826;
            v33 = name2;
            v34 = 2112;
            v35 = manufacturer;
            v36 = 2112;
            v37 = model;
            v38 = 2112;
            v39 = hardwareVersion;
            v40 = 2112;
            v41 = softwareVersion;
            v42 = 2112;
            v43 = firmwareVersion;
            v44 = 2112;
            v45 = localIdentifier;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Updated HKDevice name:“%@” manufacturer:“%@” model:“%@” HW:“%@” SW:“%@” FW:“%@” localID:“%@”", buf, 0x48u);
          }
        }
      }
    }
  }
}

@end