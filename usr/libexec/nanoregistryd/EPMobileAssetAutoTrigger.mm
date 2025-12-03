@interface EPMobileAssetAutoTrigger
+ (id)newService:(id)service;
- (BOOL)isUIUnlocked;
- (EPMobileAssetAutoTrigger)initWithServiceRegistry:(id)registry;
- (double)getLastAssetUpdateCheckInterval;
- (double)getRequiredCooldownIntervalForFailureCount:(int64_t)count;
- (id)getLatestAssetFromQueryResults:(id)results;
- (id)mobileAssetDownloadOptionsUserInitiated:(BOOL)initiated;
- (int64_t)getFailureCount;
- (void)dealloc;
- (void)queryAndGetLatestAssetForAssetType:(id)type withAssetCompatibilityVersion:(id)version withCompletion:(id)completion;
- (void)registerForNotifications;
- (void)setLastAssetUpdateCheckDate:(id)date withSuccess:(BOOL)success;
- (void)unregisterForNotifications;
- (void)update;
- (void)updateAssetFor:(id)for onQueue:(id)queue userInitiated:(BOOL)initiated withCompletion:(id)completion;
@end

@implementation EPMobileAssetAutoTrigger

+ (id)newService:(id)service
{
  serviceCopy = service;
  v5 = [[self alloc] initWithServiceRegistry:serviceCopy];

  return v5;
}

- (EPMobileAssetAutoTrigger)initWithServiceRegistry:(id)registry
{
  registryCopy = registry;
  objc_storeStrong(&self->_serviceRegistry, registry);
  v6 = [(EPMobileAssetAutoTrigger *)self init];
  if (v6)
  {
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: Init", v13, 2u);
      }
    }

    v10 = [[NRPreferences alloc] initWithDomain:@"com.apple.nanoregistryd"];
    prefs = v6->_prefs;
    v6->_prefs = v10;

    v6->_uiUnlockNotifyToken = -1;
    [(EPMobileAssetAutoTrigger *)v6 registerForNotifications];
  }

  return v6;
}

- (void)dealloc
{
  [(EPMobileAssetAutoTrigger *)self unregisterForNotifications];
  v3.receiver = self;
  v3.super_class = EPMobileAssetAutoTrigger;
  [(EPMobileAssetAutoTrigger *)&v3 dealloc];
}

- (void)registerForNotifications
{
  p_uiUnlockNotifyToken = &self->_uiUnlockNotifyToken;
  if (self->_uiUnlockNotifyToken == -1)
  {
    v4 = +[NRQueue registryDaemonQueue];
    queue = [v4 queue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000E250;
    handler[3] = &unk_1001759E8;
    handler[4] = self;
    v6 = notify_register_dispatch("com.apple.springboard.lockstate", p_uiUnlockNotifyToken, queue, handler);

    if (v6)
    {
      v7 = nr_daemon_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

      if (v8)
      {
        v9 = nr_daemon_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1000FD1A8(v6, v9);
        }
      }
    }
  }
}

- (void)unregisterForNotifications
{
  uiUnlockNotifyToken = self->_uiUnlockNotifyToken;
  if (uiUnlockNotifyToken != -1)
  {
    notify_cancel(uiUnlockNotifyToken);
    self->_uiUnlockNotifyToken = -1;
  }
}

- (BOOL)isUIUnlocked
{
  state64 = 0;
  uiUnlockNotifyToken = self->_uiUnlockNotifyToken;
  if (uiUnlockNotifyToken != -1)
  {
    state = notify_get_state(uiUnlockNotifyToken, &state64);
    if (state)
    {
      v4 = state;
      v5 = nr_daemon_log();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

      if (v6)
      {
        v7 = nr_daemon_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1000FD224(v4, v7);
        }
      }
    }
  }

  return state64 == 0;
}

