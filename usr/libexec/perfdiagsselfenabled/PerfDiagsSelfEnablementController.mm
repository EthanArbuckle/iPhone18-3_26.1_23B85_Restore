@interface PerfDiagsSelfEnablementController
+ (BOOL)getKillSwitchSettingForPrefix:(id)prefix;
+ (BOOL)hasTimeoutExpiredForPrefix:(id)prefix;
+ (BOOL)isAnyModeActive;
+ (double)getTimeoutForPrefix:(id)prefix;
+ (id)clientClasses;
+ (id)timeoutPrefNameForPrefix:(id)prefix;
+ (void)evaluateSelfEnablement;
@end

@implementation PerfDiagsSelfEnablementController

+ (BOOL)isAnyModeActive
{
  v16[0] = @"PDSEHangTracer";
  v16[1] = @"PDSEHTThirdParty";
  v16[2] = @"PDSESentry";
  v16[3] = @"PDSEAppLaunch";
  v16[4] = @"PDSEWorkflowResponsiveness";
  [NSArray arrayWithObjects:v16 count:5];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = sub_100000F48(@"com.apple.da", @"mobile", *(*(&v11 + 1) + 8 * i));
        v9 = [v8 count];

        v5 |= v9 != 0;
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

+ (id)clientClasses
{
  if (qword_10001E768 != -1)
  {
    sub_10000C374();
  }

  v3 = qword_10001E760;

  return v3;
}

+ (void)evaluateSelfEnablement
{
  v66 = tailspin_config_create_with_default_config();
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  clientClasses = [self clientClasses];
  v4 = [clientClasses countByEnumeratingWithState:&v103 objects:v113 count:16];
  selfCopy = self;
  if (!v4)
  {

    LOBYTE(willEnableDiagnostics) = 0;
LABEL_26:
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    obja = [self clientClasses];
    v74 = [obja countByEnumeratingWithState:&v90 objects:v111 count:16];
    if (!v74)
    {
      goto LABEL_93;
    }

    v21 = 0;
    v72 = *v91;
    while (1)
    {
      for (i = 0; i != v74; i = i + 1)
      {
        if (*v91 != v72)
        {
          objc_enumerationMutation(obja);
        }

        v23 = *(*(&v90 + 1) + 8 * i);
        prefixForDefaults = [v23 prefixForDefaults];
        v25 = [self getKillSwitchSettingForPrefix:prefixForDefaults];
        v26 = DiagnosticLogSubmissionEnabled();
        v27 = sub_10000B598();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v108 = prefixForDefaults;
          v109 = 1024;
          *v110 = v25;
          *&v110[4] = 1024;
          *&v110[6] = v26;
          *&v110[10] = 1024;
          *&v110[12] = v21 & 1;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: kill switch setting = %{BOOL}i, diagCollectionEnable = %{BOOL}i, haveEnabledClientAlready = %{BOOL}i", buf, 0x1Eu);
        }

        if ([v23 isEqual:objc_opt_class()])
        {
          v28 = v25;
        }

        else
        {
          v28 = v25 | ~v26;
        }

        v29 = v28 | v21;
        v30 = sub_10000B598();
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
        if (v29)
        {
          if (v31)
          {
            *buf = 138412290;
            v108 = prefixForDefaults;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: shouldDisable == TRUE, do not enable today", buf, 0xCu);
          }

          wantsEnablement = 0;
        }

        else
        {
          if (v31)
          {
            *buf = 138412290;
            v108 = prefixForDefaults;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: calling client's to determine if it wantsEnablement", buf, 0xCu);
          }

          wantsEnablement = [v23 wantsEnablement];
          v30 = sub_10000B598();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v33 = @"NO";
            if (wantsEnablement)
            {
              v33 = @"YES";
            }

            v108 = prefixForDefaults;
            v109 = 2112;
            *v110 = v33;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: client's wantsEnablement returned %@", buf, 0x16u);
          }
        }

        v34 = sub_100000F48(@"com.apple.da", @"mobile", prefixForDefaults);
        v35 = [v34 count];

        v36 = sub_10000B598();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v108 = prefixForDefaults;
          v109 = 1024;
          *v110 = v35 != 0;
          *&v110[4] = 2048;
          *&v110[6] = v35;
          *&v110[14] = 2112;
          *&v110[16] = prefixForDefaults;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: client enabled state = %{BOOL}i, found %lu settings with prefix %@", buf, 0x26u);
        }

        self = selfCopy;
        if (!((v35 != 0) | wantsEnablement & 1))
        {
          v37 = sub_10000B598();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v108 = prefixForDefaults;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "PDSE: evaluateSelfEnablement %@: Transition from Disable to Disable", buf, 0xCu);
          }

          v85 = _NSConcreteStackBlock;
          v86 = 3221225472;
          v87 = sub_100003878;
          v88 = &unk_1000188A0;
          v89 = prefixForDefaults;
          AnalyticsSendEventLazy();
        }

        if (!v35 && ((wantsEnablement ^ 1) & 1) == 0)
        {
          v38 = sub_10000B598();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v108 = prefixForDefaults;
            v109 = 2112;
            *v110 = prefixForDefaults;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: Transition from Disable to Enable, calling %@'s willEnableDiagnostics", buf, 0x16u);
          }

          [v23 timeoutDurationSec];
          if (v39 <= 432000.0)
          {
            v40 = v39;
          }

          else
          {
            v40 = 432000.0;
          }

          v41 = +[NSDate date];
          [v41 timeIntervalSinceReferenceDate];
          v43 = v40 + v42;

          CFPreferencesSetValue([selfCopy timeoutPrefNameForPrefix:prefixForDefaults], +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v43), @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
          v44 = sub_10000B598();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = [selfCopy timeoutPrefNameForPrefix:prefixForDefaults];
            *buf = 138413058;
            v108 = prefixForDefaults;
            v109 = 2112;
            *v110 = v45;
            *&v110[8] = 2048;
            *&v110[10] = v43;
            *&v110[18] = 2048;
            *&v110[20] = v40;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: set setting %@ to %f secs_after_ref_date, which is %f seconds in the future", buf, 0x2Au);
          }

          willEnableDiagnostics = [v23 willEnableDiagnostics];
          v46 = sub_10000B598();
          v47 = v46;
          if (willEnableDiagnostics)
          {
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v108 = prefixForDefaults;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: Successful Transition from Disable to Enable", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v108 = prefixForDefaults;
            _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "PDSE: evaluateSelfEnablement %@: FAILED Transition from Disable to Enable", buf, 0xCu);
          }

          v52 = v83;
          v83[0] = _NSConcreteStackBlock;
          v83[1] = 3221225472;
          v83[2] = sub_100003910;
          v83[3] = &unk_1000188C8;
          v83[4] = prefixForDefaults;
          v84 = willEnableDiagnostics;
