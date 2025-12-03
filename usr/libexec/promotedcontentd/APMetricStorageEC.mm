@interface APMetricStorageEC
- (APJourneySettings)journeySettings;
- (APMetricStorageEC)init;
- (BOOL)hasBacklogForChannel:(id)channel;
- (id)_closeBatchesForChannels:(id)channels shelved:(BOOL)shelved groupBatches:(BOOL)batches;
- (id)_closedPathForChannel:(id)channel;
- (id)_openBatchForChannel:(id)channel;
- (id)_readChannels;
- (id)_shelvedPathForChannel:(id)channel;
- (id)closeShelvedBatchesForChannel:(id)channel groupBatches:(BOOL)batches;
- (id)preparedMetricDataForDestination:(id)destination purpose:(int64_t)purpose containsSignature:(BOOL)signature;
- (void)_cleanupLeftovers;
- (void)_closeBatchForChannel:(id)channel;
- (void)_notifyListenersOfMetric:(id)metric;
- (void)_processMetric:(id)metric;
- (void)_withdrawShelvedBatchesForChannel:(id)channel groupBatches:(BOOL)batches signingAuthority:(id)authority;
- (void)_writeChannels;
- (void)addActiveChannel:(id)channel;
- (void)closeActiveBatches;
- (void)dealloc;
- (void)finishEventsRotationWithSigningAuthority:(id)authority;
- (void)receivedMetric:(id)metric;
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

    _readChannels = [(APMetricStorageEC *)v3 _readChannels];
    channels = v3->_channels;
    v3->_channels = _readChannels;

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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Metric storage (%{private}@) was dealloced!", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = APMetricStorageEC;
  [(APMetricStorageEC *)&v4 dealloc];
}

- (void)setup
{
  [(APMetricStorageEC *)self _cleanupLeftovers];
  openStoragePathPrefix = [objc_opt_class() openStoragePathPrefix];
  closedStoragePathPrefix = [objc_opt_class() closedStoragePathPrefix];
  [APMetricStorage_private moveExistingOpenFilesToClosed:openStoragePathPrefix closedPrefix:closedStoragePathPrefix];

  journeySettings = [(APMetricStorageEC *)self journeySettings];
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
  destinationsStoragePath = [objc_opt_class() destinationsStoragePath];
  v25 = 0;
  v4 = [v2 fileExistsAtPath:destinationsStoragePath error:&v25];
  v5 = v25;
  v6 = v5;
  if (!v4)
  {
    v13 = 0;
    goto LABEL_23;
  }

  v24 = v5;
  v7 = [v2 objectStoredAtPath:destinationsStoragePath error:&v24];
  v8 = v24;

  if (v8)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138740227;
      v27 = destinationsStoragePath;
      v28 = 2114;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error reading destinations from path: %{sensitive}@ Error: %{public}@", buf, 0x16u);
    }
  }

  anyObject = [v7 anyObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v23 = v8;
    [v2 removeObjectAtPath:destinationsStoragePath error:&v23];
    v6 = v23;

    if (v6)
    {
      v12 = APLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138740227;
        v27 = destinationsStoragePath;
        v28 = 2114;
        v29 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error removing old destinations from path: %{sensitive}@ Error: %{public}@", buf, 0x16u);
      }
    }

    v13 = 0;
    goto LABEL_22;
  }

  anyObject2 = [v7 anyObject];
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
    anyObject3 = [v7 anyObject];
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
  channels = [(APMetricStorageEC *)self channels];
  if (channels)
  {
    v3 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
    destinationsStoragePath = [objc_opt_class() destinationsStoragePath];
    v10 = 0;
    v5 = [v3 storeObject:channels atPath:destinationsStoragePath error:&v10];
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
        v12 = destinationsStoragePath;
        v13 = 2114;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error writing destinations to path: %{sensitive}@ Error: %{public}@", buf, 0x16u);
      }
    }
  }
}

