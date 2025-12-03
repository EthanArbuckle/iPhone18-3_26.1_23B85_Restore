@interface CRNightModeFallbackManager
- (BOOL)_isNightForLocation:(id)location;
- (BOOL)_shouldScheduleTimerForNextNightModeChange;
- (CRNightModeFallbackManager)initWithSessionStatus:(id)status;
- (id)_nextNightModeChangeDate;
- (void)_handleLocationUpdateToLocation:(id)location;
- (void)_start;
- (void)_stop;
- (void)_timeDidChangeSignificantly;
- (void)_updateNightMode;
- (void)_updateNightModeForNextSunsetOrSunrise;
- (void)dealloc;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)setNightMode:(BOOL)mode;
@end

@implementation CRNightModeFallbackManager

- (CRNightModeFallbackManager)initWithSessionStatus:(id)status
{
  statusCopy = status;
  v9.receiver = self;
  v9.super_class = CRNightModeFallbackManager;
  v6 = [(CRNightModeFallbackManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionStatus, status);
    [statusCopy addSessionObserver:v7];
  }

  return v7;
}

- (void)setNightMode:(BOOL)mode
{
  p_nightMode = &self->_nightMode;
  if (self->_nightMode != mode)
  {
    modeCopy = mode;
    *p_nightMode = mode;
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10008120C(p_nightMode);
    }

    notify_set_state(self->_nightModeChangeNotificationToken, modeCopy);
    notify_post("com.apple.private.carkit.fallbackNightModeChanged");
  }
}

- (void)dealloc
{
  [(CRNightModeFallbackManager *)self _stop];
  v3.receiver = self;
  v3.super_class = CRNightModeFallbackManager;
  [(CRNightModeFallbackManager *)&v3 dealloc];
}

- (void)sessionDidConnect:(id)connect
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000562C;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056F0;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  lastObject = [locations lastObject];
  [(CRNightModeFallbackManager *)self _handleLocationUpdateToLocation:lastObject];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100081300(errorCopy, v5);
  }
}

- (void)_start
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100081378();
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_10000597C, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  notify_register_check("com.apple.private.carkit.fallbackNightModeChanged", &self->_nightModeChangeNotificationToken);
  state64 = 0;
  notify_get_state(self->_nightModeChangeNotificationToken, &state64);
  self->_nightMode = state64 != 0;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000813AC(&self->_nightMode);
  }

  v6 = objc_alloc_init(GEOAlmanac);
  almanac = self->_almanac;
  self->_almanac = v6;

  v8 = [CLLocationManager alloc];
  v9 = [NSBundle alloc];
  v10 = [NSURL fileURLWithPath:@"/System/Library/LocationBundles/SystemCustomization.bundle"];
  v11 = [v9 initWithURL:v10];
  v12 = [v8 initWithEffectiveBundle:v11 delegate:self onQueue:&_dispatch_main_q];
  locationManager = self->_locationManager;
  self->_locationManager = v12;

  [(CLLocationManager *)self->_locationManager setDesiredAccuracy:kCLLocationAccuracyThreeKilometers];
  [(CLLocationManager *)self->_locationManager startUpdatingLocation];
}

- (void)_stop
{
  [(CRNightModeFallbackManager *)self setAlmanac:0];
  [(CRNightModeFallbackManager *)self setLocationManager:0];
  [(CRNightModeFallbackManager *)self setCurrentLocation:0];
  [(CRNightModeFallbackManager *)self setInitialTimerLocation:0];
  nextNightModeChangeTimer = [(CRNightModeFallbackManager *)self nextNightModeChangeTimer];
  [nextNightModeChangeTimer invalidate];

  [(CRNightModeFallbackManager *)self setNextNightModeChangeTimer:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
  notify_cancel(self->_nightModeChangeNotificationToken);
  self->_nightModeChangeNotificationToken = 0;
}

- (BOOL)_isNightForLocation:(id)location
{
  locationCopy = location;
  almanac = [(CRNightModeFallbackManager *)self almanac];
  [locationCopy coordinate];
  v7 = v6;
  v9 = v8;

  [almanac calculateAstronomicalTimeForLocation:{v7, v9}];
  almanac2 = [(CRNightModeFallbackManager *)self almanac];
  LOBYTE(locationCopy) = [almanac2 isDayLight];

  return locationCopy ^ 1;
}

- (void)_updateNightModeForNextSunsetOrSunrise
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100081438();
  }

  nextNightModeChangeTimer = [(CRNightModeFallbackManager *)self nextNightModeChangeTimer];
  [nextNightModeChangeTimer invalidate];

  [(CRNightModeFallbackManager *)self setNextNightModeChangeTimer:0];
  [(CRNightModeFallbackManager *)self _updateNightMode];
}