LABEL_80:
          AnalyticsSendEventLazy();

          goto LABEL_81;
        }

        if (!((v35 == 0) | wantsEnablement & 1))
        {
          v48 = sub_10000B598();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v108 = prefixForDefaults;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: Transition from Enable to Disable", buf, 0xCu);
          }

          CFPreferencesSetValue([selfCopy timeoutPrefNameForPrefix:prefixForDefaults], 0, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
          didDisableDiagnostics = [v23 didDisableDiagnostics];
          v50 = sub_10000B598();
          v51 = v50;
          if (didDisableDiagnostics)
          {
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v108 = prefixForDefaults;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: Successful Transition from Enable to Disable", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v108 = prefixForDefaults;
            _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "PDSE: evaluateSelfEnablement %@: FAILED Transition from Enable to Disable", buf, 0xCu);
          }

          v80[5] = _NSConcreteStackBlock;
          v80[6] = 3221225472;
          v80[7] = sub_1000039E8;
          v80[8] = &unk_1000188C8;
          v81 = prefixForDefaults;
          v82 = didDisableDiagnostics;
          AnalyticsSendEventLazy();

          LOBYTE(willEnableDiagnostics) = 1;
        }

        if (((v35 != 0) & wantsEnablement) == 1)
        {
          v53 = sub_10000B598();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v108 = prefixForDefaults;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "PDSE: evaluateSelfEnablement %@: Transition from Enable to Enable", buf, 0xCu);
          }

          v52 = v80;
          v80[0] = _NSConcreteStackBlock;
          v80[1] = 3221225472;
          v80[2] = sub_100003AC0;
          v80[3] = &unk_1000188A0;
          v80[4] = prefixForDefaults;
          goto LABEL_80;
        }

