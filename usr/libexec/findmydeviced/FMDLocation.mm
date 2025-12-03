@interface FMDLocation
- (FMDLocation)initWithCoder:(id)coder;
- (FMDLocation)initWithDictionary:(id)dictionary;
- (FMDLocation)initWithLocation:(id)location eventType:(int64_t)type positionType:(unsigned __int8)positionType;
- (FMDVolatileMetaDataRecord)metaDataRecord;
- (NSDictionary)dictionaryValue;
- (id)_trackedLocationTypeAsString:(unsigned __int8)string;
- (id)stringForLocationType:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDLocation

- (FMDLocation)initWithLocation:(id)location eventType:(int64_t)type positionType:(unsigned __int8)positionType
{
  locationCopy = location;
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

    objc_storeStrong(&v10->_location, location);
    v10->_eventType = type;
    v10->_positionType = positionType;
    v15 = objc_alloc_init(FMDVolatileMetaDataRecord);
    metaDataRecord = v10->_metaDataRecord;
    v10->_metaDataRecord = v15;
  }

  return v10;
}

- (FMDLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];
    timeStamp = v5->_timeStamp;
    v5->_timeStamp = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geoLocation"];
    if ([v12 conformsToProtocol:&OBJC_PROTOCOL___FMGeoLocatable])
    {
      objc_storeStrong(&v5->_location, v12);
    }

    v13 = objc_opt_class();
    v14 = NSStringFromSelector("eventType");
    v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
    v5->_eventType = [v15 integerValue];

    v16 = objc_opt_class();
    v17 = NSStringFromSelector("metaDataRecord");
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
    metaDataRecord = v5->_metaDataRecord;
    v5->_metaDataRecord = v18;
  }

  return v5;
}

