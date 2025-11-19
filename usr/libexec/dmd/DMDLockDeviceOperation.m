@interface DMDLockDeviceOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
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

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  +[DMDLockUtilities lockDevice];
  v5 = [v4 message];
  v6 = [v4 phoneNumber];

  v7 = +[UMUserManager sharedManager];
  if (([v7 isMultiUser] & 1) == 0)
  {

    if (!(v5 | v6))
    {
      goto LABEL_4;
    }

    v8 = objc_opt_new();
    [v8 setMessage:v5];
    [v8 setPhoneNumber:v6];
    [v8 setLostModeEnabled:1];
    v9 = +[FMDFMIPManager sharedInstance];
    v10 = [v9 enableLostModeWithInfo:v8];

    if (v10)
    {
      if ([v10 code] == 7)
      {
        v11 = self;
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

        v11 = self;
        v12 = 302;
      }

      [(DMDTaskOperation *)v11 endOperationWithDMFErrorCode:v12];
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