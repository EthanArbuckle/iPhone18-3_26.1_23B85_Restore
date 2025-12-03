@interface DMDLockDeviceOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDLockDeviceOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDLockDeviceOperation;
  [(DMDLockDeviceOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  +[DMDLockUtilities lockDevice];
  message = [requestCopy message];
  phoneNumber = [requestCopy phoneNumber];

  v7 = +[UMUserManager sharedManager];
  if (([v7 isMultiUser] & 1) == 0)
  {

    if (!(message | phoneNumber))
    {
      goto LABEL_4;
    }

    v8 = objc_opt_new();
    [v8 setMessage:message];
    [v8 setPhoneNumber:phoneNumber];
    [v8 setLostModeEnabled:1];
    v9 = +[FMDFMIPManager sharedInstance];
    v10 = [v9 enableLostModeWithInfo:v8];

    if (v10)
    {
      if ([v10 code] == 7)
      {
        selfCopy2 = self;
        v12 = 301;
      }

      else
      {
        if ([v10 code] != 8)
        {
          v15 = NSUnderlyingErrorKey;
          v16 = v10;
          v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
          v14 = DMFErrorWithCodeAndUserInfo();
          [(DMDLockDeviceOperation *)self endOperationWithError:v14];

          goto LABEL_13;
        }

        selfCopy2 = self;
        v12 = 302;
      }

      [(DMDTaskOperation *)selfCopy2 endOperationWithDMFErrorCode:v12];
    }

    else
    {
      [(DMDLockDeviceOperation *)self endOperationWithResultObject:0];
    }

LABEL_13:

    goto LABEL_14;
  }

LABEL_4:
  [(DMDLockDeviceOperation *)self endOperationWithResultObject:0];
LABEL_14:
}

@end