@interface PDSEHangTracer
+ (BOOL)didDisableDiagnostics;
+ (BOOL)wantsEnablement;
+ (BOOL)willEnableDiagnostics;
+ (tailspin_config)desiredTailspinConfig;
+ (void)writeEnablementSettings;
@end

@implementation PDSEHangTracer

+ (BOOL)wantsEnablement
{
  v3 = +[HTPrefs sharedPrefs];
  pdseHTPeriodDays = [v3 pdseHTPeriodDays];
  prefixForDefaults = [self prefixForDefaults];
  v6 = sub_10000BE10(prefixForDefaults);
  LOBYTE(pdseHTPeriodDays) = sub_10000BB68(pdseHTPeriodDays, 2, v6);

  return pdseHTPeriodDays;
}

+ (BOOL)willEnableDiagnostics
{
  v3 = sub_10000B598();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    prefixForDefaults = [self prefixForDefaults];
    v7 = 138412290;
    v8 = prefixForDefaults;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDSE: Enable HangTracer: set necessary settings with HT's Self-Enablement prefix = %@", &v7, 0xCu);
  }

  v5 = sub_10000A720();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HTSelfEnable.DisableToEnable", " enableTelemetry=YES ", &v7, 2u);
  }

  [self writeEnablementSettings];

  return 1;
}

+ (void)writeEnablementSettings
{
  prefixForDefaults = [self prefixForDefaults];
  v4 = sub_100000F10(@"HangTracerEnabled", prefixForDefaults);
  CFPreferencesSetValue(v4, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v5 = sub_10000B598();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D01C();
  }

  prefixForDefaults2 = [self prefixForDefaults];
  v7 = sub_100000F10(@"HangTracerReportPeriod", prefixForDefaults2);
  CFPreferencesSetValue(v7, [NSNumber numberWithDouble:3600.0], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v8 = sub_10000B598();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D0B8();
  }

  prefixForDefaults3 = [self prefixForDefaults];
  v10 = sub_100000F10(@"HangTracerDailyThirdPartyLogLimit", prefixForDefaults3);
  CFPreferencesSetValue(v10, [NSNumber numberWithInt:0], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v11 = sub_10000B598();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D154();
  }

  v12 = +[HTPrefs sharedPrefs];
  pdseAllowEnableTailspin = [v12 pdseAllowEnableTailspin];

  if (pdseAllowEnableTailspin)
  {
    prefixForDefaults4 = [self prefixForDefaults];
    v15 = sub_100000F10(@"HangTracerEnableTailspin", prefixForDefaults4);
    CFPreferencesSetValue(v15, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

    v16 = sub_10000B598();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10000D01C();
    }
  }

  CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
}

+ (BOOL)didDisableDiagnostics
{
  v3 = sub_10000B598();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    prefixForDefaults = [self prefixForDefaults];
    *buf = 138412290;
    v26 = prefixForDefaults;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HTSE: Disable HTSE: disable tailspin and delete all settings with Self-Enablement prefix = %@", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  prefixForDefaults2 = [self prefixForDefaults];
  v6 = sub_100000F48(@"com.apple.da", @"mobile", prefixForDefaults2);

  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        CFPreferencesSetValue(v11, 0, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
        v12 = sub_10000B598();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v26 = v11;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "HTSE: Disable HTSE: delete setting %@", buf, 0xCu);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  prefixForDefaults3 = [selfCopy prefixForDefaults];
  v14 = sub_100000F48(@"com.apple.da", @"mobile", prefixForDefaults3);
  v15 = [v14 count];

  v16 = sub_10000B598();
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000D1F0(selfCopy, v17);
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "HTSE: Disable HTSE: All prefix'ed settings were successfully deleted", buf, 2u);
    }

    v17 = sub_10000A720();
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HTSelfEnable.EnableToDisable", " enableTelemetry=YES ", buf, 2u);
    }
  }

  return v15 == 0;
}

+ (tailspin_config)desiredTailspinConfig
{
  v2 = tailspin_config_create_with_default_config();
  if (v2)
  {
    tailspin_enabled_set();
    tailspin_buffer_size_set();
    tailspin_oncore_sampling_period_set();
    tailspin_full_sampling_period_set();
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