@interface DMDCreateConfigurationOrganizationOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
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

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  configurationEngine = [(DMDTaskOperation *)self configurationEngine];

  if (configurationEngine)
  {
    configurationEngine2 = [(DMDTaskOperation *)self configurationEngine];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100034030;
    v7[3] = &unk_1000CEE68;
    v7[4] = self;
    [configurationEngine2 handleCreateConfigurationOrganizationRequest:requestCopy completionHandler:v7];
  }

  else
  {
    configurationEngine2 = DMFErrorWithCodeAndUserInfo();
    [(DMDCreateConfigurationOrganizationOperation *)self endOperationWithError:configurationEngine2];
  }
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___DMDCreateConfigurationOrganizationOperation;
  if (!objc_msgSendSuper2(&v14, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_13;
  }

  organizationIdentifier = [requestCopy organizationIdentifier];

  if (!organizationIdentifier)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v19 = DMFInvalidParameterErrorKey;
    v20 = @"request.organizationIdentifier";
    v10 = &v20;
    v11 = &v19;
    goto LABEL_12;
  }

  organizationDisplayName = [requestCopy organizationDisplayName];

  if (!organizationDisplayName)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v17 = DMFInvalidParameterErrorKey;
    v18 = @"request.organizationDisplayName";
    v10 = &v18;
    v11 = &v17;
    goto LABEL_12;
  }

  organizationType = [requestCopy organizationType];

  if (!organizationType)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v15 = DMFInvalidParameterErrorKey;
    v16 = @"request.organizationType";
    v10 = &v16;
    v11 = &v15;
LABEL_12:
    v12 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:1];
    *error = DMFErrorWithCodeAndUserInfo();

LABEL_13:
    LOBYTE(error) = 0;
    goto LABEL_14;
  }

  LOBYTE(error) = 1;
LABEL_14:

  return error;
}

@end