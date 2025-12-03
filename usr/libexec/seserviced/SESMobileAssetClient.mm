@interface SESMobileAssetClient
+ (unint64_t)getWeeksTryingToDownload;
- (BOOL)isEligibleAsset:(id)asset;
- (SESMobileAssetClient)initWithManager:(id)manager;
- (id)optionsForInterval:(double)interval;
- (os_state_data_s)dumpState;
- (void)downloadAsset:(id)asset;
- (void)handleAvailableAsset:(id)asset;
- (void)handleQueryResult:(int64_t)result query:(id)query;
- (void)handleQuerySuccess:(id)success;
- (void)maybeQueryMetadata;
- (void)onAlarm:(id)alarm;
- (void)onDarwinNotification:(id)notification;
- (void)queryMA;
- (void)queryMetadata;
- (void)retryWithBackoff:(id)backoff;
- (void)triggerUserInitiatedSync;
@end

@implementation SESMobileAssetClient

- (SESMobileAssetClient)initWithManager:(id)manager
{
  managerCopy = manager;
  v27.receiver = self;
  v27.super_class = SESMobileAssetClient;
  v5 = [(SESMobileAssetClient *)&v27 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_DEFAULT, 0);

    v8 = dispatch_queue_create("com.apple.seserviced.mobileassetclient", v7);
    [(SESMobileAssetClient *)v5 setQueue:v8];

    v9 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
    [(SESMobileAssetClient *)v5 setUserDefaults:v9];

    [(SESMobileAssetClient *)v5 setMobileAssetManager:managerCopy];
    [(SESMobileAssetClient *)v5 setMetadataQueryInterval:172800.0];
    [(SESMobileAssetClient *)v5 setRetryInProgress:0];
    v5->_errorCount = [(NSUserDefaults *)v5->_userDefaults integerForKey:@"downloadErrorCount"];
    -[SESMobileAssetClient setCurrentCompatibilityVersion:](v5, "setCurrentCompatibilityVersion:", [managerCopy currentCompatibilityVersion]);
    [(SESMobileAssetClient *)v5 setDownloadTimeoutInterval:0];
    v5->_userInitiated = [(NSUserDefaults *)v5->_userDefaults BOOLForKey:@"mobileasset.isUserInitiated"];
    if (SESInternalVariant())
    {
      if ([(NSUserDefaults *)v5->_userDefaults BOOLForKey:@"debug.mobileasset.disable"])
      {
        p_super = SESDefaultLogObject();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "MobileAsset disabled by internal preference", buf, 2u);
        }

        goto LABEL_10;
      }

      userDefaults = [(SESMobileAssetClient *)v5 userDefaults];
      v12 = [userDefaults objectForKey:@"debug.mobileasset.metadataQueryInterval"];

      if (v12)
      {
        [v12 doubleValue];
        [(SESMobileAssetClient *)v5 setMetadataQueryInterval:?];
      }

      userDefaults2 = [(SESMobileAssetClient *)v5 userDefaults];
      -[SESMobileAssetClient setDownloadTimeoutInterval:](v5, "setDownloadTimeoutInterval:", [userDefaults2 integerForKey:@"debug.mobileasset.downloadTimeoutInterval"]);

      userDefaults3 = [(SESMobileAssetClient *)v5 userDefaults];
      v15 = [NSNumber numberWithUnsignedInteger:[(SESMobileAssetClient *)v5 currentCompatibilityVersion]];
      [userDefaults3 setObject:v15 forKey:@"debug.mobileasset.currentCompatibilityVersion"];
    }

    queue = v5->_queue;
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100051550;
    v24 = &unk_1004C0900;
    v25 = v5;
    os_state_add_handler();
    v17 = v5->_queue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100051558;
    v19[3] = &unk_1004C08D8;
    v20 = v25;
    dispatch_async(v17, v19);

    p_super = &v25->super;
LABEL_10:
  }

  return v5;
}

- (void)onAlarm:(id)alarm
{
  alarmCopy = alarm;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100051684;
  v7[3] = &unk_1004C22F0;
  v8 = alarmCopy;
  selfCopy = self;
  v6 = alarmCopy;
  dispatch_async(queue, v7);
}

