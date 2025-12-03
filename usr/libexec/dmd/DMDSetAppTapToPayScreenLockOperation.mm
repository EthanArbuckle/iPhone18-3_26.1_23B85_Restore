@interface DMDSetAppTapToPayScreenLockOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request bundleIdentifier:(id)identifier;
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

- (void)runWithRequest:(id)request bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  requestCopy = request;
  v8 = +[DMDAppController sharedController];
  tapToPayScreenLock = [requestCopy tapToPayScreenLock];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006DF44;
  v10[3] = &unk_1000CEE68;
  v10[4] = self;
  [v8 setTapToPayScreenLock:tapToPayScreenLock forBundleIdentifier:identifierCopy completion:v10];
}

@end