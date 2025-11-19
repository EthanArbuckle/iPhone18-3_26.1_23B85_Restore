@interface APLegacyMetricRetryManager
+ (int64_t)_resultForResponseStatusCode:(int64_t)a3 error:(id)a4;
+ (int64_t)resultForResponse:(id)a3 error:(id)a4;
- (APLegacyMetricRetryManager)init;
- (APLegacyMetricRetryManager)initWithSecureFileManager:(id)a3;
- (id)_findPotentiallyDeliverableRequest;
- (void)_completeServerRequestId:(id)a3 serverFailureCount:(int64_t)a4 result:(int64_t)a5;
- (void)_loadFailedRequestsCache;
- (void)_makeRequest:(id)a3 serverFailureCount:(int64_t)a4 responseCallback:(id)a5;
- (void)_markRequestAsFailed:(id)a3;
- (void)_markRequestsAsSucceeded:(id)a3;
- (void)_moveAllPendingRequestsToFailed;
- (void)_registerMetricRequest:(id)a3;
- (void)_removePendingRequest:(id)a3;
- (void)_retryFailedIfAvailable;
- (void)_sendRequest:(id)a3 responseCallback:(id)a4;
- (void)backoffTimerFired;
- (void)completeServerRequestId:(id)a3 serverFailureCount:(int64_t)a4 result:(int64_t)a5;
- (void)registerMetricRequest:(id)a3;
- (void)start;
@end

@implementation APLegacyMetricRetryManager

- (APLegacyMetricRetryManager)init
{
  v3 = [[APStorageManager alloc] initWithPathPrefix:@"l"];
  v4 = [(APLegacyMetricRetryManager *)self initWithSecureFileManager:v3];

  return v4;
}

- (APLegacyMetricRetryManager)initWithSecureFileManager:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = APLegacyMetricRetryManager;
  v6 = [(APLegacyMetricRetryManager *)&v15 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.ap.legacyRetryManager.queue", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = [NSSet setWithObject:objc_opt_class()];
    [APSupportedSecureEncodedClass addClasses:v9];
    objc_storeStrong(&v6->_secureFileManager, a3);
    v10 = [[NSMutableDictionary alloc] initWithCapacity:10];
    failedRequests = v6->_failedRequests;
    v6->_failedRequests = v10;

    v12 = [[APBackoffTimer alloc] initWithSchedule:0 name:@"LegacyRetryManager"];
    backoffLevels = v6->_backoffLevels;
    v6->_backoffLevels = v12;

    [(APBackoffTimer *)v6->_backoffLevels setDelegate:v6];
  }

  return v6;
}

