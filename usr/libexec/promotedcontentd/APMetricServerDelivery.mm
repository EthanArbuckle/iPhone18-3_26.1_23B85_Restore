@interface APMetricServerDelivery
- (APMetricServerDelivery)init;
- (BOOL)_shouldBackoffForDestination:(id)a3;
- (BOOL)processMetrics:(int64_t)a3 forChannel:(id)a4;
- (double)_periodicDelay;
- (id)_dataFromBatchDictionaries:(id)a3;
- (id)_determineBillable:(id)a3;
- (id)_dictionariesFromBatchesInStorage:(id)a3 useShelvedData:(BOOL)a4 channels:(id)a5 groupBatches:(BOOL)a6 batchInfos:(id *)a7 billing:(id *)a8;
- (id)_loadBatchesAsDataForChannel:(id)a3 useShelvedData:(BOOL)a4 groupBatches:(BOOL)a5 batchInfos:(id *)a6 billing:(id *)a7;
- (id)backoffTimerForDestination:(id)a3;
- (id)lastProcessingDateForDestination:(id)a3;
- (int64_t)backoffFromResponse:(id)a3;
- (void)_asyncProcessMetrics:(int64_t)a3 forChannel:(id)a4;
- (void)_configurePreparedDataObjects;
- (void)_sendPayload:(id)a3 successCompletionHandler:(id)a4;
- (void)_startTestCommandsListener;
- (void)_stopDeliveryTimer;
- (void)dealloc;
- (void)pause;
- (void)processServerDeliveryTimer;
- (void)resume;
- (void)setLastProcessingDate:(id)a3 forDestination:(id)a4;
- (void)startDeliveryTimer;
- (void)startTimer:(id)a3 withResponse:(id)a4;
- (void)withdrawShelvedBatchesForChannel:(id)a3 groupBatches:(BOOL)a4 withSaveObjectBlock:(id)a5;
@end

@implementation APMetricServerDelivery

- (void)startDeliveryTimer
{
  v3 = [(APMetricServerDelivery *)self serverDeliveryTimer];

  if (!v3)
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = [(APMetricServerDelivery *)v4 serverDeliveryTimer];
    if (!v5)
    {
      v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v4->_serverDeliveryQueue);
      [(APMetricServerDelivery *)v4 setServerDeliveryTimer:v5];
      if (v5)
      {
        objc_initWeak(location, v4);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1003377F4;
        v14[3] = &unk_10047C978;
        objc_copyWeak(&v15, location);
        v6 = objc_retainBlock(v14);
        [(APMetricServerDelivery *)v4 _periodicDelay];
        v8 = v7 * 1000000000.0;
        v9 = v8;
        v10 = dispatch_time(0, v8);
        dispatch_source_set_timer(v5, v10, v9, 0x37E11D600uLL);
        dispatch_source_set_event_handler(v5, v6);
        dispatch_resume(v5);
        v11 = APLogForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Start Metric Server Delivery Timer", v13, 2u);
        }

        objc_destroyWeak(&v15);
        objc_destroyWeak(location);
      }

      else
      {
        v12 = APLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          LOWORD(location[0]) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not create a dispatch timer!", location, 2u);
        }

        APSimulateCrash();
        v5 = 0;
      }
    }

    objc_sync_exit(v4);
  }
}

- (double)_periodicDelay
{
  if (qword_1004E6E40 != -1)
  {
    sub_100395394();
  }

  return *&qword_1004E6E38;
}

