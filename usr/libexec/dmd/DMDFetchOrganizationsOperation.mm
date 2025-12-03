@interface DMDFetchOrganizationsOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDFetchOrganizationsOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchOrganizationsOperation;
  [(DMDFetchOrganizationsOperation *)&v2 waitUntilFinished];
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
    v7[2] = sub_100047440;
    v7[3] = &unk_1000CF270;
    v7[4] = self;
    [configurationEngine2 handleFetchConfigurationOrganizationsRequest:requestCopy completionHandler:v7];
  }

  else
  {
    configurationEngine2 = DMFErrorWithCodeAndUserInfo();
    [(DMDFetchOrganizationsOperation *)self endOperationWithError:configurationEngine2];
  }
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___DMDFetchOrganizationsOperation;
  return objc_msgSendSuper2(&v5, "validateRequest:error:", request, error);
}

@end