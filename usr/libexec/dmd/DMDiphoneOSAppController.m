@interface DMDiphoneOSAppController
+ (id)_appStoreAccountIdentifierForPersona:(id)a3;
+ (id)_appleAccountForPersona:(id)a3;
+ (id)changeTypeAsString:(int64_t)a3;
- (ASDJobManager)jobManager;
- (ASDUpdatesService)updatesService;
- (BOOL)setConfiguration:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setFeedback:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)userIsSignedIn;
- (BOOL)writeManagementInformationToDiskWithError:(id *)a3;
- (id)_allPropertyKeys;
- (id)_managedDefaultsForBundleIdentifier:(id)a3;
- (id)configurationForBundleIdentifier:(id)a3;
- (id)feedbackForBundleIdentifier:(id)a3;
- (id)initPrivate;
- (unint64_t)appTypeFromProxy:(id)a3;
- (void)_applyStoreDictionary:(id)a3 toAppMetadata:(id)a4;
- (void)_downloadAppForRequest:(id)a3 type:(int64_t)a4 completion:(id)a5;
- (void)_getMetadataForBundleIdentifier:(id)a3 storeItemIdentifier:(id)a4 personaIdentifier:(id)a5 completion:(id)a6;
- (void)_installDeviceLicensedAppForRequest:(id)a3 completion:(id)a4;
- (void)_installUserAppForRequest:(id)a3 completion:(id)a4;
- (void)_startUpdatingAppForRequest:(id)a3 metadata:(id)a4 completion:(id)a5;
- (void)_uninstallAppWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)_updateEndedForLifeCycle:(id)a3;
- (void)_updateForegroundBundleIdentifiers;
- (void)_withSandboxExtensionForApp:(id)a3 do:(id)a4;
- (void)addTerminationAssertion:(id)a3 forBundleIdentifier:(id)a4;
- (void)cancelAppInstallationWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)didCancelUpdatingForLifeCycle:(id)a3;
- (void)didFailUpdatingForLifeCycle:(id)a3;
- (void)didFinishUpdatingForLifeCycle:(id)a3;
- (void)getBundleIdentifierForStoreItemIdentifier:(id)a3 personaIdentifier:(id)a4 completion:(id)a5;
- (void)getMetadataForNonEnterpriseAppRequest:(id)a3 completion:(id)a4;
- (void)handleFetchRequest:(id)a3 completion:(id)a4;
- (void)installSystemAppWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)promptUserToSignInWithCompletion:(id)a3;
- (void)removeTerminationAssertionForBundleIdentifier:(id)a3;
- (void)resumeAppInstallationWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)startInstallingEnterpriseAppWithManifestURL:(id)a3 completion:(id)a4;
- (void)startInstallingNonEnterpriseAppForRequest:(id)a3 completion:(id)a4;
- (void)startRedeemingAppWithCode:(id)a3 completion:(id)a4;
- (void)startUninstallingAppWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)startUpdatingAppForRequest:(id)a3 metadata:(id)a4 completion:(id)a5;
@end

@implementation DMDiphoneOSAppController

- (void)_updateForegroundBundleIdentifiers
{
  if (!+[NSThread isMainThread])
  {
    sub_10007D9F0();
  }

  v3 = [(DMDiphoneOSAppController *)self layoutMonitor];
  v4 = [v3 currentLayout];
  v5 = [v4 elements];

  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) bundleIdentifier];
        if (v12)
        {
          [v6 addObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];
  [(DMDiphoneOSAppController *)self set_foregroundBundleIdentifiers:v13];

  v14 = DMFAppLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10007DA5C(v6, v14);
  }
}

- (void)handleFetchRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(DMDiphoneOSAppController *)self updatesService];
  [v6 storeItemIdentifier];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100016CBC;
  v15[3] = &unk_1000CE120;
  v16 = v8;
  v17 = v9;
  v18 = v6;
  v20 = v19 = self;
  v21 = v7;
  v10 = v7;
  v11 = v20;
  v12 = v6;
  v13 = v9;
  v14 = v8;
  [v13 getManagedUpdatesWithCompletionBlock:v15];
}

- (unint64_t)appTypeFromProxy:(id)a3
{
  v3 = [a3 applicationType];
  if ([v3 isEqualToString:LSUserApplicationType])
  {
    v4 = 2;
  }

  else
  {
    v4 = [v3 isEqualToString:LSSystemApplicationType];
  }

  return v4;
}

