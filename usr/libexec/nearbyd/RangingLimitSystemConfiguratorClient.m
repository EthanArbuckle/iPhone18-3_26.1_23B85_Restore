@interface RangingLimitSystemConfiguratorClient
- (void)didUpdateResourceUsageLimitExceeded:(BOOL)a3 forSessionConfigurationType:(Class)a4;
@end

@implementation RangingLimitSystemConfiguratorClient

- (void)didUpdateResourceUsageLimitExceeded:(BOOL)a3 forSessionConfigurationType:(Class)a4
{
  v5 = a3;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromClass(a4);
    v8 = v7;
    v9 = @"NO";
    if (v5)
    {
      v9 = @"YES";
    }

    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#rlm,didUpdateResourceUsageLimitExceeded: %@, for: %@", &v10, 0x16u);
  }
}

@end