LABEL_81:
        if (!wantsEnablement)
        {
          goto LABEL_91;
        }

        v54 = +[HTPrefs sharedPrefs];
        pdseAllowEnableTailspin = [v54 pdseAllowEnableTailspin];

        v56 = sub_10000B598();
        v57 = v56;
        if (pdseAllowEnableTailspin)
        {
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v108 = prefixForDefaults;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: get desired tailspin config", buf, 0xCu);
          }

          desiredTailspinConfig = [v23 desiredTailspinConfig];
          if (desiredTailspinConfig)
          {
            v59 = desiredTailspinConfig;
            tailspin_config_free();
            v21 = 1;
            v66 = v59;
            goto LABEL_91;
          }
        }

        else
        {
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            sub_10000C388(&v78, v79, v57);
          }
        }

        v21 = 1;
LABEL_91:
        v60 = prefixForDefaults;
        AnalyticsSendEventLazy();
      }

      v74 = [obja countByEnumeratingWithState:&v90 objects:v111 count:16];
      if (!v74)
      {
LABEL_93:

        goto LABEL_94;
      }
    }
  }

  hostName = 0;
  v5 = 0;
  v73 = *v104;
  v6 = v4;
  obj = clientClasses;
  do
  {
    v7 = 0;
    v70 = v6;
    do
    {
      if (*v104 != v73)
      {
        objc_enumerationMutation(clientClasses);
      }

      v76 = *(*(&v103 + 1) + 8 * v7);
      prefixForDefaults2 = [v76 prefixForDefaults];
      if ([self hasTimeoutExpiredForPrefix:prefixForDefaults2])
      {
        v71 = v7;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v77 = prefixForDefaults2;
        v9 = sub_100000F48(@"com.apple.da", @"mobile", prefixForDefaults2);
        v10 = [v9 countByEnumeratingWithState:&v99 objects:v112 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v100;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v100 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v99 + 1) + 8 * j);
              CFPreferencesSetValue(v14, 0, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
              v15 = sub_10000B598();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v108 = v14;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "PDSE: Timeout Force Disable, delete setting %@", buf, 0xCu);
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v99 objects:v112 count:16];
          }

          while (v11);
        }

        self = selfCopy;
        CFPreferencesSetValue([selfCopy timeoutPrefNameForPrefix:v77], 0, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
        v16 = sub_10000B598();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [selfCopy timeoutPrefNameForPrefix:v77];
          *buf = 138412290;
          v108 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "PDSE: Timeout Force Disable, delete timeout setting %@", buf, 0xCu);
        }

        CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
        v94 = _NSConcreteStackBlock;
        v95 = 3221225472;
        v96 = sub_1000037F4;
        v97 = &unk_1000188A0;
        v18 = v77;
        v98 = v18;
        AnalyticsSendEventLazy();
        v19 = sub_10000B598();
        clientClasses = obj;
        v7 = v71;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v108 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "PDSE: Timeout Force Disable, call %@'s didDisableDiagnostics method", buf, 0xCu);
        }

        [v76 didDisableDiagnostics];
        hostName = 1;
        v5 = 1;
        v6 = v70;
        prefixForDefaults2 = v77;
      }

      v7 = v7 + 1;
    }

    while (v7 != v6);
    v6 = [clientClasses countByEnumeratingWithState:&v103 objects:v113 count:16];
  }

  while (v6);

  LOBYTE(willEnableDiagnostics) = v5;
  if ((hostName & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_94:
  sub_10000A628();
  v61 = +[HTPrefs sharedPrefs];
  isInternal = [v61 isInternal];

  v63 = sub_10000B598();
  v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
  if (isInternal)
  {
    if (v64)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement: will NOT configure tailspin for internal install", buf, 2u);
    }
  }

  else
  {
    if (v64)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement: configure tailspin for desired tailspin config", buf, 2u);
    }

    sub_10000A448(v66);
    sub_10000A628();
  }

  tailspin_config_free();
  if (willEnableDiagnostics)
  {
    v65 = sub_10000B598();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "PDSE: Posting notification regarding enablement state change", buf, 2u);
    }

    notify_post(off_10001E758);
  }
}

