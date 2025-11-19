@interface FMDBluetoothDiscoveryCoordinator
- (FMDBluetoothDiscoveryCoordinator)initWithDiscovery:(id)a3;
- (id)newDiscovery;
- (void)didEndDiscoveryWithError:(id)a3;
- (void)discoveryRequestedStart:(id)a3;
- (void)discoveryRequestedStop:(id)a3;
- (void)scanningTimerFired;
- (void)startDiscoveryTimerWithDuration:(double)a3;
- (void)updateDiscovery;
@end

@implementation FMDBluetoothDiscoveryCoordinator

- (FMDBluetoothDiscoveryCoordinator)initWithDiscovery:(id)a3
{
  v4 = a3;
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

    [(FMDBluetoothDiscoveryCoordinator *)v5 setDiscovery:v4];
    objc_initWeak(&location, v5);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001C4678;
    v14[3] = &unk_1002CFD38;
    objc_copyWeak(&v15, &location);
    [v4 setDidDiscoverDevice:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001C46F4;
    v12[3] = &unk_1002CFD38;
    objc_copyWeak(&v13, &location);
    [v4 setDidLoseDevice:v12];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001C4770;
    v10[3] = &unk_1002CFD60;
    objc_copyWeak(&v11, &location);
    [v4 setDidEndDiscovery:v10];
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

- (void)discoveryRequestedStop:(id)a3
{
  v4 = a3;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscoveryCoordinator discoveryRequestedStop %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = [(FMDBluetoothDiscoveryCoordinator *)self serialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C4A04;
  v8[3] = &unk_1002CD288;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)discoveryRequestedStart:(id)a3
{
  v4 = a3;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscoveryCoordinator discoveryRequestedStart %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = [(FMDBluetoothDiscoveryCoordinator *)self serialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C4C44;
  v8[3] = &unk_1002CD288;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)didEndDiscoveryWithError:(id)a3
{
  v4 = a3;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscoveryCoordinator discoveryEnded - clearing tokens", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = [(FMDBluetoothDiscoveryCoordinator *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C4E24;
  block[3] = &unk_1002CD518;
  objc_copyWeak(&v10, buf);
  dispatch_async(v6, block);

  [(FMDBluetoothDiscoveryCoordinator *)self setIsDiscoveryActive:0];
  v7 = [(FMDBluetoothDiscoveryCoordinator *)self didEndDiscovery];

  if (v7)
  {
    v8 = [(FMDBluetoothDiscoveryCoordinator *)self didEndDiscovery];
    (v8)[2](v8, v4);
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)startDiscoveryTimerWithDuration:(double)a3
{
  v5 = [(FMDBluetoothDiscoveryCoordinator *)self discoveryTimer];
  [v5 cancel];

  v6 = [NSDate dateWithTimeIntervalSinceNow:a3];
  [(FMDBluetoothDiscoveryCoordinator *)self setDiscoveryEndDate:v6];

  objc_initWeak(&location, self);
  v7 = [FMDDispatchTimer alloc];
  v8 = &_dispatch_main_q;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1001C5094;
  v14 = &unk_1002CD518;
  objc_copyWeak(&v15, &location);
  v9 = [(FMDDispatchTimer *)v7 initWithQueue:&_dispatch_main_q timeout:&v11 completion:a3];
  [(FMDBluetoothDiscoveryCoordinator *)self setDiscoveryTimer:v9, v11, v12, v13, v14];

  v10 = [(FMDBluetoothDiscoveryCoordinator *)self discoveryTimer];
  [v10 start];

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
  v4 = [(FMDBluetoothDiscoveryCoordinator *)self serialQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001C51C4;
  v5[3] = &unk_1002CD518;
  objc_copyWeak(&v6, &location);
  dispatch_async(v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)updateDiscovery
{
  v3 = [(FMDBluetoothDiscoveryCoordinator *)self activeTokens];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(FMDBluetoothDiscoveryCoordinator *)self activeTokens];
    v6 = [v5 sortedArrayUsingComparator:&stru_1002D0EC8];

    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = *&v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscoveryCoordinator active tokens %@", &v24, 0xCu);
    }

    v8 = [v6 firstObject];
    v9 = [(FMDBluetoothDiscoveryCoordinator *)self discoveryEndDate];
    [v9 timeIntervalSinceNow];
    v11 = v10;
    v12 = [v8 endDate];
    [v12 timeIntervalSinceNow];
    v14 = v13;

    v15 = sub_100002880();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = *&v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscoveryCoordinator updating discovery with token %@", &v24, 0xCu);
    }

    if (v14 < 0.0 || v14 > 600.0)
    {
      v22 = sub_100002880();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = *&v8;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscoveryCoordinator discovery expired, stopping discovery %@", &v24, 0xCu);
      }

      [(FMDBluetoothDiscoveryCoordinator *)self discoveryRequestedStop:v8];
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
        v16 = [(FMDBluetoothDiscoveryCoordinator *)self didStartDiscovery];

        if (v16)
        {
          v17 = [(FMDBluetoothDiscoveryCoordinator *)self didStartDiscovery];
          v17[2]();
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
      v19 = [(FMDBluetoothDiscoveryCoordinator *)self discovery];
      [v19 startDiscovery];

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

    v21 = [(FMDBluetoothDiscoveryCoordinator *)self discovery];
    [v21 stopDiscovery];

    [(FMDBluetoothDiscoveryCoordinator *)self setIsDiscoveryActive:0];
  }
}

@end