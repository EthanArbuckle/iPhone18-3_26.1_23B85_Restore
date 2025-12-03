@interface DMDiphoneOSAppController
+ (id)_appStoreAccountIdentifierForPersona:(id)persona;
+ (id)_appleAccountForPersona:(id)persona;
+ (id)changeTypeAsString:(int64_t)string;
- (ASDJobManager)jobManager;
- (ASDUpdatesService)updatesService;
- (BOOL)setConfiguration:(id)configuration forBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)setFeedback:(id)feedback forBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)userIsSignedIn;
- (BOOL)writeManagementInformationToDiskWithError:(id *)error;
- (id)_allPropertyKeys;
- (id)_managedDefaultsForBundleIdentifier:(id)identifier;
- (id)configurationForBundleIdentifier:(id)identifier;
- (id)feedbackForBundleIdentifier:(id)identifier;
- (id)initPrivate;
- (unint64_t)appTypeFromProxy:(id)proxy;
- (void)_applyStoreDictionary:(id)dictionary toAppMetadata:(id)metadata;
- (void)_downloadAppForRequest:(id)request type:(int64_t)type completion:(id)completion;
- (void)_getMetadataForBundleIdentifier:(id)identifier storeItemIdentifier:(id)itemIdentifier personaIdentifier:(id)personaIdentifier completion:(id)completion;
- (void)_installDeviceLicensedAppForRequest:(id)request completion:(id)completion;
- (void)_installUserAppForRequest:(id)request completion:(id)completion;
- (void)_startUpdatingAppForRequest:(id)request metadata:(id)metadata completion:(id)completion;
- (void)_uninstallAppWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)_updateEndedForLifeCycle:(id)cycle;
- (void)_updateForegroundBundleIdentifiers;
- (void)_withSandboxExtensionForApp:(id)app do:(id)do;
- (void)addTerminationAssertion:(id)assertion forBundleIdentifier:(id)identifier;
- (void)cancelAppInstallationWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)didCancelUpdatingForLifeCycle:(id)cycle;
- (void)didFailUpdatingForLifeCycle:(id)cycle;
- (void)didFinishUpdatingForLifeCycle:(id)cycle;
- (void)getBundleIdentifierForStoreItemIdentifier:(id)identifier personaIdentifier:(id)personaIdentifier completion:(id)completion;
- (void)getMetadataForNonEnterpriseAppRequest:(id)request completion:(id)completion;
- (void)handleFetchRequest:(id)request completion:(id)completion;
- (void)installSystemAppWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)promptUserToSignInWithCompletion:(id)completion;
- (void)removeTerminationAssertionForBundleIdentifier:(id)identifier;
- (void)resumeAppInstallationWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)startInstallingEnterpriseAppWithManifestURL:(id)l completion:(id)completion;
- (void)startInstallingNonEnterpriseAppForRequest:(id)request completion:(id)completion;
- (void)startRedeemingAppWithCode:(id)code completion:(id)completion;
- (void)startUninstallingAppWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)startUpdatingAppForRequest:(id)request metadata:(id)metadata completion:(id)completion;
@end

@implementation DMDiphoneOSAppController

