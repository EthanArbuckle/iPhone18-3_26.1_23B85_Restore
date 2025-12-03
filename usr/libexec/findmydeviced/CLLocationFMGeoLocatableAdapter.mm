@interface CLLocationFMGeoLocatableAdapter
- (CLLocationFMGeoLocatableAdapter)initWithCoder:(id)coder;
- (CLLocationFMGeoLocatableAdapter)initWithLocation:(id)location;
- (CLLocationFMGeoLocatableAdapter)initWithLocation:(id)location timeStamp:(id)stamp;
- (int64_t)geoLocatableLocationTypeForLocationType:(int)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLLocationFMGeoLocatableAdapter

- (CLLocationFMGeoLocatableAdapter)initWithLocation:(id)location
{
  locationCopy = location;
  v19.receiver = self;
  v19.super_class = CLLocationFMGeoLocatableAdapter;
  v5 = [(CLLocationFMGeoLocatableAdapter *)&v19 init];
  if (v5)
  {
    [locationCopy coordinate];
    v6 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v5 setLatitude:v6];

    [locationCopy coordinate];
    v8 = [NSNumber numberWithDouble:v7];
    [(CLLocationFMGeoLocatableAdapter *)v5 setLongitude:v8];

    [locationCopy altitude];
    v9 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v5 setAltitude:v9];

    [locationCopy horizontalAccuracy];
    v10 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v5 setHorizontalAccuracy:v10];

    [locationCopy verticalAccuracy];
    v11 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v5 setVerticalAccuracy:v11];

    [locationCopy course];
    v12 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v5 setCourse:v12];

    [locationCopy speed];
    v13 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v5 setSpeed:v13];

    timestamp = [locationCopy timestamp];
    [(CLLocationFMGeoLocatableAdapter *)v5 setTimestamp:timestamp];

    floor = [locationCopy floor];
    if (floor)
    {
      floor2 = [locationCopy floor];
      v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [floor2 level]);
      [(CLLocationFMGeoLocatableAdapter *)v5 setFloor:v17];
    }

    else
    {
      [(CLLocationFMGeoLocatableAdapter *)v5 setFloor:0];
    }

    -[CLLocationFMGeoLocatableAdapter setLocationType:](v5, "setLocationType:", -[CLLocationFMGeoLocatableAdapter geoLocatableLocationTypeForLocationType:](v5, "geoLocatableLocationTypeForLocationType:", [locationCopy type]));
  }

  return v5;
}

- (CLLocationFMGeoLocatableAdapter)initWithLocation:(id)location timeStamp:(id)stamp
{
  locationCopy = location;
  stampCopy = stamp;
  v21.receiver = self;
  v21.super_class = CLLocationFMGeoLocatableAdapter;
  v8 = [(CLLocationFMGeoLocatableAdapter *)&v21 init];
  if (v8)
  {
    [locationCopy coordinate];
    v9 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v8 setLatitude:v9];

    [locationCopy coordinate];
    v11 = [NSNumber numberWithDouble:v10];
    [(CLLocationFMGeoLocatableAdapter *)v8 setLongitude:v11];

    [locationCopy altitude];
    v12 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v8 setAltitude:v12];

    [locationCopy horizontalAccuracy];
    v13 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v8 setHorizontalAccuracy:v13];

    [locationCopy verticalAccuracy];
    v14 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v8 setVerticalAccuracy:v14];

    [locationCopy course];
    v15 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v8 setCourse:v15];

    [locationCopy speed];
    v16 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v8 setSpeed:v16];

    [(CLLocationFMGeoLocatableAdapter *)v8 setTimestamp:stampCopy];
    floor = [locationCopy floor];
    if (floor)
    {
      floor2 = [locationCopy floor];
      v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [floor2 level]);
      [(CLLocationFMGeoLocatableAdapter *)v8 setFloor:v19];
    }

    else
    {
      [(CLLocationFMGeoLocatableAdapter *)v8 setFloor:0];
    }

    -[CLLocationFMGeoLocatableAdapter setLocationType:](v8, "setLocationType:", -[CLLocationFMGeoLocatableAdapter geoLocatableLocationTypeForLocationType:](v8, "geoLocatableLocationTypeForLocationType:", [locationCopy type]));
  }

  return v8;
}

