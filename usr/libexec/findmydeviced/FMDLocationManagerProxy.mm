@interface FMDLocationManagerProxy
- (CLLocationManagerDelegate)delegate;
- (FMDLocationManagerProxy)initWithLocationManager:(id)a3;
- (FMDLocationManaging)locationManager;
- (double)desiredAccuracy;
- (double)distanceFilter;
- (void)dealloc;
- (void)setDelegate:(id)a3;
- (void)setDesiredAccuracy:(double)a3;
- (void)setDistanceFilter:(double)a3;
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

- (FMDLocationManagerProxy)initWithLocationManager:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FMDLocationManagerProxy;
  v5 = [(FMDLocationManagerProxy *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(FMDLocationManagerProxy *)v5 setLocationManager:v4];
    v7 = [[FMWeakWrapper alloc] initWithObject:v4];
    [(FMDLocationManagerProxy *)v6 setLocationManagerWeakWrapper:v7];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(FMDLocationManagerProxy *)self proxyDeallocationBlock];

  if (v3)
  {
    v4 = [(FMDLocationManagerProxy *)self proxyDeallocationBlock];
    v5 = [(FMDLocationManagerProxy *)self locationManagerWeakWrapper];
    (v4)[2](v4, v5);
  }

  v6.receiver = self;
  v6.super_class = FMDLocationManagerProxy;
  [(FMDLocationManagerProxy *)&v6 dealloc];
}

- (void)startUpdatingLocation
{
  v2 = [(FMDLocationManagerProxy *)self locationManager];
  [v2 startUpdatingLocation];
}

- (void)stopUpdatingLocation
{
  v2 = [(FMDLocationManagerProxy *)self locationManager];
  [v2 stopUpdatingLocation];
}

- (void)startMonitoringSignificantLocationChanges
{
  v2 = [(FMDLocationManagerProxy *)self locationManager];
  [v2 startMonitoringSignificantLocationChanges];
}

- (void)stopMonitoringSignificantLocationChanges
{
  v2 = [(FMDLocationManagerProxy *)self locationManager];
  [v2 stopMonitoringSignificantLocationChanges];
}

- (double)desiredAccuracy
{
  v2 = [(FMDLocationManagerProxy *)self locationManager];
  [v2 desiredAccuracy];
  v4 = v3;

  return v4;
}

- (double)distanceFilter
{
  v2 = [(FMDLocationManagerProxy *)self locationManager];
  [v2 distanceFilter];
  v4 = v3;

  return v4;
}

- (void)setDistanceFilter:(double)a3
{
  v4 = [(FMDLocationManagerProxy *)self locationManager];
  [v4 setDistanceFilter:a3];
}

- (void)setDesiredAccuracy:(double)a3
{
  v4 = [(FMDLocationManagerProxy *)self locationManager];
  [v4 setDesiredAccuracy:a3];
}

- (CLLocationManagerDelegate)delegate
{
  v2 = [(FMDLocationManagerProxy *)self locationManager];
  v3 = [v2 delegate];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(FMDLocationManagerProxy *)self locationManager];
  [v5 setDelegate:v4];
}

@end