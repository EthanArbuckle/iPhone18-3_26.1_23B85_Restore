@interface PDSEAppLaunch
+ (BOOL)didDisableDiagnostics;
+ (BOOL)wantsEnablement;
+ (BOOL)willEnableDiagnostics;
+ (tailspin_config)desiredTailspinConfig;
@end

@implementation PDSEAppLaunch

+ (BOOL)wantsEnablement
{
  v2 = +[HTPrefs sharedPrefs];
  v3 = [v2 pdseAppLaunchPeriodDays];
  v4 = sub_10000BE10(@"PDSEAppLaunch");
  LOBYTE(v3) = sub_10000BB68(v3, 1, v4);

  return v3;
}

+ (BOOL)willEnableDiagnostics
{
  v2 = sub_10000B598();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"PDSEAppLaunch";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSE: Enable App Launch Monitoring: enable tailspin and set necessary settings with App launch-Enablement prefix = %@", &v8, 0xCu);
  }

  v3 = sub_100000F10(@"HangTracerEnableAppLaunchMonitoring", @"PDSEAppLaunch");
  CFPreferencesSetValue(v3, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v4 = sub_10000B598();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C844(@"HangTracerEnableAppLaunchMonitoring", @"PDSEAppLaunch");
  }

  v5 = sub_100000F10(@"HangTracerEnableTailspin", @"PDSEAppLaunch");
  CFPreferencesSetValue(v5, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v6 = sub_10000B598();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C844(@"HangTracerEnableTailspin", @"PDSEAppLaunch");
  }

  return 1;
}

+ (BOOL)didDisableDiagnostics
{
  v2 = sub_10000B598();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = @"PDSEAppLaunch";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSE: Disable App Launch Monitoring: disable tailspin and delete all settings with App Launch-Enablement prefix = %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = sub_100000F48(@"com.apple.da", @"mobile", @"PDSEAppLaunch");
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        CFPreferencesSetValue(v8, 0, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
        v9 = sub_10000B598();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v21 = v8;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "PDSE: Disable App Launch Monitoring: delete setting %@", buf, 0xCu);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v10 = sub_100000F48(@"com.apple.da", @"mobile", @"PDSEAppLaunch");
  v11 = [v10 count];

  v12 = sub_10000B598();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000C8CC(@"PDSEAppLaunch", v13);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PDSE: Disable App Launch Monitoring: All prefix'ed settings were successfully deleted", buf, 2u);
  }

  return v11 == 0;
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