@interface DMDProcessStatusOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDProcessStatusOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDProcessStatusOperation;
  [(DMDProcessStatusOperation *)&v2 waitUntilFinished];
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
    v8[2] = sub_100067334;
    v8[3] = &unk_1000CEE68;
    v8[4] = self;
    [configurationEngine2 processStatusForOrganizationWithIdentifier:organizationIdentifier completionHandler:v8];
  }

  else
  {
    configurationEngine2 = DMFErrorWithCodeAndUserInfo();
    [(DMDProcessStatusOperation *)self endOperationWithError:configurationEngine2];
  }
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___DMDProcessStatusOperation;
  return objc_msgSendSuper2(&v5, "validateRequest:error:", request, error);
}

@end