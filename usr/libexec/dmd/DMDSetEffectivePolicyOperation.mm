@interface DMDSetEffectivePolicyOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDSetEffectivePolicyOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDSetEffectivePolicyOperation;
  [(DMDSetEffectivePolicyOperation *)&v2 waitUntilFinished];
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
  policy = [requestCopy policy];
  type = [requestCopy type];
  identifiers = [requestCopy identifiers];
  priority = [requestCopy priority];
  organizationIdentifier = [requestCopy organizationIdentifier];
  declarationIdentifier = [requestCopy declarationIdentifier];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006DA9C;
  v13[3] = &unk_1000CEE68;
  v13[4] = self;
  [policyPersistence setEffectivePolicy:policy forType:type identifiers:identifiers priority:priority organizationIdentifier:organizationIdentifier declarationIdentifier:declarationIdentifier completionHandler:v13];
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___DMDSetEffectivePolicyOperation;
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

  declarationIdentifier = [requestCopy declarationIdentifier];

  if (!declarationIdentifier)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v17 = DMFInvalidParameterErrorKey;
    v18 = @"request.declarationIdentifier";
    v10 = &v18;
    v11 = &v17;
    goto LABEL_12;
  }

  type = [requestCopy type];

  if (!type)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v15 = DMFInvalidParameterErrorKey;
    v16 = @"request.type";
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