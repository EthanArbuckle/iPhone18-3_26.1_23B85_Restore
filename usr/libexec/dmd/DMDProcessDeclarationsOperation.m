@interface DMDProcessDeclarationsOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
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

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(DMDTaskOperation *)self configurationEngine];

  if (v5)
  {
    v6 = [(DMDTaskOperation *)self configurationEngine];
    v7 = [v4 organizationIdentifier];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100067188;
    v8[3] = &unk_1000CEE68;
    v8[4] = self;
    [v6 processDeclarationsForOrganizationWithIdentifier:v7 completionHandler:v8];
  }

  else
  {
    v6 = DMFErrorWithCodeAndUserInfo();
    [(DMDProcessDeclarationsOperation *)self endOperationWithError:v6];
  }
}

@end