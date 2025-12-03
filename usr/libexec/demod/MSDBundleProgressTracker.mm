@interface MSDBundleProgressTracker
+ (BOOL)isBundleInstance:(id)instance identicalWithNewBundle:(id)bundle;
+ (void)migratePreferencesFromFactoryDevicesIfNeeded;
+ (void)migratePreferencesFromLegacyDevicesIfNeeded;
+ (void)removeBundleFromPreferences:(id)preferences;
- (BOOL)checkIfAllCriticalComponentsTried;
- (BOOL)getComponentProgressStatus:(id)status;
- (NSMutableDictionary)contentProgress;
- (NSMutableDictionary)installedComponentList;
- (double)getBundleUpdateTime;
- (id)getLastBundleUpdateDate;
- (id)initializeTrackerForBundle:(id)bundle withContentType:(unsigned __int8)type;
- (id)retrieveLegacyContentnIdentifier:(unsigned __int8)identifier;
- (int64_t)getAllComponentsForUpdate;
- (void)addToBundleUpdateTime:(double)time;
- (void)flushRecordsToPreferences;
- (void)markBundleInProgressAsCompleted;
- (void)renameBundleInPrgressToBundleInstalled;
- (void)retrieveAndPopulateBundleInfo:(id)info;
- (void)startBundleUpdateTimer;
- (void)stopBundleUpdateTimer;
- (void)updateComponentProgress:(id)progress withResult:(BOOL)result withAdditionalInfo:(id)info;
- (void)updateDownloadedContent:(unint64_t)content fromSource:(id)source;
@end

@implementation MSDBundleProgressTracker

