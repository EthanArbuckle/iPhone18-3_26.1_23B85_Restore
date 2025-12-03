@interface CKKSReachabilityTracker
+ (BOOL)isNetworkError:(id)error;
+ (BOOL)isNetworkFailureError:(id)error;
- (BOOL)currentReachability;
- (CKKSReachabilityTracker)init;
- (id)description;
- (void)_onQueueResetReachabilityDependency;
- (void)_onQueueRunReachabilityDependency;
- (void)setNetworkReachability:(BOOL)reachability;
@end

@implementation CKKSReachabilityTracker

- (void)setNetworkReachability:(BOOL)reachability
{
  queue = [(CKKSReachabilityTracker *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100161EF8;
  v6[3] = &unk_100343A90;
  v6[4] = self;
  reachabilityCopy = reachability;
  dispatch_sync(queue, v6);
}

- (void)_onQueueResetReachabilityDependency
{
  queue = [(CKKSReachabilityTracker *)self queue];
  dispatch_assert_queue_V2(queue);

  reachabilityDependency = [(CKKSReachabilityTracker *)self reachabilityDependency];
  if (!reachabilityDependency || (v5 = reachabilityDependency, -[CKKSReachabilityTracker reachabilityDependency](self, "reachabilityDependency"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isPending], v6, v5, (v7 & 1) == 0))
  {
    objc_initWeak(&location, self);
    v8 = sub_100019104(@"network", 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Network unavailable", buf, 2u);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100162274;
    v21[3] = &unk_1003452E8;
    objc_copyWeak(&v22, &location);
    v9 = [CKKSResultOperation named:@"network-available-dependency" withBlock:v21];
    [(CKKSReachabilityTracker *)self setReachabilityDependency:v9];

    queue2 = [(CKKSReachabilityTracker *)self queue];
    v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue2);
    [(CKKSReachabilityTracker *)self setTimer:v11];

    timer = [(CKKSReachabilityTracker *)self timer];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100162308;
    v19 = &unk_1003452E8;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(timer, &v16);

    v13 = [(CKKSReachabilityTracker *)self timer:v16];
    v14 = dispatch_time(0, 43200000000000);
    dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0x6FC23AC00uLL);

    timer2 = [(CKKSReachabilityTracker *)self timer];
    dispatch_resume(timer2);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

- (void)_onQueueRunReachabilityDependency
{
  queue = [(CKKSReachabilityTracker *)self queue];
  dispatch_assert_queue_V2(queue);

  reachabilityDependency = [(CKKSReachabilityTracker *)self reachabilityDependency];

  if (reachabilityDependency)
  {
    operationQueue = [(CKKSReachabilityTracker *)self operationQueue];
    reachabilityDependency2 = [(CKKSReachabilityTracker *)self reachabilityDependency];
    [operationQueue addOperation:reachabilityDependency2];

    [(CKKSReachabilityTracker *)self setReachabilityDependency:0];
  }

  timer = [(CKKSReachabilityTracker *)self timer];

  if (timer)
  {
    timer2 = [(CKKSReachabilityTracker *)self timer];
    dispatch_source_cancel(timer2);

    [(CKKSReachabilityTracker *)self setTimer:0];
  }
}

- (BOOL)currentReachability
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CKKSReachabilityTracker *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100162660;
  v5[3] = &unk_100344E90;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (id)description
{
  haveNetwork = [(CKKSReachabilityTracker *)self haveNetwork];
  v3 = @"offline";
  if (haveNetwork)
  {
    v3 = @"online";
  }

  return [NSString stringWithFormat:@"<CKKSReachabilityTracker: %@>", v3];
}

- (CKKSReachabilityTracker)init
{
  v21.receiver = self;
  v21.super_class = CKKSReachabilityTracker;
  v2 = [(CKKSReachabilityTracker *)&v21 init];
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
    block[2] = sub_1001628F0;
    block[3] = &unk_100346018;
    v9 = v2;
    v20 = v9;
    dispatch_sync(v8, block);
    objc_initWeak(&location, v9);
    v10 = nw_path_monitor_create();
    v11 = v9[5];
    v9[5] = v10;

    networkMonitor = [v9 networkMonitor];
    nw_path_monitor_set_queue(networkMonitor, *(v2 + 3));

    networkMonitor2 = [v9 networkMonitor];
    update_handler[0] = _NSConcreteStackBlock;
    update_handler[1] = 3221225472;
    update_handler[2] = sub_100020118;
    update_handler[3] = &unk_100338780;
    objc_copyWeak(&v17, &location);
    nw_path_monitor_set_update_handler(networkMonitor2, update_handler);

    networkMonitor3 = [v9 networkMonitor];
    nw_path_monitor_start(networkMonitor3);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (BOOL)isNetworkFailureError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_6;
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:CKErrorDomain])
  {

    goto LABEL_6;
  }

  code = [v4 code];

  if (code != 4)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

+ (BOOL)isNetworkError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    goto LABEL_12;
  }

  if (![CKKSReachabilityTracker isNetworkFailureError:errorCopy])
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:CKErrorDomain])
    {
      code = [errorCopy code];

      if (code == 3)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    domain2 = [errorCopy domain];
    if ([domain2 isEqualToString:NSURLErrorDomain])
    {
      if ([errorCopy code] == -1001)
      {

        goto LABEL_3;
      }

      code2 = [errorCopy code];

      if (code2 == -1009)
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

@end