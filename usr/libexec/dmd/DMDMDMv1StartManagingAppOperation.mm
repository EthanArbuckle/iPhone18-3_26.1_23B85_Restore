@interface DMDMDMv1StartManagingAppOperation
+ (id)whitelistedClassesForRequest;
- (void)_attemptSINFSwap;
- (void)_endOperationWithBundleIdentifier:(id)identifier;
- (void)_manageApp;
- (void)_promptIfPermittedByPolicyToManageApp:(id)app appDisplayName:(id)name originator:(id)originator completion:(id)completion;
- (void)_promptToManageApp:(id)app appDisplayName:(id)name originator:(id)originator completion:(id)completion;
- (void)_runWithRequest:(id)request;
- (void)_setRemovability:(id)removability;
- (void)_setState:(unint64_t)state forBundleIdentifier:(id)identifier;
- (void)_setTapToPayScreenLock:(id)lock;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDMDMv1StartManagingAppOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDMDMv1StartManagingAppOperation;
  [(DMDAppOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v5 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  v5 = +[DMDAppController sharedController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100059438;
  v7[3] = &unk_1000CF2C0;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  [v5 getMetadataForAppRequest:v6 completion:v7];
}

- (void)_runWithRequest:(id)request
{
  requestCopy = request;
  metadata = [(DMDMDMv1StartManagingAppOperation *)self metadata];
  bundleIdentifier = [metadata bundleIdentifier];
  displayName = [metadata displayName];
  v8 = +[DMDAppController sharedController];
  v9 = [v8 stateForBundleIdentifier:bundleIdentifier];

  if (v9 == 17)
  {
    v10 = DMFErrorWithCodeAndUserInfo();
    [(DMDMDMv1StartManagingAppOperation *)self endOperationWithError:v10];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"%@ (%@)", displayName, bundleIdentifier];
    v11 = +[MDMCloudConfiguration sharedConfiguration];
    isSupervised = [v11 isSupervised];

    internal = [requestCopy internal];
    bOOLValue = [internal BOOLValue];

    if ((isSupervised & 1) != 0 || bOOLValue)
    {
      v17 = DMFAppLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = @"NO";
        if (isSupervised)
        {
          v19 = @"YES";
        }

        else
        {
          v19 = @"NO";
        }

        *buf = 138543874;
        v25 = v10;
        v26 = 2114;
        v27 = v19;
        if (bOOLValue)
        {
          v18 = @"YES";
        }

        v28 = 2114;
        v29 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Request to manage app %{public}@ fast-tracked, supervised: %{public}@ internal: %{public}@", buf, 0x20u);
      }

      [(DMDMDMv1StartManagingAppOperation *)self _manageApp];
      [(DMDMDMv1StartManagingAppOperation *)self _endOperationWithBundleIdentifier:bundleIdentifier];
    }

    else
    {
      [(DMDMDMv1StartManagingAppOperation *)self _setState:17 forBundleIdentifier:bundleIdentifier];
      originator = [requestCopy originator];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100059784;
      v20[3] = &unk_1000CFA80;
      v21 = v10;
      selfCopy = self;
      v16 = bundleIdentifier;
      v23 = v16;
      [(DMDMDMv1StartManagingAppOperation *)self _promptIfPermittedByPolicyToManageApp:v16 appDisplayName:displayName originator:originator completion:v20];

      [(DMDMDMv1StartManagingAppOperation *)self _endOperationWithBundleIdentifier:v16];
    }
  }
}

- (void)_promptIfPermittedByPolicyToManageApp:(id)app appDisplayName:(id)name originator:(id)originator completion:(id)completion
{
  appCopy = app;
  nameCopy = name;
  originatorCopy = originator;
  completionCopy = completion;
  v14 = objc_opt_new();
  [v14 readTimestampsFromFile];
  if ([v14 isPromptAllowedRightNow])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000599F8;
    v15[3] = &unk_1000CFAA8;
    v17 = completionCopy;
    v16 = v14;
    [(DMDMDMv1StartManagingAppOperation *)self _promptToManageApp:appCopy appDisplayName:nameCopy originator:originatorCopy completion:v15];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 2);
  }
}

- (void)_promptToManageApp:(id)app appDisplayName:(id)name originator:(id)originator completion:(id)completion
{
  completionCopy = completion;
  originatorCopy = originator;
  nameCopy = name;
  v10 = objc_opt_new();
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"Would you like to let %@ take management of the app “%@”? Your app data will become managed." value:&stru_1000D0428 table:@"DMFNotifications"];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"App Management Change" value:&stru_1000D0428 table:@"DMFNotifications"];
  [v10 setHeader:v14];

  nameCopy = [NSString stringWithFormat:v12, originatorCopy, nameCopy];

  [v10 setMessage:nameCopy];
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"Manage" value:&stru_1000D0428 table:@"DMFNotifications"];
  [v10 setDefaultButtonTitle:v17];

  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"Cancel" value:&stru_1000D0428 table:@"DMFNotifications"];
  [v10 setAlternateButtonTitle:v19];

  v20 = +[DMDUserNotificationController sharedController];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100059CD8;
  v23[3] = &unk_1000CFAD0;
  v24 = completionCopy;
  v21 = completionCopy;
  [v20 showNotification:v10 completion:v23];
}

