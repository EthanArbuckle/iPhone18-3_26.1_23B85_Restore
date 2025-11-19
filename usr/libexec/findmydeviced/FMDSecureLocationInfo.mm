@interface FMDSecureLocationInfo
+ (id)stringFromPublishReason:(int64_t)a3;
- (BOOL)isLocationValid;
- (FMDSecureLocationInfo)initWithLocation:(id)a3 motion:(id)a4 publishReason:(int64_t)a5;
- (id)convertToSecureLocationObject;
- (int64_t)_spMotionStateFrom:(int64_t)a3;
- (int64_t)_spPublishReasonFrom:(int64_t)a3;
@end

@implementation FMDSecureLocationInfo

- (FMDSecureLocationInfo)initWithLocation:(id)a3 motion:(id)a4 publishReason:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = FMDSecureLocationInfo;
  v11 = [(FMDSecureLocationInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_locationInfo, a3);
    objc_storeStrong(&v12->_motionInfo, a4);
    v12->_publishReason = a5;
  }

  return v12;
}

+ (id)stringFromPublishReason:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return @"unknown";
  }

  else
  {
    return off_1002D0440[a3 - 1];
  }
}

- (id)convertToSecureLocationObject
{
  v3 = objc_alloc_init(SPSecureLocation);
  [v3 setFindMyId:&stru_1002DCE08];
  v4 = [(FMGeoLocatable *)self->_locationInfo latitude];
  [v4 doubleValue];
  [v3 setLatitude:?];

  v5 = [(FMGeoLocatable *)self->_locationInfo longitude];
  [v5 doubleValue];
  [v3 setLongitude:?];

  v6 = [(FMGeoLocatable *)self->_locationInfo horizontalAccuracy];
  [v6 doubleValue];
  [v3 setHorizontalAccuracy:?];

  v7 = [(FMGeoLocatable *)self->_locationInfo verticalAccuracy];
  [v7 doubleValue];
  [v3 setVerticalAccuracy:?];

  v8 = [(FMGeoLocatable *)self->_locationInfo speed];
  [v8 doubleValue];
  [v3 setSpeed:?];

  v9 = [(FMGeoLocatable *)self->_locationInfo course];
  [v9 doubleValue];
  [v3 setCourse:?];

  v10 = [(FMGeoLocatable *)self->_locationInfo floor];
  [v3 setFloor:v10];

  v11 = [(FMGeoLocatable *)self->_locationInfo timestamp];
  if (v11)
  {
    [v3 setTimestamp:v11];
  }

  else
  {
    v12 = +[NSDate date];
    [v3 setTimestamp:v12];
  }

  v13 = [(FMDSecureLocationInfo *)self motionInfo];
  [v3 setMotionActivityState:{-[FMDSecureLocationInfo _spMotionStateFrom:](self, "_spMotionStateFrom:", objc_msgSend(v13, "activityState"))}];

  [v3 setPublishReason:{-[FMDSecureLocationInfo _spPublishReasonFrom:](self, "_spPublishReasonFrom:", -[FMDSecureLocationInfo publishReason](self, "publishReason"))}];

  return v3;
}

- (BOOL)isLocationValid
{
  v3 = [(FMGeoLocatable *)self->_locationInfo latitude];
  [v3 doubleValue];
  if (v4 == 0.0)
  {
    v5 = [(FMGeoLocatable *)self->_locationInfo longitude];
    [v5 doubleValue];
    v7 = v6 != 0.0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (int64_t)_spMotionStateFrom:(int64_t)a3
{
  if ((a3 - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (int64_t)_spPublishReasonFrom:(int64_t)a3
{
  if ((a3 - 1) >= 0xC)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end