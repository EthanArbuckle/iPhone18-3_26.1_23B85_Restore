@interface DMDSetAppAssociatedDomainsEnableDirectDownloadsOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3 bundleIdentifier:(id)a4;
- (void)waitUntilFinished;
@end

@implementation DMDSetAppAssociatedDomainsEnableDirectDownloadsOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDSetAppAssociatedDomainsEnableDirectDownloadsOperation;
  [(DMDAppOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[DMDAppController sharedController];
  v9 = [v7 associatedDomainsEnableDirectDownloads];

  v13 = 0;
  v10 = [v8 setAssociatedDomainsEnableDirectDownloads:v9 forBundleIdentifier:v6 error:&v13];

  v11 = v13;
  if (v10)
  {
    v12 = +[DMDAppController sharedController];
    [v12 sendManagedAppsChangedNotification];

    [(DMDSetAppAssociatedDomainsEnableDirectDownloadsOperation *)self endOperationWithResultObject:0];
  }

  else
  {
    [(DMDSetAppAssociatedDomainsEnableDirectDownloadsOperation *)self endOperationWithError:v11];
  }
}

@end