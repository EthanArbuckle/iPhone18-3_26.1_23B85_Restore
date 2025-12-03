@interface WRM_SymptomsService
- (BOOL)createNetworkSymptomsFeed;
- (BOOL)getNetworkFullScoreFromSF:(int)f;
- (BOOL)getNetworkUsageAdviceFromSF:(int)f;
- (BOOL)isConnectedLinkGood:(BOOL)good;
- (BOOL)isCurrentAttachPointHasChanged:(id)changed;
- (BOOL)scorecardForIKETunnel:(id)tunnel isInstant:(BOOL)instant;
- (BOOL)watchpointForIKETunnel:(id)tunnel onThreshold:(unsigned int)threshold;
- (WRM_SymptomsService)init;
- (double)evaluateNetworkBandwidth;
- (double)getAgeOfMetricDictionary:(id)dictionary;
- (double)getMetricFromDictionary:(id)dictionary :(int)a4;
- (int)mapSFNetworkAdvisoryToNetworkScore:(int)score;
- (void)dealloc;
- (void)displayIKEMetrics:(id)metrics;
- (void)notifyIRATManager:(int64_t)manager;
- (void)notifyWifiCallState:(BOOL)state;
- (void)resetSFContext;
- (void)startBrokenBackHaulTimer:(id)timer;
- (void)updateDPDMetrics:(BOOL)metrics;
- (void)updateSIPMetrics:(BOOL)metrics;
- (void)watchTcpConnectionFallBack;
@end

@implementation WRM_SymptomsService

