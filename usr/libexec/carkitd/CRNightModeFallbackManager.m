@interface CRNightModeFallbackManager
- (BOOL)_isNightForLocation:(id)a3;
- (BOOL)_shouldScheduleTimerForNextNightModeChange;
- (CRNightModeFallbackManager)initWithSessionStatus:(id)a3;
- (id)_nextNightModeChangeDate;
- (void)_handleLocationUpdateToLocation:(id)a3;
- (void)_start;
- (void)_stop;
- (void)_timeDidChangeSignificantly;
- (void)_updateNightMode;
- (void)_updateNightModeForNextSunsetOrSunrise;
- (void)dealloc;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)setNightMode:(BOOL)a3;
@end

@implementation CRNightModeFallbackManager

- (CRNightModeFallbackManager)initWithSessionStatus:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRNightModeFallbackManager;
  v6 = [(CRNightModeFallbackManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionStatus, a3);
    [v5 addSessionObserver:v7];
  }

  return v7;
}

- (void)setNightMode:(BOOL)a3
{
  p_nightMode = &self->_nightMode;
  if (self->_nightMode != a3)
  {
    v4 = a3;
    *p_nightMode = a3;
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10008120C(p_nightMode);
    }

    notify_set_state(self->_nightModeChangeNotificationToken, v4);
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

- (void)sessionDidConnect:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000562C;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sessionDidDisconnect:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056F0;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v5 = [a4 lastObject];
  [(CRNightModeFallbackManager *)self _handleLocationUpdateToLocation:v5];
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v4 = a4;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100081300(v4, v5);
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
  v3 = [(CRNightModeFallbackManager *)self nextNightModeChangeTimer];
  [v3 invalidate];

  [(CRNightModeFallbackManager *)self setNextNightModeChangeTimer:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
  notify_cancel(self->_nightModeChangeNotificationToken);
  self->_nightModeChangeNotificationToken = 0;
}

- (BOOL)_isNightForLocation:(id)a3
{
  v4 = a3;
  v5 = [(CRNightModeFallbackManager *)self almanac];
  [v4 coordinate];
  v7 = v6;
  v9 = v8;

  [v5 calculateAstronomicalTimeForLocation:{v7, v9}];
  v10 = [(CRNightModeFallbackManager *)self almanac];
  LOBYTE(v4) = [v10 isDayLight];

  return v4 ^ 1;
}

- (void)_updateNightModeForNextSunsetOrSunrise
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100081438();
  }

  v4 = [(CRNightModeFallbackManager *)self nextNightModeChangeTimer];
  [v4 invalidate];

  [(CRNightModeFallbackManager *)self setNextNightModeChangeTimer:0];
  [(CRNightModeFallbackManager *)self _updateNightMode];
}

- (void)_updateNightMode
{
  v3 = [(CRNightModeFallbackManager *)self currentLocation];
  [(CRNightModeFallbackManager *)self setNightMode:[(CRNightModeFallbackManager *)self _isNightForLocation:v3]];

  if ([(CRNightModeFallbackManager *)self _shouldScheduleTimerForNextNightModeChange])
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10008146C();
    }

    v5 = [(CRNightModeFallbackManager *)self nextNightModeChangeTimer];
    [v5 invalidate];

    [(CRNightModeFallbackManager *)self setNextNightModeChangeTimer:0];
    v6 = [(CRNightModeFallbackManager *)self currentLocation];
    [(CRNightModeFallbackManager *)self setInitialTimerLocation:v6];

    v7 = [(CRNightModeFallbackManager *)self _nextNightModeChangeDate];
    [v7 timeIntervalSinceNow];
    v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"_updateNightModeForNextSunsetOrSunrise" selector:0 userInfo:0 repeats:?];
    [(CRNightModeFallbackManager *)self setNextNightModeChangeTimer:v8];
  }
}

- (void)_handleLocationUpdateToLocation:(id)a3
{
  v4 = a3;
  [v4 horizontalAccuracy];
  if (v5 < 0.0)
  {
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100081570();
    }

    goto LABEL_17;
  }

  v6 = [(CRNightModeFallbackManager *)self currentLocation];
  v7 = CarGeneralLogging();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      sub_1000814A0();
    }

    [v4 distanceFromLocation:v6];
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

  [(CRNightModeFallbackManager *)self setCurrentLocation:v4];
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
  v4 = [(CRNightModeFallbackManager *)self nextNightModeChangeTimer];
  [v4 invalidate];

  [(CRNightModeFallbackManager *)self setNextNightModeChangeTimer:0];
}

- (BOOL)_shouldScheduleTimerForNextNightModeChange
{
  v3 = [(CRNightModeFallbackManager *)self currentLocation];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CRNightModeFallbackManager *)self nextNightModeChangeTimer];

  if (!v4)
  {
    return 1;
  }

  v5 = [(CRNightModeFallbackManager *)self initialTimerLocation];
  v6 = [(CRNightModeFallbackManager *)self currentLocation];
  [v5 distanceFromLocation:v6];
  v8 = v7 > 100000.0;

  return v8;
}

- (id)_nextNightModeChangeDate
{
  v3 = +[NSDate date];
  v4 = [(GEOAlmanac *)self->_almanac sunset];
  v5 = [(GEOAlmanac *)self->_almanac nextSunset];
  v6 = v5;
  if ([v4 compare:v3] == 1)
  {
    v6 = v4;
  }

  v7 = [(GEOAlmanac *)self->_almanac sunrise];
  v8 = [(GEOAlmanac *)self->_almanac nextSunrise];
  v9 = v8;
  if ([v7 compare:v3] == 1)
  {
    v9 = v7;
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
    v18 = v4;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v11;
    v27 = 2048;
    v28 = v14;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[NightModeFallback] schedule timer for next sunset or sunrise: now(%@) today's sunset(%@), tmw's sunset(%@), today's sunrise(%@), tmw's sunrise(%@), target(%@), timeInterval=%lf", &v15, 0x48u);
  }

  return v11;
}

@end