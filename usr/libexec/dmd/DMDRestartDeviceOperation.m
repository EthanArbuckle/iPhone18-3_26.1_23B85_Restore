@interface DMDRestartDeviceOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDRestartDeviceOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDRestartDeviceOperation;
  [(DMDRestartDeviceOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3
{
  v4 = [[FBSShutdownOptions alloc] initWithReason:@"dmd restart device"];
  [v4 setRebootType:1];
  v3 = +[FBSSystemService sharedService];
  [v3 shutdownWithOptions:v4];
}

@end