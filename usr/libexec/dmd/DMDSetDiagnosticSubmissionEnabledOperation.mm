@interface DMDSetDiagnosticSubmissionEnabledOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
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

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[MCProfileConnection sharedConnection];
  v6 = [v4 enabled];

  [v5 setBoolValue:v6 forSetting:MCFeatureDiagnosticsSubmissionAllowed];

  [(DMDSetDiagnosticSubmissionEnabledOperation *)self endOperationWithResultObject:0];
}

@end