- (id)initializeTrackerForBundle:(id)bundle withContentType:(unsigned __int8)type
{
  typeCopy = type;
  bundleCopy = bundle;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v44 = bundleCopy;
  installationOrder = [bundleCopy installationOrder];
  v8 = objc_alloc_init(NSMutableDictionary);
  [(MSDBundleProgressTracker *)selfCopy setComponentsFromBundle:v8];

  criticalComponents = [v44 criticalComponents];
  [(MSDBundleProgressTracker *)selfCopy setCriticalComponents:criticalComponents];

  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    criticalComponents2 = [(MSDBundleProgressTracker *)selfCopy criticalComponents];
    *buf = 134217984;
    *v52 = [criticalComponents2 count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "criticalComponents count:%ld", buf, 0xCu);
  }

  criticalComponents3 = [(MSDBundleProgressTracker *)selfCopy criticalComponents];
  v13 = criticalComponents3 == 0;

  if (v13)
  {
    [(MSDBundleProgressTracker *)selfCopy setCriticalComponents:installationOrder];
  }

  v14 = sub_100063A54();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    criticalComponents4 = [(MSDBundleProgressTracker *)selfCopy criticalComponents];
    v16 = [criticalComponents4 count];
    *buf = 134217984;
    *v52 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "installation order items are:%ld", buf, 0xCu);
  }

  v17 = [(MSDBundleProgressTracker *)selfCopy retrieveLegacyContentnIdentifier:typeCopy];
  [(MSDBundleProgressTracker *)selfCopy setContentIdentifierString:v17];

  v18 = sub_100063A54();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v52 = typeCopy;
    *&v52[4] = 2114;
    *&v52[6] = v44;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "initializing tracker:%d %{public}@", buf, 0x12u);
  }

  [(MSDBundleProgressTracker *)selfCopy retrieveAndPopulateBundleInfo:v44];
  bundleInfo = [(MSDBundleProgressTracker *)selfCopy bundleInfo];
  v20 = [bundleInfo objectForKey:@"ManifestVersion"];
  v45 = [MSDSignedManifest appsPrefixForManifestVersion:v20];

  v21 = sub_100063A54();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v52 = "[MSDBundleProgressTracker initializeTrackerForBundle:withContentType:]";
    *&v52[8] = 2114;
    *&v52[10] = v45;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s - installationOrderAppsPrefix:  %{public}@", buf, 0x16u);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = installationOrder;
  v22 = 0;
  v23 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v23)
  {
    v43 = *v47;
    do
    {
      v24 = 0;
      v25 = v22;
      do
      {
        if (*v47 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v46 + 1) + 8 * v24);
        criticalComponents5 = [(MSDBundleProgressTracker *)selfCopy criticalComponents];
        v28 = [criticalComponents5 containsObject:v26];

        if ([v26 hasPrefix:v45])
        {
          v29 = [v26 substringFromIndex:{objc_msgSend(v45, "length")}];

          v30 = [v44 getComponentVersion:v29];
          goto LABEL_20;
        }

        if ([v44 isItemStandAlonePackage:v26])
        {
          v29 = [v26 substringFromIndex:{objc_msgSend(@"/Packages/", "length")}];

          v30 = [v44 getStandAlonePackageVersion:v29];
LABEL_20:
          v31 = v30;
          if (v30)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        v29 = v26;
LABEL_23:
        v31 = @"1";
LABEL_24:
        bundleInfo2 = [(MSDBundleProgressTracker *)selfCopy bundleInfo];
        v33 = [bundleInfo2 objectForKey:@"ManifestVersion"];
        v22 = [MSDSignedManifest getComponentFromPath:v29 forManifestVersion:v33];

        v34 = [NSNumber numberWithBool:v28];
        v35 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v31, @"Version", &__NSDictionary0__struct, @"DebugInfo", &off_10017AEA0, @"Status", v34, @"CriticalComponent", 0];

        componentsFromBundle = [(MSDBundleProgressTracker *)selfCopy componentsFromBundle];
        [componentsFromBundle setObject:v35 forKey:v22];

        v24 = v24 + 1;
        v25 = v22;
      }

      while (v23 != v24);
      v23 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v23);
  }

  [(MSDBundleProgressTracker *)selfCopy setPercentageProgress:0];
  v37 = objc_alloc_init(NSMutableDictionary);
  [(MSDBundleProgressTracker *)selfCopy setDownloadedContentSource:v37];

  [(MSDBundleProgressTracker *)selfCopy setBundleState:1];
  [(MSDBundleProgressTracker *)selfCopy setBundleType:typeCopy];
  [(MSDBundleProgressTracker *)selfCopy addBundleSpecificCompoments:typeCopy];
  componentsFromBundle2 = [(MSDBundleProgressTracker *)selfCopy componentsFromBundle];
  -[MSDBundleProgressTracker setTotalComponents:](selfCopy, "setTotalComponents:", [componentsFromBundle2 count]);

  [(MSDBundleProgressTracker *)selfCopy setComponentsSuccessful:0];
  [(MSDBundleProgressTracker *)selfCopy setLastBundleUpdateDate:@"<unknown>"];
  v39 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"startTime", &off_10017AEB8, @"totalTimeTaken", 0];
  [(MSDBundleProgressTracker *)selfCopy setBundleTimerInfo:v39];

  [(MSDBundleProgressTracker *)selfCopy flushRecordsToPreferences];
  objc_sync_exit(selfCopy);

  return selfCopy;
}

