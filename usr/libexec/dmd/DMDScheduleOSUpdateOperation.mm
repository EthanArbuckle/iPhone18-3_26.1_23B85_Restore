@interface DMDScheduleOSUpdateOperation
+ (id)whitelistedClassesForRequest;
- (void)endOperationWithWrongProductKey:(id)key action:(unint64_t)action;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDScheduleOSUpdateOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDScheduleOSUpdateOperation;
  [(DMDScheduleOSUpdateOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)endOperationWithWrongProductKey:(id)key action:(unint64_t)action
{
  keyCopy = key;
  v7 = [DMFScheduleOSUpdateResultObject alloc];
  v8 = DMFErrorWithCodeAndUserInfo();
  v9 = [v7 initWithAction:action productKey:keyCopy error:v8];

  [(DMDScheduleOSUpdateOperation *)self endOperationWithResultObject:v9];
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  v6 = DMFOSUpdateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = requestCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "schedule-os-update starting, request = %{public}@", buf, 0xCu);
  }

  v7 = +[DMDSUManagerInstallTask sharedInstallTask];
  v36 = 0;
  v8 = [v7 currentStatusWithError:&v36];
  v9 = v36;
  action = [requestCopy action];
  if (action == 2)
  {
    action = [v8 isDownloadComplete];
  }

  productKey = [requestCopy productKey];
  v12 = [objc_opt_class() productKeyFromStatus:v8];
  defaultProductKey = [objc_opt_class() defaultProductKey];
  if (!productKey || ([productKey isEqualToString:defaultProductKey] & 1) != 0 || !v12 || (objc_msgSend(productKey, "isEqualToString:", v12) & 1) != 0)
  {
    productVersion = [requestCopy productVersion];
    useDelay = [requestCopy useDelay];
    selfCopy = self;
    v31 = v8;
    if (action == 1)
    {
      v22 = DMFOSUpdateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "schedule-os-update install action", buf, 2u);
      }

      v33 = v9;
      v23 = [v7 startInstallWithError:&v33];
      v21 = v33;

      v17 = 0;
      v18 = 0;
      v9 = v21;
      if ((v23 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (action)
    {
      v24 = +[NSAssertionHandler currentHandler];
      selfCopy2 = self;
      v21 = v24;
      [v24 handleFailureInMethod:a2 object:selfCopy2 file:@"DMDScheduleOSUpdateOperation.m" lineNumber:122 description:@"unexpected action value"];
      v17 = 0;
      v18 = v9;
    }

    else
    {
      v15 = useDelay;
      v16 = DMFOSUpdateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "schedule-os-update download action", buf, 2u);
      }

      v35 = v9;
      v17 = [v7 availableUpdateWithVersion:productVersion useDelay:v15 error:&v35];
      v18 = v35;

      if (v17)
      {
        productKey2 = [v17 productKey];

        v34 = v18;
        v20 = [v7 startDownloadWithError:&v34];
        v21 = v34;

        if ((v20 & 1) == 0)
        {
          v12 = productKey2;
          v9 = v21;
          goto LABEL_26;
        }

        v18 = 0;
        v12 = productKey2;
      }

      else
      {
        v21 = v12;
        v12 = productKey;
      }
    }

    v9 = v18;
LABEL_26:
    v27 = [[DMFScheduleOSUpdateResultObject alloc] initWithAction:action productKey:v12 error:v9];
    [(DMDScheduleOSUpdateOperation *)selfCopy endOperationWithResultObject:v27];
    v28 = DMFOSUpdateLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v38 = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "schedule-os-update done, result = %{public}@", buf, 0xCu);
    }

    v8 = v31;
    defaultProductKey = v29;
    goto LABEL_29;
  }

  v26 = DMFOSUpdateLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "schedule-os-update wrong product key", buf, 2u);
  }

  [(DMDScheduleOSUpdateOperation *)self endOperationWithWrongProductKey:productKey action:action];
LABEL_29:
}

@end