@interface DMDSetBluetoothEnabledOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDSetBluetoothEnabledOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDSetBluetoothEnabledOperation;
  [(DMDSetBluetoothEnabledOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)request
{
  enabled = [request enabled];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MCStringForBool();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Setting Bluetooth enabled: %{public}@", &v7, 0xCu);
  }

  v6 = +[DMDBluetoothManager sharedManager];
  [v6 setEnabled:enabled];
  [(DMDSetBluetoothEnabledOperation *)self endOperationWithResultObject:0];
}

@end