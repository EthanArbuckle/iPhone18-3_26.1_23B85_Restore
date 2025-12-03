@interface PDSECATailspin
+ (BOOL)didDisableDiagnostics;
+ (BOOL)wantsEnablement;
+ (BOOL)willEnableDiagnostics;
+ (tailspin_config)desiredTailspinConfig;
@end

@implementation PDSECATailspin

+ (BOOL)wantsEnablement
{
  v2 = +[HTPrefs sharedPrefs];
  pdseCATailspinPeriodDays = [v2 pdseCATailspinPeriodDays];
  v4 = sub_10000BE10(@"PDSECATailspin");
  LOBYTE(pdseCATailspinPeriodDays) = sub_10000BB68(pdseCATailspinPeriodDays, 1, v4);

  return pdseCATailspinPeriodDays;
}

+ (BOOL)willEnableDiagnostics
{
  v2 = sub_10000B598();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"PDSECATailspin";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSE: Enable HangTracer: set necessary settings with CA's Self-Enablement prefix = %@", &v6, 0xCu);
  }

  v3 = sub_100000F10(@"CATailspinEnable", @"PDSECATailspin");
  CFPreferencesSetValue(v3, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v4 = sub_10000B598();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000BF68(@"CATailspinEnable", @"PDSECATailspin");
  }

  return 1;
}

+ (BOOL)didDisableDiagnostics
{
  v2 = sub_100000F10(@"CATailspinEnable", @"PDSECATailspin");
  CFPreferencesSetValue(v2, 0, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v3 = sub_10000B598();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000BFF0(@"CATailspinEnable", @"PDSECATailspin");
  }

  return 1;
}

+ (tailspin_config)desiredTailspinConfig
{
  v2 = tailspin_config_create_with_default_config();
  if (v2)
  {
    tailspin_enabled_set();
    tailspin_buffer_size_set();
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