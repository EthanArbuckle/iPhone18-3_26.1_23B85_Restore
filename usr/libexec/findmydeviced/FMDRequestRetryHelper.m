@interface FMDRequestRetryHelper
- (FMDRequest)request;
- (FMDRequestRetryHelper)initWithRequest:(id)a3 retryAction:(id)a4;
- (double)_decayedWaitIntervalForRetryCount:(int64_t)a3;
- (int)_consecutiveRetryCountForType:(id)a3;
- (int)_retryCountForType:(id)a3;
- (void)_incrementRetryCountForType:(id)a3;
- (void)_networkCameUp;
- (void)_networkStateChanged:(id)a3;
- (void)_retryNow;
- (void)_retryTimerFired;
- (void)_scheduleRetryAfterTimeInterval:(double)a3;
- (void)checkAndScheduleRetries;
- (void)dealloc;
- (void)deinitializeHelper;
@end

@implementation FMDRequestRetryHelper

- (void)checkAndScheduleRetries
{
  [(FMDRequestRetryHelper *)self setNextRetryType:0];
  v3 = [(FMDRequestRetryHelper *)self request];
  if (!v3)
  {
    [(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"];
  }

  v4 = [(FMDRequestRetryHelper *)self nextRetryType];
  if (v4)
  {
  }

  else if ([v3 completed])
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v52 = 138412546;
      *&v52[4] = objc_opt_class();
      *&v52[12] = 2048;
      *&v52[14] = v3;
      v6 = *&v52[4];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Request is complete", v52, 0x16u);
    }

    [(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"];
  }

  v7 = [(FMDRequestRetryHelper *)self nextRetryType:*v52];
  if (v7)
  {
  }

  else if (([v3 canRequestBeRetriedNow] & 1) == 0)
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      *v52 = 138412546;
      *&v52[4] = v9;
      *&v52[12] = 2048;
      *&v52[14] = v3;
      v10 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Request cannot be retried anymore. Not scheduling any more retries", v52, 0x16u);
    }

    [(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"];
  }

  v11 = [(FMDRequestRetryHelper *)self nextRetryType];

  v12 = -1.0;
  if (!v11)
  {
    v13 = [v3 httpResponseHeaders];
    v14 = [v13 objectForKeyedSubscript:@"X-Apple-Retry-After"];

    if (v14)
    {
      [v14 doubleValue];
      if (v15 < 0.0)
      {
        v16 = sub_100002880();
        v17 = -1.0;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = objc_opt_class();
          *v52 = 138412546;
          *&v52[4] = v18;
          *&v52[12] = 2048;
          *&v52[14] = v3;
          v19 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Server requested that no more retries be done.", v52, 0x16u);
        }

        v20 = @"NoMoreRetries";
LABEL_25:

        [(FMDRequestRetryHelper *)self setNextRetryType:v20];
        v12 = v17;
        goto LABEL_26;
      }

      if (v15 > 0.0)
      {
        v17 = v15;
        v16 = sub_100002880();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v21 = objc_opt_class();
          *v52 = 138412802;
          *&v52[4] = v21;
          *&v52[12] = 2048;
          *&v52[14] = v3;
          *&v52[22] = 2048;
          v53 = v17;
          v22 = v21;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Server requested a retry after %f seconds", v52, 0x20u);
        }

        v20 = @"ServerDelayedRetry";
        goto LABEL_25;
      }
    }

LABEL_26:
  }

  v23 = [(FMDRequestRetryHelper *)self nextRetryType];
  if (v23)
  {
  }

  else if ([v3 responseErrorType] == 257)
  {
    [(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"];
  }

  v24 = [(FMDRequestRetryHelper *)self nextRetryType];
  if (v24)
  {
    v25 = v24;
LABEL_33:

    goto LABEL_36;
  }

  if ([v3 responseErrorType] == 514 && !-[FMDRequestRetryHelper _retryCountForType:](self, "_retryCountForType:", @"TryOriginalHost"))
  {
    [(FMDRequestRetryHelper *)self setNextRetryType:@"TryOriginalHost"];
    v25 = [v3 authId];
    [FMDRealmSupport clearCachedHostsWithContext:v25];
    v12 = 0.0;
    goto LABEL_33;
  }

LABEL_36:
  v26 = [(FMDRequestRetryHelper *)self nextRetryType];
  if (v26)
  {
  }

  else if (([v3 responseErrorType] & 0x200) != 0)
  {
    v27 = [(FMDRequestRetryHelper *)self _retryCountForType:@"TimerBasedNetworkRetry"];
    if ([v3 maxTimerBasedNetworkRetries] == -1 || objc_msgSend(v3, "maxTimerBasedNetworkRetries") > v27)
    {
      [(FMDRequestRetryHelper *)self setNextRetryType:@"TimerBasedNetworkRetry"];
      [(FMDRequestRetryHelper *)self _decayedWaitIntervalForRetryCount:v27];
      v12 = v28;
    }

    else
    {
      v29 = [(FMDRequestRetryHelper *)self _consecutiveRetryCountForType:@"NotificationBasedNetworkRetry"];
      if ([v3 maxConsecutiveNetworkNotificationRetries] == -1 || objc_msgSend(v3, "maxConsecutiveNetworkNotificationRetries") > v29)
      {
        [(FMDRequestRetryHelper *)self setNextRetryType:@"NotificationBasedNetworkRetry"];
        v30 = sub_100002880();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = objc_opt_class();
          *v52 = 138412546;
          *&v52[4] = v31;
          *&v52[12] = 2048;
          *&v52[14] = v3;
          v32 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Waiting for a network-up notification to retry again", v52, 0x16u);
        }

        v12 = -1.0;
      }

      else
      {
        [(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"];
        v33 = sub_100002880();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = objc_opt_class();
          *v52 = 138412546;
          *&v52[4] = v34;
          *&v52[12] = 2048;
          *&v52[14] = v3;
          v35 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Stopped retrying since we exceeded the maximum number of consecutive network-up notification based retries", v52, 0x16u);
        }
      }
    }
  }

  v36 = [(FMDRequestRetryHelper *)self nextRetryType];
  if (v36)
  {
  }

  else if ([v3 responseErrorType] == 1025)
  {
    v37 = [(FMDRequestRetryHelper *)self _retryCountForType:@"RedirectRetry"];
    if (v37)
    {
      v38 = v37;
      if ([v3 maxNonNetworkRelatedRetries] == -1 || objc_msgSend(v3, "maxNonNetworkRelatedRetries") > v38)
      {
        [(FMDRequestRetryHelper *)self setNextRetryType:@"RedirectRetry"];
        [(FMDRequestRetryHelper *)self _decayedWaitIntervalForRetryCount:v38];
        v12 = v39;
      }

      else
      {
        [(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"];
        v40 = sub_100002880();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = objc_opt_class();
          *v52 = 138412546;
          *&v52[4] = v41;
          *&v52[12] = 2048;
          *&v52[14] = v3;
          v42 = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Stopped retrying since we exceeded the maximum number of redirect retries", v52, 0x16u);
        }
      }
    }

    else
    {
      [(FMDRequestRetryHelper *)self setNextRetryType:@"RedirectRetry"];
      v12 = 0.0;
    }
  }

  v43 = [(FMDRequestRetryHelper *)self nextRetryType];

  if (!v43)
  {
    v44 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 httpResponseStatus]);
    v45 = [v44 stringValue];

    v46 = [(FMDRequestRetryHelper *)self _retryCountForType:v45];
    if ([v3 maxNonNetworkRelatedRetries] == -1 || objc_msgSend(v3, "maxNonNetworkRelatedRetries") > v46)
    {
      [(FMDRequestRetryHelper *)self setNextRetryType:v45];
      [(FMDRequestRetryHelper *)self _decayedWaitIntervalForRetryCount:v46];
      v12 = v47;
    }

    else
    {
      [(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"];
      v48 = sub_100002880();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = objc_opt_class();
        *v52 = 138412802;
        *&v52[4] = v49;
        *&v52[12] = 2048;
        *&v52[14] = v3;
        *&v52[22] = 2112;
        v53 = *&v45;
        v50 = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Stopped retrying since we exceeded the maximum number of retries for status code %@", v52, 0x20u);
      }
    }
  }

  v51 = [(FMDRequestRetryHelper *)self nextRetryType];
  [v3 setWillRetry:{objc_msgSend(v51, "isEqualToString:", @"NoMoreRetries"}];

  [(FMDRequestRetryHelper *)self _scheduleRetryAfterTimeInterval:v12];
}

- (FMDRequest)request
{
  WeakRetained = objc_loadWeakRetained(&self->_request);

  return WeakRetained;
}

- (FMDRequestRetryHelper)initWithRequest:(id)a3 retryAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = FMDRequestRetryHelper;
  v8 = [(FMDRequestRetryHelper *)&v13 init];
  if (v8)
  {
    v9 = objc_retainBlock(v7);
    retryAction = v8->_retryAction;
    v8->_retryAction = v9;

    objc_storeWeak(&v8->_request, v6);
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v8 selector:"_networkStateChanged:" name:FMLocalNetworkStatusChangedNotification object:0];
  }

  return v8;
}

- (void)dealloc
{
  [(FMDRequestRetryHelper *)self deinitializeHelper];
  v3.receiver = self;
  v3.super_class = FMDRequestRetryHelper;
  [(FMDRequestRetryHelper *)&v3 dealloc];
}

- (void)deinitializeHelper
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:FMLocalNetworkStatusChangedNotification object:0];

  v4 = [(FMDRequestRetryHelper *)self retryTimer];
  [v4 invalidate];

  [(FMDRequestRetryHelper *)self setRetryTimer:0];
  [(FMDRequestRetryHelper *)self setNextRetryTime:0];
  [(FMDRequestRetryHelper *)self setRetryAction:0];

  [(FMDRequestRetryHelper *)self setRequest:0];
}

