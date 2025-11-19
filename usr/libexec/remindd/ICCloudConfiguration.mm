@interface ICCloudConfiguration
+ (BOOL)isConfigurationValid:(id)a3;
+ (id)availableConfigurationURLs;
+ (id)cachedConfigurationURL;
+ (id)defaultConfigurationURL;
+ (id)sharedConfiguration;
+ (void)setDefaultConfigurationURL:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (ICCloudConfiguration)init;
- (id)valueForUndefinedKey:(id)a3;
- (void)downloadConfigurationFromRemoteURL:(id)a3 completionHandler:(id)a4;
- (void)downloadRemoteConfiguration;
- (void)loadConfigurationFromURL:(id)a3;
- (void)loadLocalConfigurationFile;
- (void)setConfigurationFromDictionary:(id)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
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

+ (BOOL)isConfigurationValid:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"configurationVersion"];
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
  v4 = [v3 userDefaults];
  v5 = [v4 stringForKey:@"CloudConfigurationPath"];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [NSURL fileURLWithPath:v5];
  if (([v6 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v7 = [a1 availableConfigurationURLs];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000A0FA8;
    v24[3] = &unk_1008DB680;
    v25 = v5;
    v8 = [v7 ic_objectPassingTest:v24];

    [a1 setDefaultConfigurationURL:v8];
    v6 = v8;
  }

  if (!v6)
  {
LABEL_5:
    v19 = v3;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [a1 availableConfigurationURLs];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        v15 = [v14 lastPathComponent];
        v16 = [v15 containsString:@"Normal"];

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
          if (v11)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      v6 = v14;

      if (v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_13:
    }

    v17 = [a1 availableConfigurationURLs];
    v6 = [v17 firstObject];

LABEL_16:
    [a1 setDefaultConfigurationURL:v6];
    v3 = v19;
  }

  return v6;
}

+ (void)setDefaultConfigurationURL:(id)a3
{
  v3 = a3;
  v7 = objc_opt_new();
  v4 = [v7 userDefaults];
  v5 = [v3 path];

  [v4 setObject:v5 forKey:@"CloudConfigurationPath"];
  v6 = [v7 userDefaults];
  [v6 synchronize];
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
    v4 = [v3 resourceURL];
    v5 = [v4 URLByAppendingPathComponent:@"CloudConfigurations" isDirectory:1];

    v6 = +[NSFileManager defaultManager];
    v7 = [v6 enumeratorAtURL:v5 includingPropertiesForKeys:0 options:5 errorHandler:0];

    v8 = [v7 allObjects];
    v9 = qword_1009529A8;
    qword_1009529A8 = v8;

    v2 = qword_1009529A8;
  }

  return v2;
}

- (void)loadLocalConfigurationFile
{
  v3 = [objc_opt_class() cachedConfigurationURL];
  if (v3)
  {
    v4 = [NSDictionary dictionaryWithContentsOfURL:v3];
    if (v4)
    {
      v5 = +[REMLog cloudkit];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Checking cached configuration", buf, 2u);
      }

      if ([objc_opt_class() isConfigurationValid:v4])
      {
        v6 = +[REMLog cloudkit];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Using cached remote configuration", v9, 2u);
        }

        [(ICCloudConfiguration *)self setConfigurationFromDictionary:v4];
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = +[REMLog cloudkit];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
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

  v4 = [objc_opt_class() defaultConfigurationURL];
  [(ICCloudConfiguration *)self loadConfigurationFromURL:v4];
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

- (void)downloadConfigurationFromRemoteURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICCloudConfiguration *)self session];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000A1648;
  v14 = &unk_1008DB6E8;
  v15 = self;
  v16 = v6;
  v9 = v6;
  v10 = [v8 dataTaskWithURL:v7 completionHandler:&v11];

  [v10 resume];
}

