@interface MSDAnalyticsEventHandler
+ (id)sharedInstance;
- (MSDAnalyticsEventHandler)init;
- (id)getDemoBundleInfo:(id)a3;
- (id)getDownloadSizeBucket:(int64_t)a3;
- (id)getEmbeddedSimCarrier:(id)a3;
- (id)getPhysicalSimCarrier:(id)a3;
- (id)prepareCAData:(int)a3;
- (void)sendAppUsageDataEvent:(id)a3 withExecutable:(id)a4 sessionUUID:(id)a5 sessionStart:(id)a6 sessionEnd:(id)a7 sessionDuration:(int64_t)a8 appOrder:(int64_t)a9 appDuration:(double)a10;
- (void)sendAutoEnrollmentAbortEvent:(id)a3 languageCode:(id)a4 countryCode:(id)a5 networkInformation:(id)a6 wifiSSID:(id)a7;
- (void)sendAutoEnrollmentResults:(id)a3;
- (void)sendBgDownloadPausedEvent:(int64_t)a3 forReason:(id)a4;
- (void)sendContinuityLinkingFailureEvent:(id)a3;
- (void)sendEnrollmentFailureEvent:(id)a3;
- (void)sendFMHFailureEvent:(id)a3;
- (void)sendFileDownloadSourceEvent:(id)a3;
- (void)sendHeartbeatEvent;
- (void)sendLastShallowRefreshTime:(id)a3;
- (void)sendNetworkAverageBandwidthEvent:(int64_t)a3 forServerType:(id)a4;
- (void)sendNetworkAverageRTTEvent:(int64_t)a3 forServerType:(id)a4;
- (void)sendNetworkFailureEvent:(id)a3 forServerType:(id)a4;
- (void)sendNetworkPacketLossEvent:(int64_t)a3 forServerType:(id)a4;
- (void)sendNetworkRawDataEvent:(id)a3 forServerType:(id)a4;
- (void)sendOSUpdateFailureEvent:(id)a3;
- (void)sendiCloudSigninFailureEvent:(id)a3;
@end

@implementation MSDAnalyticsEventHandler

+ (id)sharedInstance
{
  if (qword_1001A5890 != -1)
  {
    sub_1000D9CBC();
  }

  v3 = qword_1001A5888;

  return v3;
}

- (MSDAnalyticsEventHandler)init
{
  v6.receiver = self;
  v6.super_class = MSDAnalyticsEventHandler;
  v2 = [(MSDAnalyticsEventHandler *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MSDAnalyticsEventHandler *)v2 setRawDataKeyMapping:&off_10017C058];
    v4 = [NSArray arrayWithObjects:@"None", @"Physical", @"eSim", 0];
    [(MSDAnalyticsEventHandler *)v3 setCellularTypeStrMapping:v4];
  }

  return v3;
}

- (void)sendiCloudSigninFailureEvent:(id)a3
{
  v4 = a3;
  v8 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 code]);
  [v8 setObject:v5 forKey:@"errorCode"];

  v6 = [v4 localizedDescription];

  [v8 setObject:v6 forKey:@"errorMessage"];
  v7 = +[MSDAnalytics sharedInstance];
  [v7 sendEvent:@"com.apple.MobileStoreDemo.icloudSignInFailure" withPayload:v8];
}

- (void)sendContinuityLinkingFailureEvent:(id)a3
{
  v4 = a3;
  v8 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 code]);
  [v8 setObject:v5 forKey:@"errorCode"];

  v6 = [v4 localizedDescription];

  [v8 setObject:v6 forKey:@"errorMessage"];
  v7 = +[MSDAnalytics sharedInstance];
  [v7 sendEvent:@"com.apple.MobileStoreDemo.continuityLinkingFailure" withPayload:v8];
}

- (void)sendOSUpdateFailureEvent:(id)a3
{
  v4 = a3;
  v8 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 code]);
  [v8 setObject:v5 forKey:@"errorCode"];

  v6 = [v4 localizedDescription];

  [v8 setObject:v6 forKey:@"errorMessage"];
  v7 = +[MSDAnalytics sharedInstance];
  [v7 sendEvent:@"com.apple.MobileStoreDemo.osUpdateFailure" withPayload:v8];
}

