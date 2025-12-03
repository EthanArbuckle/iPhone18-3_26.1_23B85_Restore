@interface DMDiphoneOSAppLifeCycle
- (DMDiphoneOSAppLifeCycle)initWithBundleIdentifier:(id)identifier;
- (void)_findProxyInProxies:(id)proxies andCallBlock:(id)block;
- (void)applicationInstallsDidCancel:(id)cancel;
- (void)applicationInstallsDidChange:(id)change;
- (void)applicationInstallsDidPause:(id)pause;
- (void)applicationInstallsDidResume:(id)resume;
- (void)applicationInstallsDidStart:(id)start;
- (void)applicationsDidFailToInstall:(id)install;
- (void)applicationsDidFailToUninstall:(id)uninstall;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)applicationsWillInstall:(id)install;
- (void)applicationsWillUninstall:(id)uninstall;
- (void)dealloc;
@end

@implementation DMDiphoneOSAppLifeCycle

- (DMDiphoneOSAppLifeCycle)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = DMFAppLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v40 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Initialize app life cycle with bundle identifier: %{public}@", buf, 0xCu);
  }

  v38 = 0;
  v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v38];
  v6 = v38;
  if (!v5)
  {
    v7 = DMFAppLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10007DC10(identifierCopy, v6, v7);
    }
  }

  compatibilityObject = [v5 compatibilityObject];
  v9 = compatibilityObject;
  if (v5 && compatibilityObject)
  {
    appState = [compatibilityObject appState];
    isInstalled = [appState isInstalled];

    installType = [v9 installType];
    if (installType <= 0xA)
    {
      if (((1 << installType) & 0x45E) == 0)
      {
        v15 = 4;
        if (!isInstalled)
        {
          v15 = 0;
        }

        v16 = 6;
        if (installType != 5)
        {
          v16 = 0;
        }

        v18 = installType == 0;
        goto LABEL_35;
      }

      installProgress = [v9 installProgress];
      installState = [installProgress installState];

      if (installState <= 2)
      {
        v15 = 5;
        if (!isInstalled)
        {
          v15 = 1;
        }

        v16 = 2;
        if (isInstalled)
        {
          v16 = 6;
        }

        v17 = 3;
        if (isInstalled)
        {
          v17 = 7;
        }

        if (installState != 2)
        {
          v17 = 0;
        }

        if (installState != 1)
        {
          v16 = v17;
        }

        v18 = installState == 0;
LABEL_35:
        if (v18)
        {
          v21 = v15;
        }

        else
        {
          v21 = v16;
        }

        goto LABEL_38;
      }

      if ((installState - 3) < 2)
      {
        if (isInstalled)
        {
          v21 = 4;
        }

        else
        {
          v21 = 0;
        }

LABEL_38:
        v19 = DMFAppLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [DMFApp stringForInstallationState:v21];
          if (isInstalled)
          {
            v23 = @"YES";
          }

          else
          {
            v23 = @"NO";
          }

          appState2 = [v9 appState];
          v24 = v6;
          if ([appState2 isPlaceholder])
          {
            v25 = @"YES";
          }

          else
          {
            v25 = @"NO";
          }

          installType2 = [v9 installType];
          installProgress2 = [v9 installProgress];
          installState2 = [installProgress2 installState];
          *buf = 138544642;
          v40 = identifierCopy;
          v41 = 2114;
          v42 = v22;
          v43 = 2114;
          v44 = v34;
          v45 = 2114;
          v46 = v25;
          v6 = v24;
          v47 = 2048;
          v48 = installType2;
          v49 = 2048;
          v50 = installState2;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "App lifecycle for %{public}@\n\tcalculated install state:%{public}@\n\tis installed: %{public}@\n\tis placeholder: %{public}@\n\tinstall type: %lu\n\tinstall progress install state: %lu", buf, 0x3Eu);
        }

        goto LABEL_46;
      }

      if (installState == 5)
      {
        v21 = 4;
        goto LABEL_38;
      }
    }

    v21 = 0;
    goto LABEL_38;
  }

  v19 = DMFAppLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [DMFApp stringForInstallationState:0];
    *buf = 138543618;
    v40 = identifierCopy;
    v41 = 2114;
    v42 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "App lifecycle for %{public}@ (no proxy)\n\tassumed install state:%{public}@", buf, 0x16u);
  }

  v21 = 0;
