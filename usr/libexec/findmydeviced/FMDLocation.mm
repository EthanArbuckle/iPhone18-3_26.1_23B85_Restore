@interface FMDLocation
- (FMDLocation)initWithCoder:(id)a3;
- (FMDLocation)initWithDictionary:(id)a3;
- (FMDLocation)initWithLocation:(id)a3 eventType:(int64_t)a4 positionType:(unsigned __int8)a5;
- (FMDVolatileMetaDataRecord)metaDataRecord;
- (NSDictionary)dictionaryValue;
- (id)_trackedLocationTypeAsString:(unsigned __int8)a3;
- (id)stringForLocationType:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDLocation

- (FMDLocation)initWithLocation:(id)a3 eventType:(int64_t)a4 positionType:(unsigned __int8)a5
{
  v9 = a3;
  v18.receiver = self;
  v18.super_class = FMDLocation;
  v10 = [(FMDLocation *)&v18 init];
  if (v10)
  {
    v11 = dispatch_queue_create("FMDLocationQueue", 0);
    serialQueue = v10->_serialQueue;
    v10->_serialQueue = v11;

    v13 = +[NSDate date];
    timeStamp = v10->_timeStamp;
    v10->_timeStamp = v13;

    objc_storeStrong(&v10->_location, a3);
    v10->_eventType = a4;
    v10->_positionType = a5;
    v15 = objc_alloc_init(FMDVolatileMetaDataRecord);
    metaDataRecord = v10->_metaDataRecord;
    v10->_metaDataRecord = v15;
  }

  return v10;
}

- (FMDLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = FMDLocation;
  v5 = [(FMDLocation *)&v21 init];
  if (v5)
  {
    v6 = dispatch_queue_create("FMDLocationQueue", 0);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v6;

    v8 = objc_opt_class();
    v9 = NSStringFromSelector("timeStamp");
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];
    timeStamp = v5->_timeStamp;
    v5->_timeStamp = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"geoLocation"];
    if ([v12 conformsToProtocol:&OBJC_PROTOCOL___FMGeoLocatable])
    {
      objc_storeStrong(&v5->_location, v12);
    }

    v13 = objc_opt_class();
    v14 = NSStringFromSelector("eventType");
    v15 = [v4 decodeObjectOfClass:v13 forKey:v14];
    v5->_eventType = [v15 integerValue];

    v16 = objc_opt_class();
    v17 = NSStringFromSelector("metaDataRecord");
    v18 = [v4 decodeObjectOfClass:v16 forKey:v17];
    metaDataRecord = v5->_metaDataRecord;
    v5->_metaDataRecord = v18;
  }

  return v5;
}

