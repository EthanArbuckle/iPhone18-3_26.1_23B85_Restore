@interface DMDRefreshCellularPlansOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (id)invalidResponseError:(id)error;
- (void)runWithRequest:(id)request;
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

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___DMDRefreshCellularPlansOperation;
  if (!objc_msgSendSuper2(&v14, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_7;
  }

  eSIMServerURL = [requestCopy eSIMServerURL];
  if (!eSIMServerURL)
  {
    goto LABEL_5;
  }

  v8 = eSIMServerURL;
  eSIMServerURL2 = [requestCopy eSIMServerURL];
  scheme = [eSIMServerURL2 scheme];
  v11 = [&off_1000D73E8 containsObject:scheme];

  if ((v11 & 1) == 0)
  {
LABEL_5:
    if (!error)
    {
      goto LABEL_8;
    }

    v15 = DMFInvalidParameterErrorKey;
    v16 = @"request.eSIMServerURL";
    v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    *error = DMFErrorWithCodeAndUserInfo();

LABEL_7:
    LOBYTE(error) = 0;
    goto LABEL_8;
  }

  LOBYTE(error) = 1;
LABEL_8:

  return error;
}

- (id)invalidResponseError:(id)error
{
  v7 = DMFCoreTelephonyErrorResponseKey;
  errorCopy = error;
  errorCopy2 = error;
  v4 = [NSDictionary dictionaryWithObjects:&errorCopy forKeys:&v7 count:1];

  v5 = DMFErrorWithCodeAndUserInfo();

  return v5;
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    eSIMServerURL = [requestCopy eSIMServerURL];
    *buf = 136315394;
    v11 = "[DMDRefreshCellularPlansOperation(iOS) runWithRequest:]";
    v12 = 2112;
    v13 = eSIMServerURL;
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
    v9 = requestCopy;
    v6 = v8;
    [v6 fetchCachedVinylInfoWithCompletion:v7];
  }

  else
  {
    [(DMDTaskOperation *)self endOperationWithDMFErrorCode:202];
  }
}

@end