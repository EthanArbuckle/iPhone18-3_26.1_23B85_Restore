@interface DMDRefreshCellularPlansOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (id)invalidResponseError:(id)a3;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDRefreshCellularPlansOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDRefreshCellularPlansOperation;
  [(DMDRefreshCellularPlansOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___DMDRefreshCellularPlansOperation;
  if (!objc_msgSendSuper2(&v14, "validateRequest:error:", v6, a4))
  {
    goto LABEL_7;
  }

  v7 = [v6 eSIMServerURL];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = [v6 eSIMServerURL];
  v10 = [v9 scheme];
  v11 = [&off_1000D73E8 containsObject:v10];

  if ((v11 & 1) == 0)
  {
LABEL_5:
    if (!a4)
    {
      goto LABEL_8;
    }

    v15 = DMFInvalidParameterErrorKey;
    v16 = @"request.eSIMServerURL";
    v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    *a4 = DMFErrorWithCodeAndUserInfo();

LABEL_7:
    LOBYTE(a4) = 0;
    goto LABEL_8;
  }

  LOBYTE(a4) = 1;
LABEL_8:

  return a4;
}

- (id)invalidResponseError:(id)a3
{
  v7 = DMFCoreTelephonyErrorResponseKey;
  v8 = a3;
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  v5 = DMFErrorWithCodeAndUserInfo();

  return v5;
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v4 eSIMServerURL];
    *buf = 136315394;
    v11 = "[DMDRefreshCellularPlansOperation(iOS) runWithRequest:]";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s with URL: %@", buf, 0x16u);
  }

  if (+[DMDMobileGestalt hasCellularDataCapability])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000677AC;
    v7[3] = &unk_1000CFD90;
    v7[4] = self;
    v8 = objc_opt_new();
    v9 = v4;
    v6 = v8;
    [v6 fetchCachedVinylInfoWithCompletion:v7];
  }

  else
  {
    [(DMDTaskOperation *)self endOperationWithDMFErrorCode:202];
  }
}

@end