- (id)_allPropertyKeys
{
  if (qword_1000FEF78 != -1)
  {
    sub_10007D5B0();
  }

  v3 = qword_1000FEF70;

  return v3;
}

- (void)startInstallingEnterpriseAppWithManifestURL:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ASDExternalManifestRequestOptions alloc] initWithURL:v6];

  [v7 setShouldHideUserPrompts:1];
  v8 = [[ASDExternalManifestRequest alloc] initWithOptions:v7];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100017D8C;
  v10[3] = &unk_1000CE168;
  v11 = v5;
  v9 = v5;
  [v8 startWithCompletionBlock:v10];
}

- (void)startInstallingNonEnterpriseAppForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 bundleIdentifier];
  v9 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:v8 error:0];
  v10 = [v9 compatibilityObject];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = [v6 licenseType];
    if (v13)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100018054;
      v15[3] = &unk_1000CE190;
      v18 = (v13 & 2) >> 1;
      v15[4] = self;
      v16 = v6;
      v17 = v7;
      [(DMDiphoneOSAppController *)self _installDeviceLicensedAppForRequest:v16 completion:v15];
    }

    else if ((v13 & 2) != 0)
    {
      [(DMDiphoneOSAppController *)self _installUserAppForRequest:v6 completion:v7];
    }

    else
    {
      v14 = DMFErrorWithCodeAndUserInfo();
      (*(v7 + 2))(v7, v14);
    }
  }

  else
  {
    [(DMDiphoneOSAppController *)self installSystemAppWithBundleIdentifier:v8 completion:v7];
  }
}

- (void)resumeAppInstallationWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DMFAppLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resume app installation for bundle identifier: %{public}@", buf, 0xCu);
  }

  [(DMDiphoneOSAppController *)self jobManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001822C;
  v14 = v12[3] = &unk_1000CE1E0;
  v15 = v7;
  v13 = v6;
  v9 = v14;
  v10 = v7;
  v11 = v6;
  [v9 getJobsUsingBlock:v12];
}

- (void)_installDeviceLicensedAppForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DMFAppLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Install device licensed app for request: %{public}@", &v9, 0xCu);
  }

  [(DMDiphoneOSAppController *)self _downloadAppForRequest:v6 type:2 completion:v7];
}

- (void)_installUserAppForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DMFAppLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Install user licensed app for request: %{public}@", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001878C;
  v11[3] = &unk_1000CDE60;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [(DMDiphoneOSAppController *)self _downloadAppForRequest:v10 type:1 completion:v11];
}

- (void)_downloadAppForRequest:(id)a3 type:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 bundleIdentifier];
  v11 = [v9 storeItemIdentifier];
  v12 = [v9 personaIdentifier];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100018990;
  v14[3] = &unk_1000CE208;
  v15 = v8;
  v13 = v8;
  [(DMDiphoneOSAppController *)self sendAppRequestWithBundleIdentifier:v10 storeItemIdentifier:v11 personaIdentifier:v12 type:a4 skipDownloads:0 completion:v14];
}

- (id)initPrivate
{
  v14.receiver = self;
  v14.super_class = DMDiphoneOSAppController;
  v2 = [(DMDAppController *)&v14 initPrivate];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = v2[7];
    v2[7] = &__NSArray0__struct;

    v4 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000021C8;
    v11 = &unk_1000CE230;
    objc_copyWeak(&v12, &location);
    [v4 setTransitionHandler:&v8];
    v5 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v4, v8, v9, v10, v11];
    v6 = v2[6];
    v2[6] = v5;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (ASDJobManager)jobManager
{
  if (qword_1000FEF88 != -1)
  {
    sub_10007D5C4();
  }

  v3 = qword_1000FEF80;

  return v3;
}

- (ASDUpdatesService)updatesService
{
  if (qword_1000FEF98 != -1)
  {
    sub_10007D5D8();
  }

  v3 = qword_1000FEF90;

  return v3;
}

- (void)addTerminationAssertion:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = DMFAppLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Add termination assertion for bundle identifier: %{public}@", &v12, 0xCu);
  }

  v9 = [(DMDiphoneOSAppController *)self bundleIDsToAssertions];

  if (!v9)
  {
    v10 = objc_opt_new();
    [(DMDiphoneOSAppController *)self setBundleIDsToAssertions:v10];
  }

  v11 = [(DMDiphoneOSAppController *)self bundleIDsToAssertions];
  [v11 setObject:v7 forKeyedSubscript:v6];
}