- (int64_t)geoLocatableLocationTypeForLocationType:(int)type
{
  if (type < 0xC && ((0xFDFu >> type) & 1) != 0)
  {
    return qword_100258820[type];
  }

  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10022E8F4(type, v5);
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  latitude = [(CLLocationFMGeoLocatableAdapter *)self latitude];
  v6 = NSStringFromSelector("latitude");
  [coderCopy encodeObject:latitude forKey:v6];

  longitude = [(CLLocationFMGeoLocatableAdapter *)self longitude];
  v8 = NSStringFromSelector("longitude");
  [coderCopy encodeObject:longitude forKey:v8];

  altitude = [(CLLocationFMGeoLocatableAdapter *)self altitude];
  v10 = NSStringFromSelector("altitude");
  [coderCopy encodeObject:altitude forKey:v10];

  horizontalAccuracy = [(CLLocationFMGeoLocatableAdapter *)self horizontalAccuracy];
  v12 = NSStringFromSelector("horizontalAccuracy");
  [coderCopy encodeObject:horizontalAccuracy forKey:v12];

  verticalAccuracy = [(CLLocationFMGeoLocatableAdapter *)self verticalAccuracy];
  v14 = NSStringFromSelector("verticalAccuracy");
  [coderCopy encodeObject:verticalAccuracy forKey:v14];

  course = [(CLLocationFMGeoLocatableAdapter *)self course];
  v16 = NSStringFromSelector("course");
  [coderCopy encodeObject:course forKey:v16];

  speed = [(CLLocationFMGeoLocatableAdapter *)self speed];
  v18 = NSStringFromSelector("speed");
  [coderCopy encodeObject:speed forKey:v18];

  timestamp = [(CLLocationFMGeoLocatableAdapter *)self timestamp];
  v20 = NSStringFromSelector("timestamp");
  [coderCopy encodeObject:timestamp forKey:v20];

  floor = [(CLLocationFMGeoLocatableAdapter *)self floor];
  v22 = NSStringFromSelector("floor");
  [coderCopy encodeObject:floor forKey:v22];

  v24 = [NSNumber numberWithInteger:[(CLLocationFMGeoLocatableAdapter *)self locationType]];
  v23 = NSStringFromSelector("locationType");
  [coderCopy encodeObject:v24 forKey:v23];
}

- (CLLocationFMGeoLocatableAdapter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = CLLocationFMGeoLocatableAdapter;
  v5 = [(CLLocationFMGeoLocatableAdapter *)&v37 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("latitude");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(CLLocationFMGeoLocatableAdapter *)v5 setLatitude:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector("longitude");
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(CLLocationFMGeoLocatableAdapter *)v5 setLongitude:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector("altitude");
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    [(CLLocationFMGeoLocatableAdapter *)v5 setAltitude:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector("horizontalAccuracy");
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    [(CLLocationFMGeoLocatableAdapter *)v5 setHorizontalAccuracy:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector("verticalAccuracy");
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    [(CLLocationFMGeoLocatableAdapter *)v5 setVerticalAccuracy:v20];

    v21 = objc_opt_class();
    v22 = NSStringFromSelector("course");
    v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];
    [(CLLocationFMGeoLocatableAdapter *)v5 setCourse:v23];

    v24 = objc_opt_class();
    v25 = NSStringFromSelector("speed");
    v26 = [coderCopy decodeObjectOfClass:v24 forKey:v25];
    [(CLLocationFMGeoLocatableAdapter *)v5 setSpeed:v26];

    v27 = objc_opt_class();
    v28 = NSStringFromSelector("timestamp");
    v29 = [coderCopy decodeObjectOfClass:v27 forKey:v28];
    [(CLLocationFMGeoLocatableAdapter *)v5 setTimestamp:v29];

    v30 = objc_opt_class();
    v31 = NSStringFromSelector("floor");
    v32 = [coderCopy decodeObjectOfClass:v30 forKey:v31];
    [(CLLocationFMGeoLocatableAdapter *)v5 setFloor:v32];

    v33 = objc_opt_class();
    v34 = NSStringFromSelector("locationType");
    v35 = [coderCopy decodeObjectOfClass:v33 forKey:v34];
    -[CLLocationFMGeoLocatableAdapter setLocationType:](v5, "setLocationType:", [v35 integerValue]);
  }

  return v5;
}

@end