- (FMDLocation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v54.receiver = self;
  v54.super_class = FMDLocation;
  v5 = [(FMDLocation *)&v54 init];
  if (v5)
  {
    v6 = dispatch_queue_create("FMDLocationQueue", 0);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v6;

    v53 = [dictionaryCopy objectForKeyedSubscript:@"locationTimestamp"];
    v8 = +[NSDate fm_dateFromEpoch:](NSDate, "fm_dateFromEpoch:", [v53 integerValue]);
    [(FMDLocation *)v5 setTimeStamp:v8];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"eventType"];
    -[FMDLocation setEventType:](v5, "setEventType:", [v9 intValue]);

    v10 = [dictionaryCopy objectForKeyedSubscript:@"locationTypeEnum"];
    -[FMDLocation setPositionType:](v5, "setPositionType:", [v10 intValue]);

    v11 = [dictionaryCopy objectForKeyedSubscript:@"latitude"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"longitude"];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"alt"];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"horizontalAccuracy"];
    v15 = [dictionaryCopy objectForKeyedSubscript:@"vertAcc"];
    v49 = [dictionaryCopy objectForKeyedSubscript:@"speed"];
    v16 = [dictionaryCopy objectForKeyedSubscript:@"course"];
    v17 = [dictionaryCopy objectForKeyedSubscript:@"locationTimestamp"];
    integerValue = [v17 integerValue];

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
    v34 = [NSDate fm_dateFromEpoch:integerValue];
    v35 = [v19 initWithCoordinate:v34 altitude:v23.latitude horizontalAccuracy:v23.longitude verticalAccuracy:v25 course:v27 speed:v29 timestamp:{v31, v33}];

    v36 = [[CLLocationFMGeoLocatableAdapter alloc] initWithLocation:v35];
    v37 = [dictionaryCopy objectForKeyedSubscript:@"positionTypeEnum"];
    -[CLLocationFMGeoLocatableAdapter setLocationType:](v36, "setLocationType:", [v37 intValue]);

    [(FMDLocation *)v5 setLocation:v36];
    v38 = objc_alloc_init(FMDVolatileMetaDataRecord);
    metaDataRecord = v5->_metaDataRecord;
    v5->_metaDataRecord = v38;

    v40 = [dictionaryCopy objectForKeyedSubscript:@"deviceInfo"];

    if (v40)
    {
      metaDataRecord = [(FMDLocation *)v5 metaDataRecord];
      v57 = @"deviceInfo";
      v42 = [dictionaryCopy objectForKeyedSubscript:@"deviceInfo"];
      v58 = v42;
      v43 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      [metaDataRecord appendMetaData:v43];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDBatteryInfo"];

    if (v44)
    {
      metaDataRecord2 = [(FMDLocation *)v5 metaDataRecord];
      v55 = @"kFMDTrackedLocationsStoreTrackFMDBatteryInfo";
      v46 = [dictionaryCopy objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDBatteryInfo"];
      v56 = v46;
      v47 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      [metaDataRecord2 appendMetaData:v47];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  timeStamp = self->_timeStamp;
  coderCopy = coder;
  v6 = NSStringFromSelector("timeStamp");
  [coderCopy encodeObject:timeStamp forKey:v6];

  [coderCopy encodeObject:self->_location forKey:@"geoLocation"];
  v7 = [NSNumber numberWithInteger:self->_eventType];
  v8 = NSStringFromSelector("eventType");
  [coderCopy encodeObject:v7 forKey:v8];

  metaDataRecord = [(FMDLocation *)self metaDataRecord];
  v9 = NSStringFromSelector("metaDataRecord");
  [coderCopy encodeObject:metaDataRecord forKey:v9];
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
  stringValueForServer = [(NSDate *)self->_timeStamp stringValueForServer];
  [v3 fm_safelySetObject:stringValueForServer forKey:@"timestamp"];

  v5 = [NSNumber numberWithLongLong:[(NSDate *)self->_timeStamp fm_epoch]];
  [v3 fm_safelySetObject:v5 forKey:@"locationTimestamp"];

  v6 = [NSNumber numberWithInteger:self->_eventType];
  [v3 fm_safelySetObject:v6 forKey:@"eventType"];

  latitude = [(FMGeoLocatable *)self->_location latitude];
  [v3 fm_safelySetObject:latitude forKey:@"latitude"];

  longitude = [(FMGeoLocatable *)self->_location longitude];
  [v3 fm_safelySetObject:longitude forKey:@"longitude"];

  horizontalAccuracy = [(FMGeoLocatable *)self->_location horizontalAccuracy];
  [v3 fm_safelySetObject:horizontalAccuracy forKey:@"horizontalAccuracy"];

  verticalAccuracy = [(FMGeoLocatable *)self->_location verticalAccuracy];
  [v3 fm_safelySetObject:verticalAccuracy forKey:@"vertAcc"];

  speed = [(FMGeoLocatable *)self->_location speed];
  [v3 fm_safelySetObject:speed forKey:@"speed"];

  course = [(FMGeoLocatable *)self->_location course];
  [v3 fm_safelySetObject:course forKey:@"course"];

  location = [(FMDLocation *)self location];
  v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [location locationType]);
  [v3 fm_safelySetObject:v14 forKey:@"positionTypeEnum"];

  location2 = [(FMDLocation *)self location];
  v16 = -[FMDLocation stringForLocationType:](self, "stringForLocationType:", [location2 locationType]);
  [v3 fm_safelySetObject:v16 forKey:@"positionType"];

  v17 = [NSNumber numberWithUnsignedChar:[(FMDLocation *)self positionType]];
  [v3 fm_safelySetObject:v17 forKey:@"locationTypeEnum"];

  v18 = [(FMDLocation *)self _trackedLocationTypeAsString:[(FMDLocation *)self positionType]];
  [v3 fm_safelySetObject:v18 forKey:@"locationType"];

  altitude = [(FMGeoLocatable *)self->_location altitude];
  [v3 fm_safeSetObject:altitude forKey:@"alt"];

  metaDataRecord = [(FMDLocation *)self metaDataRecord];
  dictionaryValue = [metaDataRecord dictionaryValue];
  [v3 setValuesForKeysWithDictionary:dictionaryValue];

  return v3;
}

- (id)stringForLocationType:(int64_t)type
{
  if ((type - 1) > 9)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1002CFB68 + type - 1);
  }
}

- (id)_trackedLocationTypeAsString:(unsigned __int8)string
{
  if ((string + 1) > 4u)
  {
    return &stru_1002DCE08;
  }

  else
  {
    return *(&off_1002CFBB8 + (string + 1));
  }
}

@end