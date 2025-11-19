@interface MSDBundleProgressTracker
+ (BOOL)isBundleInstance:(id)a3 identicalWithNewBundle:(id)a4;
+ (void)migratePreferencesFromFactoryDevicesIfNeeded;
+ (void)migratePreferencesFromLegacyDevicesIfNeeded;
+ (void)removeBundleFromPreferences:(id)a3;
- (BOOL)checkIfAllCriticalComponentsTried;
- (BOOL)getComponentProgressStatus:(id)a3;
- (NSMutableDictionary)contentProgress;
- (NSMutableDictionary)installedComponentList;
- (double)getBundleUpdateTime;
- (id)getLastBundleUpdateDate;
- (id)initializeTrackerForBundle:(id)a3 withContentType:(unsigned __int8)a4;
- (id)retrieveLegacyContentnIdentifier:(unsigned __int8)a3;
- (int64_t)getAllComponentsForUpdate;
- (void)addToBundleUpdateTime:(double)a3;
- (void)flushRecordsToPreferences;
- (void)markBundleInProgressAsCompleted;
- (void)renameBundleInPrgressToBundleInstalled;
- (void)retrieveAndPopulateBundleInfo:(id)a3;
- (void)startBundleUpdateTimer;
- (void)stopBundleUpdateTimer;
- (void)updateComponentProgress:(id)a3 withResult:(BOOL)a4 withAdditionalInfo:(id)a5;
- (void)updateDownloadedContent:(unint64_t)a3 fromSource:(id)a4;
@end

@implementation MSDBundleProgressTracker

- (id)initializeTrackerForBundle:(id)a3 withContentType:(unsigned __int8)a4
{
  v41 = a4;
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v44 = v5;
  v7 = [v5 installationOrder];
  v8 = objc_alloc_init(NSMutableDictionary);
  [(MSDBundleProgressTracker *)v6 setComponentsFromBundle:v8];

  v9 = [v44 criticalComponents];
  [(MSDBundleProgressTracker *)v6 setCriticalComponents:v9];

  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(MSDBundleProgressTracker *)v6 criticalComponents];
    *buf = 134217984;
    *v52 = [v11 count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "criticalComponents count:%ld", buf, 0xCu);
  }

  v12 = [(MSDBundleProgressTracker *)v6 criticalComponents];
  v13 = v12 == 0;

  if (v13)
  {
    [(MSDBundleProgressTracker *)v6 setCriticalComponents:v7];
  }

  v14 = sub_100063A54();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(MSDBundleProgressTracker *)v6 criticalComponents];
    v16 = [v15 count];
    *buf = 134217984;
    *v52 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "installation order items are:%ld", buf, 0xCu);
  }

  v17 = [(MSDBundleProgressTracker *)v6 retrieveLegacyContentnIdentifier:v41];
  [(MSDBundleProgressTracker *)v6 setContentIdentifierString:v17];

  v18 = sub_100063A54();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v52 = v41;
    *&v52[4] = 2114;
    *&v52[6] = v44;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "initializing tracker:%d %{public}@", buf, 0x12u);
  }

  [(MSDBundleProgressTracker *)v6 retrieveAndPopulateBundleInfo:v44];
  v19 = [(MSDBundleProgressTracker *)v6 bundleInfo];
  v20 = [v19 objectForKey:@"ManifestVersion"];
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
  obj = v7;
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
        v27 = [(MSDBundleProgressTracker *)v6 criticalComponents];
        v28 = [v27 containsObject:v26];

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
        v32 = [(MSDBundleProgressTracker *)v6 bundleInfo];
        v33 = [v32 objectForKey:@"ManifestVersion"];
        v22 = [MSDSignedManifest getComponentFromPath:v29 forManifestVersion:v33];

        v34 = [NSNumber numberWithBool:v28];
        v35 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v31, @"Version", &__NSDictionary0__struct, @"DebugInfo", &off_10017AEA0, @"Status", v34, @"CriticalComponent", 0];

        v36 = [(MSDBundleProgressTracker *)v6 componentsFromBundle];
        [v36 setObject:v35 forKey:v22];

        v24 = v24 + 1;
        v25 = v22;
      }

      while (v23 != v24);
      v23 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v23);
  }

  [(MSDBundleProgressTracker *)v6 setPercentageProgress:0];
  v37 = objc_alloc_init(NSMutableDictionary);
  [(MSDBundleProgressTracker *)v6 setDownloadedContentSource:v37];

  [(MSDBundleProgressTracker *)v6 setBundleState:1];
  [(MSDBundleProgressTracker *)v6 setBundleType:v41];
  [(MSDBundleProgressTracker *)v6 addBundleSpecificCompoments:v41];
  v38 = [(MSDBundleProgressTracker *)v6 componentsFromBundle];
  -[MSDBundleProgressTracker setTotalComponents:](v6, "setTotalComponents:", [v38 count]);

  [(MSDBundleProgressTracker *)v6 setComponentsSuccessful:0];
  [(MSDBundleProgressTracker *)v6 setLastBundleUpdateDate:@"<unknown>"];
  v39 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"startTime", &off_10017AEB8, @"totalTimeTaken", 0];
  [(MSDBundleProgressTracker *)v6 setBundleTimerInfo:v39];

  [(MSDBundleProgressTracker *)v6 flushRecordsToPreferences];
  objc_sync_exit(v6);

  return v6;
}

