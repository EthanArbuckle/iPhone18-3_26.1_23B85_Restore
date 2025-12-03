@interface MSDAnalyticsEventHandler
+ (id)sharedInstance;
- (MSDAnalyticsEventHandler)init;
- (id)getDemoBundleInfo:(id)info;
- (id)getDownloadSizeBucket:(int64_t)bucket;
- (id)getEmbeddedSimCarrier:(id)carrier;
- (id)getPhysicalSimCarrier:(id)carrier;
- (id)prepareCAData:(int)data;
- (void)sendAppUsageDataEvent:(id)event withExecutable:(id)executable sessionUUID:(id)d sessionStart:(id)start sessionEnd:(id)end sessionDuration:(int64_t)duration appOrder:(int64_t)order appDuration:(double)self0;
- (void)sendAutoEnrollmentAbortEvent:(id)event languageCode:(id)code countryCode:(id)countryCode networkInformation:(id)information wifiSSID:(id)d;
- (void)sendAutoEnrollmentResults:(id)results;
- (void)sendBgDownloadPausedEvent:(int64_t)event forReason:(id)reason;
- (void)sendContinuityLinkingFailureEvent:(id)event;
- (void)sendEnrollmentFailureEvent:(id)event;
- (void)sendFMHFailureEvent:(id)event;
- (void)sendFileDownloadSourceEvent:(id)event;
- (void)sendHeartbeatEvent;
- (void)sendLastShallowRefreshTime:(id)time;
- (void)sendNetworkAverageBandwidthEvent:(int64_t)event forServerType:(id)type;
- (void)sendNetworkAverageRTTEvent:(int64_t)event forServerType:(id)type;
- (void)sendNetworkFailureEvent:(id)event forServerType:(id)type;
- (void)sendNetworkPacketLossEvent:(int64_t)event forServerType:(id)type;
- (void)sendNetworkRawDataEvent:(id)event forServerType:(id)type;
- (void)sendOSUpdateFailureEvent:(id)event;
- (void)sendiCloudSigninFailureEvent:(id)event;
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

- (void)sendiCloudSigninFailureEvent:(id)event
{
  eventCopy = event;
  v8 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [eventCopy code]);
  [v8 setObject:v5 forKey:@"errorCode"];

  localizedDescription = [eventCopy localizedDescription];

  [v8 setObject:localizedDescription forKey:@"errorMessage"];
  v7 = +[MSDAnalytics sharedInstance];
  [v7 sendEvent:@"com.apple.MobileStoreDemo.icloudSignInFailure" withPayload:v8];
}

- (void)sendContinuityLinkingFailureEvent:(id)event
{
  eventCopy = event;
  v8 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [eventCopy code]);
  [v8 setObject:v5 forKey:@"errorCode"];

  localizedDescription = [eventCopy localizedDescription];

  [v8 setObject:localizedDescription forKey:@"errorMessage"];
  v7 = +[MSDAnalytics sharedInstance];
  [v7 sendEvent:@"com.apple.MobileStoreDemo.continuityLinkingFailure" withPayload:v8];
}

- (void)sendOSUpdateFailureEvent:(id)event
{
  eventCopy = event;
  v8 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [eventCopy code]);
  [v8 setObject:v5 forKey:@"errorCode"];

  localizedDescription = [eventCopy localizedDescription];

  [v8 setObject:localizedDescription forKey:@"errorMessage"];
  v7 = +[MSDAnalytics sharedInstance];
  [v7 sendEvent:@"com.apple.MobileStoreDemo.osUpdateFailure" withPayload:v8];
}

- (void)sendFMHFailureEvent:(id)event
{
  eventCopy = event;
  v8 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [eventCopy code]);
  [v8 setObject:v5 forKey:@"errorCode"];

  localizedDescription = [eventCopy localizedDescription];

  [v8 setObject:localizedDescription forKey:@"errorMessage"];
  v7 = +[MSDAnalytics sharedInstance];
  [v7 sendEvent:@"com.apple.MobileStoreDemo.fmhFailure" withPayload:v8];
}