- (void)_updateNightMode
{
  currentLocation = [(CRNightModeFallbackManager *)self currentLocation];
  [(CRNightModeFallbackManager *)self setNightMode:[(CRNightModeFallbackManager *)self _isNightForLocation:currentLocation]];

  if ([(CRNightModeFallbackManager *)self _shouldScheduleTimerForNextNightModeChange])
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10008146C();
    }

    nextNightModeChangeTimer = [(CRNightModeFallbackManager *)self nextNightModeChangeTimer];
    [nextNightModeChangeTimer invalidate];

    [(CRNightModeFallbackManager *)self setNextNightModeChangeTimer:0];
    currentLocation2 = [(CRNightModeFallbackManager *)self currentLocation];
    [(CRNightModeFallbackManager *)self setInitialTimerLocation:currentLocation2];

    _nextNightModeChangeDate = [(CRNightModeFallbackManager *)self _nextNightModeChangeDate];
    [_nextNightModeChangeDate timeIntervalSinceNow];
    v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"_updateNightModeForNextSunsetOrSunrise" selector:0 userInfo:0 repeats:?];
    [(CRNightModeFallbackManager *)self setNextNightModeChangeTimer:v8];
  }
}

- (void)_handleLocationUpdateToLocation:(id)location
{
  locationCopy = location;
  [locationCopy horizontalAccuracy];
  if (v5 < 0.0)
  {
    currentLocation = CarGeneralLogging();
    if (os_log_type_enabled(currentLocation, OS_LOG_TYPE_DEBUG))
    {
      sub_100081570();
    }

    goto LABEL_17;
  }

  currentLocation = [(CRNightModeFallbackManager *)self currentLocation];
  v7 = CarGeneralLogging();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (currentLocation)
  {
    if (v8)
    {
      sub_1000814A0();
    }

    [locationCopy distanceFromLocation:currentLocation];
    if (v9 < 3000.0)
    {
      v10 = CarGeneralLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1000814D4();
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (v8)
    {
      sub_100081508();
    }
  }

  v11 = CarGeneralLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10008153C();
  }

  [(CRNightModeFallbackManager *)self setCurrentLocation:locationCopy];
  [(CRNightModeFallbackManager *)self _updateNightMode];
LABEL_17:
}

- (void)_timeDidChangeSignificantly
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000815A4();
  }

  [(CRNightModeFallbackManager *)self setCurrentLocation:0];
  [(CRNightModeFallbackManager *)self setInitialTimerLocation:0];
  nextNightModeChangeTimer = [(CRNightModeFallbackManager *)self nextNightModeChangeTimer];
  [nextNightModeChangeTimer invalidate];

  [(CRNightModeFallbackManager *)self setNextNightModeChangeTimer:0];
}

- (BOOL)_shouldScheduleTimerForNextNightModeChange
{
  currentLocation = [(CRNightModeFallbackManager *)self currentLocation];

  if (!currentLocation)
  {
    return 0;
  }

  nextNightModeChangeTimer = [(CRNightModeFallbackManager *)self nextNightModeChangeTimer];

  if (!nextNightModeChangeTimer)
  {
    return 1;
  }

  initialTimerLocation = [(CRNightModeFallbackManager *)self initialTimerLocation];
  currentLocation2 = [(CRNightModeFallbackManager *)self currentLocation];
  [initialTimerLocation distanceFromLocation:currentLocation2];
  v8 = v7 > 100000.0;

  return v8;
}

- (id)_nextNightModeChangeDate
{
  v3 = +[NSDate date];
  sunset = [(GEOAlmanac *)self->_almanac sunset];
  nextSunset = [(GEOAlmanac *)self->_almanac nextSunset];
  v6 = nextSunset;
  if ([sunset compare:v3] == 1)
  {
    v6 = sunset;
  }

  sunrise = [(GEOAlmanac *)self->_almanac sunrise];
  nextSunrise = [(GEOAlmanac *)self->_almanac nextSunrise];
  v9 = nextSunrise;
  if ([sunrise compare:v3] == 1)
  {
    v9 = sunrise;
  }

  v10 = v6;
  v11 = v10;
  if ([v10 compare:v9] == 1)
  {
    v11 = v9;
  }

  v12 = CarGeneralLogging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [v3 timeIntervalSinceDate:v11];
    v15 = 138413826;
    v16 = v3;
    v17 = 2112;
    v18 = sunset;
    v19 = 2112;
    v20 = nextSunset;
    v21 = 2112;
    v22 = sunrise;
    v23 = 2112;
    v24 = nextSunrise;
    v25 = 2112;
    v26 = v11;
    v27 = 2048;
    v28 = v14;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[NightModeFallback] schedule timer for next sunset or sunrise: now(%@) today's sunset(%@), tmw's sunset(%@), today's sunrise(%@), tmw's sunrise(%@), target(%@), timeInterval=%lf", &v15, 0x48u);
  }

  return v11;
}

@end