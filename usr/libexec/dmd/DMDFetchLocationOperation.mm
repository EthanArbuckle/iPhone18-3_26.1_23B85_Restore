@interface DMDFetchLocationOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDFetchLocationOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchLocationOperation;
  [(DMDFetchLocationOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___DMDFetchLocationOperation;
  if (!objc_msgSendSuper2(&v10, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_6;
  }

  originator = [requestCopy originator];

  if (!originator)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v11 = DMFInvalidParameterErrorKey;
    v12 = @"request.originator";
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *error = DMFErrorWithCodeAndUserInfo();

LABEL_6:
    LOBYTE(error) = 0;
    goto LABEL_7;
  }

  LOBYTE(error) = 1;
LABEL_7:

  return error;
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  v5 = +[FMDFMIPManager sharedInstance];
  isManagedLostModeActive = [v5 isManagedLostModeActive];

  if (isManagedLostModeActive)
  {
    v7 = +[DMDLostDeviceLocationManager sharedManager];
    originator = [requestCopy originator];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100046E90;
    v9[3] = &unk_1000CF248;
    v9[4] = self;
    [v7 getCurrentLocationForOriginator:originator completion:v9];
  }

  else
  {
    [(DMDTaskOperation *)self endOperationWithDMFErrorCode:601];
  }
}

@end