- (void)removeTerminationAssertionForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = DMFAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remove termination assertion for bundle identifier: %{public}@", &v9, 0xCu);
  }

  v6 = [(DMDiphoneOSAppController *)self bundleIDsToAssertions];
  v7 = [v6 objectForKeyedSubscript:v4];
  [v7 invalidate];

  v8 = [(DMDiphoneOSAppController *)self bundleIDsToAssertions];
  [v8 setObject:0 forKeyedSubscript:v4];
}

- (BOOL)userIsSignedIn
{
  v2 = +[SSAccountStore defaultStore];
  v3 = [v2 activeAccount];
  v4 = v3 != 0;

  return v4;
}

- (void)promptUserToSignInWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[SSAccountStore defaultStore];
  v5 = [v4 activeAccount];

  if (v5)
  {
    v6 = [[SSMutableAuthenticationContext alloc] initWithAccount:v5];
  }

  else
  {
    v6 = +[SSMutableAuthenticationContext contextForSignIn];
  }

  v7 = v6;
  [v6 setPromptStyle:0];
  [v7 setAccountNameEditable:0];
  [v7 setCanCreateNewAccount:1];
  v8 = [[SSAuthenticateRequest alloc] initWithAuthenticationContext:v7];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000190A4;
  v10[3] = &unk_1000CE298;
  v11 = v3;
  v9 = v3;
  [v8 startWithAuthenticateResponseBlock:v10];
}

+ (id)_appStoreAccountIdentifierForPersona:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_opt_class() _appleAccountForPersona:v3];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 ams_DSID];
      v7 = DMFAppLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543618;
        v10 = v3;
        v11 = 2114;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "persona:%{public}@ -> accountIdentifier:%{public}@", &v9, 0x16u);
      }
    }

    else
    {
      v7 = DMFAppLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543362;
        v10 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "persona:%{public}@ -> accountIdentifier:<none>", &v9, 0xCu);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_appleAccountForPersona:(id)a3
{
  v3 = a3;
  v4 = +[ACAccountStore defaultStore];
  v5 = [v4 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierAppleAccount];
  [v4 accountsWithAccountType:v5];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v16 = v5;
    v9 = *v18;
    v10 = ACAccountPropertyPersonaIdentifier;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v13 isEqualToString:v3])
        {
          v14 = v12;

          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v14 = 0;
LABEL_12:
    v5 = v16;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)changeTypeAsString:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"default";
  }

  else
  {
    return off_1000CE3C0[a3];
  }
}

- (void)installSystemAppWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    sub_10007D5EC();
  }

  v7 = DMFAppLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Installing system app with bundle id: %{public}@", buf, 0xCu);
  }

  v8 = [[ASDSystemAppRequest alloc] initWithBundleID:v5];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000199C4;
  v10[3] = &unk_1000CE2E8;
  v11 = v6;
  v9 = v6;
  [v8 startWithErrorHandler:v10];
}

- (BOOL)writeManagementInformationToDiskWithError:(id *)a3
{
  v6.receiver = self;
  v6.super_class = DMDiphoneOSAppController;
  v3 = [(DMDAppController *)&v6 writeManagementInformationToDiskWithError:a3];
  if (v3)
  {
    v4 = +[MCProfileConnection sharedConnection];
    [v4 rereadManagedAppAttributes];
  }

  return v3;
}

- (void)getBundleIdentifierForStoreItemIdentifier:(id)a3 personaIdentifier:(id)a4 completion:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100019BDC;
  v9[3] = &unk_1000CDE10;
  v10 = a5;
  v8 = v10;
  [(DMDiphoneOSAppController *)self _getMetadataForBundleIdentifier:0 storeItemIdentifier:a3 personaIdentifier:a4 completion:v9];
}

- (void)getMetadataForNonEnterpriseAppRequest:(id)a3 completion:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = v19;
  if (v19)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10007D658();
    v7 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  sub_10007D6CC();
  v7 = v19;