- (void)_updateForegroundBundleIdentifiers
{
  if (!+[NSThread isMainThread])
  {
    sub_10007D9F0();
  }

  layoutMonitor = [(DMDiphoneOSAppController *)self layoutMonitor];
  currentLayout = [layoutMonitor currentLayout];
  elements = [currentLayout elements];

  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [elements count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = elements;
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

        bundleIdentifier = [*(*(&v15 + 1) + 8 * v11) bundleIdentifier];
        if (bundleIdentifier)
        {
          [v6 addObject:bundleIdentifier];
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

- (void)handleFetchRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = objc_opt_new();
  updatesService = [(DMDiphoneOSAppController *)self updatesService];
  [requestCopy storeItemIdentifier];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100016CBC;
  v15[3] = &unk_1000CE120;
  v16 = v8;
  v17 = updatesService;
  v18 = requestCopy;
  v20 = v19 = self;
  v21 = completionCopy;
  v10 = completionCopy;
  v11 = v20;
  v12 = requestCopy;
  v13 = updatesService;
  v14 = v8;
  [v13 getManagedUpdatesWithCompletionBlock:v15];
}

- (unint64_t)appTypeFromProxy:(id)proxy
{
  applicationType = [proxy applicationType];
  if ([applicationType isEqualToString:LSUserApplicationType])
  {
    v4 = 2;
  }

  else
  {
    v4 = [applicationType isEqualToString:LSSystemApplicationType];
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

- (void)startInstallingEnterpriseAppWithManifestURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  v7 = [[ASDExternalManifestRequestOptions alloc] initWithURL:lCopy];

  [v7 setShouldHideUserPrompts:1];
  v8 = [[ASDExternalManifestRequest alloc] initWithOptions:v7];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100017D8C;
  v10[3] = &unk_1000CE168;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 startWithCompletionBlock:v10];
}

- (void)startInstallingNonEnterpriseAppForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  bundleIdentifier = [requestCopy bundleIdentifier];
  v9 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:bundleIdentifier error:0];
  compatibilityObject = [v9 compatibilityObject];
  v11 = compatibilityObject;
  if (v9)
  {
    v12 = compatibilityObject == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    licenseType = [requestCopy licenseType];
    if (licenseType)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100018054;
      v15[3] = &unk_1000CE190;
      v18 = (licenseType & 2) >> 1;
      v15[4] = self;
      v16 = requestCopy;
      v17 = completionCopy;
      [(DMDiphoneOSAppController *)self _installDeviceLicensedAppForRequest:v16 completion:v15];
    }

    else if ((licenseType & 2) != 0)
    {
      [(DMDiphoneOSAppController *)self _installUserAppForRequest:requestCopy completion:completionCopy];
    }

    else
    {
      v14 = DMFErrorWithCodeAndUserInfo();
      (*(completionCopy + 2))(completionCopy, v14);
    }
  }

  else
  {
    [(DMDiphoneOSAppController *)self installSystemAppWithBundleIdentifier:bundleIdentifier completion:completionCopy];
  }
}

- (void)resumeAppInstallationWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = DMFAppLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resume app installation for bundle identifier: %{public}@", buf, 0xCu);
  }

  [(DMDiphoneOSAppController *)self jobManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001822C;
  v14 = v12[3] = &unk_1000CE1E0;
  v15 = completionCopy;
  v13 = identifierCopy;
  v9 = v14;
  v10 = completionCopy;
  v11 = identifierCopy;
  [v9 getJobsUsingBlock:v12];
}

- (void)_installDeviceLicensedAppForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = DMFAppLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Install device licensed app for request: %{public}@", &v9, 0xCu);
  }

  [(DMDiphoneOSAppController *)self _downloadAppForRequest:requestCopy type:2 completion:completionCopy];
}

- (void)_installUserAppForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = DMFAppLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Install user licensed app for request: %{public}@", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001878C;
  v11[3] = &unk_1000CDE60;
  v12 = requestCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  [(DMDiphoneOSAppController *)self _downloadAppForRequest:v10 type:1 completion:v11];
}

- (void)_downloadAppForRequest:(id)request type:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  bundleIdentifier = [requestCopy bundleIdentifier];
  storeItemIdentifier = [requestCopy storeItemIdentifier];
  personaIdentifier = [requestCopy personaIdentifier];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100018990;
  v14[3] = &unk_1000CE208;
  v15 = completionCopy;
  v13 = completionCopy;
  [(DMDiphoneOSAppController *)self sendAppRequestWithBundleIdentifier:bundleIdentifier storeItemIdentifier:storeItemIdentifier personaIdentifier:personaIdentifier type:type skipDownloads:0 completion:v14];
}

- (id)initPrivate
{
  v14.receiver = self;
  v14.super_class = DMDiphoneOSAppController;
  initPrivate = [(DMDAppController *)&v14 initPrivate];
  if (initPrivate)
  {
    objc_initWeak(&location, initPrivate);
    v3 = initPrivate[7];
    initPrivate[7] = &__NSArray0__struct;

    v4 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000021C8;
    v11 = &unk_1000CE230;
    objc_copyWeak(&v12, &location);
    [v4 setTransitionHandler:&v8];
    v5 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v4, v8, v9, v10, v11];
    v6 = initPrivate[6];
    initPrivate[6] = v5;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return initPrivate;
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

- (void)addTerminationAssertion:(id)assertion forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  assertionCopy = assertion;
  v8 = DMFAppLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Add termination assertion for bundle identifier: %{public}@", &v12, 0xCu);
  }

  bundleIDsToAssertions = [(DMDiphoneOSAppController *)self bundleIDsToAssertions];

  if (!bundleIDsToAssertions)
  {
    v10 = objc_opt_new();
    [(DMDiphoneOSAppController *)self setBundleIDsToAssertions:v10];
  }

  bundleIDsToAssertions2 = [(DMDiphoneOSAppController *)self bundleIDsToAssertions];
  [bundleIDsToAssertions2 setObject:assertionCopy forKeyedSubscript:identifierCopy];
}

