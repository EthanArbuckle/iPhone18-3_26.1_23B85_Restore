@interface MSDProgressUpdater
+ (id)sharedInstance;
- (MSDProgressUpdater)init;
- (id)getContentStatus;
- (id)getContentUpdateType;
- (void)demoUpdateCompleted:(id)completed;
- (void)demoUpdateFailed:(id)failed;
- (void)loadBundles;
- (void)markBundleInProgressAsBundleCompleted;
- (void)resetTrackerForBundleType:(int)type;
- (void)startBundleUpdateMonitor:(id)monitor inMode:(int)mode;
@end

@implementation MSDProgressUpdater

+ (id)sharedInstance
{
  if (qword_1001A5920 != -1)
  {
    sub_1000DD60C();
  }

  v3 = qword_1001A5918;

  return v3;
}

- (MSDProgressUpdater)init
{
  v5.receiver = self;
  v5.super_class = MSDProgressUpdater;
  v2 = [(MSDProgressUpdater *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSDProgressUpdater *)v2 updateStage:199];
  }

  return v3;
}

- (void)resetTrackerForBundleType:(int)type
{
  if (type == 1)
  {
    [(MSDProgressUpdater *)self setBackgroundBundle:0];
  }
}

- (void)markBundleInProgressAsBundleCompleted
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[MSDProgressUpdater markBundleInProgressAsBundleCompleted]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s entered.", &v8, 0xCu);
  }

  bundleInProgress = [(MSDProgressUpdater *)self bundleInProgress];
  [bundleInProgress markBundleInProgressAsCompleted];

  v5 = +[MSDMailProcessor sharedInstance];
  [v5 reportBundleInstallCompleted];

  bundleInProgress2 = [(MSDProgressUpdater *)self bundleInProgress];
  [bundleInProgress2 renameBundleInPrgressToBundleInstalled];

  installingBundle = [(MSDProgressUpdater *)self installingBundle];
  [(MSDProgressUpdater *)self setInstalledBundle:installingBundle];

  [(MSDProgressUpdater *)self setInstallingBundle:0];
  [(MSDProgressUpdater *)self setBundleInProgress:0];
}

- (void)startBundleUpdateMonitor:(id)monitor inMode:(int)mode
{
  monitorCopy = monitor;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138543362;
    v29 = monitorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "start content update monitor:%{public}@", &v28, 0xCu);
  }

  v8 = sub_100063A54();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (mode)
  {
    if (v9)
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Inside start content background", &v28, 2u);
    }

    backgroundBundle = [(MSDProgressUpdater *)self backgroundBundle];
    v11 = [MSDBundleProgressTracker isBundleInstance:backgroundBundle identicalWithNewBundle:monitorCopy];

    if ((v11 & 1) == 0)
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "not the same background bundle...", &v28, 2u);
      }

      v13 = +[MSDTargetDevice sharedInstance];
      [v13 cleanUpBackgroundState:1];

      v14 = [MSDBundleProgressTracker alloc];
      v15 = [(MSDBundleProgressTracker *)v14 initializeTrackerForBundle:monitorCopy withContentType:1];
      [(MSDProgressUpdater *)self setBackgroundBundle:v15];
    }

    backgroundBundle2 = [(MSDProgressUpdater *)self backgroundBundle];
  }

  else
  {
    if (v9)
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Inside start content foreground", &v28, 2u);
    }

    installingBundle = [(MSDProgressUpdater *)self installingBundle];
    v18 = [MSDBundleProgressTracker isBundleInstance:installingBundle identicalWithNewBundle:monitorCopy];

    if ((v18 & 1) == 0)
    {
      v19 = sub_100063A54();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "not the same foreground bundle...", &v28, 2u);
      }

      v20 = [MSDBundleProgressTracker alloc];
      v21 = [(MSDBundleProgressTracker *)v20 initializeTrackerForBundle:monitorCopy withContentType:2];
      [(MSDProgressUpdater *)self setInstallingBundle:v21];

      backgroundBundle3 = [(MSDProgressUpdater *)self backgroundBundle];
      LODWORD(v20) = [MSDBundleProgressTracker isBundleInstance:backgroundBundle3 identicalWithNewBundle:monitorCopy];

      if (v20)
      {
        installingBundle2 = [(MSDProgressUpdater *)self installingBundle];
        backgroundBundle4 = [(MSDProgressUpdater *)self backgroundBundle];
        [backgroundBundle4 getBundleUpdateTime];
        [installingBundle2 addToBundleUpdateTime:?];
      }
    }

    backgroundBundle2 = [(MSDProgressUpdater *)self installingBundle];
  }

  v25 = backgroundBundle2;
  [(MSDProgressUpdater *)self setBundleInProgress:backgroundBundle2];

  v26 = sub_100063A54();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    bundleInProgress = [(MSDProgressUpdater *)self bundleInProgress];
    v28 = 138543362;
    v29 = bundleInProgress;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "bundleInProgress:%{public}@", &v28, 0xCu);
  }
}

