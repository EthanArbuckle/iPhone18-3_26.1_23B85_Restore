@interface FMDRequestCurrentLocation
- (BOOL)canReplace:(id)a3;
- (BOOL)canRequestBeRetriedNow;
- (id)requestBody;
@end

@implementation FMDRequestCurrentLocation

- (id)requestBody
{
  v12.receiver = self;
  v12.super_class = FMDRequestCurrentLocation;
  v3 = [(FMDRequest *)&v12 requestBody];
  v4 = [NSNumber numberWithInteger:qword_100312B58];
  [v3 setObject:v4 forKeyedSubscript:@"statusCode"];

  v5 = [(FMDRequestCurrentLocation *)self location];
  v6 = [v5 dictionaryValue];
  [v3 addEntriesFromDictionary:v6];

  v7 = [NSNumber numberWithBool:[(FMDRequestCurrentLocation *)self finalLocation]];
  [v3 setObject:v7 forKeyedSubscript:@"locationFinished"];

  if ([(FMDRequestCurrentLocation *)self publishReason])
  {
    v8 = [NSNumber numberWithInteger:[(FMDRequestCurrentLocation *)self publishReason]];
    [v3 setObject:v8 forKeyedSubscript:@"reason"];
  }

  [(FMDRequestCurrentLocation *)self accuracyChange];
  if (v9 != 0.0)
  {
    [(FMDRequestCurrentLocation *)self accuracyChange];
    v10 = [NSNumber numberWithDouble:?];
    [v3 setObject:v10 forKeyedSubscript:@"accuracyChange"];
  }

  return v3;
}

- (BOOL)canRequestBeRetriedNow
{
  v3 = [(FMDRequestCurrentLocation *)self location];
  v4 = [v3 timeStamp];
  [(FMDRequestCurrentLocation *)self cacheValidityDuration];
  v5 = [v4 dateByAddingTimeInterval:?];

  v6 = +[NSDate date];
  if ([v6 compare:v5] == 1)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = FMDRequestCurrentLocation;
    v7 = [(FMDRequest *)&v9 canRequestBeRetriedNow];
  }

  return v7;
}

- (BOOL)canReplace:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end