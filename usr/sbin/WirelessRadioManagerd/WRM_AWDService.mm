@interface WRM_AWDService
+ (BOOL)checkSignificanLocationEnablementStatus;
+ (void)clearConnectivityContextBiome;
- (WRM_AWDService)init;
- (id)convetDataLqmToString:(int)string;
- (void)dealloc;
- (void)listenRTLocationsOfInterestDidClearNotification;
- (void)submitDataLinkPreferenceaMetrics;
- (void)submitMeric5GVersusWiFiLinkMetrics;
- (void)submitMericStreaming;
- (void)submitMetricWiFiCallingEnd;
- (void)submitMetricsFaceTimeHandover;
- (void)submitProximityMetrics:(BOOL)metrics;
@end

@implementation WRM_AWDService

- (void)submitMetricWiFiCallingEnd
{
  v2 = [+[WRM_MetricsService getSingleton](WRM_MetricsService "getSingleton")];
  if (v2)
  {
    v3 = v2;
    v4 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
    v5 = v4;
    if (v4)
    {
      getWatchAssociated = [v4 getWatchAssociated];
    }

    else
    {
      getWatchAssociated = 0;
    }

    [WCM_Logging logLevel:25 message:@"Submitted CA metric WiFiCallingEnd"];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100015EC8;
    v7[3] = &unk_100242590;
    v8 = getWatchAssociated;
    v7[4] = v5;
    v7[5] = v3;
    [WRM_CAInterface sendCAEventLazy:@"com.apple.Telephony.wrmWiFiCallingEnd" payloadBuilder:v7];
    [+[WRM_MetricsService getSingleton](WRM_MetricsService "getSingleton")];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"WiFiCallingEnd metric is not ready"];
  }
}

