@interface DMDSetDataRoamingEnabledOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDSetDataRoamingEnabledOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDSetDataRoamingEnabledOperation;
  [(DMDSetDataRoamingEnabledOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3
{
  v4 = [a3 enabled];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MCStringForBool();
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Setting data roaming enabled: %{public}@", &v6, 0xCu);
  }

  if (v4)
  {
    [DMDCoreTelephonyUtilities setVoiceRoamingEnabled:1];
  }

  [DMDCoreTelephonyUtilities setDataRoamingEnabled:v4];
  [(DMDSetDataRoamingEnabledOperation *)self endOperationWithResultObject:0];
}

@end