@interface FMDDeviceIdentityProxyFactory
+ (BOOL)isAutomationActive;
+ (id)deviceIdentityProxy;
@end

@implementation FMDDeviceIdentityProxyFactory

+ (BOOL)isAutomationActive
{
  if (qword_1003149B8 != -1)
  {
    sub_10022D718();
  }

  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10022D72C(v2);
  }

  return byte_1003149B0;
}

+ (id)deviceIdentityProxy
{
  if (+[FMDDeviceIdentityProxyFactory isAutomationActive])
  {
    v2 = +[FMDAutomationHelperFactory sharedFactory];
    [v2 automationHelperClassWithName:@"FMDAutomationDeviceIdentity"];

    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10022D7F4(v3);
    }

    v4 = objc_opt_new();
  }

  else
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10022D7B0(v5);
    }

    v4 = +[FMDRealDeviceIdentity sharedInstance];
  }

  return v4;
}

@end