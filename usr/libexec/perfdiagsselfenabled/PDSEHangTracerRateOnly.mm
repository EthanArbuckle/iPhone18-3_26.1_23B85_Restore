@interface PDSEHangTracerRateOnly
+ (BOOL)wantsEnablement;
+ (void)writeEnablementSettings;
@end

@implementation PDSEHangTracerRateOnly

+ (BOOL)wantsEnablement
{
  v3 = +[HTPrefs sharedPrefs];
  v4 = [v3 pdseHTRateOnlyPeriodDays];
  v5 = [a1 prefixForDefaults];
  v6 = sub_10000BE10(v5);
  LOBYTE(v4) = sub_10000BB68(v4, 2, v6);

  return v4;
}

+ (void)writeEnablementSettings
{
  v3 = [a1 prefixForDefaults];
  v4 = sub_100000F10(@"HangTracerEnabled", v3);
  CFPreferencesSetValue(v4, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v5 = sub_10000B598();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C944(a1);
  }

  v6 = [a1 prefixForDefaults];
  v7 = sub_100000F10(@"HangTracerReportPeriod", v6);
  CFPreferencesSetValue(v7, [NSNumber numberWithDouble:3600.0], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v8 = sub_10000B598();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C9E8(a1);
  }

  v9 = [a1 prefixForDefaults];
  v10 = sub_100000F10(@"HangTracerEnableTailspin", v9);
  CFPreferencesSetValue(v10, kCFBooleanFalse, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v11 = sub_10000B598();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10000CA8C(a1);
  }

  CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
}

@end