- (APMetricServerDelivery)init
{
  v27.receiver = self;
  v27.super_class = APMetricServerDelivery;
  v2 = [(APMetricServerDelivery *)&v27 init];
  if (v2)
  {
    v3 = objc_alloc_init(+[MetricsModuleClasses httpDeliveryClass]);
    httpDelivery = v2->_httpDelivery;
    v2->_httpDelivery = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.ap.pc.metrics.queue", v5);
    serverDeliveryQueue = v2->_serverDeliveryQueue;
    v2->_serverDeliveryQueue = v6;

    v8 = [[NSMutableSet alloc] initWithCapacity:2];
    processingDestinations = v2->_processingDestinations;
    v2->_processingDestinations = v8;

    v10 = objc_alloc_init(NSLock);
    processingDestinationsLock = v2->_processingDestinationsLock;
    v2->_processingDestinationsLock = v10;

    v12 = [[NSMutableDictionary alloc] initWithCapacity:2];
    lastProcessingDates = v2->_lastProcessingDates;
    v2->_lastProcessingDates = v12;

    v14 = [[NSMutableDictionary alloc] initWithCapacity:2];
    backoffTimers = v2->_backoffTimers;
    v2->_backoffTimers = v14;

    batchDeliveredClosure = v2->_batchDeliveredClosure;
    v2->_batchDeliveredClosure = 0;

    v17 = +[NSProcessInfo processInfo];
    v2->_isRunningTests = [v17 isRunningTests];

    [(APMetricServerDelivery *)v2 startDeliveryTimer];
    objc_initWeak(&location, v2);
    v18 = dispatch_time(0, 5000000000);
    v19 = [(APMetricServerDelivery *)v2 serverDeliveryQueue];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100337480;
    v24 = &unk_10047C978;
    objc_copyWeak(&v25, &location);
    dispatch_after(v18, v19, &v21);

    [(APMetricServerDelivery *)v2 _startTestCommandsListener:v21];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_startTestCommandsListener
{
  if (+[APSystemInternal isAppleInternalInstall])
  {
    objc_initWeak(&location, self);
    v3 = +[APTestingRig sharedInstance];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1003375B4;
    v4[3] = &unk_10047E930;
    objc_copyWeak(&v5, &location);
    [v3 subscribeForDictMessage:@"metrics-start-upload" handler:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)dealloc
{
  [(APMetricServerDelivery *)self _stopDeliveryTimer];
  v3.receiver = self;
  v3.super_class = APMetricServerDelivery;
  [(APMetricServerDelivery *)&v3 dealloc];
}

- (void)_stopDeliveryTimer
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(APMetricServerDelivery *)v2 serverDeliveryTimer];
  v4 = v3;
  if (v3)
  {
    dispatch_source_cancel(v3);
    [(APMetricServerDelivery *)v2 setServerDeliveryTimer:0];
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stop Metric Server Delivery Timer", v6, 2u);
    }
  }

  objc_sync_exit(v2);
}

- (id)lastProcessingDateForDestination:(id)a3
{
  v4 = a3;
  v5 = [(APMetricServerDelivery *)self lastProcessingDates];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = +[NSDate distantPast];
  }

  return v6;
}

- (void)setLastProcessingDate:(id)a3 forDestination:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(APMetricServerDelivery *)self lastProcessingDates];
  [v8 setObject:v7 forKey:v6];
}

- (id)backoffTimerForDestination:(id)a3
{
  v4 = a3;
  v5 = [(APMetricServerDelivery *)self backoffTimers];
  v6 = [v5 objectForKey:v4];
  if (!v6)
  {
    v7 = [APECBackoffTimer alloc];
    v8 = objc_alloc_init(APSystemClock);
    v6 = [(APECBackoffTimer *)v7 initWithClock:v8];

    [v5 setObject:v6 forKey:v4];
  }

  return v6;
}

- (id)_determineBillable:(id)a3
{
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v4)
  {
    v6 = 0;
LABEL_14:
    v14 = +[NSBundle mainBundle];
    v15 = [v14 bundleIdentifier];

    v6 = v15;
    goto LABEL_15;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *v18;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v17 + 1) + 8 * i);
      v11 = [v3 countForObject:v10];
      if (v11 > v7)
      {
        v12 = v11;
        v13 = v10;

        v6 = v13;
        v7 = v12;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v5);
  if (!v6 || ![v6 length])
  {
    goto LABEL_14;
  }