- (void)_manageApp
{
  [(DMDMDMv1StartManagingAppOperation *)self _attemptSINFSwap];
  v3 = DMFAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    metadata = [(DMDMDMv1StartManagingAppOperation *)self metadata];
    bundleIdentifier = [metadata bundleIdentifier];
    *buf = 138543362;
    v43 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Managing app: %{public}@", buf, 0xCu);
  }

  metadata2 = [(DMDMDMv1StartManagingAppOperation *)self metadata];
  lifeCycle = [metadata2 lifeCycle];
  currentState = [lifeCycle currentState];
  if (currentState && currentState != 8)
  {
    if (currentState != 2)
    {
      v10 = 7;
      goto LABEL_11;
    }

    v9 = DMFAppLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Marking an app in the installing state as managed but uninstalled", buf, 2u);
    }
  }

  v10 = 8;
LABEL_11:
  v11 = +[DMDAppController sharedController];
  [lifeCycle addObserver:v11];

  metadata3 = [(DMDMDMv1StartManagingAppOperation *)self metadata];
  bundleIdentifier2 = [metadata3 bundleIdentifier];
  [(DMDMDMv1StartManagingAppOperation *)self _setState:v10 forBundleIdentifier:bundleIdentifier2];

  request = [(DMDMDMv1StartManagingAppOperation *)self request];
  v38 = +[DMDAppController sharedController];
  vPNUUIDString = [request VPNUUIDString];
  cellularSliceUUIDString = [request cellularSliceUUIDString];
  contentFilterUUIDString = [request contentFilterUUIDString];
  dNSProxyUUIDString = [request DNSProxyUUIDString];
  relayUUIDString = [request relayUUIDString];
  associatedDomains = [request associatedDomains];
  associatedDomainsEnableDirectDownloads = [request associatedDomainsEnableDirectDownloads];
  allowUserToHide = [request allowUserToHide];
  allowUserToLock = [request allowUserToLock];
  configuration = [request configuration];
  v36 = lifeCycle;
  managementOptions = [request managementOptions];
  sourceIdentifier = [request sourceIdentifier];
  [metadata2 bundleIdentifier];
  v21 = v35 = metadata2;
  [v38 setVPNUUIDString:vPNUUIDString cellularSliceUUIDString:cellularSliceUUIDString contentFilterUUIDString:contentFilterUUIDString DNSProxyUUIDString:dNSProxyUUIDString relayUUIDString:relayUUIDString associatedDomains:associatedDomains enableDirectDownloads:associatedDomainsEnableDirectDownloads allowUserToHide:allowUserToHide allowUserToLock:allowUserToLock configuration:configuration options:managementOptions sourceIdentifier:sourceIdentifier forBundleIdentifier:v21];

  removable = [request removable];
  [(DMDMDMv1StartManagingAppOperation *)self _setRemovability:removable];

  tapToPayScreenLock = [request tapToPayScreenLock];
  [(DMDMDMv1StartManagingAppOperation *)self _setTapToPayScreenLock:tapToPayScreenLock];

  v24 = +[DMDAppController sharedController];
  [v24 sendManagedAppsChangedNotification];

  v25 = +[DMDAppController sharedController];
  personaIdentifier = [request personaIdentifier];
  bundleIdentifier3 = [v35 bundleIdentifier];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10005A170;
  v39[3] = &unk_1000CDBD0;
  v40 = v35;
  v41 = request;
  v28 = request;
  v29 = v35;
  [v25 updateBundleIDPersonaIDMappingForPersonaID:personaIdentifier addingBundleID:bundleIdentifier3 completionHandler:v39];
}

- (void)_setState:(unint64_t)state forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = +[DMDAppController sharedController];
  v10 = 0;
  v7 = [v6 setState:state forBundleIdentifier:identifierCopy error:&v10];
  v8 = v10;

  if ((v7 & 1) == 0)
  {
    v9 = DMFAppLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000844E4(state, identifierCopy, v9);
    }
  }
}

- (void)_attemptSINFSwap
{
  metadata = [(DMDMDMv1StartManagingAppOperation *)self metadata];
  storeItemIdentifier = [metadata storeItemIdentifier];

  if (storeItemIdentifier)
  {
    request = [(DMDMDMv1StartManagingAppOperation *)self request];
    v5 = +[DMDAppController sharedController];
    personaIdentifier = [request personaIdentifier];
    [v5 sendAppRequestWithBundleIdentifier:0 storeItemIdentifier:storeItemIdentifier personaIdentifier:personaIdentifier type:2 skipDownloads:1 completion:&stru_1000CFB10];
  }
}

- (void)_endOperationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[DMDAppController sharedController];
  v6 = [v5 stateForBundleIdentifier:identifierCopy];

  v7 = [[DMFMDMv1InstallAppResultObject alloc] initWithBundleIdentifier:identifierCopy state:v6];
  [(DMDMDMv1StartManagingAppOperation *)self endOperationWithResultObject:v7];
}

- (void)_setRemovability:(id)removability
{
  removabilityCopy = removability;
  v5 = +[DMDAppController sharedController];
  metadata = [(DMDMDMv1StartManagingAppOperation *)self metadata];
  bundleIdentifier = [metadata bundleIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005A5B0;
  v9[3] = &unk_1000CEE68;
  v10 = removabilityCopy;
  v8 = removabilityCopy;
  [v5 setRemovability:v8 forBundleIdentifier:bundleIdentifier completion:v9];
}

- (void)_setTapToPayScreenLock:(id)lock
{
  lockCopy = lock;
  v5 = +[DMDAppController sharedController];
  metadata = [(DMDMDMv1StartManagingAppOperation *)self metadata];
  bundleIdentifier = [metadata bundleIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005A6FC;
  v9[3] = &unk_1000CEE68;
  v10 = lockCopy;
  v8 = lockCopy;
  [v5 setTapToPayScreenLock:v8 forBundleIdentifier:bundleIdentifier completion:v9];
}

@end