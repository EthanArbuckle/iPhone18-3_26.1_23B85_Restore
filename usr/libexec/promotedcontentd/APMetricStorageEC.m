@interface APMetricStorageEC
- (APJourneySettings)journeySettings;
- (APMetricStorageEC)init;
- (BOOL)hasBacklogForChannel:(id)a3;
- (id)_closeBatchesForChannels:(id)a3 shelved:(BOOL)a4 groupBatches:(BOOL)a5;
- (id)_closedPathForChannel:(id)a3;
- (id)_openBatchForChannel:(id)a3;
- (id)_readChannels;
- (id)_shelvedPathForChannel:(id)a3;
- (id)closeShelvedBatchesForChannel:(id)a3 groupBatches:(BOOL)a4;
- (id)preparedMetricDataForDestination:(id)a3 purpose:(int64_t)a4 containsSignature:(BOOL)a5;
- (void)_cleanupLeftovers;
- (void)_closeBatchForChannel:(id)a3;
- (void)_notifyListenersOfMetric:(id)a3;
- (void)_processMetric:(id)a3;
- (void)_withdrawShelvedBatchesForChannel:(id)a3 groupBatches:(BOOL)a4 signingAuthority:(id)a5;
- (void)_writeChannels;
- (void)addActiveChannel:(id)a3;
- (void)closeActiveBatches;
- (void)dealloc;
- (void)finishEventsRotationWithSigningAuthority:(id)a3;
- (void)receivedMetric:(id)a3;
- (void)rotateIDAccount;
- (void)setup;
- (void)startEventsRotation;
@end

@implementation APMetricStorageEC

- (void)rotateIDAccount
{
  v3 = +[APIDAccountProvider privateUserAccount];
  -[APMetricStorageEC setEventCollectionDisabled:](self, "setEventCollectionDisabled:", [v3 isChild]);
}

- (APMetricStorageEC)init
{
  v24.receiver = self;
  v24.super_class = APMetricStorageEC;
  v2 = [(APMetricStorageEC *)&v24 init];
  v3 = v2;
  if (qword_1004E6D38 != -1)
  {
    sub_100394690();
    if (!v3)
    {
      return v3;
    }

    goto LABEL_3;
  }

  if (v2)
  {
LABEL_3:
    v4 = +[MetricsModuleClasses notificationRegistrarClass];
    v5 = +[MetricsModuleClasses serverDeliveryClass];
    v6 = +[APIDAccountProvider privateUserAccount];
    v7 = dispatch_queue_create("com.apple.ap.metrics", 0);
    metricsQueue = v3->_metricsQueue;
    v3->_metricsQueue = v7;

    v9 = objc_alloc_init(v4);
    notificationRegistrar = v3->_notificationRegistrar;
    v3->_notificationRegistrar = v9;

    v11 = objc_alloc_init(v5);
    serverDelivery = v3->_serverDelivery;
    v3->_serverDelivery = v11;

    v13 = objc_alloc_init(NSLock);
    storageLock = v3->_storageLock;
    v3->_storageLock = v13;

    v15 = [[NSMutableDictionary alloc] initWithCapacity:4];
    currentBatches = v3->_currentBatches;
    v3->_currentBatches = v15;

    v17 = [(APMetricStorageEC *)v3 _readChannels];
    channels = v3->_channels;
    v3->_channels = v17;

    v19 = [[APUnfairLock alloc] initWithOptions:1];
    serverDeliveryLock = v3->_serverDeliveryLock;
    v3->_serverDeliveryLock = v19;

    v21 = objc_alloc_init(APECMetricSampler);
    sampler = v3->_sampler;
    v3->_sampler = v21;

    v3->_eventCollectionDisabled = [v6 isChild];
  }

  return v3;
}

- (void)dealloc
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *buf = 138477827;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Metric storage (%{private}@) was dealloced!", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = APMetricStorageEC;
  [(APMetricStorageEC *)&v4 dealloc];
}

- (void)setup
{
  [(APMetricStorageEC *)self _cleanupLeftovers];
  v3 = [objc_opt_class() openStoragePathPrefix];
  v4 = [objc_opt_class() closedStoragePathPrefix];
  [APMetricStorage_private moveExistingOpenFilesToClosed:v3 closedPrefix:v4];

  v5 = [(APMetricStorageEC *)self journeySettings];
}

