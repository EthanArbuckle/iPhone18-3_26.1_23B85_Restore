@interface MSDProgressUpdater
+ (id)sharedInstance;
- (MSDProgressUpdater)init;
- (id)getContentStatus;
- (id)getContentUpdateType;
- (void)demoUpdateCompleted:(id)a3;
- (void)demoUpdateFailed:(id)a3;
- (void)loadBundles;
- (void)markBundleInProgressAsBundleCompleted;
- (void)resetTrackerForBundleType:(int)a3;
- (void)startBundleUpdateMonitor:(id)a3 inMode:(int)a4;
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

- (void)resetTrackerForBundleType:(int)a3
{
  if (a3 == 1)
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

  v4 = [(MSDProgressUpdater *)self bundleInProgress];
  [v4 markBundleInProgressAsCompleted];

  v5 = +[MSDMailProcessor sharedInstance];
  [v5 reportBundleInstallCompleted];

  v6 = [(MSDProgressUpdater *)self bundleInProgress];
  [v6 renameBundleInPrgressToBundleInstalled];

  v7 = [(MSDProgressUpdater *)self installingBundle];
  [(MSDProgressUpdater *)self setInstalledBundle:v7];

  [(MSDProgressUpdater *)self setInstallingBundle:0];
  [(MSDProgressUpdater *)self setBundleInProgress:0];
}

