@interface ICCloudConfiguration
+ (BOOL)isConfigurationValid:(id)valid;
+ (id)availableConfigurationURLs;
+ (id)cachedConfigurationURL;
+ (id)defaultConfigurationURL;
+ (id)sharedConfiguration;
+ (void)setDefaultConfigurationURL:(id)l;
- (BOOL)respondsToSelector:(SEL)selector;
- (ICCloudConfiguration)init;
- (id)valueForUndefinedKey:(id)key;
- (void)downloadConfigurationFromRemoteURL:(id)l completionHandler:(id)handler;
- (void)downloadRemoteConfiguration;
- (void)loadConfigurationFromURL:(id)l;
- (void)loadLocalConfigurationFile;
- (void)setConfigurationFromDictionary:(id)dictionary;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation ICCloudConfiguration

+ (id)sharedConfiguration
{
  if (qword_1009529A0 != -1)
  {
    sub_1007654FC();
  }

  v3 = qword_100952998;

  return v3;
}

- (ICCloudConfiguration)init
{
  v9.receiver = self;
  v9.super_class = ICCloudConfiguration;
  v2 = [(ICCloudConfiguration *)&v9 init];
  if (v2)
  {
    v3 = +[_ICCloudDefaultValuesConfigurationStorage sharedConfiguration];
    storage = v2->_storage;
    v2->_storage = v3;

    v5 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    [v5 setDiscretionary:1];
    [v5 set_sourceApplicationBundleIdentifier:REMUniversalAppBundleIdentifier];
    v6 = [NSURLSession sessionWithConfiguration:v5];
    session = v2->_session;
    v2->_session = v6;

    [(ICCloudConfiguration *)v2 loadLocalConfigurationFile];
  }

  return v2;
}

+ (BOOL)isConfigurationValid:(id)valid
{
  v3 = [valid objectForKeyedSubscript:@"configurationVersion"];
  v4 = v3;
  if (!v3)
  {
    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1007655A0();
    }

    goto LABEL_8;
  }

  if ([v3 unsignedIntegerValue] != 2)
  {
    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100765510(v4);
    }

LABEL_8:

    v5 = 0;
    goto LABEL_9;
  }

  v5 = 1;
LABEL_9:

  return v5;
}

+ (id)defaultConfigurationURL
{
  v3 = objc_opt_new();
  userDefaults = [v3 userDefaults];
  v5 = [userDefaults stringForKey:@"CloudConfigurationPath"];

  if (!v5)
  {
    goto LABEL_5;
  }

  firstObject = [NSURL fileURLWithPath:v5];
  if (([firstObject checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    availableConfigurationURLs = [self availableConfigurationURLs];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000A0FA8;
    v24[3] = &unk_1008DB680;
    v25 = v5;
    v8 = [availableConfigurationURLs ic_objectPassingTest:v24];

    [self setDefaultConfigurationURL:v8];
    firstObject = v8;
  }

  if (!firstObject)
  {
LABEL_5:
    v19 = v3;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    availableConfigurationURLs2 = [self availableConfigurationURLs];
    v10 = [availableConfigurationURLs2 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
LABEL_7:
      v13 = 0;
      while (1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(availableConfigurationURLs2);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        lastPathComponent = [v14 lastPathComponent];
        v16 = [lastPathComponent containsString:@"Normal"];

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [availableConfigurationURLs2 countByEnumeratingWithState:&v20 objects:v26 count:16];
          if (v11)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      firstObject = v14;

      if (firstObject)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_13:
    }

    availableConfigurationURLs3 = [self availableConfigurationURLs];
    firstObject = [availableConfigurationURLs3 firstObject];

LABEL_16:
    [self setDefaultConfigurationURL:firstObject];
    v3 = v19;
  }

  return firstObject;
}

+ (void)setDefaultConfigurationURL:(id)l
{
  lCopy = l;
  v7 = objc_opt_new();
  userDefaults = [v7 userDefaults];
  path = [lCopy path];

  [userDefaults setObject:path forKey:@"CloudConfigurationPath"];
  userDefaults2 = [v7 userDefaults];
  [userDefaults2 synchronize];
}

+ (id)cachedConfigurationURL
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:0];

  v4 = [v3 URLByAppendingPathComponent:REMDaemonBundleIdentifier isDirectory:1];

  v5 = [v4 URLByAppendingPathComponent:@"RemoteConfiguration" isDirectory:0];
  v6 = [v5 URLByAppendingPathExtension:@"plist"];

  return v6;
}

+ (id)availableConfigurationURLs
{
  v2 = qword_1009529A8;
  if (!qword_1009529A8)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    resourceURL = [v3 resourceURL];
    v5 = [resourceURL URLByAppendingPathComponent:@"CloudConfigurations" isDirectory:1];

    v6 = +[NSFileManager defaultManager];
    v7 = [v6 enumeratorAtURL:v5 includingPropertiesForKeys:0 options:5 errorHandler:0];

    allObjects = [v7 allObjects];
    v9 = qword_1009529A8;
    qword_1009529A8 = allObjects;

    v2 = qword_1009529A8;
  }

  return v2;
}

- (void)loadLocalConfigurationFile
{
  cachedConfigurationURL = [objc_opt_class() cachedConfigurationURL];
  if (cachedConfigurationURL)
  {
    defaultConfigurationURL = [NSDictionary dictionaryWithContentsOfURL:cachedConfigurationURL];
    if (defaultConfigurationURL)
    {
      v5 = +[REMLog cloudkit];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Checking cached configuration", buf, 2u);
      }

      if ([objc_opt_class() isConfigurationValid:defaultConfigurationURL])
      {
        v6 = +[REMLog cloudkit];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Using cached remote configuration", v9, 2u);
        }

        [(ICCloudConfiguration *)self setConfigurationFromDictionary:defaultConfigurationURL];
        goto LABEL_14;
      }
    }
  }

  else
  {
    defaultConfigurationURL = +[REMLog cloudkit];
    if (os_log_type_enabled(defaultConfigurationURL, OS_LOG_TYPE_ERROR))
    {
      sub_1007655D4();
    }
  }

  v7 = +[REMLog cloudkit];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Using default configuration", v8, 2u);
  }

  defaultConfigurationURL = [objc_opt_class() defaultConfigurationURL];
  [(ICCloudConfiguration *)self loadConfigurationFromURL:defaultConfigurationURL];
