@interface APMetricServerDelivery
- (APMetricServerDelivery)init;
- (BOOL)_shouldBackoffForDestination:(id)destination;
- (BOOL)processMetrics:(int64_t)metrics forChannel:(id)channel;
- (double)_periodicDelay;
- (id)_dataFromBatchDictionaries:(id)dictionaries;
- (id)_determineBillable:(id)billable;
- (id)_dictionariesFromBatchesInStorage:(id)storage useShelvedData:(BOOL)data channels:(id)channels groupBatches:(BOOL)batches batchInfos:(id *)infos billing:(id *)billing;
- (id)_loadBatchesAsDataForChannel:(id)channel useShelvedData:(BOOL)data groupBatches:(BOOL)batches batchInfos:(id *)infos billing:(id *)billing;
- (id)backoffTimerForDestination:(id)destination;
- (id)lastProcessingDateForDestination:(id)destination;
- (int64_t)backoffFromResponse:(id)response;
- (void)_asyncProcessMetrics:(int64_t)metrics forChannel:(id)channel;
- (void)_configurePreparedDataObjects;
- (void)_sendPayload:(id)payload successCompletionHandler:(id)handler;
- (void)_startTestCommandsListener;
- (void)_stopDeliveryTimer;
- (void)dealloc;
- (void)pause;
- (void)processServerDeliveryTimer;
- (void)resume;
- (void)setLastProcessingDate:(id)date forDestination:(id)destination;
- (void)startDeliveryTimer;
- (void)startTimer:(id)timer withResponse:(id)response;
- (void)withdrawShelvedBatchesForChannel:(id)channel groupBatches:(BOOL)batches withSaveObjectBlock:(id)block;
@end

@implementation APMetricServerDelivery

- (void)startDeliveryTimer
{
  serverDeliveryTimer = [(APMetricServerDelivery *)self serverDeliveryTimer];

  if (!serverDeliveryTimer)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    serverDeliveryTimer2 = [(APMetricServerDelivery *)selfCopy serverDeliveryTimer];
    if (!serverDeliveryTimer2)
    {
      serverDeliveryTimer2 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, selfCopy->_serverDeliveryQueue);
      [(APMetricServerDelivery *)selfCopy setServerDeliveryTimer:serverDeliveryTimer2];
      if (serverDeliveryTimer2)
      {
        objc_initWeak(location, selfCopy);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1003377F4;
        v14[3] = &unk_10047C978;
        objc_copyWeak(&v15, location);
        v6 = objc_retainBlock(v14);
        [(APMetricServerDelivery *)selfCopy _periodicDelay];
        v8 = v7 * 1000000000.0;
        v9 = v8;
        v10 = dispatch_time(0, v8);
        dispatch_source_set_timer(serverDeliveryTimer2, v10, v9, 0x37E11D600uLL);
        dispatch_source_set_event_handler(serverDeliveryTimer2, v6);
        dispatch_resume(serverDeliveryTimer2);
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
        serverDeliveryTimer2 = 0;
      }
    }

    objc_sync_exit(selfCopy);
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
    serverDeliveryQueue = [(APMetricServerDelivery *)v2 serverDeliveryQueue];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100337480;
    v24 = &unk_10047C978;
    objc_copyWeak(&v25, &location);
    dispatch_after(v18, serverDeliveryQueue, &v21);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  serverDeliveryTimer = [(APMetricServerDelivery *)selfCopy serverDeliveryTimer];
  v4 = serverDeliveryTimer;
  if (serverDeliveryTimer)
  {
    dispatch_source_cancel(serverDeliveryTimer);
    [(APMetricServerDelivery *)selfCopy setServerDeliveryTimer:0];
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stop Metric Server Delivery Timer", v6, 2u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)lastProcessingDateForDestination:(id)destination
{
  destinationCopy = destination;
  lastProcessingDates = [(APMetricServerDelivery *)self lastProcessingDates];
  v6 = [lastProcessingDates objectForKey:destinationCopy];

  if (!v6)
  {
    v6 = +[NSDate distantPast];
  }

  return v6;
}

- (void)setLastProcessingDate:(id)date forDestination:(id)destination
{
  destinationCopy = destination;
  dateCopy = date;
  lastProcessingDates = [(APMetricServerDelivery *)self lastProcessingDates];
  [lastProcessingDates setObject:dateCopy forKey:destinationCopy];
}

- (id)backoffTimerForDestination:(id)destination
{
  destinationCopy = destination;
  backoffTimers = [(APMetricServerDelivery *)self backoffTimers];
  v6 = [backoffTimers objectForKey:destinationCopy];
  if (!v6)
  {
    v7 = [APECBackoffTimer alloc];
    v8 = objc_alloc_init(APSystemClock);
    v6 = [(APECBackoffTimer *)v7 initWithClock:v8];

    [backoffTimers setObject:v6 forKey:destinationCopy];
  }

  return v6;
}

- (id)_determineBillable:(id)billable
{
  billableCopy = billable;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [billableCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v4)
  {
    v6 = 0;
LABEL_14:
    v14 = +[NSBundle mainBundle];
    bundleIdentifier = [v14 bundleIdentifier];

    v6 = bundleIdentifier;
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
        objc_enumerationMutation(billableCopy);
      }

      v10 = *(*(&v17 + 1) + 8 * i);
      v11 = [billableCopy countForObject:v10];
      if (v11 > v7)
      {
        v12 = v11;
        v13 = v10;

        v6 = v13;
        v7 = v12;
      }
    }

    v5 = [billableCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v5);
  if (!v6 || ![v6 length])
  {
    goto LABEL_14;
  }

LABEL_15:

  return v6;
}

