@interface DMDDDMStartManagingAppOperation
+ (id)whitelistedClassesForRequest;
- (void)_endOperationWithBundleIdentifier:(id)a3;
- (void)_manageApp;
- (void)_runWithRequest:(id)a3;
- (void)_setRemovability:(id)a3;
- (void)_setState:(unint64_t)a3 forBundleIdentifier:(id)a4;
- (void)_setTapToPayScreenLock:(id)a3;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDDDMStartManagingAppOperation

- (void)runWithRequest:(id)a3
{
  v10 = a3;
  v4 = [v10 sourceIdentifier];
  v5 = [v4 isEqualToString:DMFAppSourceDeclarativeManagement];

  if (v5)
  {
    v6 = objc_opt_new();
    [(DMDDDMStartManagingAppOperation *)self setMetadata:v6];

    v7 = [v10 bundleIdentifier];
    v8 = [(DMDDDMStartManagingAppOperation *)self metadata];
    [v8 setBundleIdentifier:v7];

    [(DMDDDMStartManagingAppOperation *)self _runWithRequest:v10];
  }

  else
  {
    v9 = DMFErrorWithCodeAndUserInfo();
    [(DMDDDMStartManagingAppOperation *)self endOperationWithError:v9];
  }
}

- (void)_runWithRequest:(id)a3
{
  v4 = [(DMDDDMStartManagingAppOperation *)self metadata];
  v5 = [v4 bundleIdentifier];
  v6 = DMFAppLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Request to manage DDM app %{public}@ ", &v7, 0xCu);
  }

  [(DMDDDMStartManagingAppOperation *)self _manageApp];
  [(DMDDDMStartManagingAppOperation *)self _endOperationWithBundleIdentifier:v5];
}

- (void)_manageApp
{
  v3 = DMFAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(DMDDDMStartManagingAppOperation *)self metadata];
    v5 = [v4 bundleIdentifier];
    *buf = 138543362;
    v43 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Managing DDM app: %{public}@", buf, 0xCu);
  }

  v6 = [(DMDDDMStartManagingAppOperation *)self metadata];
  v7 = [v6 lifeCycle];
  v8 = [v7 currentState];
  if (!v8 || v8 == 8)
  {
    v10 = 8;
  }

  else if (v8 == 2)
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
  [v7 addObserver:v11];

  v12 = [(DMDDDMStartManagingAppOperation *)self metadata];
  v13 = [v12 bundleIdentifier];
  [(DMDDDMStartManagingAppOperation *)self _setState:v10 forBundleIdentifier:v13];

  v14 = [(DMDDDMStartManagingAppOperation *)self request];
  v38 = +[DMDAppController sharedController];
  v32 = [v14 VPNUUIDString];
  v15 = [v14 cellularSliceUUIDString];
  v34 = [v14 contentFilterUUIDString];
  v33 = [v14 DNSProxyUUIDString];
  v16 = [v14 relayUUIDString];
  v31 = [v14 associatedDomains];
  v30 = [v14 associatedDomainsEnableDirectDownloads];
  [v14 allowUserToHide];
  v17 = v35 = self;
  [v14 allowUserToLock];
  v18 = v37 = v7;
  v19 = [v14 managementOptions];
  v20 = [v14 sourceIdentifier];
  [v6 bundleIdentifier];
  v21 = v36 = v6;
  [v38 setVPNUUIDString:v32 cellularSliceUUIDString:v15 contentFilterUUIDString:v34 DNSProxyUUIDString:v33 relayUUIDString:v16 associatedDomains:v31 enableDirectDownloads:v30 allowUserToHide:v17 allowUserToLock:v18 configuration:0 options:v19 sourceIdentifier:v20 forBundleIdentifier:v21];

  v22 = [v14 removable];
  [(DMDDDMStartManagingAppOperation *)v35 _setRemovability:v22];

  v23 = [v14 tapToPayScreenLock];
  [(DMDDDMStartManagingAppOperation *)v35 _setTapToPayScreenLock:v23];

  v24 = +[DMDAppController sharedController];
  [v24 sendManagedAppsChangedNotification];

  v25 = +[DMDAppController sharedController];
  v26 = [v14 personaIdentifier];
  v27 = [v36 bundleIdentifier];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100047E24;
  v39[3] = &unk_1000CDBD0;
  v40 = v36;
  v41 = v14;
  v28 = v14;
  v29 = v36;
  [v25 updateBundleIDPersonaIDMappingForPersonaID:v26 addingBundleID:v27 completionHandler:v39];
}

- (void)_setState:(unint64_t)a3 forBundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = +[DMDAppController sharedController];
  v10 = 0;
  v7 = [v6 setState:a3 forBundleIdentifier:v5 error:&v10];
  v8 = v10;

  if ((v7 & 1) == 0)
  {
    v9 = DMFAppLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000844E4(a3, v5, v9);
    }
  }
}

- (void)_endOperationWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[DMDAppController sharedController];
  v6 = [v5 stateForBundleIdentifier:v4];

  v7 = [[DMFDDMStartManagingAppResultObject alloc] initWithBundleIdentifier:v4 state:v6];
  [(DMDDDMStartManagingAppOperation *)self endOperationWithResultObject:v7];
}

- (void)_setRemovability:(id)a3
{
  v4 = a3;
  v5 = +[DMDAppController sharedController];
  v6 = [(DMDDDMStartManagingAppOperation *)self metadata];
  v7 = [v6 bundleIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100048140;
  v9[3] = &unk_1000CEE68;
  v10 = v4;
  v8 = v4;
  [v5 setRemovability:v8 forBundleIdentifier:v7 completion:v9];
}

- (void)_setTapToPayScreenLock:(id)a3
{
  v4 = a3;
  v5 = +[DMDAppController sharedController];
  v6 = [(DMDDDMStartManagingAppOperation *)self metadata];
  v7 = [v6 bundleIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004828C;
  v9[3] = &unk_1000CEE68;
  v10 = v4;
  v8 = v4;
  [v5 setTapToPayScreenLock:v8 forBundleIdentifier:v7 completion:v9];
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