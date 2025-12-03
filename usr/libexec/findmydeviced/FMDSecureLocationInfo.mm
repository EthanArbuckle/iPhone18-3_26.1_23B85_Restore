@interface FMDSecureLocationInfo
+ (id)stringFromPublishReason:(int64_t)reason;
- (BOOL)isLocationValid;
- (FMDSecureLocationInfo)initWithLocation:(id)location motion:(id)motion publishReason:(int64_t)reason;
- (id)convertToSecureLocationObject;
- (int64_t)_spMotionStateFrom:(int64_t)from;
- (int64_t)_spPublishReasonFrom:(int64_t)from;
@end

@implementation FMDSecureLocationInfo

- (FMDSecureLocationInfo)initWithLocation:(id)location motion:(id)motion publishReason:(int64_t)reason
{
  locationCopy = location;
  motionCopy = motion;
  v14.receiver = self;
  v14.super_class = FMDSecureLocationInfo;
  v11 = [(FMDSecureLocationInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_locationInfo, location);
    objc_storeStrong(&v12->_motionInfo, motion);
    v12->_publishReason = reason;
  }

  return v12;
}

+ (id)stringFromPublishReason:(int64_t)reason
{
  if ((reason - 1) > 7)
  {
    return @"unknown";
  }

  else
  {
    return off_1002D0440[reason - 1];
  }
}

- (id)convertToSecureLocationObject
{
  v3 = objc_alloc_init(SPSecureLocation);
  [v3 setFindMyId:&stru_1002DCE08];
  latitude = [(FMGeoLocatable *)self->_locationInfo latitude];
  [latitude doubleValue];
  [v3 setLatitude:?];

  longitude = [(FMGeoLocatable *)self->_locationInfo longitude];
  [longitude doubleValue];
  [v3 setLongitude:?];

  horizontalAccuracy = [(FMGeoLocatable *)self->_locationInfo horizontalAccuracy];
  [horizontalAccuracy doubleValue];
  [v3 setHorizontalAccuracy:?];

  verticalAccuracy = [(FMGeoLocatable *)self->_locationInfo verticalAccuracy];
  [verticalAccuracy doubleValue];
  [v3 setVerticalAccuracy:?];

  speed = [(FMGeoLocatable *)self->_locationInfo speed];
  [speed doubleValue];
  [v3 setSpeed:?];

  course = [(FMGeoLocatable *)self->_locationInfo course];
  [course doubleValue];
  [v3 setCourse:?];

  floor = [(FMGeoLocatable *)self->_locationInfo floor];
  [v3 setFloor:floor];

  timestamp = [(FMGeoLocatable *)self->_locationInfo timestamp];
  if (timestamp)
  {
    [v3 setTimestamp:timestamp];
  }

  else
  {
    v12 = +[NSDate date];
    [v3 setTimestamp:v12];
  }

  motionInfo = [(FMDSecureLocationInfo *)self motionInfo];
  [v3 setMotionActivityState:{-[FMDSecureLocationInfo _spMotionStateFrom:](self, "_spMotionStateFrom:", objc_msgSend(motionInfo, "activityState"))}];

  [v3 setPublishReason:{-[FMDSecureLocationInfo _spPublishReasonFrom:](self, "_spPublishReasonFrom:", -[FMDSecureLocationInfo publishReason](self, "publishReason"))}];

  return v3;
}

- (BOOL)isLocationValid
{
  latitude = [(FMGeoLocatable *)self->_locationInfo latitude];
  [latitude doubleValue];
  if (v4 == 0.0)
  {
    longitude = [(FMGeoLocatable *)self->_locationInfo longitude];
    [longitude doubleValue];
    v7 = v6 != 0.0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (int64_t)_spMotionStateFrom:(int64_t)from
{
  if ((from - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return from;
  }
}

- (int64_t)_spPublishReasonFrom:(int64_t)from
{
  if ((from - 1) >= 0xC)
  {
    return 0;
  }

  else
  {
    return from;
  }
}

@end