@interface DMDUpdateAppAttributesOperation
+ (id)whitelistedClassesForRequest;
- (void)_startUpdateAppAttributesForRequest:(id)a3 metadata:(id)a4;
- (void)endOperationWithError:(id)a3;
- (void)endOperationWithResultObject:(id)a3;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDUpdateAppAttributesOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDUpdateAppAttributesOperation;
  [(DMDAppOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v5 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (void)endOperationWithResultObject:(id)a3
{
  v4 = a3;
  if (([(DMDUpdateAppAttributesOperation *)self isFinished]& 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = DMDUpdateAppAttributesOperation;
    [(DMDUpdateAppAttributesOperation *)&v5 endOperationWithResultObject:v4];
  }
}

- (void)endOperationWithError:(id)a3
{
  v4 = a3;
  if (([(DMDUpdateAppAttributesOperation *)self isFinished]& 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = DMDUpdateAppAttributesOperation;
    [(DMDUpdateAppAttributesOperation *)&v5 endOperationWithError:v4];
  }
}

- (void)runWithRequest:(id)a3
{
  v8 = a3;
  v4 = [v8 sourceIdentifier];
  v5 = [v4 isEqualToString:DMFAppSourceDeclarativeManagement];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [v8 bundleIdentifier];
    [v6 setBundleIdentifier:v7];

    [(DMDUpdateAppAttributesOperation *)self _startUpdateAppAttributesForRequest:v8 metadata:v6];
  }

  else
  {
    v6 = DMFErrorWithCodeAndUserInfo();
    [(DMDUpdateAppAttributesOperation *)self endOperationWithError:v6];
  }
}

- (void)_startUpdateAppAttributesForRequest:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  v30 = [v6 bundleIdentifier];
  v7 = [v6 bundleIdentifier];
  [v5 setBundleIdentifier:v7];

  v8 = [v6 storeItemIdentifier];

  [v5 setStoreItemIdentifier:v8];
  v9 = DMFAppLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Start updating app attributes for request: %{public}@", buf, 0xCu);
  }

  v10 = +[DMDAppController sharedController];
  v27 = [v5 VPNUUIDString];
  v24 = [v5 cellularSliceUUIDString];
  v28 = [v5 contentFilterUUIDString];
  v11 = [v5 DNSProxyUUIDString];
  v26 = [v5 relayUUIDString];
  v25 = [v5 associatedDomains];
  v12 = [v5 associatedDomainsEnableDirectDownloads];
  v13 = [v5 allowUserToHide];
  v14 = [v5 allowUserToLock];
  v15 = [v5 managementOptions];
  v16 = [v5 sourceIdentifier];
  [v10 setVPNUUIDString:v27 cellularSliceUUIDString:v24 contentFilterUUIDString:v28 DNSProxyUUIDString:v11 relayUUIDString:v26 associatedDomains:v25 enableDirectDownloads:v12 allowUserToHide:v13 allowUserToLock:v14 configuration:0 options:v15 sourceIdentifier:v16 forBundleIdentifier:v30];

  v17 = +[DMDAppController sharedController];
  v18 = [v5 removable];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100035FB0;
  v33[3] = &unk_1000CEE68;
  v19 = v5;
  v34 = v19;
  [v17 setRemovability:v18 forBundleIdentifier:v30 completion:v33];

  v20 = +[DMDAppController sharedController];
  v21 = [v19 tapToPayScreenLock];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100036018;
  v31[3] = &unk_1000CEE68;
  v32 = v19;
  v22 = v19;
  [v20 setTapToPayScreenLock:v21 forBundleIdentifier:v30 completion:v31];

  v23 = +[DMDAppController sharedController];
  [v23 sendManagedAppsChangedNotification];

  [(DMDUpdateAppAttributesOperation *)self endOperationWithResultObject:0];
}

@end