@interface MSDAppHelper
+ (id)sharedInstance;
- (BOOL)isInstalledApp:(id)a3;
- (BOOL)stopAllAppsExcept:(id)a3;
- (BOOL)waitForAppToInstall:(id)a3 withTimeout:(unint64_t)a4;
- (id)acquireAppTerminationAssertionForApp:(id)a3;
- (id)bundleLocalizedNameForInstalledApp:(id)a3;
- (id)bundlePathForInstalledApp:(id)a3;
- (id)installedApps;
- (id)runningApps;
- (id)runningApps:(BOOL)a3;
- (id)visibleApps;
- (void)releaseAppTerminationAssertion:(id)a3 forApp:(id)a4;
@end

@implementation MSDAppHelper

+ (id)sharedInstance
{
  if (qword_1001A5880 != -1)
  {
    sub_1000D8F14();
  }

  v3 = qword_1001A5878;

  return v3;
}

- (id)installedApps
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [v2 allApplications];
  v4 = [NSMutableArray arrayWithCapacity:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 applicationType];
        if ([v11 isEqualToString:@"User"])
        {
          v12 = [v10 isPlaceholder];

          if (v12)
          {
            continue;
          }

          v11 = [v10 applicationIdentifier];
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)visibleApps
{
  v2 = [[NSMutableArray alloc] initWithCapacity:0];
  v3 = objc_alloc_init(SBSHomeScreenService);
  v4 = [v3 allHomeScreenApplicationBundleIdentifiers];
  [v2 addObjectsFromArray:v4];

  v5 = [NSArray arrayWithArray:v2];

  return v5;
}

- (id)runningApps:(BOOL)a3
{
  v3 = a3;
  v5 = +[RBSProcessStateDescriptor descriptor];
  v6 = +[RBSProcessPredicate predicateMatchingProcessTypeApplication];
  v30 = [NSMutableArray arrayWithCapacity:0];
  [v5 setValues:1];
  v7 = FBSSceneVisibilityEndowmentNamespace;
  v39 = FBSSceneVisibilityEndowmentNamespace;
  v8 = [NSArray arrayWithObjects:&v39 count:1];
  [v5 setEndowmentNamespaces:v8];

  v36 = 0;
  v9 = [RBSProcessState statesForPredicate:v6 withDescriptor:v5 error:&v36];
  v10 = v36;
  v11 = v10;
  if (v9)
  {
    v26 = v10;
    v28 = v6;
    v29 = v5;
    v31 = [(MSDAppHelper *)self visibleApps];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v27 = v9;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (!v13)
    {
      goto LABEL_22;
    }

    v14 = v13;
    v15 = *v33;
    while (1)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v18 = [v17 taskState];
        if (v3)
        {
          if (v18 != 2 && [v17 taskState] != 4)
          {
            goto LABEL_19;
          }

          v19 = [v17 endowmentNamespaces];
          v20 = [v19 containsObject:v7];

          if ((v20 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else if (!RBSTaskStateIsRunning())
        {
          goto LABEL_19;
        }

        v21 = [v17 process];
        v22 = [v21 bundle];
        v23 = [v22 identifier];

        if (!v23)
        {
          v24 = sub_100063A54();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v17;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to extract app bundle ID from process state: %{public}@", buf, 0xCu);
          }

LABEL_19:
          v23 = 0;
          goto LABEL_20;
        }

        if ([v31 containsObject:v23])
        {
          [v30 addObject:v23];
        }

LABEL_20:
      }

      v14 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (!v14)
      {
LABEL_22:

        v6 = v28;
        v5 = v29;
        v11 = v26;
        v9 = v27;

        goto LABEL_23;
      }
    }
  }

  sub_1000D8F28(v10, buf);

LABEL_23:

  return v30;
}

- (id)runningApps
{
  v3 = +[RBSProcessStateDescriptor descriptor];
  v4 = +[RBSProcessPredicate predicateMatchingProcessTypeApplication];
  v5 = [NSMutableArray arrayWithCapacity:0];
  [v3 setValues:1];
  v33 = FBSSceneVisibilityEndowmentNamespace;
  v6 = [NSArray arrayWithObjects:&v33 count:1];
  [v3 setEndowmentNamespaces:v6];

  v30 = 0;
  v7 = [RBSProcessState statesForPredicate:v4 withDescriptor:v3 error:&v30];
  v8 = v30;
  v9 = v8;
  if (v7)
  {
    v22 = v8;
    v24 = v4;
    v25 = v3;
    v10 = [(MSDAppHelper *)self visibleApps];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v23 = v7;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (!v12)
    {
      goto LABEL_17;
    }

    v13 = v12;
    v14 = *v27;
    while (1)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        [v16 taskState];
        if (!RBSTaskStateIsRunning())
        {
          goto LABEL_14;
        }

        v17 = [v16 process];
        v18 = [v17 bundle];
        v19 = [v18 identifier];

        if (!v19)
        {
          v20 = sub_100063A54();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v16;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to extract app bundle ID from process state: %{public}@", buf, 0xCu);
          }

LABEL_14:
          v19 = 0;
          goto LABEL_15;
        }

        if ([v10 containsObject:v19])
        {
          [v5 addObject:v19];
        }

LABEL_15:
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (!v13)
      {
LABEL_17:

        v4 = v24;
        v3 = v25;
        v9 = v22;
        v7 = v23;
        goto LABEL_18;
      }
    }
  }

  sub_1000D8F28(v8, buf);
  v10 = *buf;