LABEL_14:
}

- (void)downloadRemoteConfiguration
{
  v3 = [NSURL URLWithString:@"https://configuration.apple.com/configurations/internetservices/cloudkit/reminders-1.0.plist"];
  v4 = +[REMLog cloudkit];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ICCloudConfiguration: Start downloading configuration from {remoteURL: %{public}@}", &v5, 0xCu);
  }

  [(ICCloudConfiguration *)self downloadConfigurationFromRemoteURL:v3 completionHandler:&stru_1008DB6C0];
}

- (void)downloadConfigurationFromRemoteURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  session = [(ICCloudConfiguration *)self session];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000A1648;
  v14 = &unk_1008DB6E8;
  selfCopy = self;
  v16 = handlerCopy;
  v9 = handlerCopy;
  v10 = [session dataTaskWithURL:lCopy completionHandler:&v11];

  [v10 resume];
}

- (void)loadConfigurationFromURL:(id)l
{
  lCopy = l;
  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Loading cloud configuration {configurationURL: %{public}@}", &v8, 0xCu);
  }

  v6 = [NSDictionary dictionaryWithContentsOfURL:lCopy];
  if (!v6)
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10076589C();
    }
  }

  [(ICCloudConfiguration *)self setConfigurationFromDictionary:v6];
}