LABEL_15:

  return v6;
}

- (id)_dataFromBatchDictionaries:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = +[NSDate date];
    v5 = +[NSDateFormatter iso8601TruncatedToMinutes];
    v26 = v4;
    v6 = [v5 stringFromDate:v4];
    v7 = +[APSystemInfo osIdentifier];
    v8 = +[APDeviceInfo current];
    v9 = [v8 buildVersion];

    v10 = +[APDeviceInfo current];
    v11 = [v10 deviceModel];

    v29[0] = @"local_utc";
    v29[1] = @"batches";
    v30[0] = v6;
    v30[1] = v3;
    v29[2] = @"version";
    v29[3] = @"os";
    v30[2] = &off_100493480;
    v30[3] = v7;
    v29[4] = @"build";
    v29[5] = @"model";
    v30[4] = v9;
    v30[5] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:6];
    if (+[APSystemInternal isAppleInternalInstall])
    {
      v13 = [v12 mutableCopy];
      [v13 setValue:&__kCFBooleanTrue forKey:@"internal"];
      v14 = [NSDictionary dictionaryWithDictionary:v13];

      v15 = [NSUserDefaults alloc];
      v16 = [v15 initWithSuiteName:APDefaultsBundleID];
      v17 = [v16 BOOLForKey:kAPAutomationLoggingEnabled];

      if (v17)
      {
        v18 = APLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = [v14 jsonString];
          *buf = 138477827;
          v28 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Batch payload %{private}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v14 = v12;
    }

    v20 = [v14 jsonDataWithOptions:0x400000];
    v21 = APLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = [v20 length];
      *buf = 134217984;
      v28 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Batch payload size %lu", buf, 0xCu);
    }

    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v24 = APLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "NSJSONSerialization resulted in empty data!", buf, 2u);
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_sendPayload:(id)a3 successCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APMetricServerDelivery *)self httpDelivery];
  v23 = 0;
  v9 = [v8 sendPayload:v6 error:&v23];
  v10 = v23;
  v11 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  v12 = [v10 code];
  v13 = APLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    v25 = v12;
    v26 = 2114;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error (%ld) attempting to send batch: %{public}@", buf, 0x16u);
  }

  if (v12 == 8898)
  {
    v14 = APLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "sendData failed due to error code APMetricHTTPDeliveringErrorCodeMescalSigningFailed. Not sending batches.", buf, 2u);
    }
  }

  else
  {
LABEL_7:
    v15 = [v6 channel];
    v16 = [v15 destination];
    v14 = [(APMetricServerDelivery *)self backoffTimerForDestination:v16];

    v17 = [v9 statusCode];
    v18 = v17;
    if ((v17 - 200) > 0x63)
    {
      if (v11)
      {
        v19 = v17 == 0;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      if ((v17 - 400) < 0xC8 || v20)
      {
        if (v17 == 503)
        {
          [(APMetricServerDelivery *)self startTimer:v14 withResponse:v9];
        }

        else
        {
          [v14 startNextTimer];
        }
      }

      else
      {
        v21 = APLogForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v25 = v18;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Received unknown status code from response (%ld)!", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v17 == 202)
      {
        [(APMetricServerDelivery *)self startTimer:v14 withResponse:v9];
      }

      else
      {
        [v14 resetTimer];
      }

      v22 = [(APMetricServerDelivery *)self preparedDataServerDelivery];
      sub_100395124(v22);

      if (v7)
      {
        v7[2](v7, v18 != 202);
      }
    }
  }
}

- (void)startTimer:(id)a3 withResponse:(id)a4
{
  v7 = a3;
  v6 = [(APMetricServerDelivery *)self backoffFromResponse:a4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v7 startNextTimer];
  }

  else
  {
    [v7 startMinimumTimer:v6];
  }
}