- (void)updateComponentProgress:(id)progress withResult:(BOOL)result withAdditionalInfo:(id)info
{
  resultCopy = result;
  progressCopy = progress;
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v42 = selfCopy;
  bundleInfo = [(MSDBundleProgressTracker *)selfCopy bundleInfo];

  if (bundleInfo)
  {
    bundleInfo2 = [(MSDBundleProgressTracker *)v42 bundleInfo];
    v11 = [bundleInfo2 objectForKey:@"ManifestVersion"];

    v36 = v11;
    if (v11)
    {
      v39 = [MSDSignedManifest getComponentFromPath:progressCopy forManifestVersion:v11];
      componentsFromBundle = [(MSDBundleProgressTracker *)v42 componentsFromBundle];
      v13 = [componentsFromBundle objectForKey:v39];
      v40 = [v13 mutableCopy];

      v14 = sub_100063A54();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        *&buf[4] = v39;
        v49 = 1026;
        v50 = resultCopy;
        v51 = 2114;
        v52 = infoCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating component record:%{public}@ result:%{public, BOOL}d info:%{public}@", buf, 0x1Cu);
      }

      if (v40)
      {
        if (resultCopy)
        {
          v15 = 2;
        }

        else
        {
          v15 = 1;
        }

        v16 = [NSNumber numberWithUnsignedInteger:v15];
        [v40 setObject:v16 forKey:@"Status"];

        [v40 setObject:infoCopy forKey:@"DebugInfo"];
        componentsFromBundle2 = [(MSDBundleProgressTracker *)v42 componentsFromBundle];
        [componentsFromBundle2 setObject:v40 forKey:v39];
      }

      v18 = +[MSDTargetDevice sharedInstance];
      criticalUpdatePrioritized = [v18 criticalUpdatePrioritized];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      componentsFromBundle3 = [(MSDBundleProgressTracker *)v42 componentsFromBundle];
      v21 = 0;
      v22 = 0;
      v23 = [componentsFromBundle3 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v23)
      {
        v24 = *v44;
        obj = componentsFromBundle3;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v44 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v43 + 1) + 8 * i);
            componentsFromBundle4 = [(MSDBundleProgressTracker *)v42 componentsFromBundle];
            v28 = [componentsFromBundle4 objectForKey:v26];

            v29 = [v28 objectForKey:@"Status"];
            LODWORD(componentsFromBundle4) = [v29 intValue];

            v30 = [v28 objectForKey:@"CriticalComponent"];
            bOOLValue = [v30 BOOLValue];

            if (componentsFromBundle4 == 2)
            {
              ++v22;
            }

            if (bOOLValue)
            {
              v32 = v21 + 1;
            }

            else
            {
              v32 = v21;
            }

            if (criticalUpdatePrioritized)
            {
              v21 = v32;
            }

            else
            {
              ++v21;
            }
          }

          componentsFromBundle3 = obj;
          v23 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v23);
      }

      [(MSDBundleProgressTracker *)v42 setComponentsSuccessful:v22];
      if (v21)
      {
        v33 = 100 * [(MSDBundleProgressTracker *)v42 componentsSuccessful]/ v21;
      }

      else
      {
        v33 = 100;
      }

      [(MSDBundleProgressTracker *)v42 setPercentageProgress:v33];
      [(MSDBundleProgressTracker *)v42 flushRecordsToPreferences];
    }

    else
    {
      v35 = sub_100063A54();
      sub_1000CA538(v35, buf);
    }
  }

  else
  {
    v34 = sub_100063A54();
    sub_1000CA5D0(v34, buf);
  }

  objc_sync_exit(v42);
}

- (void)updateDownloadedContent:(unint64_t)content fromSource:(id)source
{
  sourceCopy = source;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  downloadedContentSource = [(MSDBundleProgressTracker *)selfCopy downloadedContentSource];
  longLongValue = [downloadedContentSource objectForKey:sourceCopy];

  if (longLongValue)
  {
    downloadedContentSource2 = [(MSDBundleProgressTracker *)selfCopy downloadedContentSource];
    v10 = [downloadedContentSource2 objectForKey:sourceCopy];
    longLongValue = [v10 longLongValue];
  }

  downloadedContentSource3 = [(MSDBundleProgressTracker *)selfCopy downloadedContentSource];
  v12 = [NSNumber numberWithLongLong:&longLongValue[content]];
  [downloadedContentSource3 setObject:v12 forKey:sourceCopy];

  [(MSDBundleProgressTracker *)selfCopy flushRecordsToPreferences];
  objc_sync_exit(selfCopy);
}

- (void)markBundleInProgressAsCompleted
{
  obj = self;
  objc_sync_enter(obj);
  if ([(MSDBundleProgressTracker *)obj bundleState]== 1)
  {
    totalComponents = [(MSDBundleProgressTracker *)obj totalComponents];
    if (totalComponents == [(MSDBundleProgressTracker *)obj componentsSuccessful])
    {
      v3 = 3;
    }

    else
    {
      v4 = +[MSDTargetDevice sharedInstance];
      criticalUpdatePrioritized = [v4 criticalUpdatePrioritized];

      if (criticalUpdatePrioritized)
      {
        if ([(MSDBundleProgressTracker *)obj checkIfAllCriticalComponentsTried])
        {
          v3 = 5;
        }

        else
        {
          v3 = 6;
        }
      }

      else
      {
        v3 = 4;
      }
    }

    [(MSDBundleProgressTracker *)obj setBundleState:v3];
    v6 = objc_alloc_init(NSDateFormatter);
    [v6 setDateFormat:@"yyyy-MM-dd"];
    v7 = +[NSDate date];
    v8 = [v6 stringFromDate:v7];

    [(MSDBundleProgressTracker *)obj setLastBundleUpdateDate:v8];
  }

  [(MSDBundleProgressTracker *)obj flushRecordsToPreferences];
  objc_sync_exit(obj);
}

