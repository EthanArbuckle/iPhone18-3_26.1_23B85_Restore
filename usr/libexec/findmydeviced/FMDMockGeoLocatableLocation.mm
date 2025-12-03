@interface FMDMockGeoLocatableLocation
+ (id)geoLocatableLocation;
- (FMDMockGeoLocatableLocation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setNewLatitude:(id)latitude longitude:(id)longitude;
@end

@implementation FMDMockGeoLocatableLocation

+ (id)geoLocatableLocation
{
  v2 = objc_alloc_init(FMDMockGeoLocatableLocation);
  [(FMDMockGeoLocatableLocation *)v2 setLatitude:&off_1002E7D30];
  [(FMDMockGeoLocatableLocation *)v2 setLongitude:&off_1002E7D40];
  [(FMDMockGeoLocatableLocation *)v2 setAltitude:&off_1002E79C0];
  [(FMDMockGeoLocatableLocation *)v2 setHorizontalAccuracy:&off_1002E79C0];
  [(FMDMockGeoLocatableLocation *)v2 setVerticalAccuracy:&off_1002E79C0];
  v3 = +[NSDate date];
  [(FMDMockGeoLocatableLocation *)v2 setTimestamp:v3];

  return v2;
}

- (void)setNewLatitude:(id)latitude longitude:(id)longitude
{
  longitudeCopy = longitude;
  [(FMDMockGeoLocatableLocation *)self setLatitude:latitude];
  [(FMDMockGeoLocatableLocation *)self setLongitude:longitudeCopy];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  latitude = [(FMDMockGeoLocatableLocation *)self latitude];
  v6 = NSStringFromSelector("latitude");
  [coderCopy encodeObject:latitude forKey:v6];

  longitude = [(FMDMockGeoLocatableLocation *)self longitude];
  v8 = NSStringFromSelector("longitude");
  [coderCopy encodeObject:longitude forKey:v8];

  altitude = [(FMDMockGeoLocatableLocation *)self altitude];
  v10 = NSStringFromSelector("altitude");
  [coderCopy encodeObject:altitude forKey:v10];

  horizontalAccuracy = [(FMDMockGeoLocatableLocation *)self horizontalAccuracy];
  v12 = NSStringFromSelector("horizontalAccuracy");
  [coderCopy encodeObject:horizontalAccuracy forKey:v12];

  verticalAccuracy = [(FMDMockGeoLocatableLocation *)self verticalAccuracy];
  v14 = NSStringFromSelector("verticalAccuracy");
  [coderCopy encodeObject:verticalAccuracy forKey:v14];

  course = [(FMDMockGeoLocatableLocation *)self course];
  v16 = NSStringFromSelector("course");
  [coderCopy encodeObject:course forKey:v16];

  speed = [(FMDMockGeoLocatableLocation *)self speed];
  v18 = NSStringFromSelector("speed");
  [coderCopy encodeObject:speed forKey:v18];

  timestamp = [(FMDMockGeoLocatableLocation *)self timestamp];
  v20 = NSStringFromSelector("timestamp");
  [coderCopy encodeObject:timestamp forKey:v20];

  floor = [(FMDMockGeoLocatableLocation *)self floor];
  v22 = NSStringFromSelector("floor");
  [coderCopy encodeObject:floor forKey:v22];

  v24 = [NSNumber numberWithInteger:[(FMDMockGeoLocatableLocation *)self locationType]];
  v23 = NSStringFromSelector("locationType");
  [coderCopy encodeObject:v24 forKey:v23];
}

- (FMDMockGeoLocatableLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = FMDMockGeoLocatableLocation;
  v5 = [(FMDMockGeoLocatableLocation *)&v37 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("latitude");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(FMDMockGeoLocatableLocation *)v5 setLatitude:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector("longitude");
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(FMDMockGeoLocatableLocation *)v5 setLongitude:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector("altitude");
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    [(FMDMockGeoLocatableLocation *)v5 setAltitude:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector("horizontalAccuracy");
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    [(FMDMockGeoLocatableLocation *)v5 setHorizontalAccuracy:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector("verticalAccuracy");
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    [(FMDMockGeoLocatableLocation *)v5 setVerticalAccuracy:v20];

    v21 = objc_opt_class();
    v22 = NSStringFromSelector("course");
    v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];
    [(FMDMockGeoLocatableLocation *)v5 setCourse:v23];

    v24 = objc_opt_class();
    v25 = NSStringFromSelector("speed");
    v26 = [coderCopy decodeObjectOfClass:v24 forKey:v25];
    [(FMDMockGeoLocatableLocation *)v5 setSpeed:v26];

    v27 = objc_opt_class();
    v28 = NSStringFromSelector("timestamp");
    v29 = [coderCopy decodeObjectOfClass:v27 forKey:v28];
    [(FMDMockGeoLocatableLocation *)v5 setTimestamp:v29];

    v30 = objc_opt_class();
    v31 = NSStringFromSelector("floor");
    v32 = [coderCopy decodeObjectOfClass:v30 forKey:v31];
    [(FMDMockGeoLocatableLocation *)v5 setFloor:v32];

    v33 = objc_opt_class();
    v34 = NSStringFromSelector("locationType");
    v35 = [coderCopy decodeObjectOfClass:v33 forKey:v34];
    -[FMDMockGeoLocatableLocation setLocationType:](v5, "setLocationType:", [v35 integerValue]);
  }

  return v5;
}

@end