- (int64_t)backoffFromResponse:(id)a3
{
  v3 = [a3 valueForHTTPHeaderField:@"Retry-After"];
  v4 = [v3 integerValue];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)processServerDeliveryTimer
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "server delivery timer fired", buf, 2u);
  }

  v4 = +[MetricsModule storage];
  v5 = [v4 activeChannels];
  [v4 closeActiveBatches];
  v32 = v4;
  v6 = [objc_opt_class() closedStoragePathPrefix];
  [APMetricStorage_private removeExpiredBatchesFromClosedPrefix:v6];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        if ([(APMetricServerDelivery *)self isRunningTests])
        {
          v14 = APLogForCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138739971;
            v39 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Timer fired, processing batch for channel: %{sensitive}@", buf, 0xCu);
          }
        }

        v15 = objc_autoreleasePoolPush();
        v16 = [(APMetricServerDelivery *)self processMetrics:1 forChannel:v13];
        objc_autoreleasePoolPop(v15);
        if ((v16 & 1) == 0)
        {
          v17 = APLogForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Unprocessed metrics cannot suspend timer", buf, 2u);
          }

          v11 = 0;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 1;
  }

  v18 = +[APMetricOffsetSettings settings];
  v19 = [v18 lastActivity];
  v20 = +[NSDate date];
  if (+[APSystemInternal isAppleInternalInstall])
  {
    v21 = [NSUserDefaults alloc];
    v22 = [v21 initWithSuiteName:APDefaultsBundleID];
    v23 = [v22 integerForKey:@"SuspendTimer"];
    if (v23 <= 0)
    {
      v24 = 600;
    }

    else
    {
      v24 = v23;
    }
  }

  else
  {
    v24 = 600;
  }

  v25 = APLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v33 = v18;
    v26 = [NSNumber numberWithBool:v11 & 1];
    [v20 timeIntervalSinceDate:v19];
    v27 = [NSNumber numberWithDouble:?];
    v28 = [NSNumber numberWithInteger:v24];
    [v20 timeIntervalSinceDate:v19];
    *buf = 138413058;
    v29 = @"NO";
    v39 = v26;
    if (v30 > v24)
    {
      v29 = @"YES";
    }

    v40 = 2112;
    v41 = v27;
    v42 = 2112;
    v43 = v28;
    v44 = 2112;
    v45 = v29;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Can suspend (%@), timer (%@), suspend time (%@)), ok to suspend (%@)", buf, 0x2Au);

    v18 = v33;
  }

  if (v11)
  {
    if (!v19 || ([v20 timeIntervalSinceDate:v19], v31 > v24))
    {
      [(APMetricServerDelivery *)self _stopDeliveryTimer];
    }
  }
}

- (BOOL)_shouldBackoffForDestination:(id)a3
{
  v4 = a3;
  v5 = [(APMetricServerDelivery *)self backoffTimerForDestination:v4];
  v6 = [v5 isWaitingForBackoff];
  if (v6)
  {
    v7 = +[NSISO8601DateFormatter apLocalSharedFormatter];
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 scheduledDate];
      v10 = [v7 stringFromDate:v9];
      v12 = 138740227;
      v13 = v4;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Metrics is in backoff for %{sensitive}@. Scheduled time: %{public}@", &v12, 0x16u);
    }
  }

  return v6;
}