- (void)removeTerminationAssertionForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = DMFAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remove termination assertion for bundle identifier: %{public}@", &v9, 0xCu);
  }

  bundleIDsToAssertions = [(DMDiphoneOSAppController *)self bundleIDsToAssertions];
  v7 = [bundleIDsToAssertions objectForKeyedSubscript:identifierCopy];
  [v7 invalidate];

  bundleIDsToAssertions2 = [(DMDiphoneOSAppController *)self bundleIDsToAssertions];
  [bundleIDsToAssertions2 setObject:0 forKeyedSubscript:identifierCopy];
}

- (BOOL)userIsSignedIn
{
  v2 = +[SSAccountStore defaultStore];
  activeAccount = [v2 activeAccount];
  v4 = activeAccount != 0;

  return v4;
}

- (void)promptUserToSignInWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[SSAccountStore defaultStore];
  activeAccount = [v4 activeAccount];

  if (activeAccount)
  {
    v6 = [[SSMutableAuthenticationContext alloc] initWithAccount:activeAccount];
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
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 startWithAuthenticateResponseBlock:v10];
}

+ (id)_appStoreAccountIdentifierForPersona:(id)persona
{
  personaCopy = persona;
  if (personaCopy)
  {
    v4 = [objc_opt_class() _appleAccountForPersona:personaCopy];
    v5 = v4;
    if (v4)
    {
      ams_DSID = [v4 ams_DSID];
      v7 = DMFAppLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543618;
        v10 = personaCopy;
        v11 = 2114;
        v12 = ams_DSID;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "persona:%{public}@ -> accountIdentifier:%{public}@", &v9, 0x16u);
      }
    }

    else
    {
      v7 = DMFAppLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543362;
        v10 = personaCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "persona:%{public}@ -> accountIdentifier:<none>", &v9, 0xCu);
      }

      ams_DSID = 0;
    }
  }

  else
  {
    ams_DSID = 0;
  }

  return ams_DSID;
}

+ (id)_appleAccountForPersona:(id)persona
{
  personaCopy = persona;
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
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v13 isEqualToString:personaCopy])
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

+ (id)changeTypeAsString:(int64_t)string
{
  if (string > 5)
  {
    return @"default";
  }

  else
  {
    return off_1000CE3C0[string];
  }
}

- (void)installSystemAppWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (!identifierCopy)
  {
    sub_10007D5EC();
  }

  v7 = DMFAppLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Installing system app with bundle id: %{public}@", buf, 0xCu);
  }

  v8 = [[ASDSystemAppRequest alloc] initWithBundleID:identifierCopy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000199C4;
  v10[3] = &unk_1000CE2E8;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 startWithErrorHandler:v10];
}

- (BOOL)writeManagementInformationToDiskWithError:(id *)error
{
  v6.receiver = self;
  v6.super_class = DMDiphoneOSAppController;
  v3 = [(DMDAppController *)&v6 writeManagementInformationToDiskWithError:error];
  if (v3)
  {
    v4 = +[MCProfileConnection sharedConnection];
    [v4 rereadManagedAppAttributes];
  }

  return v3;
}

- (void)getBundleIdentifierForStoreItemIdentifier:(id)identifier personaIdentifier:(id)personaIdentifier completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100019BDC;
  v9[3] = &unk_1000CDE10;
  completionCopy = completion;
  v8 = completionCopy;
  [(DMDiphoneOSAppController *)self _getMetadataForBundleIdentifier:0 storeItemIdentifier:identifier personaIdentifier:personaIdentifier completion:v9];
}

- (void)getMetadataForNonEnterpriseAppRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v7 = requestCopy;
  if (requestCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10007D658();
    v7 = 0;
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  sub_10007D6CC();
  v7 = requestCopy;
LABEL_3:
  bundleIdentifier = [v7 bundleIdentifier];
  v9 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:bundleIdentifier error:0];
  compatibilityObject = [v9 compatibilityObject];
  v11 = compatibilityObject;
  if (v9)
  {
    v12 = compatibilityObject == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    storeItemIdentifier = [requestCopy storeItemIdentifier];
    personaIdentifier = [requestCopy personaIdentifier];
    [(DMDiphoneOSAppController *)self _getMetadataForBundleIdentifier:bundleIdentifier storeItemIdentifier:storeItemIdentifier personaIdentifier:personaIdentifier completion:completionCopy];
  }

  else
  {
    storeItemIdentifier = objc_opt_new();
    [storeItemIdentifier setBundleIdentifier:bundleIdentifier];
    itemID = [v11 itemID];
    [storeItemIdentifier setStoreItemIdentifier:itemID];

    localizedName = [v11 localizedName];
    v17 = localizedName;
    if (localizedName)
    {
      [storeItemIdentifier setDisplayName:localizedName];
    }

    else
    {
      itemName = [v11 itemName];
      [storeItemIdentifier setDisplayName:itemName];
    }

    [storeItemIdentifier setIsStoreApp:0];
    [storeItemIdentifier setIsFree:1];
    [storeItemIdentifier setIsUserLicensed:1];
    completionCopy[2](completionCopy, storeItemIdentifier, 0);
  }
}

- (id)configurationForBundleIdentifier:(id)identifier
{
  v3 = [(DMDiphoneOSAppController *)self _managedDefaultsForBundleIdentifier:identifier];
  v4 = [v3 objectForKeyedSubscript:@"com.apple.configuration.managed"];

  return v4;
}

- (BOOL)setConfiguration:(id)configuration forBundleIdentifier:(id)identifier error:(id *)error
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  v9 = DMFAppLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"non-nil";
    if (!configurationCopy)
    {
      v10 = @"nil";
    }

    *buf = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Set configuration: %{public}@, for bundle identifier: %{public}@", buf, 0x16u);
  }

  v11 = [(DMDiphoneOSAppController *)self _managedDefaultsForBundleIdentifier:identifierCopy];
  v12 = [v11 mutableCopy];

  if (!v12)
  {
    v12 = objc_opt_new();
  }

  [v12 setObject:configurationCopy forKeyedSubscript:@"com.apple.configuration.managed"];
  _CFPreferencesWriteManagedDomain();
  v15 = identifierCopy;
  v13 = [NSArray arrayWithObjects:&v15 count:1];
  _CFPreferencesManagementStatusChangedForDomains();
  _CFPreferencesPostValuesChangedInDomains();

  return 1;
}

- (void)_withSandboxExtensionForApp:(id)app do:(id)do
{
  appCopy = app;
  doCopy = do;
  if (doCopy)
  {
    [appCopy UTF8String];
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
              v14 = appCopy;
              v15 = 2114;
              v16 = v9;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "container_acquire_sandbox_extension %{public}@ succeeded for path '%{public}@'", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v14 = appCopy;
            v15 = 2048;
            v16 = 1;
            v17 = 2114;
            v18 = v9;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "container_acquire_sandbox_extension %{public}@ failed, error %llu, path '%{public}@'", buf, 0x20u);
          }

          doCopy[2](doCopy, v9, 1);
          container_free_object();
        }

        else
        {
          doCopy[2](doCopy, 0, 1);
          container_free_object();
          free(v8);
        }
      }

      else
      {
        doCopy[2](doCopy, 0, 1);
        container_free_object();
      }
    }

    else
    {
      doCopy[2](doCopy, 0, 1);
    }
  }
}