- (void)sendFMHFailureEvent:(id)a3
{
  v4 = a3;
  v8 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 code]);
  [v8 setObject:v5 forKey:@"errorCode"];

  v6 = [v4 localizedDescription];

  [v8 setObject:v6 forKey:@"errorMessage"];
  v7 = +[MSDAnalytics sharedInstance];
  [v7 sendEvent:@"com.apple.MobileStoreDemo.fmhFailure" withPayload:v8];
}

- (void)sendEnrollmentFailureEvent:(id)a3
{
  v4 = a3;
  v8 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 code]);
  [v8 setObject:v5 forKey:@"errorCode"];

  v6 = [v4 localizedDescription];

  [v8 setObject:v6 forKey:@"errorMessage"];
  v7 = +[MSDAnalytics sharedInstance];
  [v7 sendEvent:@"com.apple.MobileStoreDemo.enrollmentFailure" withPayload:v8];
}

- (void)sendNetworkFailureEvent:(id)a3 forServerType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 code]);
  [v11 setObject:v8 forKey:@"errorCode"];

  [v11 setObject:v6 forKey:@"serverType"];
  v9 = [v7 localizedDescription];

  [v11 setObject:v9 forKey:@"errorMessage"];
  v10 = +[MSDAnalytics sharedInstance];
  [v10 sendEvent:@"com.apple.MobileStoreDemo.networkFailure" withPayload:v11];
}

- (void)sendBgDownloadPausedEvent:(int64_t)a3 forReason:(id)a4
{
  v6 = a4;
  v9 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v7 = [NSNumber numberWithInt:a3];
  [v9 setObject:v7 forKey:@"pauseDuration"];

  [v9 setObject:v6 forKey:@"pauseReason"];
  v8 = +[MSDAnalytics sharedInstance];
  [v8 sendEvent:@"com.apple.MobileStoreDemo.bgDownloadPaused" withPayload:v9];
}

- (void)sendFileDownloadSourceEvent:(id)a3
{
  v4 = a3;
  v6 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  [v6 setObject:v4 forKey:@"fileDownloadSource"];

  v5 = +[MSDAnalytics sharedInstance];
  [v5 sendEvent:@"com.apple.MobileStoreDemo.fileDownloadSource" withPayload:v6];
}

- (void)sendNetworkAverageRTTEvent:(int64_t)a3 forServerType:(id)a4
{
  v6 = a4;
  v9 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v7 = [NSNumber numberWithInt:a3];
  [v9 setObject:v7 forKey:@"avgRTT"];

  [v9 setObject:v6 forKey:@"serverType"];
  v8 = +[MSDAnalytics sharedInstance];
  [v8 sendEvent:@"com.apple.MobileStoreDemo.networkRTT" withPayload:v9];
}

- (void)sendNetworkPacketLossEvent:(int64_t)a3 forServerType:(id)a4
{
  v6 = a4;
  v9 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v7 = [NSNumber numberWithInt:a3];
  [v9 setObject:v7 forKey:@"packetLoss"];

  [v9 setObject:v6 forKey:@"serverType"];
  v8 = +[MSDAnalytics sharedInstance];
  [v8 sendEvent:@"com.apple.MobileStoreDemo.networkPacketLoss" withPayload:v9];
}

- (void)sendNetworkAverageBandwidthEvent:(int64_t)a3 forServerType:(id)a4
{
  v6 = a4;
  v9 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v7 = [NSNumber numberWithInt:a3];
  [v9 setObject:v7 forKey:@"avgBandwidth"];

  [v9 setObject:v6 forKey:@"serverType"];
  v8 = +[MSDAnalytics sharedInstance];
  [v8 sendEvent:@"com.apple.MobileStoreDemo.networkBandwidth" withPayload:v9];
}