LABEL_3:
  v8 = [v7 bundleIdentifier];
  v9 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:v8 error:0];
  v10 = [v9 compatibilityObject];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v14 = [v19 storeItemIdentifier];
    v13 = [v19 personaIdentifier];
    [(DMDiphoneOSAppController *)self _getMetadataForBundleIdentifier:v8 storeItemIdentifier:v14 personaIdentifier:v13 completion:v6];
  }

  else
  {
    v14 = objc_opt_new();
    [v14 setBundleIdentifier:v8];
    v15 = [v11 itemID];
    [v14 setStoreItemIdentifier:v15];

    v16 = [v11 localizedName];
    v17 = v16;
    if (v16)
    {
      [v14 setDisplayName:v16];
    }

    else
    {
      v18 = [v11 itemName];
      [v14 setDisplayName:v18];
    }

    [v14 setIsStoreApp:0];
    [v14 setIsFree:1];
    [v14 setIsUserLicensed:1];
    v6[2](v6, v14, 0);
  }
}

- (id)configurationForBundleIdentifier:(id)a3
{
  v3 = [(DMDiphoneOSAppController *)self _managedDefaultsForBundleIdentifier:a3];
  v4 = [v3 objectForKeyedSubscript:@"com.apple.configuration.managed"];

  return v4;
}

- (BOOL)setConfiguration:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = DMFAppLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"non-nil";
    if (!v7)
    {
      v10 = @"nil";
    }

    *buf = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Set configuration: %{public}@, for bundle identifier: %{public}@", buf, 0x16u);
  }

  v11 = [(DMDiphoneOSAppController *)self _managedDefaultsForBundleIdentifier:v8];
  v12 = [v11 mutableCopy];

  if (!v12)
  {
    v12 = objc_opt_new();
  }

  [v12 setObject:v7 forKeyedSubscript:@"com.apple.configuration.managed"];
  _CFPreferencesWriteManagedDomain();
  v15 = v8;
  v13 = [NSArray arrayWithObjects:&v15 count:1];
  _CFPreferencesManagementStatusChangedForDomains();
  _CFPreferencesPostValuesChangedInDomains();

  return 1;
}

- (void)_withSandboxExtensionForApp:(id)a3 do:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    [v5 UTF8String];
    if (container_create_or_lookup_for_current_user())
    {
      v7 = container_copy_path();
      if (v7)
      {
        v8 = v7;
        v9 = [NSString stringWithUTF8String:v7];
        if (v9)
        {
          free(v8);
          v10 = container_acquire_sandbox_extension();
          v11 = DMFAppLog();
          v12 = v11;
          if (v10)
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v14 = v5;
              v15 = 2114;
              v16 = v9;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "container_acquire_sandbox_extension %{public}@ succeeded for path '%{public}@'", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v14 = v5;
            v15 = 2048;
            v16 = 1;
            v17 = 2114;
            v18 = v9;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "container_acquire_sandbox_extension %{public}@ failed, error %llu, path '%{public}@'", buf, 0x20u);
          }

          v6[2](v6, v9, 1);
          container_free_object();
        }

        else
        {
          v6[2](v6, 0, 1);
          container_free_object();
          free(v8);
        }
      }

      else
      {
        v6[2](v6, 0, 1);
        container_free_object();
      }
    }

    else
    {
      v6[2](v6, 0, 1);
    }
  }
}

- (id)feedbackForBundleIdentifier:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10001A3B4;
  v14 = sub_10001A3C4;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A3CC;
  v7[3] = &unk_1000CE310;
  v4 = a3;
  v8 = v4;
  v9 = &v10;
  [(DMDiphoneOSAppController *)self _withSandboxExtensionForApp:v4 do:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (BOOL)setFeedback:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"non-nil";
    if (!v8)
    {
      v11 = @"nil";
    }

    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set feedback: %{public}@, for bundle identifier: %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v22 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001A6C0;
  v16[3] = &unk_1000CE338;
  v12 = v9;
  v17 = v12;
  v20 = a5;
  v13 = v8;
  v18 = v13;
  v19 = buf;
  [(DMDiphoneOSAppController *)self _withSandboxExtensionForApp:v12 do:v16];
  v14 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v14 & 1;
}

- (id)_managedDefaultsForBundleIdentifier:(id)a3
{
  v3 = _CFPreferencesCopyPathForManagedDomain();
  v4 = [NSDictionary dictionaryWithContentsOfFile:v3];

  return v4;
}