- (void)sendEnrollmentFailureEvent:(id)event
{
  eventCopy = event;
  v8 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [eventCopy code]);
  [v8 setObject:v5 forKey:@"errorCode"];

  localizedDescription = [eventCopy localizedDescription];

  [v8 setObject:localizedDescription forKey:@"errorMessage"];
  v7 = +[MSDAnalytics sharedInstance];
  [v7 sendEvent:@"com.apple.MobileStoreDemo.enrollmentFailure" withPayload:v8];
}

- (void)sendNetworkFailureEvent:(id)event forServerType:(id)type
{
  typeCopy = type;
  eventCopy = event;
  v11 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [eventCopy code]);
  [v11 setObject:v8 forKey:@"errorCode"];

  [v11 setObject:typeCopy forKey:@"serverType"];
  localizedDescription = [eventCopy localizedDescription];

  [v11 setObject:localizedDescription forKey:@"errorMessage"];
  v10 = +[MSDAnalytics sharedInstance];
  [v10 sendEvent:@"com.apple.MobileStoreDemo.networkFailure" withPayload:v11];
}

- (void)sendBgDownloadPausedEvent:(int64_t)event forReason:(id)reason
{
  reasonCopy = reason;
  v9 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v7 = [NSNumber numberWithInt:event];
  [v9 setObject:v7 forKey:@"pauseDuration"];

  [v9 setObject:reasonCopy forKey:@"pauseReason"];
  v8 = +[MSDAnalytics sharedInstance];
  [v8 sendEvent:@"com.apple.MobileStoreDemo.bgDownloadPaused" withPayload:v9];
}

- (void)sendFileDownloadSourceEvent:(id)event
{
  eventCopy = event;
  v6 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  [v6 setObject:eventCopy forKey:@"fileDownloadSource"];

  v5 = +[MSDAnalytics sharedInstance];
  [v5 sendEvent:@"com.apple.MobileStoreDemo.fileDownloadSource" withPayload:v6];
}

- (void)sendNetworkAverageRTTEvent:(int64_t)event forServerType:(id)type
{
  typeCopy = type;
  v9 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v7 = [NSNumber numberWithInt:event];
  [v9 setObject:v7 forKey:@"avgRTT"];

  [v9 setObject:typeCopy forKey:@"serverType"];
  v8 = +[MSDAnalytics sharedInstance];
  [v8 sendEvent:@"com.apple.MobileStoreDemo.networkRTT" withPayload:v9];
}

- (void)sendNetworkPacketLossEvent:(int64_t)event forServerType:(id)type
{
  typeCopy = type;
  v9 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v7 = [NSNumber numberWithInt:event];
  [v9 setObject:v7 forKey:@"packetLoss"];

  [v9 setObject:typeCopy forKey:@"serverType"];
  v8 = +[MSDAnalytics sharedInstance];
  [v8 sendEvent:@"com.apple.MobileStoreDemo.networkPacketLoss" withPayload:v9];
}

- (void)sendNetworkAverageBandwidthEvent:(int64_t)event forServerType:(id)type
{
  typeCopy = type;
  v9 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v7 = [NSNumber numberWithInt:event];
  [v9 setObject:v7 forKey:@"avgBandwidth"];

  [v9 setObject:typeCopy forKey:@"serverType"];
  v8 = +[MSDAnalytics sharedInstance];
  [v8 sendEvent:@"com.apple.MobileStoreDemo.networkBandwidth" withPayload:v9];
}