- (void)sendNetworkRawDataEvent:(id)a3 forServerType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v9 = [v6 objectForKey:@"_kCFNTimingDataResponseEnd"];
  if (v9)
  {
    v10 = v9;
    v11 = [v6 objectForKey:@"_kCFNTimingDataResponseStart"];

    if (v11)
    {
      v12 = [v6 objectForKey:@"_kCFNTimingDataResponseEnd"];
      [v12 doubleValue];
      v14 = v13;

      v15 = [v6 objectForKey:@"_kCFNTimingDataResponseStart"];
      [v15 doubleValue];
      v17 = v16;

      v18 = [NSNumber numberWithDouble:v14 - v17];
      [v8 setObject:v18 forKey:@"responseDuration"];
    }
  }

  v19 = [v6 objectForKey:@"_kCFNTimingDataRequestEnd"];
  if (v19)
  {
    v20 = v19;
    v21 = [v6 objectForKey:@"_kCFNTimingDataRequestStart"];

    if (v21)
    {
      v22 = [v6 objectForKey:@"_kCFNTimingDataRequestEnd"];
      [v22 doubleValue];
      v24 = v23;

      v25 = [v6 objectForKey:@"_kCFNTimingDataRequestStart"];
      [v25 doubleValue];
      v27 = v26;

      v28 = [NSNumber numberWithDouble:v24 - v27];
      [v8 setObject:v28 forKey:@"requestDuration"];
    }
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v29 = v6;
  v30 = [v29 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v40;
    do
    {
      v33 = 0;
      do
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v39 + 1) + 8 * v33);
        v35 = [(MSDAnalyticsEventHandler *)self rawDataKeyMapping];
        v36 = [v35 objectForKey:v34];

        if (v36)
        {
          v37 = [v29 objectForKeyedSubscript:v34];
          [v8 setObject:v37 forKey:v36];
        }

        v33 = v33 + 1;
      }

      while (v31 != v33);
      v31 = [v29 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v31);
  }

  [v8 setObject:v7 forKey:@"serverType"];
  v38 = +[MSDAnalytics sharedInstance];
  [v38 sendEvent:@"com.apple.MobileStoreDemo.networkRawData" withPayload:v8];
}

- (void)sendAppUsageDataEvent:(id)a3 withExecutable:(id)a4 sessionUUID:(id)a5 sessionStart:(id)a6 sessionEnd:(id)a7 sessionDuration:(int64_t)a8 appOrder:(int64_t)a9 appDuration:(double)a10
{
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v27 = [(MSDAnalyticsEventHandler *)self prepareCAData:1];
  [v27 setObject:v21 forKey:@"bundleID"];

  [v27 setObject:v20 forKey:@"executableName"];
  [v27 setObject:v19 forKey:@"sessionUUID"];

  [v27 setObject:v18 forKey:@"sessionStartTime"];
  [v27 setObject:v17 forKey:@"sessionEndTime"];

  v22 = [NSNumber numberWithInteger:a8];
  [v27 setObject:v22 forKey:@"sessionDuration"];

  v23 = [NSNumber numberWithInteger:a9];
  [v27 setObject:v23 forKey:@"appOrder"];

  *&v24 = a10;
  v25 = [NSNumber numberWithFloat:v24];
  [v27 setObject:v25 forKey:@"appDuration"];

  v26 = +[MSDAnalytics sharedInstance];
  [v26 sendEvent:@"com.apple.MobileStoreDemo.appUsage" withPayload:v27];
}

- (void)sendHeartbeatEvent
{
  v3 = [(MSDAnalyticsEventHandler *)self prepareCAData:1];
  v2 = +[MSDAnalytics sharedInstance];
  [v2 sendEvent:@"com.apple.MobileStoreDemo.heartbeat" withPayload:v3];
}

- (void)sendLastShallowRefreshTime:(id)a3
{
  v4 = a3;
  v9 = [(MSDAnalyticsEventHandler *)self prepareCAData:1];
  [v4 timeIntervalSince1970];
  v6 = v5;

  v7 = [NSString stringWithFormat:@"%lld", v6];
  [v9 setObject:v7 forKey:@"LastShallowRefreshTime"];
  v8 = +[MSDAnalytics sharedInstance];
  [v8 sendEvent:@"com.apple.MobileStoreDemo.lastShallowRefreshTime" withPayload:v9];
}