- (void)loadBundles
{
  v3 = +[MSDTargetDevice sharedInstance];
  v4 = [MSDBundleProgressTracker alloc];
  v5 = [(MSDBundleProgressTracker *)v4 retrieveObjectFromPreferences:0];
  [(MSDProgressUpdater *)self setInstalledBundle:v5];

  v6 = [MSDBundleProgressTracker alloc];
  v7 = [(MSDBundleProgressTracker *)v6 retrieveObjectFromPreferences:1];
  [(MSDProgressUpdater *)self setBackgroundBundle:v7];

  v8 = [MSDBundleProgressTracker alloc];
  v9 = [(MSDBundleProgressTracker *)v8 retrieveObjectFromPreferences:2];
  [(MSDProgressUpdater *)self setInstallingBundle:v9];

  if ([v3 mode] < 2 || objc_msgSend(v3, "mode") > 4)
  {
    backgroundBundle = [(MSDProgressUpdater *)self backgroundBundle];
    bundleState = [backgroundBundle bundleState];

    if (bundleState)
    {
      [(MSDProgressUpdater *)self backgroundBundle];
    }

    else
    {
      [(MSDProgressUpdater *)self installedBundle];
    }
    installingBundle = ;
  }

  else
  {
    installingBundle = [(MSDProgressUpdater *)self installingBundle];
  }

  v13 = installingBundle;
  [(MSDProgressUpdater *)self setBundleInProgress:installingBundle];

  v14 = sub_100063A54();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    installedBundle = [(MSDProgressUpdater *)self installedBundle];
    backgroundBundle2 = [(MSDProgressUpdater *)self backgroundBundle];
    installingBundle2 = [(MSDProgressUpdater *)self installingBundle];
    v18 = 138543874;
    v19 = installedBundle;
    v20 = 2114;
    v21 = backgroundBundle2;
    v22 = 2114;
    v23 = installingBundle2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Bundles are: installedBundle:%{public}@ backgroundBundle:%{public}@ installingBundle:%{public}@", &v18, 0x20u);
  }
}