- (void)updateComponentProgress:(id)a3 withResult:(BOOL)a4 withAdditionalInfo:(id)a5
{
  v6 = a4;
  v37 = a3;
  v38 = a5;
  v8 = self;
  objc_sync_enter(v8);
  v42 = v8;
  v9 = [(MSDBundleProgressTracker *)v8 bundleInfo];

  if (v9)
  {
    v10 = [(MSDBundleProgressTracker *)v42 bundleInfo];
    v11 = [v10 objectForKey:@"ManifestVersion"];

    v36 = v11;
    if (v11)
    {
      v39 = [MSDSignedManifest getComponentFromPath:v37 forManifestVersion:v11];
      v12 = [(MSDBundleProgressTracker *)v42 componentsFromBundle];
      v13 = [v12 objectForKey:v39];
      v40 = [v13 mutableCopy];

      v14 = sub_100063A54();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        *&buf[4] = v39;
        v49 = 1026;
        v50 = v6;
        v51 = 2114;
        v52 = v38;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating component record:%{public}@ result:%{public, BOOL}d info:%{public}@", buf, 0x1Cu);
      }

      if (v40)
      {
        if (v6)
        {
          v15 = 2;
        }

        else
        {
          v15 = 1;
        }

        v16 = [NSNumber numberWithUnsignedInteger:v15];
        [v40 setObject:v16 forKey:@"Status"];

        [v40 setObject:v38 forKey:@"DebugInfo"];
        v17 = [(MSDBundleProgressTracker *)v42 componentsFromBundle];
        [v17 setObject:v40 forKey:v39];
      }

      v18 = +[MSDTargetDevice sharedInstance];
      v19 = [v18 criticalUpdatePrioritized];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v20 = [(MSDBundleProgressTracker *)v42 componentsFromBundle];
      v21 = 0;
      v22 = 0;
      v23 = [v20 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v23)
      {
        v24 = *v44;
        obj = v20;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v44 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v43 + 1) + 8 * i);
            v27 = [(MSDBundleProgressTracker *)v42 componentsFromBundle];
            v28 = [v27 objectForKey:v26];

            v29 = [v28 objectForKey:@"Status"];
            LODWORD(v27) = [v29 intValue];

            v30 = [v28 objectForKey:@"CriticalComponent"];
            v31 = [v30 BOOLValue];

            if (v27 == 2)
            {
              ++v22;
            }

            if (v31)
            {
              v32 = v21 + 1;
            }

            else
            {
              v32 = v21;
            }

            if (v19)
            {
              v21 = v32;
            }

            else
            {
              ++v21;
            }
          }

          v20 = obj;
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

- (void)updateDownloadedContent:(unint64_t)a3 fromSource:(id)a4
{
  v13 = a4;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(MSDBundleProgressTracker *)v6 downloadedContentSource];
  v8 = [v7 objectForKey:v13];

  if (v8)
  {
    v9 = [(MSDBundleProgressTracker *)v6 downloadedContentSource];
    v10 = [v9 objectForKey:v13];
    v8 = [v10 longLongValue];
  }

  v11 = [(MSDBundleProgressTracker *)v6 downloadedContentSource];
  v12 = [NSNumber numberWithLongLong:&v8[a3]];
  [v11 setObject:v12 forKey:v13];

  [(MSDBundleProgressTracker *)v6 flushRecordsToPreferences];
  objc_sync_exit(v6);
}