- (void)sendNetworkRawDataEvent:(id)event forServerType:(id)type
{
  eventCopy = event;
  typeCopy = type;
  v8 = [(MSDAnalyticsEventHandler *)self prepareCAData:0];
  v9 = [eventCopy objectForKey:@"_kCFNTimingDataResponseEnd"];
  if (v9)
  {
    v10 = v9;
    v11 = [eventCopy objectForKey:@"_kCFNTimingDataResponseStart"];

    if (v11)
    {
      v12 = [eventCopy objectForKey:@"_kCFNTimingDataResponseEnd"];
      [v12 doubleValue];
      v14 = v13;

      v15 = [eventCopy objectForKey:@"_kCFNTimingDataResponseStart"];
      [v15 doubleValue];
      v17 = v16;

      v18 = [NSNumber numberWithDouble:v14 - v17];
      [v8 setObject:v18 forKey:@"responseDuration"];
    }
  }

  v19 = [eventCopy objectForKey:@"_kCFNTimingDataRequestEnd"];
  if (v19)
  {
    v20 = v19;
    v21 = [eventCopy objectForKey:@"_kCFNTimingDataRequestStart"];

    if (v21)
    {
      v22 = [eventCopy objectForKey:@"_kCFNTimingDataRequestEnd"];
      [v22 doubleValue];
      v24 = v23;

      v25 = [eventCopy objectForKey:@"_kCFNTimingDataRequestStart"];
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
  v29 = eventCopy;
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
        rawDataKeyMapping = [(MSDAnalyticsEventHandler *)self rawDataKeyMapping];
        v36 = [rawDataKeyMapping objectForKey:v34];

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

  [v8 setObject:typeCopy forKey:@"serverType"];
  v38 = +[MSDAnalytics sharedInstance];
  [v38 sendEvent:@"com.apple.MobileStoreDemo.networkRawData" withPayload:v8];
}

- (void)sendAppUsageDataEvent:(id)event withExecutable:(id)executable sessionUUID:(id)d sessionStart:(id)start sessionEnd:(id)end sessionDuration:(int64_t)duration appOrder:(int64_t)order appDuration:(double)self0
{
  endCopy = end;
  startCopy = start;
  dCopy = d;
  executableCopy = executable;
  eventCopy = event;
  v27 = [(MSDAnalyticsEventHandler *)self prepareCAData:1];
  [v27 setObject:eventCopy forKey:@"bundleID"];

  [v27 setObject:executableCopy forKey:@"executableName"];
  [v27 setObject:dCopy forKey:@"sessionUUID"];

  [v27 setObject:startCopy forKey:@"sessionStartTime"];
  [v27 setObject:endCopy forKey:@"sessionEndTime"];

  v22 = [NSNumber numberWithInteger:duration];
  [v27 setObject:v22 forKey:@"sessionDuration"];

  v23 = [NSNumber numberWithInteger:order];
  [v27 setObject:v23 forKey:@"appOrder"];

  *&v24 = appDuration;
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

- (void)sendLastShallowRefreshTime:(id)time
{
  timeCopy = time;
  v9 = [(MSDAnalyticsEventHandler *)self prepareCAData:1];
  [timeCopy timeIntervalSince1970];
  v6 = v5;

  v7 = [NSString stringWithFormat:@"%lld", v6];
  [v9 setObject:v7 forKey:@"LastShallowRefreshTime"];
  v8 = +[MSDAnalytics sharedInstance];
  [v8 sendEvent:@"com.apple.MobileStoreDemo.lastShallowRefreshTime" withPayload:v9];
}

- (void)sendAutoEnrollmentResults:(id)results
{
  resultsCopy = results;
  v4 = [(MSDAnalyticsEventHandler *)self prepareCAData:1];
  v5 = [resultsCopy objectForKey:@"AutoEnrollmentTimeStamp"];
  [v5 timeIntervalSince1970];
  v7 = v6;

  v8 = [NSString stringWithFormat:@"%d", v7];
  [v4 setObject:v8 forKey:@"AutoEnrollmentTimeStamp"];
  v9 = [resultsCopy objectForKey:@"AutoEnrollmentStatus"];
  [v4 setObject:v9 forKey:@"AutoEnrollmentStatus"];

  v10 = [resultsCopy objectForKey:@"ErrorCode"];
  [v4 setObject:v10 forKey:@"errorCode"];

  v11 = [resultsCopy objectForKey:@"ErrorMessage"];

  if (v11)
  {
    v12 = [resultsCopy objectForKey:@"ErrorMessage"];
    [v4 setObject:v12 forKey:@"errorMessage"];
  }

  else
  {
    [v4 setObject:@"<NOT_SET>" forKey:@"errorMessage"];
  }

  v13 = [resultsCopy objectForKey:@"AutoEnrollmentSelectedStoreID"];

  if (v13)
  {
    v14 = [resultsCopy objectForKey:@"AutoEnrollmentSelectedStoreID"];
    [v4 setObject:v14 forKey:@"AutoEnrollmentSelectedStoreID"];
  }

  else
  {
    [v4 setObject:@"<NOT_SET>" forKey:@"errorMessage"];
  }

  v15 = [resultsCopy objectForKey:@"AutoEnrollmentNetworkInfo"];
  v16 = [(MSDAnalyticsEventHandler *)self getPhysicalSimCarrier:v15];

  v17 = [resultsCopy objectForKey:@"AutoEnrollmentNetworkInfo"];
  v18 = [(MSDAnalyticsEventHandler *)self getEmbeddedSimCarrier:v17];

  [v4 setObject:v16 forKey:@"AutoEnrollmentPhyscialSIMCarrier"];
  [v4 setObject:v18 forKey:@"AutoEnrollmentEmbeddedSIMCarrier"];
  v19 = [resultsCopy objectForKey:@"AutoEnrollmentWiFiSSID"];
  [v4 setObject:v19 forKey:@"AutoEnrollmentWiFiSSID"];

  v20 = [resultsCopy objectForKey:@"AutoEnrollmentHelpMenuUserTapped"];

  if (v20)
  {
    v21 = [resultsCopy objectForKey:@"AutoEnrollmentHelpMenuUserTapped"];
    allObjects = [v21 allObjects];
    v23 = [allObjects componentsJoinedByString:{@", "}];

    [v4 setObject:v23 forKey:@"AutoEnrollmentHelpMenuUserTapped"];
  }

  v24 = [resultsCopy objectForKey:@"AutoEnrollmentLanguageCodeInfo"];
  [v4 setObject:v24 forKey:@"AutoEnrollmentLanguageCodeInfo"];

  v25 = [resultsCopy objectForKey:@"AutoEnrollmentCountryCodeInfo"];
  [v4 setObject:v25 forKey:@"AutoEnrollmentCountryCodeInfo"];

  v26 = +[MSDAnalytics sharedInstance];
  [v26 sendEvent:@"com.apple.MobileStoreDemo.autoEnrollment" withPayload:v4];
}

- (void)sendAutoEnrollmentAbortEvent:(id)event languageCode:(id)code countryCode:(id)countryCode networkInformation:(id)information wifiSSID:(id)d
{
  eventCopy = event;
  codeCopy = code;
  dCopy = d;
  informationCopy = information;
  countryCodeCopy = countryCode;
  v16 = [(MSDAnalyticsEventHandler *)self prepareCAData:1];
  v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [eventCopy code]);
  [v16 setObject:v17 forKey:@"errorCode"];

  localizedDescription = [eventCopy localizedDescription];

  if (localizedDescription)
  {
    localizedDescription2 = [eventCopy localizedDescription];
    [v16 setObject:localizedDescription2 forKey:@"errorMessage"];
  }

  [v16 setObject:codeCopy forKey:@"AutoEnrollmentAbortLanguageCodeInfo"];
  [v16 setObject:countryCodeCopy forKey:@"AutoEnrollmentAbortCountryCodeInfo"];

  v20 = [(MSDAnalyticsEventHandler *)self getPhysicalSimCarrier:informationCopy];
  v21 = [(MSDAnalyticsEventHandler *)self getEmbeddedSimCarrier:informationCopy];

  [v16 setObject:v20 forKey:@"AutoEnrollmentPhyscialSIMCarrier"];
  [v16 setObject:v21 forKey:@"AutoEnrollmentEmbeddedSIMCarrier"];
  [v16 setObject:dCopy forKey:@"AutoEnrollmentWiFiSSID"];

  v22 = +[MSDAnalytics sharedInstance];
  [v22 sendEvent:@"com.apple.MobileStoreDemo.autoEnrollmentAbort" withPayload:v16];
}

- (id)prepareCAData:(int)data
{
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = +[MSDTargetDevice sharedInstance];
  getDeviceOptions = [v6 getDeviceOptions];
  v8 = [getDeviceOptions objectForKey:@"store_id"];

  if (v8)
  {
    getDeviceOptions2 = [v6 getDeviceOptions];
    v10 = [getDeviceOptions2 objectForKey:@"store_id"];
  }

  else
  {
    v10 = @"<unknown>";
  }

  [v5 setObject:v10 forKey:@"storeID"];
  serialNumber = [v6 serialNumber];
  [v5 setObject:serialNumber forKey:@"deviceSerialNumber"];
  if (data == 1)
  {
    v12 = +[MSDTargetDevice sharedInstance];
    getDeviceOptions3 = [v12 getDeviceOptions];

    v14 = [getDeviceOptions3 objectForKey:@"store_type"];

    v35 = getDeviceOptions3;
    if (v14)
    {
      v15 = [getDeviceOptions3 objectForKey:@"store_type"];
    }

    else
    {
      v15 = @"<unknown>";
    }

    v34 = v15;
    [v5 setObject:v15 forKey:@"storeType"];
    v16 = +[MSDProgressUpdater sharedInstance];
    installedBundle = [v16 installedBundle];

    bundleInfo = [installedBundle bundleInfo];
    v19 = [(MSDAnalyticsEventHandler *)self getDemoBundleInfo:bundleInfo];

    [v5 setObject:v19 forKey:@"demoBundleInfo"];
    v20 = objc_alloc_init(NSDateFormatter);
    [v20 setDateFormat:@"yyyy-MM-dd"];
    v21 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
    [v20 setLocale:v21];

    v22 = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    [v20 setCalendar:v22];

    getLastBundleUpdateDate = [installedBundle getLastBundleUpdateDate];
    v24 = getLastBundleUpdateDate;
    if (getLastBundleUpdateDate && ([getLastBundleUpdateDate isEqualToString:@"<unknown>"] & 1) == 0)
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

- (id)getDownloadSizeBucket:(int64_t)bucket
{
  v4 = [NSString stringWithFormat:@"%ld-%ld GB", bucket / 1000000000, bucket / 1000000000 + 1];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D9D58(v4, bucket, v5);
  }

  return v4;
}

- (id)getDemoBundleInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKey:@"BundleName"];

  if (v4)
  {
    v5 = [infoCopy objectForKey:@"BundleName"];
  }

  else
  {
    v5 = @"<unknown>";
  }

  v6 = [infoCopy objectForKey:@"PartNumber"];

  if (v6)
  {
    v7 = [infoCopy objectForKey:@"PartNumber"];
  }

  else
  {
    v7 = @"<unknown>";
  }

  v8 = [infoCopy objectForKey:@"Revision"];

  if (v8)
  {
    v9 = [infoCopy objectForKey:@"Revision"];
  }

  else
  {
    v9 = @"<unknown>";
  }

  v10 = [NSString stringWithFormat:@"%@.%@.%@", v5, v7, v9];

  return v10;
}

- (id)getPhysicalSimCarrier:(id)carrier
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  carrierCopy = carrier;
  v4 = [carrierCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(carrierCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{@"SimType", v12}];
        if ([v10 isEqualToNumber:&off_10017B110])
        {
          v7 = [v9 objectForKeyedSubscript:@"Provider"];

          goto LABEL_12;
        }
      }

      v5 = [carrierCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)getEmbeddedSimCarrier:(id)carrier
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  carrierCopy = carrier;
  v4 = [carrierCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(carrierCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{@"SimType", v12}];
        if ([v10 isEqualToNumber:&off_10017B128])
        {
          v7 = [v9 objectForKeyedSubscript:@"Provider"];

          goto LABEL_12;
        }
      }

      v5 = [carrierCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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