- (APJourneySettings)journeySettings
{
  journeySettings = self->_journeySettings;
  if (!journeySettings)
  {
    v4 = +[APJourneySettings settings];
    v5 = self->_journeySettings;
    self->_journeySettings = v4;

    journeySettings = self->_journeySettings;
  }

  return journeySettings;
}

- (id)_readChannels
{
  v2 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
  v3 = [objc_opt_class() destinationsStoragePath];
  v25 = 0;
  v4 = [v2 fileExistsAtPath:v3 error:&v25];
  v5 = v25;
  v6 = v5;
  if (!v4)
  {
    v13 = 0;
    goto LABEL_23;
  }

  v24 = v5;
  v7 = [v2 objectStoredAtPath:v3 error:&v24];
  v8 = v24;

  if (v8)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138740227;
      v27 = v3;
      v28 = 2114;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error reading destinations from path: %{sensitive}@ Error: %{public}@", buf, 0x16u);
    }
  }

  v10 = [v7 anyObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v23 = v8;
    [v2 removeObjectAtPath:v3 error:&v23];
    v6 = v23;

    if (v6)
    {
      v12 = APLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138740227;
        v27 = v3;
        v28 = 2114;
        v29 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error removing old destinations from path: %{sensitive}@ Error: %{public}@", buf, 0x16u);
      }
    }

    v13 = 0;
    goto LABEL_22;
  }

  v14 = [v7 anyObject];
  v15 = objc_opt_self();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Upgrading channels", buf, 2u);
    }

    v18 = [v7 compactMapObjectsUsingBlock:&stru_10047E368];
  }

  else
  {
    v19 = [v7 anyObject];
    v20 = objc_opt_self();
    v21 = objc_opt_isKindOfClass();

    if ((v21 & 1) == 0)
    {
      v13 = 0;
      goto LABEL_21;
    }

    v18 = v7;
  }

  v13 = v18;
LABEL_21:
  v6 = v8;
LABEL_22:

LABEL_23:

  return v13;
}

- (void)_writeChannels
{
  v2 = [(APMetricStorageEC *)self channels];
  if (v2)
  {
    v3 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
    v4 = [objc_opt_class() destinationsStoragePath];
    v10 = 0;
    v5 = [v3 storeObject:v2 atPath:v4 error:&v10];
    v6 = v10;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      v9 = APLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138740227;
        v12 = v4;
        v13 = 2114;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error writing destinations to path: %{sensitive}@ Error: %{public}@", buf, 0x16u);
      }
    }
  }
}

- (void)addActiveChannel:(id)a3
{
  v11 = a3;
  v4 = [(APMetricStorageEC *)self channels];
  if ([v4 containsObject:v11])
  {
    v5 = v4;
  }

  else
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = [(APMetricStorageEC *)v6 channels];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = +[NSSet set];
    }

    v5 = v9;

    v10 = [v5 setByAddingObject:v11];
    [(APMetricStorageEC *)v6 setChannels:v10];
    [(APMetricStorageEC *)v6 _writeChannels];

    objc_sync_exit(v6);
  }
}

- (BOOL)hasBacklogForChannel:(id)a3
{
  v4 = a3;
  v5 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
  v6 = [(APMetricStorageEC *)self _closedPathForChannel:v4];

  v10 = 0;
  v7 = [v5 contentsOfDirectoryAtPath:v6 error:&v10];
  v8 = [v7 count] > 0xA;

  return v8;
}

- (id)_closedPathForChannel:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() closedStoragePathPrefix];
  v5 = [v3 destination];
  v6 = [v5 value];
  v7 = [v4 stringByAppendingPathComponent:v6];

  v8 = [v3 purpose];
  v9 = [NSNumber numberWithInteger:v8];
  v10 = [v9 stringValue];
  v11 = [v7 stringByAppendingPathComponent:v10];

  return v11;
}

- (id)_shelvedPathForChannel:(id)a3
{
  v3 = a3;
  v4 = [v3 destination];
  v5 = [v4 value];
  v6 = [@"s" stringByAppendingPathComponent:v5];

  v7 = [v3 purpose];
  v8 = [NSNumber numberWithInteger:v7];
  v9 = [v8 stringValue];
  v10 = [v6 stringByAppendingPathComponent:v9];

  return v10;
}

