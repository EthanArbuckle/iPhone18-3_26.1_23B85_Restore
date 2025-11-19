@interface PDSEHangTracerBadDay
+ (BOOL)wantsEnablement;
+ (double)timeoutDurationSec;
+ (void)writeEnablementSettings;
@end

@implementation PDSEHangTracerBadDay

+ (BOOL)wantsEnablement
{
  if (_os_feature_enabled_impl())
  {
    v2 = +[HTPrefs sharedPrefs];
    v3 = [v2 badDayEnablementForPreviousDays];

    v4 = +[HTPrefs sharedPrefs];
    v5 = [v4 badDayEnablementForHangDurationMSec];

    v6 = +[HTPrefs sharedPrefs];
    v7 = [v6 badDayEnablementForLogCount];

    v8 = +[HTPrefs sharedPrefs];
    v9 = [v8 badDayEnablementMinimumBreakDurationDays];

    v10 = +[HTPrefs sharedPrefs];
    [v10 badDaySecondsBetweenLastEnablementAndReferenceDate];
    v12 = v11;

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100001C90;
    v46[3] = &unk_100018440;
    *&v46[4] = v12;
    v46[5] = v5;
    v47 = v7;
    v48 = v9;
    v13 = objc_retainBlock(v46);
    +[NSDate timeIntervalSinceReferenceDate];
    v15 = v14;
    v16 = v14 - v12;
    [objc_opt_class() timeoutDurationSec];
    if (v16 < v17 || v16 >= v17 + v9 * 86400.0)
    {
      if (v16 >= v17)
      {
        v18 = CFPreferencesCopyValue(@"BadDaySecondsBetweenLastEvaluationAndReferenceDate", @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
        [v18 doubleValue];
        if (v15 - v21 >= 43200.0)
        {
          CFPreferencesSetValue(@"BadDaySecondsBetweenLastEvaluationAndReferenceDate", [NSNumber numberWithDouble:v15], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
          CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
          v24 = v3;
          v25 = v5 / 1000.0;
          v26 = [[NSCountedSet alloc] initWithCapacity:0];
          v27 = [NSDate dateWithTimeIntervalSinceNow:v24 * -86400.0];
          v28 = +[NSDate date];
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_100001E80;
          v43[3] = &unk_100018468;
          v45 = v25;
          v22 = v26;
          v44 = v22;
          v38 = v27;
          sub_100004280(v27, v28, 0, v43);

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v29 = [v22 objectEnumerator];
          v30 = [v29 countByEnumeratingWithState:&v39 objects:v49 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = 0;
            v33 = *v40;
            while (2)
            {
              for (i = 0; i != v31; i = i + 1)
              {
                if (*v40 != v33)
                {
                  objc_enumerationMutation(v29);
                }

                v35 = *(*(&v39 + 1) + 8 * i);
                if ((sub_10000AFB4(v35) & 1) == 0)
                {
                  v32 += [v22 countForObject:v35];
                }

                if (v32 >= v7)
                {
                  v36 = sub_10000B598();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "PDSE: enabling bad day log collection", buf, 2u);
                  }

                  v20 = 1;
                  (*(v13 + 16))(v13, 1);

                  goto LABEL_32;
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v39 objects:v49 count:16];
              if (v31)
              {
                continue;
              }

              break;
            }
          }

          (*(v13 + 16))(v13, 0);
          v20 = 0;
LABEL_32:
        }

        else
        {
          [v18 doubleValue];
          v22 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
          v23 = sub_10000B598();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v51 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "PDSE: bad day log not evaluated since last evaluation (%@) is too close", buf, 0xCu);
          }

          (*(v13 + 16))(v13, 0);
          v20 = 0;
        }
      }

      else
      {
        v18 = sub_10000B598();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          sub_10000C164(v18);
        }

        v20 = 1;
      }
    }

    else
    {
      v18 = [NSDate dateWithTimeIntervalSinceReferenceDate:v12];
      v19 = sub_10000B598();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v51 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "PDSE: bad day log not enabled since last enablement (%@) is too close", buf, 0xCu);
      }

      (*(v13 + 16))(v13, 0);
      v20 = 0;
    }
  }

  else
  {
    v13 = sub_10000B598();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PDSE: bad day log collection feature is turned off", buf, 2u);
    }

    v20 = 0;
  }

  return v20;
}

+ (void)writeEnablementSettings
{
  +[NSDate timeIntervalSinceReferenceDate];
  CFPreferencesSetValue(@"BadDaySecondsBetweenLastEnablementAndReferenceDate", [NSNumber numberWithDouble:?], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v3 = +[HTPrefs sharedPrefs];
  v4 = [v3 isInternal];

  if (v4)
  {
    v5 = [a1 prefixForDefaults];
    v6 = sub_100000F10(@"HangTracerEnabled", v5);
    CFPreferencesSetValue(v6, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

    v7 = sub_10000B598();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10000C1A8(a1, @"HangTracerEnabled", v7);
    }

    CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  }

  else
  {
    v29[0] = @"HangTracerDailyLogLimit";
    v29[1] = @"HangTracerDailyMicroHangLogLimit";
    v29[2] = @"HangTracerFenceHangLogLimit";
    [NSArray arrayWithObjects:v29 count:3];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v25 = 0u;
    v8 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v23;
      *&v9 = 138412290;
      v19 = v9;
      do
      {
        v12 = 0;
        do
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v22 + 1) + 8 * v12);
          v14 = [a1 prefixForDefaults];
          v15 = sub_100000F10(v13, v14);
          CFPreferencesSetValue(v15, [NSNumber numberWithInt:0], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

          v16 = sub_10000B598();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = [a1 prefixForDefaults];
            v18 = sub_100000F10(v13, v17);
            *buf = v19;
            v27 = v18;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "PDSE: set setting %@ to 0 for bad day log collection", buf, 0xCu);
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v10);
    }

    v21.receiver = a1;
    v21.super_class = &OBJC_METACLASS___PDSEHangTracerBadDay;
    objc_msgSendSuper2(&v21, "writeEnablementSettings");
  }
}

+ (double)timeoutDurationSec
{
  v2 = +[HTPrefs sharedPrefs];
  v3 = [v2 badDayEnablementDurationDays];

  return v3 * 86400.0 + 43200.0;
}

@end