- (void)_applyStoreDictionary:(id)a3 toAppMetadata:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = [v13 objectForKeyedSubscript:ASDManagedLookupBundleID];
  if (v6)
  {
    [v5 setBundleIdentifier:v6];
  }

  v7 = [v13 objectForKeyedSubscript:ASDManagedLookupItemID];
  if (v7)
  {
    [v5 setStoreItemIdentifier:v7];
  }

  v8 = [v13 objectForKeyedSubscript:ASDManagedLookupBundleDisplayName];
  if (v8)
  {
    [v5 setDisplayName:v8];
  }

  v9 = [v13 objectForKeyedSubscript:ASDManagedLookupIsAppFree];
  v10 = v9;
  if (v9)
  {
    [v5 setIsFree:{objc_msgSend(v9, "BOOLValue")}];
  }

  v11 = [v13 objectForKeyedSubscript:ASDManagedLookupIsActiveAccountAppOwner];
  v12 = v11;
  if (v11)
  {
    [v5 setIsUserLicensed:{objc_msgSend(v11, "BOOLValue")}];
  }
}

- (void)_getMetadataForBundleIdentifier:(id)a3 storeItemIdentifier:(id)a4 personaIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = DMFAppLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v27 = v10;
    v28 = 2114;
    v29 = v11;
    v30 = 2114;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Get metadata for bundle identifier: %{public}@, store item identifier: %{public}@, persona: %{public}@", buf, 0x20u);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001AB2C;
  v20[3] = &unk_1000CE388;
  v21 = v10;
  v22 = v11;
  v24 = v12;
  v25 = v13;
  v23 = self;
  v15 = v12;
  v16 = v13;
  v17 = v11;
  v18 = v10;
  v19 = objc_retainBlock(v20);
  [(DMDiphoneOSAppController *)self sendAppRequestWithBundleIdentifier:v18 storeItemIdentifier:v17 personaIdentifier:v15 type:3 skipDownloads:1 completion:v19];
}

- (void)startRedeemingAppWithCode:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001B008;
  v8[3] = &unk_1000CE420;
  v9 = a3;
  v10 = a4;
  v6 = v9;
  v7 = v10;
  [(DMDiphoneOSAppController *)self promptUserToSignInWithCompletion:v8];
}

- (void)cancelAppInstallationWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(DMDiphoneOSAppController *)self jobManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001B3E4;
  v13 = v11[3] = &unk_1000CE1E0;
  v14 = v7;
  v12 = v6;
  v8 = v13;
  v9 = v7;
  v10 = v6;
  [v8 getJobsUsingBlock:v11];
}

- (void)startUninstallingAppWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [BKSTerminationAssertion alloc];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10001B828;
  v16 = &unk_1000CE448;
  v17 = self;
  v18 = v7;
  v19 = v8;
  v20 = a2;
  v10 = v8;
  v11 = v7;
  v12 = [v9 initWithBundleIdentifier:v11 efficacy:3 name:@"com.apple.dmd.remove-foreground-app" withHandler:&v13];
  [(DMDiphoneOSAppController *)self addTerminationAssertion:v12 forBundleIdentifier:v11, v13, v14, v15, v16, v17];
}

- (void)_uninstallAppWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(IXUninstallOptions);
  [v7 setRequestUserConfirmation:0];
  [v7 setWaitForDeletion:0];
  [v7 setIgnoreRemovability:1];
  [v7 setIgnoreRestrictions:1];
  [v7 setIgnoreAppProtection:1];
  v8 = +[UMUserManager sharedManager];
  if ([v8 isMultiUser])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001BB20;
    v15[3] = &unk_1000CE498;
    v9 = &v16;
    v16 = v5;
    v17 = v7;
    v10 = v8;
    v18 = v10;
    v19 = v6;
    v11 = v6;
    [v10 terminateSyncWithCompletionHandler:v15];
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001BC40;
    v13[3] = &unk_1000CE4C0;
    v9 = &v14;
    v14 = v6;
    v12 = v6;
    [IXAppInstallCoordinator uninstallAppWithBundleID:v5 options:v7 completion:v13];
  }
}

- (void)startUpdatingAppForRequest:(id)a3 metadata:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 bundleIdentifier];
  v12 = [(DMDiphoneOSAppController *)self foregroundBundleIdentifiers];
  v13 = [v12 containsObject:v11];

  if (v13)
  {
    v14 = DMFAppLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating foreground app for request: %{public}@, so will take termination assertion", &v19, 0xCu);
    }

    v15 = +[DMDDeviceController shared];
    v16 = [v15 isInSingleAppMode];
    v17 = [v16 BOOLValue];

    if (v17)
    {
      v18 = DMFAppLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "We will need to restart the app after updating bundle identifier: %{public}@", &v19, 0xCu);
      }

      [(DMDiphoneOSAppController *)self setSingleAppModeBundleIndentifier:v11];
    }
  }

  [(DMDiphoneOSAppController *)self _startUpdatingAppForRequest:v8 metadata:v9 completion:v10];
}