- (void)sendAutoEnrollmentResults:(id)a3
{
  v27 = a3;
  v4 = [(MSDAnalyticsEventHandler *)self prepareCAData:1];
  v5 = [v27 objectForKey:@"AutoEnrollmentTimeStamp"];
  [v5 timeIntervalSince1970];
  v7 = v6;

  v8 = [NSString stringWithFormat:@"%d", v7];
  [v4 setObject:v8 forKey:@"AutoEnrollmentTimeStamp"];
  v9 = [v27 objectForKey:@"AutoEnrollmentStatus"];
  [v4 setObject:v9 forKey:@"AutoEnrollmentStatus"];

  v10 = [v27 objectForKey:@"ErrorCode"];
  [v4 setObject:v10 forKey:@"errorCode"];

  v11 = [v27 objectForKey:@"ErrorMessage"];

  if (v11)
  {
    v12 = [v27 objectForKey:@"ErrorMessage"];
    [v4 setObject:v12 forKey:@"errorMessage"];
  }

  else
  {
    [v4 setObject:@"<NOT_SET>" forKey:@"errorMessage"];
  }

  v13 = [v27 objectForKey:@"AutoEnrollmentSelectedStoreID"];

  if (v13)
  {
    v14 = [v27 objectForKey:@"AutoEnrollmentSelectedStoreID"];
    [v4 setObject:v14 forKey:@"AutoEnrollmentSelectedStoreID"];
  }

  else
  {
    [v4 setObject:@"<NOT_SET>" forKey:@"errorMessage"];
  }

  v15 = [v27 objectForKey:@"AutoEnrollmentNetworkInfo"];
  v16 = [(MSDAnalyticsEventHandler *)self getPhysicalSimCarrier:v15];

  v17 = [v27 objectForKey:@"AutoEnrollmentNetworkInfo"];
  v18 = [(MSDAnalyticsEventHandler *)self getEmbeddedSimCarrier:v17];

  [v4 setObject:v16 forKey:@"AutoEnrollmentPhyscialSIMCarrier"];
  [v4 setObject:v18 forKey:@"AutoEnrollmentEmbeddedSIMCarrier"];
  v19 = [v27 objectForKey:@"AutoEnrollmentWiFiSSID"];
  [v4 setObject:v19 forKey:@"AutoEnrollmentWiFiSSID"];

  v20 = [v27 objectForKey:@"AutoEnrollmentHelpMenuUserTapped"];

  if (v20)
  {
    v21 = [v27 objectForKey:@"AutoEnrollmentHelpMenuUserTapped"];
    v22 = [v21 allObjects];
    v23 = [v22 componentsJoinedByString:{@", "}];

    [v4 setObject:v23 forKey:@"AutoEnrollmentHelpMenuUserTapped"];
  }

  v24 = [v27 objectForKey:@"AutoEnrollmentLanguageCodeInfo"];
  [v4 setObject:v24 forKey:@"AutoEnrollmentLanguageCodeInfo"];

  v25 = [v27 objectForKey:@"AutoEnrollmentCountryCodeInfo"];
  [v4 setObject:v25 forKey:@"AutoEnrollmentCountryCodeInfo"];

  v26 = +[MSDAnalytics sharedInstance];
  [v26 sendEvent:@"com.apple.MobileStoreDemo.autoEnrollment" withPayload:v4];
}

- (void)sendAutoEnrollmentAbortEvent:(id)a3 languageCode:(id)a4 countryCode:(id)a5 networkInformation:(id)a6 wifiSSID:(id)a7
{
  v23 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = [(MSDAnalyticsEventHandler *)self prepareCAData:1];
  v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v23 code]);
  [v16 setObject:v17 forKey:@"errorCode"];

  v18 = [v23 localizedDescription];

  if (v18)
  {
    v19 = [v23 localizedDescription];
    [v16 setObject:v19 forKey:@"errorMessage"];
  }

  [v16 setObject:v12 forKey:@"AutoEnrollmentAbortLanguageCodeInfo"];
  [v16 setObject:v15 forKey:@"AutoEnrollmentAbortCountryCodeInfo"];

  v20 = [(MSDAnalyticsEventHandler *)self getPhysicalSimCarrier:v14];
  v21 = [(MSDAnalyticsEventHandler *)self getEmbeddedSimCarrier:v14];

  [v16 setObject:v20 forKey:@"AutoEnrollmentPhyscialSIMCarrier"];
  [v16 setObject:v21 forKey:@"AutoEnrollmentEmbeddedSIMCarrier"];
  [v16 setObject:v13 forKey:@"AutoEnrollmentWiFiSSID"];

  v22 = +[MSDAnalytics sharedInstance];
  [v22 sendEvent:@"com.apple.MobileStoreDemo.autoEnrollmentAbort" withPayload:v16];
}