- (void)onDarwinNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100051800;
  v7[3] = &unk_1004C22F0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (os_state_data_s)dumpState
{
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithBool:self->_retryInProgress];
  [v3 setObject:v4 forKeyedSubscript:@"retryInProgress"];

  v5 = [NSNumber numberWithUnsignedInt:self->_errorCount];
  [v3 setObject:v5 forKeyedSubscript:@"errorCount"];

  v6 = [NSNumber numberWithBool:self->_userInitiated];
  [v3 setObject:v6 forKeyedSubscript:@"userInitiated"];

  v7 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"nextMetadataCheck"];
  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:@"nextMetadataCheck"];
  }

  v8 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"catalogDownloadStartedOn"];
  if (v8)
  {
    [v3 setObject:v8 forKeyedSubscript:@"catalogDownloadStartedOn"];
  }

  v9 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"assetDownloadStartedOn"];
  [v3 setObject:v9 forKeyedSubscript:@"assetDownloadStartedOn"];
  v10 = sub_100015DA0("seserviced.mobileassetclient", v3);

  return v10;
}

- (void)maybeQueryMetadata
{
  queue = [(SESMobileAssetClient *)self queue];
  dispatch_assert_queue_V2(queue);

  [SESAlarm clearAlarm:@"com.apple.seserviced.download.catalog"];
  userDefaults = [(SESMobileAssetClient *)self userDefaults];
  v5 = [userDefaults objectForKey:@"nextMetadataCheck"];

  if (v5)
  {
    [v5 timeIntervalSinceNow];
    v7 = v6;
  }

  else
  {
    v7 = -1.0;
  }

  [(SESMobileAssetClient *)self metadataQueryInterval];
  if (v7 <= v8)
  {
    v9 = v5;
  }

  else
  {
    [(SESMobileAssetClient *)self metadataQueryInterval];
    v9 = [NSDate dateWithTimeIntervalSinceNow:?];

    userDefaults2 = [(SESMobileAssetClient *)self userDefaults];
    [userDefaults2 setObject:v9 forKey:@"nextMetadataCheck"];

    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 134218242;
      v15 = v7;
      v16 = 2112;
      v17 = *&v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Clamping ttnc %.0f to interval, next check %@", &v14, 0x16u);
    }

    [(SESMobileAssetClient *)self metadataQueryInterval];
    v7 = v12;
  }

  v13 = SESDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = *&v9;
    v16 = 2048;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "nextCheck %@ ttNC %.0f", &v14, 0x16u);
  }

  if (v7 <= 0.0)
  {
    [(SESMobileAssetClient *)self queryMetadata];
  }

  else
  {
    [SESAlarm setAlarm:@"com.apple.seserviced.download.catalog" secondsFromNow:v7];
  }
}

- (void)queryMetadata
{
  queue = [(SESMobileAssetClient *)self queue];
  dispatch_assert_queue_V2(queue);

  userDefaults = [(SESMobileAssetClient *)self userDefaults];
  v5 = [userDefaults objectForKey:@"catalogDownloadStartedOn"];

  if (v5)
  {
    [v5 timeIntervalSinceNow];
    v7 = fabs(v6);
  }

  else
  {
    userDefaults2 = [(SESMobileAssetClient *)self userDefaults];
    v9 = +[NSDate now];
    [userDefaults2 setObject:v9 forKey:@"catalogDownloadStartedOn"];

    v7 = 0.0;
  }

  v10 = [(SESMobileAssetClient *)self optionsForInterval:v7];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100051D88;
  v11[3] = &unk_1004C2B28;
  v11[4] = self;
  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.SecureElementServiceAssets" options:v10 then:v11];
}