- (void)renameBundleInPrgressToBundleInstalled
{
  obj = self;
  objc_sync_enter(obj);
  contentIdentifierString = [(MSDBundleProgressTracker *)obj contentIdentifierString];
  v3 = [contentIdentifierString isEqualToString:@"Content.Installing"];

  if (v3)
  {
    [(MSDBundleProgressTracker *)obj setContentIdentifierString:@"Content.Existing"];
    [(MSDBundleProgressTracker *)obj setBundleType:0];
    v4 = +[MSDTargetDevice sharedInstance];
    [v4 setCriticalUpdatePrioritized:0];

    [(MSDBundleProgressTracker *)obj flushRecordsToPreferences];
    v5 = +[MSDPreferencesFile sharedInstance];
    [v5 removeObjectForKey:@"Content.Installing"];
  }

  objc_sync_exit(obj);
}

- (int64_t)getAllComponentsForUpdate
{
  v3 = +[MSDTargetDevice sharedInstance];
  criticalUpdatePrioritized = [v3 criticalUpdatePrioritized];

  if (criticalUpdatePrioritized)
  {
    criticalComponents = [(MSDBundleProgressTracker *)self criticalComponents];
    totalComponents = [criticalComponents count];
  }

  else
  {
    totalComponents = [(MSDBundleProgressTracker *)self totalComponents];
  }

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CA668(self, totalComponents, v7);
  }

  return totalComponents;
}

- (id)getLastBundleUpdateDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lastBundleUpdateDate = [(MSDBundleProgressTracker *)selfCopy lastBundleUpdateDate];
  objc_sync_exit(selfCopy);

  return lastBundleUpdateDate;
}

- (double)getBundleUpdateTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bundleTimerInfo = [(MSDBundleProgressTracker *)selfCopy bundleTimerInfo];
  v4 = [bundleTimerInfo objectForKey:@"startTime"];
  [v4 doubleValue];
  v6 = v5;

  bundleTimerInfo2 = [(MSDBundleProgressTracker *)selfCopy bundleTimerInfo];
  v8 = [bundleTimerInfo2 objectForKey:@"totalTimeTaken"];
  [v8 doubleValue];
  v10 = v9;

  if (v6 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v11 = [NSDate dateWithTimeIntervalSince1970:v6];
    v12 = +[NSDate now];
    [v12 timeIntervalSinceDate:v11];
    v14 = v13;
  }

  objc_sync_exit(selfCopy);

  return v10 + v14;
}

- (void)addToBundleUpdateTime:(double)time
{
  obj = self;
  objc_sync_enter(obj);
  bundleTimerInfo = [(MSDBundleProgressTracker *)obj bundleTimerInfo];
  v5 = [bundleTimerInfo objectForKey:@"totalTimeTaken"];
  [v5 doubleValue];
  v7 = v6;

  bundleTimerInfo2 = [(MSDBundleProgressTracker *)obj bundleTimerInfo];
  time = [NSNumber numberWithDouble:v7 + time];
  [bundleTimerInfo2 setObject:time forKey:@"totalTimeTaken"];

  [(MSDBundleProgressTracker *)obj flushRecordsToPreferences];
  objc_sync_exit(obj);
}

- (BOOL)getComponentProgressStatus:(id)status
{
  statusCopy = status;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bundleInfo = [(MSDBundleProgressTracker *)selfCopy bundleInfo];
  v7 = [bundleInfo objectForKey:@"ManifestVersion"];
  v8 = [MSDSignedManifest getComponentFromPath:statusCopy forManifestVersion:v7];

  componentsFromBundle = [(MSDBundleProgressTracker *)selfCopy componentsFromBundle];
  v10 = [componentsFromBundle objectForKey:v8];

  v11 = [v10 objectForKey:@"Status"];
  v12 = [v11 intValue] == 2;

  objc_sync_exit(selfCopy);
  return v12;
}