- (void)didCancelUpdatingForLifeCycle:(id)a3
{
  v5.receiver = self;
  v5.super_class = DMDiphoneOSAppController;
  v4 = a3;
  [(DMDAppController *)&v5 didCancelUpdatingForLifeCycle:v4];
  [(DMDiphoneOSAppController *)self _updateEndedForLifeCycle:v4, v5.receiver, v5.super_class];
}

- (void)didFailUpdatingForLifeCycle:(id)a3
{
  v5.receiver = self;
  v5.super_class = DMDiphoneOSAppController;
  v4 = a3;
  [(DMDAppController *)&v5 didFailUpdatingForLifeCycle:v4];
  [(DMDiphoneOSAppController *)self _updateEndedForLifeCycle:v4, v5.receiver, v5.super_class];
}

- (void)didFinishUpdatingForLifeCycle:(id)a3
{
  v5.receiver = self;
  v5.super_class = DMDiphoneOSAppController;
  v4 = a3;
  [(DMDAppController *)&v5 didFinishUpdatingForLifeCycle:v4];
  [(DMDiphoneOSAppController *)self _updateEndedForLifeCycle:v4, v5.receiver, v5.super_class];
}

- (void)_startUpdatingAppForRequest:(id)a3 metadata:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 lifeCycle];
  [v10 addObserver:self];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10001C204;
  v22[3] = &unk_1000CDE60;
  v22[4] = self;
  v11 = v10;
  v23 = v11;
  v12 = v9;
  v24 = v12;
  v13 = objc_retainBlock(v22);
  v14 = [v8 manifestURL];
  if (v14)
  {
    v15 = DMFAppLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 host];
      *buf = 138543362;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Start updating enterprise app with manifest URL from: %{public}@", buf, 0xCu);
    }

    [(DMDiphoneOSAppController *)self startInstallingEnterpriseAppWithManifestURL:v14 completion:v13];
  }

  else
  {
    v17 = objc_opt_new();
    [v17 setLicenseType:3];
    v18 = [v8 bundleIdentifier];
    [v17 setBundleIdentifier:v18];

    v19 = [v8 storeItemIdentifier];
    [v17 setStoreItemIdentifier:v19];

    v20 = [v8 personaIdentifier];
    [v17 setPersonaIdentifier:v20];

    v21 = DMFAppLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = v8;
      v27 = 2114;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Start updating non-enterprise app for request: %{public}@, new install request: %{public}@", buf, 0x16u);
    }

    [(DMDiphoneOSAppController *)self startInstallingNonEnterpriseAppForRequest:v17 completion:v13];
  }
}

- (void)_updateEndedForLifeCycle:(id)a3
{
  v4 = [a3 bundleIdentifier];
  v5 = DMFAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DMF registered app update complete for bundle identifier: %{public}@", buf, 0xCu);
  }

  v6 = [(DMDiphoneOSAppController *)self singleAppModeBundleIndentifier];
  v7 = [v4 isEqualToString:v6];

  v8 = DMFAppLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 138543362;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DMF restarting app with bundle identifier: %{public}@...", buf, 0xCu);
    }

    v14[0] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
    v14[1] = FBSOpenApplicationOptionKeyUnlockDevice;
    v15[0] = &__kCFBooleanTrue;
    v15[1] = &__kCFBooleanTrue;
    v14[2] = FBSOpenApplicationOptionKeyLaunchOrigin;
    v15[2] = @"com.apple.dmd.restart-single-app-mode";
    v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
    v8 = [FBSOpenApplicationOptions optionsWithDictionary:v10];

    v11 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001C4F0;
    v12[3] = &unk_1000CE4E8;
    v13 = v4;
    [v11 openApplication:v13 withOptions:v8 completion:v12];

    [(DMDiphoneOSAppController *)self setSingleAppModeBundleIndentifier:0];
  }

  else if (v9)
  {
    *buf = 138543362;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DMF ignoring app restart for bundle identifier: %{public}@", buf, 0xCu);
  }
}

@end