- (void)queryMA
{
  queue = [(SESMobileAssetClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Querying MA", buf, 2u);
  }

  v5 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.SecureElementServiceAssets"];
  [v5 setDoNotBlockBeforeFirstUnlock:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100052148;
  v7[3] = &unk_1004C2B78;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [v6 queryMetaData:v7];
}

- (void)handleQueryResult:(int64_t)result query:(id)query
{
  queryCopy = query;
  queue = [(SESMobileAssetClient *)self queue];
  dispatch_assert_queue_V2(queue);

  [SESAlarm clearAlarm:@"com.apple.seserviced.download.asset"];
  if (result <= 0xE)
  {
    if (((1 << result) & 0x7F5A) != 0)
    {
      v8 = SESDefaultLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Asset transient error, retrying", v11, 2u);
      }

      [(SESMobileAssetClient *)self retryWithBackoff:@"com.apple.seserviced.download.asset"];
      goto LABEL_6;
    }

    if (((1 << result) & 0xA0) != 0)
    {
      v9 = SESDefaultLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Asset fatal error, not retrying", buf, 2u);
      }

      goto LABEL_6;
    }

    if (result == 2)
    {
      [(SESMobileAssetClient *)self queryMetadata];
      goto LABEL_6;
    }
  }

  if (!result)
  {
    results = [queryCopy results];
    [(SESMobileAssetClient *)self handleQuerySuccess:results];
  }

LABEL_6:
}

- (void)handleQuerySuccess:(id)success
{
  successCopy = success;
  queue = [(SESMobileAssetClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = successCopy;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v22 = 0;
    v9 = *v24;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = SESDefaultLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          assetId = [v11 assetId];
          state = [v11 state];
          attributes = [v11 attributes];
          *buf = 138412802;
          v28 = assetId;
          v29 = 2048;
          v30 = state;
          v31 = 2112;
          v32 = attributes;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Got asset id %@ state %ld attributes %@", buf, 0x20u);
        }

        v16 = [(SESMobileAssetClient *)self isEligibleAsset:v11];
        state2 = [v11 state];
        if (v16)
        {
          if (state2 <= 6)
          {
            if (((1 << state2) & 0x64) != 0)
            {
              [(SESMobileAssetClient *)self handleAvailableAsset:v11];
              continue;
            }

            if (((1 << state2) & 0x12) != 0)
            {
              [(SESMobileAssetClient *)self downloadAsset:v11];
              v22 = 1;
              continue;
            }

            if (state2 == 3)
            {
              v19 = v11;
              v20 = &stru_1004C2BD8;
LABEL_18:
              [v19 purge:v20];
              continue;
            }
          }

          if (!state2)
          {
            [(SESMobileAssetClient *)self retryWithBackoff:@"com.apple.seserviced.download.asset"];
          }
        }

        else if (state2 == 2 || [v11 state] == 3)
        {
          v18 = SESDefaultLogObject();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Purging ineligible asset in installed state", buf, 2u);
          }

          v19 = v11;
          v20 = &stru_1004C2BB8;
          goto LABEL_18;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (!v8)
      {

        if (v22)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }
    }
  }

LABEL_29:
  v21 = SESDefaultLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Got query success w/ no eligible assets, clearing user initiated flag", buf, 2u);
  }

  [(SESMobileAssetClient *)self setUserInitiated:0];
LABEL_32:
}

- (void)downloadAsset:(id)asset
{
  assetCopy = asset;
  queue = [(SESMobileAssetClient *)self queue];
  dispatch_assert_queue_V2(queue);

  userDefaults = [(SESMobileAssetClient *)self userDefaults];
  v7 = [userDefaults objectForKey:@"assetDownloadStartedOn"];

  if (v7)
  {
    [v7 timeIntervalSinceNow];
    v9 = fabs(v8);
  }

  else
  {
    userDefaults2 = [(SESMobileAssetClient *)self userDefaults];
    v11 = +[NSDate now];
    [userDefaults2 setObject:v11 forKey:@"assetDownloadStartedOn"];

    v9 = 0.0;
  }

  v12 = [(SESMobileAssetClient *)self optionsForInterval:v9];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100052814;
  v14[3] = &unk_1004C2B78;
  v14[4] = self;
  v15 = assetCopy;
  v13 = assetCopy;
  [v13 startDownload:v12 then:v14];
}

