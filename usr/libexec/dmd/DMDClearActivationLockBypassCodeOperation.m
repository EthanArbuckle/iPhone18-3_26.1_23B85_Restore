@interface DMDClearActivationLockBypassCodeOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDClearActivationLockBypassCodeOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDClearActivationLockBypassCodeOperation;
  [(DMDClearActivationLockBypassCodeOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3
{
  +[MCCrypto clearStoredActivationLockBypassCode];

  [(DMDClearActivationLockBypassCodeOperation *)self endOperationWithResultObject:0];
}

@end