- (void)update
{
  isUIUnlocked = [(EPMobileAssetAutoTrigger *)self isUIUnlocked];
  if (isUIUnlocked)
  {
    wasUIUnlocked = self->_wasUIUnlocked;
    self->_wasUIUnlocked = isUIUnlocked;
    if (!wasUIUnlocked)
    {
      [(EPMobileAssetAutoTrigger *)self getLastAssetUpdateCheckInterval];
      v6 = v5;
      [(EPMobileAssetAutoTrigger *)self getRequiredCooldownIntervalForFailureCount:[(EPMobileAssetAutoTrigger *)self getFailureCount]];
      v8 = v7;
      v9 = sub_1000034AC();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

      if (v10)
      {
        v11 = sub_1000034AC();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v20 = v6;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: Last update check interval: %.0f seconds", buf, 0xCu);
        }
      }

      v12 = sub_1000034AC();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (v6 <= 0.0 || v6 >= v8)
      {
        if (v13)
        {
          v15 = sub_1000034AC();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: Cooldown elapsed; triggering scan", buf, 2u);
          }
        }

        v16 = +[NRQueue assetDownloadQueue];
        queue = [v16 queue];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10000E630;
        v18[3] = &unk_100175A10;
        v18[4] = self;
        [(EPMobileAssetAutoTrigger *)self updateCompatibilityIndexAssetOnQueue:queue userInitiated:1 withCompletion:v18];
      }

      else if (v13)
      {
        v14 = sub_1000034AC();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v20 = v8 - v6;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: Cooldown has not elapsed (%.0f seconds remaining); deferring scan", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    self->_wasUIUnlocked = 0;
  }
}

- (int64_t)getFailureCount
{
  v2 = [(NRPreferences *)self->_prefs objectForKeyedSubscript:@"lastAssetUpdateFailureCount"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (double)getRequiredCooldownIntervalForFailureCount:(int64_t)count
{
  if (count <= 0)
  {
    v13 = sub_1000034AC();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (!v14)
    {
      return 604800.0;
    }

    v9 = sub_1000034AC();
    v6 = 604800.0;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v16 = 67109120;
    LODWORD(v17) = 604800;
    v10 = "EPMobileAssetAutoTrigger: Using %d second interval for success or invalid failure count";
    v11 = v9;
    v12 = 8;
    goto LABEL_12;
  }

  countCopy = 9;
  if (count < 9)
  {
    countCopy = count;
  }

  v5 = 150 << countCopy;
  if (v5 >= 0x5460)
  {
    v5 = 21600;
  }

  v6 = v5;
  v7 = sub_1000034AC();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = sub_1000034AC();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:

      return v6;
    }

    v16 = 134218240;
    v17 = v6;
    v18 = 2048;
    countCopy2 = count;
    v10 = "EPMobileAssetAutoTrigger: Using backoff interval: %.0f seconds for failure count: %ld";
    v11 = v9;
    v12 = 22;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
    goto LABEL_13;
  }

  return v6;
}

- (void)setLastAssetUpdateCheckDate:(id)date withSuccess:(BOOL)success
{
  successCopy = success;
  dateCopy = date;
  v7 = sub_1000034AC();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = sub_1000034AC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (successCopy)
      {
        v10 = @"YES";
      }

      v20 = 138543618;
      v21 = dateCopy;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: setLastAssetUpdateCheckDate: %{public}@ withSuccess: %@", &v20, 0x16u);
    }
  }

  if (successCopy)
  {
    [(NRPreferences *)self->_prefs setObject:0 forKeyedSubscript:@"lastAssetUpdateFailureCount"];
  }

  else
  {
    v11 = [(EPMobileAssetAutoTrigger *)self getFailureCount]+ 1;
    v12 = [NSNumber numberWithInteger:v11];
    [(NRPreferences *)self->_prefs setObject:v12 forKeyedSubscript:@"lastAssetUpdateFailureCount"];

    v13 = sub_1000034AC();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = sub_1000034AC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134217984;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: Update failed, failure count now: %ld", &v20, 0xCu);
      }
    }
  }

  if (dateCopy)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    v16 = [NSNumber numberWithDouble:?];
    prefs = self->_prefs;
    p_prefs = &self->_prefs;
    [(NRPreferences *)prefs setObject:v16 forKeyedSubscript:@"lastAssetUpdateCheckDate"];
  }

  else
  {
    v19 = self->_prefs;
    p_prefs = &self->_prefs;
    [(NRPreferences *)v19 setObject:0 forKeyedSubscript:@"lastAssetUpdateCheckDate"];
  }

  [(NRPreferences *)*p_prefs synchronize];
}