- (id)_dictionariesFromBatchesInStorage:(id)a3 useShelvedData:(BOOL)a4 channels:(id)a5 groupBatches:(BOOL)a6 batchInfos:(id *)a7 billing:(id *)a8
{
  v10 = a6;
  v12 = a4;
  v44 = a3;
  v13 = a5;
  v14 = 0;
  v40 = a7;
  if (a7 && a8)
  {
    v41 = v13;
    v15 = [(APMetricServerDelivery *)self isRunningTests];
    if (v12)
    {
      v16 = [v41 firstObject];
      v17 = [v16 protectedEventChannel];
      v43 = [v44 closeShelvedBatchesForChannel:v17 groupBatches:v10];
    }

    else
    {
      v16 = [v41 mapObjectsUsingBlock:&stru_10047E970];
      v43 = [v44 closeBatchesForChannels:v16];
    }

    if (+[APSystemInternal isAppleInternalInstall])
    {
      v18 = [NSUserDefaults alloc];
      v19 = APDefaultsBundleID;
      v20 = [v18 initWithSuiteName:APDefaultsBundleID];
      v21 = [v20 objectForKey:@"minNumOfBatchesToSend"];

      if (v21)
      {
        v22 = [[NSUserDefaults alloc] initWithSuiteName:v19];
        v23 = [v22 integerForKey:@"minNumOfBatchesToSend"];

        if ([v43 count] < v23)
        {
          v14 = 0;
LABEL_33:

          v13 = v41;
          goto LABEL_34;
        }

        v24 = APLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = [v43 count];
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Number of batches %lu", &buf, 0xCu);
        }
      }
    }

    v25 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v43, "count")}];
    v46 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v43, "count")}];
    v48 = objc_alloc_init(NSCountedSet);
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v43;
    v49 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
    if (v49)
    {
      v47 = *v54;
      do
      {
        for (i = 0; i != v49; i = i + 1)
        {
          if (*v54 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v53 + 1) + 8 * i);
          *&buf = 0;
          *(&buf + 1) = &buf;
          v64 = 0x2020000000;
          v65 = 0;
          v50[0] = _NSConcreteStackBlock;
          v50[1] = 3221225472;
          v50[2] = sub_100338F3C;
          v50[3] = &unk_10047E998;
          p_buf = &buf;
          v51 = v48;
          v28 = [v27 serverDictionaryRepresentationWithBlock:v50];
          if (v28)
          {
            v29 = APLogForCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              v30 = a8;
              v31 = [v27 identifier];
              v32 = *(*(&buf + 1) + 24);
              v33 = [v28 jsonDataWithOptions:0x400000];
              v34 = [v33 length];
              *v57 = 138543874;
              v58 = v31;
              v59 = 2048;
              v60 = v32;
              v61 = 2048;
              v62 = v34;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Send batch %{public}@ with %lu metrics, batchSize %lu", v57, 0x20u);

              a8 = v30;
            }

            [v46 addObject:v28];
            v35 = objc_alloc_init(APMetricBatchInfo);
            v36 = [v27 identifier];
            [(APMetricBatchInfo *)v35 setIdentifier:v36];

            v37 = [v27 fileSystemToken];
            [(APMetricBatchInfo *)v35 setFileSystemToken:v37];

            -[APMetricBatchInfo setPurpose:](v35, "setPurpose:", [v27 purpose]);
            if (v15)
            {
              [(APMetricBatchInfo *)v35 setMetricsCount:*(*(&buf + 1) + 24)];
            }

            [v25 addObject:v35];
          }

          else
          {
            [v27 delete];
          }

          _Block_object_dispose(&buf, 8);
        }

        v49 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
      }

      while (v49);
    }

    *v40 = [v25 copy];
    if ([v46 count])
    {
      *a8 = [(APMetricServerDelivery *)self _determineBillable:v48];
      v14 = v46;
    }

    else
    {
      v38 = APLogForCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v41;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "No batches to send for channels: %@", &buf, 0xCu);
      }

      v14 = 0;
    }

    goto LABEL_33;
  }

LABEL_34:

  return v14;
}