- (WRM_AWDService)init
{
  v5.receiver = self;
  v5.super_class = WRM_AWDService;
  v2 = [(WRM_AWDService *)&v5 init];
  if (v2)
  {
    v3 = [+[NSDate date](NSDate copy];
    v2->curProximityReportInterval = 0.0;
    v2->prevProximityReportInterval = 0.0;
    v2->mProximityReportTimer = v3;
  }

  return v2;
}

- (void)dealloc
{
  p_mProximityReportTimer = &self->mProximityReportTimer;
  mProximityReportTimer = self->mProximityReportTimer;
  if (mProximityReportTimer)
  {

    *p_mProximityReportTimer = 0;
    p_mProximityReportTimer[1] = 0;
    p_mProximityReportTimer[2] = 0;
  }

  v5.receiver = self;
  v5.super_class = WRM_AWDService;
  [(WRM_AWDService *)&v5 dealloc];
}

- (void)submitMetricsFaceTimeHandover
{
  v2 = [+[WRM_MetricsService getSingleton](WRM_MetricsService "getSingleton")];
  if (v2)
  {
    [WCM_Logging logLevel:16 message:@"submit CA metric com.apple.Telephony.wrmFacetimeRecommendation"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100159AA0;
    v13[3] = &unk_100242548;
    v13[4] = v2;
    [WRM_CAInterface sendCAEventLazy:@"com.apple.Telephony.wrmFacetimeRecommendation" payloadBuilder:v13];
    v3 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
    v4 = objc_alloc_init(sub_10001681C());
    v5 = objc_alloc_init(sub_10001650C());
    v6 = objc_alloc_init(sub_1000166E4());
    [v4 setTimeOfDay:{+[WRM_Timer getTimeStamp](WRM_Timer, "getTimeStamp")}];
    [v4 setWifiRssi:*(v2 + 2)];
    [v4 setWifiSNR:*(v2 + 3)];
    [v4 setWifiQbssLoad:v2[9]];
    [v4 setWifiCca:v2[8]];
    [v4 setWifiStationCount:v2[15]];
    [v4 setWifiEstimatedBW:v2[16]];
    [v4 setWifiRxPhyRate:v2[10]];
    [v4 setWifiTxPhyRate:v2[13]];
    [v4 setWifiTxPER:v2[12]];
    [v4 setWifiRxRetry:v2[11]];
    [v4 setWifiCaptiveNetworks:*(v2 + 56)];
    [v4 setCellDataLQM:v2[30]];
    [v4 setCellVoiceLQM:v2[31]];
    v7 = *(v2 + 13);
    if (v7)
    {
      if ([v7 isEqualToString:@"LTE"])
      {
        [WCM_Logging logLevel:25 message:@"GEONetworkSelectionHarvestReporter rat= LTE, rsrp=%d, snr=%d, rsrq=%d", v2[32], v2[34], v2[33]];
        [v4 setCellRatType:@"LTE"];
        [v4 setCellLteRSRP:v2[32]];
        [v4 setCellLteSNR:v2[34]];
        [v4 setCellLteRSRQ:v2[33]];
      }

      else if ([*(v2 + 13) isEqualToString:@"N_RADIO"])
      {
        [WCM_Logging logLevel:25 message:@"GEONetworkSelectionHarvestReporter rat= NR, rsrp=%d, snr=%d, rsrq=%d", v2[32], v2[34], v2[33]];
        [v4 setCellRatType:@"N_RADIO"];
        [v4 setCellNrRSRP:v2[32]];
        [v4 setCellNrSNR:v2[34]];
        [v4 setCellNrRSRQ:v2[33]];
      }
    }

    [v4 setFtFacetimeAction:v2[22]];
    [v4 setFtFacetimePacketLoss:v2[23]];
    [v4 setFtFacetimeTimeDelay:v2[24]];
    [v4 setFtCounter:v2[2]];
    [v4 setFtIRATRecommendation:*(v2 + 9)];
    [v4 setFtIRATRecommendationReason:*(v2 + 10)];
    [v4 setWrmAlertedMode:*(v2 + 140)];
    [v4 setWrmIsPCDetected:*(v2 + 142)];
    [v4 setWrmIsStallDetected:*(v2 + 143)];
    [v4 setWrmAudioErasure:v2[36]];
    [v4 setWrmVideoErasure:v2[37]];
    if ([+[WRM_SCService WRM_SCServiceControllerSingleton](WRM_SCService "WRM_SCServiceControllerSingleton")])
    {
      [v3 getLastKnownLatitude];
      [v5 setLat:?];
      [v3 getLastKnownLongitude];
      [v5 setLng:?];
      [v6 setLatLng:v5];
      [v4 setLocation:v6];
      [v5 lat];
      v9 = v8;
      [v5 lng];
      [WCM_Logging logLevel:25 message:@"GEONetworkSelectionHarvestReporter wifi primary, lat=%f, lng=%f", v9, v10];
    }

    else
    {
      [WCM_Logging logLevel:25 message:@"GEONetworkSelectionHarvestReporter wifi Not primary", v11, v12];
    }

    [sub_100016BFC() reportCellConnectionQualityHarvestRecord:v4];

    [+[WRM_MetricsService getSingleton](WRM_MetricsService "getSingleton")];
  }

  else
  {
    [WCM_Logging logLevel:16 message:@"%s: WRMMetricsiRATFaceTimeHandover metric is not ready", "[WRM_AWDService submitMetricsFaceTimeHandover]"];
  }
}

- (void)submitProximityMetrics:(BOOL)metrics
{
  v5 = [+[WRM_MetricsService getSingleton](WRM_MetricsService "getSingleton")];
  if (v5)
  {
    v6 = v5;
    v7 = dword_1002B8218;
    dword_1002B8218 = v5[14];
    [(NSDate *)self->mProximityReportTimer timeIntervalSinceNow];
    v9 = (self->prevProximityReportInterval - v8);
    self->prevProximityReportInterval = v8;
    [WCM_Logging logLevel:16 message:@"submit CA metric com.apple.Telephony.wrmLinkStateChange"];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10015A01C;
    v10[3] = &unk_100242568;
    v10[4] = v6;
    v10[5] = v9;
    v11 = v7;
    metricsCopy = metrics;
    [WRM_CAInterface sendCAEventLazy:@"com.apple.Telephony.wrmLinkStateChange" payloadBuilder:v10];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"WRMPRoximityMetrics metric is not ready"];
  }
}

- (void)submitDataLinkPreferenceaMetrics
{
  v2 = [+[WRM_MetricsService getSingleton](WRM_MetricsService "getSingleton")];
  if (v2)
  {
    [WCM_Logging logLevel:16 message:@"submit CA metric com.apple.Telephony.wrmLinkPrefChangeEvent"];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10015A394;
    v3[3] = &unk_100242548;
    v3[4] = v2;
    [WRM_CAInterface sendCAEventLazy:@"com.apple.Telephony.wrmLinkPrefChangeEvent" payloadBuilder:v3];
    v2[172] = 0;
    [+[WRM_MetricsService getSingleton](WRM_MetricsService "getSingleton")];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"WRMMetricsiRATDataRecommendation metric is not ready"];
  }
}

