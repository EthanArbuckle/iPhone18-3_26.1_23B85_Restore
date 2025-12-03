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
  context = [(MSDOperation *)self context];
  pricingAppUpdateDeferred = [context pricingAppUpdateDeferred];

  if (pricingAppUpdateDeferred)
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
  installedApps = [v3 installedApps];

  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  if ([installedApps containsObject:identifier])
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543362;
      v22 = identifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "App is already installed: %{public}@", &v21, 0xCu);
    }

    v8 = +[MSDAppHelper sharedInstance];
    v9 = [v8 bundlePathForInstalledApp:identifier];

    v10 = v9 != 0;
    if (v9)
    {
      v11 = [MSDiOSApp appWithPath:v9];
      uniqueIdentifier = [v11 uniqueIdentifier];

      context2 = [(MSDOperation *)self context];
      uniqueIdentifier2 = [context2 uniqueIdentifier];
      v15 = [uniqueIdentifier2 isEqualToString:uniqueIdentifier];

      [(MSDOperation *)self setSkipped:v15];
      context3 = [(MSDOperation *)self context];
      [context3 setAlreadyInstalled:1];

      context4 = [(MSDOperation *)self context];
      [context4 setCurrentUniqueIdentifier:uniqueIdentifier];
    }

    else
    {
      uniqueIdentifier = sub_100063A54();
      if (os_log_type_enabled(uniqueIdentifier, OS_LOG_TYPE_ERROR))
      {
        sub_1000D6598(identifier, uniqueIdentifier);
      }
    }
  }

  else
  {
    [(MSDOperation *)self setSkipped:0];
    context5 = [(MSDOperation *)self context];
    [context5 setAlreadyInstalled:0];

    context6 = [(MSDOperation *)self context];
    [context6 setCurrentUniqueIdentifier:0];

    v10 = 1;
  }

  return v10;
}

@end