- (NSMutableDictionary)installedComponentList
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = objc_alloc_init(NSMutableDictionary);
  if (![(MSDBundleProgressTracker *)selfCopy preInstalledContent])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    componentsFromBundle = [(MSDBundleProgressTracker *)selfCopy componentsFromBundle];
    allKeys = [componentsFromBundle allKeys];

    v5 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = *v20;
      do
      {
        v7 = allKeys;
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v7);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          componentsFromBundle2 = [(MSDBundleProgressTracker *)selfCopy componentsFromBundle];
          v11 = [componentsFromBundle2 objectForKey:v9];
          v12 = [v11 objectForKey:@"Status"];
          v13 = [v12 integerValue] == 2;

          if (v13)
          {
            componentsFromBundle3 = [(MSDBundleProgressTracker *)selfCopy componentsFromBundle];
            v15 = [componentsFromBundle3 objectForKey:v9];
            v16 = [v15 objectForKey:@"Version"];
            [v18 setObject:v16 forKey:v9];
          }
        }

        allKeys = v7;
        v5 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v5);
    }
  }

  objc_sync_exit(selfCopy);

  return v18;
}

- (NSMutableDictionary)contentProgress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc_init(NSMutableDictionary);
  bundleState = [(MSDBundleProgressTracker *)selfCopy bundleState];
  if (bundleState == 5)
  {
    bundleState2 = 3;
  }

  else if (bundleState == 6)
  {
    bundleState2 = 4;
  }

  else
  {
    bundleState2 = [(MSDBundleProgressTracker *)selfCopy bundleState];
  }

  contentIdentifierString = [(MSDBundleProgressTracker *)selfCopy contentIdentifierString];
  v7 = [contentIdentifierString isEqualToString:@"Content.Installing"];

  if (v7)
  {
    v8 = [NSNumber numberWithInteger:[(MSDBundleProgressTracker *)selfCopy percentageProgress]];
    [v3 setObject:v8 forKey:@"InstalledComponentsPercent"];

    [v3 setObject:&off_10017AEB8 forKey:@"InstalledSizePercent"];
    v9 = [NSNumber numberWithUnsignedChar:bundleState2];
    [v3 setObject:v9 forKey:@"InstallState"];
  }

  else
  {
    contentIdentifierString2 = [(MSDBundleProgressTracker *)selfCopy contentIdentifierString];
    v11 = [contentIdentifierString2 isEqualToString:@"Content.Downloading"];

    if (!v11)
    {
      goto LABEL_11;
    }

    v12 = [NSNumber numberWithInteger:[(MSDBundleProgressTracker *)selfCopy percentageProgress]];
    [v3 setObject:v12 forKey:@"DownloadedComponentsPercent"];

    [v3 setObject:&off_10017AEB8 forKey:@"DownloadedSizePercent"];
    v9 = [NSNumber numberWithUnsignedChar:bundleState2];
    [v3 setObject:v9 forKey:@"DownloadState"];
  }

LABEL_11:
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)retrieveAndPopulateBundleInfo:(id)info
{
  infoCopy = info;
  getInfo = [infoCopy getInfo];
  v6 = +[NSMutableDictionary dictionary];
  [(MSDBundleProgressTracker *)self setBundleInfo:v6];

  v7 = [getInfo objectForKey:@"PartNumber"];
  if (v7)
  {
    bundleInfo = [(MSDBundleProgressTracker *)self bundleInfo];
    [bundleInfo setObject:v7 forKey:@"PartNumber"];
  }

  v9 = [getInfo objectForKey:@"Revision"];

  if (v9)
  {
    bundleInfo2 = [(MSDBundleProgressTracker *)self bundleInfo];
    [bundleInfo2 setObject:v9 forKey:@"Revision"];
  }

  v11 = [getInfo objectForKey:@"BundleName"];

  if (v11)
  {
    bundleInfo3 = [(MSDBundleProgressTracker *)self bundleInfo];
    [bundleInfo3 setObject:v11 forKey:@"BundleName"];
  }

  v19 = +[MSDFileDownloadCredentials sharedInstance];
  manifestInfo = [v19 manifestInfo];
  v14 = [manifestInfo objectForKey:@"SigningKey"];

  if (v14)
  {
    bundleInfo4 = [(MSDBundleProgressTracker *)self bundleInfo];
    [bundleInfo4 setObject:v14 forKey:@"SigningKey"];
  }

  bundleInfo5 = [(MSDBundleProgressTracker *)self bundleInfo];
  getVersion = [infoCopy getVersion];

  v18 = [NSNumber numberWithInt:getVersion];
  [bundleInfo5 setObject:v18 forKey:@"ManifestVersion"];
}

- (id)retrieveLegacyContentnIdentifier:(unsigned __int8)identifier
{
  v3 = @"Content.Downloading";
  if (identifier == 2)
  {
    v3 = @"Content.Installing";
  }

  if (identifier)
  {
    return v3;
  }

  else
  {
    return @"Content.Existing";
  }
}

