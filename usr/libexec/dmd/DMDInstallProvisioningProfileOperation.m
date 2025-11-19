@interface DMDInstallProvisioningProfileOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDInstallProvisioningProfileOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDInstallProvisioningProfileOperation;
  [(DMDInstallProvisioningProfileOperation *)&v2 waitUntilFinished];
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
  v10.super_class = &OBJC_METACLASS___DMDInstallProvisioningProfileOperation;
  if (!objc_msgSendSuper2(&v10, "validateRequest:error:", v6, a4))
  {
    goto LABEL_6;
  }

  v7 = [v6 profileData];

  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_7;
    }

    v11 = DMFInvalidParameterErrorKey;
    v12 = @"request.profileData";
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
  v5 = +[MCProfileConnection sharedConnection];
  v6 = [v4 profileData];
  v7 = [v4 managingProfileIdentifier];

  v11 = 0;
  LODWORD(v4) = [v5 installProvisioningProfileData:v6 managingProfileIdentifier:v7 outError:&v11];
  v8 = v11;

  if (v4)
  {
    [(DMDInstallProvisioningProfileOperation *)self endOperationWithResultObject:0];
  }

  else
  {
    if (v8)
    {
      v12 = NSUnderlyingErrorKey;
      v13 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v10 = DMFErrorWithCodeAndUserInfo();
      [(DMDInstallProvisioningProfileOperation *)self endOperationWithError:v10];
    }

    else
    {
      v9 = DMFErrorWithCodeAndUserInfo();
      [(DMDInstallProvisioningProfileOperation *)self endOperationWithError:v9];
    }
  }
}

@end