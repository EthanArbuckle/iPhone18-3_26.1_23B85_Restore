@interface FMDRequestRetryHelper
- (FMDRequest)request;
- (FMDRequestRetryHelper)initWithRequest:(id)request retryAction:(id)action;
- (double)_decayedWaitIntervalForRetryCount:(int64_t)count;
- (int)_consecutiveRetryCountForType:(id)type;
- (int)_retryCountForType:(id)type;
- (void)_incrementRetryCountForType:(id)type;
- (void)_networkCameUp;
- (void)_networkStateChanged:(id)changed;
- (void)_retryNow;
- (void)_retryTimerFired;
- (void)_scheduleRetryAfterTimeInterval:(double)interval;
- (void)checkAndScheduleRetries;
- (void)dealloc;
- (void)deinitializeHelper;
@end

@implementation FMDRequestRetryHelper

- (void)checkAndScheduleRetries
{
  [(FMDRequestRetryHelper *)self setNextRetryType:0];
  request = [(FMDRequestRetryHelper *)self request];
  if (!request)
  {
    [(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"];
  }

  nextRetryType = [(FMDRequestRetryHelper *)self nextRetryType];
  if (nextRetryType)
  {
  }

  else if ([request completed])
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v52 = 138412546;
      *&v52[4] = objc_opt_class();
      *&v52[12] = 2048;
      *&v52[14] = request;
      v6 = *&v52[4];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Request is complete", v52, 0x16u);
    }

    [(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"];
  }

  v7 = [(FMDRequestRetryHelper *)self nextRetryType:*v52];
  if (v7)
  {
  }

  else if (([request canRequestBeRetriedNow] & 1) == 0)
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      *v52 = 138412546;
      *&v52[4] = v9;
      *&v52[12] = 2048;
      *&v52[14] = request;
      v10 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Request cannot be retried anymore. Not scheduling any more retries", v52, 0x16u);
    }

    [(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"];
  }

  nextRetryType2 = [(FMDRequestRetryHelper *)self nextRetryType];

  v12 = -1.0;
  if (!nextRetryType2)
  {
    httpResponseHeaders = [request httpResponseHeaders];
    v14 = [httpResponseHeaders objectForKeyedSubscript:@"X-Apple-Retry-After"];

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
          *&v52[14] = request;
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
          *&v52[14] = request;
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

  nextRetryType3 = [(FMDRequestRetryHelper *)self nextRetryType];
  if (nextRetryType3)
  {
  }

  else if ([request responseErrorType] == 257)
  {
    [(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"];
  }

  nextRetryType4 = [(FMDRequestRetryHelper *)self nextRetryType];
  if (nextRetryType4)
  {
    authId = nextRetryType4;
LABEL_33:

    goto LABEL_36;
  }

  if ([request responseErrorType] == 514 && !-[FMDRequestRetryHelper _retryCountForType:](self, "_retryCountForType:", @"TryOriginalHost"))
  {
    [(FMDRequestRetryHelper *)self setNextRetryType:@"TryOriginalHost"];
    authId = [request authId];
    [FMDRealmSupport clearCachedHostsWithContext:authId];
    v12 = 0.0;
    goto LABEL_33;
  }

LABEL_36:
  nextRetryType5 = [(FMDRequestRetryHelper *)self nextRetryType];
  if (nextRetryType5)
  {
  }

  else if (([request responseErrorType] & 0x200) != 0)
  {
    v27 = [(FMDRequestRetryHelper *)self _retryCountForType:@"TimerBasedNetworkRetry"];
    if ([request maxTimerBasedNetworkRetries] == -1 || objc_msgSend(request, "maxTimerBasedNetworkRetries") > v27)
    {
      [(FMDRequestRetryHelper *)self setNextRetryType:@"TimerBasedNetworkRetry"];
      [(FMDRequestRetryHelper *)self _decayedWaitIntervalForRetryCount:v27];
      v12 = v28;
    }

    else
    {
      v29 = [(FMDRequestRetryHelper *)self _consecutiveRetryCountForType:@"NotificationBasedNetworkRetry"];
      if ([request maxConsecutiveNetworkNotificationRetries] == -1 || objc_msgSend(request, "maxConsecutiveNetworkNotificationRetries") > v29)
      {
        [(FMDRequestRetryHelper *)self setNextRetryType:@"NotificationBasedNetworkRetry"];
        v30 = sub_100002880();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = objc_opt_class();
          *v52 = 138412546;
          *&v52[4] = v31;
          *&v52[12] = 2048;
          *&v52[14] = request;
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
          *&v52[14] = request;
          v35 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Stopped retrying since we exceeded the maximum number of consecutive network-up notification based retries", v52, 0x16u);
        }
      }
    }
  }

  nextRetryType6 = [(FMDRequestRetryHelper *)self nextRetryType];
  if (nextRetryType6)
  {
  }

  else if ([request responseErrorType] == 1025)
  {
    v37 = [(FMDRequestRetryHelper *)self _retryCountForType:@"RedirectRetry"];
    if (v37)
    {
      v38 = v37;
      if ([request maxNonNetworkRelatedRetries] == -1 || objc_msgSend(request, "maxNonNetworkRelatedRetries") > v38)
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
          *&v52[14] = request;
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

  nextRetryType7 = [(FMDRequestRetryHelper *)self nextRetryType];

  if (!nextRetryType7)
  {
    v44 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [request httpResponseStatus]);
    stringValue = [v44 stringValue];

    v46 = [(FMDRequestRetryHelper *)self _retryCountForType:stringValue];
    if ([request maxNonNetworkRelatedRetries] == -1 || objc_msgSend(request, "maxNonNetworkRelatedRetries") > v46)
    {
      [(FMDRequestRetryHelper *)self setNextRetryType:stringValue];
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
        *&v52[14] = request;
        *&v52[22] = 2112;
        v53 = *&stringValue;
        v50 = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Stopped retrying since we exceeded the maximum number of retries for status code %@", v52, 0x20u);
      }
    }
  }

  nextRetryType8 = [(FMDRequestRetryHelper *)self nextRetryType];
  [request setWillRetry:{objc_msgSend(nextRetryType8, "isEqualToString:", @"NoMoreRetries"}];

  [(FMDRequestRetryHelper *)self _scheduleRetryAfterTimeInterval:v12];
}

- (FMDRequest)request
{
  WeakRetained = objc_loadWeakRetained(&self->_request);

  return WeakRetained;
}

- (FMDRequestRetryHelper)initWithRequest:(id)request retryAction:(id)action
{
  requestCopy = request;
  actionCopy = action;
  v13.receiver = self;
  v13.super_class = FMDRequestRetryHelper;
  v8 = [(FMDRequestRetryHelper *)&v13 init];
  if (v8)
  {
    v9 = objc_retainBlock(actionCopy);
    retryAction = v8->_retryAction;
    v8->_retryAction = v9;

    objc_storeWeak(&v8->_request, requestCopy);
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

  retryTimer = [(FMDRequestRetryHelper *)self retryTimer];
  [retryTimer invalidate];

  [(FMDRequestRetryHelper *)self setRetryTimer:0];
  [(FMDRequestRetryHelper *)self setNextRetryTime:0];
  [(FMDRequestRetryHelper *)self setRetryAction:0];

  [(FMDRequestRetryHelper *)self setRequest:0];
}

- (double)_decayedWaitIntervalForRetryCount:(int64_t)count
{
  request = [(FMDRequestRetryHelper *)self request];
  [request firstRetryInterval];
  v6 = v5;
  [request retryIntervalDecayFactor];
  v8 = v6 * pow(v7, count);
  [request maxRetryInterval];
  if (v9 > -1.0)
  {
    [request maxRetryInterval];
    if (v8 > v10)
    {
      [request maxRetryInterval];
      v8 = v11;
    }
  }

  return v8;
}

- (void)_retryTimerFired
{
  retryTimer = [(FMDRequestRetryHelper *)self retryTimer];
  [retryTimer invalidate];

  [(FMDRequestRetryHelper *)self setRetryTimer:0];
  [(FMDRequestRetryHelper *)self setNextRetryTime:0];
  request = [(FMDRequestRetryHelper *)self request];
  if ([request canRequestBeRetriedNow] && !objc_msgSend(request, "inProgress"))
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
      v10 = request;
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
  request = [(FMDRequestRetryHelper *)self request];
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 138412546;
    *&v27[4] = objc_opt_class();
    *&v27[12] = 2048;
    *&v27[14] = request;
    v5 = *&v27[4];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Network came up", v27, 0x16u);
  }

  if ([request canRequestBeRetriedNow] && (objc_msgSend(request, "inProgress") & 1) == 0)
  {
    nextRetryType = [(FMDRequestRetryHelper *)self nextRetryType];
    if ([nextRetryType isEqualToString:@"TimerBasedNetworkRetry"])
    {

      goto LABEL_8;
    }

    nextRetryType2 = [(FMDRequestRetryHelper *)self nextRetryType];
    v8 = [nextRetryType2 isEqualToString:@"NotificationBasedNetworkRetry"];

    if (v8)
    {
LABEL_8:
      v9 = [NSDate date:*v27];
      nextRetryType3 = [(FMDRequestRetryHelper *)self nextRetryType];
      if ([nextRetryType3 isEqualToString:@"NotificationBasedNetworkRetry"])
      {
        nextRetryTime = [(FMDRequestRetryHelper *)self nextRetryTime];

        if (nextRetryTime)
        {
          v12 = sub_100002880();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = objc_opt_class();
            v14 = v13;
            nextRetryTime2 = [(FMDRequestRetryHelper *)self nextRetryTime];
            *v27 = 138412802;
            *&v27[4] = v13;
            *&v27[12] = 2048;
            *&v27[14] = request;
            *&v27[22] = 2112;
            v28 = nextRetryTime2;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Network up retry already pending for %@", v27, 0x20u);
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

      lastRetryType = [(FMDRequestRetryHelper *)self lastRetryType];
      if ([lastRetryType isEqualToString:@"NotificationBasedNetworkRetry"])
      {
        lastRetryTime = [(FMDRequestRetryHelper *)self lastRetryTime];

        if (lastRetryTime)
        {
          lastRetryTime2 = [(FMDRequestRetryHelper *)self lastRetryTime];
          [v9 timeIntervalSinceDate:lastRetryTime2];
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
      nextRetryTime3 = [(FMDRequestRetryHelper *)self nextRetryTime];

      if (!nextRetryTime3 || (-[FMDRequestRetryHelper nextRetryTime](self, "nextRetryTime"), v24 = objc_claimAutoreleasedReturnValue(), [v24 timeIntervalSinceDate:v9], v26 = v25, v24, v26 < 0.0) || v26 >= v22)
      {
        [(FMDRequestRetryHelper *)self _scheduleRetryAfterTimeInterval:v22];
        goto LABEL_30;
      }

      v12 = sub_100002880();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100228A08(request, self, v12);
      }

LABEL_28:

LABEL_30:
    }
  }
}

- (void)_scheduleRetryAfterTimeInterval:(double)interval
{
  request = [(FMDRequestRetryHelper *)self request];
  if (interval <= 0.0)
  {
    v16 = sub_100002880();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (interval >= 0.0)
    {
      if (v17)
      {
        v19 = objc_opt_class();
        v20 = v19;
        nextRetryType = [(FMDRequestRetryHelper *)self nextRetryType];
        *buf = 138412802;
        v24 = v19;
        v25 = 2048;
        v26 = request;
        v27 = 2112;
        v28 = nextRetryType;
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
        v26 = request;
        v18 = v24;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Not scheduling any retry", buf, 0x16u);
      }

      [(FMDRequestRetryHelper *)self setNextRetryTime:0];
    }
  }

  else
  {
    v6 = [NSDate dateWithTimeIntervalSinceNow:interval];
    [(FMDRequestRetryHelper *)self setNextRetryTime:v6];

    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      nextRetryType2 = [(FMDRequestRetryHelper *)self nextRetryType];
      nextRetryTime = [(FMDRequestRetryHelper *)self nextRetryTime];
      *buf = 138413058;
      v24 = v8;
      v25 = 2048;
      v26 = request;
      v27 = 2112;
      v28 = nextRetryType2;
      v29 = 2112;
      v30 = nextRetryTime;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Scheduling retry of type '%@' to occur at %@", buf, 0x2Au);
    }

    v12 = [NSString stringWithFormat:@"com.apple.icloud.findmydeviced.retry.%@-%p", objc_opt_class(), self];
    v13 = [[PCPersistentTimer alloc] initWithTimeInterval:v12 serviceIdentifier:self target:"_retryTimerFired" selector:0 userInfo:interval];
    [(FMDRequestRetryHelper *)self setRetryTimer:v13];

    retryTimer = [(FMDRequestRetryHelper *)self retryTimer];
    [retryTimer setMinimumEarlyFireProportion:0.75];

    retryTimer2 = [(FMDRequestRetryHelper *)self retryTimer];
    [retryTimer2 scheduleInQueue:&_dispatch_main_q];
  }
}

- (int)_retryCountForType:(id)type
{
  typeCopy = type;
  totalRetriesByType = [(FMDRequestRetryHelper *)self totalRetriesByType];
  v6 = [totalRetriesByType objectForKeyedSubscript:typeCopy];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (int)_consecutiveRetryCountForType:(id)type
{
  typeCopy = type;
  consecutiveRetriesByType = [(FMDRequestRetryHelper *)self consecutiveRetriesByType];
  v6 = [consecutiveRetriesByType objectForKeyedSubscript:typeCopy];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)_incrementRetryCountForType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    v18 = typeCopy;
    totalRetriesByType = [(FMDRequestRetryHelper *)self totalRetriesByType];

    if (!totalRetriesByType)
    {
      v6 = +[NSMutableDictionary dictionary];
      [(FMDRequestRetryHelper *)self setTotalRetriesByType:v6];

      v7 = +[NSMutableDictionary dictionary];
      [(FMDRequestRetryHelper *)self setConsecutiveRetriesByType:v7];
    }

    totalRetriesByType2 = [(FMDRequestRetryHelper *)self totalRetriesByType];
    v9 = [totalRetriesByType2 objectForKeyedSubscript:v18];

    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue] + 1);
    totalRetriesByType3 = [(FMDRequestRetryHelper *)self totalRetriesByType];
    [totalRetriesByType3 setObject:v10 forKeyedSubscript:v18];

    consecutiveRetriesByType = [(FMDRequestRetryHelper *)self consecutiveRetriesByType];
    v13 = [consecutiveRetriesByType objectForKeyedSubscript:v18];

    lastRetryType = [(FMDRequestRetryHelper *)self lastRetryType];
    v15 = [v18 isEqualToString:lastRetryType];

    if (v15)
    {
      v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 intValue] + 1);
    }

    else
    {
      v16 = &off_1002E7B28;
    }

    consecutiveRetriesByType2 = [(FMDRequestRetryHelper *)self consecutiveRetriesByType];
    [consecutiveRetriesByType2 setObject:v16 forKeyedSubscript:v18];

    typeCopy = v18;
  }

  ++self->_totalRetryCount;
}

- (void)_networkStateChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKeyedSubscript:FMLocalNetworkStatusKey];

  if ([v5 BOOLValue])
  {
    [(FMDRequestRetryHelper *)self _networkCameUp];
  }
}

@end