- (void)flushRecordsToPreferences
{
  v15[0] = @"BundleInfo";
  bundleInfo = [(MSDBundleProgressTracker *)self bundleInfo];
  v16[0] = bundleInfo;
  v15[1] = @"PreInstalledContent";
  v3 = [NSNumber numberWithBool:[(MSDBundleProgressTracker *)self preInstalledContent]];
  v16[1] = v3;
  v15[2] = @"ComponentInfo";
  componentsFromBundle = [(MSDBundleProgressTracker *)self componentsFromBundle];
  v16[2] = componentsFromBundle;
  v15[3] = @"ContentStatus";
  v5 = [NSNumber numberWithUnsignedChar:[(MSDBundleProgressTracker *)self bundleState]];
  v16[3] = v5;
  v15[4] = @"ContentSource";
  downloadedContentSource = [(MSDBundleProgressTracker *)self downloadedContentSource];
  v16[4] = downloadedContentSource;
  v15[5] = @"TotalComponents";
  v7 = [NSNumber numberWithInteger:[(MSDBundleProgressTracker *)self totalComponents]];
  v16[5] = v7;
  v15[6] = @"SuccessfulComponents";
  v8 = [NSNumber numberWithInteger:[(MSDBundleProgressTracker *)self componentsSuccessful]];
  v16[6] = v8;
  v15[7] = @"LastBundleUpdateDate";
  lastBundleUpdateDate = [(MSDBundleProgressTracker *)self lastBundleUpdateDate];
  v16[7] = lastBundleUpdateDate;
  v15[8] = @"BundleTimerInfo";
  bundleTimerInfo = [(MSDBundleProgressTracker *)self bundleTimerInfo];
  v16[8] = bundleTimerInfo;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:9];

  v12 = +[MSDPreferencesFile sharedInstance];
  contentIdentifierString = [(MSDBundleProgressTracker *)self contentIdentifierString];
  [v12 setObject:v11 forKey:contentIdentifierString];
}

- (BOOL)checkIfAllCriticalComponentsTried
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(MSDBundleProgressTracker *)self criticalComponents];
  v3 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        bundleInfo = [(MSDBundleProgressTracker *)self bundleInfo];
        v9 = [bundleInfo objectForKey:@"ManifestVersion"];
        v10 = [MSDSignedManifest getComponentFromPath:v7 forManifestVersion:v9];

        componentsFromBundle = [(MSDBundleProgressTracker *)self componentsFromBundle];
        v12 = [componentsFromBundle objectForKey:v10];

        if (v12)
        {
          v13 = [v12 objectForKey:@"Status"];
          intValue = [v13 intValue];

          if (!intValue)
          {

            v16 = 0;
            goto LABEL_15;
          }
        }

        else
        {
          v15 = sub_100063A54();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v25 = v10;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Couldn't get componentInfo for: %{public}@, skipping...", buf, 0xCu);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v4);
  }

  v16 = 1;
LABEL_15:

  v17 = sub_100063A54();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v25) = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Critical components tried:%d", buf, 8u);
  }

  return v16;
}

+ (void)removeBundleFromPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = preferencesCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "removing bundlepreferences:%{public}@", &v6, 0xCu);
  }

  v5 = +[MSDPreferencesFile sharedInstance];
  [v5 removeObjectForKey:preferencesCopy];
}

+ (BOOL)isBundleInstance:(id)instance identicalWithNewBundle:(id)bundle
{
  instanceCopy = instance;
  getInfo = [bundle getInfo];
  v7 = +[MSDFileDownloadCredentials sharedInstance];
  v8 = 0;
  if (instanceCopy && bundle)
  {
    v22 = [getInfo objectForKey:@"PartNumber"];
    bundleInfo = [instanceCopy bundleInfo];
    v10 = [bundleInfo objectForKey:@"PartNumber"];

    bundleInfo2 = [instanceCopy bundleInfo];
    v12 = [bundleInfo2 objectForKey:@"Revision"];
    integerValue = [v12 integerValue];

    v14 = [getInfo objectForKey:@"Revision"];
    integerValue2 = [v14 integerValue];

    bundleInfo3 = [instanceCopy bundleInfo];
    v17 = [bundleInfo3 objectForKey:@"SigningKey"];

    manifestInfo = [v7 manifestInfo];
    v19 = [manifestInfo objectForKey:@"SigningKey"];

    if ([v22 isEqualToString:v10] && integerValue == integerValue2 && objc_msgSend(v19, "isEqualToString:", v17))
    {
      v20 = sub_100063A54();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "It is the same old bundle.", buf, 2u);
      }

      v8 = 1;
    }

    else
    {
      v20 = sub_100063A54();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "It is not the same old bundle.", v23, 2u);
      }

      v8 = 0;
    }
  }

  return v8;
}

