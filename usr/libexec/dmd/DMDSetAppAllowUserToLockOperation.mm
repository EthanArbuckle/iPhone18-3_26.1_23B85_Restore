@interface DMDSetAppAllowUserToLockOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request bundleIdentifier:(id)identifier;
- (void)waitUntilFinished;
@end

@implementation DMDSetAppAllowUserToLockOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDSetAppAllowUserToLockOperation;
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
  allowUserToLock = [requestCopy allowUserToLock];

  v13 = 0;
  v10 = [v8 setAllowUserToLock:allowUserToLock forBundleIdentifier:identifierCopy error:&v13];

  v11 = v13;
  if (v10)
  {
    [(DMDSetAppAllowUserToLockOperation *)self endOperationWithResultObject:0];
  }

  else
  {
    v12 = +[DMDAppController sharedController];
    [v12 sendManagedAppsChangedNotification];

    [(DMDSetAppAllowUserToLockOperation *)self endOperationWithError:v11];
  }
}

@end