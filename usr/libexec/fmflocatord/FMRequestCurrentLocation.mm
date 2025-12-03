@interface FMRequestCurrentLocation
+ (id)serializedFormOfLocation:(id)location;
- (BOOL)canReplace:(id)replace;
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
  provider = [(FMRequest *)self provider];
  v3 = [provider formattedURLForTemplate:@"${scheme}://${hostname}/fmipservice/${service}/${dsid}/${udid}/currentLocation"];

  return v3;
}

- (id)requestBody
{
  v18.receiver = self;
  v18.super_class = FMRequestCurrentLocation;
  requestBody = [(FMRequest *)&v18 requestBody];
  [requestBody setObject:&off_100062FA0 forKeyedSubscript:@"statusCode"];
  location = [(FMRequestCurrentLocation *)self location];
  v5 = [FMRequestCurrentLocation serializedFormOfLocation:location];
  [requestBody addEntriesFromDictionary:v5];

  v6 = [NSNumber numberWithBool:[(FMRequestCurrentLocation *)self finalLocation]];
  [requestBody setObject:v6 forKeyedSubscript:@"locationFinished"];

  if ([(FMRequestCurrentLocation *)self publishReason])
  {
    v7 = [NSNumber numberWithInteger:[(FMRequestCurrentLocation *)self publishReason]];
    [requestBody setObject:v7 forKeyedSubscript:@"reason"];
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
      [requestBody setObject:v10 forKeyedSubscript:@"accuracyChange"];
    }
  }

  provider = [(FMRequest *)self provider];
  standardDeviceContext = [provider standardDeviceContext];

  locateCommand = [(FMRequestCurrentLocation *)self locateCommand];
  v14 = [locateCommand objectForKeyedSubscript:@"id"];

  [standardDeviceContext fm_safelyMapKey:@"cmdId" toObject:v14];
  if (standardDeviceContext)
  {
    [requestBody setObject:standardDeviceContext forKeyedSubscript:@"deviceContext"];
  }

  provider2 = [(FMRequest *)self provider];
  locationDeviceInfo = [provider2 locationDeviceInfo];
  [requestBody setObject:locationDeviceInfo forKeyedSubscript:@"deviceInfo"];

  return requestBody;
}

+ (id)serializedFormOfLocation:(id)location
{
  locationCopy = location;
  v4 = +[NSMutableDictionary dictionary];
  timestamp = [locationCopy timestamp];
  stringValueForServer = [timestamp stringValueForServer];

  if (stringValueForServer)
  {
    [v4 setObject:stringValueForServer forKeyedSubscript:@"timestamp"];
  }

  [locationCopy coordinate];
  v7 = [NSNumber numberWithDouble:?];
  [v4 setObject:v7 forKeyedSubscript:@"latitude"];

  [locationCopy coordinate];
  v9 = [NSNumber numberWithDouble:v8];
  [v4 setObject:v9 forKeyedSubscript:@"longitude"];

  [locationCopy horizontalAccuracy];
  v10 = [NSNumber numberWithDouble:?];
  [v4 setObject:v10 forKeyedSubscript:@"horizontalAccuracy"];

  [locationCopy verticalAccuracy];
  v11 = [NSNumber numberWithDouble:?];
  [v4 setObject:v11 forKeyedSubscript:@"vertAcc"];

  [locationCopy altitude];
  v12 = [NSNumber numberWithDouble:?];
  [v4 setObject:v12 forKeyedSubscript:@"alt"];

  [locationCopy speed];
  v13 = [NSNumber numberWithDouble:?];
  [v4 setObject:v13 forKeyedSubscript:@"speed"];

  [locationCopy course];
  v14 = [NSNumber numberWithDouble:?];
  [v4 setObject:v14 forKeyedSubscript:@"course"];

  floor = [locationCopy floor];
  v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [floor level]);
  [v4 setObject:v16 forKeyedSubscript:@"floorLevel"];

  v17 = +[CommonUtil stringForLocationType:](CommonUtil, "stringForLocationType:", [locationCopy type]);
  [v4 setObject:v17 forKeyedSubscript:@"positionType"];

  return v4;
}

- (BOOL)canRequestBeRetriedNow
{
  location = [(FMRequestCurrentLocation *)self location];
  timestamp = [location timestamp];
  locateCommand = [(FMRequestCurrentLocation *)self locateCommand];
  v6 = [locateCommand objectForKeyedSubscript:@"locationValidityDuration"];
  [v6 doubleValue];
  v7 = [timestamp dateByAddingTimeInterval:?];

  v8 = +[NSDate date];
  if ([v8 compare:v7] == 1)
  {
    canRequestBeRetriedNow = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = FMRequestCurrentLocation;
    canRequestBeRetriedNow = [(FMRequest *)&v11 canRequestBeRetriedNow];
  }

  return canRequestBeRetriedNow;
}

- (BOOL)canReplace:(id)replace
{
  replaceCopy = replace;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = replaceCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      delegate = [(FMRequest *)self delegate];
      delegate2 = [v5 delegate];
      v8 = delegate == delegate2;
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