@interface DMDFetchOSUpdateStatusOperation
+ (id)whitelistedClassesForRequest;
- (unint64_t)_downloadStatusAndPercentComplete:(double *)complete fromStatus:(id)status;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDFetchOSUpdateStatusOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchOSUpdateStatusOperation;
  [(DMDFetchOSUpdateStatusOperation *)&v2 waitUntilFinished];
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
    LOWORD(v15[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "fetch-os-update-status starting", v15, 2u);
  }

  v5 = +[DMDSUManagerInstallTask sharedInstallTask];
  v16 = 0;
  v6 = [v5 currentStatusWithError:&v16];
  v7 = v16;
  if (v6)
  {
    v8 = [objc_opt_class() productKeyOrDefaultFromStatus:v6];
    v15[0] = 0.0;
    v9 = [(DMDFetchOSUpdateStatusOperation *)self _downloadStatusAndPercentComplete:v15 fromStatus:v6];
    v10 = [DMFFetchOSUpdateStatusResultObject alloc];
    v11 = [v10 initWithProductKey:v8 status:v9 downloadPercentComplete:v15[0]];
    [(DMDFetchOSUpdateStatusOperation *)self endOperationWithResultObject:v11];

    v12 = DMFOSUpdateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "fetch-os-update-status done", v15, 2u);
    }
  }

  else
  {
    v13 = DMFOSUpdateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10008446C(v7, v13);
    }

    if (v7)
    {
      v17 = NSUnderlyingErrorKey;
      v18 = v7;
      v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v14 = DMFErrorWithCodeAndUserInfo();
      [(DMDFetchOSUpdateStatusOperation *)self endOperationWithError:v14];
    }

    else
    {
      v12 = DMFErrorWithCodeAndUserInfo();
      [(DMDFetchOSUpdateStatusOperation *)self endOperationWithError:v12];
    }
  }
}

- (unint64_t)_downloadStatusAndPercentComplete:(double *)complete fromStatus:(id)status
{
  statusCopy = status;
  v6 = 1.0;
  if ([statusCopy isInstalling])
  {
    v7 = 2;
  }

  else if ([statusCopy isDownloadComplete])
  {
    v7 = 0;
  }

  else if ([statusCopy isDownloading])
  {
    [statusCopy downloadPercentComplete];
    v6 = v8;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v6 = 0.0;
  }

  *complete = v6;

  return v7;
}

@end