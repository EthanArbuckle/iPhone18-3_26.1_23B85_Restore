@interface NILocation
- (BOOL)isEqual:(id)equal;
- (NILocation)initWithCoder:(id)coder;
- (NILocation)initWithTimestamp:(id)timestamp latitude:(double)latitude longitude:(double)longitude altitude:(double)altitude ellipsoidalAltitude:(double)ellipsoidalAltitude horizontalAccuracy:(double)accuracy verticalAccuracy:(double)verticalAccuracy speed:(double)self0 speedAccuracy:(double)self1 course:(double)self2 courseAccuracy:(double)self3 floor:(int64_t)self4 locationType:(int64_t)self5 signalEnvironment:(int64_t)self6;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NILocation

- (NILocation)initWithTimestamp:(id)timestamp latitude:(double)latitude longitude:(double)longitude altitude:(double)altitude ellipsoidalAltitude:(double)ellipsoidalAltitude horizontalAccuracy:(double)accuracy verticalAccuracy:(double)verticalAccuracy speed:(double)self0 speedAccuracy:(double)self1 course:(double)self2 courseAccuracy:(double)self3 floor:(int64_t)self4 locationType:(int64_t)self5 signalEnvironment:(int64_t)self6
{
  timestampCopy = timestamp;
  if (!timestampCopy)
  {
    __assert_rtn("[NILocation initWithTimestamp:latitude:longitude:altitude:ellipsoidalAltitude:horizontalAccuracy:verticalAccuracy:speed:speedAccuracy:course:courseAccuracy:floor:locationType:signalEnvironment:]", "NILocation.mm", 37, "timestamp");
  }

  v33.receiver = self;
  v33.super_class = NILocation;
  v29 = [(NILocation *)&v33 init];
  if (v29)
  {
    v30 = [timestampCopy copy];
    timestamp = v29->_timestamp;
    v29->_timestamp = v30;

    v29->_latitude = latitude;
    v29->_longitude = longitude;
    v29->_altitude = altitude;
    v29->_ellipsoidalAltitude = ellipsoidalAltitude;
    v29->_horizontalAccuracy = accuracy;
    v29->_verticalAccuracy = verticalAccuracy;
    v29->_speed = speed;
    v29->_speedAccuracy = speedAccuracy;
    v29->_course = course;
    v29->_courseAccuracy = courseAccuracy;
    v29->_floor = floor;
    v29->_locationType = type;
    v29->_signalEnvironment = environment;
  }

  return v29;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeDouble:@"latitude" forKey:self->_latitude];
  [coderCopy encodeDouble:@"longitude" forKey:self->_longitude];
  [coderCopy encodeDouble:@"altitude" forKey:self->_altitude];
  [coderCopy encodeDouble:@"ellipsoidalAltitude" forKey:self->_ellipsoidalAltitude];
  [coderCopy encodeDouble:@"horizontalAccuracy" forKey:self->_horizontalAccuracy];
  [coderCopy encodeDouble:@"verticalAccuracy" forKey:self->_verticalAccuracy];
  [coderCopy encodeDouble:@"speed" forKey:self->_speed];
  [coderCopy encodeDouble:@"speedAccuracy" forKey:self->_speedAccuracy];
  [coderCopy encodeDouble:@"course" forKey:self->_course];
  [coderCopy encodeDouble:@"courseAccuracy" forKey:self->_courseAccuracy];
  [coderCopy encodeInteger:self->_floor forKey:@"floor"];
  [coderCopy encodeInteger:self->_locationType forKey:@"locationType"];
  [coderCopy encodeInteger:self->_signalEnvironment forKey:@"signalEnvironment"];
}

- (NILocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [coderCopy decodeDoubleForKey:@"latitude"];
    v26 = v6;
    [coderCopy decodeDoubleForKey:@"longitude"];
    v25 = v7;
    [coderCopy decodeDoubleForKey:@"altitude"];
    v9 = v8;
    [coderCopy decodeDoubleForKey:@"ellipsoidalAltitude"];
    v11 = v10;
    [coderCopy decodeDoubleForKey:@"horizontalAccuracy"];
    v13 = v12;
    [coderCopy decodeDoubleForKey:@"verticalAccuracy"];
    v15 = v14;
    [coderCopy decodeDoubleForKey:@"speed"];
    v17 = v16;
    [coderCopy decodeDoubleForKey:@"speedAccuracy"];
    v19 = v18;
    [coderCopy decodeDoubleForKey:@"course"];
    v21 = v20;
    [coderCopy decodeDoubleForKey:@"courseAccuracy"];
    v23 = -[NILocation initWithTimestamp:latitude:longitude:altitude:ellipsoidalAltitude:horizontalAccuracy:verticalAccuracy:speed:speedAccuracy:course:courseAccuracy:floor:locationType:signalEnvironment:]([NILocation alloc], "initWithTimestamp:latitude:longitude:altitude:ellipsoidalAltitude:horizontalAccuracy:verticalAccuracy:speed:speedAccuracy:course:courseAccuracy:floor:locationType:signalEnvironment:", v5, [coderCopy decodeIntegerForKey:@"floor"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"locationType"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"signalEnvironment"), v26, v25, v9, v11, v13, v15, v17, v19, v21, v22);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5 == self)
    {
      v36 = 1;
LABEL_29:

      goto LABEL_30;
    }

    timestamp = self->_timestamp;
    if (!timestamp)
    {
      timestamp = [(NILocation *)v5 timestamp];

      if (!timestamp)
      {
        v11 = 0;
LABEL_7:
        latitude = self->_latitude;
        [(NILocation *)v6 latitude];
        v14 = v13;
        longitude = self->_longitude;
        [(NILocation *)v6 longitude];
        v17 = v16;
        altitude = self->_altitude;
        [(NILocation *)v6 altitude];
        v20 = v19;
        ellipsoidalAltitude = self->_ellipsoidalAltitude;
        [(NILocation *)v6 ellipsoidalAltitude];
        v23 = v22;
        horizontalAccuracy = self->_horizontalAccuracy;
        [(NILocation *)v6 horizontalAccuracy];
        v50 = v24;
        verticalAccuracy = self->_verticalAccuracy;
        [(NILocation *)v6 verticalAccuracy];
        v48 = v25;
        speed = self->_speed;
        [(NILocation *)v6 speed];
        v46 = v26;
        speedAccuracy = self->_speedAccuracy;
        [(NILocation *)v6 speedAccuracy];
        v44 = v27;
        course = self->_course;
        [(NILocation *)v6 course];
        v42 = v28;
        courseAccuracy = self->_courseAccuracy;
        [(NILocation *)v6 courseAccuracy];
        v40 = v29;
        floor = self->_floor;
        floor = [(NILocation *)v6 floor];
        locationType = self->_locationType;
        locationType = [(NILocation *)v6 locationType];
        signalEnvironment = self->_signalEnvironment;
        signalEnvironment = [(NILocation *)v6 signalEnvironment];
        v36 = 0;
        if (latitude == v14)
        {
          v37 = v11;
        }

        else
        {
          v37 = 1;
        }

        if ((v37 & 1) == 0 && longitude == v17 && altitude == v20 && ellipsoidalAltitude == v23 && horizontalAccuracy == v50 && verticalAccuracy == v48 && speed == v46 && speedAccuracy == v44 && course == v42 && courseAccuracy == v40 && floor == floor)
        {
          v36 = locationType == locationType && signalEnvironment == signalEnvironment;
        }

        goto LABEL_29;
      }

      timestamp = self->_timestamp;
    }

    timestamp2 = [(NILocation *)v6 timestamp];
    v10 = [(NSDate *)timestamp isEqual:timestamp2];

    v11 = v10 ^ 1;
    goto LABEL_7;
  }

  v36 = 0;
