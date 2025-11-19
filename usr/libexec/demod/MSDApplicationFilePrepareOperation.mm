@interface MSDApplicationFilePrepareOperation
- (BOOL)_determineAppInstallNecessity;
- (BOOL)_waitForPricingAppUpdateIfNeeded;
- (id)methodSelectors;
@end

@implementation MSDApplicationFilePrepareOperation

- (id)methodSelectors
{
  v2 = +[MSDOperationContext downloadOnly];
  v3 = [NSValue valueWithPointer:"_waitForPricingAppUpdateIfNeeded"];
  v4 = [NSValue valueWithPointer:"_determineAppInstallNecessity"];
  v5 = v4;
  if (v2)
  {
    v6 = [NSArray arrayWithObjects:v3, v4, 0];
  }

  else
  {
    v7 = [NSValue valueWithPointer:"_prepareStagingArea"];
    v6 = [NSArray arrayWithObjects:v3, v5, v7, 0];
  }

  return v6;
}

- (BOOL)_waitForPricingAppUpdateIfNeeded
{
  v2 = [(MSDOperation *)self context];
  v3 = [v2 pricingAppUpdateDeferred];

  if (v3)
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Waiting for Pricing app to finish its own update.", v7, 2u);
    }

    v5 = +[MSDTargetDevice sharedInstance];
    [v5 waitForPricing:0 forReboot:0];
  }

  return 1;
}

- (BOOL)_determineAppInstallNecessity
{
  v3 = +[MSDAppHelper sharedInstance];
  v4 = [v3 installedApps];

  v5 = [(MSDOperation *)self context];
  v6 = [v5 identifier];

  if ([v4 containsObject:v6])
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543362;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "App is already installed: %{public}@", &v21, 0xCu);
    }

    v8 = +[MSDAppHelper sharedInstance];
    v9 = [v8 bundlePathForInstalledApp:v6];

    v10 = v9 != 0;
    if (v9)
    {
      v11 = [MSDiOSApp appWithPath:v9];
      v12 = [v11 uniqueIdentifier];

      v13 = [(MSDOperation *)self context];
      v14 = [v13 uniqueIdentifier];
      v15 = [v14 isEqualToString:v12];

      [(MSDOperation *)self setSkipped:v15];
      v16 = [(MSDOperation *)self context];
      [v16 setAlreadyInstalled:1];

      v17 = [(MSDOperation *)self context];
      [v17 setCurrentUniqueIdentifier:v12];
    }

    else
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000D6598(v6, v12);
      }
    }
  }

  else
  {
    [(MSDOperation *)self setSkipped:0];
    v18 = [(MSDOperation *)self context];
    [v18 setAlreadyInstalled:0];

    v19 = [(MSDOperation *)self context];
    [v19 setCurrentUniqueIdentifier:0];

    v10 = 1;
  }

  return v10;
}

@end