- (double)_decayedWaitIntervalForRetryCount:(int64_t)a3
{
  v4 = [(FMDRequestRetryHelper *)self request];
  [v4 firstRetryInterval];
  v6 = v5;
  [v4 retryIntervalDecayFactor];
  v8 = v6 * pow(v7, a3);
  [v4 maxRetryInterval];
  if (v9 > -1.0)
  {
    [v4 maxRetryInterval];
    if (v8 > v10)
    {
      [v4 maxRetryInterval];
      v8 = v11;
    }
  }

  return v8;
}

- (void)_retryTimerFired
{
  v3 = [(FMDRequestRetryHelper *)self retryTimer];
  [v3 invalidate];

  [(FMDRequestRetryHelper *)self setRetryTimer:0];
  [(FMDRequestRetryHelper *)self setNextRetryTime:0];
  v4 = [(FMDRequestRetryHelper *)self request];
  if ([v4 canRequestBeRetriedNow] && !objc_msgSend(v4, "inProgress"))
  {
    [(FMDRequestRetryHelper *)self _retryNow];
  }

  else
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = objc_opt_class();
      v9 = 2048;
      v10 = v4;
      v6 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Retry time arrived, but request cannot be retried anymore or retry is already in progress. Not retrying", &v7, 0x16u);
    }
  }
}