+ (void)migratePreferencesFromLegacyDevicesIfNeeded
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"ContentInstalled"];

  v4 = sub_100063A54();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found the key contentInstalled...", buf, 2u);
    }

    v6 = +[MSDPreferencesFile sharedInstance];
    v7 = [v6 objectForKey:@"Content.Existing"];

    if (v7)
    {
      v8 = +[MSDPreferencesFile sharedInstance];
      v9 = [v8 objectForKey:@"ContentInstalled"];

      if (v9)
      {
        v10 = [v9 objectForKey:@"DemoContent"];
        if (v10)
        {
          v11 = [v9 objectForKey:@"Installed"];
          intValue = [v11 intValue];

          v13 = [v9 objectForKey:@"Total"];
          intValue2 = [v13 intValue];
        }

        else
        {
          intValue2 = 0;
          intValue = 0;
        }
      }

      else
      {
        intValue2 = 0;
        intValue = 0;
      }

      if (intValue == intValue2)
      {
        v16 = 3;
      }

      else
      {
        v16 = 4;
      }

      v17 = +[MSDPreferencesFile sharedInstance];
      v4 = [v17 objectForKey:@"Content.Existing"];

      v15 = objc_alloc_init(NSMutableDictionary);
      v7 = objc_alloc_init(NSMutableDictionary);
      v18 = sub_100063A54();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v46 = intValue2;
        v47 = 2048;
        v48 = intValue;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "totalComponents:%ld componentsSuccessful:%ld", buf, 0x16u);
      }

      v19 = [NSNumber numberWithUnsignedChar:v16];
      v20 = [NSNumber numberWithInteger:intValue2];
      v21 = [NSNumber numberWithInteger:intValue];
      v22 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v4, @"BundleInfo", v15, @"ComponentInfo", v19, @"ContentStatus", v7, @"ContentSource", v20, @"TotalComponents", v21, @"SuccessfulComponents", @"<unknown>", @"LastBundleUpdateDate", 0];

      v23 = +[MSDPreferencesFile sharedInstance];
      [v23 setObject:v22 forKey:@"Content.Existing"];
    }

    else
    {
      v15 = 0;
      v4 = 0;
    }

    v24 = +[MSDPreferencesFile sharedInstance];
    v25 = [v24 objectForKey:@"Content.Downloading"];

    if (v25)
    {
      v26 = +[MSDPreferencesFile sharedInstance];
      v27 = [v26 objectForKey:@"BackgroundDownloadedComponents"];

      v28 = +[MSDPreferencesFile sharedInstance];
      v29 = [v28 objectForKey:@"TotalDownloadedContent"];
      intValue3 = [v29 intValue];

      v31 = +[MSDPreferencesFile sharedInstance];
      v32 = [v31 objectForKey:@"Content.Downloading"];

      v33 = objc_alloc_init(NSMutableDictionary);
      v34 = objc_alloc_init(NSMutableDictionary);

      v35 = 100 * [v27 count] / intValue3;
      v36 = [v27 count];
      if (intValue3 == 100)
      {
        v37 = 3;
      }

      else
      {
        v37 = 4;
      }

      v38 = [NSNumber numberWithUnsignedChar:v37];
      v39 = [NSNumber numberWithInteger:v35];
      v40 = [NSNumber numberWithInteger:v36];
      v41 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v32, @"BundleInfo", v33, @"ComponentInfo", v38, @"ContentStatus", v34, @"ContentSource", v39, @"TotalComponents", v40, @"SuccessfulComponents", @"<unknown>", @"LastBundleUpdateDate", 0];

      v42 = +[MSDPreferencesFile sharedInstance];
      [v42 setObject:v41 forKey:@"Content.Existing"];

      v7 = v34;
      v15 = v33;
      v4 = v32;
    }

    v43 = +[MSDPreferencesFile sharedInstance];
    [v43 removeObjectForKey:@"ContentInstalled"];

    v44 = sub_100063A54();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Migrating preferences from legacy device done.", buf, 2u);
    }
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Nothing to migrate in preferences file for legacy device.", buf, 2u);
  }
}