- (id)_loadBatchesAsDataForChannel:(id)a3 useShelvedData:(BOOL)a4 groupBatches:(BOOL)a5 batchInfos:(id *)a6 billing:(id *)a7
{
  v8 = a5;
  v9 = a4;
  v11 = a3;
  v27 = +[MetricsModule storage];
  v12 = +[NSMutableArray array];
  v13 = +[NSMutableArray array];
  v14 = objc_autoreleasePoolPush();
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100339298;
  v37 = sub_1003392A8;
  v39 = v11;
  v38 = [NSArray arrayWithObjects:&v39 count:1];
  if (v8)
  {
    v15 = +[APECPurposeConfig purposeConfig:](APECPurposeConfig, "purposeConfig:", [v11 purpose]);
    v16 = [v15 allowedPurposes];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1003392B0;
    v30[3] = &unk_10047E9C0;
    v31 = v11;
    v32 = &v33;
    [v16 enumerateObjectsUsingBlock:v30];
  }

  v17 = v34[5];
  v28 = @"com.apple.ap.promotedcontentd";
  v29 = 0;
  v18 = [(APMetricServerDelivery *)self _dictionariesFromBatchesInStorage:v27 useShelvedData:v9 channels:v17 groupBatches:v8 batchInfos:&v29 billing:&v28, a7];
  v19 = v29;
  v20 = v28;
  _Block_object_dispose(&v33, 8);

  objc_autoreleasePoolPop(v14);
  if (v18)
  {
    [v12 addObjectsFromArray:v18];
    [v13 addObjectsFromArray:v19];
  }

  if (a6)
  {
    v21 = v13;
    *a6 = v13;
  }

  if (v26)
  {
    v22 = v20;
    *v26 = v20;
  }

  v23 = [(APMetricServerDelivery *)self _dataFromBatchDictionaries:v12];

  return v23;
}

- (BOOL)processMetrics:(int64_t)a3 forChannel:(id)a4
{
  v6 = a4;
  v7 = [(APMetricServerDelivery *)self isRunningTests];
  if (+[APSystemInternal isAppleInternalInstall]&& (v7 & 1) == 0)
  {
    v8 = [(APMetricServerDelivery *)self serverDeliveryQueue];
    dispatch_assert_queue_V2(v8);
  }

  v9 = os_transaction_create();
  if (v7)
  {
    goto LABEL_11;
  }

  v10 = +[APSigningAuthorityPoolManagerWrapper sharedInstance];
  if ([v10 isReady])
  {
    if ((byte_1004E6E48 & 1) == 0)
    {
      v11 = APLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138478083;
        *&buf[4] = v13;
        *&buf[12] = 2048;
        *&buf[14] = [v10 internalState];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{private}@] Signing is now ready so we can process metrics. State: %ld", buf, 0x16u);
      }

      byte_1004E6E48 = 1;
    }

