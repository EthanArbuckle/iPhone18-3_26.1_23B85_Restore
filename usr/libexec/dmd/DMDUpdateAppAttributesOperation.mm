@interface DMDUpdateAppAttributesOperation
+ (id)whitelistedClassesForRequest;
- (void)_startUpdateAppAttributesForRequest:(id)request metadata:(id)metadata;
- (void)endOperationWithError:(id)error;
- (void)endOperationWithResultObject:(id)object;
- (void)runWithRequest:(id)request;
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

- (void)endOperationWithResultObject:(id)object
{
  objectCopy = object;
  if (([(DMDUpdateAppAttributesOperation *)self isFinished]& 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = DMDUpdateAppAttributesOperation;
    [(DMDUpdateAppAttributesOperation *)&v5 endOperationWithResultObject:objectCopy];
  }
}

- (void)endOperationWithError:(id)error
{
  errorCopy = error;
  if (([(DMDUpdateAppAttributesOperation *)self isFinished]& 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = DMDUpdateAppAttributesOperation;
    [(DMDUpdateAppAttributesOperation *)&v5 endOperationWithError:errorCopy];
  }
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  sourceIdentifier = [requestCopy sourceIdentifier];
  v5 = [sourceIdentifier isEqualToString:DMFAppSourceDeclarativeManagement];

  if (v5)
  {
    v6 = objc_opt_new();
    bundleIdentifier = [requestCopy bundleIdentifier];
    [v6 setBundleIdentifier:bundleIdentifier];

    [(DMDUpdateAppAttributesOperation *)self _startUpdateAppAttributesForRequest:requestCopy metadata:v6];
  }

  else
  {
    v6 = DMFErrorWithCodeAndUserInfo();
    [(DMDUpdateAppAttributesOperation *)self endOperationWithError:v6];
  }
}

- (void)_startUpdateAppAttributesForRequest:(id)request metadata:(id)metadata
{
  requestCopy = request;
  metadataCopy = metadata;
  bundleIdentifier = [metadataCopy bundleIdentifier];
  bundleIdentifier2 = [metadataCopy bundleIdentifier];
  [requestCopy setBundleIdentifier:bundleIdentifier2];

  storeItemIdentifier = [metadataCopy storeItemIdentifier];

  [requestCopy setStoreItemIdentifier:storeItemIdentifier];
  v9 = DMFAppLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = requestCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Start updating app attributes for request: %{public}@", buf, 0xCu);
  }

  v10 = +[DMDAppController sharedController];
  vPNUUIDString = [requestCopy VPNUUIDString];
  cellularSliceUUIDString = [requestCopy cellularSliceUUIDString];
  contentFilterUUIDString = [requestCopy contentFilterUUIDString];
  dNSProxyUUIDString = [requestCopy DNSProxyUUIDString];
  relayUUIDString = [requestCopy relayUUIDString];
  associatedDomains = [requestCopy associatedDomains];
  associatedDomainsEnableDirectDownloads = [requestCopy associatedDomainsEnableDirectDownloads];
  allowUserToHide = [requestCopy allowUserToHide];
  allowUserToLock = [requestCopy allowUserToLock];
  managementOptions = [requestCopy managementOptions];
  sourceIdentifier = [requestCopy sourceIdentifier];
  [v10 setVPNUUIDString:vPNUUIDString cellularSliceUUIDString:cellularSliceUUIDString contentFilterUUIDString:contentFilterUUIDString DNSProxyUUIDString:dNSProxyUUIDString relayUUIDString:relayUUIDString associatedDomains:associatedDomains enableDirectDownloads:associatedDomainsEnableDirectDownloads allowUserToHide:allowUserToHide allowUserToLock:allowUserToLock configuration:0 options:managementOptions sourceIdentifier:sourceIdentifier forBundleIdentifier:bundleIdentifier];

  v17 = +[DMDAppController sharedController];
  removable = [requestCopy removable];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100035FB0;
  v33[3] = &unk_1000CEE68;
  v19 = requestCopy;
  v34 = v19;
  [v17 setRemovability:removable forBundleIdentifier:bundleIdentifier completion:v33];

  v20 = +[DMDAppController sharedController];
  tapToPayScreenLock = [v19 tapToPayScreenLock];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100036018;
  v31[3] = &unk_1000CEE68;
  v32 = v19;
  v22 = v19;
  [v20 setTapToPayScreenLock:tapToPayScreenLock forBundleIdentifier:bundleIdentifier completion:v31];

  v23 = +[DMDAppController sharedController];
  [v23 sendManagedAppsChangedNotification];

  [(DMDUpdateAppAttributesOperation *)self endOperationWithResultObject:0];
}

@end