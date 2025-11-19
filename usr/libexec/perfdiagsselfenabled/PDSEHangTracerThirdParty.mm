@interface PDSEHangTracerThirdParty
+ (BOOL)wantsEnablement;
+ (void)writeEnablementSettings;
@end

@implementation PDSEHangTracerThirdParty

+ (BOOL)wantsEnablement
{
  v3 = +[MXSourceUtilities anyClientsAvailable];
  if (DiagnosticLogSubmissionEnabled())
  {
    v4 = AppAnalyticsEnabled();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_10000B598();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C544(v3, v4, v5);
  }

  v6 = sub_10000B598();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      v8 = +[HTPrefs sharedPrefs];
      v16 = 67109120;
      v17 = [v8 pdseHTThirdPartyPeriodDays];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PDSE: PDSEHTThirdParty: log upload enabled on device, will use pdseHTThirdPartyPeriod=%i to determine wantsEnablement", &v16, 8u);
    }

    v6 = +[HTPrefs sharedPrefs];
    v9 = [v6 pdseHTThirdPartyPeriodDays];
LABEL_14:
    v11 = v9;
    v12 = [a1 prefixForDefaults];
    v13 = sub_10000BE10(v12);
    v14 = sub_10000BB68(v11, 2, v13);

    goto LABEL_18;
  }

  if (v3)
  {
    if (v7)
    {
      v10 = +[HTPrefs sharedPrefs];
      v16 = 67109120;
      v17 = [v10 pdseHTThirdPartyNoLogUploadPeriodDays];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PDSE: PDSEHTThirdParty: log upload disabled on device and MetricKit clients enabled, will use pdseHTThirdPartyNoLogUploadPeriodDays=%i to determine wantsEnablement", &v16, 8u);
    }

    v6 = +[HTPrefs sharedPrefs];
    v9 = [v6 pdseHTThirdPartyNoLogUploadPeriodDays];
    goto LABEL_14;
  }

  if (v7)
  {
    v16 = 67109376;
    v17 = 0;
    v18 = 1024;
    v19 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PDSE: PDSEHTThirdParty: not enabling HT 3rd Party mode due to (enableForMetricKit=%{BOOL}d enableForLogUpload=%{BOOL}d", &v16, 0xEu);
  }

  v14 = 0;
LABEL_18:

  return v14;
}

+ (void)writeEnablementSettings
{
  v3 = [a1 prefixForDefaults];
  v4 = sub_100000F10(@"HangTracerEnabled", v3);
  CFPreferencesSetValue(v4, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v5 = sub_10000B598();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C5D4();
  }

  v6 = [a1 prefixForDefaults];
  v7 = sub_100000F10(@"HangTracerReportPeriod", v6);
  CFPreferencesSetValue(v7, [NSNumber numberWithDouble:3600.0], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v8 = sub_10000B598();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C670();
  }

  v9 = [a1 prefixForDefaults];
  v10 = sub_100000F10(@"HangTracerEnableTailspin", v9);
  CFPreferencesSetValue(v10, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v11 = sub_10000B598();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C5D4();
  }

  v12 = [a1 prefixForDefaults];
  v13 = sub_100000F10(@"HangTracerFenceTrackingEnabled", v12);
  CFPreferencesSetValue(v13, kCFBooleanFalse, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v14 = sub_10000B598();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C70C();
  }

  v15 = [a1 prefixForDefaults];
  v16 = sub_100000F10(@"HangTracerPercentFullSpinReports", v15);
  CFPreferencesSetValue(v16, [NSNumber numberWithDouble:0.0], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v17 = sub_10000B598();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C7A8();
  }

  v18 = [a1 prefixForDefaults];
  v19 = sub_100000F10(@"HangTracerDailyLogLimit", v18);
  CFPreferencesSetValue(v19, [NSNumber numberWithInt:0], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v20 = sub_10000B598();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C7A8();
  }

  v21 = [a1 prefixForDefaults];
  v22 = sub_100000F10(@"HangTracerDailyLongLogLimit", v21);
  CFPreferencesSetValue(v22, [NSNumber numberWithInt:0], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v23 = sub_10000B598();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C7A8();
  }

  CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
}

@end