- (void)setConfigurationFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = +[_ICCloudDefaultValuesConfigurationStorage sharedConfiguration];
  v5 = objc_alloc_init(_ICCloudConfigurationStorage);
  v6 = [dictionaryCopy objectForKeyedSubscript:@"minimumClientVersions"];
  v7 = v6;
  if (v6 && ([v6 objectForKeyedSubscript:@"iOS"], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    minimumClientVersion = [v7 objectForKeyedSubscript:@"iOS"];
  }

  else
  {
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100765910();
    }

    minimumClientVersion = [v4 minimumClientVersion];
  }

  v11 = minimumClientVersion;
  [(_ICCloudConfigurationStorage *)v5 setMinimumClientVersion:minimumClientVersion];

  v12 = [dictionaryCopy objectForKeyedSubscript:@"throttlingPolicyResetIntervalSeconds"];
  [v12 doubleValue];
  v14 = v13;

  if (v14 == 0.0)
  {
    v14 = 86400.0;
  }

  v15 = [dictionaryCopy objectForKeyedSubscript:@"throttlingPolicy"];
  v246 = v4;
  v245 = v7;
  v244 = v15;
  if (v15)
  {
    v16 = v15;
    v239 = v5;
    v241 = dictionaryCopy;
    throttlingPolicy = +[NSMutableArray array];
    v251 = 0u;
    v252 = 0u;
    v253 = 0u;
    v254 = 0u;
    obj = v16;
    v18 = [obj countByEnumeratingWithState:&v251 objects:v255 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v252;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v252 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v251 + 1) + 8 * i);
          v23 = [v22 objectForKeyedSubscript:@"count"];
          unsignedIntegerValue = [v23 unsignedIntegerValue];

          v25 = [v22 objectForKeyedSubscript:@"intervalSeconds"];
          [v25 doubleValue];
          v27 = v26;

          v28 = [[ICCloudThrottlingLevel alloc] initWithBatchInterval:unsignedIntegerValue numberOfBatches:v27];
          [throttlingPolicy addObject:v28];
        }

        v19 = [obj countByEnumeratingWithState:&v251 objects:v255 count:16];
      }

      while (v19);
    }

    v29 = [[ICCloudThrottlingPolicy alloc] initWithThrottlingLevels:throttlingPolicy resetInterval:v14];
    v5 = v239;
    [(_ICCloudConfigurationStorage *)v239 setThrottlingPolicy:v29];

    dictionaryCopy = v241;
  }

  else
  {
    v30 = +[REMLog cloudkit];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100765944();
    }

    throttlingPolicy = [v4 throttlingPolicy];
    [(_ICCloudConfigurationStorage *)v5 setThrottlingPolicy:throttlingPolicy];
  }

  v31 = [dictionaryCopy objectForKeyedSubscript:@"maxInlineAssetSizeBytes"];
  obja = v31;
  if (v31)
  {
    unsignedIntegerValue2 = [v31 unsignedIntegerValue];
  }

  else
  {
    v33 = +[REMLog cloudkit];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_100765978();
    }

    unsignedIntegerValue2 = [v4 maxInlineAssetSizeBytes];
  }

  [(_ICCloudConfigurationStorage *)v5 setMaxInlineAssetSizeBytes:unsignedIntegerValue2];
  v34 = [dictionaryCopy objectForKeyedSubscript:@"maxAttachmentsPerNote"];
  v242 = v34;
  if (v34)
  {
    unsignedIntegerValue3 = [v34 unsignedIntegerValue];
  }

  else
  {
    v36 = +[REMLog cloudkit];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1007659AC();
    }

    unsignedIntegerValue3 = [v4 maxAttachmentsPerNote];
  }

  [(_ICCloudConfigurationStorage *)v5 setMaxAttachmentsPerNote:unsignedIntegerValue3];
  v37 = [dictionaryCopy objectForKeyedSubscript:@"maxSubAttachmentsPerAttachment"];
  v240 = v37;
  if (v37)
  {
    unsignedIntegerValue4 = [v37 unsignedIntegerValue];
  }

  else
  {
    v39 = +[REMLog cloudkit];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1007659E0();
    }

    unsignedIntegerValue4 = [v4 maxSubAttachmentsPerAttachment];
  }

  [(_ICCloudConfigurationStorage *)v5 setMaxSubAttachmentsPerAttachment:unsignedIntegerValue4];
  v40 = [dictionaryCopy objectForKeyedSubscript:@"pollingIntervalSeconds"];
  v238 = v40;
  if (v40)
  {
    unsignedIntegerValue5 = [v40 unsignedIntegerValue];
  }

  else
  {
    [v4 pollingInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setPollingInterval:unsignedIntegerValue5];
  v42 = [dictionaryCopy objectForKeyedSubscript:@"maximumAttachmentSizeMB"];
  v237 = v42;
  if (v42)
  {
    [(_ICCloudConfigurationStorage *)v5 setMaximumAttachmentSizeMB:v42];
  }

  else
  {
    v43 = +[REMLog cloudkit];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_100765A14();
    }

    maximumAttachmentSizeMB = [v4 maximumAttachmentSizeMB];
    [(_ICCloudConfigurationStorage *)v5 setMaximumAttachmentSizeMB:maximumAttachmentSizeMB];
  }

  v45 = [dictionaryCopy objectForKeyedSubscript:@"resultsLimitPerSyncOperation"];
  v236 = v45;
  if (v45)
  {
    unsignedIntegerValue6 = [v45 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue6 = [v4 resultsLimitPerSyncOperation];
  }

  [(_ICCloudConfigurationStorage *)v5 setResultsLimitPerSyncOperation:unsignedIntegerValue6];
  v47 = +[REMUserDefaults daemonUserDefaults];
  cloudKitResultsLimitPerSyncOperation = [v47 cloudKitResultsLimitPerSyncOperation];
  integerValue = [cloudKitResultsLimitPerSyncOperation integerValue];

  if (integerValue >= 1)
  {
    [(_ICCloudConfigurationStorage *)v5 setResultsLimitPerSyncOperation:integerValue];
  }

  v50 = [dictionaryCopy objectForKeyedSubscript:@"fetchBatchSize"];
  v235 = v50;
  if (v50)
  {
    unsignedIntegerValue7 = [v50 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue7 = [v4 fetchBatchSize];
  }

  [(_ICCloudConfigurationStorage *)v5 setFetchBatchSize:unsignedIntegerValue7];
  v52 = [dictionaryCopy objectForKeyedSubscript:@"fetchCacheCountLimit"];
  v234 = v52;
  if (v52)
  {
    unsignedIntegerValue8 = [v52 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue8 = [v4 fetchCacheCountLimit];
  }

  [(_ICCloudConfigurationStorage *)v5 setFetchCacheCountLimit:unsignedIntegerValue8];
  v54 = [dictionaryCopy objectForKeyedSubscript:@"reachabilityChangeSyncThrottleInterval"];
  v233 = v54;
  if (v54)
  {
    [v54 doubleValue];
  }

  else
  {
    [v4 reachabilityChangeSyncThrottleInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setReachabilityChangeSyncThrottleInterval:?];
  v55 = [dictionaryCopy objectForKeyedSubscript:@"launchAndSignificantTimeChangePollThrottleIntervalV2"];
  v232 = v55;
  if (v55)
  {
    [v55 doubleValue];
  }

  else
  {
    [v4 launchAndSignificantTimeChangePollThrottleInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setLaunchAndSignificantTimeChangePollThrottleInterval:?];
  v56 = [dictionaryCopy objectForKeyedSubscript:@"cloudConfigurationDownloadThrottleInterval"];
  v231 = v56;
  if (v56)
  {
    [v56 doubleValue];
  }

  else
  {
    [v4 cloudConfigurationDownloadThrottleInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setCloudConfigurationDownloadThrottleInterval:?];
  v57 = [dictionaryCopy objectForKeyedSubscript:@"persistedSubscriptionIDsValidityPeriod"];
  v230 = v57;
  if (v57)
  {
    [v57 doubleValue];
  }

  else
  {
    [v4 persistedSubscriptionIDsValidityPeriod];
  }

  [(_ICCloudConfigurationStorage *)v5 setPersistedSubscriptionIDsValidityPeriod:?];
  v58 = [dictionaryCopy objectForKeyedSubscript:@"apsDebouncerDefaultInterval"];
  v229 = v58;
  if (v58)
  {
    [v58 doubleValue];
  }

  else
  {
    [v4 apsDebouncerDefaultInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setApsDebouncerDefaultInterval:?];
  v59 = [dictionaryCopy objectForKeyedSubscript:@"apsDebouncerMigrationInProgressInterval"];
  v228 = v59;
  if (v59)
  {
    [v59 doubleValue];
  }

  else
  {
    [v4 apsDebouncerMigrationInProgressInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setApsDebouncerMigrationInProgressInterval:?];
  v60 = [dictionaryCopy objectForKeyedSubscript:@"apsDebouncerWatchDefaultInterval"];
  v227 = v60;
  if (v60)
  {
    [v60 doubleValue];
  }

  else
  {
    [v4 apsDebouncerWatchDefaultInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setApsDebouncerWatchDefaultInterval:?];
  v61 = [dictionaryCopy objectForKeyedSubscript:@"apsDebouncerWatchMigrationInProgressInterval"];
  v226 = v61;
  if (v61)
  {
    [v61 doubleValue];
  }

  else
  {
    [v4 apsDebouncerWatchMigrationInProgressInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setApsDebouncerWatchMigrationInProgressInterval:?];
  v62 = [dictionaryCopy objectForKeyedSubscript:@"accountChangedDebouncerInterval"];
  v225 = v62;
  if (v62)
  {
    [v62 doubleValue];
  }

  else
  {
    [v4 accountChangedDebouncerInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setAccountChangedDebouncerInterval:?];
  v63 = [dictionaryCopy objectForKeyedSubscript:@"mergeLocalObjectsInitialRetryInterval"];
  v224 = v63;
  if (v63)
  {
    [v63 doubleValue];
  }

  else
  {
    [v4 mergeLocalObjectsInitialRetryInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setMergeLocalObjectsInitialRetryInterval:?];
  v64 = [dictionaryCopy objectForKeyedSubscript:@"mergeLocalObjectsMaximumRetryCount"];
  v223 = v64;
  if (v64)
  {
    unsignedIntegerValue9 = [v64 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue9 = [v4 mergeLocalObjectsMaximumRetryCount];
  }

  [(_ICCloudConfigurationStorage *)v5 setMergeLocalObjectsMaximumRetryCount:unsignedIntegerValue9];
  v66 = [dictionaryCopy objectForKeyedSubscript:@"mergeLocalObjectsRetryStartOverThrottleInterval"];
  v222 = v66;
  if (v66)
  {
    [v66 doubleValue];
  }

  else
  {
    [v4 mergeLocalObjectsRetryStartOverThrottleInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setMergeLocalObjectsRetryStartOverThrottleInterval:?];
  v67 = [dictionaryCopy objectForKeyedSubscript:@"extraneousAlarmsCleanUpTriggerReductionFactor"];
  v221 = v67;
  if (v67)
  {
    [(_ICCloudConfigurationStorage *)v5 setExtraneousAlarmsCleanUpTriggerReductionFactor:v67];
  }

  else
  {
    extraneousAlarmsCleanUpTriggerReductionFactor = [v4 extraneousAlarmsCleanUpTriggerReductionFactor];
    [(_ICCloudConfigurationStorage *)v5 setExtraneousAlarmsCleanUpTriggerReductionFactor:extraneousAlarmsCleanUpTriggerReductionFactor];
  }

  v69 = [dictionaryCopy objectForKeyedSubscript:@"extraneousAlarmsDeleteCountLimit"];
  v220 = v69;
  if (v69)
  {
    unsignedIntValue = [v69 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [v4 extraneousAlarmsDeleteCountLimit];
  }

  [(_ICCloudConfigurationStorage *)v5 setExtraneousAlarmsDeleteCountLimit:unsignedIntValue];
  v71 = [dictionaryCopy objectForKeyedSubscript:@"extraneousAlarmsDeleteCountThreshold"];
  v219 = v71;
  if (v71)
  {
    unsignedIntValue2 = [v71 unsignedIntValue];
  }

  else
  {
    unsignedIntValue2 = [v4 extraneousAlarmsDeleteCountThreshold];
  }

  [(_ICCloudConfigurationStorage *)v5 setExtraneousAlarmsDeleteCountThreshold:unsignedIntValue2];
  v73 = [dictionaryCopy objectForKeyedSubscript:@"extraneousAlarmsBackoffThrottleInterval"];
  v218 = v73;
  if (v73)
  {
    [v73 doubleValue];
  }

  else
  {
    [v4 extraneousAlarmsBackoffThrottleInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setExtraneousAlarmsBackoffThrottleInterval:?];
  v74 = [dictionaryCopy objectForKeyedSubscript:@"extraneousAlarmsThrottleInterval"];
  v217 = v74;
  if (v74)
  {
    [v74 doubleValue];
  }

  else
  {
    [v4 extraneousAlarmsThrottleInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setExtraneousAlarmsThrottleInterval:?];
  v75 = [dictionaryCopy objectForKeyedSubscript:@"extraneousAlarmsCollectorDebounceInterval"];
  v216 = v75;
  if (v75)
  {
    [v75 doubleValue];
  }

  else
  {
    [v4 extraneousAlarmsCollectorDebounceInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setExtraneousAlarmsCollectorDebounceInterval:?];
  v76 = [dictionaryCopy objectForKeyedSubscript:@"extraneousAlarmsCollectorThrottleInterval"];
  v215 = v76;
  if (v76)
  {
    [v76 doubleValue];
  }

  else
  {
    [v4 extraneousAlarmsCollectorThrottleInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setExtraneousAlarmsCollectorThrottleInterval:?];
  v77 = [dictionaryCopy objectForKeyedSubscript:@"staledFileAttachmentCleanupDefaultThrottleInterval"];
  v214 = v77;
  if (v77)
  {
    [v77 doubleValue];
  }

  else
  {
    [v4 staledFileAttachmentCleanupDefaultThrottleInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setStaledFileAttachmentCleanupDefaultThrottleInterval:?];
  v78 = [dictionaryCopy objectForKeyedSubscript:@"staledFileAttachmentCleanupBackoffThrottleInterval"];
  v213 = v78;
  if (v78)
  {
    [v78 doubleValue];
  }

  else
  {
    [v4 staledFileAttachmentCleanupBackoffThrottleInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setStaledFileAttachmentCleanupBackoffThrottleInterval:?];
  v79 = [dictionaryCopy objectForKeyedSubscript:@"staledFileAttachmentCleanupRateReduceFactor"];
  v212 = v79;
  if (v79)
  {
    [(_ICCloudConfigurationStorage *)v5 setStaledFileAttachmentCleanupRateReduceFactor:v79];
  }

  else
  {
    staledFileAttachmentCleanupRateReduceFactor = [v4 staledFileAttachmentCleanupRateReduceFactor];
    [(_ICCloudConfigurationStorage *)v5 setStaledFileAttachmentCleanupRateReduceFactor:staledFileAttachmentCleanupRateReduceFactor];
  }

  v81 = [dictionaryCopy objectForKeyedSubscript:@"staledFileAttachmentCleanupPerRunDeleteLimit"];
  v211 = v81;
  if (v81)
  {
    unsignedIntValue3 = [v81 unsignedIntValue];
  }

  else
  {
    unsignedIntValue3 = [v4 staledFileAttachmentCleanupPerRunDeleteLimit];
  }

  [(_ICCloudConfigurationStorage *)v5 setStaledFileAttachmentCleanupPerRunDeleteLimit:unsignedIntValue3];
  v83 = [dictionaryCopy objectForKeyedSubscript:@"imageDeduplicationDefaultThrottleInterval"];
  v210 = v83;
  if (v83)
  {
    [v83 doubleValue];
  }

  else
  {
    [v4 imageDeduplicationDefaultThrottleInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setImageDeduplicationDefaultThrottleInterval:?];
  v84 = [dictionaryCopy objectForKeyedSubscript:@"imageDeduplicationBackoffThrottleInterval"];
  v209 = v84;
  if (v84)
  {
    [v84 doubleValue];
  }

  else
  {
    [v4 imageDeduplicationBackoffThrottleInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setImageDeduplicationBackoffThrottleInterval:?];
  v85 = [dictionaryCopy objectForKeyedSubscript:@"imageDeduplicationRateReduceFactor"];
  v208 = v85;
  if (v85)
  {
    [(_ICCloudConfigurationStorage *)v5 setImageDeduplicationRateReduceFactor:v85];
  }

  else
  {
    imageDeduplicationRateReduceFactor = [v4 imageDeduplicationRateReduceFactor];
    [(_ICCloudConfigurationStorage *)v5 setImageDeduplicationRateReduceFactor:imageDeduplicationRateReduceFactor];
  }

  v87 = [dictionaryCopy objectForKeyedSubscript:@"imageDeduplicationApproximatePerRunDeleteLimit"];
  v207 = v87;
  if (v87)
  {
    unsignedIntValue4 = [v87 unsignedIntValue];
  }

  else
  {
    unsignedIntValue4 = [v4 imageDeduplicationApproximatePerRunDeleteLimit];
  }

  [(_ICCloudConfigurationStorage *)v5 setImageDeduplicationApproximatePerRunDeleteLimit:unsignedIntValue4];
  v89 = [dictionaryCopy objectForKeyedSubscript:@"savedImageDeduplicationDefaultThrottleInterval"];
  v206 = v89;
  if (v89)
  {
    [v89 doubleValue];
  }

  else
  {
    [v4 savedImageDeduplicationDefaultThrottleInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setSavedImageDeduplicationDefaultThrottleInterval:?];
  v90 = [dictionaryCopy objectForKeyedSubscript:@"savedImageDeduplicationBackoffThrottleInterval"];
  v205 = v90;
  if (v90)
  {
    [v90 doubleValue];
  }

  else
  {
    [v4 savedImageDeduplicationBackoffThrottleInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setSavedImageDeduplicationBackoffThrottleInterval:?];
  v91 = [dictionaryCopy objectForKeyedSubscript:@"savedImageDeduplicationRateReduceFactor"];
  v204 = v91;
  if (v91)
  {
    [(_ICCloudConfigurationStorage *)v5 setSavedImageDeduplicationRateReduceFactor:v91];
  }

  else
  {
    savedImageDeduplicationRateReduceFactor = [v4 savedImageDeduplicationRateReduceFactor];
    [(_ICCloudConfigurationStorage *)v5 setSavedImageDeduplicationRateReduceFactor:savedImageDeduplicationRateReduceFactor];
  }

  v93 = [dictionaryCopy objectForKeyedSubscript:@"savedImageDeduplicationApproximatePerRunDeleteLimit"];
  v203 = v93;
  if (v93)
  {
    unsignedIntValue5 = [v93 unsignedIntValue];
  }

  else
  {
    unsignedIntValue5 = [v4 savedImageDeduplicationApproximatePerRunDeleteLimit];
  }

  [(_ICCloudConfigurationStorage *)v5 setSavedImageDeduplicationApproximatePerRunDeleteLimit:unsignedIntValue5];
  v95 = [dictionaryCopy objectForKeyedSubscript:@"suggestConversionToGroceryListDefaultThrottleInterval"];
  v202 = v95;
  if (v95)
  {
    [v95 doubleValue];
  }

  else
  {
    [v4 suggestConversionToGroceryListDefaultThrottleInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setSuggestConversionToGroceryListDefaultThrottleInterval:?];
  v96 = [dictionaryCopy objectForKeyedSubscript:@"suggestConversionToGroceryListRateReduceFactor"];
  v201 = v96;
  if (v96)
  {
    [(_ICCloudConfigurationStorage *)v5 setSuggestConversionToGroceryListRateReduceFactor:v96];
  }

  else
  {
    suggestConversionToGroceryListRateReduceFactor = [v4 suggestConversionToGroceryListRateReduceFactor];
    [(_ICCloudConfigurationStorage *)v5 setSuggestConversionToGroceryListRateReduceFactor:suggestConversionToGroceryListRateReduceFactor];
  }

  v98 = [dictionaryCopy objectForKeyedSubscript:@"languageHypothesisThresholdForPrimaryLanguage"];
  v200 = v98;
  if (v98)
  {
    [(_ICCloudConfigurationStorage *)v5 setLanguageHypothesisThresholdForPrimaryLanguage:v98];
  }

  else
  {
    languageHypothesisThresholdForPrimaryLanguage = [v4 languageHypothesisThresholdForPrimaryLanguage];
    [(_ICCloudConfigurationStorage *)v5 setLanguageHypothesisThresholdForPrimaryLanguage:languageHypothesisThresholdForPrimaryLanguage];
  }

  v100 = [dictionaryCopy objectForKeyedSubscript:@"languageHypothesisThresholdForAdditionalLanguages"];
  v199 = v100;
  if (v100)
  {
    [(_ICCloudConfigurationStorage *)v5 setLanguageHypothesisThresholdForAdditionalLanguages:v100];
  }

  else
  {
    languageHypothesisThresholdForAdditionalLanguages = [v4 languageHypothesisThresholdForAdditionalLanguages];
    [(_ICCloudConfigurationStorage *)v5 setLanguageHypothesisThresholdForAdditionalLanguages:languageHypothesisThresholdForAdditionalLanguages];
  }

  v102 = [dictionaryCopy objectForKeyedSubscript:@"miniumumAutomaticLanguageConfidenceScoreAllowed"];
  v198 = v102;
  if (v102)
  {
    [(_ICCloudConfigurationStorage *)v5 setMiniumumAutomaticLanguageConfidenceScoreAllowed:v102];
  }

  else
  {
    miniumumAutomaticLanguageConfidenceScoreAllowed = [v4 miniumumAutomaticLanguageConfidenceScoreAllowed];
    [(_ICCloudConfigurationStorage *)v5 setMiniumumAutomaticLanguageConfidenceScoreAllowed:miniumumAutomaticLanguageConfidenceScoreAllowed];
  }

  v104 = [dictionaryCopy objectForKeyedSubscript:@"postAnalyticsDefaultThrottleInterval"];
  v197 = v104;
  if (v104)
  {
    [v104 doubleValue];
  }

  else
  {
    [v4 postAnalyticsDefaultThrottleInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setPostAnalyticsDefaultThrottleInterval:?];
  v105 = [dictionaryCopy objectForKeyedSubscript:@"postAnalyticsRateReduceFactor"];
  v196 = v105;
  if (v105)
  {
    [(_ICCloudConfigurationStorage *)v5 setPostAnalyticsRateReduceFactor:v105];
  }

  else
  {
    postAnalyticsRateReduceFactor = [v4 postAnalyticsRateReduceFactor];
    [(_ICCloudConfigurationStorage *)v5 setPostAnalyticsRateReduceFactor:postAnalyticsRateReduceFactor];
  }

  v107 = [dictionaryCopy objectForKeyedSubscript:@"batchDeleteExpiredRemindersDefaultThrottleInterval"];
  v195 = v107;
  if (v107)
  {
    [v107 doubleValue];
  }

  else
  {
    [v4 batchDeleteExpiredRemindersDefaultThrottleInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setBatchDeleteExpiredRemindersDefaultThrottleInterval:?];
  v108 = [dictionaryCopy objectForKeyedSubscript:@"batchDeleteExpiredRemindersRateReduceFactor"];
  v194 = v108;
  if (v108)
  {
    [(_ICCloudConfigurationStorage *)v5 setBatchDeleteExpiredRemindersRateReduceFactor:v108];
  }

  else
  {
    batchDeleteExpiredRemindersRateReduceFactor = [v4 batchDeleteExpiredRemindersRateReduceFactor];
    [(_ICCloudConfigurationStorage *)v5 setBatchDeleteExpiredRemindersRateReduceFactor:batchDeleteExpiredRemindersRateReduceFactor];
  }

  v110 = [dictionaryCopy objectForKeyedSubscript:@"batchDeleteExpiredRemindersMinimumDeletionTimeInterval"];
  v193 = v110;
  if (v110)
  {
    [v110 doubleValue];
  }

  else
  {
    [v4 batchDeleteExpiredRemindersMinimumDeletionTimeInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setBatchDeleteExpiredRemindersMinimumDeletionTimeInterval:?];
  v111 = [dictionaryCopy objectForKeyedSubscript:@"minimumSearchTermLengthByBaseLanguage"];
  v192 = v111;
  if (v111)
  {
    [(_ICCloudConfigurationStorage *)v5 setMinimumSearchTermLengthByBaseLanguage:v111];
  }

  else
  {
    minimumSearchTermLengthByBaseLanguage = [v4 minimumSearchTermLengthByBaseLanguage];
    [(_ICCloudConfigurationStorage *)v5 setMinimumSearchTermLengthByBaseLanguage:minimumSearchTermLengthByBaseLanguage];
  }

  v113 = [dictionaryCopy objectForKeyedSubscript:@"autoCategorizationInternalInstallMinimumSupportedVersion"];
  v191 = v113;
  if (v113)
  {
    [(_ICCloudConfigurationStorage *)v5 setAutoCategorizationInternalInstallMinimumSupportedVersion:v113];
  }

  else
  {
    autoCategorizationInternalInstallMinimumSupportedVersion = [v4 autoCategorizationInternalInstallMinimumSupportedVersion];
    [(_ICCloudConfigurationStorage *)v5 setAutoCategorizationInternalInstallMinimumSupportedVersion:autoCategorizationInternalInstallMinimumSupportedVersion];
  }

  v115 = [dictionaryCopy objectForKeyedSubscript:@"autoCategorizationNonInternalInstallMinimumSupportedVersion"];
  v190 = v115;
  if (v115)
  {
    [(_ICCloudConfigurationStorage *)v5 setAutoCategorizationNonInternalInstallMinimumSupportedVersion:v115];
  }

  else
  {
    autoCategorizationNonInternalInstallMinimumSupportedVersion = [v4 autoCategorizationNonInternalInstallMinimumSupportedVersion];
    [(_ICCloudConfigurationStorage *)v5 setAutoCategorizationNonInternalInstallMinimumSupportedVersion:autoCategorizationNonInternalInstallMinimumSupportedVersion];
  }

  v117 = [dictionaryCopy objectForKeyedSubscript:@"autoCategorizationOutputParsingType"];
  v189 = v117;
  if (v117)
  {
    unsignedIntValue6 = [v117 unsignedIntValue];
  }

  else
  {
    unsignedIntValue6 = [v4 autoCategorizationOutputParsingType];
  }

  [(_ICCloudConfigurationStorage *)v5 setAutoCategorizationOutputParsingType:unsignedIntValue6];
  v119 = [dictionaryCopy objectForKeyedSubscript:@"autoCategorizationInputExcludeExistingSections"];
  v188 = v119;
  if (v119)
  {
    bOOLValue = [v119 BOOLValue];
  }

  else
  {
    bOOLValue = [v4 autoCategorizationInputExcludeExistingSections];
  }

  [(_ICCloudConfigurationStorage *)v5 setAutoCategorizationInputExcludeExistingSections:bOOLValue];
  v121 = [dictionaryCopy objectForKeyedSubscript:@"autoCategorizationInputMaximumNumberOfRemindersPerBatch"];
  v187 = v121;
  if (v121)
  {
    unsignedIntValue7 = [v121 unsignedIntValue];
  }

  else
  {
    unsignedIntValue7 = [v4 autoCategorizationInputMaximumNumberOfRemindersPerBatch];
  }

  [(_ICCloudConfigurationStorage *)v5 setAutoCategorizationInputMaximumNumberOfRemindersPerBatch:unsignedIntValue7];
  v123 = [dictionaryCopy objectForKeyedSubscript:@"intelligentExtractionsInternalInstallMinimumSupportedVersion"];
  v186 = v123;
  if (v123)
  {
    [(_ICCloudConfigurationStorage *)v5 setIntelligentExtractionsInternalInstallMinimumSupportedVersion:v123];
  }

  else
  {
    intelligentExtractionsInternalInstallMinimumSupportedVersion = [v4 intelligentExtractionsInternalInstallMinimumSupportedVersion];
    [(_ICCloudConfigurationStorage *)v5 setIntelligentExtractionsInternalInstallMinimumSupportedVersion:intelligentExtractionsInternalInstallMinimumSupportedVersion];
  }

  v125 = [dictionaryCopy objectForKeyedSubscript:@"intelligentExtractionsNonInternalInstallMinimumSupportedVersion"];
  v185 = v125;
  if (v125)
  {
    [(_ICCloudConfigurationStorage *)v5 setIntelligentExtractionsNonInternalInstallMinimumSupportedVersion:v125];
  }

  else
  {
    intelligentExtractionsNonInternalInstallMinimumSupportedVersion = [v4 intelligentExtractionsNonInternalInstallMinimumSupportedVersion];
    [(_ICCloudConfigurationStorage *)v5 setIntelligentExtractionsNonInternalInstallMinimumSupportedVersion:intelligentExtractionsNonInternalInstallMinimumSupportedVersion];
  }

  v127 = [dictionaryCopy objectForKeyedSubscript:@"intelligentExtractionsRecipeClassifierConfidenceScoreThreshold"];
  v184 = v127;
  if (v127)
  {
    [(_ICCloudConfigurationStorage *)v5 setIntelligentExtractionsRecipeClassifierConfidenceScoreThreshold:v127];
  }

  else
  {
    intelligentExtractionsRecipeClassifierConfidenceScoreThreshold = [v4 intelligentExtractionsRecipeClassifierConfidenceScoreThreshold];
    [(_ICCloudConfigurationStorage *)v5 setIntelligentExtractionsRecipeClassifierConfidenceScoreThreshold:intelligentExtractionsRecipeClassifierConfidenceScoreThreshold];
  }

  v129 = [dictionaryCopy objectForKeyedSubscript:@"cloudSchemaCatchUpSyncInitialRetryInterval"];
  v183 = v129;
  if (v129)
  {
    [v129 doubleValue];
  }

  else
  {
    [v4 cloudSchemaCatchUpSyncInitialRetryInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setCloudSchemaCatchUpSyncInitialRetryInterval:?];
  v130 = [dictionaryCopy objectForKeyedSubscript:@"cloudSchemaCatchUpSyncMaximumRetryCount"];
  v182 = v130;
  if (v130)
  {
    unsignedIntegerValue10 = [v130 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue10 = [v4 cloudSchemaCatchUpSyncMaximumRetryCount];
  }

  [(_ICCloudConfigurationStorage *)v5 setCloudSchemaCatchUpSyncMaximumRetryCount:unsignedIntegerValue10];
  v132 = [dictionaryCopy objectForKeyedSubscript:@"fetchDatabaseChangesOperationPerScopePerAccountMaximumRetryCount"];
  v181 = v132;
  if (v132)
  {
    unsignedIntegerValue11 = [v132 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue11 = [v4 fetchDatabaseChangesOperationPerScopePerAccountMaximumRetryCount];
  }

  [(_ICCloudConfigurationStorage *)v5 setFetchDatabaseChangesOperationPerScopePerAccountMaximumRetryCount:unsignedIntegerValue11];
  v134 = [dictionaryCopy objectForKeyedSubscript:@"objectEffectiveVersionValidationFlushBatchSize"];
  v180 = v134;
  if (v134)
  {
    unsignedIntegerValue12 = [v134 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue12 = [v4 objectEffectiveVersionValidationFlushBatchSize];
  }

  [(_ICCloudConfigurationStorage *)v5 setObjectEffectiveVersionValidationFlushBatchSize:unsignedIntegerValue12];
  v136 = [dictionaryCopy objectForKeyedSubscript:@"suggestedAttributesTrainingOverrides"];
  v179 = v136;
  if (v136)
  {
    [(_ICCloudConfigurationStorage *)v5 setSuggestedAttributesTrainingOverrides:v136];
  }

  else
  {
    suggestedAttributesTrainingOverrides = [v4 suggestedAttributesTrainingOverrides];
    [(_ICCloudConfigurationStorage *)v5 setSuggestedAttributesTrainingOverrides:suggestedAttributesTrainingOverrides];
  }

  v138 = [dictionaryCopy objectForKeyedSubscript:@"suggestedAttributesHarvestingOverrides"];
  v178 = v138;
  if (v138)
  {
    [(_ICCloudConfigurationStorage *)v5 setSuggestedAttributesHarvestingOverrides:v138];
  }

  else
  {
    suggestedAttributesHarvestingOverrides = [v4 suggestedAttributesHarvestingOverrides];
    [(_ICCloudConfigurationStorage *)v5 setSuggestedAttributesHarvestingOverrides:suggestedAttributesHarvestingOverrides];
  }

  v140 = [dictionaryCopy objectForKeyedSubscript:@"suggestedAttributesAutoTrainingThrottleInterval"];
  v177 = v140;
  if (v140)
  {
    [v140 doubleValue];
  }

  else
  {
    [v4 suggestedAttributesAutoTrainingThrottleInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setSuggestedAttributesAutoTrainingThrottleInterval:?];
  v141 = [dictionaryCopy objectForKeyedSubscript:@"manualSortHintClientSideExpiration"];
  v176 = v141;
  if (v141)
  {
    [v141 doubleValue];
  }

  else
  {
    [v4 manualSortHintClientSideExpiration];
  }

  [(_ICCloudConfigurationStorage *)v5 setManualSortHintClientSideExpiration:?];
  v142 = [dictionaryCopy objectForKeyedSubscript:@"manualSortHintLastAccessedUpdatePolicy"];
  if ([v142 length])
  {
    [(_ICCloudConfigurationStorage *)v5 setManualSortHintLastAccessedUpdatePolicy:v142];
  }

  else
  {
    manualSortHintLastAccessedUpdatePolicy = [v4 manualSortHintLastAccessedUpdatePolicy];
    [(_ICCloudConfigurationStorage *)v5 setManualSortHintLastAccessedUpdatePolicy:manualSortHintLastAccessedUpdatePolicy];
  }

  v144 = [dictionaryCopy objectForKeyedSubscript:@"templatePublicLinkTTL"];
  v174 = v144;
  if (v144)
  {
    [v144 doubleValue];
  }

  else
  {
    [v4 templatePublicLinkTTL];
  }

  [(_ICCloudConfigurationStorage *)v5 setTemplatePublicLinkTTL:?];
  v145 = [dictionaryCopy objectForKeyedSubscript:@"templatePublicLinkOperationTimeoutInterval"];
  v173 = v145;
  if (v145)
  {
    [v145 doubleValue];
  }

  else
  {
    [v4 templatePublicLinkOperationTimeoutInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setTemplatePublicLinkOperationTimeoutInterval:?];
  v146 = [dictionaryCopy objectForKeyedSubscript:@"alarmIDsLimitPerReminder"];
  v172 = v146;
  if (v146)
  {
    unsignedIntegerValue13 = [v146 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue13 = [v4 alarmIDsLimitPerReminder];
  }

  [(_ICCloudConfigurationStorage *)v5 setAlarmIDsLimitPerReminder:unsignedIntegerValue13];
  v148 = [dictionaryCopy objectForKeyedSubscript:@"tapToRadarThrottlingInterval"];
  v171 = v148;
  if (v148)
  {
    [v148 doubleValue];
  }

  else
  {
    [v4 tapToRadarThrottlingInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setTapToRadarThrottlingInterval:?];
  v149 = [dictionaryCopy objectForKeyedSubscript:@"housekeepingActivityMinimumDelay"];
  v170 = v149;
  if (v149)
  {
    [v149 doubleValue];
  }

  else
  {
    [v4 housekeepingActivityMinimumDelay];
  }

  [(_ICCloudConfigurationStorage *)v5 setHousekeepingActivityMinimumDelay:?];
  v150 = [dictionaryCopy objectForKeyedSubscript:@"appStoreReviewCreatedOrCompletedRemindersCountThreshold"];
  v151 = v150;
  if (v150)
  {
    unsignedIntegerValue14 = [v150 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue14 = [v4 appStoreReviewCreatedOrCompletedRemindersCountThreshold];
  }

  [(_ICCloudConfigurationStorage *)v5 setAppStoreReviewCreatedOrCompletedRemindersCountThreshold:unsignedIntegerValue14];
  v153 = [dictionaryCopy objectForKeyedSubscript:@"appStoreReviewNumberOfForegroundsThreshold"];
  v154 = v153;
  if (v153)
  {
    unsignedIntegerValue15 = [v153 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue15 = [v4 appStoreReviewNumberOfForegroundsThreshold];
  }

  [(_ICCloudConfigurationStorage *)v5 setAppStoreReviewNumberOfForegroundsThreshold:unsignedIntegerValue15];
  v156 = [dictionaryCopy objectForKeyedSubscript:@"appStoreReviewTimeIntervalOfInterest"];
  v157 = v156;
  if (v156)
  {
    [v156 doubleValue];
  }

  else
  {
    [v4 appStoreReviewTimeIntervalOfInterest];
  }

  [(_ICCloudConfigurationStorage *)v5 setAppStoreReviewTimeIntervalOfInterest:?];
  v158 = [dictionaryCopy objectForKeyedSubscript:@"appStoreReviewTimeIntervalSinceInitialForeground"];
  v159 = v158;
  if (v158)
  {
    [v158 doubleValue];
  }

  else
  {
    [v4 appStoreReviewTimeIntervalSinceInitialForeground];
  }

  [(_ICCloudConfigurationStorage *)v5 setAppStoreReviewTimeIntervalSinceInitialForeground:?];
  v160 = [dictionaryCopy objectForKeyedSubscript:@"appStoreReviewTimeIntervalSinceLastPrompt"];
  v161 = v160;
  v175 = v142;
  if (v160)
  {
    [v160 doubleValue];
  }

  else
  {
    [v4 appStoreReviewTimeIntervalSinceLastPrompt];
  }

  [(_ICCloudConfigurationStorage *)v5 setAppStoreReviewTimeIntervalSinceLastPrompt:?];
  v162 = [dictionaryCopy objectForKeyedSubscript:@"appStoreReviewTimeIntervalSinceLastFetch"];
  v163 = v162;
  if (v162)
  {
    [v162 doubleValue];
  }

  else
  {
    [v4 appStoreReviewTimeIntervalSinceLastFetch];
  }

  [(_ICCloudConfigurationStorage *)v5 setAppStoreReviewTimeIntervalSinceLastFetch:?];
  v164 = [dictionaryCopy objectForKeyedSubscript:@"iCloudIsOffTimeIntervalSinceLastPrompt"];
  v165 = v164;
  if (v164)
  {
    [v164 doubleValue];
  }

  else
  {
    [v4 iCloudIsOffTimeIntervalSinceLastPrompt];
  }

  [(_ICCloudConfigurationStorage *)v5 setICloudIsOffTimeIntervalSinceLastPrompt:?];
  [(ICCloudConfiguration *)self setStorage:v5];
  v166 = +[ICCloudContext processingQueue];
  v167 = v5;
  v168 = v166;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A35EC;
  block[3] = &unk_1008D9990;
  v169 = v167;
  v250 = v169;
  dispatch_async(v168, block);
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  storage = [(ICCloudConfiguration *)self storage];
  v6 = [storage valueForKey:keyCopy];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = ICCloudConfiguration;
  if ([(ICCloudConfiguration *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    storage = [(ICCloudConfiguration *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  storage = [(ICCloudConfiguration *)self storage];
  [storage setValue:valueCopy forKey:keyCopy];
}

@end