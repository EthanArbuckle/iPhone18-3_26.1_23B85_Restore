@interface DMDTriggerDiagnosticsOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDTriggerDiagnosticsOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDTriggerDiagnosticsOperation;
  [(DMDTriggerDiagnosticsOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)request
{
  v4 = [DMDPowerAssertion assertionForOperation:@"DMDTriggerDiagnosticsOperation: run"];
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007478C;
  v7[3] = &unk_1000CDC38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end