- (void)closeActiveBatches
{
  [(NSLock *)self->_storageLock lock];
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Starting close active batches", buf, 2u);
  }

  v4 = [(APMetricStorageEC *)self activeChannels];
  v5 = [v4 copy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = APLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138477827;
          v19 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "close active batch for %{private}@", buf, 0xCu);
        }

        [(APMetricStorageEC *)self _closeBatchForChannel:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = APLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Exiting close active batches", buf, 2u);
  }

  [(NSLock *)self->_storageLock unlock];
}

- (id)closeShelvedBatchesForChannel:(id)a3 groupBatches:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = a3;
  v7 = [NSArray arrayWithObjects:&v10 count:1];

  v8 = [(APMetricStorageEC *)self _closeBatchesForChannels:v7 shelved:1 groupBatches:v4, v10];

  return v8;
}

- (id)_closeBatchesForChannels:(id)a3 shelved:(BOOL)a4 groupBatches:(BOOL)a5
{
  v5 = a5;
  v33 = a4;
  v7 = a3;
  v35 = self;
  [(NSLock *)self->_storageLock lock];
  if (v5)
  {
    v8 = 10;
  }

  else
  {
    v8 = 1;
  }

  v42 = [NSMutableArray arrayWithCapacity:v8];
  v34 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v7;
  v32 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v32)
  {
    v31 = *v45;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v45 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v44 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      v12 = APLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v49 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Starting close batches for channel %{private}@", buf, 0xCu);
      }

      if (v33)
      {
        [(APMetricStorageEC *)v35 _shelvedPathForChannel:v10];
      }

      else
      {
        [(APMetricStorageEC *)v35 _closedPathForChannel:v10];
      }
      v13 = ;
      v43 = 0;
      v14 = [v34 contentsOfDirectoryAtPath:v13 error:&v43];
      v15 = v43;
      v16 = [v14 count];
      if (v16)
      {
        v37 = v15;
        v38 = v14;
        v39 = v10;
        v40 = v11;
        v41 = v9;
        if (v8 >= v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = v8;
        }

        v36 = [v14 sortedArrayUsingSelector:"compare:"];
        v18 = [v36 subarrayWithRange:{0, v17}];
        v19 = +[MetricsModuleClasses batchClass];
        v20 = 0;
        if (v17 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v17;
        }

        do
        {
          v22 = [v18 objectAtIndex:v20];
          v23 = [v13 stringByAppendingPathComponent:v22];
          v24 = [[v19 alloc] initWithPath:v23];
          v25 = APLogForCategory();
          v26 = v25;
          if (v24)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138477827;
              v49 = v22;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Closed batch %{private}@", buf, 0xCu);
            }

            [v42 addObject:v24];
            --v8;
          }

          else
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138477827;
              v49 = v22;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Couldn't create closed batch: %{private}@", buf, 0xCu);
            }
          }

          ++v20;
        }

        while (v21 != v20);

        v11 = v40;
        v9 = v41;
        v14 = v38;
        v10 = v39;
        v15 = v37;
      }

      v27 = APLogForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v49 = v10;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Ending close batches for channel %{private}@", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      if (v8 < 1)
      {
        break;
      }

      if (++v9 == v32)
      {
        v32 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
        if (v32)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  [(NSLock *)v35->_storageLock unlock];
  v28 = [v42 copy];

  return v28;
}

- (id)_openBatchForChannel:(id)a3
{
  v4 = a3;
  v5 = [(APMetricStorageEC *)self currentBatches];
  v6 = [v5 objectForKey:v4];
  if (!v6)
  {
    v7 = objc_alloc(+[MetricsModuleClasses batchClass]);
    v8 = [v4 destination];
    v9 = [v8 protectedDestination];
    v6 = [v7 initWithDestination:v9 purpose:{objc_msgSend(v4, "purpose")}];

    if (v6)
    {
      [v5 setObject:v6 forKey:v4];
    }

    else
    {
      v10 = APLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = 138477827;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Couldn't create open batch: %{private}@", &v14, 0xCu);
      }

      v6 = 0;
    }
  }

  v11 = APLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v6 identifier];
    v14 = 138477827;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "using open batch %{private}@", &v14, 0xCu);
  }

  return v6;
}