+ (BOOL)getKillSwitchSettingForPrefix:(id)prefix
{
  prefixCopy = prefix;
  if ([prefixCopy isEqualToString:@"PDSEHangTracer"])
  {
    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseHangTracerKillSwitch];
  }

  else if ([prefixCopy isEqualToString:@"PDSEHTBadDay"])
  {
    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseHTBadDayKillSwitch];
  }

  else if ([prefixCopy isEqualToString:@"PDSEHTRateOnly"])
  {
    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseHTRateOnlyKillSwitch];
  }

  else if ([prefixCopy isEqualToString:@"PDSEHTThirdParty"])
  {
    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseHTThirdPartyKillSwitch];
  }

  else if ([prefixCopy isEqualToString:@"PDSESentry"])
  {
    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseSentryKillSwitch];
  }

  else if ([prefixCopy isEqualToString:@"PDSEWorkflowResponsiveness"])
  {
    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseWorkflowResponsivenessKillSwitch];
  }

  else if ([prefixCopy isEqualToString:@"PDSECATailspin"])
  {
    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseCATailspinKillSwitch];
  }

  else if ([prefixCopy isEqualToString:@"PDSEAppLaunch"])
  {
    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseAppLaunchKillSwitch];
  }

  else
  {
    if (![prefixCopy isEqualToString:@"PDSEWBClientHang"])
    {
      v6 = 1;
      goto LABEL_20;
    }

    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseWBClientHangKillSwitch];
  }

  v6 = pdseHangTracerKillSwitch;

LABEL_20:
  return v6;
}

+ (id)timeoutPrefNameForPrefix:(id)prefix
{
  prefixCopy = prefix;
  if ([prefixCopy isEqualToString:@"PDSEHangTracer"])
  {
    v4 = &off_1000186D0;
LABEL_19:
    v5 = *v4;
    goto LABEL_20;
  }

  if ([prefixCopy isEqualToString:@"PDSEHTBadDay"])
  {
    v4 = &off_1000186D8;
    goto LABEL_19;
  }

  if ([prefixCopy isEqualToString:@"PDSEHTRateOnly"])
  {
    v4 = &off_1000186E0;
    goto LABEL_19;
  }

  if ([prefixCopy isEqualToString:@"PDSEHTThirdParty"])
  {
    v4 = &off_1000186E8;
    goto LABEL_19;
  }

  if ([prefixCopy isEqualToString:@"PDSESentry"])
  {
    v4 = &off_1000186F0;
    goto LABEL_19;
  }

  if ([prefixCopy isEqualToString:@"PDSEWorkflowResponsiveness"])
  {
    v4 = &off_100018708;
    goto LABEL_19;
  }

  if ([prefixCopy isEqualToString:@"PDSECATailspin"])
  {
    v4 = &off_1000186F8;
    goto LABEL_19;
  }

  if ([prefixCopy isEqualToString:@"PDSEAppLaunch"])
  {
    v4 = &off_100018700;
    goto LABEL_19;
  }

  if ([prefixCopy isEqualToString:@"PDSEWBClientHang"])
  {
    v4 = &off_100018710;
    goto LABEL_19;
  }

  v5 = @"PDSEUnknownPrefixTimeout";
LABEL_20:

  return v5;
}

+ (double)getTimeoutForPrefix:(id)prefix
{
  v3 = CFPreferencesCopyValue([self timeoutPrefNameForPrefix:prefix], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

+ (BOOL)hasTimeoutExpiredForPrefix:(id)prefix
{
  prefixCopy = prefix;
  [self getTimeoutForPrefix:prefixCopy];
  v6 = v5;
  v7 = sub_10000B598();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v16 = 138412546;
    v17 = prefixCopy;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "PDSE: Fetching timeout for %@, it has value = %f", &v16, 0x16u);
  }

  if (v6 == 0.0 || (+[NSDate date](NSDate, "date"), v8 = objc_claimAutoreleasedReturnValue(), [v8 timeIntervalSinceReferenceDate], v10 = v9, v8, v10 < v6))
  {
    v11 = sub_10000B598();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = +[NSDate date];
      [v12 timeIntervalSinceReferenceDate];
      v16 = 138412802;
      v17 = prefixCopy;
      v18 = 2048;
      v19 = v6;
      v20 = 2048;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "PDSE: Timeout for %@ has not expired (timeout = %f, current time = %f)", &v16, 0x20u);
    }

    v14 = 0;
  }

  else
  {
    v11 = sub_10000B598();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000C3C8(prefixCopy, v11, v6);
    }

    v14 = 1;
  }

  return v14;
}

@end