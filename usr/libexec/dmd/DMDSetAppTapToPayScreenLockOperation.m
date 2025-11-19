@interface DMDSetAppTapToPayScreenLockOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3 bundleIdentifier:(id)a4;
- (void)waitUntilFinished;
@end

@implementation DMDSetAppTapToPayScreenLockOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDSetAppTapToPayScreenLockOperation;
  [(DMDAppOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[DMDAppController sharedController];
  v9 = [v7 tapToPayScreenLock];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006DF44;
  v10[3] = &unk_1000CEE68;
  v10[4] = self;
  [v8 setTapToPayScreenLock:v9 forBundleIdentifier:v6 completion:v10];
}

@end