- (void)submitMericStreaming
{
  v2 = [+[WRM_MetricsService getSingleton](WRM_MetricsService "getSingleton")];
  if (v2)
  {
    [WCM_Logging logLevel:25 message:@"Submit CA metric com.apple.Telephony.wrmStreamingReport."];
    v3 = objc_autoreleasePoolPush();
    if (+[WRM_AWDService checkSignificanLocationEnablementStatus])
    {
      [WCM_Logging logLevel:25 message:@"Submit Connectivity Context Biome metrics."];
      v4 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
      v5 = objc_alloc_init(sub_10001650C());
      [v4 getLastKnownLatitude];
      [v5 setLat:?];
      [v4 getLastKnownLongitude];
      [v5 setLng:?];
      v33 = 0;
      v34 = &v33;
      v35 = 0x3052000000;
      v36 = sub_10015C830;
      v6 = qword_1002B8248;
      v37 = sub_10015C840;
      v38 = qword_1002B8248;
      if (!qword_1002B8248)
      {
        v28 = _NSConcreteStackBlock;
        v29 = 3221225472;
        v30 = sub_10015CB14;
        v31 = &unk_10023DCC8;
        v32 = &v33;
        sub_10015CB14(&v28);
        v6 = v34[5];
      }

      _Block_object_dispose(&v33, 8);
      [v5 lat];
      v8 = v7;
      [v5 lng];
      v10 = [v6 coordinatesToGeoHashWithLength:7 latitude:v8 longitude:v9];
      v33 = 0;
      v34 = &v33;
      v35 = 0x3052000000;
      v36 = sub_10015C830;
      v11 = qword_1002B8258;
      v37 = sub_10015C840;
      v38 = qword_1002B8258;
      if (!qword_1002B8258)
      {
        v28 = _NSConcreteStackBlock;
        v29 = 3221225472;
        v30 = sub_10015CCB4;
        v31 = &unk_10023DCC8;
        v32 = &v33;
        sub_10015CCB4(&v28);
        v11 = v34[5];
      }

      _Block_object_dispose(&v33, 8);
      v26 = [v11 alloc];
      v25 = [NSNumber numberWithUnsignedInt:v2[2]];
      v24 = [NSNumber numberWithUnsignedInt:v2[3]];
      v12 = *(v2 + 23);
      if (!v12)
      {
        v12 = @"INVALID_RAT";
      }

      v23 = v12;
      v22 = [NSNumber numberWithUnsignedInt:v2[44]];
      v21 = [NSNumber numberWithBool:*(v2 + 288)];
      if (*(v2 + 288) == 1)
      {
        v20 = [NSNumber numberWithBool:*(v2 + 289)];
      }

      else
      {
        v20 = &__kCFBooleanFalse;
      }

      v19 = [NSNumber numberWithUnsignedInt:v2[77]];
      v18 = [NSNumber numberWithUnsignedInt:v2[79]];
      v17 = [NSNumber numberWithUnsignedInt:v2[80]];
      v16 = [NSNumber numberWithUnsignedInt:v2[41]];
      v15 = [NSNumber numberWithUnsignedInt:v2[42]];
      v14 = [NSNumber numberWithInt:v2[76]];
      v13 = [v26 initWithGeohash:v10 counter:v25 event:v24 ratType:v23 rrcState:v22 cellNsaEnabled:v21 isFR1:v20 cellARFCN:v19 cellBandInfo:v18 cellChannelBW:v17 cellRsrp:v16 cellSinr:v15 cellLteRSRQ:v14 cellNrRSRP:+[NSNumber numberWithInt:](NSNumber cellNrRSRQ:"numberWithInt:" cellNrSNR:v2[73]) maxDLCAConfigured:+[NSNumber numberWithInt:](NSNumber totalConfiguredBw:"numberWithInt:" nrConfiguredBw:v2[74]) nrTotalScheduledMimoLayers:+[NSNumber numberWithInt:](NSNumber totalConfiguredMimoLayers:"numberWithInt:" lteMaxScheduledMimoLayersInACell:v2[75]) nrMaxDlModulation:+[NSNumber numberWithUnsignedInt:](NSNumber actualHighBandwidth:"numberWithUnsignedInt:" actualLowBandwidth:v2[84]) pActualLowBandwidth:+[NSNumber numberWithUnsignedInt:](NSNumber maxOfActualLowBandwidth:"numberWithUnsignedInt:" estimatedHighBandwidth:v2[85]) estimatedLowBandwidth:+[NSNumber numberWithUnsignedInt:](NSNumber movingAvgHighBandwidth:"numberWithUnsignedInt:" movingAvgLowBandwidth:v2[86]) cmDataSentCount:+[NSNumber numberWithUnsignedInt:](NSNumber cmDataSentDuration:"numberWithUnsignedInt:" tcpRTTAvg:v2[87]) tcpRTTvar:+[NSNumber numberWithUnsignedInt:](NSNumber videoStreamingStallTime:"numberWithUnsignedInt:" numStall:v2[88]) stallDuration:+[NSNumber numberWithUnsignedInt:](NSNumber cellEstimatedBW:"numberWithUnsignedInt:" cellLoad:v2[89]) cellModelConfidenceLevel:+[NSNumber numberWithUnsignedInt:](NSNumber mlPredictedCellBW:"numberWithUnsignedInt:" qbssLoad:v2[90]) lqmScorecellular:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[5]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[6]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[7]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[8]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[10]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[11]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[12]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[13]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[14]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[15]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[67]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[69]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[93]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[92]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[93]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[78]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[45]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[91]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[55]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[20]), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v2[43])}];
      [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(sub_10015AEC0() "Device")];
    }

    objc_autoreleasePoolPop(v3);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10015AFB4;
    v27[3] = &unk_100242548;
    v27[4] = v2;
    [WRM_CAInterface sendCAEventLazy:@"com.apple.Telephony.wrmStreamingReport" payloadBuilder:v27];
    [+[WRM_MetricsService getSingleton](WRM_MetricsService "getSingleton")];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"Streaming metric is not ready"];
  }
}

