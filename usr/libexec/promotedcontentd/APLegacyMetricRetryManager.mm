@interface APLegacyMetricRetryManager
+ (int64_t)_resultForResponseStatusCode:(int64_t)code error:(id)error;
+ (int64_t)resultForResponse:(id)response error:(id)error;
- (APLegacyMetricRetryManager)init;
- (APLegacyMetricRetryManager)initWithSecureFileManager:(id)manager;
- (id)_findPotentiallyDeliverableRequest;
- (void)_completeServerRequestId:(id)id serverFailureCount:(int64_t)count result:(int64_t)result;
- (void)_loadFailedRequestsCache;
- (void)_makeRequest:(id)request serverFailureCount:(int64_t)count responseCallback:(id)callback;
- (void)_markRequestAsFailed:(id)failed;
- (void)_markRequestsAsSucceeded:(id)succeeded;
- (void)_moveAllPendingRequestsToFailed;
- (void)_registerMetricRequest:(id)request;
- (void)_removePendingRequest:(id)request;
- (void)_retryFailedIfAvailable;
- (void)_sendRequest:(id)request responseCallback:(id)callback;
- (void)backoffTimerFired;
- (void)completeServerRequestId:(id)id serverFailureCount:(int64_t)count result:(int64_t)result;
- (void)registerMetricRequest:(id)request;
- (void)start;
@end

@implementation APLegacyMetricRetryManager

- (APLegacyMetricRetryManager)init
{
  v3 = [[APStorageManager alloc] initWithPathPrefix:@"l"];
  v4 = [(APLegacyMetricRetryManager *)self initWithSecureFileManager:v3];

  return v4;
}

