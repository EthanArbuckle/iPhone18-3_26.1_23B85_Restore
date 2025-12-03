@interface FMDLocator
- (FMDLocator)initWithLocationManager:(id)manager;
- (void)_processStopTimeout:(id)timeout;
- (void)dealloc;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)startLocator;
- (void)stopLocator;
@end

@implementation FMDLocator

- (void)dealloc
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1002258DC(self, v3);
  }

  locManager = [(FMDLocator *)self locManager];
  [locManager setDelegate:0];

  locManager2 = [(FMDLocator *)self locManager];
  [locManager2 stopUpdatingLocation];

  finishedTimer = [(FMDLocator *)self finishedTimer];
  [finishedTimer invalidate];

  v7.receiver = self;
  v7.super_class = FMDLocator;
  [(FMDLocator *)&v7 dealloc];
}

- (FMDLocator)initWithLocationManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = FMDLocator;
  v6 = [(FMDLocator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_desiredAccuracy = xmmword_1002586A0;
    objc_storeStrong(&v6->_locManager, manager);
    [(FMDLocationManaging *)v7->_locManager setDelegate:v7];
    [(FMDLocationManaging *)v7->_locManager setDesiredAccuracy:v7->_desiredAccuracy];
    [(FMDLocationManaging *)v7->_locManager setDistanceFilter:kCLDistanceFilterNone];
  }

  return v7;
}

- (void)startLocator
{
  if (![(FMDLocator *)self locatorRunning])
  {
    v3 = +[FMDPowerMgr sharedInstance];
    powerAssertionName = [(FMDLocator *)self powerAssertionName];
    [v3 powerAssertionEnableWithReason:powerAssertionName timeout:(self->_duration + 2.0)];

    v5 = +[FMXPCTransactionManager sharedInstance];
    xpcTransactionName = [(FMDLocator *)self xpcTransactionName];
    [v5 beginTransaction:xpcTransactionName];

    [(FMDLocator *)self setLocatorRunning:1];
    self->_launchTime = CFAbsoluteTimeGetCurrent();
    [(FMDLocationManaging *)self->_locManager setDesiredAccuracy:self->_desiredAccuracy];
    v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"_processStopTimeout:" selector:0 userInfo:0 repeats:self->_duration];
    [(FMDLocator *)self setFinishedTimer:v7];

    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [(FMDLocator *)self fm_logID];
      v10 = 138412290;
      v11 = fm_logID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Starting location service now", &v10, 0xCu);
    }

    [(FMDLocationManaging *)self->_locManager startUpdatingLocation];
  }
}

- (void)stopLocator
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMDLocator *)self fm_logID];
    v14 = 138412290;
    v15 = fm_logID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ Stopping location service now", &v14, 0xCu);
  }

  [(FMDLocator *)self setLocatorRunning:0];
  locManager = [(FMDLocator *)self locManager];

  if (locManager)
  {
    locManager2 = [(FMDLocator *)self locManager];
    [locManager2 setDelegate:0];

    locManager3 = [(FMDLocator *)self locManager];
    [locManager3 stopUpdatingLocation];

    [(FMDLocator *)self setLocManager:0];
  }

  finishedTimer = [(FMDLocator *)self finishedTimer];

  if (finishedTimer)
  {
    finishedTimer2 = [(FMDLocator *)self finishedTimer];
    [finishedTimer2 invalidate];

    [(FMDLocator *)self setFinishedTimer:0];
  }

  if (self->_stoppedLocatorBlock)
  {
    dispatch_async(&_dispatch_main_q, self->_stoppedLocatorBlock);
  }

  v10 = +[FMXPCTransactionManager sharedInstance];
  xpcTransactionName = [(FMDLocator *)self xpcTransactionName];
  [v10 endTransaction:xpcTransactionName];

  v12 = +[FMDPowerMgr sharedInstance];
  powerAssertionName = [(FMDLocator *)self powerAssertionName];
  [v12 powerAssertionDisableWithReason:powerAssertionName];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  if ([locationsCopy count])
  {
    locatorPublisher = [(FMDLocator *)self locatorPublisher];

    if (locatorPublisher)
    {
      +[NSMutableArray array];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10015A614;
      v10 = v9[3] = &unk_1002CF030;
      v7 = v10;
      [locationsCopy enumerateObjectsUsingBlock:v9];
      locatorPublisher2 = [(FMDLocator *)self locatorPublisher];
      [locatorPublisher2 updatedLocations:v7];
    }

    else
    {
      v7 = sub_100002880();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1002287F0(v7);
      }
    }
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMDLocator *)self fm_logID];
    v11 = 138412546;
    v12 = fm_logID;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ Location updates failed with error: %@", &v11, 0x16u);
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:kCLErrorDomain])
  {

    goto LABEL_9;
  }

  code = [errorCopy code];

  if (code)
  {
LABEL_9:
    [(FMDLocator *)self stopLocator];
    goto LABEL_10;
  }

  v10 = sub_100002880();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not stopping the locator service because the error is temporary.", &v11, 2u);
  }

LABEL_10:
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [authorizationCopy authorizationStatus];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDLocator: Location Manager auth status %d", v5, 8u);
  }
}

- (void)_processStopTimeout:(id)timeout
{
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMDLocator *)self fm_logID];
    v6 = 138412290;
    v7 = fm_logID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ Location Services ending now after timeout", &v6, 0xCu);
  }

  [(FMDLocator *)self setLocatorRunning:0];
  [(FMDLocator *)self stopLocator];
}

@end