- (FMDLocation)initWithDictionary:(id)a3
{
  v4 = a3;
  v54.receiver = self;
  v54.super_class = FMDLocation;
  v5 = [(FMDLocation *)&v54 init];
  if (v5)
  {
    v6 = dispatch_queue_create("FMDLocationQueue", 0);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v6;

    v53 = [v4 objectForKeyedSubscript:@"locationTimestamp"];
    v8 = +[NSDate fm_dateFromEpoch:](NSDate, "fm_dateFromEpoch:", [v53 integerValue]);
    [(FMDLocation *)v5 setTimeStamp:v8];

    v9 = [v4 objectForKeyedSubscript:@"eventType"];
    -[FMDLocation setEventType:](v5, "setEventType:", [v9 intValue]);

    v10 = [v4 objectForKeyedSubscript:@"locationTypeEnum"];
    -[FMDLocation setPositionType:](v5, "setPositionType:", [v10 intValue]);

    v11 = [v4 objectForKeyedSubscript:@"latitude"];
    v12 = [v4 objectForKeyedSubscript:@"longitude"];
    v13 = [v4 objectForKeyedSubscript:@"alt"];
    v14 = [v4 objectForKeyedSubscript:@"horizontalAccuracy"];
    v15 = [v4 objectForKeyedSubscript:@"vertAcc"];
    v49 = [v4 objectForKeyedSubscript:@"speed"];
    v16 = [v4 objectForKeyedSubscript:@"course"];
    v17 = [v4 objectForKeyedSubscript:@"locationTimestamp"];
    v18 = [v17 integerValue];

    v19 = [CLLocation alloc];
    v52 = v11;
    [v11 doubleValue];
    v21 = v20;
    v51 = v12;
    [v12 doubleValue];
    v23 = CLLocationCoordinate2DMake(v21, v22);
    [v13 doubleValue];
    v25 = v24;
    v50 = v14;
    [v14 doubleValue];
    v27 = v26;
    [v15 doubleValue];
    v29 = v28;
    [v16 doubleValue];
    v31 = v30;
    [v49 doubleValue];
    v33 = v32;
    v34 = [NSDate fm_dateFromEpoch:v18];
    v35 = [v19 initWithCoordinate:v34 altitude:v23.latitude horizontalAccuracy:v23.longitude verticalAccuracy:v25 course:v27 speed:v29 timestamp:{v31, v33}];

    v36 = [[CLLocationFMGeoLocatableAdapter alloc] initWithLocation:v35];
    v37 = [v4 objectForKeyedSubscript:@"positionTypeEnum"];
    -[CLLocationFMGeoLocatableAdapter setLocationType:](v36, "setLocationType:", [v37 intValue]);

    [(FMDLocation *)v5 setLocation:v36];
    v38 = objc_alloc_init(FMDVolatileMetaDataRecord);
    metaDataRecord = v5->_metaDataRecord;
    v5->_metaDataRecord = v38;

    v40 = [v4 objectForKeyedSubscript:@"deviceInfo"];

    if (v40)
    {
      v41 = [(FMDLocation *)v5 metaDataRecord];
      v57 = @"deviceInfo";
      v42 = [v4 objectForKeyedSubscript:@"deviceInfo"];
      v58 = v42;
      v43 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      [v41 appendMetaData:v43];
    }

    v44 = [v4 objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDBatteryInfo"];

    if (v44)
    {
      v45 = [(FMDLocation *)v5 metaDataRecord];
      v55 = @"kFMDTrackedLocationsStoreTrackFMDBatteryInfo";
      v46 = [v4 objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDBatteryInfo"];
      v56 = v46;
      v47 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      [v45 appendMetaData:v47];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  timeStamp = self->_timeStamp;
  v5 = a3;
  v6 = NSStringFromSelector("timeStamp");
  [v5 encodeObject:timeStamp forKey:v6];

  [v5 encodeObject:self->_location forKey:@"geoLocation"];
  v7 = [NSNumber numberWithInteger:self->_eventType];
  v8 = NSStringFromSelector("eventType");
  [v5 encodeObject:v7 forKey:v8];

  v10 = [(FMDLocation *)self metaDataRecord];
  v9 = NSStringFromSelector("metaDataRecord");
  [v5 encodeObject:v10 forKey:v9];
}

- (FMDVolatileMetaDataRecord)metaDataRecord
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10000AA54;
  v10 = sub_100002AF4;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100182FAC;
  v5[3] = &unk_1002CD260;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  v4 = [(NSDate *)self->_timeStamp stringValueForServer];
  [v3 fm_safelySetObject:v4 forKey:@"timestamp"];

  v5 = [NSNumber numberWithLongLong:[(NSDate *)self->_timeStamp fm_epoch]];
  [v3 fm_safelySetObject:v5 forKey:@"locationTimestamp"];

  v6 = [NSNumber numberWithInteger:self->_eventType];
  [v3 fm_safelySetObject:v6 forKey:@"eventType"];

  v7 = [(FMGeoLocatable *)self->_location latitude];
  [v3 fm_safelySetObject:v7 forKey:@"latitude"];

  v8 = [(FMGeoLocatable *)self->_location longitude];
  [v3 fm_safelySetObject:v8 forKey:@"longitude"];

  v9 = [(FMGeoLocatable *)self->_location horizontalAccuracy];
  [v3 fm_safelySetObject:v9 forKey:@"horizontalAccuracy"];

  v10 = [(FMGeoLocatable *)self->_location verticalAccuracy];
  [v3 fm_safelySetObject:v10 forKey:@"vertAcc"];

  v11 = [(FMGeoLocatable *)self->_location speed];
  [v3 fm_safelySetObject:v11 forKey:@"speed"];

  v12 = [(FMGeoLocatable *)self->_location course];
  [v3 fm_safelySetObject:v12 forKey:@"course"];

  v13 = [(FMDLocation *)self location];
  v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 locationType]);
  [v3 fm_safelySetObject:v14 forKey:@"positionTypeEnum"];

  v15 = [(FMDLocation *)self location];
  v16 = -[FMDLocation stringForLocationType:](self, "stringForLocationType:", [v15 locationType]);
  [v3 fm_safelySetObject:v16 forKey:@"positionType"];

  v17 = [NSNumber numberWithUnsignedChar:[(FMDLocation *)self positionType]];
  [v3 fm_safelySetObject:v17 forKey:@"locationTypeEnum"];

  v18 = [(FMDLocation *)self _trackedLocationTypeAsString:[(FMDLocation *)self positionType]];
  [v3 fm_safelySetObject:v18 forKey:@"locationType"];

  v19 = [(FMGeoLocatable *)self->_location altitude];
  [v3 fm_safeSetObject:v19 forKey:@"alt"];

  v20 = [(FMDLocation *)self metaDataRecord];
  v21 = [v20 dictionaryValue];
  [v3 setValuesForKeysWithDictionary:v21];

  return v3;
}

- (id)stringForLocationType:(int64_t)a3
{
  if ((a3 - 1) > 9)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1002CFB68 + a3 - 1);
  }
}

- (id)_trackedLocationTypeAsString:(unsigned __int8)a3
{
  if ((a3 + 1) > 4u)
  {
    return &stru_1002DCE08;
  }

  else
  {
    return *(&off_1002CFBB8 + (a3 + 1));
  }
}

@end