- (void)markBundleInProgressAsCompleted
{
  obj = self;
  objc_sync_enter(obj);
  if ([(MSDBundleProgressTracker *)obj bundleState]== 1)
  {
    v2 = [(MSDBundleProgressTracker *)obj totalComponents];
    if (v2 == [(MSDBundleProgressTracker *)obj componentsSuccessful])
    {
      v3 = 3;
    }

    else
    {
      v4 = +[MSDTargetDevice sharedInstance];
      v5 = [v4 criticalUpdatePrioritized];

      if (v5)
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
  v2 = [(MSDBundleProgressTracker *)obj contentIdentifierString];
  v3 = [v2 isEqualToString:@"Content.Installing"];

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
  v4 = [v3 criticalUpdatePrioritized];

  if (v4)
  {
    v5 = [(MSDBundleProgressTracker *)self criticalComponents];
    v6 = [v5 count];
  }

  else
  {
    v6 = [(MSDBundleProgressTracker *)self totalComponents];
  }

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CA668(self, v6, v7);
  }

  return v6;
}

- (id)getLastBundleUpdateDate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MSDBundleProgressTracker *)v2 lastBundleUpdateDate];
  objc_sync_exit(v2);

  return v3;
}

- (double)getBundleUpdateTime
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MSDBundleProgressTracker *)v2 bundleTimerInfo];
  v4 = [v3 objectForKey:@"startTime"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [(MSDBundleProgressTracker *)v2 bundleTimerInfo];
  v8 = [v7 objectForKey:@"totalTimeTaken"];
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

  objc_sync_exit(v2);

  return v10 + v14;
}

- (void)addToBundleUpdateTime:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = [(MSDBundleProgressTracker *)obj bundleTimerInfo];
  v5 = [v4 objectForKey:@"totalTimeTaken"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [(MSDBundleProgressTracker *)obj bundleTimerInfo];
  v9 = [NSNumber numberWithDouble:v7 + a3];
  [v8 setObject:v9 forKey:@"totalTimeTaken"];

  [(MSDBundleProgressTracker *)obj flushRecordsToPreferences];
  objc_sync_exit(obj);
}

- (BOOL)getComponentProgressStatus:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MSDBundleProgressTracker *)v5 bundleInfo];
  v7 = [v6 objectForKey:@"ManifestVersion"];
  v8 = [MSDSignedManifest getComponentFromPath:v4 forManifestVersion:v7];

  v9 = [(MSDBundleProgressTracker *)v5 componentsFromBundle];
  v10 = [v9 objectForKey:v8];

  v11 = [v10 objectForKey:@"Status"];
  v12 = [v11 intValue] == 2;

  objc_sync_exit(v5);
  return v12;
}

- (NSMutableDictionary)installedComponentList
{
  v2 = self;
  objc_sync_enter(v2);
  v18 = objc_alloc_init(NSMutableDictionary);
  if (![(MSDBundleProgressTracker *)v2 preInstalledContent])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = [(MSDBundleProgressTracker *)v2 componentsFromBundle];
    v4 = [v3 allKeys];

    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = *v20;
      do
      {
        v7 = v4;
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v7);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = [(MSDBundleProgressTracker *)v2 componentsFromBundle];
          v11 = [v10 objectForKey:v9];
          v12 = [v11 objectForKey:@"Status"];
          v13 = [v12 integerValue] == 2;

          if (v13)
          {
            v14 = [(MSDBundleProgressTracker *)v2 componentsFromBundle];
            v15 = [v14 objectForKey:v9];
            v16 = [v15 objectForKey:@"Version"];
            [v18 setObject:v16 forKey:v9];
          }
        }

        v4 = v7;
        v5 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v5);
    }
  }

  objc_sync_exit(v2);

  return v18;
}

