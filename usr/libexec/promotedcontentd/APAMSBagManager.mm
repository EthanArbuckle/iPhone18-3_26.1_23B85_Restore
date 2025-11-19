@interface APAMSBagManager
+ (BOOL)isSearchLandingAdsEnabled;
+ (BOOL)isSponsoredAdsEnabledForAdTrackingd;
+ (BOOL)shouldUseAMSMescal;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)adprivacydBag;
+ (id)mediaAPICountryCode;
+ (id)mediaAPIHostURL;
+ (void)cacheSizeWithCompletionHandler:(id)a3;
+ (void)httpLookBackWindowWithCompletionHandler:(id)a3;
+ (void)httpMaximumConnectionsPerHostTempSessionWithCompletionHandler:(id)a3;
+ (void)httpMaximumConnectionsPerHostWithCompletionHandler:(id)a3;
+ (void)httpUseFixedHttpSessionManagerWithCompletionHandler:(id)a3;
+ (void)shouldUseAMSMescalWithCompletionHandler:(id)a3;
@end

@implementation APAMSBagManager

+ (id)adprivacydBag
{
  if (qword_1004E68D0 != -1)
  {
    sub_1000038E0();
  }

  v3 = qword_1004E68D8;

  return v3;
}

+ (id)mediaAPIHostURL
{
  v2 = [a1 adprivacydBag];
  v3 = [v2 URLForKey:@"apps-media-api-edge-host"];

  return v3;
}

+ (NSString)bagSubProfile
{
  if (qword_1004E68B0 != -1)
  {
    sub_100393A30();
  }

  v3 = qword_1004E68B8;

  return v3;
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1004E68C0 != -1)
  {
    sub_100393A44();
  }

  v3 = qword_1004E68C8;

  return v3;
}

+ (id)mediaAPICountryCode
{
  v2 = [a1 adprivacydBag];
  v3 = [v2 stringForKey:@"countryCode"];

  return v3;
}

+ (BOOL)isSearchLandingAdsEnabled
{
  v3 = [a1 adprivacydBag];
  v4 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v5 = [v3 BOOLForKey:@"isSearchLandingAdsEnabled"];
  v6 = [v5 valuePromise];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100289EA4;
  v15[3] = &unk_10047C848;
  v17 = &v19;
  v18 = a1;
  v7 = v4;
  v16 = v7;
  [v6 addFinishBlock:v15];
  v8 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      *buf = 138477827;
      v24 = v10;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{private}@: Failed to get the 'isSearchLandingAdsEnabled' status from the bag in time.", buf, 0xCu);
    }

    v12 = [NSString stringWithFormat:@"Failed to get the 'isSearchLandingAdsEnabled' status from the bag in time."];
    CreateDiagnosticReport();
  }

  v13 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v13 & 1;
}

+ (BOOL)isSponsoredAdsEnabledForAdTrackingd
{
  v3 = [a1 adprivacydBag];
  v4 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v5 = [v3 BOOLForKey:@"isSponsoredAdsEnabledForAdTrackingd"];
  v6 = [v5 valuePromise];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10028A1E0;
  v15[3] = &unk_10047C848;
  v17 = &v19;
  v18 = a1;
  v7 = v4;
  v16 = v7;
  [v6 addFinishBlock:v15];
  v8 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      *buf = 138477827;
      v24 = v10;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{private}@: Failed to get the 'isSponsoredAdsEnabledForAdTrackingd' status from the bag in time.", buf, 0xCu);
    }

    v12 = [NSString stringWithFormat:@"Failed to get the 'isSponsoredAdsEnabledForAdTrackingd' status from the bag in time."];
    CreateDiagnosticReport();
  }

  v13 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v13 & 1;
}

+ (BOOL)shouldUseAMSMescal
{
  v3 = [a1 adprivacydBag];
  v4 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v5 = [v3 BOOLForKey:@"useAMSMescal"];
  v6 = [v5 valuePromise];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10028A518;
  v15[3] = &unk_10047C848;
  v17 = &v19;
  v18 = a1;
  v7 = v4;
  v16 = v7;
  [v6 addFinishBlock:v15];
  v8 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      *buf = 138477827;
      v24 = v10;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{private}@: Failed to get the 'useAMSMescal' key from the bag in time.", buf, 0xCu);
    }

    v12 = [NSString stringWithFormat:@"Failed to get the 'useAMSMescal' key from the bag in time."];
    CreateDiagnosticReport();
  }

  v13 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v13 & 1;
}

+ (void)shouldUseAMSMescalWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 adprivacydBag];
  v6 = [v5 BOOLForKey:@"useAMSMescal"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10028A6E8;
  v8[3] = &unk_10047C870;
  v9 = v4;
  v10 = a1;
  v7 = v4;
  [v6 valueWithCompletion:v8];
}

+ (void)httpUseFixedHttpSessionManagerWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 adprivacydBag];
  v6 = [v5 BOOLForKey:@"ap-http-use-fixed-session-manager"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10028A8C4;
  v8[3] = &unk_10047C898;
  v9 = v4;
  v7 = v4;
  [v6 valueWithCompletion:v8];
}

+ (void)httpMaximumConnectionsPerHostWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 adprivacydBag];
  v6 = [v5 integerForKey:@"ap-http-max-connections-per-host"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10028AA08;
  v8[3] = &unk_10047C898;
  v9 = v4;
  v7 = v4;
  [v6 valueWithCompletion:v8];
}

+ (void)httpMaximumConnectionsPerHostTempSessionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 adprivacydBag];
  v6 = [v5 integerForKey:@"ap-http-max-connections-per-host-temp-session"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10028AB4C;
  v8[3] = &unk_10047C898;
  v9 = v4;
  v7 = v4;
  [v6 valueWithCompletion:v8];
}

+ (void)httpLookBackWindowWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 adprivacydBag];
  v6 = [v5 doubleForKey:@"ap-http-look-back-window"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10028AC90;
  v8[3] = &unk_10047C898;
  v9 = v4;
  v7 = v4;
  [v6 valueWithCompletion:v8];
}

+ (void)cacheSizeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 adprivacydBag];
  v6 = [v5 integerForKey:@"ap-cache-size"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10028ADD0;
  v8[3] = &unk_10047C898;
  v9 = v4;
  v7 = v4;
  [v6 valueWithCompletion:v8];
}

@end