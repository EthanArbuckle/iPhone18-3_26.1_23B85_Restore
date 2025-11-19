@interface DMDSetMaximumResidentUsersOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDSetMaximumResidentUsersOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDSetMaximumResidentUsersOperation;
  [(DMDSetMaximumResidentUsersOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3
{
  v4 = kMCMaximumResidentUsersKey;
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a3 count]);
  v6 = kMCNotBackedUpPreferencesDomain;
  CFPreferencesSetAppValue(v4, v5, kMCNotBackedUpPreferencesDomain);
  CFPreferencesAppSynchronize(v6);

  [(DMDSetMaximumResidentUsersOperation *)self endOperationWithResultObject:0];
}

@end