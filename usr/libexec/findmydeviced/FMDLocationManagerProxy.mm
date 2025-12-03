@interface FMDLocationManagerProxy
- (CLLocationManagerDelegate)delegate;
- (FMDLocationManagerProxy)initWithLocationManager:(id)manager;
- (FMDLocationManaging)locationManager;
- (double)desiredAccuracy;
- (double)distanceFilter;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
- (void)setDesiredAccuracy:(double)accuracy;
- (void)setDistanceFilter:(double)filter;
- (void)startMonitoringSignificantLocationChanges;
- (void)startUpdatingLocation;
- (void)stopMonitoringSignificantLocationChanges;
- (void)stopUpdatingLocation;
@end

@implementation FMDLocationManagerProxy

- (FMDLocationManaging)locationManager
{
  WeakRetained = objc_loadWeakRetained(&self->_locationManager);

  return WeakRetained;
}

- (FMDLocationManagerProxy)initWithLocationManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = FMDLocationManagerProxy;
  v5 = [(FMDLocationManagerProxy *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(FMDLocationManagerProxy *)v5 setLocationManager:managerCopy];
    v7 = [[FMWeakWrapper alloc] initWithObject:managerCopy];
    [(FMDLocationManagerProxy *)v6 setLocationManagerWeakWrapper:v7];
  }

  return v6;
}

- (void)dealloc
{
  proxyDeallocationBlock = [(FMDLocationManagerProxy *)self proxyDeallocationBlock];

  if (proxyDeallocationBlock)
  {
    proxyDeallocationBlock2 = [(FMDLocationManagerProxy *)self proxyDeallocationBlock];
    locationManagerWeakWrapper = [(FMDLocationManagerProxy *)self locationManagerWeakWrapper];
    (proxyDeallocationBlock2)[2](proxyDeallocationBlock2, locationManagerWeakWrapper);
  }

  v6.receiver = self;
  v6.super_class = FMDLocationManagerProxy;
  [(FMDLocationManagerProxy *)&v6 dealloc];
}

- (void)startUpdatingLocation
{
  locationManager = [(FMDLocationManagerProxy *)self locationManager];
  [locationManager startUpdatingLocation];
}

- (void)stopUpdatingLocation
{
  locationManager = [(FMDLocationManagerProxy *)self locationManager];
  [locationManager stopUpdatingLocation];
}

- (void)startMonitoringSignificantLocationChanges
{
  locationManager = [(FMDLocationManagerProxy *)self locationManager];
  [locationManager startMonitoringSignificantLocationChanges];
}

- (void)stopMonitoringSignificantLocationChanges
{
  locationManager = [(FMDLocationManagerProxy *)self locationManager];
  [locationManager stopMonitoringSignificantLocationChanges];
}

- (double)desiredAccuracy
{
  locationManager = [(FMDLocationManagerProxy *)self locationManager];
  [locationManager desiredAccuracy];
  v4 = v3;

  return v4;
}

- (double)distanceFilter
{
  locationManager = [(FMDLocationManagerProxy *)self locationManager];
  [locationManager distanceFilter];
  v4 = v3;

  return v4;
}

- (void)setDistanceFilter:(double)filter
{
  locationManager = [(FMDLocationManagerProxy *)self locationManager];
  [locationManager setDistanceFilter:filter];
}

- (void)setDesiredAccuracy:(double)accuracy
{
  locationManager = [(FMDLocationManagerProxy *)self locationManager];
  [locationManager setDesiredAccuracy:accuracy];
}

- (CLLocationManagerDelegate)delegate
{
  locationManager = [(FMDLocationManagerProxy *)self locationManager];
  delegate = [locationManager delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  locationManager = [(FMDLocationManagerProxy *)self locationManager];
  [locationManager setDelegate:delegateCopy];
}

@end