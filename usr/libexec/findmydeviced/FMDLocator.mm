@interface FMDLocator
- (FMDLocator)initWithLocationManager:(id)a3;
- (void)_processStopTimeout:(id)a3;
- (void)dealloc;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
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

  v4 = [(FMDLocator *)self locManager];
  [v4 setDelegate:0];

  v5 = [(FMDLocator *)self locManager];
  [v5 stopUpdatingLocation];

  v6 = [(FMDLocator *)self finishedTimer];
  [v6 invalidate];

  v7.receiver = self;
  v7.super_class = FMDLocator;
  [(FMDLocator *)&v7 dealloc];
}

- (FMDLocator)initWithLocationManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FMDLocator;
  v6 = [(FMDLocator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_desiredAccuracy = xmmword_1002586A0;
    objc_storeStrong(&v6->_locManager, a3);
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
    v4 = [(FMDLocator *)self powerAssertionName];
    [v3 powerAssertionEnableWithReason:v4 timeout:(self->_duration + 2.0)];

    v5 = +[FMXPCTransactionManager sharedInstance];
    v6 = [(FMDLocator *)self xpcTransactionName];
    [v5 beginTransaction:v6];

    [(FMDLocator *)self setLocatorRunning:1];
    self->_launchTime = CFAbsoluteTimeGetCurrent();
    [(FMDLocationManaging *)self->_locManager setDesiredAccuracy:self->_desiredAccuracy];
    v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"_processStopTimeout:" selector:0 userInfo:0 repeats:self->_duration];
    [(FMDLocator *)self setFinishedTimer:v7];

    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(FMDLocator *)self fm_logID];
      v10 = 138412290;
      v11 = v9;
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
    v4 = [(FMDLocator *)self fm_logID];
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ Stopping location service now", &v14, 0xCu);
  }

  [(FMDLocator *)self setLocatorRunning:0];
  v5 = [(FMDLocator *)self locManager];

  if (v5)
  {
    v6 = [(FMDLocator *)self locManager];
    [v6 setDelegate:0];

    v7 = [(FMDLocator *)self locManager];
    [v7 stopUpdatingLocation];

    [(FMDLocator *)self setLocManager:0];
  }

  v8 = [(FMDLocator *)self finishedTimer];

  if (v8)
  {
    v9 = [(FMDLocator *)self finishedTimer];
    [v9 invalidate];

    [(FMDLocator *)self setFinishedTimer:0];
  }

  if (self->_stoppedLocatorBlock)
  {
    dispatch_async(&_dispatch_main_q, self->_stoppedLocatorBlock);
  }

  v10 = +[FMXPCTransactionManager sharedInstance];
  v11 = [(FMDLocator *)self xpcTransactionName];
  [v10 endTransaction:v11];

  v12 = +[FMDPowerMgr sharedInstance];
  v13 = [(FMDLocator *)self powerAssertionName];
  [v12 powerAssertionDisableWithReason:v13];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v5 = a4;
  if ([v5 count])
  {
    v6 = [(FMDLocator *)self locatorPublisher];

    if (v6)
    {
      +[NSMutableArray array];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10015A614;
      v10 = v9[3] = &unk_1002CF030;
      v7 = v10;
      [v5 enumerateObjectsUsingBlock:v9];
      v8 = [(FMDLocator *)self locatorPublisher];
      [v8 updatedLocations:v7];
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

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(FMDLocator *)self fm_logID];
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ Location updates failed with error: %@", &v11, 0x16u);
  }

  v8 = [v5 domain];
  if (![v8 isEqualToString:kCLErrorDomain])
  {

    goto LABEL_9;
  }

  v9 = [v5 code];

  if (v9)
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

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v3 = a3;
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [v3 authorizationStatus];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDLocator: Location Manager auth status %d", v5, 8u);
  }
}

- (void)_processStopTimeout:(id)a3
{
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(FMDLocator *)self fm_logID];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ Location Services ending now after timeout", &v6, 0xCu);
  }

  [(FMDLocator *)self setLocatorRunning:0];
  [(FMDLocator *)self stopLocator];
}

@end