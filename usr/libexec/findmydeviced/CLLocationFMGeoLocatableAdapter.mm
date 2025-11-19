@interface CLLocationFMGeoLocatableAdapter
- (CLLocationFMGeoLocatableAdapter)initWithCoder:(id)a3;
- (CLLocationFMGeoLocatableAdapter)initWithLocation:(id)a3;
- (CLLocationFMGeoLocatableAdapter)initWithLocation:(id)a3 timeStamp:(id)a4;
- (int64_t)geoLocatableLocationTypeForLocationType:(int)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLLocationFMGeoLocatableAdapter

- (CLLocationFMGeoLocatableAdapter)initWithLocation:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CLLocationFMGeoLocatableAdapter;
  v5 = [(CLLocationFMGeoLocatableAdapter *)&v19 init];
  if (v5)
  {
    [v4 coordinate];
    v6 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v5 setLatitude:v6];

    [v4 coordinate];
    v8 = [NSNumber numberWithDouble:v7];
    [(CLLocationFMGeoLocatableAdapter *)v5 setLongitude:v8];

    [v4 altitude];
    v9 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v5 setAltitude:v9];

    [v4 horizontalAccuracy];
    v10 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v5 setHorizontalAccuracy:v10];

    [v4 verticalAccuracy];
    v11 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v5 setVerticalAccuracy:v11];

    [v4 course];
    v12 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v5 setCourse:v12];

    [v4 speed];
    v13 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v5 setSpeed:v13];

    v14 = [v4 timestamp];
    [(CLLocationFMGeoLocatableAdapter *)v5 setTimestamp:v14];

    v15 = [v4 floor];
    if (v15)
    {
      v16 = [v4 floor];
      v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v16 level]);
      [(CLLocationFMGeoLocatableAdapter *)v5 setFloor:v17];
    }

    else
    {
      [(CLLocationFMGeoLocatableAdapter *)v5 setFloor:0];
    }

    -[CLLocationFMGeoLocatableAdapter setLocationType:](v5, "setLocationType:", -[CLLocationFMGeoLocatableAdapter geoLocatableLocationTypeForLocationType:](v5, "geoLocatableLocationTypeForLocationType:", [v4 type]));
  }

  return v5;
}

- (CLLocationFMGeoLocatableAdapter)initWithLocation:(id)a3 timeStamp:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = CLLocationFMGeoLocatableAdapter;
  v8 = [(CLLocationFMGeoLocatableAdapter *)&v21 init];
  if (v8)
  {
    [v6 coordinate];
    v9 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v8 setLatitude:v9];

    [v6 coordinate];
    v11 = [NSNumber numberWithDouble:v10];
    [(CLLocationFMGeoLocatableAdapter *)v8 setLongitude:v11];

    [v6 altitude];
    v12 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v8 setAltitude:v12];

    [v6 horizontalAccuracy];
    v13 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v8 setHorizontalAccuracy:v13];

    [v6 verticalAccuracy];
    v14 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v8 setVerticalAccuracy:v14];

    [v6 course];
    v15 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v8 setCourse:v15];

    [v6 speed];
    v16 = [NSNumber numberWithDouble:?];
    [(CLLocationFMGeoLocatableAdapter *)v8 setSpeed:v16];

    [(CLLocationFMGeoLocatableAdapter *)v8 setTimestamp:v7];
    v17 = [v6 floor];
    if (v17)
    {
      v18 = [v6 floor];
      v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v18 level]);
      [(CLLocationFMGeoLocatableAdapter *)v8 setFloor:v19];
    }

    else
    {
      [(CLLocationFMGeoLocatableAdapter *)v8 setFloor:0];
    }

    -[CLLocationFMGeoLocatableAdapter setLocationType:](v8, "setLocationType:", -[CLLocationFMGeoLocatableAdapter geoLocatableLocationTypeForLocationType:](v8, "geoLocatableLocationTypeForLocationType:", [v6 type]));
  }

  return v8;
}

