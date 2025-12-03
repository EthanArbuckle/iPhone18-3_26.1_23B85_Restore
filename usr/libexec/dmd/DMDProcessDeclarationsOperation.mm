@interface DMDProcessDeclarationsOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDProcessDeclarationsOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDProcessDeclarationsOperation;
  [(DMDProcessDeclarationsOperation *)&v2 waitUntilFinished];
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
    v8[2] = sub_100067188;
    v8[3] = &unk_1000CEE68;
    v8[4] = self;
    [configurationEngine2 processDeclarationsForOrganizationWithIdentifier:organizationIdentifier completionHandler:v8];
  }

  else
  {
    configurationEngine2 = DMFErrorWithCodeAndUserInfo();
    [(DMDProcessDeclarationsOperation *)self endOperationWithError:configurationEngine2];
  }
}

@end