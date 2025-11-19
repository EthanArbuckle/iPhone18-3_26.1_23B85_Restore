@interface DMDRemoveProvisioningProfileOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
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

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___DMDRemoveProvisioningProfileOperation;
  if (!objc_msgSendSuper2(&v13, "validateRequest:error:", v6, a4))
  {
    goto LABEL_10;
  }

  v7 = [v6 profileIdentifier];

  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    v16 = DMFInvalidParameterErrorKey;
    v17 = @"request.profileIdentifier";
    v9 = &v17;
    v10 = &v16;
    goto LABEL_9;
  }

  v8 = [v6 managingProfileIdentifier];

  if (!v8)
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    v14 = DMFInvalidParameterErrorKey;
    v15 = @"request.managingProfileIdentifier";
    v9 = &v15;
    v10 = &v14;
LABEL_9:
    v11 = [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:1];
    *a4 = DMFErrorWithCodeAndUserInfo();

LABEL_10:
    LOBYTE(a4) = 0;
    goto LABEL_11;
  }

  LOBYTE(a4) = 1;
LABEL_11:

  return a4;
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 profileIdentifier];
  v6 = +[MCDependencyReader sharedReader];
  v7 = [v4 managingProfileIdentifier];

  v8 = [v6 dependentsOfParent:v7 inDomain:kMCDMManagingProfileToProvisioningProfileKey];

  if ([v8 containsObject:v5])
  {
    v9 = +[MCProfileConnection sharedConnection];
    v14 = 0;
    v10 = [v9 removeProvisioningProfileWithUUID:v5 outError:&v14];
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