- (void)addActiveChannel:(id)channel
{
  channelCopy = channel;
  channels = [(APMetricStorageEC *)self channels];
  if ([channels containsObject:channelCopy])
  {
    v5 = channels;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    channels2 = [(APMetricStorageEC *)selfCopy channels];
    v8 = channels2;
    if (channels2)
    {
      v9 = channels2;
    }

    else
    {
      v9 = +[NSSet set];
    }

    v5 = v9;

    v10 = [v5 setByAddingObject:channelCopy];
    [(APMetricStorageEC *)selfCopy setChannels:v10];
    [(APMetricStorageEC *)selfCopy _writeChannels];

    objc_sync_exit(selfCopy);
  }
}

- (BOOL)hasBacklogForChannel:(id)channel
{
  channelCopy = channel;
  v5 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
  v6 = [(APMetricStorageEC *)self _closedPathForChannel:channelCopy];

  v10 = 0;
  v7 = [v5 contentsOfDirectoryAtPath:v6 error:&v10];
  v8 = [v7 count] > 0xA;

  return v8;
}

- (id)_closedPathForChannel:(id)channel
{
  channelCopy = channel;
  closedStoragePathPrefix = [objc_opt_class() closedStoragePathPrefix];
  destination = [channelCopy destination];
  value = [destination value];
  v7 = [closedStoragePathPrefix stringByAppendingPathComponent:value];

  purpose = [channelCopy purpose];
  v9 = [NSNumber numberWithInteger:purpose];
  stringValue = [v9 stringValue];
  v11 = [v7 stringByAppendingPathComponent:stringValue];

  return v11;
}

- (id)_shelvedPathForChannel:(id)channel
{
  channelCopy = channel;
  destination = [channelCopy destination];
  value = [destination value];
  v6 = [@"s" stringByAppendingPathComponent:value];

  purpose = [channelCopy purpose];
  v8 = [NSNumber numberWithInteger:purpose];
  stringValue = [v8 stringValue];
  v10 = [v6 stringByAppendingPathComponent:stringValue];

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

  activeChannels = [(APMetricStorageEC *)self activeChannels];
  v5 = [activeChannels copy];

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

- (id)closeShelvedBatchesForChannel:(id)channel groupBatches:(BOOL)batches
{
  batchesCopy = batches;
  channelCopy = channel;
  channelCopy2 = channel;
  v7 = [NSArray arrayWithObjects:&channelCopy count:1];

  channelCopy = [(APMetricStorageEC *)self _closeBatchesForChannels:v7 shelved:1 groupBatches:batchesCopy, channelCopy];

  return channelCopy;
}

- (id)_closeBatchesForChannels:(id)channels shelved:(BOOL)shelved groupBatches:(BOOL)batches
{
  batchesCopy = batches;
  shelvedCopy = shelved;
  channelsCopy = channels;
  selfCopy = self;
  [(NSLock *)self->_storageLock lock];
  if (batchesCopy)
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
  obj = channelsCopy;
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

      if (shelvedCopy)
      {
        [(APMetricStorageEC *)selfCopy _shelvedPathForChannel:v10];
      }

      else
      {
        [(APMetricStorageEC *)selfCopy _closedPathForChannel:v10];
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

  [(NSLock *)selfCopy->_storageLock unlock];
  v28 = [v42 copy];

  return v28;
}

- (id)_openBatchForChannel:(id)channel
{
  channelCopy = channel;
  currentBatches = [(APMetricStorageEC *)self currentBatches];
  v6 = [currentBatches objectForKey:channelCopy];
  if (!v6)
  {
    v7 = objc_alloc(+[MetricsModuleClasses batchClass]);
    destination = [channelCopy destination];
    protectedDestination = [destination protectedDestination];
    v6 = [v7 initWithDestination:protectedDestination purpose:{objc_msgSend(channelCopy, "purpose")}];

    if (v6)
    {
      [currentBatches setObject:v6 forKey:channelCopy];
    }

    else
    {
      v10 = APLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = 138477827;
        v15 = channelCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Couldn't create open batch: %{private}@", &v14, 0xCu);
      }

      v6 = 0;
    }
  }

  v11 = APLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    identifier = [v6 identifier];
    v14 = 138477827;
    v15 = identifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "using open batch %{private}@", &v14, 0xCu);
  }

  return v6;
}