- (void)_closeBatchForChannel:(id)a3
{
  v7 = a3;
  v4 = [(APMetricStorageEC *)self currentBatches];
  v5 = [v4 objectForKey:v7];
  v6 = v5;
  if (v5)
  {
    [v5 close];
    [v4 removeObjectForKey:v7];
  }
}

- (void)_processMetric:(id)a3
{
  v4 = a3;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138478083;
    v47 = v7;
    v48 = 2114;
    v49 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{private}@] Processing metric: %{public}@", buf, 0x16u);
  }

  v8 = [(__CFString *)v4 metricRoute];
  if (![v8 metricIsDiagnosticsAndUsage:{-[__CFString metric](v4, "metric")}])
  {
    v9 = [APECPurposeConfig purposeConfig:[(__CFString *)v4 purpose]];
    v14 = [v9 collectionType];
    v15 = [v14 integerValue];

    if (v15 == 7401 && (+[NSProcessInfo isDNUEnabled]& 1) == 0)
    {
      v23 = APLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = +[NSProcessInfo isDNUEnabled];
        v34 = @"NO";
        *buf = 138478339;
        v47 = v32;
        v48 = 2114;
        if (v33)
        {
          v34 = @"YES";
        }

        v49 = v34;
        v50 = 2114;
        v51 = @"YES";
        v35 = "[%{private}@] Metric will not be processed: DNUEnabled (%{public}@), isDNUCollection (%{public}@)";
        v36 = v23;
        v37 = 32;
        goto LABEL_28;
      }

LABEL_29:

      goto LABEL_30;
    }

    v16 = [(APMetricStorageEC *)self sampler];
    v17 = [v16 sampleEvent:{-[__CFString purpose](v4, "purpose")}];

    v18 = +[NSProcessInfo processInfo];
    v19 = [v18 isRunningTests];

    if ((v19 & 1) == 0)
    {
      if (!+[APSystemInternal isAppleInternalInstall])
      {
LABEL_14:
        if (v17)
        {
          goto LABEL_15;
        }

LABEL_26:
        v23 = APLogForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v40 = objc_opt_class();
          v32 = NSStringFromClass(v40);
          *buf = 138478083;
          v47 = v32;
          v48 = 2114;
          v49 = @"NO";
          v35 = "[%{private}@] Metric will not be processed: sampled (%{public}@)";
          v36 = v23;
          v37 = 22;
LABEL_28:
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, v35, buf, v37);

          goto LABEL_29;
        }

        goto LABEL_29;
      }

      v20 = [NSUserDefaults alloc];
      v21 = [v20 initWithSuiteName:APDefaultsBundleID];
      v22 = [v21 integerForKey:@"ec.noSampleOverride"];

      if (v22)
      {
        if (v22 == 1)
        {
          goto LABEL_26;
        }

        goto LABEL_14;
      }
    }

LABEL_15:
    v23 = [v8 channel];
    if (v23)
    {
      v24 = [(APMetricStorageEC *)self _openBatchForChannel:v23];
      [v24 receivedMetric:v4];
      [(APMetricStorageEC *)self addActiveChannel:v23];
      v25 = [(__CFString *)v4 options];
      v26 = [v24 shouldRotate];
      v27 = v26;
      if (v25 > 0xFFFFFFFF7FFFFFFFLL || v26)
      {
        v28 = v25 > 0xFFFFFFFF7FFFFFFFLL;
        [(APMetricStorageEC *)self _closeBatchForChannel:v23];
        v29 = [(APMetricStorageEC *)self metricsQueue];
        [(APMetricStorageEC *)self serverDelivery];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1003270F8;
        block[3] = &unk_10047E390;
        v42 = v44 = v28;
        v43 = v23;
        v45 = v27;
        v30 = v42;
        dispatch_async(v29, block);
      }
    }

    else
    {
      v24 = APLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        *buf = 138478083;
        v47 = v39;
        v48 = 2114;
        v49 = v4;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%{private}@] ERROR: Metric has no channel: %{public}@", buf, 0x16u);
      }
    }

    goto LABEL_29;
  }

  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = APDiagnosticsSubmissionAllowed();
    v13 = @"NO";
    *buf = 138478339;
    v47 = v11;
    v48 = 2114;
    if (v12)
    {
      v13 = @"YES";
    }

    v49 = v13;
    v50 = 2114;
    v51 = @"YES";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{private}@] Metric will not be processed: DiagnosticSubmissionAllowed (%{public}@), isDNUMetric (%{public}@)", buf, 0x20u);
  }