- (id)prepareCAData:(int)a3
{
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = +[MSDTargetDevice sharedInstance];
  v7 = [v6 getDeviceOptions];
  v8 = [v7 objectForKey:@"store_id"];

  if (v8)
  {
    v9 = [v6 getDeviceOptions];
    v10 = [v9 objectForKey:@"store_id"];
  }

  else
  {
    v10 = @"<unknown>";
  }

  [v5 setObject:v10 forKey:@"storeID"];
  v11 = [v6 serialNumber];
  [v5 setObject:v11 forKey:@"deviceSerialNumber"];
  if (a3 == 1)
  {
    v12 = +[MSDTargetDevice sharedInstance];
    v13 = [v12 getDeviceOptions];

    v14 = [v13 objectForKey:@"store_type"];

    v35 = v13;
    if (v14)
    {
      v15 = [v13 objectForKey:@"store_type"];
    }

    else
    {
      v15 = @"<unknown>";
    }

    v34 = v15;
    [v5 setObject:v15 forKey:@"storeType"];
    v16 = +[MSDProgressUpdater sharedInstance];
    v17 = [v16 installedBundle];

    v18 = [v17 bundleInfo];
    v19 = [(MSDAnalyticsEventHandler *)self getDemoBundleInfo:v18];

    [v5 setObject:v19 forKey:@"demoBundleInfo"];
    v20 = objc_alloc_init(NSDateFormatter);
    [v20 setDateFormat:@"yyyy-MM-dd"];
    v21 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
    [v20 setLocale:v21];

    v22 = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    [v20 setCalendar:v22];

    v23 = [v17 getLastBundleUpdateDate];
    v24 = v23;
    if (v23 && ([v23 isEqualToString:@"<unknown>"] & 1) == 0)
    {
      v33 = v19;
      v26 = objc_alloc_init(NSDateFormatter);
      [v26 setDateFormat:@"yyyy-MM-dd"];
      v27 = [v26 dateFromString:v24];
      v25 = [v20 stringFromDate:v27];

      if (!v25)
      {
        v28 = sub_100063A54();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          sub_1000D9CD0(v28);
        }

        v25 = @"<unknown>";
      }

      v19 = v33;
    }

    else
    {

      v25 = @"<unknown>";
    }

    [v5 setObject:v25 forKey:@"lastBundleUpdateDate"];
    v29 = +[NSDate date];
    v30 = [v20 stringFromDate:v29];

    if (!v30)
    {
      v31 = sub_100063A54();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_1000D9D14(v31);
      }

      v30 = @"<unknown>";
    }

    [v5 setObject:v30 forKey:@"localDate"];
  }

  return v5;
}

- (id)getDownloadSizeBucket:(int64_t)a3
{
  v4 = [NSString stringWithFormat:@"%ld-%ld GB", a3 / 1000000000, a3 / 1000000000 + 1];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D9D58(v4, a3, v5);
  }

  return v4;
}

- (id)getDemoBundleInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"BundleName"];

  if (v4)
  {
    v5 = [v3 objectForKey:@"BundleName"];
  }

  else
  {
    v5 = @"<unknown>";
  }

  v6 = [v3 objectForKey:@"PartNumber"];

  if (v6)
  {
    v7 = [v3 objectForKey:@"PartNumber"];
  }

  else
  {
    v7 = @"<unknown>";
  }

  v8 = [v3 objectForKey:@"Revision"];

  if (v8)
  {
    v9 = [v3 objectForKey:@"Revision"];
  }

  else
  {
    v9 = @"<unknown>";
  }

  v10 = [NSString stringWithFormat:@"%@.%@.%@", v5, v7, v9];

  return v10;
}

- (id)getPhysicalSimCarrier:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = &stru_10016D9D8;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{@"SimType", v12}];
        if ([v10 isEqualToNumber:&off_10017B110])
        {
          v7 = [v9 objectForKeyedSubscript:@"Provider"];

          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = &stru_10016D9D8;
  }

LABEL_12:

  return v7;
}

- (id)getEmbeddedSimCarrier:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = &stru_10016D9D8;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{@"SimType", v12}];
        if ([v10 isEqualToNumber:&off_10017B128])
        {
          v7 = [v9 objectForKeyedSubscript:@"Provider"];

          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = &stru_10016D9D8;
  }

LABEL_12:

  return v7;
}

@end