- (APLegacyMetricRetryManager)initWithSecureFileManager:(id)manager
{
  managerCopy = manager;
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
    objc_storeStrong(&v6->_secureFileManager, manager);
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
  queue = [(APLegacyMetricRetryManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002AA6BC;
  block[3] = &unk_10047C9A0;
  objc_copyWeak(&v8, &location);
  v7 = v3;
  v5 = v3;
  dispatch_async(queue, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)registerMetricRequest:(id)request
{
  requestCopy = request;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = sub_1003943F4(requestCopy);
    uUIDString = [v6 UUIDString];
    *buf = 138543362;
    v17 = uUIDString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Registering server request %{public}@.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = os_transaction_create();
  queue = [(APLegacyMetricRetryManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002AA904;
  block[3] = &unk_100463FC8;
  objc_copyWeak(&v15, buf);
  v13 = requestCopy;
  v14 = v8;
  v10 = v8;
  v11 = requestCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)completeServerRequestId:(id)id serverFailureCount:(int64_t)count result:(int64_t)result
{
  idCopy = id;
  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v19 = idCopy;
    v20 = 2048;
    resultCopy = result;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Completed server request %{public}@ with result '%ld'", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v10 = os_transaction_create();
  queue = [(APLegacyMetricRetryManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002AAB28;
  block[3] = &unk_10047CF98;
  objc_copyWeak(v17, buf);
  v17[1] = count;
  v17[2] = result;
  v15 = idCopy;
  v16 = v10;
  v12 = v10;
  v13 = idCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v17);
  objc_destroyWeak(buf);
}

- (void)_registerMetricRequest:(id)request
{
  requestCopy = request;
  v5 = sub_1003943F4(requestCopy);
  uUIDString = [v5 UUIDString];
  v7 = [(APLegacyMetricRetryManager *)self _pendingPath:uUIDString];

  secureFileManager = [(APLegacyMetricRetryManager *)self secureFileManager];
  v13 = 0;
  LODWORD(uUIDString) = [secureFileManager storeObject:requestCopy atPath:v7 error:&v13];
  v9 = v13;

  if (!uUIDString || v9)
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_1003943F4(requestCopy);
      uUIDString2 = [v11 UUIDString];
      *buf = 138543618;
      v15 = uUIDString2;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unable to save server request %{public}@. %{public}@", buf, 0x16u);
    }
  }
}

- (void)_completeServerRequestId:(id)id serverFailureCount:(int64_t)count result:(int64_t)result
{
  idCopy = id;
  if (result == 1)
  {
    _findPotentiallyDeliverableRequest = [(APLegacyMetricRetryManager *)self _findPotentiallyDeliverableRequest];
    if (count < 2)
    {
      [(APLegacyMetricRetryManager *)self _markRequestAsFailed:idCopy];
      failedRequests = [(APLegacyMetricRetryManager *)self failedRequests];
      v17 = [failedRequests count];

      if (v17 <= 9)
      {
        v18 = [NSNumber numberWithInteger:count + 1];
        failedRequests2 = [(APLegacyMetricRetryManager *)self failedRequests];
        [failedRequests2 setObject:v18 forKeyedSubscript:idCopy];
      }
    }

    else
    {
      v11 = APLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v23 = 138543362;
        v24 = idCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Giving up on request %{public}@. Exceeded maximum retry attempts.", &v23, 0xCu);
      }

      [(APLegacyMetricRetryManager *)self _removePendingRequest:idCopy];
    }

    if (_findPotentiallyDeliverableRequest)
    {
      [(APLegacyMetricRetryManager *)self _sendRequest:_findPotentiallyDeliverableRequest responseCallback:0];
LABEL_19:

      goto LABEL_20;
    }
  }

  else
  {
    if (result == 2)
    {
      [(APLegacyMetricRetryManager *)self _markRequestsAsSucceeded:idCopy];
      v9 = APLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v23 = 138543362;
        v24 = idCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Detected a successful transmission %{public}@.", &v23, 0xCu);
      }

      [(APLegacyMetricRetryManager *)self _retryFailedIfAvailable];
      _findPotentiallyDeliverableRequest = [(APLegacyMetricRetryManager *)self backoffLevels];
      [_findPotentiallyDeliverableRequest reset];
      goto LABEL_19;
    }

    [(APLegacyMetricRetryManager *)self _markRequestAsFailed:idCopy];
    failedRequests3 = [(APLegacyMetricRetryManager *)self failedRequests];
    v13 = [failedRequests3 count];

    if (v13 <= 9)
    {
      v14 = [NSNumber numberWithInteger:count];
      failedRequests4 = [(APLegacyMetricRetryManager *)self failedRequests];
      [failedRequests4 setObject:v14 forKeyedSubscript:idCopy];
    }
  }

  backoffLevels = [(APLegacyMetricRetryManager *)self backoffLevels];
  queue = [(APLegacyMetricRetryManager *)self queue];
  v22 = [backoffLevels scheduleNextLevelWithQueue:queue];

  if ((v22 & 1) == 0)
  {
    _findPotentiallyDeliverableRequest = APLogForCategory();
    if (os_log_type_enabled(_findPotentiallyDeliverableRequest, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, _findPotentiallyDeliverableRequest, OS_LOG_TYPE_ERROR, "Error: Couldn't schedule Backoff Timer for Legacy Metric Retry Manager.", &v23, 2u);
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
  failedRequests = [(APLegacyMetricRetryManager *)self failedRequests];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002AB128;
  v5[3] = &unk_10047CFC0;
  v5[4] = &v6;
  [failedRequests enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_retryFailedIfAvailable
{
  failedRequests = [(APLegacyMetricRetryManager *)self failedRequests];
  v4 = [failedRequests count];

  if (v4)
  {
    failedRequests2 = [(APLegacyMetricRetryManager *)self failedRequests];
    keyEnumerator = [failedRequests2 keyEnumerator];
    nextObject = [keyEnumerator nextObject];

    [(APLegacyMetricRetryManager *)self _sendRequest:nextObject responseCallback:0];
  }
}

- (void)_markRequestsAsSucceeded:(id)succeeded
{
  succeededCopy = succeeded;
  v5 = [(APLegacyMetricRetryManager *)self _pendingPath:succeededCopy];
  secureFileManager = [(APLegacyMetricRetryManager *)self secureFileManager];
  v10 = 0;
  v7 = [secureFileManager removeObjectAtPath:v5 error:&v10];
  v8 = v10;

  if (!v7 || v8)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = succeededCopy;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to complete a request %{public}@. %{public}@", buf, 0x16u);
    }
  }
}

- (void)_markRequestAsFailed:(id)failed
{
  failedCopy = failed;
  secureFileManager = [(APLegacyMetricRetryManager *)self secureFileManager];
  v6 = [(APLegacyMetricRetryManager *)self _pendingPath:failedCopy];
  v7 = [(APLegacyMetricRetryManager *)self _failedPath:failedCopy];
  v11 = 0;
  v8 = [secureFileManager moveItemAtPath:v6 toPath:v7 error:&v11];
  v9 = v11;

  if (!v8 || v9)
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = failedCopy;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unable to fail a request %{public}@. %{public}@", buf, 0x16u);
    }
  }
}

- (void)_removePendingRequest:(id)request
{
  requestCopy = request;
  secureFileManager = [(APLegacyMetricRetryManager *)self secureFileManager];
  v6 = [(APLegacyMetricRetryManager *)self _pendingPath:requestCopy];
  v10 = 0;
  v7 = [secureFileManager removeObjectAtPath:v6 error:&v10];
  v8 = v10;

  if (!v7 || v8)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = requestCopy;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to remove pending request %{public}@. %{public}@", buf, 0x16u);
    }
  }
}

