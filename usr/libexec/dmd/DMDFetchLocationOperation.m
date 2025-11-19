@interface DMDFetchLocationOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
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

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___DMDFetchLocationOperation;
  if (!objc_msgSendSuper2(&v10, "validateRequest:error:", v6, a4))
  {
    goto LABEL_6;
  }

  v7 = [v6 originator];

  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_7;
    }

    v11 = DMFInvalidParameterErrorKey;
    v12 = @"request.originator";
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *a4 = DMFErrorWithCodeAndUserInfo();

LABEL_6:
    LOBYTE(a4) = 0;
    goto LABEL_7;
  }

  LOBYTE(a4) = 1;
LABEL_7:

  return a4;
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[FMDFMIPManager sharedInstance];
  v6 = [v5 isManagedLostModeActive];

  if (v6)
  {
    v7 = +[DMDLostDeviceLocationManager sharedManager];
    v8 = [v4 originator];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100046E90;
    v9[3] = &unk_1000CF248;
    v9[4] = self;
    [v7 getCurrentLocationForOriginator:v8 completion:v9];
  }

  else
  {
    [(DMDTaskOperation *)self endOperationWithDMFErrorCode:601];
  }
}

@end