@interface DMDDisableLostModeOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDDisableLostModeOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDDisableLostModeOperation;
  [(DMDDisableLostModeOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)request
{
  v4 = +[FMDFMIPManager sharedInstance];
  isManagedLostModeActive = [v4 isManagedLostModeActive];

  v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (isManagedLostModeActive)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Disabling lost mode...", buf, 2u);
    }

    v7 = +[DMDLostDeviceLocationManager sharedManager];
    lastLocationRequestedDateMessage = [v7 lastLocationRequestedDateMessage];
    if (lastLocationRequestedDateMessage)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = lastLocationRequestedDateMessage;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Device was located while in lost mode. Alerting user with message “%{public}@”", buf, 0xCu);
      }
    }

    v9 = +[FMDFMIPManager sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003889C;
    v11[3] = &unk_1000CDBD0;
    v11[4] = self;
    v12 = v7;
    v10 = v7;
    [v9 disableManagedLostModeWithLocatedMessage:lastLocationRequestedDateMessage completion:v11];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Device is not in lost mode. Reporting success regardless.", buf, 2u);
    }

    [(DMDDisableLostModeOperation *)self endOperationWithResultObject:0];
  }
}

@end