- (void)_retryNow
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015DB90;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_networkCameUp
{
  v3 = [(FMDRequestRetryHelper *)self request];
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 138412546;
    *&v27[4] = objc_opt_class();
    *&v27[12] = 2048;
    *&v27[14] = v3;
    v5 = *&v27[4];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Network came up", v27, 0x16u);
  }

  if ([v3 canRequestBeRetriedNow] && (objc_msgSend(v3, "inProgress") & 1) == 0)
  {
    v6 = [(FMDRequestRetryHelper *)self nextRetryType];
    if ([v6 isEqualToString:@"TimerBasedNetworkRetry"])
    {

      goto LABEL_8;
    }

    v7 = [(FMDRequestRetryHelper *)self nextRetryType];
    v8 = [v7 isEqualToString:@"NotificationBasedNetworkRetry"];

    if (v8)
    {
LABEL_8:
      v9 = [NSDate date:*v27];
      v10 = [(FMDRequestRetryHelper *)self nextRetryType];
      if ([v10 isEqualToString:@"NotificationBasedNetworkRetry"])
      {
        v11 = [(FMDRequestRetryHelper *)self nextRetryTime];

        if (v11)
        {
          v12 = sub_100002880();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = objc_opt_class();
            v14 = v13;
            v15 = [(FMDRequestRetryHelper *)self nextRetryTime];
            *v27 = 138412802;
            *&v27[4] = v13;
            *&v27[12] = 2048;
            *&v27[14] = v3;
            *&v27[22] = 2112;
            v28 = v15;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Network up retry already pending for %@", v27, 0x20u);
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

      v16 = [(FMDRequestRetryHelper *)self lastRetryType];
      if ([v16 isEqualToString:@"NotificationBasedNetworkRetry"])
      {
        v17 = [(FMDRequestRetryHelper *)self lastRetryTime];

        if (v17)
        {
          v18 = [(FMDRequestRetryHelper *)self lastRetryTime];
          [v9 timeIntervalSinceDate:v18];
          v20 = v19;

          if (v20 >= 60.0 || v20 < 0.0)
          {
            v22 = 0.0;
          }

          else
          {
            v22 = 60.0 - v20;
          }

          goto LABEL_23;
        }
      }

      else
      {
      }

      v22 = 0.0;
LABEL_23:
      v23 = [(FMDRequestRetryHelper *)self nextRetryTime];

      if (!v23 || (-[FMDRequestRetryHelper nextRetryTime](self, "nextRetryTime"), v24 = objc_claimAutoreleasedReturnValue(), [v24 timeIntervalSinceDate:v9], v26 = v25, v24, v26 < 0.0) || v26 >= v22)
      {
        [(FMDRequestRetryHelper *)self _scheduleRetryAfterTimeInterval:v22];
        goto LABEL_30;
      }

      v12 = sub_100002880();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100228A08(v3, self, v12);
      }

LABEL_28:

LABEL_30:
    }
  }
}