- (int64_t)geoLocatableLocationTypeForLocationType:(int)a3
{
  if (a3 < 0xC && ((0xFDFu >> a3) & 1) != 0)
  {
    return qword_100258820[a3];
  }

  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10022E8F4(a3, v5);
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CLLocationFMGeoLocatableAdapter *)self latitude];
  v6 = NSStringFromSelector("latitude");
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CLLocationFMGeoLocatableAdapter *)self longitude];
  v8 = NSStringFromSelector("longitude");
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(CLLocationFMGeoLocatableAdapter *)self altitude];
  v10 = NSStringFromSelector("altitude");
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(CLLocationFMGeoLocatableAdapter *)self horizontalAccuracy];
  v12 = NSStringFromSelector("horizontalAccuracy");
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(CLLocationFMGeoLocatableAdapter *)self verticalAccuracy];
  v14 = NSStringFromSelector("verticalAccuracy");
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(CLLocationFMGeoLocatableAdapter *)self course];
  v16 = NSStringFromSelector("course");
  [v4 encodeObject:v15 forKey:v16];

  v17 = [(CLLocationFMGeoLocatableAdapter *)self speed];
  v18 = NSStringFromSelector("speed");
  [v4 encodeObject:v17 forKey:v18];

  v19 = [(CLLocationFMGeoLocatableAdapter *)self timestamp];
  v20 = NSStringFromSelector("timestamp");
  [v4 encodeObject:v19 forKey:v20];

  v21 = [(CLLocationFMGeoLocatableAdapter *)self floor];
  v22 = NSStringFromSelector("floor");
  [v4 encodeObject:v21 forKey:v22];

  v24 = [NSNumber numberWithInteger:[(CLLocationFMGeoLocatableAdapter *)self locationType]];
  v23 = NSStringFromSelector("locationType");
  [v4 encodeObject:v24 forKey:v23];
}

- (CLLocationFMGeoLocatableAdapter)initWithCoder:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = CLLocationFMGeoLocatableAdapter;
  v5 = [(CLLocationFMGeoLocatableAdapter *)&v37 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("latitude");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    [(CLLocationFMGeoLocatableAdapter *)v5 setLatitude:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector("longitude");
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    [(CLLocationFMGeoLocatableAdapter *)v5 setLongitude:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector("altitude");
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    [(CLLocationFMGeoLocatableAdapter *)v5 setAltitude:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector("horizontalAccuracy");
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    [(CLLocationFMGeoLocatableAdapter *)v5 setHorizontalAccuracy:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector("verticalAccuracy");
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    [(CLLocationFMGeoLocatableAdapter *)v5 setVerticalAccuracy:v20];

    v21 = objc_opt_class();
    v22 = NSStringFromSelector("course");
    v23 = [v4 decodeObjectOfClass:v21 forKey:v22];
    [(CLLocationFMGeoLocatableAdapter *)v5 setCourse:v23];

    v24 = objc_opt_class();
    v25 = NSStringFromSelector("speed");
    v26 = [v4 decodeObjectOfClass:v24 forKey:v25];
    [(CLLocationFMGeoLocatableAdapter *)v5 setSpeed:v26];

    v27 = objc_opt_class();
    v28 = NSStringFromSelector("timestamp");
    v29 = [v4 decodeObjectOfClass:v27 forKey:v28];
    [(CLLocationFMGeoLocatableAdapter *)v5 setTimestamp:v29];

    v30 = objc_opt_class();
    v31 = NSStringFromSelector("floor");
    v32 = [v4 decodeObjectOfClass:v30 forKey:v31];
    [(CLLocationFMGeoLocatableAdapter *)v5 setFloor:v32];

    v33 = objc_opt_class();
    v34 = NSStringFromSelector("locationType");
    v35 = [v4 decodeObjectOfClass:v33 forKey:v34];
    -[CLLocationFMGeoLocatableAdapter setLocationType:](v5, "setLocationType:", [v35 integerValue]);
  }

  return v5;
}

@end