LABEL_46:

  v37.receiver = self;
  v37.super_class = DMDiphoneOSAppLifeCycle;
  v29 = [(DMDAppLifeCycle *)&v37 initWithBundleIdentifier:identifierCopy currentState:v21];
  if (v29)
  {
    installProgress3 = [v9 installProgress];
    proxyProgress = v29->_proxyProgress;
    v29->_proxyProgress = installProgress3;

    v32 = +[LSApplicationWorkspace defaultWorkspace];
    [v32 addObserver:v29];
  }

  return v29;
}

- (void)dealloc
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DMDiphoneOSAppLifeCycle;
  [(DMDiphoneOSAppLifeCycle *)&v4 dealloc];
}

- (void)applicationsWillInstall:(id)install
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100020A58;
  v3[3] = &unk_1000CE5C8;
  v3[4] = self;
  [(DMDiphoneOSAppLifeCycle *)self _findProxyInProxies:install andCallBlock:v3];
}

- (void)applicationInstallsDidStart:(id)start
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100020C74;
  v3[3] = &unk_1000CE5C8;
  v3[4] = self;
  [(DMDiphoneOSAppLifeCycle *)self _findProxyInProxies:start andCallBlock:v3];
}

- (void)applicationInstallsDidChange:(id)change
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000210DC;
  v3[3] = &unk_1000CE5C8;
  v3[4] = self;
  [(DMDiphoneOSAppLifeCycle *)self _findProxyInProxies:change andCallBlock:v3];
}

- (void)applicationInstallsDidPause:(id)pause
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000212FC;
  v3[3] = &unk_1000CE5C8;
  v3[4] = self;
  [(DMDiphoneOSAppLifeCycle *)self _findProxyInProxies:pause andCallBlock:v3];
}

- (void)applicationInstallsDidResume:(id)resume
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002151C;
  v3[3] = &unk_1000CE5C8;
  v3[4] = self;
  [(DMDiphoneOSAppLifeCycle *)self _findProxyInProxies:resume andCallBlock:v3];
}

- (void)applicationInstallsDidCancel:(id)cancel
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002173C;
  v3[3] = &unk_1000CE5C8;
  v3[4] = self;
  [(DMDiphoneOSAppLifeCycle *)self _findProxyInProxies:cancel andCallBlock:v3];
}

- (void)applicationsDidFailToInstall:(id)install
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100021988;
  v3[3] = &unk_1000CE5C8;
  v3[4] = self;
  [(DMDiphoneOSAppLifeCycle *)self _findProxyInProxies:install andCallBlock:v3];
}

- (void)applicationsDidInstall:(id)install
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100021CCC;
  v3[3] = &unk_1000CE5C8;
  v3[4] = self;
  [(DMDiphoneOSAppLifeCycle *)self _findProxyInProxies:install andCallBlock:v3];
}

- (void)applicationsWillUninstall:(id)uninstall
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100022084;
  v3[3] = &unk_1000CE5C8;
  v3[4] = self;
  [(DMDiphoneOSAppLifeCycle *)self _findProxyInProxies:uninstall andCallBlock:v3];
}

- (void)applicationsDidFailToUninstall:(id)uninstall
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100022348;
  v3[3] = &unk_1000CE5C8;
  v3[4] = self;
  [(DMDiphoneOSAppLifeCycle *)self _findProxyInProxies:uninstall andCallBlock:v3];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100022504;
  v3[3] = &unk_1000CE5C8;
  v3[4] = self;
  [(DMDiphoneOSAppLifeCycle *)self _findProxyInProxies:uninstall andCallBlock:v3];
}

- (void)_findProxyInProxies:(id)proxies andCallBlock:(id)block
{
  proxiesCopy = proxies;
  blockCopy = block;
  if (!blockCopy)
  {
    sub_10007DC98(a2, self);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = proxiesCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        bundleIdentifier = [(DMDAppLifeCycle *)self bundleIdentifier];
        bundleIdentifier2 = [v14 bundleIdentifier];
        v17 = [bundleIdentifier isEqualToString:bundleIdentifier2];

        if (v17)
        {
          blockCopy[2](blockCopy, v14);
          goto LABEL_13;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

@end