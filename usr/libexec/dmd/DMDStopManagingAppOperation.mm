@interface DMDStopManagingAppOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3 bundleIdentifier:(id)a4;
- (void)waitUntilFinished;
@end

@implementation DMDStopManagingAppOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDStopManagingAppOperation;
  [(DMDAppOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[DMDAppController sharedController];
  v9 = [v8 managementInformationForBundleIdentifier:v7];

  v10 = +[DMDAppController sharedController];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006FC88;
  v14[3] = &unk_1000CFE70;
  v15 = v7;
  v16 = self;
  v17 = v9;
  v18 = v6;
  v11 = v6;
  v12 = v9;
  v13 = v7;
  [v10 setRemovability:0 forBundleIdentifier:v13 completion:v14];
}

@end