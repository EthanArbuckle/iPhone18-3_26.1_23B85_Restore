@interface FMRequestCurrentLocation
+ (id)serializedFormOfLocation:(id)a3;
- (BOOL)canReplace:(id)a3;
- (BOOL)canRequestBeRetriedNow;
- (id)requestBody;
- (id)requestUrl;
- (void)deinitializeRequest;
@end

@implementation FMRequestCurrentLocation

- (void)deinitializeRequest
{
  v3.receiver = self;
  v3.super_class = FMRequestCurrentLocation;
  [(FMRequest *)&v3 deinitializeRequest];
  [(FMRequestCurrentLocation *)self setLocation:0];
  [(FMRequestCurrentLocation *)self setLocateCommand:0];
}

- (id)requestUrl
{
  v2 = [(FMRequest *)self provider];
  v3 = [v2 formattedURLForTemplate:@"${scheme}://${hostname}/fmipservice/${service}/${dsid}/${udid}/currentLocation"];

  return v3;
}

- (id)requestBody
{
  v18.receiver = self;
  v18.super_class = FMRequestCurrentLocation;
  v3 = [(FMRequest *)&v18 requestBody];
  [v3 setObject:&off_100062FA0 forKeyedSubscript:@"statusCode"];
  v4 = [(FMRequestCurrentLocation *)self location];
  v5 = [FMRequestCurrentLocation serializedFormOfLocation:v4];
  [v3 addEntriesFromDictionary:v5];

  v6 = [NSNumber numberWithBool:[(FMRequestCurrentLocation *)self finalLocation]];
  [v3 setObject:v6 forKeyedSubscript:@"locationFinished"];

  if ([(FMRequestCurrentLocation *)self publishReason])
  {
    v7 = [NSNumber numberWithInteger:[(FMRequestCurrentLocation *)self publishReason]];
    [v3 setObject:v7 forKeyedSubscript:@"reason"];
  }

  [(FMRequestCurrentLocation *)self accuracyChange];
  [(FMRequestCurrentLocation *)self accuracyChange];
  if (fabs(v8) != INFINITY)
  {
    [(FMRequestCurrentLocation *)self accuracyChange];
    if (v9 > 0.0)
    {
      [(FMRequestCurrentLocation *)self accuracyChange];
      v10 = [NSNumber numberWithDouble:?];
      [v3 setObject:v10 forKeyedSubscript:@"accuracyChange"];
    }
  }

  v11 = [(FMRequest *)self provider];
  v12 = [v11 standardDeviceContext];

  v13 = [(FMRequestCurrentLocation *)self locateCommand];
  v14 = [v13 objectForKeyedSubscript:@"id"];

  [v12 fm_safelyMapKey:@"cmdId" toObject:v14];
  if (v12)
  {
    [v3 setObject:v12 forKeyedSubscript:@"deviceContext"];
  }

  v15 = [(FMRequest *)self provider];
  v16 = [v15 locationDeviceInfo];
  [v3 setObject:v16 forKeyedSubscript:@"deviceInfo"];

  return v3;
}

+ (id)serializedFormOfLocation:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 timestamp];
  v6 = [v5 stringValueForServer];

  if (v6)
  {
    [v4 setObject:v6 forKeyedSubscript:@"timestamp"];
  }

  [v3 coordinate];
  v7 = [NSNumber numberWithDouble:?];
  [v4 setObject:v7 forKeyedSubscript:@"latitude"];

  [v3 coordinate];
  v9 = [NSNumber numberWithDouble:v8];
  [v4 setObject:v9 forKeyedSubscript:@"longitude"];

  [v3 horizontalAccuracy];
  v10 = [NSNumber numberWithDouble:?];
  [v4 setObject:v10 forKeyedSubscript:@"horizontalAccuracy"];

  [v3 verticalAccuracy];
  v11 = [NSNumber numberWithDouble:?];
  [v4 setObject:v11 forKeyedSubscript:@"vertAcc"];

  [v3 altitude];
  v12 = [NSNumber numberWithDouble:?];
  [v4 setObject:v12 forKeyedSubscript:@"alt"];

  [v3 speed];
  v13 = [NSNumber numberWithDouble:?];
  [v4 setObject:v13 forKeyedSubscript:@"speed"];

  [v3 course];
  v14 = [NSNumber numberWithDouble:?];
  [v4 setObject:v14 forKeyedSubscript:@"course"];

  v15 = [v3 floor];
  v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 level]);
  [v4 setObject:v16 forKeyedSubscript:@"floorLevel"];

  v17 = +[CommonUtil stringForLocationType:](CommonUtil, "stringForLocationType:", [v3 type]);
  [v4 setObject:v17 forKeyedSubscript:@"positionType"];

  return v4;
}

- (BOOL)canRequestBeRetriedNow
{
  v3 = [(FMRequestCurrentLocation *)self location];
  v4 = [v3 timestamp];
  v5 = [(FMRequestCurrentLocation *)self locateCommand];
  v6 = [v5 objectForKeyedSubscript:@"locationValidityDuration"];
  [v6 doubleValue];
  v7 = [v4 dateByAddingTimeInterval:?];

  v8 = +[NSDate date];
  if ([v8 compare:v7] == 1)
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = FMRequestCurrentLocation;
    v9 = [(FMRequest *)&v11 canRequestBeRetriedNow];
  }

  return v9;
}

- (BOOL)canReplace:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(FMRequest *)self delegate];
      v7 = [v5 delegate];
      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end