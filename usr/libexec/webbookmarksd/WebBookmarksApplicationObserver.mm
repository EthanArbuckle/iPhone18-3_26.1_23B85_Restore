@interface WebBookmarksApplicationObserver
+ (id)sharedObserver;
- (WebBookmarksApplicationObserver)init;
- (void)_safariWasUninstalled;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)databaseWasRebuilt;
- (void)dealloc;
@end

@implementation WebBookmarksApplicationObserver

- (WebBookmarksApplicationObserver)init
{
  v8.receiver = self;
  v8.super_class = WebBookmarksApplicationObserver;
  v2 = [(WebBookmarksApplicationObserver *)&v8 init];
  if (v2)
  {
    v3 = sub_100014764();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking system app migration status", buf, 2u);
    }

    objc_initWeak(buf, v2);
    objc_copyWeak(&v6, buf);
    MobileInstallationWaitForSystemAppMigrationWithCompletion();
    v4 = v2;
    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WebBookmarksApplicationObserver;
  [(WebBookmarksApplicationObserver *)&v4 dealloc];
}

+ (id)sharedObserver
{
  if (qword_10002E938 != -1)
  {
    sub_100017780();
  }

  v3 = qword_10002E930;

  return v3;
}

- (void)_safariWasUninstalled
{
  v2 = sub_100014764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Safari deleting Safari Library data", buf, 2u);
  }

  sub_100013F28();
  sub_100013FA0();
  sub_100013F64();
  v3 = WBSafariDirectoryPath();
  v4 = +[NSFileManager defaultManager];
  v10 = 0;
  [v4 removeItemAtPath:v3 error:&v10];
  v5 = v10;

  v6 = sub_100014764();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      safari_privacyPreservingDescription = [v5 safari_privacyPreservingDescription];
      *buf = 138543362;
      v12 = safari_privacyPreservingDescription;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to delete Safari directory %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Safari data deleted", buf, 2u);
  }

  exit(0);
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  uninstallCopy = uninstall;
  v5 = [uninstallCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = safariMobileApplicationBundleIdentifier;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(uninstallCopy);
        }

        bundleIdentifier = [*(*(&v14 + 1) + 8 * i) bundleIdentifier];
        v11 = [bundleIdentifier isEqualToString:v8];

        if (v11)
        {
          v12 = sub_100014764();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *v13 = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received Safari did uninstalled notification", v13, 2u);
          }

          [(WebBookmarksApplicationObserver *)self _safariWasUninstalled];
          goto LABEL_13;
        }
      }

      v6 = [uninstallCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)databaseWasRebuilt
{
  v3 = sub_100014764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received LS database rebuilt notification", buf, 2u);
  }

  if ((+[NSBundle safari_isMobileSafariInstalled]& 1) == 0)
  {
    v4 = sub_100014764();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Safari is uninstalled after app database rebuilt", v5, 2u);
    }

    [(WebBookmarksApplicationObserver *)self _safariWasUninstalled];
  }
}

- (void)applicationsDidInstall:(id)install
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  installCopy = install;
  v4 = [installCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = safariMobileApplicationBundleIdentifier;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(installCopy);
        }

        bundleIdentifier = [*(*(&v13 + 1) + 8 * v8) bundleIdentifier];
        v10 = [bundleIdentifier isEqualToString:v7];

        if (v10)
        {
          v11 = sub_100014400();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *v12 = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received LS applicationsDidInstall notification", v12, 2u);
          }

          exit(0);
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [installCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

@end