- (id)getContentStatus
{
  v3 = +[MSDTargetDevice sharedInstance];
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = objc_alloc_init(NSMutableDictionary);
  installedBundle = [(MSDProgressUpdater *)self installedBundle];

  v76 = v5;
  if (installedBundle)
  {
    hubSuppliedSettings = [v3 hubSuppliedSettings];
    v74 = [hubSuppliedSettings objectForKey:@"Components"];

    installedBundle2 = [(MSDProgressUpdater *)self installedBundle];
    bundleInfo = [installedBundle2 bundleInfo];
    v12 = [NSMutableDictionary dictionaryWithDictionary:bundleInfo];

    installedBundle3 = [(MSDProgressUpdater *)self installedBundle];
    installedComponentList = [installedBundle3 installedComponentList];
    v15 = [installedComponentList copy];

    installedBundle4 = [(MSDProgressUpdater *)self installedBundle];
    bundleState = [installedBundle4 bundleState];

    [v12 removeObjectForKey:@"ManifestVersion"];
    [v6 setObject:v12 forKey:@"ContentDetails"];
    installedBundle5 = [(MSDProgressUpdater *)self installedBundle];
    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [installedBundle5 preInstalledContent]);
    [v6 setObject:v19 forKey:@"PreInstalledContent"];

    if ((bundleState - 3) > 3u)
    {
      v20 = &off_10017B1A0;
    }

    else
    {
      v20 = off_10016B918[(bundleState - 3)];
    }

    v77 = v6;
    [v6 setObject:v20 forKey:@"Status"];
    if (v74 && [v74 count])
    {
      v68 = v7;
      v70 = v4;
      v72 = v3;
      v22 = +[NSMutableDictionary dictionary];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v24 = v74;
      v25 = [v24 countByEnumeratingWithState:&v79 objects:v83 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v80;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v80 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v79 + 1) + 8 * i);
            v30 = [v15 objectForKey:v29];
            if (v30)
            {
              [v22 setObject:v30 forKey:v29];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v79 objects:v83 count:16];
        }

        while (v26);
      }

      v4 = v70;
      v3 = v72;
      v7 = v68;
    }

    else
    {
      v22 = [NSDictionary dictionaryWithDictionary:v15];
    }

    v5 = v76;
    v23 = v77;
  }

  else
  {
    v21 = [NSMutableDictionary dictionaryWithObjectsAndKeys:&__NSDictionary0__struct, @"ContentDetails", 0, @"Status", &__kCFBooleanFalse, @"PreInstalledContent", 0];

    v22 = +[NSDictionary dictionary];
    v23 = v21;
  }

  v78 = v23;
  [v7 setObject:? forKey:?];
  [v7 setObject:v22 forKey:@"MSDDemoComponentsInstalled"];
  bundleInProgress = [(MSDProgressUpdater *)self bundleInProgress];
  bundleType = [bundleInProgress bundleType];

  if (bundleType)
  {
    bundleInProgress2 = [(MSDProgressUpdater *)self bundleInProgress];
    bundleType2 = [bundleInProgress2 bundleType];

    v71 = v4;
    v73 = v3;
    v69 = v7;
    if (bundleType2 == 1)
    {
      backgroundBundle = [(MSDProgressUpdater *)self backgroundBundle];
      contentProgress = [backgroundBundle contentProgress];
      [v5 setObject:contentProgress forKey:@"DownloadingProgress"];

      backgroundBundle2 = [(MSDProgressUpdater *)self backgroundBundle];
      downloadedContentSource = [backgroundBundle2 downloadedContentSource];
      v75 = [NSDictionary dictionaryWithDictionary:downloadedContentSource];

      backgroundBundle3 = [(MSDProgressUpdater *)self backgroundBundle];
      v40 = 0;
      v65 = &off_10017B188;
    }

    else
    {
      bundleInProgress3 = [(MSDProgressUpdater *)self bundleInProgress];
      bundleType3 = [bundleInProgress3 bundleType];

      if (bundleType3 != 2)
      {
        v75 = 0;
        v40 = 0;
        v51 = 0;
        v65 = 0;
LABEL_30:
        v53 = [v40 objectForKey:@"remote"];
        integerValue = [v53 integerValue];
        v55 = [v75 objectForKey:@"remote"];
        integerValue2 = [v55 integerValue];

        v67 = v40;
        v57 = [v40 objectForKey:@"local"];
        integerValue3 = [v57 integerValue];
        v59 = [v75 objectForKey:@"local"];
        integerValue4 = [v59 integerValue];

        v61 = [NSNumber numberWithInteger:&integerValue[integerValue2]];
        v4 = v71;
        [v71 setObject:v61 forKey:@"remote"];

        v62 = [NSNumber numberWithInteger:&integerValue3[integerValue4]];
        [v71 setObject:v62 forKey:@"local"];

        v5 = v76;
        if (v51)
        {
          [v51 removeObjectForKey:@"ManifestVersion"];
          [v76 setObject:v51 forKey:@"ContentDetails"];
        }

        v3 = v73;
        if ([v73 criticalUpdatePrioritized])
        {
          v63 = &off_10017B188;
        }

        else
        {
          v63 = &off_10017B1E8;
        }

        [v76 setObject:v63 forKey:@"ComponentsType"];
        [v76 setObject:v65 forKey:@"Status"];
        [v76 setObject:v71 forKey:@"TotalBytesDownloaded"];
        v7 = v69;
        [v69 setObject:v76 forKey:@"MSDDemoContentInProgress"];

        goto LABEL_36;
      }

      installingBundle = [(MSDProgressUpdater *)self installingBundle];
      contentProgress2 = [installingBundle contentProgress];
      [v5 setObject:contentProgress2 forKey:@"InstallingProgress"];

      installingBundle2 = [(MSDProgressUpdater *)self installingBundle];
      downloadedContentSource2 = [installingBundle2 downloadedContentSource];
      v66 = [NSDictionary dictionaryWithDictionary:downloadedContentSource2];

      backgroundBundle4 = [(MSDProgressUpdater *)self backgroundBundle];

      if (backgroundBundle4)
      {
        backgroundBundle5 = [(MSDProgressUpdater *)self backgroundBundle];
        downloadedContentSource3 = [backgroundBundle5 downloadedContentSource];
        v75 = [NSDictionary dictionaryWithDictionary:downloadedContentSource3];

        v50 = &off_10017B1A0;
      }

      else
      {
        v75 = [NSDictionary dictionaryWithObjectsAndKeys:@"local", &off_10017B1E8, @"remote", 0];
        v50 = &off_10017B1B8;
      }

      v65 = v50;
      backgroundBundle3 = [(MSDProgressUpdater *)self installingBundle];
      v40 = v66;
    }

    bundleInfo2 = [backgroundBundle3 bundleInfo];
    v51 = [NSMutableDictionary dictionaryWithDictionary:bundleInfo2];

    goto LABEL_30;
  }

