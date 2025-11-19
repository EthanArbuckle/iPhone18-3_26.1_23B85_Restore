@interface CLLocation
- (CLLocation)initWithRTLocation:(id)a3;
@end

@implementation CLLocation

- (CLLocation)initWithRTLocation:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [v5 latitude];
    v8 = v7;
    [v6 longitude];
    v10 = CLLocationCoordinate2DMake(v8, v9);
    [v6 horizontalUncertainty];
    v12 = v11;
    v13 = [v6 date];
    self = [(CLLocation *)self initWithCoordinate:v13 altitude:v10.latitude horizontalAccuracy:v10.longitude verticalAccuracy:0.0 timestamp:v12, -1.0];

    v14 = self;
  }

  else
  {
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CLLocation(RTExtensions) initWithRTLocation:v15];
    }

    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"CLLocation+MOExtensions.m" lineNumber:20 description:@"Invalid parameter not satisfying: location"];

    v14 = 0;
  }

  return v14;
}

@end