- (WRM_SymptomsService)init
{
  v7.receiver = self;
  v7.super_class = WRM_SymptomsService;
  v2 = [(WRM_SymptomsService *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->mWifiAdvisory = 0;
    *&v2->mWifiInstantCurrent = 0u;
    *&v2->mCurrentConnectionIdentifier = 0u;
    v2->mAnalyticsWorkspace = 0;
    v2->mNetworkPerfFeed = 0;
    v2->mBackHaulLinkGood = 1;
    *&v2->mSIPTimeOutOverWiFiDetected = 0;
    v2->mWiFiNotAllowedIMSCall = 0;
    *&v2->mPrevConnAttempt = 0u;
    *&v2->mCurrentConnAttempt = 0u;
    *&v2->mCurrentMinRTT = 0u;
    *&v2->mCurrentVarRTT = 0u;
    v2->mCurrentRetryRatio = 0.0;
    *&v2->mCurrentMetricsAge = 0u;
    *&v2->mAdviceAnswered = 0u;
    v2->mFullScoreAnswered = 0;
    v2->mSFThroughEstimationTimer = [+[NSDate date](NSDate copy];
    v3->mPrevTimeSinceThroughputEstimationStarted = 0.0;
    v3->mSFQueryTimer = [+[NSDate date](NSDate copy];
    v3->mPrevTimeSinceSFQueryStarted = 0.0;
    v3->mBrokenBackhaulDetectionTimer = 0;
    v3->mABCreporter = objc_alloc_init(SDRDiagnosticReporter);
    if ([(WRM_SymptomsService *)v3 createNetworkSymptomsFeed])
    {
      v4 = @"iRAT: NetworkPerformanceFeed created.";
      v5 = 24;
    }

    else
    {
      v4 = @"iRAT: NetworkPerformanceFeed failed to create.";
      v5 = 17;
    }

    [WCM_Logging logLevel:v5 message:v4];
  }

  return v3;
}

- (void)startBrokenBackHaulTimer:(id)timer
{
  [WCM_Logging logLevel:17 message:@"iRAT: startBrokenBackHaulTimer started."];
  mBrokenBackhaulDetectionTimer = self->mBrokenBackhaulDetectionTimer;
  if (mBrokenBackhaulDetectionTimer)
  {
    [(WRM_Timer *)mBrokenBackhaulDetectionTimer invalidate];

    self->mBrokenBackhaulDetectionTimer = 0;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100155194;
  v6[3] = &unk_1002422E8;
  v6[4] = self;
  self->mBrokenBackhaulDetectionTimer = [[WRM_Timer alloc] initWithFireTimeIntervalSinceNow:timer queue:v6 block:120.0];
  [WCM_Logging logLevel:17 message:@"iRAT: startBrokenBackHaulTimer end."];
}

- (void)dealloc
{
  mBrokenBackhaulDetectionTimer = self->mBrokenBackhaulDetectionTimer;
  if (mBrokenBackhaulDetectionTimer)
  {

    self->mBrokenBackhaulDetectionTimer = 0;
  }

  mAnalyticsWorkspace = self->mAnalyticsWorkspace;
  if (mAnalyticsWorkspace)
  {
    CFRelease(mAnalyticsWorkspace);
  }

  mNetworkPerfFeed = self->mNetworkPerfFeed;
  if (mNetworkPerfFeed)
  {
    CFRelease(mNetworkPerfFeed);
  }

  mSFThroughEstimationTimer = self->mSFThroughEstimationTimer;
  if (mSFThroughEstimationTimer)
  {

    self->mSFThroughEstimationTimer = 0;
    self->mPrevTimeSinceThroughputEstimationStarted = 0.0;
  }

  mSFQueryTimer = self->mSFQueryTimer;
  if (mSFQueryTimer)
  {

    self->mSFQueryTimer = 0;
    self->mPrevTimeSinceSFQueryStarted = 0.0;
  }

  mABCreporter = self->mABCreporter;
  if (mABCreporter)
  {

    self->mABCreporter = 0;
  }

  v9.receiver = self;
  v9.super_class = WRM_SymptomsService;
  [(WRM_SymptomsService *)&v9 dealloc];
}

- (double)getAgeOfMetricDictionary:(id)dictionary
{
  v3 = 0.0;
  if (dictionary)
  {
    if ([dictionary count])
    {
      allValues = [dictionary allValues];
      if ([allValues count])
      {
        v6 = [allValues objectAtIndex:0];
        if (v6)
        {
          v7 = v6;
          if ([v6 count])
          {
            v8 = [objc_msgSend(v7 "allValues")];
            [objc_msgSend(v8 objectForKeyedSubscript:{kPerformanceNetAttachSinceTime), "timeIntervalSinceNow"}];
            return -v9;
          }
        }
      }
    }
  }

  return v3;
}

- (BOOL)isCurrentAttachPointHasChanged:(id)changed
{
  if (changed)
  {
    v5 = [changed count];
    if (v5)
    {
      v5 = [objc_msgSend(changed "allValues")];
      if (v5)
      {
        v6 = v5;
        v5 = [v5 count];
        if (v5)
        {
          v7 = [objc_msgSend(v6 "allValues")];

          self->mCurrentConnectionIdentifier = 0;
          v8 = [v7 objectForKeyedSubscript:kPerformanceNetAttachIdentifier];
          self->mCurrentConnectionIdentifier = v8;
          v9 = v8;
          if ([(NSString *)self->mPreviousConnectionIdentifier isEqualToString:self->mCurrentConnectionIdentifier])
          {
            LOBYTE(v5) = 1;
          }

          else
          {

            LOBYTE(v5) = 0;
            self->mPreviousConnectionIdentifier = self->mCurrentConnectionIdentifier;
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (double)getMetricFromDictionary:(id)dictionary :(int)a4
{
  v4 = -1.0;
  if (!dictionary)
  {
    return v4;
  }

  if (![dictionary count])
  {
    return v4;
  }

  v7 = [objc_msgSend(dictionary "allValues")];
  if (!v7)
  {
    return v4;
  }

  v8 = v7;
  if (![v7 count])
  {
    return v4;
  }

  v9 = [objc_msgSend(v8 "allValues")];
  v10 = v9;
  if (a4 <= 6)
  {
    if (a4 <= 3)
    {
      switch(a4)
      {
        case 1:
          [objc_msgSend(v9 objectForKeyedSubscript:{kPerformanceNetAttachConnSuccesses), "doubleValue"}];
          v15 = v14;
          [objc_msgSend(v10 objectForKeyedSubscript:{kPerformanceNetAttachConnAttempts), "doubleValue"}];
          return 1.0 - v15 / (v16 + 0.000001);
        case 2:
          v11 = &kPerformanceNetAttachFaultyStay;
          goto LABEL_27;
        case 3:
          v11 = &kPerformanceNetAttachLowQualyStay;
LABEL_27:
          [objc_msgSend(v9 objectForKeyedSubscript:{*v11), "doubleValue"}];
          v18 = v20;
          v19 = &kPerformanceNetAttachOverallStay;
          goto LABEL_32;
      }

LABEL_38:
      [WCM_Logging logLevel:16 message:@"iRAT: %s. invalid metric type.", "[WRM_SymptomsService getMetricFromDictionary::]"];
      return 0.0;
    }

    if (a4 == 4)
    {
      [objc_msgSend(v9 objectForKeyedSubscript:{kPerformanceNetAttachReTxBytes), "doubleValue"}];
      v18 = v17;
      v19 = &kPerformanceNetAttachBytesOut;
LABEL_32:
      [objc_msgSend(v10 objectForKeyedSubscript:{*v19), "doubleValue"}];
      return v18 / (v23 + 0.000001);
    }

    if (a4 == 5)
    {
      [objc_msgSend(v9 objectForKeyedSubscript:{kPerformanceNetAttachRxDupeBytes), "doubleValue"}];
      v18 = v22;
      v19 = &kPerformanceNetAttachBytesIn;
      goto LABEL_32;
    }

    v13 = &kPerformanceNetAttachRttMin;
LABEL_29:
    [objc_msgSend(v9 objectForKeyedSubscript:{*v13), "doubleValue"}];
    v4 = v21;
    if (v21 == 1.79769313e308)
    {
      return 9999.0;
    }

    return v4;
  }

  if (a4 > 9)
  {
    switch(a4)
    {
      case 10:
        v12 = &kPerformanceNetAttachConnSuccesses;
        break;
      case 11:
        v12 = &kPerformanceNetAttachPacketsIn;
        break;
      case 13:
        v12 = &kPerformanceNetAttachBytesIn;
        break;
      default:
        goto LABEL_38;
    }
  }

  else
  {
    if (a4 == 7)
    {
      v13 = &kPerformanceNetAttachRttAvg;
      goto LABEL_29;
    }

    if (a4 == 8)
    {
      v13 = &kPerformanceNetAttachRttVar;
      goto LABEL_29;
    }

    v12 = &kPerformanceNetAttachConnAttempts;
  }

  v25 = [v9 objectForKeyedSubscript:*v12];

  [v25 doubleValue];
  return result;
}

- (BOOL)createNetworkSymptomsFeed
{
  if (self->mNetworkPerfFeed)
  {
    [WCM_Logging logLevel:20 message:@"iRAT: NetworkPerFeed already created."];
LABEL_3:
    LOBYTE(v2) = 1;
    return v2;
  }

  v4 = [AnalyticsWorkspace alloc];
  v2 = [v4 initWorkspaceWithService:kSymptomAnalyticsServiceEndpoint];
  self->mAnalyticsWorkspace = v2;
  if (v2)
  {
    v2 = [[NetworkPerformanceFeed alloc] initWithWorkspace:self->mAnalyticsWorkspace];
    self->mNetworkPerfFeed = v2;
    if (v2)
    {
      -[AnalyticsWorkspace setQueue:](v2, "setQueue:", [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")]);
      out_token = 0;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100155A68;
      v6[3] = &unk_10023E178;
      v6[4] = self;
      notify_register_dispatch("com.apple.networkd.started", &out_token, &_dispatch_main_q, v6);
      goto LABEL_3;
    }
  }

  return v2;
}

- (BOOL)getNetworkUsageAdviceFromSF:(int)f
{
  if (f)
  {
    if (f != 1)
    {
      [WCM_Logging logLevel:16 message:@"%s. Unsupported network type %s.", "[WRM_SymptomsService getNetworkUsageAdviceFromSF:]", "WRM_NETWORK_TYPE_INVALID!!!"];
      LOBYTE(v7) = 0;
      return v7;
    }

    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  mNetworkPerfFeed = self->mNetworkPerfFeed;
  if (!mNetworkPerfFeed)
  {
    [(WRM_SymptomsService *)self createNetworkSymptomsFeed];
    mNetworkPerfFeed = self->mNetworkPerfFeed;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100155BF4;
  v11[3] = &unk_100242310;
  fCopy = f;
  v11[4] = self;
  v7 = [(NetworkPerformanceFeed *)mNetworkPerfFeed usageConsultOn:v5 onlyRelativeToReferencePoint:0 reply:v11];
  if (v7)
  {
    ++self->mAdviceQueried;
    v8 = "TRUE";
  }

  else
  {
    v8 = "FALSE";
  }

  v9 = "WRM_NETWORK_TYPE_INVALID!!!";
  if (f == 1)
  {
    v9 = "CELLULAR";
  }

  if (!f)
  {
    v9 = "WIFI";
  }

  [WCM_Logging logLevel:24 message:@"iRAT: %s: query Symptom Framework for %s advice rtn: %s", "[WRM_SymptomsService getNetworkUsageAdviceFromSF:]", v9, v8];
  return v7;
}

- (BOOL)getNetworkFullScoreFromSF:(int)f
{
  if (f == 1)
  {
    v8 = "CELLULAR";
LABEL_9:
    [WCM_Logging logLevel:16 message:@"%s. Unsupported network type %s.", "[WRM_SymptomsService getNetworkFullScoreFromSF:]", v8];
    LOBYTE(v6) = 0;
    return v6;
  }

  if (f)
  {
    v8 = "WRM_NETWORK_TYPE_INVALID!!!";
    goto LABEL_9;
  }

  if (!self->mNetworkPerfFeed)
  {
    [(WRM_SymptomsService *)self createNetworkSymptomsFeed];
  }

  v4 = [NSDictionary dictionaryWithObjectsAndKeys:kSymptomAnalyticsServiceNetworkAttachmentCurrent, kSymptomAnalyticsServiceNetworkAttachmentInstant, 0];
  mNetworkPerfFeed = self->mNetworkPerfFeed;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100155E4C;
  v10[3] = &unk_100242338;
  v10[4] = self;
  v11 = 0;
  v6 = [(NetworkPerformanceFeed *)mNetworkPerfFeed fullScorecardFor:1 options:v4 reply:v10];
  if (v6)
  {
    ++self->mFullScoreQueried;
    v7 = "TRUE";
  }

  else
  {
    v7 = "FALSE";
  }

  [WCM_Logging logLevel:24 message:@"iRAT: %s: query Symptom Framework for %s full score rtn: %s", "[WRM_SymptomsService getNetworkFullScoreFromSF:]", "WIFI", v7];
  return v6;
}

- (int)mapSFNetworkAdvisoryToNetworkScore:(int)score
{
  if (score == 7)
  {
    v3 = 3;
  }

  else
  {
    v3 = -100;
  }

  if (score == 6)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if (score == 5)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if ((score - 3) >= 2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if ((score & 0xFFFFFFFD) != 0)
  {
    return v6;
  }

  else
  {
    return -2;
  }
}

- (void)notifyWifiCallState:(BOOL)state
{
  if (state)
  {
    v3 = @"iRAT: Sending WiFiCallOnSymtomps.";
  }

  else
  {
    v3 = @"iRAT: Sending WIFIcallOFFSymtomps.";
  }

  v4 = symptom_create();
  [WCM_Logging logLevel:20 message:v3];

  _symptom_send(v4);
}

- (void)watchTcpConnectionFallBack
{
  [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  if (!tcp_connection_fallback_watcher_create())
  {
    [WCM_Logging logLevel:24 message:@"iRAT: Failed to create TCP Connection Wacther"];
  }
}

- (void)displayIKEMetrics:(id)metrics
{
  if (metrics && [metrics count])
  {
    v4 = [metrics objectForKeyedSubscript:kSymptomAnalyticsServiceFlowInstant];
    v5 = [metrics objectForKeyedSubscript:kSymptomAnalyticsServiceFlowHistorical];
    if (v4)
    {
      v5 = v4;
    }

    if (v5)
    {

      [v5 enumerateKeysAndObjectsUsingBlock:&stru_100242378];
    }
  }
}

- (double)evaluateNetworkBandwidth
{
  if (self->mCurrentBytesIn <= self->mPrevBytesIn)
  {
    [WCM_Logging logLevel:20 message:@"iRAT: Symptom Metrics not evaluating throughput", v10, v11, v12, v13, v14];
  }

  else
  {
    [(NSDate *)self->mSFThroughEstimationTimer timeIntervalSinceNow];
    v4 = self->mPrevTimeSinceThroughputEstimationStarted - v3;
    v5 = self->mCurrentBytesIn - self->mPrevBytesIn;
    v6 = v5 / (self->mCurrentPacketsIn - self->mPrevPacketsIn + 0.000001);
    v7 = v5 * 8.0 / (v4 * 1000000.0);
    v8 = (v7 + self->mAvgNetworkThroughput * 19.0) / 20.0;
    self->mNetworkThroughput = v7;
    self->mAvgNetworkThroughput = v8;
    self->mPrevTimeSinceThroughputEstimationStarted = v3;
    [WCM_Logging logLevel:28 message:@"iRAT: Symptom Metrics Throughput Estimation, Duration: %.2f, Delta Bytes: %.2f, Throughput:%.2f, Average Pkt Size: %.2f AVG Bandwidth: %.2f", *&v4, *&v5, *&v7, *&v6, *&v8];
  }

  return self->mNetworkThroughput;
}

- (BOOL)scorecardForIKETunnel:(id)tunnel isInstant:(BOOL)instant
{
  instantCopy = instant;
  v6 = kSymptomAnalyticsServiceFlowTagIKE;
  v7 = kSymptomAnalyticsServiceFlowTag;
  if (!tunnel)
  {
    tunnel = +[NSNull null];
  }

  v8 = &kSymptomAnalyticsServiceFlowInstant;
  if (!instantCopy)
  {
    v8 = &kSymptomAnalyticsServiceFlowHistorical;
  }

  v9 = [NSDictionary dictionaryWithObjectsAndKeys:v6, v7, tunnel, *v8, 0];
  mNetworkPerfFeed = self->mNetworkPerfFeed;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10015678C;
  v12[3] = &unk_1002423A0;
  v12[4] = self;
  if (([(NetworkPerformanceFeed *)mNetworkPerfFeed fullScorecardFor:1 options:v9 reply:v12]& 1) != 0)
  {
    ++self->mFullScoreQueried;
  }

  else
  {
    [WCM_Logging logLevel:20 message:@"iRAT: Failed to ussye scorecard request."];
  }

  return 1;
}

- (BOOL)watchpointForIKETunnel:(id)tunnel onThreshold:(unsigned int)threshold
{
  v7 = [NSDictionary dictionaryWithObjectsAndKeys:kSymptomAnalyticsServiceFlowTagIKE, kSymptomAnalyticsServiceFlowTag, 0];
  mNetworkPerfFeed = self->mNetworkPerfFeed;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001569E4;
  v10[3] = &unk_1002423A0;
  v10[4] = self;
  if (([(NetworkPerformanceFeed *)mNetworkPerfFeed watchpointOn:1 forIdentifier:tunnel andKey:kPerformanceFlowTxReTxPackets onThreshold:v7 withOptions:v10 uponHit:threshold]& 1) == 0)
  {
    [WCM_Logging logLevel:20 message:@"iRAT: Failed to issue watchpoint request."];
  }

  return 1;
}

- (void)resetSFContext
{
  self->mBackHaulLinkGood = 1;
  self->mCurrentMetricsAge = 0.0;
  *&self->mPrevConnAttempt = 0u;
  *&self->mCurrentConnAttempt = 0u;
  *&self->mCurrentMinRTT = 0u;
  self->mCurrentVarRTT = 0.0;
}

- (BOOL)isConnectedLinkGood:(BOOL)good
{
  [WCM_Logging logLevel:20 message:@"isConnectedLinkGood called"];
  if ([(WRM_SymptomsService *)self isWiFiNotUsableForIMSCall])
  {
    self->mWiFiNotAllowedIMSCall = 1;
  }

  mSIPTimeOutOverWiFiDetected = self->mSIPTimeOutOverWiFiDetected;
  mWiFiIPsecTunnelDisconnected = self->mWiFiIPsecTunnelDisconnected;
  if (mSIPTimeOutOverWiFiDetected || mWiFiIPsecTunnelDisconnected || self->mWiFiNotAllowedIMSCall)
  {
    [WCM_Logging logLevel:20 message:@"SIP TMO: %d, DPD failure: %d, WiFi not usable: %d", mSIPTimeOutOverWiFiDetected, mWiFiIPsecTunnelDisconnected, [(WRM_SymptomsService *)self isWiFiNotUsableForIMSCall]];
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  [WCM_Logging logLevel:24 message:@"isConnectedLinkGood status %d", v6];
  return v6;
}

- (void)notifyIRATManager:(int64_t)manager
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "kWRMM_IKEv2_RTT_UPDATE", manager);
  *keys = *off_1002423E0;
  values[0] = xpc_uint64_create(0x3EAuLL);
  values[1] = v4;
  v5 = xpc_dictionary_create(keys, values, 2uLL);
  *v8 = *off_1002423F0;
  object[0] = xpc_uint64_create(0x3E8uLL);
  object[1] = v5;
  v6 = xpc_dictionary_create(v8, object, 2uLL);
  [WCM_Logging logLevel:20 message:@"%s: ready to send a xpc message: %@.", "[WRM_SymptomsService notifyIRATManager:]", v6];
  [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  xpc_release(object[0]);
  xpc_release(v6);
  xpc_release(values[0]);
  xpc_release(v5);
  xpc_release(v4);
}

- (void)updateSIPMetrics:(BOOL)metrics
{
  self->mSIPTimeOutOverWiFiDetected = metrics;
  if (metrics)
  {
    ++self->mSIPTimeoutCount;
  }
}

- (void)updateDPDMetrics:(BOOL)metrics
{
  self->mWiFiIPsecTunnelDisconnected = metrics;
  if (metrics)
  {
    ++self->mDPDFailureCount;
  }
}

@end