- (void)start
{
  objc_initWeak(&location, self);
  v3 = os_transaction_create();
  v4 = [(APLegacyMetricRetryManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002AA6BC;
  block[3] = &unk_10047C9A0;
  objc_copyWeak(&v8, &location);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)registerMetricRequest:(id)a3
{
  v4 = a3;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = sub_1003943F4(v4);
    v7 = [v6 UUIDString];
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Registering server request %{public}@.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = os_transaction_create();
  v9 = [(APLegacyMetricRetryManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002AA904;
  block[3] = &unk_100463FC8;
  objc_copyWeak(&v15, buf);
  v13 = v4;
  v14 = v8;
  v10 = v8;
  v11 = v4;
  dispatch_async(v9, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)completeServerRequestId:(id)a3 serverFailureCount:(int64_t)a4 result:(int64_t)a5
{
  v8 = a3;
  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v19 = v8;
    v20 = 2048;
    v21 = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Completed server request %{public}@ with result '%ld'", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v10 = os_transaction_create();
  v11 = [(APLegacyMetricRetryManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002AAB28;
  block[3] = &unk_10047CF98;
  objc_copyWeak(v17, buf);
  v17[1] = a4;
  v17[2] = a5;
  v15 = v8;
  v16 = v10;
  v12 = v10;
  v13 = v8;
  dispatch_async(v11, block);

  objc_destroyWeak(v17);
  objc_destroyWeak(buf);
}

- (void)_registerMetricRequest:(id)a3
{
  v4 = a3;
  v5 = sub_1003943F4(v4);
  v6 = [v5 UUIDString];
  v7 = [(APLegacyMetricRetryManager *)self _pendingPath:v6];

  v8 = [(APLegacyMetricRetryManager *)self secureFileManager];
  v13 = 0;
  LODWORD(v6) = [v8 storeObject:v4 atPath:v7 error:&v13];
  v9 = v13;

  if (!v6 || v9)
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_1003943F4(v4);
      v12 = [v11 UUIDString];
      *buf = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unable to save server request %{public}@. %{public}@", buf, 0x16u);
    }
  }
}

- (void)_completeServerRequestId:(id)a3 serverFailureCount:(int64_t)a4 result:(int64_t)a5
{
  v8 = a3;
  if (a5 == 1)
  {
    v10 = [(APLegacyMetricRetryManager *)self _findPotentiallyDeliverableRequest];
    if (a4 < 2)
    {
      [(APLegacyMetricRetryManager *)self _markRequestAsFailed:v8];
      v16 = [(APLegacyMetricRetryManager *)self failedRequests];
      v17 = [v16 count];

      if (v17 <= 9)
      {
        v18 = [NSNumber numberWithInteger:a4 + 1];
        v19 = [(APLegacyMetricRetryManager *)self failedRequests];
        [v19 setObject:v18 forKeyedSubscript:v8];
      }
    }

    else
    {
      v11 = APLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v23 = 138543362;
        v24 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Giving up on request %{public}@. Exceeded maximum retry attempts.", &v23, 0xCu);
      }

      [(APLegacyMetricRetryManager *)self _removePendingRequest:v8];
    }

    if (v10)
    {
      [(APLegacyMetricRetryManager *)self _sendRequest:v10 responseCallback:0];
LABEL_19:

      goto LABEL_20;
    }
  }

  else
  {
    if (a5 == 2)
    {
      [(APLegacyMetricRetryManager *)self _markRequestsAsSucceeded:v8];
      v9 = APLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v23 = 138543362;
        v24 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Detected a successful transmission %{public}@.", &v23, 0xCu);
      }

      [(APLegacyMetricRetryManager *)self _retryFailedIfAvailable];
      v10 = [(APLegacyMetricRetryManager *)self backoffLevels];
      [v10 reset];
      goto LABEL_19;
    }

    [(APLegacyMetricRetryManager *)self _markRequestAsFailed:v8];
    v12 = [(APLegacyMetricRetryManager *)self failedRequests];
    v13 = [v12 count];

    if (v13 <= 9)
    {
      v14 = [NSNumber numberWithInteger:a4];
      v15 = [(APLegacyMetricRetryManager *)self failedRequests];
      [v15 setObject:v14 forKeyedSubscript:v8];
    }
  }

  v20 = [(APLegacyMetricRetryManager *)self backoffLevels];
  v21 = [(APLegacyMetricRetryManager *)self queue];
  v22 = [v20 scheduleNextLevelWithQueue:v21];

  if ((v22 & 1) == 0)
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error: Couldn't schedule Backoff Timer for Legacy Metric Retry Manager.", &v23, 2u);
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (id)_findPotentiallyDeliverableRequest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1002AB110;
  v10 = sub_1002AB120;
  v11 = 0;
  v2 = [(APLegacyMetricRetryManager *)self failedRequests];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002AB128;
  v5[3] = &unk_10047CFC0;
  v5[4] = &v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_retryFailedIfAvailable
{
  v3 = [(APLegacyMetricRetryManager *)self failedRequests];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(APLegacyMetricRetryManager *)self failedRequests];
    v6 = [v5 keyEnumerator];
    v7 = [v6 nextObject];

    [(APLegacyMetricRetryManager *)self _sendRequest:v7 responseCallback:0];
  }
}

- (void)_markRequestsAsSucceeded:(id)a3
{
  v4 = a3;
  v5 = [(APLegacyMetricRetryManager *)self _pendingPath:v4];
  v6 = [(APLegacyMetricRetryManager *)self secureFileManager];
  v10 = 0;
  v7 = [v6 removeObjectAtPath:v5 error:&v10];
  v8 = v10;

  if (!v7 || v8)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = v4;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to complete a request %{public}@. %{public}@", buf, 0x16u);
    }
  }
}

- (void)_markRequestAsFailed:(id)a3
{
  v4 = a3;
  v5 = [(APLegacyMetricRetryManager *)self secureFileManager];
  v6 = [(APLegacyMetricRetryManager *)self _pendingPath:v4];
  v7 = [(APLegacyMetricRetryManager *)self _failedPath:v4];
  v11 = 0;
  v8 = [v5 moveItemAtPath:v6 toPath:v7 error:&v11];
  v9 = v11;

  if (!v8 || v9)
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = v4;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unable to fail a request %{public}@. %{public}@", buf, 0x16u);
    }
  }
}

- (void)_removePendingRequest:(id)a3
{
  v4 = a3;
  v5 = [(APLegacyMetricRetryManager *)self secureFileManager];
  v6 = [(APLegacyMetricRetryManager *)self _pendingPath:v4];
  v10 = 0;
  v7 = [v5 removeObjectAtPath:v6 error:&v10];
  v8 = v10;

  if (!v7 || v8)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = v4;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to remove pending request %{public}@. %{public}@", buf, 0x16u);
    }
  }
}