- (double)getLastAssetUpdateCheckInterval
{
  v3 = +[NSDate date];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  v6 = [(NRPreferences *)self->_prefs objectForKeyedSubscript:@"lastAssetUpdateCheckDate"];
  v7 = 0.0;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      v9 = v8;
      v10 = sub_1000034AC();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (v11)
      {
        v12 = sub_1000034AC();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:v9];
          v15 = 138543362;
          v16 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: getLastAssetUpdateCheckInterval: %{public}@", &v15, 0xCu);
        }
      }

      v7 = v5 - v9;
    }
  }

  return v7;
}

- (void)updateAssetFor:(id)for onQueue:(id)queue userInitiated:(BOOL)initiated withCompletion:(id)completion
{
  forCopy = for;
  queueCopy = queue;
  completionCopy = completion;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_10000EEB8;
  v22[4] = sub_10000EEC8;
  v23 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000EED0;
  v17[3] = &unk_100175AD8;
  v17[4] = self;
  initiatedCopy = initiated;
  v13 = forCopy;
  v18 = v13;
  v14 = completionCopy;
  v19 = v14;
  v20 = v22;
  v15 = objc_retainBlock(v17);
  v16 = v15;
  if (queueCopy)
  {
    dispatch_async(queueCopy, v15);
  }

  else
  {
    (v15[2])(v15);
  }

  _Block_object_dispose(v22, 8);
}

- (void)queryAndGetLatestAssetForAssetType:(id)type withAssetCompatibilityVersion:(id)version withCompletion:(id)completion
{
  typeCopy = type;
  versionCopy = version;
  completionCopy = completion;
  v11 = [[MAAssetQuery alloc] initWithType:typeCopy];
  [v11 returnTypes:2];
  if (versionCopy)
  {
    [v11 addKeyValuePair:ASAttributeCompatibilityVersion with:versionCopy];
  }

  v12 = nr_framework_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = nr_framework_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v21 = typeCopy;
      v22 = 2114;
      v23 = versionCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: Query for %{public}@ with asset compatibility version %{public}@", buf, 0x16u);
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000FE9C;
  v17[3] = &unk_100175B28;
  v17[4] = self;
  v18 = v11;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = v11;
  [v16 queryMetaData:v17];
}

- (id)getLatestAssetFromQueryResults:(id)results
{
  resultsCopy = results;
  results = [resultsCopy results];
  v5 = [results count];

  v6 = nr_framework_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    if (v7)
    {
      v8 = nr_framework_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        results2 = [resultsCopy results];
        *buf = 134217984;
        v36 = [results2 count];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: Query returned %lu assets", buf, 0xCu);
      }
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [resultsCopy results];
    v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v31;
      v14 = ASAttributeContentVersion;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          [v16 logAsset];
          if (v12)
          {
            attributes = [v12 attributes];
            v18 = [attributes objectForKey:v14];
            integerValue = [v18 integerValue];

            attributes2 = [v16 attributes];
            v21 = [attributes2 objectForKey:v14];
            integerValue2 = [v21 integerValue];

            if (integerValue2 > integerValue)
            {
              v23 = v16;

              v12 = v23;
            }
          }

          else
          {
            v12 = v16;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v25 = nr_framework_log();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (v26)
    {
      v24 = nr_framework_log();
      resultsCopy = v28;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v36 = v12;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: Latest asset in query is %{public}@", buf, 0xCu);
      }

LABEL_26:

      goto LABEL_29;
    }

    resultsCopy = v28;
  }

  else
  {
    if (v7)
    {
      v24 = nr_framework_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: Query returned no assets", buf, 2u);
      }

      v12 = 0;
      goto LABEL_26;
    }

    v12 = 0;
  }

LABEL_29:

  return v12;
}

- (id)mobileAssetDownloadOptionsUserInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  v4 = objc_alloc_init(MADownloadOptions);
  [v4 setDiscretionary:!initiatedCopy];
  [v4 setDisableUI:1];
  [v4 setAllowsCellularAccess:1];
  [v4 setAllowDaemonConnectionRetries:1];

  return v4;
}

@end