@interface FMDRequestTrackedLocations
- (BOOL)canReplace:(id)a3;
- (BOOL)canRequestBeRetriedNow;
- (FMDLocationTracker)locationTracker;
- (FMDRequestTrackedLocations)initWithAccount:(id)a3 currentLocation:(id)a4 trackedLocations:(id)a5 locationTracker:(id)a6;
- (id)requestBody;
@end

@implementation FMDRequestTrackedLocations

- (FMDRequestTrackedLocations)initWithAccount:(id)a3 currentLocation:(id)a4 trackedLocations:(id)a5 locationTracker:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = FMDRequestTrackedLocations;
  v14 = [(FMDRequest *)&v17 initWithAccount:v10];
  v15 = v14;
  if (v14)
  {
    [(FMDRequestTrackedLocations *)v14 setAccount:v10];
    [(FMDRequestTrackedLocations *)v15 setCurrentLocation:v11];
    [(FMDRequestTrackedLocations *)v15 setTrackedLocations:v12];
    [(FMDRequestTrackedLocations *)v15 setLocationTracker:v13];
  }

  return v15;
}

- (id)requestBody
{
  v9.receiver = self;
  v9.super_class = FMDRequestTrackedLocations;
  v3 = [(FMDRequest *)&v9 requestBody];
  v4 = [(FMDRequestTrackedLocations *)self trackedLocations];
  [v3 fm_safelyMapKey:@"trackedLocations" toObject:v4];

  v5 = [(FMDRequestTrackedLocations *)self currentLocation];

  if (v5)
  {
    v6 = [(FMDRequestTrackedLocations *)self currentLocation];
    v7 = [v6 dictionaryValue];

    [v3 setObject:v7 forKeyedSubscript:@"currentLocation"];
  }

  return v3;
}

- (BOOL)canRequestBeRetriedNow
{
  v3 = [(FMDRequestTrackedLocations *)self locationTracker];
  v4 = [v3 isTrackingOn];

  if (!v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = FMDRequestTrackedLocations;
  return [(FMDRequest *)&v6 canRequestBeRetriedNow];
}

- (BOOL)canReplace:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (FMDLocationTracker)locationTracker
{
  WeakRetained = objc_loadWeakRetained(&self->_locationTracker);

  return WeakRetained;
}

@end