@interface DMDInstallProvisioningProfileOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
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

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___DMDInstallProvisioningProfileOperation;
  if (!objc_msgSendSuper2(&v10, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_6;
  }

  profileData = [requestCopy profileData];

  if (!profileData)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v11 = DMFInvalidParameterErrorKey;
    v12 = @"request.profileData";
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
  v5 = +[MCProfileConnection sharedConnection];
  profileData = [requestCopy profileData];
  managingProfileIdentifier = [requestCopy managingProfileIdentifier];

  v11 = 0;
  LODWORD(requestCopy) = [v5 installProvisioningProfileData:profileData managingProfileIdentifier:managingProfileIdentifier outError:&v11];
  v8 = v11;

  if (requestCopy)
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