- (id)feedbackForBundleIdentifier:(id)identifier
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
  identifierCopy = identifier;
  v8 = identifierCopy;
  v9 = &v10;
  [(DMDiphoneOSAppController *)self _withSandboxExtensionForApp:identifierCopy do:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (BOOL)setFeedback:(id)feedback forBundleIdentifier:(id)identifier error:(id *)error
{
  feedbackCopy = feedback;
  identifierCopy = identifier;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"non-nil";
    if (!feedbackCopy)
    {
      v11 = @"nil";
    }

    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2114;
    *&buf[14] = identifierCopy;
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
  v12 = identifierCopy;
  v17 = v12;
  errorCopy = error;
  v13 = feedbackCopy;
  v18 = v13;
  v19 = buf;
  [(DMDiphoneOSAppController *)self _withSandboxExtensionForApp:v12 do:v16];
  v14 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v14 & 1;
}

- (id)_managedDefaultsForBundleIdentifier:(id)identifier
{
  v3 = _CFPreferencesCopyPathForManagedDomain();
  v4 = [NSDictionary dictionaryWithContentsOfFile:v3];

  return v4;
}

- (void)_applyStoreDictionary:(id)dictionary toAppMetadata:(id)metadata
{
  dictionaryCopy = dictionary;
  metadataCopy = metadata;
  v6 = [dictionaryCopy objectForKeyedSubscript:ASDManagedLookupBundleID];
  if (v6)
  {
    [metadataCopy setBundleIdentifier:v6];
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:ASDManagedLookupItemID];
  if (v7)
  {
    [metadataCopy setStoreItemIdentifier:v7];
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:ASDManagedLookupBundleDisplayName];
  if (v8)
  {
    [metadataCopy setDisplayName:v8];
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:ASDManagedLookupIsAppFree];
  v10 = v9;
  if (v9)
  {
    [metadataCopy setIsFree:{objc_msgSend(v9, "BOOLValue")}];
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:ASDManagedLookupIsActiveAccountAppOwner];
  v12 = v11;
  if (v11)
  {
    [metadataCopy setIsUserLicensed:{objc_msgSend(v11, "BOOLValue")}];
  }
}

- (void)_getMetadataForBundleIdentifier:(id)identifier storeItemIdentifier:(id)itemIdentifier personaIdentifier:(id)personaIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  itemIdentifierCopy = itemIdentifier;
  personaIdentifierCopy = personaIdentifier;
  completionCopy = completion;
  v14 = DMFAppLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v27 = identifierCopy;
    v28 = 2114;
    v29 = itemIdentifierCopy;
    v30 = 2114;
    v31 = personaIdentifierCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Get metadata for bundle identifier: %{public}@, store item identifier: %{public}@, persona: %{public}@", buf, 0x20u);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001AB2C;
  v20[3] = &unk_1000CE388;
  v21 = identifierCopy;
  v22 = itemIdentifierCopy;
  v24 = personaIdentifierCopy;
  v25 = completionCopy;
  selfCopy = self;
  v15 = personaIdentifierCopy;
  v16 = completionCopy;
  v17 = itemIdentifierCopy;
  v18 = identifierCopy;
  v19 = objc_retainBlock(v20);
  [(DMDiphoneOSAppController *)self sendAppRequestWithBundleIdentifier:v18 storeItemIdentifier:v17 personaIdentifier:v15 type:3 skipDownloads:1 completion:v19];
}

- (void)startRedeemingAppWithCode:(id)code completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001B008;
  v8[3] = &unk_1000CE420;
  codeCopy = code;
  completionCopy = completion;
  v6 = codeCopy;
  v7 = completionCopy;
  [(DMDiphoneOSAppController *)self promptUserToSignInWithCompletion:v8];
}

- (void)cancelAppInstallationWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  [(DMDiphoneOSAppController *)self jobManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001B3E4;
  v13 = v11[3] = &unk_1000CE1E0;
  v14 = completionCopy;
  v12 = identifierCopy;
  v8 = v13;
  v9 = completionCopy;
  v10 = identifierCopy;
  [v8 getJobsUsingBlock:v11];
}

- (void)startUninstallingAppWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v9 = [BKSTerminationAssertion alloc];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10001B828;
  v16 = &unk_1000CE448;
  selfCopy = self;
  v18 = identifierCopy;
  v19 = completionCopy;
  v20 = a2;
  v10 = completionCopy;
  v11 = identifierCopy;
  v12 = [v9 initWithBundleIdentifier:v11 efficacy:3 name:@"com.apple.dmd.remove-foreground-app" withHandler:&v13];
  [(DMDiphoneOSAppController *)self addTerminationAssertion:v12 forBundleIdentifier:v11, v13, v14, v15, v16, selfCopy];
}

- (void)_uninstallAppWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
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
    v16 = identifierCopy;
    v17 = v7;
    v10 = v8;
    v18 = v10;
    v19 = completionCopy;
    v11 = completionCopy;
    [v10 terminateSyncWithCompletionHandler:v15];
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001BC40;
    v13[3] = &unk_1000CE4C0;
    v9 = &v14;
    v14 = completionCopy;
    v12 = completionCopy;
    [IXAppInstallCoordinator uninstallAppWithBundleID:identifierCopy options:v7 completion:v13];
  }
}

