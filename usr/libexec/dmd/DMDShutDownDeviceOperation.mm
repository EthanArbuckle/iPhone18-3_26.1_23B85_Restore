@interface DMDShutDownDeviceOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDShutDownDeviceOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDShutDownDeviceOperation;
  [(DMDShutDownDeviceOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)request
{
  v4 = [[FBSShutdownOptions alloc] initWithReason:@"dmd shut down device"];
  [v4 setRebootType:0];
  v3 = +[FBSSystemService sharedService];
  [v3 shutdownWithOptions:v4];
}

@end