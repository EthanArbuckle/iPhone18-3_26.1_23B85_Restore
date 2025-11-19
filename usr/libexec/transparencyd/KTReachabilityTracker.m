@interface KTReachabilityTracker
+ (BOOL)isNetworkError:(id)a3;
+ (BOOL)isNetworkFailureError:(id)a3;
- (BOOL)currentReachability;
- (KTReachabilityTracker)init;
- (id)description;
- (void)_onQueueResetReachabilityDependency;
- (void)_onQueueRunReachabilityDependency;
- (void)setNetworkReachability:(BOOL)a3;
@end

@implementation KTReachabilityTracker

- (KTReachabilityTracker)init
{
  v21.receiver = self;
  v21.super_class = KTReachabilityTracker;
  v2 = [(KTReachabilityTracker *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("reachabiltity-tracker", v3);
    v5 = *(v2 + 3);
    *(v2 + 3) = v4;

    v6 = objc_alloc_init(NSOperationQueue);
    v7 = *(v2 + 4);
    *(v2 + 4) = v6;

    v8 = *(v2 + 3);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001FDC88;
    block[3] = &unk_100316FE0;
    v9 = v2;
    v20 = v9;
    dispatch_sync(v8, block);
    objc_initWeak(&location, v9);
    v10 = nw_path_monitor_create();
    v11 = v9[5];
    v9[5] = v10;

    v12 = [v9 networkMonitor];
    nw_path_monitor_set_queue(v12, *(v2 + 3));

    v13 = [v9 networkMonitor];
    update_handler[0] = _NSConcreteStackBlock;
    update_handler[1] = 3221225472;
    update_handler[2] = sub_10000288C;
    update_handler[3] = &unk_100329770;
    objc_copyWeak(&v17, &location);
    nw_path_monitor_set_update_handler(v13, update_handler);

    v14 = [v9 networkMonitor];
    nw_path_monitor_start(v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (id)description
{
  v2 = [(KTReachabilityTracker *)self haveNetwork];
  v3 = @"offline";
  if (v2)
  {
    v3 = @"online";
  }

  return [NSString stringWithFormat:@"<KTReachabilityTracker: %@>", v3];
}

- (BOOL)currentReachability
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(KTReachabilityTracker *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001FDDC4;
  v5[3] = &unk_10031DC58;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)_onQueueRunReachabilityDependency
{
  v3 = [(KTReachabilityTracker *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(KTReachabilityTracker *)self reachabilityDependency];

  if (v4)
  {
    v5 = [(KTReachabilityTracker *)self operationQueue];
    v6 = [(KTReachabilityTracker *)self reachabilityDependency];
    [v5 addOperation:v6];

    [(KTReachabilityTracker *)self setReachabilityDependency:0];
  }

  v7 = [(KTReachabilityTracker *)self timer];

  if (v7)
  {
    v8 = [(KTReachabilityTracker *)self timer];
    dispatch_source_cancel(v8);

    [(KTReachabilityTracker *)self setTimer:0];
  }
}

- (void)_onQueueResetReachabilityDependency
{
  v3 = [(KTReachabilityTracker *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(KTReachabilityTracker *)self reachabilityDependency];
  if (!v4 || (v5 = v4, -[KTReachabilityTracker reachabilityDependency](self, "reachabilityDependency"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isPending], v6, v5, (v7 & 1) == 0))
  {
    objc_initWeak(&location, self);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Network unavailable", buf, 2u);
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001FE184;
    v20[3] = &unk_1003175E0;
    objc_copyWeak(&v21, &location);
    v8 = [KTResultOperation named:@"network-available-dependency" withBlock:v20];
    [(KTReachabilityTracker *)self setReachabilityDependency:v8];

    v9 = [(KTReachabilityTracker *)self queue];
    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v9);
    [(KTReachabilityTracker *)self setTimer:v10];

    v11 = [(KTReachabilityTracker *)self timer];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1001FE2E0;
    v18 = &unk_1003175E0;
    objc_copyWeak(&v19, &location);
    dispatch_source_set_event_handler(v11, &v15);

    v12 = [(KTReachabilityTracker *)self timer:v15];
    v13 = dispatch_time(0, 43200000000000);
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x6FC23AC00uLL);

    v14 = [(KTReachabilityTracker *)self timer];
    dispatch_resume(v14);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (void)setNetworkReachability:(BOOL)a3
{
  v5 = [(KTReachabilityTracker *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001FE49C;
  v6[3] = &unk_1003285A8;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

+ (BOOL)isNetworkError:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_12;
  }

  if (![KTReachabilityTracker isNetworkFailureError:v3])
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:CKErrorDomain])
    {
      v6 = [v3 code];

      if (v6 == 3)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v7 = [v3 domain];
    if ([v7 isEqualToString:NSURLErrorDomain])
    {
      v8 = [v3 code];

      if (v8 == -1001)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

LABEL_3:
  v4 = 1;
LABEL_13:

  return v4;
}

+ (BOOL)isNetworkFailureError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = [v3 domain];
  if (![v5 isEqualToString:CKErrorDomain])
  {

    goto LABEL_6;
  }

  v6 = [v4 code];

  if (v6 != 4)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

@end