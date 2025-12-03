@interface NSPPrivacyProxyLocationMonitor
+ (id)sharedMonitor;
- (BOOL)checkSignificantLocationChange:(id)change;
- (NSPPrivacyProxyLocationMonitor)init;
- (NSPPrivacyProxyLocationMonitorDelegate)delegate;
- (NSString)currentCountryPlusTimezone;
- (id)geohashFromLocation:(id)location;
- (void)handleLocationUpdate:(id)update;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)refreshCountryPlusTimezone:(id)timezone;
- (void)setMonitorTimeInterval:(double)interval;
- (void)setUserEventAgentTimer;
- (void)start;
- (void)startLocationMonitor;
- (void)stop;
- (void)stopLocationMonitor;
@end

@implementation NSPPrivacyProxyLocationMonitor

+ (id)sharedMonitor
{
  if (qword_1001296D0 != -1)
  {
    dispatch_once(&qword_1001296D0, &stru_1001093D8);
  }

  v3 = qword_1001296C8;

  return v3;
}

- (NSPPrivacyProxyLocationMonitor)init
{
  v14.receiver = self;
  v14.super_class = NSPPrivacyProxyLocationMonitor;
  v2 = [(NSPPrivacyProxyLocationMonitor *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_isMonitoringEnabled = 0;
    locationMonitorTimer = v2->_locationMonitorTimer;
    v2->_locationMonitorTimer = 0;

    objc_setProperty_atomic(v3, v5, 0, 32);
    [(NSPPrivacyProxyLocationMonitor *)v3 setDelegate:0];
    [(NSPPrivacyProxyLocationMonitor *)v3 setMonitorTimeInterval:1800.0];
    v6 = [CLLocationManager alloc];
    v7 = NPGetInternalQueue();
    v8 = [v6 initWithEffectiveBundlePath:@"/System/Library/LocationBundles/NetworkServiceProxy.framework" delegate:v3 onQueue:v7];
    clLocationManager = v3->_clLocationManager;
    v3->_clLocationManager = v8;

    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      isAuthorized = [(NSPPrivacyProxyLocationMonitor *)v3 isAuthorized];
      v12 = "is not";
      if (isAuthorized)
      {
        v12 = "is";
      }

      *buf = 138412546;
      v16 = v3;
      v17 = 2080;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@: networkserviceproxy %s authorized to access location", buf, 0x16u);
    }

    [(CLLocationManager *)v3->_clLocationManager setDesiredAccuracy:kCLLocationAccuracyReduced];
  }

  return v3;
}

- (id)geohashFromLocation:(id)location
{
  if (location)
  {
    locationCopy = location;
    [locationCopy coordinate];
    [locationCopy coordinate];

    v5 = latitudeLongitudeToGeohash();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)refreshCountryPlusTimezone:(id)timezone
{
  timezoneCopy = timezone;
  if (!timezoneCopy)
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v14 = "[NSPPrivacyProxyLocationMonitor refreshCountryPlusTimezone:]";
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s called with null completion", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (self)
  {
    if (!objc_getProperty(self, v4, 40, 1))
    {
      v7 = objc_getProperty(self, v6, 32, 1);
      if (v7)
      {
        v8 = v7;
        v9 = objc_alloc_init(CLGeocoder);
        if (v9)
        {
          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_100003BDC;
          v11[3] = &unk_100109400;
          v11[4] = self;
          v12 = timezoneCopy;
          [v9 reverseGeocodeLocation:v8 completionHandler:v11];
        }

        else
        {
          v10 = nplog_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to initialize geocoder", buf, 2u);
          }

          timezoneCopy[2](timezoneCopy);
        }

LABEL_12:
        goto LABEL_13;
      }
    }
  }

  timezoneCopy[2](timezoneCopy);
LABEL_13:
}

- (NSString)currentCountryPlusTimezone
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
    v2 = vars8;
  }

  return self;
}

- (void)startLocationMonitor
{
  if (self && self->_isMonitoringEnabled && [(NSPPrivacyProxyLocationMonitor *)self isAuthorized]&& !self->_locationMonitorTimer)
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: starting location monitoring", buf, 0xCu);
    }

    [(CLLocationManager *)self->_clLocationManager requestLocation];
    monitorTimeInterval = self->_monitorTimeInterval;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100003F90;
    v7[3] = &unk_100109428;
    v7[4] = self;
    v5 = [NSTimer timerWithTimeInterval:1 repeats:v7 block:monitorTimeInterval];
    objc_storeStrong(&self->_locationMonitorTimer, v5);

    v6 = +[NSRunLoop mainRunLoop];
    [v6 addTimer:self->_locationMonitorTimer forMode:NSDefaultRunLoopMode];

    [(NSPPrivacyProxyLocationMonitor *)self setUserEventAgentTimer];
  }
}

- (void)start
{
  selfCopy = self;
  if (self)
  {
    self->_isMonitoringEnabled = 1;
    self = self->_clLocationManager;
  }

  [(NSPPrivacyProxyLocationMonitor *)self setDelegate:selfCopy];
  objc_opt_self();
  v3 = CFPreferencesCopyAppValue(@"NSPLastGeohash", kCFPreferencesCurrentApplication);
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  [(NSPPrivacyProxyLocationMonitor *)selfCopy setLastGeohash:v4];

  [(NSPPrivacyProxyLocationMonitor *)selfCopy startLocationMonitor];
}