LABEL_36:

  return v7;
}

- (id)getContentUpdateType
{
  installedBundle = [(MSDProgressUpdater *)self installedBundle];

  if (!installedBundle)
  {
    return @"ContentUpdateTypeFreshInstall";
  }

  installedBundle2 = [(MSDProgressUpdater *)self installedBundle];
  preInstalledContent = [installedBundle2 preInstalledContent];

  if (preInstalledContent)
  {
    return @"ContentUpdateTypeFreshInstallFactory";
  }

  else
  {
    return @"ContentUpdateTypeIncrementalUpdate";
  }
}

- (void)demoUpdateFailed:(id)failed
{
  failedCopy = failed;
  v4 = +[MSDTargetDevice sharedInstance];
  isOfflineMode = [v4 isOfflineMode];

  if ((isOfflineMode & 1) == 0)
  {
    v6 = objc_alloc_init(MSDReportErrorRequest);
    [(MSDReportErrorRequest *)v6 setError:failedCopy];
    v7 = +[MSDServerRequestHandler sharedInstance];
    v8 = [v7 handleRequestSync:v6];

    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      error = [v8 error];
      v11 = 136315394;
      v12 = "[MSDProgressUpdater demoUpdateFailed:]";
      v13 = 2114;
      v14 = error;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: sent error status to hub; error=%{public}@", &v11, 0x16u);
    }
  }
}

- (void)demoUpdateCompleted:(id)completed
{
  completedCopy = completed;
  v3 = +[MSDTargetDevice sharedInstance];
  if (([v3 isOfflineMode] & 1) == 0)
  {
    v4 = objc_alloc_init(MSDReportDoneRequest);
    [(MSDReportDoneRequest *)v4 setRequestStr:completedCopy];
    getSavedError = [v3 getSavedError];
    [(MSDReportDoneRequest *)v4 setError:getSavedError];

    [(MSDServerRequest *)v4 setCompletion:&stru_10016B8F8];
    v6 = +[MSDServerRequestHandler sharedInstance];
    [v6 handleRequestAsync:v4];
  }
}

@end