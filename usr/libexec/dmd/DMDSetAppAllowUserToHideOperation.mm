@interface DMDSetAppAllowUserToHideOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request bundleIdentifier:(id)identifier;
- (void)waitUntilFinished;
@end

@implementation DMDSetAppAllowUserToHideOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDSetAppAllowUserToHideOperation;
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
  allowUserToHide = [requestCopy allowUserToHide];

  v13 = 0;
  v10 = [v8 setAllowUserToHide:allowUserToHide forBundleIdentifier:identifierCopy error:&v13];

  v11 = v13;
  if (v10)
  {
    [(DMDSetAppAllowUserToHideOperation *)self endOperationWithResultObject:0];
  }

  else
  {
    v12 = +[DMDAppController sharedController];
    [v12 sendManagedAppsChangedNotification];

    [(DMDSetAppAllowUserToHideOperation *)self endOperationWithError:v11];
  }
}

@end