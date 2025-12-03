@interface DMDFetchAvailableOSUpdatesOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDFetchAvailableOSUpdatesOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchAvailableOSUpdatesOperation;
  [(DMDFetchAvailableOSUpdatesOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  v6 = DMFOSUpdateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "fetch-available-os-updates starting", buf, 2u);
  }

  v7 = +[DMDSUManagerInstallTask sharedInstallTask];
  productVersion = [requestCopy productVersion];
  useDelay = [requestCopy useDelay];

  v10 = DMFOSUpdateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = @"default";
    v12 = @"NO";
    if (productVersion)
    {
      v11 = productVersion;
    }

    if (useDelay)
    {
      v12 = @"YES";
    }

    *buf = 138412546;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "fetch-available-os-updates: product version = %@, use delay = %@", buf, 0x16u);
  }

  v18 = 0;
  v13 = [v7 availableUpdateWithVersion:productVersion useDelay:useDelay error:&v18];
  v14 = v18;
  v15 = v14;
  if (v13)
  {
    v16 = [[DMFFetchAvailableOSUpdatesResultObject alloc] initWithUpdate:v13];
    [(DMDFetchAvailableOSUpdatesOperation *)self endOperationWithResultObject:v16];
  }

  else
  {
    if (!v14)
    {
      sub_100084408(a2, self);
    }

    [(DMDFetchAvailableOSUpdatesOperation *)self endOperationWithError:v15];
  }

  v17 = DMFOSUpdateLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "fetch-available-os-updates done", buf, 2u);
  }
}

@end