LABEL_30:

  return v36;
}

- (unint64_t)hash
{
  timestamp = self->_timestamp;
  if (timestamp)
  {
    v24 = [(NSDate *)timestamp hash];
  }

  else
  {
    v24 = 0;
  }

  v31 = [NSNumber numberWithDouble:self->_latitude];
  v23 = [v31 hash];
  v30 = [NSNumber numberWithDouble:self->_longitude];
  v22 = [v30 hash];
  v29 = [NSNumber numberWithDouble:self->_altitude];
  v20 = [v29 hash];
  v28 = [NSNumber numberWithDouble:self->_ellipsoidalAltitude];
  v19 = [v28 hash];
  v27 = [NSNumber numberWithDouble:self->_horizontalAccuracy];
  v18 = [v27 hash];
  v26 = [NSNumber numberWithDouble:self->_verticalAccuracy];
  v17 = [v26 hash];
  v25 = [NSNumber numberWithDouble:self->_speed];
  v16 = [v25 hash];
  v21 = [NSNumber numberWithDouble:self->_speedAccuracy];
  v15 = [v21 hash];
  v4 = [NSNumber numberWithDouble:self->_course];
  v5 = [v4 hash];
  v6 = [NSNumber numberWithDouble:self->_courseAccuracy];
  v7 = [v6 hash];
  v8 = [NSNumber numberWithInteger:self->_floor];
  v9 = [v8 hash];
  v10 = [NSNumber numberWithInteger:self->_locationType];
  v11 = [v10 hash];
  v12 = [NSNumber numberWithInteger:self->_signalEnvironment];
  v13 = v9 ^ v11 ^ [v12 hash];

  return v23 ^ v24 ^ v22 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v5 ^ v7 ^ v13;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptionInternal = [(NILocation *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

- (id)descriptionInternal
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v17 = [NSString stringWithFormat:@"%.7fdeg", *&self->_latitude];
    v16 = [NSString stringWithFormat:@"%.7fdeg", *&self->_longitude];
    v3 = [NSString stringWithFormat:@"%.1fm", *&self->_altitude];
    v4 = [NSString stringWithFormat:@"%.1fm", *&self->_ellipsoidalAltitude];
    v19 = [NSString stringWithFormat:@"%.1fm", *&self->_horizontalAccuracy];
    v18 = [NSString stringWithFormat:@"%.1fm", *&self->_verticalAccuracy];
    v15 = [NSString stringWithFormat:@"%.1fm/s", *&self->_speed];
    v5 = [NSString stringWithFormat:@"%.1fm/s", *&self->_speedAccuracy];
    v14 = [NSString stringWithFormat:@"%.1fdeg", *&self->_course];
    v13 = [NSString stringWithFormat:@"%.1fdeg", *&self->_courseAccuracy];
    v6 = v4;
    if (self->_floor == NILocationFloorNotAvailable)
    {
      v7 = v3;
      v8 = @"-";
    }

    else
    {
      [NSString stringWithFormat:@"%d", self->_floor];
      v8 = v7 = v3;
    }

    v10 = [NSString stringWithFormat:@"%d", self->_locationType];
    v11 = [NSString stringWithFormat:@"%d", self->_signalEnvironment];
    v9 = [NSString stringWithFormat:@"Time: %@. Pos: [%@, %@, %@ (sea) %@ (ell)] +/- [%@, %@]. Spd: %@ +/- %@. Crs: %@ +/- %@. Flr: %@. LocType: %@. SigEnv: %@.", self->_timestamp, v17, v16, v7, v6, v19, v18, v15, v5, v14, v13, v8, v10, v11];
  }

  else
  {
    v9 = @"***";
  }

  return v9;
}

@end