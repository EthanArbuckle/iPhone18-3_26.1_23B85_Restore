@interface DMDScheduleOSUpdateOperation
+ (id)whitelistedClassesForRequest;
- (void)endOperationWithWrongProductKey:(id)a3 action:(unint64_t)a4;
- (void)runWithRequest:(id)a3;
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

- (void)endOperationWithWrongProductKey:(id)a3 action:(unint64_t)a4
{
  v6 = a3;
  v7 = [DMFScheduleOSUpdateResultObject alloc];
  v8 = DMFErrorWithCodeAndUserInfo();
  v9 = [v7 initWithAction:a4 productKey:v6 error:v8];

  [(DMDScheduleOSUpdateOperation *)self endOperationWithResultObject:v9];
}

- (void)runWithRequest:(id)a3
{
  v5 = a3;
  v6 = DMFOSUpdateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "schedule-os-update starting, request = %{public}@", buf, 0xCu);
  }

  v7 = +[DMDSUManagerInstallTask sharedInstallTask];
  v36 = 0;
  v8 = [v7 currentStatusWithError:&v36];
  v9 = v36;
  v10 = [v5 action];
  if (v10 == 2)
  {
    v10 = [v8 isDownloadComplete];
  }

  v11 = [v5 productKey];
  v12 = [objc_opt_class() productKeyFromStatus:v8];
  v13 = [objc_opt_class() defaultProductKey];
  if (!v11 || ([v11 isEqualToString:v13] & 1) != 0 || !v12 || (objc_msgSend(v11, "isEqualToString:", v12) & 1) != 0)
  {
    v32 = [v5 productVersion];
    v14 = [v5 useDelay];
    v30 = self;
    v31 = v8;
    if (v10 == 1)
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

    else if (v10)
    {
      v24 = +[NSAssertionHandler currentHandler];
      v25 = self;
      v21 = v24;
      [v24 handleFailureInMethod:a2 object:v25 file:@"DMDScheduleOSUpdateOperation.m" lineNumber:122 description:@"unexpected action value"];
      v17 = 0;
      v18 = v9;
    }

    else
    {
      v15 = v14;
      v16 = DMFOSUpdateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "schedule-os-update download action", buf, 2u);
      }

      v35 = v9;
      v17 = [v7 availableUpdateWithVersion:v32 useDelay:v15 error:&v35];
      v18 = v35;

      if (v17)
      {
        v19 = [v17 productKey];

        v34 = v18;
        v20 = [v7 startDownloadWithError:&v34];
        v21 = v34;

        if ((v20 & 1) == 0)
        {
          v12 = v19;
          v9 = v21;
          goto LABEL_26;
        }

        v18 = 0;
        v12 = v19;
      }

      else
      {
        v21 = v12;
        v12 = v11;
      }
    }

    v9 = v18;
LABEL_26:
    v27 = [[DMFScheduleOSUpdateResultObject alloc] initWithAction:v10 productKey:v12 error:v9];
    [(DMDScheduleOSUpdateOperation *)v30 endOperationWithResultObject:v27];
    v28 = DMFOSUpdateLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v38 = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "schedule-os-update done, result = %{public}@", buf, 0xCu);
    }

    v8 = v31;
    v13 = v29;
    goto LABEL_29;
  }

  v26 = DMFOSUpdateLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "schedule-os-update wrong product key", buf, 2u);
  }

  [(DMDScheduleOSUpdateOperation *)self endOperationWithWrongProductKey:v11 action:v10];
LABEL_29:
}

@end