- (void)stopLocationMonitor
{
  if (self && self->_locationMonitorTimer)
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: stopping location monitoring", &v4, 0xCu);
    }

    [(NSTimer *)self->_locationMonitorTimer invalidate];
    sub_10000395C(self, 0);
  }
}

- (void)stop
{
  [(NSPPrivacyProxyLocationMonitor *)self stopLocationMonitor];
  [(NSPPrivacyProxyLocationMonitor *)self setDelegate:0];
  if (self)
  {
    objc_setProperty_atomic(self, v3, 0, 32);
    [(NSPPrivacyProxyLocationMonitor *)self setLastGeohash:0];
    objc_setProperty_atomic(self, v4, 0, 40);
    [(CLLocationManager *)self->_clLocationManager setDelegate:0];
    self->_isMonitoringEnabled = 0;
  }

  else
  {
    [0 setLastGeohash:0];

    [0 setDelegate:0];
  }
}

- (void)setMonitorTimeInterval:(double)interval
{
  if (interval >= 60.0 && interval <= 1800.0)
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412546;
      selfCopy = self;
      v8 = 2048;
      intervalCopy = interval;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@: location monitoring interval changed to %lf", &v6, 0x16u);
    }

    self->_monitorTimeInterval = interval;
    [(NSPPrivacyProxyLocationMonitor *)self stopLocationMonitor];
    [(NSPPrivacyProxyLocationMonitor *)self startLocationMonitor];
  }
}

- (void)setUserEventAgentTimer
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = sub_100001F04;
  v5[4] = sub_1000044CC;
  v6 = os_transaction_create();
  v3 = NPGetInternalQueue();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000044D4;
  v4[3] = &unk_100109450;
  v4[4] = self;
  v4[5] = v5;
  dispatch_async(v3, v4);

  _Block_object_dispose(v5, 8);
}

- (BOOL)checkSignificantLocationChange:(id)change
{
  changeCopy = change;
  v9 = 0;
  if (self)
  {
    lastGeohash = self->_lastGeohash;
    if (lastGeohash)
    {
      v6 = lastGeohash;
      v7 = [changeCopy substringWithRange:{0, 2}];
      v8 = [(NSString *)v6 hasPrefix:v7];

      if (!v8)
      {
        v9 = 1;
      }
    }
  }

  return v9;
}

- (void)handleLocationUpdate:(id)update
{
  updateCopy = update;
  if (self)
  {
    objc_setProperty_atomic(self, v4, updateCopy, 32);
  }

  v6 = [(NSPPrivacyProxyLocationMonitor *)self geohashFromLocation:updateCopy];
  v7 = v6;
  if (v6 && ([v6 isEqualToString:self->_lastGeohash] & 1) == 0)
  {
    delegate = [(NSPPrivacyProxyLocationMonitor *)self delegate];

    if (delegate)
    {
      delegate2 = [(NSPPrivacyProxyLocationMonitor *)self delegate];
      [delegate2 didUpdateGeohash:v7];
    }

    v10 = v7;
    objc_opt_self();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      CFPreferencesSetAppValue(@"NSPLastGeohash", v10, kCFPreferencesCurrentApplication);
      if (!CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication))
      {
        v11 = nplog_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to store Geohash to preferences", buf, 2u);
        }
      }
    }

    v12 = self->_lastGeohash;
    if (!v12 || (v13 = v12, v14 = [(NSPPrivacyProxyLocationMonitor *)self checkSignificantLocationChange:v10], v13, v14))
    {
      v15 = nplog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: location changed significantly", buf, 0xCu);
      }

      objc_setProperty_atomic(self, v16, 0, 40);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100004868;
      v17[3] = &unk_100109478;
      v17[4] = self;
      [(NSPPrivacyProxyLocationMonitor *)self refreshCountryPlusTimezone:v17];
    }

    [(NSPPrivacyProxyLocationMonitor *)self setLastGeohash:v10];
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    isAuthorized = [(NSPPrivacyProxyLocationMonitor *)self isAuthorized];
    v6 = "unauthorized";
    if (isAuthorized)
    {
      v6 = "authorized";
    }

    v7 = 138412546;
    selfCopy = self;
    v9 = 2080;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@: received location authorization status update: [%s]", &v7, 0x16u);
  }

  if ([(NSPPrivacyProxyLocationMonitor *)self isAuthorized])
  {
    [(NSPPrivacyProxyLocationMonitor *)self startLocationMonitor];
  }

  else
  {
    [(NSPPrivacyProxyLocationMonitor *)self stopLocationMonitor];
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v6 = nplog_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [errorCopy description];
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v7;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@: failed with error: %@", &v8, 0x16u);
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@: received location update", &buf, 0xCu);
  }

  if (locationsCopy && [locationsCopy count])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v15 = 0x3032000000;
    v16 = sub_100001F04;
    v17 = sub_1000044CC;
    v18 = os_transaction_create();
    v9 = NPGetInternalQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004C84;
    block[3] = &unk_100109370;
    v11 = locationsCopy;
    selfCopy = self;
    p_buf = &buf;
    dispatch_async(v9, block);

    _Block_object_dispose(&buf, 8);
  }
}

- (NSPPrivacyProxyLocationMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end