- (NSMutableDictionary)contentProgress
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(MSDBundleProgressTracker *)v2 bundleState];
  if (v4 == 5)
  {
    v5 = 3;
  }

  else if (v4 == 6)
  {
    v5 = 4;
  }

  else
  {
    v5 = [(MSDBundleProgressTracker *)v2 bundleState];
  }

  v6 = [(MSDBundleProgressTracker *)v2 contentIdentifierString];
  v7 = [v6 isEqualToString:@"Content.Installing"];

  if (v7)
  {
    v8 = [NSNumber numberWithInteger:[(MSDBundleProgressTracker *)v2 percentageProgress]];
    [v3 setObject:v8 forKey:@"InstalledComponentsPercent"];

    [v3 setObject:&off_10017AEB8 forKey:@"InstalledSizePercent"];
    v9 = [NSNumber numberWithUnsignedChar:v5];
    [v3 setObject:v9 forKey:@"InstallState"];
  }

  else
  {
    v10 = [(MSDBundleProgressTracker *)v2 contentIdentifierString];
    v11 = [v10 isEqualToString:@"Content.Downloading"];

    if (!v11)
    {
      goto LABEL_11;
    }

    v12 = [NSNumber numberWithInteger:[(MSDBundleProgressTracker *)v2 percentageProgress]];
    [v3 setObject:v12 forKey:@"DownloadedComponentsPercent"];

    [v3 setObject:&off_10017AEB8 forKey:@"DownloadedSizePercent"];
    v9 = [NSNumber numberWithUnsignedChar:v5];
    [v3 setObject:v9 forKey:@"DownloadState"];
  }

LABEL_11:
  objc_sync_exit(v2);

  return v3;
}

- (void)retrieveAndPopulateBundleInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 getInfo];
  v6 = +[NSMutableDictionary dictionary];
  [(MSDBundleProgressTracker *)self setBundleInfo:v6];

  v7 = [v5 objectForKey:@"PartNumber"];
  if (v7)
  {
    v8 = [(MSDBundleProgressTracker *)self bundleInfo];
    [v8 setObject:v7 forKey:@"PartNumber"];
  }

  v9 = [v5 objectForKey:@"Revision"];

  if (v9)
  {
    v10 = [(MSDBundleProgressTracker *)self bundleInfo];
    [v10 setObject:v9 forKey:@"Revision"];
  }

  v11 = [v5 objectForKey:@"BundleName"];

  if (v11)
  {
    v12 = [(MSDBundleProgressTracker *)self bundleInfo];
    [v12 setObject:v11 forKey:@"BundleName"];
  }

  v19 = +[MSDFileDownloadCredentials sharedInstance];
  v13 = [v19 manifestInfo];
  v14 = [v13 objectForKey:@"SigningKey"];

  if (v14)
  {
    v15 = [(MSDBundleProgressTracker *)self bundleInfo];
    [v15 setObject:v14 forKey:@"SigningKey"];
  }

  v16 = [(MSDBundleProgressTracker *)self bundleInfo];
  v17 = [v4 getVersion];

  v18 = [NSNumber numberWithInt:v17];
  [v16 setObject:v18 forKey:@"ManifestVersion"];
}

- (id)retrieveLegacyContentnIdentifier:(unsigned __int8)a3
{
  v3 = @"Content.Downloading";
  if (a3 == 2)
  {
    v3 = @"Content.Installing";
  }

  if (a3)
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
  v14 = [(MSDBundleProgressTracker *)self bundleInfo];
  v16[0] = v14;
  v15[1] = @"PreInstalledContent";
  v3 = [NSNumber numberWithBool:[(MSDBundleProgressTracker *)self preInstalledContent]];
  v16[1] = v3;
  v15[2] = @"ComponentInfo";
  v4 = [(MSDBundleProgressTracker *)self componentsFromBundle];
  v16[2] = v4;
  v15[3] = @"ContentStatus";
  v5 = [NSNumber numberWithUnsignedChar:[(MSDBundleProgressTracker *)self bundleState]];
  v16[3] = v5;
  v15[4] = @"ContentSource";
  v6 = [(MSDBundleProgressTracker *)self downloadedContentSource];
  v16[4] = v6;
  v15[5] = @"TotalComponents";
  v7 = [NSNumber numberWithInteger:[(MSDBundleProgressTracker *)self totalComponents]];
  v16[5] = v7;
  v15[6] = @"SuccessfulComponents";
  v8 = [NSNumber numberWithInteger:[(MSDBundleProgressTracker *)self componentsSuccessful]];
  v16[6] = v8;
  v15[7] = @"LastBundleUpdateDate";
  v9 = [(MSDBundleProgressTracker *)self lastBundleUpdateDate];
  v16[7] = v9;
  v15[8] = @"BundleTimerInfo";
  v10 = [(MSDBundleProgressTracker *)self bundleTimerInfo];
  v16[8] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:9];

  v12 = +[MSDPreferencesFile sharedInstance];
  v13 = [(MSDBundleProgressTracker *)self contentIdentifierString];
  [v12 setObject:v11 forKey:v13];
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
        v8 = [(MSDBundleProgressTracker *)self bundleInfo];
        v9 = [v8 objectForKey:@"ManifestVersion"];
        v10 = [MSDSignedManifest getComponentFromPath:v7 forManifestVersion:v9];

        v11 = [(MSDBundleProgressTracker *)self componentsFromBundle];
        v12 = [v11 objectForKey:v10];

        if (v12)
        {
          v13 = [v12 objectForKey:@"Status"];
          v14 = [v13 intValue];

          if (!v14)
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

+ (void)removeBundleFromPreferences:(id)a3
{
  v3 = a3;
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "removing bundlepreferences:%{public}@", &v6, 0xCu);
  }

  v5 = +[MSDPreferencesFile sharedInstance];
  [v5 removeObjectForKey:v3];
}

