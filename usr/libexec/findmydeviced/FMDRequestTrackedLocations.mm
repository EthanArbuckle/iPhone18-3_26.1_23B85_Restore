@interface FMDRequestTrackedLocations
- (BOOL)canReplace:(id)replace;
- (BOOL)canRequestBeRetriedNow;
- (FMDLocationTracker)locationTracker;
- (FMDRequestTrackedLocations)initWithAccount:(id)account currentLocation:(id)location trackedLocations:(id)locations locationTracker:(id)tracker;
- (id)requestBody;
@end

@implementation FMDRequestTrackedLocations

- (FMDRequestTrackedLocations)initWithAccount:(id)account currentLocation:(id)location trackedLocations:(id)locations locationTracker:(id)tracker
{
  accountCopy = account;
  locationCopy = location;
  locationsCopy = locations;
  trackerCopy = tracker;
  v17.receiver = self;
  v17.super_class = FMDRequestTrackedLocations;
  v14 = [(FMDRequest *)&v17 initWithAccount:accountCopy];
  v15 = v14;
  if (v14)
  {
    [(FMDRequestTrackedLocations *)v14 setAccount:accountCopy];
    [(FMDRequestTrackedLocations *)v15 setCurrentLocation:locationCopy];
    [(FMDRequestTrackedLocations *)v15 setTrackedLocations:locationsCopy];
    [(FMDRequestTrackedLocations *)v15 setLocationTracker:trackerCopy];
  }

  return v15;
}

- (id)requestBody
{
  v9.receiver = self;
  v9.super_class = FMDRequestTrackedLocations;
  requestBody = [(FMDRequest *)&v9 requestBody];
  trackedLocations = [(FMDRequestTrackedLocations *)self trackedLocations];
  [requestBody fm_safelyMapKey:@"trackedLocations" toObject:trackedLocations];

  currentLocation = [(FMDRequestTrackedLocations *)self currentLocation];

  if (currentLocation)
  {
    currentLocation2 = [(FMDRequestTrackedLocations *)self currentLocation];
    dictionaryValue = [currentLocation2 dictionaryValue];

    [requestBody setObject:dictionaryValue forKeyedSubscript:@"currentLocation"];
  }

  return requestBody;
}

- (BOOL)canRequestBeRetriedNow
{
  locationTracker = [(FMDRequestTrackedLocations *)self locationTracker];
  isTrackingOn = [locationTracker isTrackingOn];

  if (!isTrackingOn)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = FMDRequestTrackedLocations;
  return [(FMDRequest *)&v6 canRequestBeRetriedNow];
}

- (BOOL)canReplace:(id)replace
{
  replaceCopy = replace;
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