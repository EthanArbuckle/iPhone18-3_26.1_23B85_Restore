@interface DMDSetPasscodeLockGracePeriodOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
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

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[MCProfileConnection sharedConnection];
  [v4 seconds];
  v7 = v6;

  v8 = [NSNumber numberWithDouble:v7];
  [v5 setValue:v8 forSetting:MCFeaturePasscodeLockGraceTime];

  [(DMDSetPasscodeLockGracePeriodOperation *)self endOperationWithResultObject:0];
}

@end