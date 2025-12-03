@interface FMDBluetoothDiscoveryCoordinator
- (FMDBluetoothDiscoveryCoordinator)initWithDiscovery:(id)discovery;
- (id)newDiscovery;
- (void)didEndDiscoveryWithError:(id)error;
- (void)discoveryRequestedStart:(id)start;
- (void)discoveryRequestedStop:(id)stop;
- (void)scanningTimerFired;
- (void)startDiscoveryTimerWithDuration:(double)duration;
- (void)updateDiscovery;
@end

@implementation FMDBluetoothDiscoveryCoordinator

- (FMDBluetoothDiscoveryCoordinator)initWithDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  v17.receiver = self;
  v17.super_class = FMDBluetoothDiscoveryCoordinator;
  v5 = [(FMDBluetoothDiscoveryCoordinator *)&v17 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("FMDBluetoothDiscoveryCoordinatorQueue", v6);
    [(FMDBluetoothDiscoveryCoordinator *)v5 setSerialQueue:v7];

    v8 = +[NSMutableArray array];
    [(FMDBluetoothDiscoveryCoordinator *)v5 setActiveTokens:v8];

    [(FMDBluetoothDiscoveryCoordinator *)v5 setDiscovery:discoveryCopy];
    objc_initWeak(&location, v5);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001C4678;
    v14[3] = &unk_1002CFD38;
    objc_copyWeak(&v15, &location);
    [discoveryCopy setDidDiscoverDevice:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001C46F4;
    v12[3] = &unk_1002CFD38;
    objc_copyWeak(&v13, &location);
    [discoveryCopy setDidLoseDevice:v12];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001C4770;
    v10[3] = &unk_1002CFD60;
    objc_copyWeak(&v11, &location);
    [discoveryCopy setDidEndDiscovery:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (id)newDiscovery
{
  v3 = objc_alloc_init(FMDBluetoothDiscoveryToken);
  [(FMDBluetoothDiscoveryToken *)v3 setDelegate:self];
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscoveryCoordinator generating token %@", &v6, 0xCu);
  }

  return v3;
}

- (void)discoveryRequestedStop:(id)stop
{
  stopCopy = stop;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = stopCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscoveryCoordinator discoveryRequestedStop %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  serialQueue = [(FMDBluetoothDiscoveryCoordinator *)self serialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C4A04;
  v8[3] = &unk_1002CD288;
  objc_copyWeak(&v10, buf);
  v9 = stopCopy;
  v7 = stopCopy;
  dispatch_async(serialQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)discoveryRequestedStart:(id)start
{
  startCopy = start;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = startCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscoveryCoordinator discoveryRequestedStart %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  serialQueue = [(FMDBluetoothDiscoveryCoordinator *)self serialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C4C44;
  v8[3] = &unk_1002CD288;
  objc_copyWeak(&v10, buf);
  v9 = startCopy;
  v7 = startCopy;
  dispatch_async(serialQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)didEndDiscoveryWithError:(id)error
{
  errorCopy = error;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscoveryCoordinator discoveryEnded - clearing tokens", buf, 2u);
  }

  objc_initWeak(buf, self);
  serialQueue = [(FMDBluetoothDiscoveryCoordinator *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C4E24;
  block[3] = &unk_1002CD518;
  objc_copyWeak(&v10, buf);
  dispatch_async(serialQueue, block);

  [(FMDBluetoothDiscoveryCoordinator *)self setIsDiscoveryActive:0];
  didEndDiscovery = [(FMDBluetoothDiscoveryCoordinator *)self didEndDiscovery];

  if (didEndDiscovery)
  {
    didEndDiscovery2 = [(FMDBluetoothDiscoveryCoordinator *)self didEndDiscovery];
    (didEndDiscovery2)[2](didEndDiscovery2, errorCopy);
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)startDiscoveryTimerWithDuration:(double)duration
{
  discoveryTimer = [(FMDBluetoothDiscoveryCoordinator *)self discoveryTimer];
  [discoveryTimer cancel];

  v6 = [NSDate dateWithTimeIntervalSinceNow:duration];
  [(FMDBluetoothDiscoveryCoordinator *)self setDiscoveryEndDate:v6];

  objc_initWeak(&location, self);
  v7 = [FMDDispatchTimer alloc];
  v8 = &_dispatch_main_q;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1001C5094;
  v14 = &unk_1002CD518;
  objc_copyWeak(&v15, &location);
  v9 = [(FMDDispatchTimer *)v7 initWithQueue:&_dispatch_main_q timeout:&v11 completion:duration];
  [(FMDBluetoothDiscoveryCoordinator *)self setDiscoveryTimer:v9, v11, v12, v13, v14];

  discoveryTimer2 = [(FMDBluetoothDiscoveryCoordinator *)self discoveryTimer];
  [discoveryTimer2 start];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)scanningTimerFired
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10022DF64(v3);
  }

  objc_initWeak(&location, self);
  serialQueue = [(FMDBluetoothDiscoveryCoordinator *)self serialQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001C51C4;
  v5[3] = &unk_1002CD518;
  objc_copyWeak(&v6, &location);
  dispatch_async(serialQueue, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)updateDiscovery
{
  activeTokens = [(FMDBluetoothDiscoveryCoordinator *)self activeTokens];
  v4 = [activeTokens count];

  if (v4)
  {
    activeTokens2 = [(FMDBluetoothDiscoveryCoordinator *)self activeTokens];
    v6 = [activeTokens2 sortedArrayUsingComparator:&stru_1002D0EC8];

    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = *&v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscoveryCoordinator active tokens %@", &v24, 0xCu);
    }

    firstObject = [v6 firstObject];
    discoveryEndDate = [(FMDBluetoothDiscoveryCoordinator *)self discoveryEndDate];
    [discoveryEndDate timeIntervalSinceNow];
    v11 = v10;
    endDate = [firstObject endDate];
    [endDate timeIntervalSinceNow];
    v14 = v13;

    v15 = sub_100002880();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = *&firstObject;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscoveryCoordinator updating discovery with token %@", &v24, 0xCu);
    }

    if (v14 < 0.0 || v14 > 600.0)
    {
      v22 = sub_100002880();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = *&firstObject;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscoveryCoordinator discovery expired, stopping discovery %@", &v24, 0xCu);
      }

      [(FMDBluetoothDiscoveryCoordinator *)self discoveryRequestedStop:firstObject];
    }

    else if (v14 <= v11)
    {
      v23 = sub_100002880();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 134217984;
        v25 = v11;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscoveryCoordinator discovery already running %f", &v24, 0xCu);
      }
    }

    else
    {
      if (![(FMDBluetoothDiscoveryCoordinator *)self isDiscoveryActive])
      {
        didStartDiscovery = [(FMDBluetoothDiscoveryCoordinator *)self didStartDiscovery];

        if (didStartDiscovery)
        {
          didStartDiscovery2 = [(FMDBluetoothDiscoveryCoordinator *)self didStartDiscovery];
          didStartDiscovery2[2]();
        }
      }

      v18 = sub_100002880();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 134217984;
        v25 = v14;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscoveryCoordinator discovery will run %f", &v24, 0xCu);
      }

      [(FMDBluetoothDiscoveryCoordinator *)self startDiscoveryTimerWithDuration:v14];
      discovery = [(FMDBluetoothDiscoveryCoordinator *)self discovery];
      [discovery startDiscovery];

      [(FMDBluetoothDiscoveryCoordinator *)self setIsDiscoveryActive:1];
    }
  }

  else
  {
    v20 = sub_100002880();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10022DFA8(v20);
    }

    discovery2 = [(FMDBluetoothDiscoveryCoordinator *)self discovery];
    [discovery2 stopDiscovery];

    [(FMDBluetoothDiscoveryCoordinator *)self setIsDiscoveryActive:0];
  }
}

@end