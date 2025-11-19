@interface DMDSetDeviceNameOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDSetDeviceNameOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDSetDeviceNameOperation;
  [(DMDSetDeviceNameOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___DMDSetDeviceNameOperation;
  if (!objc_msgSendSuper2(&v13, "validateRequest:error:", v6, a4))
  {
    goto LABEL_7;
  }

  v7 = [v6 name];
  if (!v7 || (v8 = v7, [v6 name], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v8, !v10))
  {
    if (!a4)
    {
      goto LABEL_8;
    }

    v14 = DMFInvalidParameterErrorKey;
    v15 = @"request.name";
    v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    *a4 = DMFErrorWithCodeAndUserInfo();

LABEL_7:
    LOBYTE(a4) = 0;
    goto LABEL_8;
  }

  LOBYTE(a4) = 1;
LABEL_8:

  return a4;
}

- (void)runWithRequest:(id)a3
{
  v4 = [a3 name];
  v7 = 0;
  v5 = [DMDLockdownUtilities setDeviceName:v4 outError:&v7];
  v6 = v7;

  if (v5)
  {
    [(DMDSetDeviceNameOperation *)self endOperationWithResultObject:0];
  }

  else
  {
    [(DMDSetDeviceNameOperation *)self endOperationWithError:v6];
  }
}

@end