- (void)_moveAllPendingRequestsToFailed
{
  v3 = [(APLegacyMetricRetryManager *)self secureFileManager];
  v15 = 0;
  v4 = [v3 contentsOfDirectoryAtPath:@"p" error:&v15];
  v5 = v15;

  if (!v4 || v5)
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unable list pending requests. %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(APLegacyMetricRetryManager *)self _markRequestAsFailed:*(*(&v11 + 1) + 8 * i), v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_loadFailedRequestsCache
{
  v3 = [(APLegacyMetricRetryManager *)self secureFileManager];
  v4 = [v3 contentsOfDirectoryAtPath:@"f" error:0];

  if ([v4 count])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002AB8E0;
    v8[3] = &unk_10047CFE8;
    v8[4] = self;
    [v4 enumerateObjectsUsingBlock:v8];
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(APLegacyMetricRetryManager *)self failedRequests];
      v7 = [v6 count];
      *buf = 134217984;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Loaded %lu failed items.", buf, 0xCu);
    }
  }
}

- (void)_sendRequest:(id)a3 responseCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v34 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Retrying request %{public}@.", buf, 0xCu);
  }

  v9 = [(APLegacyMetricRetryManager *)self failedRequests];
  v10 = [v9 objectForKeyedSubscript:v6];

  if (v10)
  {
    v11 = [(APLegacyMetricRetryManager *)self _pendingPath:v6];
    v12 = [(APLegacyMetricRetryManager *)self secureFileManager];
    v13 = [(APLegacyMetricRetryManager *)self _failedPath:v6];
    v32 = 0;
    v14 = [v12 moveItemAtPath:v13 toPath:v11 error:&v32];
    v15 = v32;

    v16 = [(APLegacyMetricRetryManager *)self failedRequests];
    v17 = [v16 count];

    v18 = [(APLegacyMetricRetryManager *)self failedRequests];
    v19 = v18;
    if (v17 == 1)
    {
      [v18 removeAllObjects];

      [(APLegacyMetricRetryManager *)self _loadFailedRequestsCache];
    }

    else
    {
      [v18 removeObjectForKey:v6];
    }

    if (v15)
    {
      v21 = 0;
    }

    else
    {
      v21 = v14;
    }

    if (v21)
    {
      v22 = [(APLegacyMetricRetryManager *)self secureFileManager];
      v30 = 0;
      v23 = [v22 objectStoredAtPath:v11 error:&v30];
      v20 = v30;

      if (v23 && !v20 && (sub_100394400(v23), v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
      {
        -[APLegacyMetricRetryManager _makeRequest:serverFailureCount:responseCallback:](self, "_makeRequest:serverFailureCount:responseCallback:", v23, [v10 longValue], v7);
      }

      else
      {
        v29 = APLogForCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v34 = v6;
          v35 = 2114;
          v36 = v20;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Unable to restore a request %{public}@. %{public}@", buf, 0x16u);
        }

        [(APLegacyMetricRetryManager *)self _removePendingRequest:v6];
        [(APLegacyMetricRetryManager *)self _retryFailedIfAvailable];
      }
    }

    else
    {
      v25 = APLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v34 = v6;
        v35 = 2114;
        v36 = v15;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Unable to queue a request %{public}@. %{public}@", buf, 0x16u);
      }

      v26 = [(APLegacyMetricRetryManager *)self secureFileManager];
      v27 = [(APLegacyMetricRetryManager *)self _failedPath:v6];
      v31 = v15;
      [v26 removeObjectAtPath:v27 error:&v31];
      v20 = v31;

      v28 = [(APLegacyMetricRetryManager *)self failedRequests];
      [v28 removeObjectForKey:v6];

      [(APLegacyMetricRetryManager *)self _retryFailedIfAvailable];
    }
  }

  else
  {
    v20 = APLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = v6;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Trying to send a request %{public}@ which is not in a list of failed requests.", buf, 0xCu);
    }
  }
}

- (void)_makeRequest:(id)a3 serverFailureCount:(int64_t)a4 responseCallback:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = os_transaction_create();
  v11 = [[APServerRetryRequester alloc] initFromServerRequest:v8];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002ABEF8;
  v16[3] = &unk_10047D010;
  objc_copyWeak(v21, &location);
  v12 = v8;
  v17 = v12;
  v21[1] = a4;
  v13 = v11;
  v18 = v13;
  v14 = v9;
  v20 = v14;
  v15 = v10;
  v19 = v15;
  [v13 makeRequest:v16];

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

- (void)backoffTimerFired
{
  v3 = os_transaction_create();
  [(APLegacyMetricRetryManager *)self _retryFailedIfAvailable];
}

+ (int64_t)resultForResponse:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = [a1 _resultForResponseStatusCode:objc_msgSend(a3 error:{"responseStatusCode"), v6}];

  return v7;
}

+ (int64_t)_resultForResponseStatusCode:(int64_t)a3 error:(id)a4
{
  v6 = [a4 domain];
  v7 = [v6 isEqualToString:NSURLErrorDomain];

  if (v7)
  {
    return 0;
  }

  v9 = 1;
  if (!a4)
  {
    v9 = 2;
  }

  if ((a3 - 300) >= 0xFFFFFFFFFFFFFF9CLL)
  {
    return v9;
  }

  else
  {
    return 1;
  }
}

@end