- (id)_dataFromBatchDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  if ([dictionariesCopy count])
  {
    v4 = +[NSDate date];
    v5 = +[NSDateFormatter iso8601TruncatedToMinutes];
    v26 = v4;
    v6 = [v5 stringFromDate:v4];
    v7 = +[APSystemInfo osIdentifier];
    v8 = +[APDeviceInfo current];
    buildVersion = [v8 buildVersion];

    v10 = +[APDeviceInfo current];
    deviceModel = [v10 deviceModel];

    v29[0] = @"local_utc";
    v29[1] = @"batches";
    v30[0] = v6;
    v30[1] = dictionariesCopy;
    v29[2] = @"version";
    v29[3] = @"os";
    v30[2] = &off_100493480;
    v30[3] = v7;
    v29[4] = @"build";
    v29[5] = @"model";
    v30[4] = buildVersion;
    v30[5] = deviceModel;
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
          jsonString = [v14 jsonString];
          *buf = 138477827;
          v28 = jsonString;
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

- (void)_sendPayload:(id)payload successCompletionHandler:(id)handler
{
  payloadCopy = payload;
  handlerCopy = handler;
  httpDelivery = [(APMetricServerDelivery *)self httpDelivery];
  v23 = 0;
  v9 = [httpDelivery sendPayload:payloadCopy error:&v23];
  v10 = v23;
  v11 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  code = [v10 code];
  v13 = APLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    v25 = code;
    v26 = 2114;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error (%ld) attempting to send batch: %{public}@", buf, 0x16u);
  }

  if (code == 8898)
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
    channel = [payloadCopy channel];
    destination = [channel destination];
    v14 = [(APMetricServerDelivery *)self backoffTimerForDestination:destination];

    statusCode = [v9 statusCode];
    v18 = statusCode;
    if ((statusCode - 200) > 0x63)
    {
      if (v11)
      {
        v19 = statusCode == 0;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      if ((statusCode - 400) < 0xC8 || v20)
      {
        if (statusCode == 503)
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
      if (statusCode == 202)
      {
        [(APMetricServerDelivery *)self startTimer:v14 withResponse:v9];
      }

      else
      {
        [v14 resetTimer];
      }

      preparedDataServerDelivery = [(APMetricServerDelivery *)self preparedDataServerDelivery];
      sub_100395124(preparedDataServerDelivery);

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, v18 != 202);
      }
    }
  }
}

- (void)startTimer:(id)timer withResponse:(id)response
{
  timerCopy = timer;
  v6 = [(APMetricServerDelivery *)self backoffFromResponse:response];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [timerCopy startNextTimer];
  }

  else
  {
    [timerCopy startMinimumTimer:v6];
  }
}