LABEL_30:
}

- (void)_notifyListenersOfMetric:(id)a3
{
  v4 = a3;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 ecServerDictionaryRepresentation];
    v11 = 138478083;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{private}@] Received metric: %{public}@", &v11, 0x16u);
  }

  v9 = [(APMetricStorageEC *)self notificationRegistrar];
  v10 = [v4 copyWithZone:0];
  [v9 receivedMetric:v10];
}

- (void)receivedMetric:(id)a3
{
  v4 = a3;
  v5 = +[APMetricOffsetSettings settings];
  v6 = [v5 lastActivity];
  v7 = +[NSDate date];
  v8 = v7;
  if (!v6 || ([v7 timeIntervalSinceDate:v6], v9 > 14400.0))
  {
    [v5 resetRouteOffsets];
  }

  [v4 purpose];
  if (!isInternalPurpose())
  {
    if (!self->_eventCollectionDisabled)
    {
      [(APMetricStorageEC *)self _notifyListenersOfMetric:v4];
      [(NSLock *)self->_storageLock lock];
      [(APMetricStorageEC *)self _processMetric:v4];
      [(NSLock *)self->_storageLock unlock];
      goto LABEL_11;
    }

    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v16 = 138478083;
      v17 = v12;
      v18 = 2114;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{private}@] Event collection disabled. Not processing metric %{public}@", &v16, 0x16u);
    }
  }

  [(APMetricStorageEC *)self _notifyListenersOfMetric:v4];
LABEL_11:
  if (isExternalPurpose() && !self->_eventCollectionDisabled)
  {
    if (!v6 || ([v8 timeIntervalSinceDate:v6], v13 > 60.0))
    {
      v14 = +[NSDate date];
      [v5 setLastActivity:v14];
    }

    v15 = [(APMetricStorageEC *)self serverDelivery];
    [v15 startDeliveryTimer];
  }
}

- (void)startEventsRotation
{
  v3 = [(APMetricStorageEC *)self serverDeliveryLock];
  [v3 lock];

  v4 = [(APMetricStorageEC *)self serverDelivery];
  [v4 pause];
}

- (void)finishEventsRotationWithSigningAuthority:(id)a3
{
  v4 = a3;
  v5 = +[APEventChannel unused];
  [(APMetricStorageEC *)self _closeBatchForChannel:v5];

  v6 = +[APEventChannel unused];
  v7 = [v6 protectedEventChannel];
  [APMetricStorage_private shelveClosedForChannel:v7];

  v8 = [(APMetricStorageEC *)self serverDelivery];
  [v8 resume];

  v9 = [(APMetricStorageEC *)self serverDeliveryLock];
  [v9 unlock];

  v10 = +[APEventChannel unused];
  [(APMetricStorageEC *)self _withdrawShelvedBatchesForChannel:v10 groupBatches:1 signingAuthority:v4];
}

- (void)_withdrawShelvedBatchesForChannel:(id)a3 groupBatches:(BOOL)a4 signingAuthority:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
  v11 = [(APMetricStorageEC *)self serverDelivery];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100327710;
  v15[3] = &unk_10047E3B8;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  [v11 withdrawShelvedBatchesForChannel:v13 groupBatches:v6 withSaveObjectBlock:v15];
}

- (void)_cleanupLeftovers
{
  v3 = +[APEventChannel unused];
  v4 = [v3 protectedEventChannel];
  [APMetricStorage_private shelveClosedForChannel:v4];

  v5 = +[APEventChannel unused];
  [(APMetricStorageEC *)self _withdrawShelvedBatchesForChannel:v5 groupBatches:0 signingAuthority:0];
}

- (id)preparedMetricDataForDestination:(id)a3 purpose:(int64_t)a4 containsSignature:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
  v9 = [v7 protectedDestination];
  v10 = [APMetricStorage_private preparedDataPathForDestination:v9 purpose:a4 containsSignature:v5];

  v11 = [v8 contentsOfDirectoryAtPath:v10 error:0];
  v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [v10 stringByAppendingPathComponent:{*(*(&v21 + 1) + 8 * i), v21}];
        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v19 = [v12 copy];

  return v19;
}

@end