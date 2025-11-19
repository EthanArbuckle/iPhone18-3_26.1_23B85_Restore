@interface DMDSetPersonalHotspotEnabledOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDSetPersonalHotspotEnabledOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDSetPersonalHotspotEnabledOperation;
  [(DMDSetPersonalHotspotEnabledOperation *)&v2 waitUntilFinished];
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
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Setting Personal Hotspot enabled: %{public}@", &v7, 0xCu);
  }

  v6 = +[DMDPersonalHotspotManager sharedManager];
  [v6 setEnabled:v4];

  [(DMDSetPersonalHotspotEnabledOperation *)self endOperationWithResultObject:0];
}

@end