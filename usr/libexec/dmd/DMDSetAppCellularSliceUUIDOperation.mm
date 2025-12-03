@interface DMDSetAppCellularSliceUUIDOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request bundleIdentifier:(id)identifier;
- (void)waitUntilFinished;
@end

@implementation DMDSetAppCellularSliceUUIDOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDSetAppCellularSliceUUIDOperation;
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
  uUIDString = [requestCopy UUIDString];

  v13 = 0;
  v10 = [v8 setCellularSliceUUIDString:uUIDString forBundleIdentifier:identifierCopy error:&v13];

  v11 = v13;
  if (v10)
  {
    v12 = +[DMDAppController sharedController];
    [v12 sendManagedAppsChangedNotification];

    [(DMDSetAppCellularSliceUUIDOperation *)self endOperationWithResultObject:0];
  }

  else
  {
    [(DMDSetAppCellularSliceUUIDOperation *)self endOperationWithError:v11];
  }
}

@end