- (int64_t)backoffFromResponse:(id)response
{
  v3 = [response valueForHTTPHeaderField:@"Retry-After"];
  integerValue = [v3 integerValue];
  if (integerValue)
  {
    v5 = integerValue;
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
  activeChannels = [v4 activeChannels];
  [v4 closeActiveBatches];
  v32 = v4;
  closedStoragePathPrefix = [objc_opt_class() closedStoragePathPrefix];
  [APMetricStorage_private removeExpiredBatchesFromClosedPrefix:closedStoragePathPrefix];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = activeChannels;
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
  lastActivity = [v18 lastActivity];
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
    [v20 timeIntervalSinceDate:lastActivity];
    v27 = [NSNumber numberWithDouble:?];
    v28 = [NSNumber numberWithInteger:v24];
    [v20 timeIntervalSinceDate:lastActivity];
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
    if (!lastActivity || ([v20 timeIntervalSinceDate:lastActivity], v31 > v24))
    {
      [(APMetricServerDelivery *)self _stopDeliveryTimer];
    }
  }
}

- (BOOL)_shouldBackoffForDestination:(id)destination
{
  destinationCopy = destination;
  v5 = [(APMetricServerDelivery *)self backoffTimerForDestination:destinationCopy];
  isWaitingForBackoff = [v5 isWaitingForBackoff];
  if (isWaitingForBackoff)
  {
    v7 = +[NSISO8601DateFormatter apLocalSharedFormatter];
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      scheduledDate = [v5 scheduledDate];
      v10 = [v7 stringFromDate:scheduledDate];
      v12 = 138740227;
      v13 = destinationCopy;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Metrics is in backoff for %{sensitive}@. Scheduled time: %{public}@", &v12, 0x16u);
    }
  }

  return isWaitingForBackoff;
}

