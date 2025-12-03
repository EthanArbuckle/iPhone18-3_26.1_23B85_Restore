@interface DMDRemoveEffectivePolicyOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDRemoveEffectivePolicyOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDRemoveEffectivePolicyOperation;
  [(DMDRemoveEffectivePolicyOperation *)&v2 waitUntilFinished];
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
  policyPersistence = [configurationEngine policyPersistence];
  organizationIdentifier = [requestCopy organizationIdentifier];
  declarationIdentifier = [requestCopy declarationIdentifier];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100069B54;
  v9[3] = &unk_1000CEE68;
  v9[4] = self;
  [policyPersistence removeEffectivePolicyFromOrganizationIdentifier:organizationIdentifier declarationIdentifier:declarationIdentifier completionHandler:v9];
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___DMDRemoveEffectivePolicyOperation;
  if (!objc_msgSendSuper2(&v13, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_10;
  }

  organizationIdentifier = [requestCopy organizationIdentifier];

  if (!organizationIdentifier)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v16 = DMFInvalidParameterErrorKey;
    v17 = @"request.organizationIdentifier";
    v9 = &v17;
    v10 = &v16;
    goto LABEL_9;
  }

  declarationIdentifier = [requestCopy declarationIdentifier];

  if (!declarationIdentifier)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v14 = DMFInvalidParameterErrorKey;
    v15 = @"request.declarationIdentifier";
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

@end