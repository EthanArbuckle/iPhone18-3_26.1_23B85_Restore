@interface DMDSetPasscodeLockGracePeriodOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDSetPasscodeLockGracePeriodOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDSetPasscodeLockGracePeriodOperation;
  [(DMDSetPasscodeLockGracePeriodOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  v5 = +[MCProfileConnection sharedConnection];
  [requestCopy seconds];
  v7 = v6;

  v8 = [NSNumber numberWithDouble:v7];
  [v5 setValue:v8 forSetting:MCFeaturePasscodeLockGraceTime];

  [(DMDSetPasscodeLockGracePeriodOperation *)self endOperationWithResultObject:0];
}

@end