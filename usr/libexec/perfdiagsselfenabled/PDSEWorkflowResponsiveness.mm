@interface PDSEWorkflowResponsiveness
+ (BOOL)didDisableDiagnostics;
+ (BOOL)wantsEnablement;
+ (BOOL)willEnableDiagnostics;
+ (tailspin_config)desiredTailspinConfig;
@end

@implementation PDSEWorkflowResponsiveness

+ (BOOL)wantsEnablement
{
  v2 = +[HTPrefs sharedPrefs];
  pdseWorkflowResponsivenessPeriodDays = [v2 pdseWorkflowResponsivenessPeriodDays];
  v4 = sub_10000BE10(@"PDSEWorkflowResponsiveness");
  LOBYTE(pdseWorkflowResponsivenessPeriodDays) = sub_10000BB68(pdseWorkflowResponsivenessPeriodDays, 1, v4);

  return pdseWorkflowResponsivenessPeriodDays;
}

+ (BOOL)willEnableDiagnostics
{
  v2 = sub_10000B598();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"PDSEWorkflowResponsiveness";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HTWRE: Enable HTWRE: enable tailspin and set necessary settings with WorkflowResponsiveness-Enablement prefix = %@", &v6, 0xCu);
  }

  v3 = sub_100000F10(@"HangTracerEnableWorkflowResponsiveness", @"PDSEWorkflowResponsiveness");
  CFPreferencesSetValue(v3, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v4 = sub_10000B598();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D3A8(@"HangTracerEnableWorkflowResponsiveness", @"PDSEWorkflowResponsiveness", v4);
  }

  return 1;
}

+ (BOOL)didDisableDiagnostics
{
  v2 = sub_10000B598();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = @"PDSEWorkflowResponsiveness";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HTWRE: Disable HTWRE: disable tailspin and delete all settings with WorkflowResponsiveness-Enablement prefix = %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = sub_100000F48(@"com.apple.da", @"mobile", @"PDSEWorkflowResponsiveness");
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
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "HTWRE: Disable HTWRE: delete setting %@", buf, 0xCu);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v10 = sub_100000F48(@"com.apple.da", @"mobile", @"PDSEWorkflowResponsiveness");
  v11 = [v10 count];

  v12 = sub_10000B598();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000D440(@"PDSEWorkflowResponsiveness", v13);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "HTWRE: Disable HTWRE: All prefix'ed settings were successfully deleted", buf, 2u);
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