- (void)_closeBatchForChannel:(id)channel
{
  channelCopy = channel;
  currentBatches = [(APMetricStorageEC *)self currentBatches];
  v5 = [currentBatches objectForKey:channelCopy];
  v6 = v5;
  if (v5)
  {
    [v5 close];
    [currentBatches removeObjectForKey:channelCopy];
  }
}

- (void)_processMetric:(id)metric
{
  metricCopy = metric;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138478083;
    v47 = v7;
    v48 = 2114;
    v49 = metricCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{private}@] Processing metric: %{public}@", buf, 0x16u);
  }

  metricRoute = [(__CFString *)metricCopy metricRoute];
  if (![metricRoute metricIsDiagnosticsAndUsage:{-[__CFString metric](metricCopy, "metric")}])
  {
    v9 = [APECPurposeConfig purposeConfig:[(__CFString *)metricCopy purpose]];
    collectionType = [v9 collectionType];
    integerValue = [collectionType integerValue];

    if (integerValue == 7401 && (+[NSProcessInfo isDNUEnabled]& 1) == 0)
    {
      channel = APLogForCategory();
      if (os_log_type_enabled(channel, OS_LOG_TYPE_DEBUG))
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
        v36 = channel;
        v37 = 32;
        goto LABEL_28;
      }

LABEL_29:

      goto LABEL_30;
    }

    sampler = [(APMetricStorageEC *)self sampler];
    v17 = [sampler sampleEvent:{-[__CFString purpose](metricCopy, "purpose")}];

    v18 = +[NSProcessInfo processInfo];
    isRunningTests = [v18 isRunningTests];

    if ((isRunningTests & 1) == 0)
    {
      if (!+[APSystemInternal isAppleInternalInstall])
      {
LABEL_14:
        if (v17)
        {
          goto LABEL_15;
        }

LABEL_26:
        channel = APLogForCategory();
        if (os_log_type_enabled(channel, OS_LOG_TYPE_DEBUG))
        {
          v40 = objc_opt_class();
          v32 = NSStringFromClass(v40);
          *buf = 138478083;
          v47 = v32;
          v48 = 2114;
          v49 = @"NO";
          v35 = "[%{private}@] Metric will not be processed: sampled (%{public}@)";
          v36 = channel;
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
    channel = [metricRoute channel];
    if (channel)
    {
      v24 = [(APMetricStorageEC *)self _openBatchForChannel:channel];
      [v24 receivedMetric:metricCopy];
      [(APMetricStorageEC *)self addActiveChannel:channel];
      options = [(__CFString *)metricCopy options];
      shouldRotate = [v24 shouldRotate];
      v27 = shouldRotate;
      if (options > 0xFFFFFFFF7FFFFFFFLL || shouldRotate)
      {
        v28 = options > 0xFFFFFFFF7FFFFFFFLL;
        [(APMetricStorageEC *)self _closeBatchForChannel:channel];
        metricsQueue = [(APMetricStorageEC *)self metricsQueue];
        [(APMetricStorageEC *)self serverDelivery];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1003270F8;
        block[3] = &unk_10047E390;
        v42 = v44 = v28;
        v43 = channel;
        v45 = v27;
        v30 = v42;
        dispatch_async(metricsQueue, block);
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
        v49 = metricCopy;
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

- (void)_notifyListenersOfMetric:(id)metric
{
  metricCopy = metric;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    ecServerDictionaryRepresentation = [metricCopy ecServerDictionaryRepresentation];
    v11 = 138478083;
    v12 = v7;
    v13 = 2114;
    v14 = ecServerDictionaryRepresentation;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{private}@] Received metric: %{public}@", &v11, 0x16u);
  }

  notificationRegistrar = [(APMetricStorageEC *)self notificationRegistrar];
  v10 = [metricCopy copyWithZone:0];
  [notificationRegistrar receivedMetric:v10];
}

- (void)receivedMetric:(id)metric
{
  metricCopy = metric;
  v5 = +[APMetricOffsetSettings settings];
  lastActivity = [v5 lastActivity];
  v7 = +[NSDate date];
  v8 = v7;
  if (!lastActivity || ([v7 timeIntervalSinceDate:lastActivity], v9 > 14400.0))
  {
    [v5 resetRouteOffsets];
  }

  [metricCopy purpose];
  if (!isInternalPurpose())
  {
    if (!self->_eventCollectionDisabled)
    {
      [(APMetricStorageEC *)self _notifyListenersOfMetric:metricCopy];
      [(NSLock *)self->_storageLock lock];
      [(APMetricStorageEC *)self _processMetric:metricCopy];
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
      v19 = metricCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{private}@] Event collection disabled. Not processing metric %{public}@", &v16, 0x16u);
    }
  }

  [(APMetricStorageEC *)self _notifyListenersOfMetric:metricCopy];
LABEL_11:
  if (isExternalPurpose() && !self->_eventCollectionDisabled)
  {
    if (!lastActivity || ([v8 timeIntervalSinceDate:lastActivity], v13 > 60.0))
    {
      v14 = +[NSDate date];
      [v5 setLastActivity:v14];
    }

    serverDelivery = [(APMetricStorageEC *)self serverDelivery];
    [serverDelivery startDeliveryTimer];
  }
}

- (void)startEventsRotation
{
  serverDeliveryLock = [(APMetricStorageEC *)self serverDeliveryLock];
  [serverDeliveryLock lock];

  serverDelivery = [(APMetricStorageEC *)self serverDelivery];
  [serverDelivery pause];
}

- (void)finishEventsRotationWithSigningAuthority:(id)authority
{
  authorityCopy = authority;
  v5 = +[APEventChannel unused];
  [(APMetricStorageEC *)self _closeBatchForChannel:v5];

  v6 = +[APEventChannel unused];
  protectedEventChannel = [v6 protectedEventChannel];
  [APMetricStorage_private shelveClosedForChannel:protectedEventChannel];

  serverDelivery = [(APMetricStorageEC *)self serverDelivery];
  [serverDelivery resume];

  serverDeliveryLock = [(APMetricStorageEC *)self serverDeliveryLock];
  [serverDeliveryLock unlock];

  v10 = +[APEventChannel unused];
  [(APMetricStorageEC *)self _withdrawShelvedBatchesForChannel:v10 groupBatches:1 signingAuthority:authorityCopy];
}

- (void)_withdrawShelvedBatchesForChannel:(id)channel groupBatches:(BOOL)batches signingAuthority:(id)authority
{
  batchesCopy = batches;
  channelCopy = channel;
  authorityCopy = authority;
  v10 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
  serverDelivery = [(APMetricStorageEC *)self serverDelivery];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100327710;
  v15[3] = &unk_10047E3B8;
  v16 = authorityCopy;
  v17 = channelCopy;
  v18 = v10;
  v12 = v10;
  v13 = channelCopy;
  v14 = authorityCopy;
  [serverDelivery withdrawShelvedBatchesForChannel:v13 groupBatches:batchesCopy withSaveObjectBlock:v15];
}

- (void)_cleanupLeftovers
{
  v3 = +[APEventChannel unused];
  protectedEventChannel = [v3 protectedEventChannel];
  [APMetricStorage_private shelveClosedForChannel:protectedEventChannel];

  v5 = +[APEventChannel unused];
  [(APMetricStorageEC *)self _withdrawShelvedBatchesForChannel:v5 groupBatches:0 signingAuthority:0];
}

- (id)preparedMetricDataForDestination:(id)destination purpose:(int64_t)purpose containsSignature:(BOOL)signature
{
  signatureCopy = signature;
  destinationCopy = destination;
  v8 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
  protectedDestination = [destinationCopy protectedDestination];
  v10 = [APMetricStorage_private preparedDataPathForDestination:protectedDestination purpose:purpose containsSignature:signatureCopy];

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