- (void)_scheduleRetryAfterTimeInterval:(double)a3
{
  v5 = [(FMDRequestRetryHelper *)self request];
  if (a3 <= 0.0)
  {
    v16 = sub_100002880();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (a3 >= 0.0)
    {
      if (v17)
      {
        v19 = objc_opt_class();
        v20 = v19;
        v21 = [(FMDRequestRetryHelper *)self nextRetryType];
        *buf = 138412802;
        v24 = v19;
        v25 = 2048;
        v26 = v5;
        v27 = 2112;
        v28 = v21;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Scheduling retry of type '%@' to occur now", buf, 0x20u);
      }

      v22 = +[NSDate date];
      [(FMDRequestRetryHelper *)self setNextRetryTime:v22];

      [(FMDRequestRetryHelper *)self _retryNow];
    }

    else
    {
      if (v17)
      {
        *buf = 138412546;
        v24 = objc_opt_class();
        v25 = 2048;
        v26 = v5;
        v18 = v24;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Not scheduling any retry", buf, 0x16u);
      }

      [(FMDRequestRetryHelper *)self setNextRetryTime:0];
    }
  }

  else
  {
    v6 = [NSDate dateWithTimeIntervalSinceNow:a3];
    [(FMDRequestRetryHelper *)self setNextRetryTime:v6];

    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = [(FMDRequestRetryHelper *)self nextRetryType];
      v11 = [(FMDRequestRetryHelper *)self nextRetryTime];
      *buf = 138413058;
      v24 = v8;
      v25 = 2048;
      v26 = v5;
      v27 = 2112;
      v28 = v10;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Scheduling retry of type '%@' to occur at %@", buf, 0x2Au);
    }

    v12 = [NSString stringWithFormat:@"com.apple.icloud.findmydeviced.retry.%@-%p", objc_opt_class(), self];
    v13 = [[PCPersistentTimer alloc] initWithTimeInterval:v12 serviceIdentifier:self target:"_retryTimerFired" selector:0 userInfo:a3];
    [(FMDRequestRetryHelper *)self setRetryTimer:v13];

    v14 = [(FMDRequestRetryHelper *)self retryTimer];
    [v14 setMinimumEarlyFireProportion:0.75];

    v15 = [(FMDRequestRetryHelper *)self retryTimer];
    [v15 scheduleInQueue:&_dispatch_main_q];
  }
}

- (int)_retryCountForType:(id)a3
{
  v4 = a3;
  v5 = [(FMDRequestRetryHelper *)self totalRetriesByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 intValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)_consecutiveRetryCountForType:(id)a3
{
  v4 = a3;
  v5 = [(FMDRequestRetryHelper *)self consecutiveRetriesByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 intValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_incrementRetryCountForType:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v18 = v4;
    v5 = [(FMDRequestRetryHelper *)self totalRetriesByType];

    if (!v5)
    {
      v6 = +[NSMutableDictionary dictionary];
      [(FMDRequestRetryHelper *)self setTotalRetriesByType:v6];

      v7 = +[NSMutableDictionary dictionary];
      [(FMDRequestRetryHelper *)self setConsecutiveRetriesByType:v7];
    }

    v8 = [(FMDRequestRetryHelper *)self totalRetriesByType];
    v9 = [v8 objectForKeyedSubscript:v18];

    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue] + 1);
    v11 = [(FMDRequestRetryHelper *)self totalRetriesByType];
    [v11 setObject:v10 forKeyedSubscript:v18];

    v12 = [(FMDRequestRetryHelper *)self consecutiveRetriesByType];
    v13 = [v12 objectForKeyedSubscript:v18];

    v14 = [(FMDRequestRetryHelper *)self lastRetryType];
    v15 = [v18 isEqualToString:v14];

    if (v15)
    {
      v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 intValue] + 1);
    }

    else
    {
      v16 = &off_1002E7B28;
    }

    v17 = [(FMDRequestRetryHelper *)self consecutiveRetriesByType];
    [v17 setObject:v16 forKeyedSubscript:v18];

    v4 = v18;
  }

  ++self->_totalRetryCount;
}

- (void)_networkStateChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:FMLocalNetworkStatusKey];

  if ([v5 BOOLValue])
  {
    [(FMDRequestRetryHelper *)self _networkCameUp];
  }
}

@end