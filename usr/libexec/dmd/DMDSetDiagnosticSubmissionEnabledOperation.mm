@interface DMDSetDiagnosticSubmissionEnabledOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDSetDiagnosticSubmissionEnabledOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDSetDiagnosticSubmissionEnabledOperation;
  [(DMDSetDiagnosticSubmissionEnabledOperation *)&v2 waitUntilFinished];
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
  enabled = [requestCopy enabled];

  [v5 setBoolValue:enabled forSetting:MCFeatureDiagnosticsSubmissionAllowed];

  [(DMDSetDiagnosticSubmissionEnabledOperation *)self endOperationWithResultObject:0];
}

@end