+ (void)migratePreferencesFromFactoryDevicesIfNeeded
{
  v2 = +[MSDHelperAgent sharedInstance];
  if ([v2 fileExistsAtPath:@"/private/var/demo_backup/Metadata/Content.plist"])
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = [v2 readPlistFile:@"/private/var/demo_backup/Metadata/Content.plist"];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v3 addEntriesFromDictionary:v4];
      v5 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v3, @"BundleInfo", &__kCFBooleanTrue, @"PreInstalledContent", &__NSDictionary0__struct, @"ComponentInfo", &off_10017AED0, @"ContentStatus", &__NSDictionary0__struct, @"ContentSource", &off_10017AEE8, @"TotalComponents", &off_10017AEE8, @"SuccessfulComponents", @"<unknown>", @"LastBundleUpdateDate", 0];
      v6 = +[MSDPreferencesFile sharedInstance];
      [v6 setObject:v5 forKey:@"Content.Existing"];
    }

    else
    {
      v5 = sub_100063A54();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cannot parse Content.plist.", v10, 2u);
      }
    }

    [v2 removeFileAtPath:@"/private/var/demo_backup/Metadata/Content.plist"];
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Migrating Content.plist for factory device done.", v9, 2u);
    }
  }

  else
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No Content.plist to migrate for factory device.", buf, 2u);
    }
  }
}

- (void)startBundleUpdateTimer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bundleTimerInfo = [(MSDBundleProgressTracker *)selfCopy bundleTimerInfo];
  v4 = [bundleTimerInfo objectForKey:@"startTime"];
  [v4 doubleValue];
  v6 = v5;

  if (v6 == 0.0)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting bundle update timer.", v12, 2u);
    }

    v8 = +[NSDate now];
    [v8 timeIntervalSince1970];
    v6 = v9;
  }

  else
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CA73C(v8);
    }
  }

  bundleTimerInfo2 = [(MSDBundleProgressTracker *)selfCopy bundleTimerInfo];
  v11 = [NSNumber numberWithDouble:v6];
  [bundleTimerInfo2 setObject:v11 forKey:@"startTime"];

  [(MSDBundleProgressTracker *)selfCopy flushRecordsToPreferences];
  objc_sync_exit(selfCopy);
}

- (void)stopBundleUpdateTimer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bundleTimerInfo = [(MSDBundleProgressTracker *)selfCopy bundleTimerInfo];
  v4 = [bundleTimerInfo objectForKey:@"startTime"];
  [v4 doubleValue];
  v6 = v5;

  bundleTimerInfo2 = [(MSDBundleProgressTracker *)selfCopy bundleTimerInfo];
  v8 = [bundleTimerInfo2 objectForKey:@"totalTimeTaken"];
  [v8 doubleValue];
  v10 = v9;

  if (v6 != 0.0)
  {
    v11 = [NSDate dateWithTimeIntervalSince1970:v6];
    v12 = +[NSDate now];
    [v12 timeIntervalSinceDate:v11];
    v14 = v13;

    v15 = sub_100063A54();
    v16 = v10 + v14;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = +[NSDate now];
      [v17 timeIntervalSinceDate:v11];
      v23 = 134218240;
      v24 = v18;
      v25 = 2048;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Stopping bundle update timer. Time taken in this attempt: %lf, Total time taken: %lf", &v23, 0x16u);
    }

    bundleTimerInfo3 = [(MSDBundleProgressTracker *)selfCopy bundleTimerInfo];
    v20 = [NSNumber numberWithDouble:0.0];
    [bundleTimerInfo3 setObject:v20 forKey:@"startTime"];

    bundleTimerInfo4 = [(MSDBundleProgressTracker *)selfCopy bundleTimerInfo];
    v22 = [NSNumber numberWithDouble:v16];
    [bundleTimerInfo4 setObject:v22 forKey:@"totalTimeTaken"];

    [(MSDBundleProgressTracker *)selfCopy flushRecordsToPreferences];
  }

  objc_sync_exit(selfCopy);
}

@end