- (void)startBundleUpdateMonitor:(id)a3 inMode:(int)a4
{
  v6 = a3;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138543362;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "start content update monitor:%{public}@", &v28, 0xCu);
  }

  v8 = sub_100063A54();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (a4)
  {
    if (v9)
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Inside start content background", &v28, 2u);
    }

    v10 = [(MSDProgressUpdater *)self backgroundBundle];
    v11 = [MSDBundleProgressTracker isBundleInstance:v10 identicalWithNewBundle:v6];

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
      v15 = [(MSDBundleProgressTracker *)v14 initializeTrackerForBundle:v6 withContentType:1];
      [(MSDProgressUpdater *)self setBackgroundBundle:v15];
    }

    v16 = [(MSDProgressUpdater *)self backgroundBundle];
  }

  else
  {
    if (v9)
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Inside start content foreground", &v28, 2u);
    }

    v17 = [(MSDProgressUpdater *)self installingBundle];
    v18 = [MSDBundleProgressTracker isBundleInstance:v17 identicalWithNewBundle:v6];

    if ((v18 & 1) == 0)
    {
      v19 = sub_100063A54();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "not the same foreground bundle...", &v28, 2u);
      }

      v20 = [MSDBundleProgressTracker alloc];
      v21 = [(MSDBundleProgressTracker *)v20 initializeTrackerForBundle:v6 withContentType:2];
      [(MSDProgressUpdater *)self setInstallingBundle:v21];

      v22 = [(MSDProgressUpdater *)self backgroundBundle];
      LODWORD(v20) = [MSDBundleProgressTracker isBundleInstance:v22 identicalWithNewBundle:v6];

      if (v20)
      {
        v23 = [(MSDProgressUpdater *)self installingBundle];
        v24 = [(MSDProgressUpdater *)self backgroundBundle];
        [v24 getBundleUpdateTime];
        [v23 addToBundleUpdateTime:?];
      }
    }

    v16 = [(MSDProgressUpdater *)self installingBundle];
  }

  v25 = v16;
  [(MSDProgressUpdater *)self setBundleInProgress:v16];

  v26 = sub_100063A54();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [(MSDProgressUpdater *)self bundleInProgress];
    v28 = 138543362;
    v29 = v27;
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
    v11 = [(MSDProgressUpdater *)self backgroundBundle];
    v12 = [v11 bundleState];

    if (v12)
    {
      [(MSDProgressUpdater *)self backgroundBundle];
    }

    else
    {
      [(MSDProgressUpdater *)self installedBundle];
    }
    v10 = ;
  }

  else
  {
    v10 = [(MSDProgressUpdater *)self installingBundle];
  }

  v13 = v10;
  [(MSDProgressUpdater *)self setBundleInProgress:v10];

  v14 = sub_100063A54();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(MSDProgressUpdater *)self installedBundle];
    v16 = [(MSDProgressUpdater *)self backgroundBundle];
    v17 = [(MSDProgressUpdater *)self installingBundle];
    v18 = 138543874;
    v19 = v15;
    v20 = 2114;
    v21 = v16;
    v22 = 2114;
    v23 = v17;
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
  v8 = [(MSDProgressUpdater *)self installedBundle];

  v76 = v5;
  if (v8)
  {
    v9 = [v3 hubSuppliedSettings];
    v74 = [v9 objectForKey:@"Components"];

    v10 = [(MSDProgressUpdater *)self installedBundle];
    v11 = [v10 bundleInfo];
    v12 = [NSMutableDictionary dictionaryWithDictionary:v11];

    v13 = [(MSDProgressUpdater *)self installedBundle];
    v14 = [v13 installedComponentList];
    v15 = [v14 copy];

    v16 = [(MSDProgressUpdater *)self installedBundle];
    v17 = [v16 bundleState];

    [v12 removeObjectForKey:@"ManifestVersion"];
    [v6 setObject:v12 forKey:@"ContentDetails"];
    v18 = [(MSDProgressUpdater *)self installedBundle];
    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 preInstalledContent]);
    [v6 setObject:v19 forKey:@"PreInstalledContent"];

    if ((v17 - 3) > 3u)
    {
      v20 = &off_10017B1A0;
    }

    else
    {
      v20 = off_10016B918[(v17 - 3)];
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
  v31 = [(MSDProgressUpdater *)self bundleInProgress];
  v32 = [v31 bundleType];

  if (v32)
  {
    v33 = [(MSDProgressUpdater *)self bundleInProgress];
    v34 = [v33 bundleType];

    v71 = v4;
    v73 = v3;
    v69 = v7;
    if (v34 == 1)
    {
      v35 = [(MSDProgressUpdater *)self backgroundBundle];
      v36 = [v35 contentProgress];
      [v5 setObject:v36 forKey:@"DownloadingProgress"];

      v37 = [(MSDProgressUpdater *)self backgroundBundle];
      v38 = [v37 downloadedContentSource];
      v75 = [NSDictionary dictionaryWithDictionary:v38];

      v39 = [(MSDProgressUpdater *)self backgroundBundle];
      v40 = 0;
      v65 = &off_10017B188;
    }

    else
    {
      v41 = [(MSDProgressUpdater *)self bundleInProgress];
      v42 = [v41 bundleType];

      if (v42 != 2)
      {
        v75 = 0;
        v40 = 0;
        v51 = 0;
        v65 = 0;
LABEL_30:
        v53 = [v40 objectForKey:@"remote"];
        v54 = [v53 integerValue];
        v55 = [v75 objectForKey:@"remote"];
        v56 = [v55 integerValue];

        v67 = v40;
        v57 = [v40 objectForKey:@"local"];
        v58 = [v57 integerValue];
        v59 = [v75 objectForKey:@"local"];
        v60 = [v59 integerValue];

        v61 = [NSNumber numberWithInteger:&v54[v56]];
        v4 = v71;
        [v71 setObject:v61 forKey:@"remote"];

        v62 = [NSNumber numberWithInteger:&v58[v60]];
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

      v43 = [(MSDProgressUpdater *)self installingBundle];
      v44 = [v43 contentProgress];
      [v5 setObject:v44 forKey:@"InstallingProgress"];

      v45 = [(MSDProgressUpdater *)self installingBundle];
      v46 = [v45 downloadedContentSource];
      v66 = [NSDictionary dictionaryWithDictionary:v46];

      v47 = [(MSDProgressUpdater *)self backgroundBundle];

      if (v47)
      {
        v48 = [(MSDProgressUpdater *)self backgroundBundle];
        v49 = [v48 downloadedContentSource];
        v75 = [NSDictionary dictionaryWithDictionary:v49];

        v50 = &off_10017B1A0;
      }

      else
      {
        v75 = [NSDictionary dictionaryWithObjectsAndKeys:@"local", &off_10017B1E8, @"remote", 0];
        v50 = &off_10017B1B8;
      }

      v65 = v50;
      v39 = [(MSDProgressUpdater *)self installingBundle];
      v40 = v66;
    }

    v52 = [v39 bundleInfo];
    v51 = [NSMutableDictionary dictionaryWithDictionary:v52];

    goto LABEL_30;
  }

LABEL_36:

  return v7;
}

- (id)getContentUpdateType
{
  v3 = [(MSDProgressUpdater *)self installedBundle];

  if (!v3)
  {
    return @"ContentUpdateTypeFreshInstall";
  }

  v4 = [(MSDProgressUpdater *)self installedBundle];
  v5 = [v4 preInstalledContent];

  if (v5)
  {
    return @"ContentUpdateTypeFreshInstallFactory";
  }

  else
  {
    return @"ContentUpdateTypeIncrementalUpdate";
  }
}

- (void)demoUpdateFailed:(id)a3
{
  v3 = a3;
  v4 = +[MSDTargetDevice sharedInstance];
  v5 = [v4 isOfflineMode];

  if ((v5 & 1) == 0)
  {
    v6 = objc_alloc_init(MSDReportErrorRequest);
    [(MSDReportErrorRequest *)v6 setError:v3];
    v7 = +[MSDServerRequestHandler sharedInstance];
    v8 = [v7 handleRequestSync:v6];

    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 error];
      v11 = 136315394;
      v12 = "[MSDProgressUpdater demoUpdateFailed:]";
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: sent error status to hub; error=%{public}@", &v11, 0x16u);
    }
  }
}

- (void)demoUpdateCompleted:(id)a3
{
  v7 = a3;
  v3 = +[MSDTargetDevice sharedInstance];
  if (([v3 isOfflineMode] & 1) == 0)
  {
    v4 = objc_alloc_init(MSDReportDoneRequest);
    [(MSDReportDoneRequest *)v4 setRequestStr:v7];
    v5 = [v3 getSavedError];
    [(MSDReportDoneRequest *)v4 setError:v5];

    [(MSDServerRequest *)v4 setCompletion:&stru_10016B8F8];
    v6 = +[MSDServerRequestHandler sharedInstance];
    [v6 handleRequestAsync:v4];
  }
}

@end