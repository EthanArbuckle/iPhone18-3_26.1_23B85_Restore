@interface DMDRemoveOSUpdateOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDRemoveOSUpdateOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDRemoveOSUpdateOperation;
  [(DMDRemoveOSUpdateOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)request
{
  v4 = DMFOSUpdateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "remove-os-update starting", buf, 2u);
  }

  v5 = +[DMDSUManagerInstallTask sharedInstallTask];
  v13 = 0;
  v6 = [v5 removeUpdateWithError:&v13];
  v7 = v13;
  v8 = DMFOSUpdateLog();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "remove-os-update successful", v12, 2u);
    }

    [(DMDRemoveOSUpdateOperation *)self endOperationWithResultObject:0];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000875A0(v7, v9);
    }

    [(DMDRemoveOSUpdateOperation *)self endOperationWithError:v7];
  }

  v10 = DMFOSUpdateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "remove-os-update done", v11, 2u);
  }
}

@end