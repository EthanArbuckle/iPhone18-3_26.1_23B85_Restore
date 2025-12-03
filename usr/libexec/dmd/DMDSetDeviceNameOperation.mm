@interface DMDSetDeviceNameOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
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

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___DMDSetDeviceNameOperation;
  if (!objc_msgSendSuper2(&v13, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_7;
  }

  name = [requestCopy name];
  if (!name || (v8 = name, [requestCopy name], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v8, !v10))
  {
    if (!error)
    {
      goto LABEL_8;
    }

    v14 = DMFInvalidParameterErrorKey;
    v15 = @"request.name";
    v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    *error = DMFErrorWithCodeAndUserInfo();

LABEL_7:
    LOBYTE(error) = 0;
    goto LABEL_8;
  }

  LOBYTE(error) = 1;
LABEL_8:

  return error;
}

- (void)runWithRequest:(id)request
{
  name = [request name];
  v7 = 0;
  v5 = [DMDLockdownUtilities setDeviceName:name outError:&v7];
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