- (void)loadConfigurationFromURL:(id)a3
{
  v4 = a3;
  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Loading cloud configuration {configurationURL: %{public}@}", &v8, 0xCu);
  }

  v6 = [NSDictionary dictionaryWithContentsOfURL:v4];
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

- (void)setConfigurationFromDictionary:(id)a3
{
  v3 = a3;
  v4 = +[_ICCloudDefaultValuesConfigurationStorage sharedConfiguration];
  v5 = objc_alloc_init(_ICCloudConfigurationStorage);
  v6 = [v3 objectForKeyedSubscript:@"minimumClientVersions"];
  v7 = v6;
  if (v6 && ([v6 objectForKeyedSubscript:@"iOS"], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v7 objectForKeyedSubscript:@"iOS"];
  }

  else
  {
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100765910();
    }

    v9 = [v4 minimumClientVersion];
  }

  v11 = v9;
  [(_ICCloudConfigurationStorage *)v5 setMinimumClientVersion:v9];

  v12 = [v3 objectForKeyedSubscript:@"throttlingPolicyResetIntervalSeconds"];
  [v12 doubleValue];
  v14 = v13;

  if (v14 == 0.0)
  {
    v14 = 86400.0;
  }

  v15 = [v3 objectForKeyedSubscript:@"throttlingPolicy"];
  v246 = v4;
  v245 = v7;
  v244 = v15;
  if (v15)
  {
    v16 = v15;
    v239 = v5;
    v241 = v3;
    v17 = +[NSMutableArray array];
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
          v24 = [v23 unsignedIntegerValue];

          v25 = [v22 objectForKeyedSubscript:@"intervalSeconds"];
          [v25 doubleValue];
          v27 = v26;

          v28 = [[ICCloudThrottlingLevel alloc] initWithBatchInterval:v24 numberOfBatches:v27];
          [v17 addObject:v28];
        }

        v19 = [obj countByEnumeratingWithState:&v251 objects:v255 count:16];
      }

      while (v19);
    }

    v29 = [[ICCloudThrottlingPolicy alloc] initWithThrottlingLevels:v17 resetInterval:v14];
    v5 = v239;
    [(_ICCloudConfigurationStorage *)v239 setThrottlingPolicy:v29];

    v3 = v241;
  }

  else
  {
    v30 = +[REMLog cloudkit];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100765944();
    }

    v17 = [v4 throttlingPolicy];
    [(_ICCloudConfigurationStorage *)v5 setThrottlingPolicy:v17];
  }

  v31 = [v3 objectForKeyedSubscript:@"maxInlineAssetSizeBytes"];
  obja = v31;
  if (v31)
  {
    v32 = [v31 unsignedIntegerValue];
  }

  else
  {
    v33 = +[REMLog cloudkit];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_100765978();
    }

    v32 = [v4 maxInlineAssetSizeBytes];
  }

  [(_ICCloudConfigurationStorage *)v5 setMaxInlineAssetSizeBytes:v32];
  v34 = [v3 objectForKeyedSubscript:@"maxAttachmentsPerNote"];
  v242 = v34;
  if (v34)
  {
    v35 = [v34 unsignedIntegerValue];
  }

  else
  {
    v36 = +[REMLog cloudkit];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1007659AC();
    }

    v35 = [v4 maxAttachmentsPerNote];
  }

  [(_ICCloudConfigurationStorage *)v5 setMaxAttachmentsPerNote:v35];
  v37 = [v3 objectForKeyedSubscript:@"maxSubAttachmentsPerAttachment"];
  v240 = v37;
  if (v37)
  {
    v38 = [v37 unsignedIntegerValue];
  }

  else
  {
    v39 = +[REMLog cloudkit];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1007659E0();
    }

    v38 = [v4 maxSubAttachmentsPerAttachment];
  }

  [(_ICCloudConfigurationStorage *)v5 setMaxSubAttachmentsPerAttachment:v38];
  v40 = [v3 objectForKeyedSubscript:@"pollingIntervalSeconds"];
  v238 = v40;
  if (v40)
  {
    v41 = [v40 unsignedIntegerValue];
  }

  else
  {
    [v4 pollingInterval];
  }

  [(_ICCloudConfigurationStorage *)v5 setPollingInterval:v41];
  v42 = [v3 objectForKeyedSubscript:@"maximumAttachmentSizeMB"];
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

    v44 = [v4 maximumAttachmentSizeMB];
    [(_ICCloudConfigurationStorage *)v5 setMaximumAttachmentSizeMB:v44];
  }

  v45 = [v3 objectForKeyedSubscript:@"resultsLimitPerSyncOperation"];
  v236 = v45;
  if (v45)
  {
    v46 = [v45 unsignedIntegerValue];
  }

  else
  {
    v46 = [v4 resultsLimitPerSyncOperation];
  }

  [(_ICCloudConfigurationStorage *)v5 setResultsLimitPerSyncOperation:v46];
  v47 = +[REMUserDefaults daemonUserDefaults];
  v48 = [v47 cloudKitResultsLimitPerSyncOperation];
  v49 = [v48 integerValue];

  if (v49 >= 1)
  {
    [(_ICCloudConfigurationStorage *)v5 setResultsLimitPerSyncOperation:v49];
  }

  v50 = [v3 objectForKeyedSubscript:@"fetchBatchSize"];
  v235 = v50;
  if (v50)
  {
    v51 = [v50 unsignedIntegerValue];
  }

  else
  {
    v51 = [v4 fetchBatchSize];
  }

  [(_ICCloudConfigurationStorage *)v5 setFetchBatchSize:v51];
  v52 = [v3 objectForKeyedSubscript:@"fetchCacheCountLimit"];
  v234 = v52;
  if (v52)
  {
    v53 = [v52 unsignedIntegerValue];
  }

  else
  {
    v53 = [v4 fetchCacheCountLimit];
  }

  [(_ICCloudConfigurationStorage *)v5 setFetchCacheCountLimit:v53];
  v54 = [v3 objectForKeyedSubscript:@"reachabilityChangeSyncThrottleInterval"];
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
  v55 = [v3 objectForKeyedSubscript:@"launchAndSignificantTimeChangePollThrottleIntervalV2"];
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
  v56 = [v3 objectForKeyedSubscript:@"cloudConfigurationDownloadThrottleInterval"];
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
  v57 = [v3 objectForKeyedSubscript:@"persistedSubscriptionIDsValidityPeriod"];
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
  v58 = [v3 objectForKeyedSubscript:@"apsDebouncerDefaultInterval"];
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
  v59 = [v3 objectForKeyedSubscript:@"apsDebouncerMigrationInProgressInterval"];
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
  v60 = [v3 objectForKeyedSubscript:@"apsDebouncerWatchDefaultInterval"];
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
  v61 = [v3 objectForKeyedSubscript:@"apsDebouncerWatchMigrationInProgressInterval"];
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
  v62 = [v3 objectForKeyedSubscript:@"accountChangedDebouncerInterval"];
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
  v63 = [v3 objectForKeyedSubscript:@"mergeLocalObjectsInitialRetryInterval"];
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
  v64 = [v3 objectForKeyedSubscript:@"mergeLocalObjectsMaximumRetryCount"];
  v223 = v64;
  if (v64)
  {
    v65 = [v64 unsignedIntegerValue];
  }

  else
  {
    v65 = [v4 mergeLocalObjectsMaximumRetryCount];
  }

  [(_ICCloudConfigurationStorage *)v5 setMergeLocalObjectsMaximumRetryCount:v65];
  v66 = [v3 objectForKeyedSubscript:@"mergeLocalObjectsRetryStartOverThrottleInterval"];
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
  v67 = [v3 objectForKeyedSubscript:@"extraneousAlarmsCleanUpTriggerReductionFactor"];
  v221 = v67;
  if (v67)
  {
    [(_ICCloudConfigurationStorage *)v5 setExtraneousAlarmsCleanUpTriggerReductionFactor:v67];
  }

  else
  {
    v68 = [v4 extraneousAlarmsCleanUpTriggerReductionFactor];
    [(_ICCloudConfigurationStorage *)v5 setExtraneousAlarmsCleanUpTriggerReductionFactor:v68];
  }

  v69 = [v3 objectForKeyedSubscript:@"extraneousAlarmsDeleteCountLimit"];
  v220 = v69;
  if (v69)
  {
    v70 = [v69 unsignedIntValue];
  }

  else
  {
    v70 = [v4 extraneousAlarmsDeleteCountLimit];
  }

  [(_ICCloudConfigurationStorage *)v5 setExtraneousAlarmsDeleteCountLimit:v70];
  v71 = [v3 objectForKeyedSubscript:@"extraneousAlarmsDeleteCountThreshold"];
  v219 = v71;
  if (v71)
  {
    v72 = [v71 unsignedIntValue];
  }

  else
  {
    v72 = [v4 extraneousAlarmsDeleteCountThreshold];
  }

  [(_ICCloudConfigurationStorage *)v5 setExtraneousAlarmsDeleteCountThreshold:v72];
  v73 = [v3 objectForKeyedSubscript:@"extraneousAlarmsBackoffThrottleInterval"];
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
  v74 = [v3 objectForKeyedSubscript:@"extraneousAlarmsThrottleInterval"];
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
  v75 = [v3 objectForKeyedSubscript:@"extraneousAlarmsCollectorDebounceInterval"];
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
  v76 = [v3 objectForKeyedSubscript:@"extraneousAlarmsCollectorThrottleInterval"];
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
  v77 = [v3 objectForKeyedSubscript:@"staledFileAttachmentCleanupDefaultThrottleInterval"];
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
  v78 = [v3 objectForKeyedSubscript:@"staledFileAttachmentCleanupBackoffThrottleInterval"];
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
  v79 = [v3 objectForKeyedSubscript:@"staledFileAttachmentCleanupRateReduceFactor"];
  v212 = v79;
  if (v79)
  {
    [(_ICCloudConfigurationStorage *)v5 setStaledFileAttachmentCleanupRateReduceFactor:v79];
  }

  else
  {
    v80 = [v4 staledFileAttachmentCleanupRateReduceFactor];
    [(_ICCloudConfigurationStorage *)v5 setStaledFileAttachmentCleanupRateReduceFactor:v80];
  }

  v81 = [v3 objectForKeyedSubscript:@"staledFileAttachmentCleanupPerRunDeleteLimit"];
  v211 = v81;
  if (v81)
  {
    v82 = [v81 unsignedIntValue];
  }

  else
  {
    v82 = [v4 staledFileAttachmentCleanupPerRunDeleteLimit];
  }

  [(_ICCloudConfigurationStorage *)v5 setStaledFileAttachmentCleanupPerRunDeleteLimit:v82];
  v83 = [v3 objectForKeyedSubscript:@"imageDeduplicationDefaultThrottleInterval"];
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
  v84 = [v3 objectForKeyedSubscript:@"imageDeduplicationBackoffThrottleInterval"];
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
  v85 = [v3 objectForKeyedSubscript:@"imageDeduplicationRateReduceFactor"];
  v208 = v85;
  if (v85)
  {
    [(_ICCloudConfigurationStorage *)v5 setImageDeduplicationRateReduceFactor:v85];
  }

  else
  {
    v86 = [v4 imageDeduplicationRateReduceFactor];
    [(_ICCloudConfigurationStorage *)v5 setImageDeduplicationRateReduceFactor:v86];
  }

  v87 = [v3 objectForKeyedSubscript:@"imageDeduplicationApproximatePerRunDeleteLimit"];
  v207 = v87;
  if (v87)
  {
    v88 = [v87 unsignedIntValue];
  }

  else
  {
    v88 = [v4 imageDeduplicationApproximatePerRunDeleteLimit];
  }

  [(_ICCloudConfigurationStorage *)v5 setImageDeduplicationApproximatePerRunDeleteLimit:v88];
  v89 = [v3 objectForKeyedSubscript:@"savedImageDeduplicationDefaultThrottleInterval"];
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
  v90 = [v3 objectForKeyedSubscript:@"savedImageDeduplicationBackoffThrottleInterval"];
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
  v91 = [v3 objectForKeyedSubscript:@"savedImageDeduplicationRateReduceFactor"];
  v204 = v91;
  if (v91)
  {
    [(_ICCloudConfigurationStorage *)v5 setSavedImageDeduplicationRateReduceFactor:v91];
  }

  else
  {
    v92 = [v4 savedImageDeduplicationRateReduceFactor];
    [(_ICCloudConfigurationStorage *)v5 setSavedImageDeduplicationRateReduceFactor:v92];
  }

  v93 = [v3 objectForKeyedSubscript:@"savedImageDeduplicationApproximatePerRunDeleteLimit"];
  v203 = v93;
  if (v93)
  {
    v94 = [v93 unsignedIntValue];
  }

  else
  {
    v94 = [v4 savedImageDeduplicationApproximatePerRunDeleteLimit];
  }

  [(_ICCloudConfigurationStorage *)v5 setSavedImageDeduplicationApproximatePerRunDeleteLimit:v94];
  v95 = [v3 objectForKeyedSubscript:@"suggestConversionToGroceryListDefaultThrottleInterval"];
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
  v96 = [v3 objectForKeyedSubscript:@"suggestConversionToGroceryListRateReduceFactor"];
  v201 = v96;
  if (v96)
  {
    [(_ICCloudConfigurationStorage *)v5 setSuggestConversionToGroceryListRateReduceFactor:v96];
  }

  else
  {
    v97 = [v4 suggestConversionToGroceryListRateReduceFactor];
    [(_ICCloudConfigurationStorage *)v5 setSuggestConversionToGroceryListRateReduceFactor:v97];
  }

  v98 = [v3 objectForKeyedSubscript:@"languageHypothesisThresholdForPrimaryLanguage"];
  v200 = v98;
  if (v98)
  {
    [(_ICCloudConfigurationStorage *)v5 setLanguageHypothesisThresholdForPrimaryLanguage:v98];
  }

  else
  {
    v99 = [v4 languageHypothesisThresholdForPrimaryLanguage];
    [(_ICCloudConfigurationStorage *)v5 setLanguageHypothesisThresholdForPrimaryLanguage:v99];
  }

  v100 = [v3 objectForKeyedSubscript:@"languageHypothesisThresholdForAdditionalLanguages"];
  v199 = v100;
  if (v100)
  {
    [(_ICCloudConfigurationStorage *)v5 setLanguageHypothesisThresholdForAdditionalLanguages:v100];
  }

  else
  {
    v101 = [v4 languageHypothesisThresholdForAdditionalLanguages];
    [(_ICCloudConfigurationStorage *)v5 setLanguageHypothesisThresholdForAdditionalLanguages:v101];
  }

  v102 = [v3 objectForKeyedSubscript:@"miniumumAutomaticLanguageConfidenceScoreAllowed"];
  v198 = v102;
  if (v102)
  {
    [(_ICCloudConfigurationStorage *)v5 setMiniumumAutomaticLanguageConfidenceScoreAllowed:v102];
  }

  else
  {
    v103 = [v4 miniumumAutomaticLanguageConfidenceScoreAllowed];
    [(_ICCloudConfigurationStorage *)v5 setMiniumumAutomaticLanguageConfidenceScoreAllowed:v103];
  }

  v104 = [v3 objectForKeyedSubscript:@"postAnalyticsDefaultThrottleInterval"];
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
  v105 = [v3 objectForKeyedSubscript:@"postAnalyticsRateReduceFactor"];
  v196 = v105;
  if (v105)
  {
    [(_ICCloudConfigurationStorage *)v5 setPostAnalyticsRateReduceFactor:v105];
  }

  else
  {
    v106 = [v4 postAnalyticsRateReduceFactor];
    [(_ICCloudConfigurationStorage *)v5 setPostAnalyticsRateReduceFactor:v106];
  }

  v107 = [v3 objectForKeyedSubscript:@"batchDeleteExpiredRemindersDefaultThrottleInterval"];
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
  v108 = [v3 objectForKeyedSubscript:@"batchDeleteExpiredRemindersRateReduceFactor"];
  v194 = v108;
  if (v108)
  {
    [(_ICCloudConfigurationStorage *)v5 setBatchDeleteExpiredRemindersRateReduceFactor:v108];
  }

  else
  {
    v109 = [v4 batchDeleteExpiredRemindersRateReduceFactor];
    [(_ICCloudConfigurationStorage *)v5 setBatchDeleteExpiredRemindersRateReduceFactor:v109];
  }

  v110 = [v3 objectForKeyedSubscript:@"batchDeleteExpiredRemindersMinimumDeletionTimeInterval"];
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
  v111 = [v3 objectForKeyedSubscript:@"minimumSearchTermLengthByBaseLanguage"];
  v192 = v111;
  if (v111)
  {
    [(_ICCloudConfigurationStorage *)v5 setMinimumSearchTermLengthByBaseLanguage:v111];
  }

  else
  {
    v112 = [v4 minimumSearchTermLengthByBaseLanguage];
    [(_ICCloudConfigurationStorage *)v5 setMinimumSearchTermLengthByBaseLanguage:v112];
  }

  v113 = [v3 objectForKeyedSubscript:@"autoCategorizationInternalInstallMinimumSupportedVersion"];
  v191 = v113;
  if (v113)
  {
    [(_ICCloudConfigurationStorage *)v5 setAutoCategorizationInternalInstallMinimumSupportedVersion:v113];
  }

  else
  {
    v114 = [v4 autoCategorizationInternalInstallMinimumSupportedVersion];
    [(_ICCloudConfigurationStorage *)v5 setAutoCategorizationInternalInstallMinimumSupportedVersion:v114];
  }

  v115 = [v3 objectForKeyedSubscript:@"autoCategorizationNonInternalInstallMinimumSupportedVersion"];
  v190 = v115;
  if (v115)
  {
    [(_ICCloudConfigurationStorage *)v5 setAutoCategorizationNonInternalInstallMinimumSupportedVersion:v115];
  }

  else
  {
    v116 = [v4 autoCategorizationNonInternalInstallMinimumSupportedVersion];
    [(_ICCloudConfigurationStorage *)v5 setAutoCategorizationNonInternalInstallMinimumSupportedVersion:v116];
  }

  v117 = [v3 objectForKeyedSubscript:@"autoCategorizationOutputParsingType"];
  v189 = v117;
  if (v117)
  {
    v118 = [v117 unsignedIntValue];
  }

  else
  {
    v118 = [v4 autoCategorizationOutputParsingType];
  }

  [(_ICCloudConfigurationStorage *)v5 setAutoCategorizationOutputParsingType:v118];
  v119 = [v3 objectForKeyedSubscript:@"autoCategorizationInputExcludeExistingSections"];
  v188 = v119;
  if (v119)
  {
    v120 = [v119 BOOLValue];
  }

  else
  {
    v120 = [v4 autoCategorizationInputExcludeExistingSections];
  }

  [(_ICCloudConfigurationStorage *)v5 setAutoCategorizationInputExcludeExistingSections:v120];
  v121 = [v3 objectForKeyedSubscript:@"autoCategorizationInputMaximumNumberOfRemindersPerBatch"];
  v187 = v121;
  if (v121)
  {
    v122 = [v121 unsignedIntValue];
  }

  else
  {
    v122 = [v4 autoCategorizationInputMaximumNumberOfRemindersPerBatch];
  }

  [(_ICCloudConfigurationStorage *)v5 setAutoCategorizationInputMaximumNumberOfRemindersPerBatch:v122];
  v123 = [v3 objectForKeyedSubscript:@"intelligentExtractionsInternalInstallMinimumSupportedVersion"];
  v186 = v123;
  if (v123)
  {
    [(_ICCloudConfigurationStorage *)v5 setIntelligentExtractionsInternalInstallMinimumSupportedVersion:v123];
  }

  else
  {
    v124 = [v4 intelligentExtractionsInternalInstallMinimumSupportedVersion];
    [(_ICCloudConfigurationStorage *)v5 setIntelligentExtractionsInternalInstallMinimumSupportedVersion:v124];
  }

  v125 = [v3 objectForKeyedSubscript:@"intelligentExtractionsNonInternalInstallMinimumSupportedVersion"];
  v185 = v125;
  if (v125)
  {
    [(_ICCloudConfigurationStorage *)v5 setIntelligentExtractionsNonInternalInstallMinimumSupportedVersion:v125];
  }

  else
  {
    v126 = [v4 intelligentExtractionsNonInternalInstallMinimumSupportedVersion];
    [(_ICCloudConfigurationStorage *)v5 setIntelligentExtractionsNonInternalInstallMinimumSupportedVersion:v126];
  }

  v127 = [v3 objectForKeyedSubscript:@"intelligentExtractionsRecipeClassifierConfidenceScoreThreshold"];
  v184 = v127;
  if (v127)
  {
    [(_ICCloudConfigurationStorage *)v5 setIntelligentExtractionsRecipeClassifierConfidenceScoreThreshold:v127];
  }

  else
  {
    v128 = [v4 intelligentExtractionsRecipeClassifierConfidenceScoreThreshold];
    [(_ICCloudConfigurationStorage *)v5 setIntelligentExtractionsRecipeClassifierConfidenceScoreThreshold:v128];
  }

  v129 = [v3 objectForKeyedSubscript:@"cloudSchemaCatchUpSyncInitialRetryInterval"];
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
  v130 = [v3 objectForKeyedSubscript:@"cloudSchemaCatchUpSyncMaximumRetryCount"];
  v182 = v130;
  if (v130)
  {
    v131 = [v130 unsignedIntegerValue];
  }

  else
  {
    v131 = [v4 cloudSchemaCatchUpSyncMaximumRetryCount];
  }

  [(_ICCloudConfigurationStorage *)v5 setCloudSchemaCatchUpSyncMaximumRetryCount:v131];
  v132 = [v3 objectForKeyedSubscript:@"fetchDatabaseChangesOperationPerScopePerAccountMaximumRetryCount"];
  v181 = v132;
  if (v132)
  {
    v133 = [v132 unsignedIntegerValue];
  }

  else
  {
    v133 = [v4 fetchDatabaseChangesOperationPerScopePerAccountMaximumRetryCount];
  }

  [(_ICCloudConfigurationStorage *)v5 setFetchDatabaseChangesOperationPerScopePerAccountMaximumRetryCount:v133];
  v134 = [v3 objectForKeyedSubscript:@"objectEffectiveVersionValidationFlushBatchSize"];
  v180 = v134;
  if (v134)
  {
    v135 = [v134 unsignedIntegerValue];
  }

  else
  {
    v135 = [v4 objectEffectiveVersionValidationFlushBatchSize];
  }

  [(_ICCloudConfigurationStorage *)v5 setObjectEffectiveVersionValidationFlushBatchSize:v135];
  v136 = [v3 objectForKeyedSubscript:@"suggestedAttributesTrainingOverrides"];
  v179 = v136;
  if (v136)
  {
    [(_ICCloudConfigurationStorage *)v5 setSuggestedAttributesTrainingOverrides:v136];
  }

  else
  {
    v137 = [v4 suggestedAttributesTrainingOverrides];
    [(_ICCloudConfigurationStorage *)v5 setSuggestedAttributesTrainingOverrides:v137];
  }

  v138 = [v3 objectForKeyedSubscript:@"suggestedAttributesHarvestingOverrides"];
  v178 = v138;
  if (v138)
  {
    [(_ICCloudConfigurationStorage *)v5 setSuggestedAttributesHarvestingOverrides:v138];
  }

  else
  {
    v139 = [v4 suggestedAttributesHarvestingOverrides];
    [(_ICCloudConfigurationStorage *)v5 setSuggestedAttributesHarvestingOverrides:v139];
  }

  v140 = [v3 objectForKeyedSubscript:@"suggestedAttributesAutoTrainingThrottleInterval"];
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
  v141 = [v3 objectForKeyedSubscript:@"manualSortHintClientSideExpiration"];
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
  v142 = [v3 objectForKeyedSubscript:@"manualSortHintLastAccessedUpdatePolicy"];
  if ([v142 length])
  {
    [(_ICCloudConfigurationStorage *)v5 setManualSortHintLastAccessedUpdatePolicy:v142];
  }

  else
  {
    v143 = [v4 manualSortHintLastAccessedUpdatePolicy];
    [(_ICCloudConfigurationStorage *)v5 setManualSortHintLastAccessedUpdatePolicy:v143];
  }

  v144 = [v3 objectForKeyedSubscript:@"templatePublicLinkTTL"];
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
  v145 = [v3 objectForKeyedSubscript:@"templatePublicLinkOperationTimeoutInterval"];
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
  v146 = [v3 objectForKeyedSubscript:@"alarmIDsLimitPerReminder"];
  v172 = v146;
  if (v146)
  {
    v147 = [v146 unsignedIntegerValue];
  }

  else
  {
    v147 = [v4 alarmIDsLimitPerReminder];
  }

  [(_ICCloudConfigurationStorage *)v5 setAlarmIDsLimitPerReminder:v147];
  v148 = [v3 objectForKeyedSubscript:@"tapToRadarThrottlingInterval"];
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
  v149 = [v3 objectForKeyedSubscript:@"housekeepingActivityMinimumDelay"];
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
  v150 = [v3 objectForKeyedSubscript:@"appStoreReviewCreatedOrCompletedRemindersCountThreshold"];
  v151 = v150;
  if (v150)
  {
    v152 = [v150 unsignedIntegerValue];
  }

  else
  {
    v152 = [v4 appStoreReviewCreatedOrCompletedRemindersCountThreshold];
  }

  [(_ICCloudConfigurationStorage *)v5 setAppStoreReviewCreatedOrCompletedRemindersCountThreshold:v152];
  v153 = [v3 objectForKeyedSubscript:@"appStoreReviewNumberOfForegroundsThreshold"];
  v154 = v153;
  if (v153)
  {
    v155 = [v153 unsignedIntegerValue];
  }

  else
  {
    v155 = [v4 appStoreReviewNumberOfForegroundsThreshold];
  }

  [(_ICCloudConfigurationStorage *)v5 setAppStoreReviewNumberOfForegroundsThreshold:v155];
  v156 = [v3 objectForKeyedSubscript:@"appStoreReviewTimeIntervalOfInterest"];
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
  v158 = [v3 objectForKeyedSubscript:@"appStoreReviewTimeIntervalSinceInitialForeground"];
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
  v160 = [v3 objectForKeyedSubscript:@"appStoreReviewTimeIntervalSinceLastPrompt"];
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
  v162 = [v3 objectForKeyedSubscript:@"appStoreReviewTimeIntervalSinceLastFetch"];
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
  v164 = [v3 objectForKeyedSubscript:@"iCloudIsOffTimeIntervalSinceLastPrompt"];
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

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudConfiguration *)self storage];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = ICCloudConfiguration;
  if ([(ICCloudConfiguration *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(ICCloudConfiguration *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICCloudConfiguration *)self storage];
  [v8 setValue:v7 forKey:v6];
}

@end