- (void)startUpdatingAppForRequest:(id)request metadata:(id)metadata completion:(id)completion
{
  requestCopy = request;
  metadataCopy = metadata;
  completionCopy = completion;
  bundleIdentifier = [metadataCopy bundleIdentifier];
  foregroundBundleIdentifiers = [(DMDiphoneOSAppController *)self foregroundBundleIdentifiers];
  v13 = [foregroundBundleIdentifiers containsObject:bundleIdentifier];

  if (v13)
  {
    v14 = DMFAppLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = requestCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating foreground app for request: %{public}@, so will take termination assertion", &v19, 0xCu);
    }

    v15 = +[DMDDeviceController shared];
    isInSingleAppMode = [v15 isInSingleAppMode];
    bOOLValue = [isInSingleAppMode BOOLValue];

    if (bOOLValue)
    {
      v18 = DMFAppLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = bundleIdentifier;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "We will need to restart the app after updating bundle identifier: %{public}@", &v19, 0xCu);
      }

      [(DMDiphoneOSAppController *)self setSingleAppModeBundleIndentifier:bundleIdentifier];
    }
  }

  [(DMDiphoneOSAppController *)self _startUpdatingAppForRequest:requestCopy metadata:metadataCopy completion:completionCopy];
}

- (void)didCancelUpdatingForLifeCycle:(id)cycle
{
  v5.receiver = self;
  v5.super_class = DMDiphoneOSAppController;
  cycleCopy = cycle;
  [(DMDAppController *)&v5 didCancelUpdatingForLifeCycle:cycleCopy];
  [(DMDiphoneOSAppController *)self _updateEndedForLifeCycle:cycleCopy, v5.receiver, v5.super_class];
}

- (void)didFailUpdatingForLifeCycle:(id)cycle
{
  v5.receiver = self;
  v5.super_class = DMDiphoneOSAppController;
  cycleCopy = cycle;
  [(DMDAppController *)&v5 didFailUpdatingForLifeCycle:cycleCopy];
  [(DMDiphoneOSAppController *)self _updateEndedForLifeCycle:cycleCopy, v5.receiver, v5.super_class];
}

- (void)didFinishUpdatingForLifeCycle:(id)cycle
{
  v5.receiver = self;
  v5.super_class = DMDiphoneOSAppController;
  cycleCopy = cycle;
  [(DMDAppController *)&v5 didFinishUpdatingForLifeCycle:cycleCopy];
  [(DMDiphoneOSAppController *)self _updateEndedForLifeCycle:cycleCopy, v5.receiver, v5.super_class];
}

- (void)_startUpdatingAppForRequest:(id)request metadata:(id)metadata completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  lifeCycle = [metadata lifeCycle];
  [lifeCycle addObserver:self];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10001C204;
  v22[3] = &unk_1000CDE60;
  v22[4] = self;
  v11 = lifeCycle;
  v23 = v11;
  v12 = completionCopy;
  v24 = v12;
  v13 = objc_retainBlock(v22);
  manifestURL = [requestCopy manifestURL];
  if (manifestURL)
  {
    v15 = DMFAppLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      host = [manifestURL host];
      *buf = 138543362;
      v26 = host;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Start updating enterprise app with manifest URL from: %{public}@", buf, 0xCu);
    }

    [(DMDiphoneOSAppController *)self startInstallingEnterpriseAppWithManifestURL:manifestURL completion:v13];
  }

  else
  {
    v17 = objc_opt_new();
    [v17 setLicenseType:3];
    bundleIdentifier = [requestCopy bundleIdentifier];
    [v17 setBundleIdentifier:bundleIdentifier];

    storeItemIdentifier = [requestCopy storeItemIdentifier];
    [v17 setStoreItemIdentifier:storeItemIdentifier];

    personaIdentifier = [requestCopy personaIdentifier];
    [v17 setPersonaIdentifier:personaIdentifier];

    v21 = DMFAppLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = requestCopy;
      v27 = 2114;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Start updating non-enterprise app for request: %{public}@, new install request: %{public}@", buf, 0x16u);
    }

    [(DMDiphoneOSAppController *)self startInstallingNonEnterpriseAppForRequest:v17 completion:v13];
  }
}

- (void)_updateEndedForLifeCycle:(id)cycle
{
  bundleIdentifier = [cycle bundleIdentifier];
  v5 = DMFAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DMF registered app update complete for bundle identifier: %{public}@", buf, 0xCu);
  }

  singleAppModeBundleIndentifier = [(DMDiphoneOSAppController *)self singleAppModeBundleIndentifier];
  v7 = [bundleIdentifier isEqualToString:singleAppModeBundleIndentifier];

  v8 = DMFAppLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 138543362;
      v17 = bundleIdentifier;
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
    v13 = bundleIdentifier;
    [v11 openApplication:v13 withOptions:v8 completion:v12];

    [(DMDiphoneOSAppController *)self setSingleAppModeBundleIndentifier:0];
  }

  else if (v9)
  {
    *buf = 138543362;
    v17 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DMF ignoring app restart for bundle identifier: %{public}@", buf, 0xCu);
  }
}

@end