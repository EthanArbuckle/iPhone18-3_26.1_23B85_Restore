@interface DMDValidateApplicationsOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDValidateApplicationsOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDValidateApplicationsOperation;
  [(DMDValidateApplicationsOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[MCProfileConnection sharedConnection];
  v6 = [v4 bundleIdentifiers];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000795F4;
  v7[3] = &unk_1000CEE68;
  v7[4] = self;
  [v5 validateAppBundleIDs:v6 completion:v7];
}

@end