LABEL_18:

  return v5;
}

- (id)bundleLocalizedNameForInstalledApp:(id)a3
{
  v3 = a3;
  v8 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v8];
  v5 = v8;
  if (v4)
  {
    v6 = [v4 localizedName];
  }

  else
  {
    sub_1000D8FDC(v3, v5);
    v6 = 0;
  }

  return v6;
}

- (id)bundlePathForInstalledApp:(id)a3
{
  v3 = [LSApplicationProxy applicationProxyForIdentifier:a3];
  v4 = [v3 bundleURL];
  v5 = [v4 path];

  return v5;
}

- (BOOL)isInstalledApp:(id)a3
{
  v3 = [LSApplicationProxy applicationProxyForIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 appState];
    v6 = [v5 isInstalled];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)waitForAppToInstall:(id)a3 withTimeout:(unint64_t)a4
{
  v6 = a3;
  v7 = +[NSDistributedNotificationCenter defaultCenter];
  v8 = [NSDate dateWithTimeIntervalSinceNow:a4];
  v9 = objc_alloc_init(NSCondition);
  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Wait for app to install: %{public}@", buf, 0xCu);
  }

  v11 = +[NSOperationQueue mainQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10006F3A0;
  v19[3] = &unk_100169CE8;
  v12 = v9;
  v20 = v12;
  v13 = [v7 addObserverForName:@"com.apple.LaunchServices.applicationRegistered" object:0 queue:v11 usingBlock:v19];

  if (v13)
  {
    [v12 lock];
    while (1)
    {
      v14 = [(MSDAppHelper *)self isInstalledApp:v6];
      if (v14)
      {
        break;
      }

      v15 = sub_100063A54();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "App is not yet installed.", buf, 2u);
      }

      if (([v12 waitUntilDate:v8] & 1) == 0)
      {
        v16 = sub_100063A54();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1000D9098(v16);
        }

        break;
      }
    }

    [v12 unlock];
    [v7 removeObserver:v13];
  }

  else
  {
    v17 = sub_100063A54();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000D90DC(v17);
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)stopAllAppsExcept:(id)a3
{
  v4 = a3;
  v18 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = [v18 allApplications];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 applicationIdentifier];
        v12 = [v4 containsObject:v11];

        if ((v12 & 1) == 0)
        {
          v13 = [v10 applicationIdentifier];
          v14 = [(MSDAppHelper *)self acquireAppTerminationAssertionForApp:v13];

          if (v14)
          {
            v15 = [v10 applicationIdentifier];
            [(MSDAppHelper *)self releaseAppTerminationAssertion:v14 forApp:v15];
          }

          else
          {
            v15 = sub_100063A54();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v10 applicationIdentifier];
              *buf = 138543362;
              v24 = v16;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ERROR - Failed to acquire termination assertion for app:  %{public}@", buf, 0xCu);
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  return 1;
}

- (id)acquireAppTerminationAssertionForApp:(id)a3
{
  v3 = a3;
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D9120();
  }

  v5 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v3];
  v6 = [RBSTerminateContext alloc];
  v7 = [@"Installing application %@" stringByAppendingString:v3];
  v8 = [v6 initWithExplanation:v7];

  [v8 setMaximumTerminationResistance:50];
  v9 = [[RBSTerminationAssertion alloc] initWithPredicate:v5 context:v8];
  v10 = v9;
  if (v9)
  {
    v16 = 0;
    v11 = [v9 acquireWithError:&v16];
    v12 = v16;
    v13 = sub_100063A54();
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_1000D9224();
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000D9188(v3, v12);
      }

      v10 = 0;
    }
  }

  else
  {
    sub_1000D928C();
    v12 = 0;
  }

  return v10;
}

- (void)releaseAppTerminationAssertion:(id)a3 forApp:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D932C();
  }

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 0;
      v8 = [v5 invalidateWithError:&v12];
      v9 = v12;
      v10 = sub_100063A54();
      v11 = v10;
      if (v8)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_1000D9444();
        }
      }

      else
      {
        sub_1000D9394(v10, v6, v9);
      }
    }
  }
}

@end