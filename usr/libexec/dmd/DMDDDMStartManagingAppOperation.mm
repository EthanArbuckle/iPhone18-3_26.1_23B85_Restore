@interface DMDDDMStartManagingAppOperation
+ (id)whitelistedClassesForRequest;
- (void)_endOperationWithBundleIdentifier:(id)identifier;
- (void)_manageApp;
- (void)_runWithRequest:(id)request;
- (void)_setRemovability:(id)removability;
- (void)_setState:(unint64_t)state forBundleIdentifier:(id)identifier;
- (void)_setTapToPayScreenLock:(id)lock;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDDDMStartManagingAppOperation

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  sourceIdentifier = [requestCopy sourceIdentifier];
  v5 = [sourceIdentifier isEqualToString:DMFAppSourceDeclarativeManagement];

  if (v5)
  {
    v6 = objc_opt_new();
    [(DMDDDMStartManagingAppOperation *)self setMetadata:v6];

    bundleIdentifier = [requestCopy bundleIdentifier];
    metadata = [(DMDDDMStartManagingAppOperation *)self metadata];
    [metadata setBundleIdentifier:bundleIdentifier];

    [(DMDDDMStartManagingAppOperation *)self _runWithRequest:requestCopy];
  }

  else
  {
    v9 = DMFErrorWithCodeAndUserInfo();
    [(DMDDDMStartManagingAppOperation *)self endOperationWithError:v9];
  }
}

- (void)_runWithRequest:(id)request
{
  metadata = [(DMDDDMStartManagingAppOperation *)self metadata];
  bundleIdentifier = [metadata bundleIdentifier];
  v6 = DMFAppLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Request to manage DDM app %{public}@ ", &v7, 0xCu);
  }

  [(DMDDDMStartManagingAppOperation *)self _manageApp];
  [(DMDDDMStartManagingAppOperation *)self _endOperationWithBundleIdentifier:bundleIdentifier];
}

- (void)_manageApp
{
  v3 = DMFAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    metadata = [(DMDDDMStartManagingAppOperation *)self metadata];
    bundleIdentifier = [metadata bundleIdentifier];
    *buf = 138543362;
    v43 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Managing DDM app: %{public}@", buf, 0xCu);
  }

  metadata2 = [(DMDDDMStartManagingAppOperation *)self metadata];
  lifeCycle = [metadata2 lifeCycle];
  currentState = [lifeCycle currentState];
  if (!currentState || currentState == 8)
  {
    v10 = 8;
  }

  else if (currentState == 2)
  {
    v9 = DMFAppLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Marking an app in the installing state as installing", buf, 2u);
    }

    v10 = 6;
  }

  else
  {
    v10 = 7;
  }

  v11 = +[DMDAppController sharedController];
  [lifeCycle addObserver:v11];

  metadata3 = [(DMDDDMStartManagingAppOperation *)self metadata];
  bundleIdentifier2 = [metadata3 bundleIdentifier];
  [(DMDDDMStartManagingAppOperation *)self _setState:v10 forBundleIdentifier:bundleIdentifier2];

  request = [(DMDDDMStartManagingAppOperation *)self request];
  v38 = +[DMDAppController sharedController];
  vPNUUIDString = [request VPNUUIDString];
  cellularSliceUUIDString = [request cellularSliceUUIDString];
  contentFilterUUIDString = [request contentFilterUUIDString];
  dNSProxyUUIDString = [request DNSProxyUUIDString];
  relayUUIDString = [request relayUUIDString];
  associatedDomains = [request associatedDomains];
  associatedDomainsEnableDirectDownloads = [request associatedDomainsEnableDirectDownloads];
  [request allowUserToHide];
  v17 = v35 = self;
  [request allowUserToLock];
  v18 = v37 = lifeCycle;
  managementOptions = [request managementOptions];
  sourceIdentifier = [request sourceIdentifier];
  [metadata2 bundleIdentifier];
  v21 = v36 = metadata2;
  [v38 setVPNUUIDString:vPNUUIDString cellularSliceUUIDString:cellularSliceUUIDString contentFilterUUIDString:contentFilterUUIDString DNSProxyUUIDString:dNSProxyUUIDString relayUUIDString:relayUUIDString associatedDomains:associatedDomains enableDirectDownloads:associatedDomainsEnableDirectDownloads allowUserToHide:v17 allowUserToLock:v18 configuration:0 options:managementOptions sourceIdentifier:sourceIdentifier forBundleIdentifier:v21];

  removable = [request removable];
  [(DMDDDMStartManagingAppOperation *)v35 _setRemovability:removable];

  tapToPayScreenLock = [request tapToPayScreenLock];
  [(DMDDDMStartManagingAppOperation *)v35 _setTapToPayScreenLock:tapToPayScreenLock];

  v24 = +[DMDAppController sharedController];
  [v24 sendManagedAppsChangedNotification];

  v25 = +[DMDAppController sharedController];
  personaIdentifier = [request personaIdentifier];
  bundleIdentifier3 = [v36 bundleIdentifier];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100047E24;
  v39[3] = &unk_1000CDBD0;
  v40 = v36;
  v41 = request;
  v28 = request;
  v29 = v36;
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

- (void)_endOperationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[DMDAppController sharedController];
  v6 = [v5 stateForBundleIdentifier:identifierCopy];

  v7 = [[DMFDDMStartManagingAppResultObject alloc] initWithBundleIdentifier:identifierCopy state:v6];
  [(DMDDDMStartManagingAppOperation *)self endOperationWithResultObject:v7];
}

- (void)_setRemovability:(id)removability
{
  removabilityCopy = removability;
  v5 = +[DMDAppController sharedController];
  metadata = [(DMDDDMStartManagingAppOperation *)self metadata];
  bundleIdentifier = [metadata bundleIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100048140;
  v9[3] = &unk_1000CEE68;
  v10 = removabilityCopy;
  v8 = removabilityCopy;
  [v5 setRemovability:v8 forBundleIdentifier:bundleIdentifier completion:v9];
}

- (void)_setTapToPayScreenLock:(id)lock
{
  lockCopy = lock;
  v5 = +[DMDAppController sharedController];
  metadata = [(DMDDDMStartManagingAppOperation *)self metadata];
  bundleIdentifier = [metadata bundleIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004828C;
  v9[3] = &unk_1000CEE68;
  v10 = lockCopy;
  v8 = lockCopy;
  [v5 setTapToPayScreenLock:v8 forBundleIdentifier:bundleIdentifier completion:v9];
}

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDDDMStartManagingAppOperation;
  [(DMDAppOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v5 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

@end