+ (BOOL)isBundleInstance:(id)a3 identicalWithNewBundle:(id)a4
{
  v5 = a3;
  v6 = [a4 getInfo];
  v7 = +[MSDFileDownloadCredentials sharedInstance];
  v8 = 0;
  if (v5 && a4)
  {
    v22 = [v6 objectForKey:@"PartNumber"];
    v9 = [v5 bundleInfo];
    v10 = [v9 objectForKey:@"PartNumber"];

    v11 = [v5 bundleInfo];
    v12 = [v11 objectForKey:@"Revision"];
    v13 = [v12 integerValue];

    v14 = [v6 objectForKey:@"Revision"];
    v15 = [v14 integerValue];

    v16 = [v5 bundleInfo];
    v17 = [v16 objectForKey:@"SigningKey"];

    v18 = [v7 manifestInfo];
    v19 = [v18 objectForKey:@"SigningKey"];

    if ([v22 isEqualToString:v10] && v13 == v15 && objc_msgSend(v19, "isEqualToString:", v17))
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
          v12 = [v11 intValue];

          v13 = [v9 objectForKey:@"Total"];
          v14 = [v13 intValue];
        }

        else
        {
          v14 = 0;
          v12 = 0;
        }
      }

      else
      {
        v14 = 0;
        v12 = 0;
      }

      if (v12 == v14)
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
        v46 = v14;
        v47 = 2048;
        v48 = v12;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "totalComponents:%ld componentsSuccessful:%ld", buf, 0x16u);
      }

      v19 = [NSNumber numberWithUnsignedChar:v16];
      v20 = [NSNumber numberWithInteger:v14];
      v21 = [NSNumber numberWithInteger:v12];
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
      v30 = [v29 intValue];

      v31 = +[MSDPreferencesFile sharedInstance];
      v32 = [v31 objectForKey:@"Content.Downloading"];

      v33 = objc_alloc_init(NSMutableDictionary);
      v34 = objc_alloc_init(NSMutableDictionary);

      v35 = 100 * [v27 count] / v30;
      v36 = [v27 count];
      if (v30 == 100)
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MSDBundleProgressTracker *)v2 bundleTimerInfo];
  v4 = [v3 objectForKey:@"startTime"];
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

  v10 = [(MSDBundleProgressTracker *)v2 bundleTimerInfo];
  v11 = [NSNumber numberWithDouble:v6];
  [v10 setObject:v11 forKey:@"startTime"];

  [(MSDBundleProgressTracker *)v2 flushRecordsToPreferences];
  objc_sync_exit(v2);
}

- (void)stopBundleUpdateTimer
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MSDBundleProgressTracker *)v2 bundleTimerInfo];
  v4 = [v3 objectForKey:@"startTime"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [(MSDBundleProgressTracker *)v2 bundleTimerInfo];
  v8 = [v7 objectForKey:@"totalTimeTaken"];
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

    v19 = [(MSDBundleProgressTracker *)v2 bundleTimerInfo];
    v20 = [NSNumber numberWithDouble:0.0];
    [v19 setObject:v20 forKey:@"startTime"];

    v21 = [(MSDBundleProgressTracker *)v2 bundleTimerInfo];
    v22 = [NSNumber numberWithDouble:v16];
    [v21 setObject:v22 forKey:@"totalTimeTaken"];

    [(MSDBundleProgressTracker *)v2 flushRecordsToPreferences];
  }

  objc_sync_exit(v2);
}

@end