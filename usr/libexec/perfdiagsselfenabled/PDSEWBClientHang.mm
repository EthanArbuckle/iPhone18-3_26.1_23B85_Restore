@interface PDSEWBClientHang
+ (BOOL)didDisableDiagnostics;
+ (BOOL)wantsEnablement;
+ (BOOL)willEnableDiagnostics;
+ (tailspin_config)desiredTailspinConfig;
@end

@implementation PDSEWBClientHang

+ (BOOL)wantsEnablement
{
  v2 = +[HTPrefs sharedPrefs];
  pdseWBClientHangPeriodDays = [v2 pdseWBClientHangPeriodDays];
  v4 = sub_10000BE10(@"PDSEWBClientHang");
  LOBYTE(pdseWBClientHangPeriodDays) = sub_10000BB68(pdseWBClientHangPeriodDays, 1, v4);

  return pdseWBClientHangPeriodDays;
}

+ (BOOL)willEnableDiagnostics
{
  v2 = sub_10000B598();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"PDSEWBClientHang";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSE: Enable WB client hang: set necessary settings with Self-Enablement prefix = %@", &v6, 0xCu);
  }

  v3 = sub_100000F10(@"WBClientHangEnable", @"PDSEWBClientHang");
  CFPreferencesSetValue(v3, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v4 = sub_10000B598();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C264(@"WBClientHangEnable", @"PDSEWBClientHang");
  }

  return 1;
}

+ (BOOL)didDisableDiagnostics
{
  v2 = sub_100000F10(@"WBClientHangEnable", @"PDSEWBClientHang");
  CFPreferencesSetValue(v2, 0, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v3 = sub_10000B598();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C2EC(@"WBClientHangEnable", @"PDSEWBClientHang");
  }

  return 1;
}

+ (tailspin_config)desiredTailspinConfig
{
  v2 = tailspin_config_create_with_default_config();
  if (v2)
  {
    tailspin_enabled_set();
  }

  else
  {
    v3 = sub_10000B598();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10000C078(v3);
    }
  }

  return v2;
}

@end