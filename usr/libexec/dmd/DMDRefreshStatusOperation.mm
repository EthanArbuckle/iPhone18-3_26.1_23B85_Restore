@interface DMDRefreshStatusOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDRefreshStatusOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDRefreshStatusOperation;
  [(DMDRefreshStatusOperation *)&v2 waitUntilFinished];
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
    organizationIdentifier = [requestCopy organizationIdentifier];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100067CBC;
    v8[3] = &unk_1000CFDB8;
    v8[4] = self;
    [configurationEngine2 refreshStatusForOrganizationWithIdentifier:organizationIdentifier completionHandler:v8];
  }

  else
  {
    configurationEngine2 = DMFErrorWithCodeAndUserInfo();
    [(DMDRefreshStatusOperation *)self endOperationWithError:configurationEngine2];
  }
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___DMDRefreshStatusOperation;
  if (!objc_msgSendSuper2(&v10, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_6;
  }

  organizationIdentifier = [requestCopy organizationIdentifier];

  if (!organizationIdentifier)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v11 = DMFInvalidParameterErrorKey;
    v12 = @"request.organizationIdentifier";
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

@end