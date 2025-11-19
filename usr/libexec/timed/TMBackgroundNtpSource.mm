@interface TMBackgroundNtpSource
- (TMBackgroundNtpSource)init;
- (void)dealloc;
- (void)fetchTime;
- (void)setFetchingTime:(BOOL)a3;
- (void)setWantedTime:(double)a3;
@end

@implementation TMBackgroundNtpSource

- (void)setFetchingTime:(BOOL)a3
{
  v3 = a3;
  fetchingTime = self->_fetchingTime;
  if (fetchingTime == a3)
  {
    v6 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
    {
      sub_1000184B0(fetchingTime, v3, v6);
    }
  }

  else
  {

    if (v3)
    {
      v7 = os_transaction_create();
    }

    else
    {
      v7 = 0;
    }

    self->_fetchingTransaction = v7;
  }

  self->_fetchingTime = v3;
}

- (void)fetchTime
{
  [(TMBackgroundNtpSource *)self setLastFetchAttempt:0.0];
  [(TMBackgroundNtpSource *)self setBurstRetryCount:[(TMPreferences *)self->_preferences NTPBurstRetryAttempts]];

  [(TMBackgroundNtpSource *)self setWantedTime:-INFINITY];
}

- (TMBackgroundNtpSource)init
{
  v8.receiver = self;
  v8.super_class = TMBackgroundNtpSource;
  v2 = [(TMBackgroundNtpSource *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("NTP Queue", 0);
    *(v2 + 3) = v3;
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, v3);
    *(v2 + 4) = v4;
    dispatch_source_set_timer(v4, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    v5 = *(v2 + 4);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000181F4;
    handler[3] = &unk_100028BC8;
    handler[4] = v2;
    dispatch_source_set_event_handler(v5, handler);
    dispatch_activate(*(v2 + 4));
  }

  return v2;
}

- (void)dealloc
{
  [(TMBackgroundNtpSource *)self setAddress:0];

  reachabilityTarget = self->_reachabilityTarget;
  if (reachabilityTarget)
  {
    CFRelease(reachabilityTarget);
  }

  self->_clock = 0;
  self->_preferences = 0;
  [(TMBackgroundNtpSource *)self setReachabilityTransaction:0];
  dispatch_release(self->_ntpQueue);
  self->_ntpQueue = 0;
  dispatch_source_cancel(self->_fetchAttemptTimer);
  v4.receiver = self;
  v4.super_class = TMBackgroundNtpSource;
  [(TMBackgroundNtpSource *)&v4 dealloc];
}

- (void)setWantedTime:(double)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = sub_100003ACC(self);
  v7 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v16 = (a3 - Current) / 60.0;
    v17 = 2048;
    v18 = v6 / 60.0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Want active time in %.2fmin. Remaining retry interval: %fmin.", buf, 0x16u);
  }

  if (Current >= a3 && v6 == 0.0)
  {
    ntpQueue = self->_ntpQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000DF94;
    block[3] = &unk_100028BC8;
    block[4] = self;
    dispatch_async(ntpQueue, block);
  }

  else
  {
    if (Current + v6 > a3)
    {
      a3 = Current + v6;
    }

    v9 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unscheduling wanted job", buf, 2u);
    }

    dispatch_source_set_timer(self->_fetchAttemptTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    v10 = a3 - Current;
    v11 = qword_100033218;
    v12 = os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT);
    if (v10 >= 9.22337204e18)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dropping job with infinite start time", buf, 2u);
      }
    }

    else
    {
      if (v12)
      {
        *buf = 134217984;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Scheduling wanted job to fire in %f seconds", buf, 0xCu);
      }

      v13 = dispatch_time(0, (v10 * 1000000000.0));
      dispatch_source_set_timer(self->_fetchAttemptTimer, v13, 0xFFFFFFFFFFFFFFFFLL, 0xDF8475800uLL);
    }
  }
}

@end