LABEL_11:
    v10 = +[NSDate date];
    v14 = [v6 destination];
    v15 = [(APMetricServerDelivery *)self lastProcessingDateForDestination:v14];

    [v10 timeIntervalSinceDate:v15];
    v17 = v16;
    [(APMetricServerDelivery *)self _periodicDelay];
    if (a3 == 1 && v17 < v18 * 0.5 || ([v6 destination], v19 = objc_claimAutoreleasedReturnValue(), v20 = -[APMetricServerDelivery _shouldBackoffForDestination:](self, "_shouldBackoffForDestination:", v19), v19, (v20 & 1) != 0))
    {
      v21 = 0;
    }

    else
    {
      v24 = [(APMetricServerDelivery *)self processingDestinationsLock];
      v46 = [(APMetricServerDelivery *)self processingDestinations];
      [v24 lock];
      v25 = [v6 destination];
      v26 = [v46 containsObject:v25];

      if (v26)
      {
        [v24 unlock];
        v21 = 0;
      }

      else
      {
        v27 = [v6 destination];
        [v46 addObject:v27];

        [v24 unlock];
        v42 = +[MetricsModule storage];
        v28 = objc_autoreleasePoolPush();
        v53 = 0;
        v54 = 0;
        v45 = [(APMetricServerDelivery *)self _loadBatchesAsDataForChannel:v6 useShelvedData:0 groupBatches:1 batchInfos:&v54 billing:&v53];
        v43 = v54;
        v44 = v53;
        objc_autoreleasePoolPop(v28);
        if (v45)
        {
          v29 = v44 == 0;
        }

        else
        {
          v29 = 1;
        }

        v21 = v29;
        if (!v29)
        {
          v30 = APLogForCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            v31 = [v45 jsonRepresentationWithOptions:1];
            *buf = 138477827;
            *&buf[4] = v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Batch payload %{private}@", buf, 0xCu);
          }

          v32 = APLogForCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v33 = [v45 length];
            *buf = 134217984;
            *&buf[4] = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Batch payload size %lu", buf, 0xCu);
          }

          v34 = objc_alloc_init(APMetricPayload);
          [(APMetricPayload *)v34 setBatchesData:v45];
          [(APMetricPayload *)v34 setBilling:v44];
          [(APMetricPayload *)v34 setChannel:v6];
          [(APMetricPayload *)v34 setBatchInfos:v43];
          v35 = [(APMetricServerDelivery *)self fakeNetworkResponse];
          [(APMetricPayload *)v34 setFakeNetworkResponse:v35];

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v56 = 0;
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_100339AAC;
          v48[3] = &unk_10047E9E8;
          v52 = v7;
          v49 = v43;
          v50 = self;
          v51 = buf;
          [(APMetricServerDelivery *)self _sendPayload:v34 successCompletionHandler:v48];
          v36 = [v6 destination];
          [(APMetricServerDelivery *)self setLastProcessingDate:v10 forDestination:v36];

          if (*(*&buf[8] + 24) == 1)
          {
            v37 = [v6 protectedEventChannel];
            v38 = [v42 hasBacklogForChannel:v37];

            if (v38)
            {
              v39 = APLogForCategory();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *v47 = 0;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Starting metrics processing due to a long backlog.", v47, 2u);
              }

              [(APMetricServerDelivery *)self _asyncProcessMetrics:4 forChannel:v6];
            }
          }

          _Block_object_dispose(buf, 8);
        }

        [v24 lock];
        v40 = [v6 destination];
        [v46 removeObject:v40];

        [v24 unlock];
        v9 = 0;
      }
    }

LABEL_43:

    goto LABEL_44;
  }

  v22 = APLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Signing isn't ready yet so we can't send metrics.", buf, 2u);
  }

  if (byte_1004E6E48 == 1)
  {
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Signing authority pool manager status changed from 'success' to %ld", [v10 internalState]);
    v23 = APLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    CreateDiagnosticReport();
    v21 = 0;
    byte_1004E6E48 = 0;
    goto LABEL_43;
  }

  v21 = 0;
LABEL_44:

  return v21;
}

- (void)_asyncProcessMetrics:(int64_t)a3 forChannel:(id)a4
{
  v6 = a4;
  v7 = [(APMetricServerDelivery *)self serverDeliveryQueue];
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100339DA8;
  v9[3] = &unk_10047EA10;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)withdrawShelvedBatchesForChannel:(id)a3 groupBatches:(BOOL)a4 withSaveObjectBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = 0;
  v11 = 50;
  if (!v6)
  {
    v11 = 500;
  }

  v39 = v9;
  v32 = self;
  v12 = v11;
  v33 = v8;
  while (v12 >= 1)
  {
    v44 = v12 - 1;
    v40 = v12;
    context = objc_autoreleasePoolPush();
    v13 = objc_autoreleasePoolPush();
    v51 = 0;
    v52 = 0;
    v14 = [(APMetricServerDelivery *)self _loadBatchesAsDataForChannel:v8 useShelvedData:1 groupBatches:v6 batchInfos:&v52 billing:&v51];
    v45 = v52;
    v15 = v51;
    objc_autoreleasePoolPop(v13);
    if (v14)
    {
      v16 = [(APMetricServerDelivery *)self httpDelivery];
      v50 = 0;
      v41 = v16;
      v17 = [v16 buildMetricDeliveryRequestFromData:v14 toChannel:v8 billing:v15 signing:0 failIfSignatureIsNotAvailable:0 error:&v50];
      v42 = v50;
      if (v42)
      {
        v18 = v14;
        v19 = APLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v55 = v42;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to build metric delivery request: %{public}@", buf, 0xCu);
        }

        v14 = v18;
      }

      v20 = (v39)[2](v39, v17);
      if (v20)
      {
        v34 = v20;
        v35 = v17;
        v36 = v15;
        v37 = v14;
        v38 = v10;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v21 = v45;
        v22 = [v21 countByEnumeratingWithState:&v46 objects:v53 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v47;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v47 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v46 + 1) + 8 * i);
              v27 = APLogForCategory();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                v28 = [v26 identifier];
                *buf = 138543362;
                v55 = v28;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Deleting batch %{public}@", buf, 0xCu);
              }

              v29 = [v26 fileSystemToken];
              [APMetricBatch removeBatchByFileSystemToken:v29];
            }

            v23 = [v21 countByEnumeratingWithState:&v46 objects:v53 count:16];
          }

          while (v23);
        }

        self = v32;
        v8 = v33;
        v10 = v38;
        v15 = v36;
        v14 = v37;
        v17 = v35;
        v20 = v34;
      }

      v10 |= v20;
    }

    objc_autoreleasePoolPop(context);
    v12 = v44;
    if (!v14)
    {
      if (v40 != 1)
      {
        goto LABEL_25;
      }

      break;
    }
  }

  APSimulateCrashNoKillProcess();