- (void)submitMeric5GVersusWiFiLinkMetrics
{
  v2 = [+[WRM_MetricsService getSingleton](WRM_MetricsService "getSingleton")];
  if (v2)
  {
    [WCM_Logging logLevel:16 message:@"submit CA metric com.apple.Telephony.wrmWiFiCell5GData"];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10015BC74;
    v3[3] = &unk_100242548;
    v3[4] = v2;
    [WRM_CAInterface sendCAEventLazy:@"com.apple.Telephony.wrmWiFiCell5GData" payloadBuilder:v3];
    [+[WRM_MetricsService getSingleton](WRM_MetricsService "getSingleton")];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"Cell versus WiFi metric is not ready"];
  }
}

- (id)convetDataLqmToString:(int)string
{
  if (string > 19)
  {
    switch(string)
    {
      case 20:
        return @"MinViable";
      case 50:
        return @"Poor";
      case 100:
        return @"Good";
      default:
        return @"Unknown";
    }
  }

  else
  {
    if (string != -2)
    {
      if (string == 10)
      {
        return @"Bad";
      }

      return @"Unknown";
    }

    return @"Off";
  }
}

+ (BOOL)checkSignificanLocationEnablementStatus
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = sub_10015C830;
  v3 = qword_1002B8270;
  v17 = sub_10015C840;
  v18 = qword_1002B8270;
  if (!qword_1002B8270)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10015CEC8;
    v12[3] = &unk_10023DCC8;
    v12[4] = &v13;
    sub_10015CEC8(v12);
    v3 = v14[5];
  }

  _Block_object_dispose(&v13, 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015C6F0;
  v7[3] = &unk_1002425E0;
  v7[4] = v2;
  v7[5] = &v8;
  [objc_msgSend(v3 "defaultManager")];
  v4 = dispatch_time(0, 2000000000);
  dispatch_group_wait(v2, v4);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)listenRTLocationsOfInterestDidClearNotification
{
  out_token = -1;
  notify_register_dispatch("RTLocationsOfInterestDidClearNotification", &out_token, &_dispatch_main_q, &stru_100242600);
  if (out_token == -1)
  {
    v2 = @"Failed to register for RTLocationsOfInterestDidClearNotification";
  }

  else
  {
    v2 = @"Registered successfully for RTLocationsOfInterestDidClearNotification";
  }

  [WCM_Logging logLevel:16 message:v2];
}

+ (void)clearConnectivityContextBiome
{
  [WCM_Logging logLevel:16 message:@"Clearing Connectivity Context Biome."];
  v2 = [objc_msgSend(objc_msgSend(objc_msgSend(sub_10015AEC0() "Device")];

  [v2 deleteWithPolicy:@"Significant locations cleared." eventsPassingTest:&stru_100242640];
}

@end