- (id)_dictionariesFromBatchesInStorage:(id)storage useShelvedData:(BOOL)data channels:(id)channels groupBatches:(BOOL)batches batchInfos:(id *)infos billing:(id *)billing
{
  batchesCopy = batches;
  dataCopy = data;
  storageCopy = storage;
  channelsCopy = channels;
  v14 = 0;
  infosCopy = infos;
  if (infos && billing)
  {
    v41 = channelsCopy;
    isRunningTests = [(APMetricServerDelivery *)self isRunningTests];
    if (dataCopy)
    {
      firstObject = [v41 firstObject];
      protectedEventChannel = [firstObject protectedEventChannel];
      v43 = [storageCopy closeShelvedBatchesForChannel:protectedEventChannel groupBatches:batchesCopy];
    }

    else
    {
      firstObject = [v41 mapObjectsUsingBlock:&stru_10047E970];
      v43 = [storageCopy closeBatchesForChannels:firstObject];
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

          channelsCopy = v41;
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
              billingCopy = billing;
              identifier = [v27 identifier];
              v32 = *(*(&buf + 1) + 24);
              v33 = [v28 jsonDataWithOptions:0x400000];
              v34 = [v33 length];
              *v57 = 138543874;
              v58 = identifier;
              v59 = 2048;
              v60 = v32;
              v61 = 2048;
              v62 = v34;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Send batch %{public}@ with %lu metrics, batchSize %lu", v57, 0x20u);

              billing = billingCopy;
            }

            [v46 addObject:v28];
            v35 = objc_alloc_init(APMetricBatchInfo);
            identifier2 = [v27 identifier];
            [(APMetricBatchInfo *)v35 setIdentifier:identifier2];

            fileSystemToken = [v27 fileSystemToken];
            [(APMetricBatchInfo *)v35 setFileSystemToken:fileSystemToken];

            -[APMetricBatchInfo setPurpose:](v35, "setPurpose:", [v27 purpose]);
            if (isRunningTests)
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

    *infosCopy = [v25 copy];
    if ([v46 count])
    {
      *billing = [(APMetricServerDelivery *)self _determineBillable:v48];
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

- (id)_loadBatchesAsDataForChannel:(id)channel useShelvedData:(BOOL)data groupBatches:(BOOL)batches batchInfos:(id *)infos billing:(id *)billing
{
  batchesCopy = batches;
  dataCopy = data;
  channelCopy = channel;
  v27 = +[MetricsModule storage];
  v12 = +[NSMutableArray array];
  v13 = +[NSMutableArray array];
  v14 = objc_autoreleasePoolPush();
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100339298;
  v37 = sub_1003392A8;
  v39 = channelCopy;
  v38 = [NSArray arrayWithObjects:&v39 count:1];
  if (batchesCopy)
  {
    v15 = +[APECPurposeConfig purposeConfig:](APECPurposeConfig, "purposeConfig:", [channelCopy purpose]);
    allowedPurposes = [v15 allowedPurposes];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1003392B0;
    v30[3] = &unk_10047E9C0;
    v31 = channelCopy;
    v32 = &v33;
    [allowedPurposes enumerateObjectsUsingBlock:v30];
  }

  v17 = v34[5];
  v28 = @"com.apple.ap.promotedcontentd";
  v29 = 0;
  billing = [(APMetricServerDelivery *)self _dictionariesFromBatchesInStorage:v27 useShelvedData:dataCopy channels:v17 groupBatches:batchesCopy batchInfos:&v29 billing:&v28, billing];
  v19 = v29;
  v20 = v28;
  _Block_object_dispose(&v33, 8);

  objc_autoreleasePoolPop(v14);
  if (billing)
  {
    [v12 addObjectsFromArray:billing];
    [v13 addObjectsFromArray:v19];
  }

  if (infos)
  {
    v21 = v13;
    *infos = v13;
  }

  if (v26)
  {
    v22 = v20;
    *v26 = v20;
  }

  v23 = [(APMetricServerDelivery *)self _dataFromBatchDictionaries:v12];

  return v23;
}

- (BOOL)processMetrics:(int64_t)metrics forChannel:(id)channel
{
  channelCopy = channel;
  isRunningTests = [(APMetricServerDelivery *)self isRunningTests];
  if (+[APSystemInternal isAppleInternalInstall]&& (isRunningTests & 1) == 0)
  {
    serverDeliveryQueue = [(APMetricServerDelivery *)self serverDeliveryQueue];
    dispatch_assert_queue_V2(serverDeliveryQueue);
  }

  v9 = os_transaction_create();
  if (isRunningTests)
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
    destination = [channelCopy destination];
    v15 = [(APMetricServerDelivery *)self lastProcessingDateForDestination:destination];

    [v10 timeIntervalSinceDate:v15];
    v17 = v16;
    [(APMetricServerDelivery *)self _periodicDelay];
    if (metrics == 1 && v17 < v18 * 0.5 || ([channelCopy destination], v19 = objc_claimAutoreleasedReturnValue(), v20 = -[APMetricServerDelivery _shouldBackoffForDestination:](self, "_shouldBackoffForDestination:", v19), v19, (v20 & 1) != 0))
    {
      v21 = 0;
    }

    else
    {
      processingDestinationsLock = [(APMetricServerDelivery *)self processingDestinationsLock];
      processingDestinations = [(APMetricServerDelivery *)self processingDestinations];
      [processingDestinationsLock lock];
      destination2 = [channelCopy destination];
      v26 = [processingDestinations containsObject:destination2];

      if (v26)
      {
        [processingDestinationsLock unlock];
        v21 = 0;
      }

      else
      {
        destination3 = [channelCopy destination];
        [processingDestinations addObject:destination3];

        [processingDestinationsLock unlock];
        v42 = +[MetricsModule storage];
        v28 = objc_autoreleasePoolPush();
        v53 = 0;
        v54 = 0;
        v45 = [(APMetricServerDelivery *)self _loadBatchesAsDataForChannel:channelCopy useShelvedData:0 groupBatches:1 batchInfos:&v54 billing:&v53];
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
          [(APMetricPayload *)v34 setChannel:channelCopy];
          [(APMetricPayload *)v34 setBatchInfos:v43];
          fakeNetworkResponse = [(APMetricServerDelivery *)self fakeNetworkResponse];
          [(APMetricPayload *)v34 setFakeNetworkResponse:fakeNetworkResponse];

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v56 = 0;
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_100339AAC;
          v48[3] = &unk_10047E9E8;
          v52 = isRunningTests;
          v49 = v43;
          selfCopy = self;
          v51 = buf;
          [(APMetricServerDelivery *)self _sendPayload:v34 successCompletionHandler:v48];
          destination4 = [channelCopy destination];
          [(APMetricServerDelivery *)self setLastProcessingDate:v10 forDestination:destination4];

          if (*(*&buf[8] + 24) == 1)
          {
            protectedEventChannel = [channelCopy protectedEventChannel];
            v38 = [v42 hasBacklogForChannel:protectedEventChannel];

            if (v38)
            {
              v39 = APLogForCategory();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *v47 = 0;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Starting metrics processing due to a long backlog.", v47, 2u);
              }

              [(APMetricServerDelivery *)self _asyncProcessMetrics:4 forChannel:channelCopy];
            }
          }

          _Block_object_dispose(buf, 8);
        }

        [processingDestinationsLock lock];
        destination5 = [channelCopy destination];
        [processingDestinations removeObject:destination5];

        [processingDestinationsLock unlock];
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

- (void)_asyncProcessMetrics:(int64_t)metrics forChannel:(id)channel
{
  channelCopy = channel;
  serverDeliveryQueue = [(APMetricServerDelivery *)self serverDeliveryQueue];
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100339DA8;
  v9[3] = &unk_10047EA10;
  objc_copyWeak(v11, &location);
  v11[1] = metrics;
  v10 = channelCopy;
  v8 = channelCopy;
  dispatch_async(serverDeliveryQueue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)withdrawShelvedBatchesForChannel:(id)channel groupBatches:(BOOL)batches withSaveObjectBlock:(id)block
{
  batchesCopy = batches;
  channelCopy = channel;
  blockCopy = block;
  v10 = 0;
  v11 = 50;
  if (!batchesCopy)
  {
    v11 = 500;
  }

  v39 = blockCopy;
  selfCopy = self;
  v12 = v11;
  v33 = channelCopy;
  while (v12 >= 1)
  {
    v44 = v12 - 1;
    v40 = v12;
    context = objc_autoreleasePoolPush();
    v13 = objc_autoreleasePoolPush();
    v51 = 0;
    v52 = 0;
    v14 = [(APMetricServerDelivery *)self _loadBatchesAsDataForChannel:channelCopy useShelvedData:1 groupBatches:batchesCopy batchInfos:&v52 billing:&v51];
    v45 = v52;
    v15 = v51;
    objc_autoreleasePoolPop(v13);
    if (v14)
    {
      httpDelivery = [(APMetricServerDelivery *)self httpDelivery];
      v50 = 0;
      v41 = httpDelivery;
      v17 = [httpDelivery buildMetricDeliveryRequestFromData:v14 toChannel:channelCopy billing:v15 signing:0 failIfSignatureIsNotAvailable:0 error:&v50];
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
                identifier = [v26 identifier];
                *buf = 138543362;
                v55 = identifier;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Deleting batch %{public}@", buf, 0xCu);
              }

              fileSystemToken = [v26 fileSystemToken];
              [APMetricBatch removeBatchByFileSystemToken:fileSystemToken];
            }

            v23 = [v21 countByEnumeratingWithState:&v46 objects:v53 count:16];
          }

          while (v23);
        }

        self = selfCopy;
        channelCopy = v33;
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
    preparedDataServerDelivery = [(APMetricServerDelivery *)self preparedDataServerDelivery];
    sub_10032EF10(preparedDataServerDelivery);

    preparedUnsignedDataProcessor = [(APMetricServerDelivery *)self preparedUnsignedDataProcessor];
    sub_100327FB0(preparedUnsignedDataProcessor);
  }
}

- (void)pause
{
  serverDeliveryTimer = [(APMetricServerDelivery *)self serverDeliveryTimer];
  [(APMetricServerDelivery *)self setServerDeliveryTimerWasRunningWhenPaused:serverDeliveryTimer != 0];

  if ([(APMetricServerDelivery *)self serverDeliveryTimerWasRunningWhenPaused])
  {
    [(APMetricServerDelivery *)self _stopDeliveryTimer];
  }

  serverDeliveryQueue = [(APMetricServerDelivery *)self serverDeliveryQueue];
  dispatch_suspend(serverDeliveryQueue);

  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Suspended server delivery.", v6, 2u);
  }
}

- (void)resume
{
  serverDeliveryQueue = [(APMetricServerDelivery *)self serverDeliveryQueue];
  dispatch_resume(serverDeliveryQueue);

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

  preparedDataServerDelivery = [(APMetricServerDelivery *)self preparedDataServerDelivery];
  sub_10032EF10(preparedDataServerDelivery);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

@end