LABEL_25:
  if (v10)
  {
    v30 = [(APMetricServerDelivery *)self preparedDataServerDelivery];
    sub_10032EF10(v30);

    v31 = [(APMetricServerDelivery *)self preparedUnsignedDataProcessor];
    sub_100327FB0(v31);
  }
}

- (void)pause
{
  v3 = [(APMetricServerDelivery *)self serverDeliveryTimer];
  [(APMetricServerDelivery *)self setServerDeliveryTimerWasRunningWhenPaused:v3 != 0];

  if ([(APMetricServerDelivery *)self serverDeliveryTimerWasRunningWhenPaused])
  {
    [(APMetricServerDelivery *)self _stopDeliveryTimer];
  }

  v4 = [(APMetricServerDelivery *)self serverDeliveryQueue];
  dispatch_suspend(v4);

  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Suspended server delivery.", v6, 2u);
  }
}

- (void)resume
{
  v3 = [(APMetricServerDelivery *)self serverDeliveryQueue];
  dispatch_resume(v3);

  if ([(APMetricServerDelivery *)self serverDeliveryTimerWasRunningWhenPaused])
  {
    [(APMetricServerDelivery *)self startDeliveryTimer];
  }

  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Resumed server delivery.", v5, 2u);
  }
}

- (void)_configurePreparedDataObjects
{
  v3 = +[APMetricStorage_private metricsFileManager];
  v4 = [APMetricPreparedDataServerDelivery alloc];
  v5 = +[MetricsModule storage];
  v6 = sub_10032ECDC(&v4->super.isa, v5, self->_serverDeliveryQueue, self->_httpDelivery, v3);
  [(APMetricServerDelivery *)self setPreparedDataServerDelivery:v6];

  v7 = [APMetricPreparedUnsignedDataProcessor alloc];
  v8 = +[MetricsModule storage];
  v9 = sub_100327D4C(&v7->super.isa, v8, self->_serverDeliveryQueue, v3);
  [(APMetricServerDelivery *)self setPreparedUnsignedDataProcessor:v9];

  objc_initWeak(&location, self);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10033A4F8;
  v15 = &unk_10047C978;
  objc_copyWeak(&v16, &location);
  sub_1003946B8(self->_preparedUnsignedDataProcessor, &v12);
  v10 = [(APMetricServerDelivery *)self preparedUnsignedDataProcessor:v12];
  sub_100327FB0(v10);

  v11 = [(APMetricServerDelivery *)self preparedDataServerDelivery];
  sub_10032EF10(v11);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

@end