- (void)handleAvailableAsset:(id)asset
{
  assetCopy = asset;
  dispatch_assert_queue_V2(self->_queue);
  if ([(SESMobileAssetClient *)self isEligibleAsset:assetCopy])
  {
    getLocalFileUrl = [assetCopy getLocalFileUrl];
    if (getLocalFileUrl)
    {
      mobileAssetManager = [(SESMobileAssetClient *)self mobileAssetManager];
      [mobileAssetManager handleDownloadedAsset:getLocalFileUrl];

      v7 = SESDefaultLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Set downloaded asset successfully", v10, 2u);
      }

      [assetCopy purge:&stru_1004C2C18];
      [(SESMobileAssetClient *)self setErrorCount:0];
      [(SESMobileAssetClient *)self setUserInitiated:0];
    }

    else
    {
      v9 = SESDefaultLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Valid asset w/ no URL?", v11, 2u);
      }

      [(SESMobileAssetClient *)self retryWithBackoff:@"com.apple.seserviced.download.asset"];
    }
  }

  else
  {
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Purging ineligible asset", buf, 2u);
    }

    [assetCopy purge:&stru_1004C2BF8];
  }
}

- (void)retryWithBackoff:(id)backoff
{
  backoffCopy = backoff;
  queue = [(SESMobileAssetClient *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([SESAlarm isAlarmSet:backoffCopy])
  {
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = backoffCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Already have alarm for %@ ...", &v11, 0xCu);
    }
  }

  else
  {
    errorCount = [(SESMobileAssetClient *)self errorCount];
    if (errorCount >= 6)
    {
      v8 = 6;
    }

    else
    {
      v8 = errorCount;
    }

    v9 = dword_100408BB8[v8];
    [(SESMobileAssetClient *)self setErrorCount:[(SESMobileAssetClient *)self errorCount]+ 1];
    v10 = SESDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = backoffCopy;
      v13 = 2048;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Scheduling retry of %@ for %lu seconds from now", &v11, 0x16u);
    }

    [SESAlarm setAlarm:backoffCopy secondsFromNow:v9];
  }
}

- (BOOL)isEligibleAsset:(id)asset
{
  assetCopy = asset;
  attributes = [assetCopy attributes];
  v6 = [attributes objectForKeyedSubscript:@"_CompatibilityVersion"];
  intValue = [v6 intValue];

  if ([(SESMobileAssetClient *)self currentCompatibilityVersion]!= intValue)
  {
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v16 = 67109376;
      *v17 = intValue;
      *&v17[4] = 2048;
      *&v17[6] = [(SESMobileAssetClient *)self currentCompatibilityVersion];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Asset ineligible, asset compatVersion %d mine %lu", &v16, 0x12u);
    }

    goto LABEL_8;
  }

  mobileAssetManager = [(SESMobileAssetClient *)self mobileAssetManager];
  currentContentVersion = [mobileAssetManager currentContentVersion];

  attributes2 = [assetCopy attributes];
  v11 = [attributes2 objectForKeyedSubscript:@"_ContentVersion"];

  unsignedIntValue = [v11 unsignedIntValue];
  v13 = currentContentVersion < unsignedIntValue;
  if (currentContentVersion >= unsignedIntValue)
  {
    v14 = SESDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      *v17 = v11;
      *&v17[8] = 2048;
      *&v17[10] = currentContentVersion;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Asset CV %@ <= currentCV %lu", &v16, 0x16u);
    }

LABEL_8:
    v13 = 0;
  }

  return v13;
}

- (id)optionsForInterval:(double)interval
{
  v5 = objc_opt_new();
  [v5 setRequiresPowerPluggedIn:interval < 259200.0 && !self->_userInitiated];
  [v5 setDiscretionary:(interval < 518400.0) & !self->_userInitiated];
  [v5 setAllowsCellularAccess:(interval > 518400.0) | self->_userInitiated];
  [v5 setAllowsExpensiveAccess:(interval > 777600.0) | self->_userInitiated];
  if (SESInternalVariant() && [(SESMobileAssetClient *)self downloadTimeoutInterval])
  {
    [v5 setTimeoutIntervalForResource:{-[SESMobileAssetClient downloadTimeoutInterval](self, "downloadTimeoutInterval")}];
  }

  [v5 logOptions];

  return v5;
}

- (void)triggerUserInitiatedSync
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100053058;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(queue, block);
}

+ (unint64_t)getWeeksTryingToDownload
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  v3 = [v2 objectForKey:@"catalogDownloadStartedOn"];
  [v3 timeIntervalSinceNow];
  v5 = fabs(v4);

  v6 = [v2 objectForKey:@"assetDownloadStartedOn"];
  [v6 timeIntervalSinceNow];
  v8 = fabs(v7);

  return (fmax(v5, v8) / 604800.0);
}

@end