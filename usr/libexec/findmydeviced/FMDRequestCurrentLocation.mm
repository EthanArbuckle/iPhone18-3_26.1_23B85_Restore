@interface FMDRequestCurrentLocation
- (BOOL)canReplace:(id)replace;
- (BOOL)canRequestBeRetriedNow;
- (id)requestBody;
@end

@implementation FMDRequestCurrentLocation

- (id)requestBody
{
  v12.receiver = self;
  v12.super_class = FMDRequestCurrentLocation;
  requestBody = [(FMDRequest *)&v12 requestBody];
  v4 = [NSNumber numberWithInteger:qword_100312B58];
  [requestBody setObject:v4 forKeyedSubscript:@"statusCode"];

  location = [(FMDRequestCurrentLocation *)self location];
  dictionaryValue = [location dictionaryValue];
  [requestBody addEntriesFromDictionary:dictionaryValue];

  v7 = [NSNumber numberWithBool:[(FMDRequestCurrentLocation *)self finalLocation]];
  [requestBody setObject:v7 forKeyedSubscript:@"locationFinished"];

  if ([(FMDRequestCurrentLocation *)self publishReason])
  {
    v8 = [NSNumber numberWithInteger:[(FMDRequestCurrentLocation *)self publishReason]];
    [requestBody setObject:v8 forKeyedSubscript:@"reason"];
  }

  [(FMDRequestCurrentLocation *)self accuracyChange];
  if (v9 != 0.0)
  {
    [(FMDRequestCurrentLocation *)self accuracyChange];
    v10 = [NSNumber numberWithDouble:?];
    [requestBody setObject:v10 forKeyedSubscript:@"accuracyChange"];
  }

  return requestBody;
}

- (BOOL)canRequestBeRetriedNow
{
  location = [(FMDRequestCurrentLocation *)self location];
  timeStamp = [location timeStamp];
  [(FMDRequestCurrentLocation *)self cacheValidityDuration];
  v5 = [timeStamp dateByAddingTimeInterval:?];

  v6 = +[NSDate date];
  if ([v6 compare:v5] == 1)
  {
    canRequestBeRetriedNow = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = FMDRequestCurrentLocation;
    canRequestBeRetriedNow = [(FMDRequest *)&v9 canRequestBeRetriedNow];
  }

  return canRequestBeRetriedNow;
}

- (BOOL)canReplace:(id)replace
{
  replaceCopy = replace;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end