@interface DMDRemoveProvisioningProfileOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDRemoveProvisioningProfileOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDRemoveProvisioningProfileOperation;
  [(DMDRemoveProvisioningProfileOperation *)&v2 waitUntilFinished];
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
  v13.super_class = &OBJC_METACLASS___DMDRemoveProvisioningProfileOperation;
  if (!objc_msgSendSuper2(&v13, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_10;
  }

  profileIdentifier = [requestCopy profileIdentifier];

  if (!profileIdentifier)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v16 = DMFInvalidParameterErrorKey;
    v17 = @"request.profileIdentifier";
    v9 = &v17;
    v10 = &v16;
    goto LABEL_9;
  }

  managingProfileIdentifier = [requestCopy managingProfileIdentifier];

  if (!managingProfileIdentifier)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v14 = DMFInvalidParameterErrorKey;
    v15 = @"request.managingProfileIdentifier";
    v9 = &v15;
    v10 = &v14;
LABEL_9:
    v11 = [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:1];
    *error = DMFErrorWithCodeAndUserInfo();

LABEL_10:
    LOBYTE(error) = 0;
    goto LABEL_11;
  }

  LOBYTE(error) = 1;
LABEL_11:

  return error;
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  profileIdentifier = [requestCopy profileIdentifier];
  v6 = +[MCDependencyReader sharedReader];
  managingProfileIdentifier = [requestCopy managingProfileIdentifier];

  v8 = [v6 dependentsOfParent:managingProfileIdentifier inDomain:kMCDMManagingProfileToProvisioningProfileKey];

  if ([v8 containsObject:profileIdentifier])
  {
    v9 = +[MCProfileConnection sharedConnection];
    v14 = 0;
    v10 = [v9 removeProvisioningProfileWithUUID:profileIdentifier outError:&v14];
    v11 = v14;

    if (v10)
    {
      [(DMDRemoveProvisioningProfileOperation *)self endOperationWithResultObject:0];
    }

    else
    {
      if (v11)
      {
        v15 = NSUnderlyingErrorKey;
        v16 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v13 = DMFErrorWithCodeAndUserInfo();
        [(DMDRemoveProvisioningProfileOperation *)self endOperationWithError:v13];
      }

      else
      {
        v12 = DMFErrorWithCodeAndUserInfo();
        [(DMDRemoveProvisioningProfileOperation *)self endOperationWithError:v12];
      }
    }
  }

  else
  {
    [(DMDTaskOperation *)self endOperationWithDMFErrorCode:1201];
  }
}

@end