- (void)_moveAllPendingRequestsToFailed
{
  secureFileManager = [(APLegacyMetricRetryManager *)self secureFileManager];
  v15 = 0;
  v4 = [secureFileManager contentsOfDirectoryAtPath:@"p" error:&v15];
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
  secureFileManager = [(APLegacyMetricRetryManager *)self secureFileManager];
  v4 = [secureFileManager contentsOfDirectoryAtPath:@"f" error:0];

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
      failedRequests = [(APLegacyMetricRetryManager *)self failedRequests];
      v7 = [failedRequests count];
      *buf = 134217984;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Loaded %lu failed items.", buf, 0xCu);
    }
  }
}

- (void)_sendRequest:(id)request responseCallback:(id)callback
{
  requestCopy = request;
  callbackCopy = callback;
  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v34 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Retrying request %{public}@.", buf, 0xCu);
  }

  failedRequests = [(APLegacyMetricRetryManager *)self failedRequests];
  v10 = [failedRequests objectForKeyedSubscript:requestCopy];

  if (v10)
  {
    v11 = [(APLegacyMetricRetryManager *)self _pendingPath:requestCopy];
    secureFileManager = [(APLegacyMetricRetryManager *)self secureFileManager];
    v13 = [(APLegacyMetricRetryManager *)self _failedPath:requestCopy];
    v32 = 0;
    v14 = [secureFileManager moveItemAtPath:v13 toPath:v11 error:&v32];
    v15 = v32;

    failedRequests2 = [(APLegacyMetricRetryManager *)self failedRequests];
    v17 = [failedRequests2 count];

    failedRequests3 = [(APLegacyMetricRetryManager *)self failedRequests];
    v19 = failedRequests3;
    if (v17 == 1)
    {
      [failedRequests3 removeAllObjects];

      [(APLegacyMetricRetryManager *)self _loadFailedRequestsCache];
    }

    else
    {
      [failedRequests3 removeObjectForKey:requestCopy];
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
      secureFileManager2 = [(APLegacyMetricRetryManager *)self secureFileManager];
      v30 = 0;
      v23 = [secureFileManager2 objectStoredAtPath:v11 error:&v30];
      v20 = v30;

      if (v23 && !v20 && (sub_100394400(v23), v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
      {
        -[APLegacyMetricRetryManager _makeRequest:serverFailureCount:responseCallback:](self, "_makeRequest:serverFailureCount:responseCallback:", v23, [v10 longValue], callbackCopy);
      }

      else
      {
        v29 = APLogForCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v34 = requestCopy;
          v35 = 2114;
          v36 = v20;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Unable to restore a request %{public}@. %{public}@", buf, 0x16u);
        }

        [(APLegacyMetricRetryManager *)self _removePendingRequest:requestCopy];
        [(APLegacyMetricRetryManager *)self _retryFailedIfAvailable];
      }
    }

    else
    {
      v25 = APLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v34 = requestCopy;
        v35 = 2114;
        v36 = v15;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Unable to queue a request %{public}@. %{public}@", buf, 0x16u);
      }

      secureFileManager3 = [(APLegacyMetricRetryManager *)self secureFileManager];
      v27 = [(APLegacyMetricRetryManager *)self _failedPath:requestCopy];
      v31 = v15;
      [secureFileManager3 removeObjectAtPath:v27 error:&v31];
      v20 = v31;

      failedRequests4 = [(APLegacyMetricRetryManager *)self failedRequests];
      [failedRequests4 removeObjectForKey:requestCopy];

      [(APLegacyMetricRetryManager *)self _retryFailedIfAvailable];
    }
  }

  else
  {
    v20 = APLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = requestCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Trying to send a request %{public}@ which is not in a list of failed requests.", buf, 0xCu);
    }
  }
}

- (void)_makeRequest:(id)request serverFailureCount:(int64_t)count responseCallback:(id)callback
{
  requestCopy = request;
  callbackCopy = callback;
  objc_initWeak(&location, self);
  v10 = os_transaction_create();
  v11 = [[APServerRetryRequester alloc] initFromServerRequest:requestCopy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002ABEF8;
  v16[3] = &unk_10047D010;
  objc_copyWeak(v21, &location);
  v12 = requestCopy;
  v17 = v12;
  v21[1] = count;
  v13 = v11;
  v18 = v13;
  v14 = callbackCopy;
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

+ (int64_t)resultForResponse:(id)response error:(id)error
{
  errorCopy = error;
  v7 = [self _resultForResponseStatusCode:objc_msgSend(response error:{"responseStatusCode"), errorCopy}];

  return v7;
}

+ (int64_t)_resultForResponseStatusCode:(int64_t)code error:(id)error
{
  domain = [error domain];
  v7 = [domain isEqualToString:NSURLErrorDomain];

  if (v7)
  {
    return 0;
  }

  v9 = 1;
  if (!error)
  {
    v9 = 2;
  }

  if ((code - 300) >= 0xFFFFFFFFFFFFFF9CLL)
  {
    return v9;
  }

  else
  {
    return 1;
  }
}

@end