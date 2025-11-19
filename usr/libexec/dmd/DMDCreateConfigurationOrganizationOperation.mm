@interface DMDCreateConfigurationOrganizationOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDCreateConfigurationOrganizationOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDCreateConfigurationOrganizationOperation;
  [(DMDCreateConfigurationOrganizationOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(DMDTaskOperation *)self configurationEngine];

  if (v5)
  {
    v6 = [(DMDTaskOperation *)self configurationEngine];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100034030;
    v7[3] = &unk_1000CEE68;
    v7[4] = self;
    [v6 handleCreateConfigurationOrganizationRequest:v4 completionHandler:v7];
  }

  else
  {
    v6 = DMFErrorWithCodeAndUserInfo();
    [(DMDCreateConfigurationOrganizationOperation *)self endOperationWithError:v6];
  }
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___DMDCreateConfigurationOrganizationOperation;
  if (!objc_msgSendSuper2(&v14, "validateRequest:error:", v6, a4))
  {
    goto LABEL_13;
  }

  v7 = [v6 organizationIdentifier];

  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    v19 = DMFInvalidParameterErrorKey;
    v20 = @"request.organizationIdentifier";
    v10 = &v20;
    v11 = &v19;
    goto LABEL_12;
  }

  v8 = [v6 organizationDisplayName];

  if (!v8)
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    v17 = DMFInvalidParameterErrorKey;
    v18 = @"request.organizationDisplayName";
    v10 = &v18;
    v11 = &v17;
    goto LABEL_12;
  }

  v9 = [v6 organizationType];

  if (!v9)
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    v15 = DMFInvalidParameterErrorKey;
    v16 = @"request.organizationType";
    v10 = &v16;
    v11 = &v15;
LABEL_12:
    v12 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:1];
    *a4 = DMFErrorWithCodeAndUserInfo();

LABEL_13:
    LOBYTE(a4) = 0;
    goto LABEL_14;
  }

  LOBYTE(a4) = 1;
LABEL_14:

  return a4;
}

@end