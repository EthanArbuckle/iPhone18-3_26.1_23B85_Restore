@interface WRM_BWEvalManager
+ (id)WRM_BWEvalManagerSingleton;
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)doesIRATClientSubscriptionContextExist;
- (BOOL)isSmartDataModeEnabled;
- (BOOL)isWiFiPrimary;
- (BOOL)needWiFiLQM;
- (WRM_BWEvalManager)init;
- (id)getSpeedTestMetrics;
- (id)getiRATClientFromList:(int)list;
- (int)getDeltaIPStats:(unint64_t *)stats :(unint64_t *)a4 :(unint64_t *)a5 :(unint64_t *)a6;
- (unint64_t)getLPMState;
- (unsigned)countStreamingEvent;
- (unsigned)getMLPredictedCellBW;
- (unsigned)getMLPredictedWiFiBW;
- (unsigned)getPredictedCellBW:(double *)w backhaul:(double)backhaul;
- (unsigned)getPredictedWiFiBW:(double *)w backhaul:(double)backhaul;
- (unsigned)getPredictedWiFiBandwidth:(double *)bandwidth;
- (void)addiRatClient:(id)client;
- (void)calcAdjustedBandwith:(id *)bandwith :(float)a4;
- (void)createMLModel;
- (void)dealloc;
- (void)evaluateCellularBandwidth:(id *)bandwidth;
- (void)evaluateSDMBWChangeNotification:(unint64_t)notification;
- (void)evaluateWiFiBandwidth:(id *)bandwidth;
- (void)evaluateWiFiLink;
- (void)feedAWDCoreWiFiMetrics;
- (void)feedAWDRadioStats;
- (void)feedAWDStreamingStats:(id *)stats;
- (void)getInitialIPStats;
- (void)handleAppStateChange:(id)change;
- (void)handleCellularDataMetricsRequest:(id)request;
- (void)handleControllerAvailability:(unint64_t)availability;
- (void)handleEnhancedBufferingNotificatione:(id)notificatione;
- (void)handleGetMLPredictedThroughput:(id)throughput;
- (void)handleGetStreamingMetrics:(id)metrics;
- (void)handleInternalMessage:(id)message;
- (void)handleLinkPrefSubscribe:(id)subscribe;
- (void)handleNrPhyMetricsRequest:(id)request;
- (void)handleQSHMetrics:(id)metrics;
- (void)handleSessionNotification:(id)notification;
- (void)handleUpdateStallMessage:(id)message;
- (void)handleWiFiMetricsRequest:(id)request;
- (void)handleWiFiRegistered;
- (void)handleWiFiStateChaneEvents:(id)events;
- (void)notifyScreenStatePassCodeNotEnabled:(int)enabled;
- (void)processSessionStatusUpdate:(id)update;
- (void)pruneOldStreamingEvents;
- (void)queryInterfaceStats:(const char *)stats :(unint64_t *)a4 :(unint64_t *)a5 :(unint64_t *)a6 :(unint64_t *)a7;
- (void)recordStreamingEvent;
- (void)registerLPMNotifier;
- (void)registerWebkitStreamingNotification;
- (void)removeiRatClient:(id)client;
- (void)resetStreamingState:(BOOL)state;
- (void)startPeriodicTask:(double)task :(id)a4;
- (void)stopPeriodicTask;
- (void)subscribeAppStateChangeEvent;
- (void)subscribeForDeviceLockStateInfo;
- (void)subscribeForScreenStateInfo;
- (void)unSubscribeAppStateChangeEvent;
- (void)unSubscribeForDeviceLockStateInfo;
- (void)unSubscribeForScreenStateInfo;
- (void)updateCameraState:(unsigned int)state;
- (void)updateControllerSession:(id)session ofId:(unint64_t)id;
- (void)updateControllerState:(id)state;
- (void)updateDLBWEstimation:(unsigned int)estimation :(unsigned int)a4;
- (void)updateLPMState;
- (void)updateNRQSHMetrics:(unsigned int)metrics :(unsigned int)a4 :(unsigned int)a5;
- (void)updateQSHMetrics:(unsigned int)metrics :(unsigned int)a4 :(unsigned int)a5 :(unsigned int)a6;
@end

@implementation WRM_BWEvalManager

- (void)registerLPMNotifier
{
  if (!qword_1002B7B28)
  {
    qword_1002B7B28 = dispatch_queue_create("com.apple.WRM.BatterySaverWatcher", 0);
    objc_initWeak(&location, self);
    v3 = qword_1002B7B28;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002AAC8;
    handler[3] = &unk_10023DB00;
    objc_copyWeak(&v6, &location);
    notify_register_dispatch("com.apple.system.lowpowermode", &dword_1002B7B30, v3, handler);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002AB08;
    block[3] = &unk_10023DB28;
    block[4] = self;
    dispatch_sync(qword_1002B7B28, block);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

+ (id)WRM_BWEvalManagerSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006AD34;
  block[3] = &unk_10023DB28;
  block[4] = self;
  if (qword_1002B7DE8 != -1)
  {
    dispatch_once(&qword_1002B7DE8, block);
  }

  return qword_1002B7DF0;
}

- (BOOL)needWiFiLQM
{
  doesIRATClientSubscriptionContextExist = [(WRM_BWEvalManager *)self doesIRATClientSubscriptionContextExist];
  v3 = "NO";
  if (doesIRATClientSubscriptionContextExist)
  {
    v3 = "YES";
  }

  [WCM_Logging logLevel:28 message:@"%s: needWiFiLQM? %s ", "[WRM_BWEvalManager needWiFiLQM]", v3];
  return doesIRATClientSubscriptionContextExist;
}

- (BOOL)doesIRATClientSubscriptionContextExist
{
  obj = self->miRATClientContexts;
  objc_sync_enter(obj);
  v3 = [(NSMutableArray *)self->miRATClientContexts count];
  [WCM_Logging logLevel:28 message:@"%s: iRAT client count:%d.", "[WRM_BWEvalManager doesIRATClientSubscriptionContextExist]", v3];
  if (!v3)
  {
    [WCM_Logging logLevel:28 message:@" No iRAT client available."];
    goto LABEL_11;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  miRATClientContexts = self->miRATClientContexts;
  v5 = [(NSMutableArray *)miRATClientContexts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v6 = 0;
  v7 = *v13;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(miRATClientContexts);
      }

      getHandoverContexts = [*(*(&v12 + 1) + 8 * i) getHandoverContexts];
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 28, @"%s: iRAT client Context count:%d.", "-[WRM_BWEvalManager doesIRATClientSubscriptionContextExist]", [getHandoverContexts count]);
      v6 |= [getHandoverContexts count] != 0;
    }

    v5 = [(NSMutableArray *)miRATClientContexts countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v5);
LABEL_12:
  objc_sync_exit(obj);
  return v6 & 1;
}

- (void)evaluateWiFiLink
{
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  [WCM_Logging logLevel:28 message:@"Evaluate WIFI Link: Total number of IMG clients %zu.", [(NSMutableArray *)self->miRATClientContexts count]];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->miRATClientContexts;
  v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v25)
  {
    v24 = *v35;
    do
    {
      v3 = 0;
      do
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v34 + 1) + 8 * v3);
        getMyClientType = [v4 getMyClientType];
        v6 = "ClientCommCenter";
        if (getMyClientType != 1)
        {
          if (getMyClientType - 2 >= 0x14)
          {
            v6 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
            if (getMyClientType == 22)
            {
              v6 = "ClientCoreMediaStreaming";
            }
          }

          else
          {
            v6 = off_10023F268[getMyClientType - 2];
          }
        }

        v27 = v3;
        [WCM_Logging logLevel:28 message:@"<%s>Evaluate WiFi Link: BEGIN.", v6];
        v26 = v4;
        getHandoverContexts = [v4 getHandoverContexts];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v28 = getHandoverContexts;
        v8 = [getHandoverContexts countByEnumeratingWithState:&v30 objects:v41 count:16];
        if (v8)
        {
          v9 = v8;
          v29 = *v31;
          if (getMyClientType == 22)
          {
            v10 = "ClientCoreMediaStreaming";
          }

          else
          {
            v10 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
          }

          v11 = getMyClientType - 2;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v31 != v29)
              {
                objc_enumerationMutation(v28);
              }

              v13 = *(*(&v30 + 1) + 8 * i);
              getApplicationType = [v13 getApplicationType];
              getConnectedLinkType = [v13 getConnectedLinkType];
              getRecommenedLinkType = [v13 getRecommenedLinkType];
              v17 = "ClientCommCenter";
              if (getMyClientType != 1)
              {
                v17 = v10;
                if (v11 <= 0x13)
                {
                  v17 = off_10023F268[v11];
                }
              }

              v18 = "UNKNOWN_APP!!!";
              if (getApplicationType == 2)
              {
                v18 = "CT_Th_Call";
              }

              if (getApplicationType == 1)
              {
                v18 = "CT_VOICE";
              }

              if (!getApplicationType)
              {
                v18 = "CT_DATA";
              }

              [WCM_Logging logLevel:28 message:@"<%s>{%s}Evaluate Link: BEGIN.", v17, v18];
              if ([(WRM_BWEvalManager *)self evaluateLink:getApplicationType]== 1)
              {
                v19 = 1;
                [v13 setLinkPreferenceNotificationRequired:1];
                [(WRM_BWEvalManager *)self evaluateWiFiBandwidth:&v38];
              }

              else
              {
                [v13 setLinkPreferenceNotificationRequired:0];
                [(WRM_BWEvalManager *)self evaluateCellularBandwidth:&v38];
                v19 = 0;
              }

              [v13 setConnectedLinkType:v19];
              [v13 setMinEvalBW:v38];
              [v13 setMaxEvalBW:*(&v38 + 1)];
              [v13 setMinMovEvalBW:v39];
              [v13 setMaxMovEvalBW:*(&v39 + 1)];
              [v13 setNetworkEvalBW:v40];
              v20 = "ClientCommCenter";
              if (getMyClientType != 1)
              {
                v20 = v10;
                if (v11 <= 0x13)
                {
                  v20 = off_10023F268[v11];
                }
              }

              if (getApplicationType)
              {
                v21 = "CT_VOICE";
                if (getApplicationType != 1)
                {
                  v21 = "UNKNOWN_APP!!!";
                  if (getApplicationType == 2)
                  {
                    v21 = "CT_Th_Call";
                  }
                }
              }

              else
              {
                v21 = "CT_DATA";
              }

              [WCM_Logging logLevel:28 message:@"<%s>{%s}Evaluate WIFI-CELLULAR Link BW: END.", v20, v21];
              v22 = "ClientCommCenter";
              if (getMyClientType != 1)
              {
                v22 = v10;
                if (v11 <= 0x13)
                {
                  v22 = off_10023F268[v11];
                }
              }

              [WCM_Logging logLevel:28 message:@"<%s>Evaluate CELLULAR-WiFi Link BW: END.", v22];
            }

            v9 = [v28 countByEnumeratingWithState:&v30 objects:v41 count:16];
          }

          while (v9);
        }

        [v26 handleLinkPreferenceNotificationCM:0];
        [(WRM_BWEvalManager *)self feedAWDStreamingStats:&v38];
        v3 = v27 + 1;
      }

      while ((v27 + 1) != v25);
      v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v25);
  }
}

- (BOOL)isWiFiPrimary
{
  v2 = +[WRM_SCService WRM_SCServiceControllerSingleton];
  if (v2)
  {

    LOBYTE(v2) = [v2 isWiFiPrimary];
  }

  return v2;
}

- (void)feedAWDRadioStats
{
  if (self->mWiFi && (objc_opt_respondsToSelector() & 1) != 0)
  {
    wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
  }

  else
  {
    wifiService = 0;
  }

  v4 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  v5 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  if (![+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
  {
    v6 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    getCTDataIndictor = 0;
    if (wifiService)
    {
      goto LABEL_7;
    }

LABEL_10:
    mWrmiRATStreaming = self->mWrmiRATStreaming;
    mWrmiRATStreaming->wrmRecommendedRAT = 0;
    goto LABEL_12;
  }

  v6 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  [v6 setActiveSlot:{objc_msgSend(v6, "getUserDataPreferredSlot")}];
  getCTDataIndictor = [v6 getCTDataIndictor];
  if (!wifiService)
  {
    goto LABEL_10;
  }

LABEL_7:
  self->mWrmiRATStreaming->wrmRecommendedRAT = [(WCM_WiFiService *)wifiService isWiFiPrimaryInterface];
  if ([(WCM_WiFiService *)wifiService isWiFiPrimaryInterface])
  {
    self->mWrmiRATStreaming->wifiRssi = [(WCM_WiFiService *)wifiService getRSSI];
    [(WCM_WiFiService *)wifiService getRxPhyRate];
    self->mWrmiRATStreaming->phyRate = v8;
    self->mWrmiRATStreaming->cca = [(WCM_WiFiService *)wifiService getCCA];
    self->mWrmiRATStreaming->StationCount = [(WCM_WiFiService *)wifiService getConnectedStationCount];
    self->mWrmiRATStreaming->lqmScoreWifi = [(WCM_WiFiService *)wifiService isWiFiQualityGoodForProximityMode];
    self->mWrmiRATStreaming->decisionVIBE = [(WCM_WiFiService *)wifiService getBEDecision];
    self->mWrmiRATStreaming->decisionVO = [(WCM_WiFiService *)wifiService getVoiceDecision];
    self->mWrmiRATStreaming->expectedThroughputVIBE = [(WCM_WiFiService *)wifiService getTxThroughputVI];
    self->mWrmiRATStreaming->expectedThroughputVO = [(WCM_WiFiService *)wifiService getTxThroughputVO];
    self->mWrmiRATStreaming->packetLifetimeVIBE = [(WCM_WiFiService *)wifiService getLifeTimeVI];
    self->mWrmiRATStreaming->pkgLifeTimeVO = [(WCM_WiFiService *)wifiService getLifeTimeVO];
    self->mWrmiRATStreaming->pktLossRateVO = [(WCM_WiFiService *)wifiService getTxLossRateVO];
    self->mWrmiRATStreaming->goodDecisionsCounterVO = [(WCM_WiFiService *)wifiService getGoodVoiceCounter];
    self->mWrmiRATStreaming->badDecisionsCounterVO = [(WCM_WiFiService *)wifiService getBadVoiceCounter];
    self->mWrmiRATStreaming->goodDecisionsCounterVIBE = [(WCM_WiFiService *)wifiService getGoodVoiceCounter];
    self->mWrmiRATStreaming->badDecisionsCounterVIBE = [(WCM_WiFiService *)wifiService getBadVideoCounter];
    self->mWrmiRATStreaming->invalidDecisionCounter = [(WCM_WiFiService *)wifiService getInvalidCounter];
    self->mWrmiRATStreaming->weightedAveragePhyrateRx = [(WCM_WiFiService *)wifiService getWghtAverageRXPhyRate];
    self->mWrmiRATStreaming->weightedAveragePhyrateTx = [(WCM_WiFiService *)wifiService getWghtAverageTXPhyRate];
    self->mWrmiRATStreaming->weightedAverageRssi = [(WCM_WiFiService *)wifiService];
    self->mWrmiRATStreaming->weightedAverageSnr = [(WCM_WiFiService *)wifiService getWghtAverageSNR];
    [(WCM_WiFiService *)wifiService getTxPer];
    self->mWrmiRATStreaming->txPER = (v9 * 100.0);
    [(WCM_WiFiService *)wifiService getRxRatio];
    self->mWrmiRATStreaming->rxRetry = (v10 * 100.0);
    self->mWrmiRATStreaming->devicePointOfInterest = [(WCM_WiFiService *)wifiService getPointOfInterest];
    self->mWrmiRATStreaming->wifChannelBW = [(WCM_WiFiService *)wifiService getWiFiBW];
    getChannelType = [(WCM_WiFiService *)wifiService getChannelType];
    v12 = self->mWrmiRATStreaming;
    v12->wifChannelType = getChannelType;
    v12->wifilowDataMode = 0;
    self->mWrmiRATStreaming->isWfiCaptive = [(WCM_WiFiService *)wifiService isWiFiNetworkCaptive];
    [v5 getTCPAvgRTT];
    self->mWrmiRATStreaming->tcpRTTAvg = (v13 * 1000.0);
    [v5 getTCPMinRTT];
    self->mWrmiRATStreaming->tcpRTTmin = (v14 * 1000.0);
    [v5 getTCPRttVar];
    self->mWrmiRATStreaming->tcpRTTvar = (v15 * 1000.0);
    [v5 getRxDupeRatio];
    self->mWrmiRATStreaming->ratioDupeBytes = (v16 * 100.0);
    [v5 getRxRetryRatio];
    self->mWrmiRATStreaming->ratioOOBBytes = (v17 * 100.0);
    goto LABEL_13;
  }

  mWrmiRATStreaming = self->mWrmiRATStreaming;
LABEL_12:
  mWrmiRATStreaming->devicePointOfInterest = 0;
  *&mWrmiRATStreaming->pkgLifeTimeVO = 0u;
  *&mWrmiRATStreaming->weightedAverageRssi = 0u;
  *&mWrmiRATStreaming->goodDecisionsCounterVO = 0u;
  *&mWrmiRATStreaming->invalidDecisionCounter = 0u;
  *&mWrmiRATStreaming->wifiRssi = 0u;
  *&mWrmiRATStreaming->StationCount = 0u;
  self->mWrmiRATStreaming->StationCount = [v6 getDataSlotLoad];
LABEL_13:
  if ([v6 getServingCellType] != 1)
  {
    if ([v6 getServingCellType] == 2)
    {
      self->mWrmiRATStreaming->ratType = @"UMTS_RADIO";
      [v6 getServingCellRSCP];
      self->mWrmiRATStreaming->CellRSRP = v26;
      [v6 getServingCellECIO];
      self->mWrmiRATStreaming->CellSinr = v27;
      goto LABEL_28;
    }

    getServingCellType = [v6 getServingCellType];
    v29 = self->mWrmiRATStreaming;
    if (getServingCellType != 9)
    {
      v29->ratType = @"UNKNOWN_RADIO";
      goto LABEL_28;
    }

    v29->ratType = @"N_RADIO";
    [v6 getNrRSRP];
    self->mWrmiRATStreaming->cellNrRSRP = v30;
    [v6 getNrSNR];
    self->mWrmiRATStreaming->cellNrSNR = v31;
    [v6 getNrRSRQ];
    self->mWrmiRATStreaming->cellNrRSRQ = v32;
    if (![+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")] || !objc_msgSend(v6, "isDeviceUsingFR2Radio"))
    {
      self->mWrmiRATStreaming->isFR1 = 1;
      goto LABEL_28;
    }

LABEL_24:
    self->mWrmiRATStreaming->isFR1 = 0;
    goto LABEL_28;
  }

  self->mWrmiRATStreaming->ratType = @"LTE_RADIO";
  [v6 getServingCellRSRP];
  self->mWrmiRATStreaming->CellRSRP = v19;
  [v6 getServingCellSNR];
  self->mWrmiRATStreaming->CellSinr = v20;
  self->mWrmiRATStreaming->rrcState = [v6 getRRCState];
  [v6 getServingCellRSRQ];
  v22 = self->mWrmiRATStreaming;
  v22->cellLteRSRQ = v21;
  if (getCTDataIndictor - 16 >= 4 && getCTDataIndictor != 8)
  {
    *&v22->cellNsaEnabled = 0;
    v22->cellNrRSRP = 0;
    *&v22->cellNrRSRQ = 0;
    goto LABEL_28;
  }

  v22->cellNsaEnabled = 1;
  [v6 getNrRSRP];
  self->mWrmiRATStreaming->cellNrRSRP = v23;
  [v6 getNrSNR];
  self->mWrmiRATStreaming->cellNrSNR = v24;
  [v6 getNrRSRQ];
  self->mWrmiRATStreaming->cellNrRSRQ = v25;
  if ([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")] && objc_msgSend(v6, "isDeviceUsingFR2Radio"))
  {
    goto LABEL_24;
  }

  self->mWrmiRATStreaming->isFR1 = 1;
LABEL_28:
  self->mWrmiRATStreaming->lqmScorecellular = [v4 getCellularDataLQM];
  [v6 getMeasureBWDataSlot];
  self->mWrmiRATStreaming->cellEstimatedBW = v33;
  self->mWrmiRATStreaming->cellARFCN = [v6 getUARFCNDataSlot];
  self->mWrmiRATStreaming->cellBandInfo = [v6 getBandInfoDataSlot];
  getBandWidthDataSlot = [v6 getBandWidthDataSlot];
  v35 = self->mWrmiRATStreaming;
  v35->cellChannelBW = getBandWidthDataSlot;
  v35->tcpRTTAvg = self->mHarvestedLatency;
  v35->mac_DLCA_configured = dword_1002B7B84;
  v35->total_configured_bw = dword_1002B7B88;
  v35->total_configured_mimo_layers = dword_1002B7B8C;
  v35->lte_max_scheduled_mimo_layers_in_a_cell = dword_1002B7B90;
  v35->nr_configured_bw = dword_1002B7B94;
  v35->nr_total_scheduled_mimo_layers = dword_1002B7B98;
  v35->nr_max_dl_modulation = dword_1002B7B9C;
  self->mWrmiRATStreaming->lqmScoreBT = [+[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton](WRM_IDSLinkEvalManager "WRM_IDSLinkEvalManagerSingleton")];
  self->mWrmiRATStreaming->rxRetransmissionRate = [+[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton](WRM_IDSLinkEvalManager "WRM_IDSLinkEvalManagerSingleton")];
  v36 = [+[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton](WRM_IDSLinkEvalManager "WRM_IDSLinkEvalManagerSingleton")];
  v37 = self->mWrmiRATStreaming;
  v37->txRetransmissionRate = v36;
  [WCM_Logging logLevel:28 message:@"CELL BW: %d, TCP_RTT_AVG: %d, TCP_RTT_MIN: %d, TCP_RTT_VAR: %d, RX Dupe ratio: %d, RX_RETRY: %d, WiFi_CH: %d WiFi_CH_TYPE: %d", v37->cellEstimatedBW, v37->tcpRTTAvg, v37->tcpRTTmin, v37->tcpRTTvar, v37->ratioDupeBytes, v37->ratioOOBBytes, v37->wifChannelBW, v37->wifChannelType];
  [(WRM_BWEvalManager *)self updateBBState];
  self->mWrmiRATStreaming->metricsUpdate = 1;
}

- (void)queryInterfaceStats:(const char *)stats :(unint64_t *)a4 :(unint64_t *)a5 :(unint64_t *)a6 :(unint64_t *)a7
{
  size = 0;
  *v23 = xmmword_100195790;
  v24 = 6;
  sysctl(v23, 6u, 0, &size, 0, 0);
  v8 = malloc_type_malloc(size, 0x100004077774924uLL);
  sysctl(v23, 6u, v8, &size, 0, 0);
  if (size < 1)
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = v8 + size;
    v14 = v8;
    do
    {
      v15 = *v14;
      if (*(v14 + 3) == 18 && *(v14 + 161) == 18)
      {
        v16 = *(v14 + 165);
        if (*(v14 + 165))
        {
          if (v16 >= 0x3F)
          {
            v16 = 63;
          }

          v17 = v16 - 1 + 1;
          memcpy(__dst, v14 + 84, v17);
        }

        else
        {
          v17 = 0;
        }

        __dst[v17] = 0;
        if (!strcmp(stats, __dst))
        {
          v11 += *(v14 + 7);
          v12 += *(v14 + 9);
          v9 += *(v14 + 12);
          v10 += *(v14 + 13);
        }
      }

      v14 = (v14 + v15);
    }

    while (v14 < v13);
  }

  if (a5)
  {
    *a5 = v11;
  }

  if (a4)
  {
    *a4 = v12;
  }

  if (a6)
  {
    *a6 = v10;
  }

  if (a7)
  {
    *a7 = v9;
  }

  if (v8)
  {
    free(v8);
  }
}

- (unint64_t)getLPMState
{
  state64 = 0;
  if (!dword_1002B7B30)
  {
    return 0;
  }

  notify_get_state(dword_1002B7B30, &state64);
  return state64;
}

- (void)updateLPMState
{
  getLPMState = [(WRM_BWEvalManager *)self getLPMState];
  if (byte_1002B7B34 != (getLPMState != 0))
  {
    byte_1002B7B34 = getLPMState != 0;
    [WCM_Logging logLevel:24 message:@"LPM state:%d", getLPMState != 0];
  }
}

- (void)registerWebkitStreamingNotification
{
  if (!notify_register_check("com.apple.WebKit.mediaStreamingActivity", &dword_1002B7450))
  {
    state64 = 0;
    notify_get_state(dword_1002B7450, &state64);
    [WCM_Logging logLevel:24 message:@"registerWebkitStreamingNotification:notify_register_dispatch called"];
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x2020000000;
    v7 = 0;
    v4[0] = 0;
    v4[1] = v4;
    v4[2] = 0x2020000000;
    v5 = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10002AC8C;
    v3[3] = &unk_10023DB50;
    v3[5] = v6;
    v3[6] = v4;
    v3[4] = self;
    if (!notify_register_dispatch("com.apple.WebKit.mediaStreamingActivity", &dword_1002B7450, &_dispatch_main_q, v3))
    {
      [WCM_Logging logLevel:24 message:@"registerWebkitStreamingNotification:exit"];
    }

    _Block_object_dispose(v4, 8);
    _Block_object_dispose(v6, 8);
  }
}

- (void)subscribeAppStateChangeEvent
{
  if ([(WRM_BWEvalManager *)self isSmartDataModeEnabled])
  {
    [(WRM_BWEvalManager *)self registerWebkitStreamingNotification];
    qword_1002B7AF8 = objc_alloc_init(BKSApplicationStateMonitor);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100002248;
    v3[3] = &unk_10023DB78;
    v3[4] = self;
    [qword_1002B7AF8 setHandler:v3];
    qword_1002B7B08 = objc_alloc_init(NSMutableSet);
    qword_1002B7B10 = objc_alloc_init(NSMutableSet);
    qword_1002B7B18 = objc_alloc_init(NSMutableSet);
  }
}

- (void)unSubscribeAppStateChangeEvent
{
  if ([(WRM_BWEvalManager *)self isSmartDataModeEnabled])
  {
    if (qword_1002B7AF8)
    {

      qword_1002B7AF8 = 0;
    }

    if (qword_1002B7B28)
    {
      dispatch_release(qword_1002B7B28);
      qword_1002B7B28 = 0;
    }

    notify_cancel(dword_1002B7B30);
    dword_1002B7B30 = 0;
    notify_cancel(dword_1002B7450);
    dword_1002B7450 = 0;
  }

  if (qword_1002B7B08)
  {
    [qword_1002B7B08 removeAllObjects];
  }

  if (qword_1002B7B10)
  {
    [qword_1002B7B10 removeAllObjects];
  }

  if (qword_1002B7B18)
  {
    [qword_1002B7B18 removeAllObjects];
    v2 = qword_1002B7B18;
  }
}

- (void)updateCameraState:(unsigned int)state
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002B050;
  v3[3] = &unk_10023DBA0;
  v3[4] = self;
  stateCopy = state;
  dispatch_async([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")], v3);
}

- (void)getInitialIPStats
{
  v9 = 0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  mWiFi = self->mWiFi;
  if (mWiFi && [(WCM_WiFiService *)[(WCM_WiFiController *)mWiFi wifiService] isWiFiPrimaryInterface])
  {
    uTF8String = "en0";
  }

  else
  {
    v5 = [+[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton](WRM_EnhancedCTService "wrm_EnhancedCTServiceSingleton")];
    [WCM_Logging logLevel:24 message:@"getInitialIPStats internetInterfaceName=%@", v5];
    if (v5)
    {
      uTF8String = [v5 UTF8String];
    }

    else
    {
      uTF8String = "pdp_ip0";
    }
  }

  [(WRM_BWEvalManager *)self queryInterfaceStats:uTF8String];
  qword_1002B7D00 = v9;
  qword_1002B7D08 = v8;
  qword_1002B7D10 = v7;
  qword_1002B7D18 = v6;
  [WCM_Logging logLevel:24 message:@"sPackets: %llu, rPackets: %llu, txBytes: %llu, rxBytes: %llu", v9, v8, v7, v6];
}

- (int)getDeltaIPStats:(unint64_t *)stats :(unint64_t *)a4 :(unint64_t *)a5 :(unint64_t *)a6
{
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v11 = [+[WRM_SCService WRM_SCServiceControllerSingleton](WRM_SCService "WRM_SCServiceControllerSingleton")];
  if (v11)
  {
    uTF8String = "en0";
  }

  else
  {
    v13 = [+[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton](WRM_EnhancedCTService "wrm_EnhancedCTServiceSingleton")];
    [WCM_Logging logLevel:24 message:@"getDeltaIPStats internetInterfaceName=%@", v13];
    if (v13)
    {
      uTF8String = [v13 UTF8String];
    }

    else
    {
      uTF8String = "pdp_ip0";
    }
  }

  [(WRM_BWEvalManager *)self queryInterfaceStats:uTF8String];
  v14 = v24;
  *stats = v24 - qword_1002B7D00;
  v15 = v23;
  *a4 = v23 - qword_1002B7D08;
  v16 = v22;
  *a5 = v22 - qword_1002B7D10;
  v17 = v21;
  *a6 = v21 - qword_1002B7D18;
  [WCM_Logging logLevel:24 message:@"sPackets: %llu, rPackets: %llu, txBytes: %llu, rxBytes: %llu", v14, v15, v16, v17];
  qword_1002B7D00 = v24;
  qword_1002B7D08 = v23;
  qword_1002B7D10 = v22;
  qword_1002B7D18 = v21;
  v18 = *stats;
  v19 = *a6;
  [WCM_Logging logLevel:24 message:@"Delta TX: %llu, RX: %llu, RX Bytes: %llu, TX Bytes: %llu", *stats, *a4, *a6, *a5];
  return v11;
}

- (void)startPeriodicTask:(double)task :(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002B4E0;
  v4[3] = &unk_10023DBF0;
  *&v4[7] = task;
  v4[5] = self;
  v4[6] = a4;
  dispatch_async([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")], v4);
}

- (void)stopPeriodicTask
{
  if (qword_1002B7B20)
  {
    dispatch_source_cancel(qword_1002B7B20);
    dispatch_release(qword_1002B7B20);
    qword_1002B7B20 = 0;
  }
}

- (void)pruneOldStreamingEvents
{
  [(NSDate *)self->mStreamingTime timeIntervalSinceNow];
  if (byte_1002B7C6A)
  {
    v3 = v2;
    v4 = HIBYTE(word_1002B7C68);
    do
    {
      v5 = dbl_1002B7C28[v4] - v3;
      if (v5 <= 60.0)
      {
        break;
      }

      [WCM_Logging logLevel:24 message:@"pruneOldStreamingEvents delta=%f, removing record[%d]", *&v5, v4];
      v4 = (HIBYTE(word_1002B7C68) + 1) & 7;
      HIBYTE(word_1002B7C68) = v4;
      --byte_1002B7C6A;
    }

    while (byte_1002B7C6A);
  }
}

- (void)recordStreamingEvent
{
  [(WRM_BWEvalManager *)self pruneOldStreamingEvents];
  [(NSDate *)self->mStreamingTime timeIntervalSinceNow];
  v3 = word_1002B7C68;
  dbl_1002B7C28[word_1002B7C68] = v4;
  LOBYTE(word_1002B7C68) = (v3 + 1) & 7;
  if (byte_1002B7C6A > 7u)
  {
    HIBYTE(word_1002B7C68) = (HIBYTE(word_1002B7C68) + 1) & 7;
  }

  else
  {
    ++byte_1002B7C6A;
  }
}

- (unsigned)countStreamingEvent
{
  [(WRM_BWEvalManager *)self pruneOldStreamingEvents];
  [WCM_Logging logLevel:24 message:@"countStreamingEvent head=%d, tail=%d, count=%d", word_1002B7C68, HIBYTE(word_1002B7C68), byte_1002B7C6A];
  v2 = HIBYTE(word_1002B7C68);
  if (HIBYTE(word_1002B7C68) < word_1002B7C68)
  {
    do
    {
      [WCM_Logging logLevel:24 message:@"countStreamingEvent times[%d]=%f", v2, *&dbl_1002B7C28[v2]];
      v2 = (v2 + 1) & 7;
    }

    while (v2 < word_1002B7C68);
  }

  return byte_1002B7C6A;
}

- (void)handleAppStateChange:(id)change
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002C3E0;
  v3[3] = &unk_10023DC80;
  v3[4] = change;
  v3[5] = self;
  dispatch_async([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")], v3);
}

- (BOOL)isSmartDataModeEnabled
{
  v2 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

  return [v2 isRecentDevice];
}

- (void)resetStreamingState:(BOOL)state
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002CA5C;
  block[3] = &unk_10023DCA0;
  stateCopy = state;
  dispatch_async([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")], block);
}

- (void)handleInternalMessage:(id)message
{
  [WCM_Logging logLevel:28 message:@"%s: internalMsg: %@", "[WRM_BWEvalManager(privateFunctions) handleInternalMessage:]", message];
  uint64 = xpc_dictionary_get_uint64(message, "kInternalMessageId");
  if (uint64 == 1040 || uint64 == 1003)
  {
    v7 = @"handleInternalMessage:evaluateWiFiLink";
  }

  else
  {
    v7 = @"handleInternalMessage:default";
  }

  [WCM_Logging logLevel:28 message:v7];

  [(WRM_BWEvalManager *)self evaluateWiFiLink];
}

- (void)handleUpdateStallMessage:(id)message
{
  [WCM_Logging logLevel:28 message:@"iRAT Video BW Mgr: handleUpdateStallMessage, Stall detected"];
  mWrmiRATStreaming = self->mWrmiRATStreaming;
  mWrmiRATStreaming->event = 2;
  mWrmiRATStreaming->numStall = 1;
  ++self->mStreamingTotalStallDetected;
  mProximityMsgQueue = self->mProximityMsgQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000685B0;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(mProximityMsgQueue, block);
}

- (void)handleGetMLPredictedThroughput:(id)throughput
{
  [WCM_Logging logLevel:28 message:@"Called handleGetMLPredictedThroughput"];
  value = xpc_dictionary_get_value(throughput, "kMessageArgs");
  int64 = xpc_dictionary_get_int64(value, "WRMMLPredictedThroughput_linkType");
  v7 = int64;
  if (int64 == -1)
  {
    if ([objc_msgSend(+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
    {
      getMLPredictedWiFiBW = [(WRM_BWEvalManager *)self getMLPredictedWiFiBW];
      [WCM_Logging logLevel:28 message:@"WiFiThroughputEstimation: primary interface: WiFi handleGetMLPredictedThroughput: link: %llu, mlpredictedThroughput: %u", -1, getMLPredictedWiFiBW];
    }

    else
    {
      getMLPredictedWiFiBW = [(WRM_BWEvalManager *)self getMLPredictedCellBW];
      [WCM_Logging logLevel:28 message:@"CellularThroughputEstimation: primary interface: Cellular handleGetMLPredictedThroughput: link: %llu, mlpredictedThroughput: %u", -1, getMLPredictedWiFiBW];
    }
  }

  else if (int64)
  {
    if (int64 == 1)
    {
      getMLPredictedWiFiBW = [(WRM_BWEvalManager *)self getMLPredictedWiFiBW];
      [WCM_Logging logLevel:28 message:@"WiFiThroughputEstimation: handleGetMLPredictedThroughput: link: %llu, mlpredictedThroughput: %u", 1, getMLPredictedWiFiBW];
    }

    else
    {
      getMLPredictedWiFiBW = 0;
    }
  }

  else
  {
    getMLPredictedWiFiBW = [(WRM_BWEvalManager *)self getMLPredictedCellBW];
    [WCM_Logging logLevel:28 message:@"CellularThroughputEstimation: handleGetMLPredictedThroughput: link: %llu, mlpredictedThroughput: %u", 0, getMLPredictedWiFiBW];
  }

  [WCM_Logging logLevel:28 message:@"handleGetMLPredictedThroughput: link: %llu, mlpredictedThroughput: %u", v7, getMLPredictedWiFiBW];
  reply = xpc_dictionary_create_reply(throughput);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "WRMMLPredictedThroughput_CoreMedia", getMLPredictedWiFiBW);
    remote_connection = xpc_dictionary_get_remote_connection(throughput);
    xpc_connection_send_message(remote_connection, v10);
    [WCM_Logging logLevel:28 message:@"Sending response to handleGetMLPredictedThroughput message %@", v10];

    xpc_release(v10);
  }

  else
  {

    [WCM_Logging logLevel:28 message:@"Do not post handleGetMLPredictedThroughput reply is NULL"];
  }
}

- (void)handleGetStreamingMetrics:(id)metrics
{
  [WCM_Logging logLevel:28 message:@"Called handleGetStreamingMetrics"];
  [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  value = xpc_dictionary_get_value(metrics, "kMessageArgs");
  xpc_dictionary_get_uint64(value, "WRMGetStreamingMetrics_linkType");
  mHarvestedLatency = self->mHarvestedLatency;
  mStreamingSessionActive = self->mStreamingSessionActive;
  if (mStreamingSessionActive)
  {
    isStreamingAppForeground = 1;
  }

  else
  {
    isStreamingAppForeground = [(WRM_BWEvalManager *)self isStreamingAppForeground];
    mStreamingSessionActive = self->mStreamingSessionActive;
  }

  [WCM_Logging logLevel:28 message:@"handleGetStreamingMetrics: session active: %d, BW: %d", mStreamingSessionActive, self->mHarvestedBW];
  reply = xpc_dictionary_create_reply(metrics);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_BOOL(reply, "isValid", isStreamingAppForeground);
    xpc_dictionary_set_uint64(v10, "MaxBW", self->mHarvestedBW);
    xpc_dictionary_set_uint64(v10, "StallDetected", self->mStreamingStallDetected);
    xpc_dictionary_set_uint64(v10, "AvgRTT", mHarvestedLatency);
    remote_connection = xpc_dictionary_get_remote_connection(metrics);
    xpc_connection_send_message(remote_connection, v10);
    [WCM_Logging logLevel:28 message:@"Sending response to handleGetStreamingMetrics message %@", v10];

    xpc_release(v10);
  }

  else
  {

    [WCM_Logging logLevel:28 message:@"Do not post handleGetStreamingMetrics reply is NULL"];
  }
}

- (void)handleQSHMetrics:(id)metrics
{
  [WCM_Logging logLevel:28 message:@"Called handleQSHMetrics"];
  reply = xpc_dictionary_create_reply(metrics);
  if (reply)
  {
    v5 = reply;
    xpc_dictionary_set_uint64(reply, "totalCellularBW", dword_1002B7B88);
    xpc_dictionary_set_uint64(v5, "nrConfiguredBW", dword_1002B7B94);
    xpc_dictionary_set_uint64(v5, "totalLayers", dword_1002B7B8C);
    xpc_dictionary_set_uint64(v5, "nrLayers", dword_1002B7B98);
    xpc_dictionary_set_uint64(v5, "lteMaxScheduledLayers", dword_1002B7B98);
    xpc_dictionary_set_uint64(v5, "nrModulation", dword_1002B7B9C);
    xpc_dictionary_set_uint64(v5, "totalCCs", dword_1002B7B84);
    remote_connection = xpc_dictionary_get_remote_connection(metrics);
    xpc_connection_send_message(remote_connection, v5);
    [WCM_Logging logLevel:28 message:@"Sending response to handleQSHMetrics message %@", v5];

    xpc_release(v5);
  }

  else
  {

    [WCM_Logging logLevel:28 message:@"Do not post handleQSHMetrics reply is NULL"];
  }
}

- (void)handleSessionNotification:(id)notification
{
  [WCM_Logging logLevel:28 message:@"%s: message: %@", "[WRM_BWEvalManager(privateFunctions) handleSessionNotification:]", notification];
  uint64 = xpc_dictionary_get_uint64(notification, "kMessageId");
  if (uint64 > 422)
  {
    if (uint64 > 2000)
    {
      switch(uint64)
      {
        case 2001:

          [(WRM_BWEvalManager *)self handleCellularDataMetricsRequest:notification];
          return;
        case 2002:

          [(WRM_BWEvalManager *)self handleQSHMetrics:notification];
          return;
        case 2100:

          [(WRM_BWEvalManager *)self handleWiFiMetricsRequest:notification];
          return;
      }
    }

    else
    {
      switch(uint64)
      {
        case 423:

          [(WRM_BWEvalManager *)self handleGetMLPredictedThroughput:notification];
          return;
        case 1000:
          value = xpc_dictionary_get_value(notification, "kMessageArgs");

          [(WRM_BWEvalManager *)self handleInternalMessage:value];
          return;
        case 2000:

          [(WRM_BWEvalManager *)self handleNrPhyMetricsRequest:notification];
          return;
      }
    }

LABEL_52:

    [WCM_Logging logLevel:28 message:@"handleSessionNotification:default"];
    return;
  }

  if (uint64 > 411)
  {
    switch(uint64)
    {
      case 412:

        [(WRM_BWEvalManager *)self handleUpdateStallMessage:notification];
        return;
      case 417:

        [(WRM_BWEvalManager *)self handleGetStreamingMetrics:notification];
        return;
      case 418:

        [(WRM_BWEvalManager *)self handleEnhancedBufferingNotificatione:notification];
        return;
    }

    goto LABEL_52;
  }

  switch(uint64)
  {
    case 103:

      [(WRM_BWEvalManager *)self handleWiFiStateChaneEvents:notification];
      break;
    case 404:

      [(WRM_BWEvalManager *)self handleLinkPrefSubscribe:notification];
      break;
    case 405:

      [(WRM_BWEvalManager *)self handleSubscribeStatusUpdate:notification];
      return;
    default:
      goto LABEL_52;
  }
}

- (void)handleWiFiMetricsRequest:(id)request
{
  uint64 = xpc_dictionary_get_uint64(request, "kClientType");
  if ((uint64 - 1) >= 0x15)
  {
    v5 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
    if (uint64 == 22)
    {
      v5 = "ClientCoreMediaStreaming";
    }
  }

  else
  {
    v5 = off_10023F1C0[(uint64 - 1)];
  }

  [WCM_Logging logLevel:27 message:@"%s Message received from client %d(%s) ", "[WRM_BWEvalManager(privateFunctions) handleWiFiMetricsRequest:]", uint64, v5];
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068EF0;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(mQueue, block);
}

- (void)handleCellularDataMetricsRequest:(id)request
{
  uint64 = xpc_dictionary_get_uint64(request, "kClientType");
  if ((uint64 - 1) >= 0x15)
  {
    v5 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
    if (uint64 == 22)
    {
      v5 = "ClientCoreMediaStreaming";
    }
  }

  else
  {
    v5 = off_10023F1C0[(uint64 - 1)];
  }

  [WCM_Logging logLevel:27 message:@"%s Message received from client %d(%s) ", "[WRM_BWEvalManager(privateFunctions) handleCellularDataMetricsRequest:]", uint64, v5];
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100069310;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(mQueue, block);
}

- (void)handleNrPhyMetricsRequest:(id)request
{
  uint64 = xpc_dictionary_get_uint64(request, "kClientType");
  if ((uint64 - 1) >= 0x15)
  {
    v5 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
    if (uint64 == 22)
    {
      v5 = "ClientCoreMediaStreaming";
    }
  }

  else
  {
    v5 = off_10023F1C0[(uint64 - 1)];
  }

  [WCM_Logging logLevel:27 message:@"%s Message received from client %d(%s) ", "[WRM_BWEvalManager(privateFunctions) handleNrPhyMetricsRequest:]", uint64, v5];
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000695E0;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(mQueue, block);
}

- (void)handleEnhancedBufferingNotificatione:(id)notificatione
{
  value = xpc_dictionary_get_value(notificatione, "kMessageArgs");
  v4 = xpc_dictionary_get_value(value, "kWRMApplicationTypeList");
  count = xpc_array_get_count(v4);
  if (count)
  {
    v6 = count;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = xpc_array_get_value(v4, v7);
      if (xpc_dictionary_get_value(v9, "kMaxElgBrate"))
      {
        [WCM_Logging logLevel:28 message:@"%s: Received status update with Eligible bit rate ", "[WRM_BWEvalManager(privateFunctions) handleEnhancedBufferingNotificatione:]"];
        uint64 = xpc_dictionary_get_uint64(v9, "kMaxElgBrate");
        if (uint64)
        {
          v8 = 2 * (uint64 == 0x1FFFFFFFFFFFFFLL);
        }

        else
        {
          v8 = 1;
        }
      }

      ++v7;
    }

    while (v6 != v7);
  }

  else
  {
    v8 = 0;
  }

  [(WRM_BWEvalManager *)self notifyEHBState:v8];
}

- (void)handleLinkPrefSubscribe:(id)subscribe
{
  [WCM_Logging logLevel:28 message:@"BW Link Eval Manager: handleLinkPrefSubscribe."];
  [(NSDate *)self->mCMStatusUpdateEvaluationTimer timeIntervalSinceNow];
  self->mTimeSinceCMStatusEvaluationStarted = v5;
  dword_1002B7C90 = 0;
  *&self->mDeviation = 0;
  value = xpc_dictionary_get_value(subscribe, "kMessageArgs");
  uint64 = xpc_dictionary_get_uint64(subscribe, "kClientType");
  v8 = [(WRM_BWEvalManager *)self getiRATClientFromList:uint64];
  if ((uint64 - 1) >= 0x15)
  {
    v9 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
    if (uint64 == 22)
    {
      v9 = "ClientCoreMediaStreaming";
    }
  }

  else
  {
    v9 = off_10023F1C0[(uint64 - 1)];
  }

  [WCM_Logging logLevel:28 message:@"Message received from client %d(%s) ", uint64, v9];
  v10 = xpc_dictionary_get_value(value, "kWRMApplicationTypeList");
  count = xpc_array_get_count(v10);
  if (count)
  {
    v12 = count;
    selfCopy2 = self;
    [v8 removeAllMobilityContextsFromList];
    [WCM_Logging logLevel:24 message:@"Removing all contexts from iRAT client."];
    for (i = 0; i != v12; ++i)
    {
      v14 = xpc_array_get_value(v10, i);
      v15 = xpc_dictionary_get_uint64(v14, "kWRMApplicationType");
      [WCM_Logging logLevel:28 message:@"%s: Record#= %d Application Type=%llu", "[WRM_BWEvalManager(privateFunctions) handleLinkPrefSubscribe:]", i, v15];
      v16 = objc_alloc_init(WRM_Mobility_Context);
      [(WRM_Mobility_Context *)v16 setApplicationType:v15];
      [(WRM_Mobility_Context *)v16 activateMobilityContext:1];
      [v8 addMobilityContextToList:v16];
    }

LABEL_11:
    [(WRM_BWEvalManager *)selfCopy2 evaluateWiFiLink];
    if (selfCopy2->mWiFi && (objc_opt_respondsToSelector() & 1) != 0)
    {
      mWiFi = selfCopy2->mWiFi;
      needWiFiLQM = [(WRM_BWEvalManager *)selfCopy2 needWiFiLQM];

      [(WCM_WiFiController *)mWiFi toggleWiFiLQMIfNeeded:needWiFiLQM];
    }

    return;
  }

  if ([(WRM_BWEvalManager *)self doesIRATClientSubscriptionContextExist])
  {
    selfCopy2 = self;
    [v8 removeAllMobilityContextsFromList];
    [WCM_Logging logLevel:24 message:@"Removing all contexts from iRAT client."];
    goto LABEL_11;
  }

  [WCM_Logging logLevel:28 message:@"Ignoring un-subscribe message from a client for which subscription does not exist"];
}

- (void)processSessionStatusUpdate:(id)update
{
  uint64 = xpc_dictionary_get_uint64(update, "kWRMVideoStreamingStarted");
  mStreamingConnectionReferenceCount = self->mStreamingConnectionReferenceCount;
  if (uint64)
  {
    self->mStreamingConnectionReferenceCount = mStreamingConnectionReferenceCount + 1;
    if ([(WRM_BWEvalManager *)self isWiFiPrimary])
    {
      mAchievedMaxWiFiBW = self->mAchievedMaxWiFiBW;
      mWrmiRATStreaming = self->mWrmiRATStreaming;
      mWrmiRATStreaming->pActualLowBandwidth = self->mAchievedPreviousWiFiBW;
      mWrmiRATStreaming->maxOfActualLowBandwidth = mAchievedMaxWiFiBW;
      dword_1002B7BA4 = [(WRM_BWEvalManager *)self getMLPredictedWiFiBW];
    }

    else
    {
      v9 = self->mWrmiRATStreaming;
      if (self->mStreamingConnectionReferenceCount == 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      v9->coldStartTypeCellular = v10;
      mAchievedMaxCellBW = self->mAchievedMaxCellBW;
      v9->pActualLowBandwidth = self->mAchievedPreviousCellBW;
      v9->maxOfActualLowBandwidth = mAchievedMaxCellBW;
      dword_1002B7BA0 = [(WRM_BWEvalManager *)self getMLPredictedCellBW];
    }
  }

  else
  {
    self->mStreamingConnectionReferenceCount = mStreamingConnectionReferenceCount - 1;
  }

  v12 = self->mStreamingConnectionReferenceCount;
  if (v12 == 1)
  {
    self->mStreamingSessionActive = 1;
    dword_1002B7B80 = 0;
    self->mMovAVGAchievedBW = 0.0;
    self->mHarvestedBW = 0;
    self->mHarvestedLatency = 0;
    [(WRM_BWEvalManager *)self notifyStreamingState:1];
    v12 = self->mStreamingConnectionReferenceCount;
  }

  if (!v12)
  {
    self->mStreamingSessionActive = 0;
    dword_1002B7B80 = 0;
    self->mMovAVGAchievedBW = 0.0;
    self->mHarvestedBW = 0;
    self->mHarvestedLatency = 0;
    [(WRM_BWEvalManager *)self notifyStreamingState:2];
  }

  self->mStreamingConnectionExpectedTimeHorizon = xpc_dictionary_get_uint64(update, "kWRMExpectedTimeHorizon");
  self->mStreamingStallDetected = xpc_dictionary_get_uint64(update, "kWRMVideoStreamingNumStallDetected");
  self->mStreamingFatalErrorDetected = xpc_dictionary_get_uint64(update, "kWRMVideoStreamingFatalErrorDetected") != 0;
  self->mStreamingTotalStallDuration = xpc_dictionary_get_uint64(update, "kWRMVideoStreamingTotalStallTime");
  [WCM_Logging logLevel:28 message:@"processSessionStatusUpdate: reference count: %lld", self->mStreamingConnectionReferenceCount];

  [(WRM_BWEvalManager *)self notifyCommCenterManager];
}

- (void)evaluateSDMBWChangeNotification:(unint64_t)notification
{
  if ([(WCM_WiFiService *)[(WCM_WiFiController *)self->mWiFi wifiService] isWiFiPrimaryInterface])
  {
    return;
  }

  mMovAVGAchievedBW = self->mMovAVGAchievedBW;
  if (mMovAVGAchievedBW >= 15000.0)
  {
    v6 = 1;
  }

  else
  {
    if (mMovAVGAchievedBW > 6500.0)
    {
LABEL_11:
      [WCM_Logging logLevel:28 message:@"%s: SDM actul: %d, WghtAVG BW: %f", "[WRM_BWEvalManager(privateFunctions) evaluateSDMBWChangeNotification:]", notification, mMovAVGAchievedBW];
      return;
    }

    v6 = 2;
  }

  if (v6 == dword_1002B7B80 || !self->mStreamingConnectionReferenceCount)
  {
    goto LABEL_11;
  }

  dword_1002B7B80 = v6;
  [WCM_Logging logLevel:28 message:@"%s: SDM recommendation changed, actul: %d, WghtAVG BW: %f", "[WRM_BWEvalManager(privateFunctions) evaluateSDMBWChangeNotification:]", notification, mMovAVGAchievedBW];
  v7 = self->mMovAVGAchievedBW;

  [(WRM_BWEvalManager *)self notifyStreamingState:0];
}

- (void)evaluateCellularBandwidth:(id *)bandwidth
{
  mAchievedCellBW = self->mAchievedCellBW;
  if (mAchievedCellBW > self->mAchievedMaxCellBW)
  {
    self->mAchievedMaxCellBW = mAchievedCellBW;
    [WCM_Logging logLevel:28 message:@"evaluateCellularBandwidth mAchievedMaxCellBW=%llu", mAchievedCellBW];
  }

  bandwidth->var4 = 0;
  *&bandwidth->var0 = 0u;
  *&bandwidth->var2 = 0u;
}

- (void)calcAdjustedBandwith:(id *)bandwith :(float)a4
{
  var0 = bandwith->var0;
  [WCM_Logging logLevel:28 message:@"calcAdjustedBandwith:minEvalBW: %d, CM reported BW:%d, Correction Factor:%.2f, maxBW: %d", bandwith->var0, self->mAchievedMaxWiFiBW, a4, self->mAchievedMaxWiFiBW];
  mScallingFactor = self->mScallingFactor;
  v8 = bandwith->var0;
  if (mScallingFactor > 1.0)
  {
    v9 = bandwith->var1 / mScallingFactor;
    if (v8 > v9)
    {
      bandwith->var0 = v9;
      v8 = v9;
    }
  }

  mAchievedMovAvgWiFiBW = self->mAchievedMovAvgWiFiBW;
  if (v8 > mAchievedMovAvgWiFiBW && mAchievedMovAvgWiFiBW)
  {
    [WCM_Logging logLevel:28 message:@"Link is backhaul limited, use historical bandwitdh"];
    v11 = self->mAchievedMovAvgWiFiBW;
    bandwith->var0 = v11;
  }

  else
  {
    [WCM_Logging logLevel:28 message:@"Link is not backhaul limited, use WiFi estimated bandwitdh"];
    v11 = bandwith->var0;
  }

  v12 = (v11 - self->mEvalMovAvgWiFiBW + 8 * self->mEvalMovAvgWiFiBW) >> 3;
  self->mEvalMovAvgWiFiBW = v12;
  bandwith->var2 = v12;
}

- (void)evaluateWiFiBandwidth:(id *)bandwidth
{
  v5 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  if (v5)
  {
    wifiService = [v5 wifiService];
    [wifiService getMinMaxAvailableRxBandwidth:bandwidth];
    mAchievedWiFiBW = self->mAchievedWiFiBW;
    if (mAchievedWiFiBW > self->mAchievedMaxWiFiBW)
    {
      self->mAchievedMaxWiFiBW = mAchievedWiFiBW;
      self->mScallingFactor = bandwidth->var1 / mAchievedWiFiBW;
      [WCM_Logging logLevel:28 message:@"evaluateWiFiBandwidth: mAchievedMaxWiFiBW=%llu", mAchievedWiFiBW];
    }

    [wifiService getMovingAvgOfRxRetryPercent];
    v9 = 1.0 - v8;
    *&v9 = v9;

    [(WRM_BWEvalManager *)self calcAdjustedBandwith:bandwidth];
  }
}

- (void)handleWiFiStateChaneEvents:(id)events
{
  value = xpc_dictionary_get_value(events, "kMessageArgs");
  [WCM_Logging logLevel:28 message:@"WRM IDS Link Eval Manager received WiFi link state change event"];
  self->mAchievedMaxWiFiBW = 0;
  self->mAchievedBW = 0;
  self->mEvalMovAvgWiFiBW = 0;
  self->mPrevEstMaxWiFiBW = 0;
  self->mStreamingSessionActive = 0;
  *&self->mScallingFactor = 1065353216;
  self->mMovingAvgDeviation = 0.0;
  if (value)
  {
    if (xpc_dictionary_get_int64(value, "kWRM_WiFi_LINK_STATUS"))
    {
      [WCM_Logging logLevel:28 message:@"IDS Link Eval Manager:Link down event received"];
    }

    else
    {
      int64 = xpc_dictionary_get_int64(value, "kWRMM_WiFi_RSSI");
      v6 = xpc_dictionary_get_int64(value, "kWRMM_WiFi_SNR");
      [WCM_Logging logLevel:28 message:@"IMG BW Eval Mgr :Linkup event received"];
      mWiFi = self->mWiFi;
      if (mWiFi)
      {
        wifiService = [(WCM_WiFiController *)mWiFi wifiService];
        [(WCM_WiFiService *)wifiService setRSSI:int64];
        [(WCM_WiFiService *)wifiService setSNR:v6];
        [(WCM_WiFiService *)wifiService resetWiFiBWEstimationState];
      }
    }

    [(WRM_BWEvalManager *)self evaluateWiFiLink];
  }

  else
  {

    [WCM_Logging logLevel:28 message:@"IMG BW Eval Manager:Empty message received"];
  }
}

- (void)addiRatClient:(id)client
{
  miRATClientContexts = self->miRATClientContexts;
  objc_sync_enter(miRATClientContexts);
  [(NSMutableArray *)self->miRATClientContexts addObject:client];
  [(WRM_BWEvalManager *)self existingContexts];

  objc_sync_exit(miRATClientContexts);
}

- (void)removeiRatClient:(id)client
{
  miRATClientContexts = self->miRATClientContexts;
  objc_sync_enter(miRATClientContexts);
  [(WRM_BWEvalManager *)self existingContexts];
  [(NSMutableArray *)self->miRATClientContexts removeObject:client];
  [(WRM_BWEvalManager *)self existingContexts];

  objc_sync_exit(miRATClientContexts);
}

- (void)handleControllerAvailability:(unint64_t)availability
{
  if ([(WRM_BWEvalManager *)self enableiRATManager])
  {
    if (availability == 1)
    {

      [(WRM_BWEvalManager *)self handleWiFiRegistered];
    }

    else if (availability == 20 || availability == 13)
    {

      [(WRM_BWEvalManager *)self handleIMGVideoClientRegisterd];
    }
  }
}

- (void)handleWiFiRegistered
{
  [WCM_Logging logLevel:28 message:@"WiFi registration status changed."];
  if (!self->mWiFi)
  {
    [WCM_Logging logLevel:18 message:@"WiFi did not register, can't get state"];

    [(WRM_BWEvalManager *)self evaluateWiFiLink];
  }
}

+ (id)allocWithZone:(_NSZone *)zone
{
  wRM_BWEvalManagerSingleton = [self WRM_BWEvalManagerSingleton];

  return wRM_BWEvalManagerSingleton;
}

- (WRM_BWEvalManager)init
{
  v6.receiver = self;
  v6.super_class = WRM_BWEvalManager;
  v2 = [(WRM_BWEvalManager *)&v6 init];
  if (v2)
  {
    v2->mQueue = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    v2->mProximityMsgQueue = dispatch_queue_create("com.apple.WirelessRadioManager.BWMgrProximity", 0);
    v2->miRATClientContexts = objc_alloc_init(NSMutableArray);
    [WCM_Logging logLevel:28 message:@"IMG Video BW Manager initialized"];
    v2->mPrevEstMaxWiFiBW = 0;
    v2->mAchievedMaxCellBW = 0;
    v2->mAchievedMaxWiFiBW = 0;
    v2->mWiFi = 0;
    v2->mDataSent = 0;
    v2->mDuration = 0;
    v2->mContainsDataSentFlag = 0;
    mMetrics = +[WRM_MetricsService getSingleton];
    v2->mMetrics = mMetrics;
    if (mMetrics)
    {
      [(WRM_MetricsService *)mMetrics initStreamingMetrics];
      mMetrics = v2->mMetrics;
    }

    getWRMStreaming = [(WRM_MetricsService *)mMetrics getWRMStreaming];
    v2->mWrmiRATStreaming = getWRMStreaming;
    getWRMStreaming->coldStartTypeCellular = 0;
    v2->mStreamingSessionActive = 0;
    v2->mEvalMovAvgWiFiBW = 0;
    *&v2->mAchievedBW = 0u;
    *&v2->mAchievedPreviousWiFiBW = 0u;
    *&v2->mAchievedWiFiBW = 0u;
    v2->mMovAVGAchievedBW = 0.0;
    v2->mScallingFactor = 1.0;
    v2->mStreamingTotalStallDetected = 0;
    v2->mStreamingTotalStallDuration = 0;
    v2->mStreamingStallDetected = 0;
    v2->mStreamingFatalErrorDetected = 0;
    v2->mCMStatusUpdateEvaluationTimer = [+[NSDate date](NSDate copy];
    v2->mTimeSinceCMStatusEvaluationStarted = 0.0;
    v2->mCameraState = 0;
    v2->mStreamingTime = [+[NSDate date](NSDate copy];
    [(WRM_BWEvalManager *)v2 subscribeForDeviceLockStateInfo];
    [(WRM_BWEvalManager *)v2 subscribeForScreenStateInfo];
    [(WRM_BWEvalManager *)v2 subscribeAppStateChangeEvent];
    [(WRM_BWEvalManager *)v2 createMLModel];
  }

  return v2;
}

- (void)dealloc
{
  [WCM_Logging logLevel:28 message:@"Handover Manager: Dealloc called for Video BW manager "];
  miRATClientContexts = self->miRATClientContexts;
  if (miRATClientContexts)
  {
  }

  mProximityMsgQueue = self->mProximityMsgQueue;
  if (mProximityMsgQueue)
  {
    dispatch_release(mProximityMsgQueue);
  }

  self->mWiFi = 0;
  mCMStatusUpdateEvaluationTimer = self->mCMStatusUpdateEvaluationTimer;
  if (mCMStatusUpdateEvaluationTimer)
  {

    self->mCMStatusUpdateEvaluationTimer = 0;
    self->mTimeSinceCMStatusEvaluationStarted = 0.0;
  }

  iratWiFiModel = self->iratWiFiModel;
  if (iratWiFiModel)
  {

    self->iratWiFiModel = 0;
  }

  iratCellularModel = self->iratCellularModel;
  if (iratCellularModel)
  {

    self->iratCellularModel = 0;
  }

  mStreamingTime = self->mStreamingTime;
  if (mStreamingTime)
  {
  }

  [(WRM_BWEvalManager *)self unSubscribeForDeviceLockStateInfo];
  [(WRM_BWEvalManager *)self unSubscribeForScreenStateInfo];
  [(WRM_BWEvalManager *)self unSubscribeAppStateChangeEvent];
  v9.receiver = self;
  v9.super_class = WRM_BWEvalManager;
  [(WRM_BWEvalManager *)&v9 dealloc];
}

- (void)updateControllerSession:(id)session ofId:(unint64_t)id
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006B128;
  block[3] = &unk_10023DFB8;
  block[5] = self;
  block[6] = id;
  block[4] = session;
  dispatch_async(mQueue, block);
}

- (void)updateControllerState:(id)state
{
  mQueue = self->mQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006B414;
  v4[3] = &unk_10023DC80;
  v4[4] = self;
  v4[5] = state;
  dispatch_async(mQueue, v4);
}

- (id)getiRATClientFromList:(int)list
{
  miRATClientContexts = self->miRATClientContexts;
  objc_sync_enter(miRATClientContexts);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->miRATClientContexts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      if ([v10 getMyClientType] == list)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  objc_sync_exit(miRATClientContexts);
  return v10;
}

- (void)feedAWDCoreWiFiMetrics
{
  v11 = [[CWFInterface alloc] initWithServiceType:1];
  [v11 activate];
  channel = [v11 channel];
  guardInterval = [v11 guardInterval];
  numberOfSpatialStreams = [v11 numberOfSpatialStreams];
  pHYMode = [v11 PHYMode];
  mCSIndex = [v11 MCSIndex];
  bluetoothCoexistenceMode = [v11 bluetoothCoexistenceMode];
  mWrmiRATStreaming = self->mWrmiRATStreaming;
  mWrmiRATStreaming->wifinumberOfSpatialStreams = numberOfSpatialStreams;
  v10 = bluetoothCoexistenceMode;
  mWrmiRATStreaming->wifiguardinterval = guardInterval;
  mWrmiRATStreaming->wifimcsindex = mCSIndex;
  mWrmiRATStreaming->wifiCapability = pHYMode;
  mWrmiRATStreaming->btWiFiCoexState = bluetoothCoexistenceMode;
  self->mWrmiRATStreaming->wifichannel = [channel channel];
  [WCM_Logging logLevel:28 message:@"MCS: %lu, PMode: %d, GI: %lu, NSS: %lu, CCH: %@, COEX mode: %lu", mCSIndex, pHYMode, guardInterval, numberOfSpatialStreams, channel, v10];
  [v11 invalidate];
}

- (void)feedAWDStreamingStats:(id *)stats
{
  [(WRM_BWEvalManager *)self feedAWDRadioStats];
  mWrmiRATStreaming = self->mWrmiRATStreaming;
  *&mWrmiRATStreaming->estimatedHighBandwidth = vrev64q_s32(vuzp1q_s32(*&stats->var0, *&stats->var2));
  if (self->mStreamingFatalErrorDetected)
  {
    mWrmiRATStreaming->event = 3;
  }
}

- (void)createMLModel
{
  v7 = 0;
  if ([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
  {
    if (self->iratWiFiModel)
    {
      [WCM_Logging logLevel:28 message:@"WiFiThroughputPrediction: createMLModel, iratWiFiModel already created"];
    }

    else
    {
      v3 = [sub_10006B830() modelWithContentsOfURL:+[NSURL fileURLWithPath:](NSURL error:{"fileURLWithPath:", @"/System/Library/WRM/iRATBW.mlmodelc", &v7}];
      self->iratWiFiModel = v3;
      [WCM_Logging logLevel:28 message:@"WiFiThroughputPrediction: init DEBUG ptr : %p ", v3];
      if (v7)
      {
        [WCM_Logging logLevel:28 message:@"WiFiThroughputPrediction: No iratWiFiModel present %@", v7];
      }

      v4 = self->iratWiFiModel;
    }

    if (self->iratCellularModel)
    {
      [WCM_Logging logLevel:28 message:@"CellularThroughputPrediction: createMLModel, iratCellularModel already created"];
    }

    else
    {
      v5 = [sub_10006B830() modelWithContentsOfURL:+[NSURL fileURLWithPath:](NSURL error:{"fileURLWithPath:", @"/System/Library/WRM/CellularThroughputPrediction.mlmodelc", &v7}];
      self->iratCellularModel = v5;
      [WCM_Logging logLevel:28 message:@"CellularThroughputPrediction: init DEBUG ptr : %p ", v5];
      if (v7)
      {
        [WCM_Logging logLevel:28 message:@"CellularThroughputPrediction: No iratCellularModel present %@", v7];
      }

      v6 = self->iratCellularModel;
    }
  }
}

- (unsigned)getMLPredictedWiFiBW
{
  v5 = 0;
  v3 = [(WRM_BWEvalManager *)self getPredictedWiFiBW:&v5 backhaul:self->mAchievedMaxWiFiBW / 1000.0];
  [WCM_Logging logLevel:28 message:@"WiFiThroughputPrediction: getMLPredictedWiFiBW: %d", v3];
  [(WRM_BWEvalManager *)self feedAWDCoreWiFiMetrics];
  return v3;
}

- (unsigned)getPredictedWiFiBandwidth:(double *)bandwidth
{
  mAchievedMaxWiFiBW = self->mAchievedMaxWiFiBW;
  if (mAchievedMaxWiFiBW)
  {
    v4 = mAchievedMaxWiFiBW / 1000.0;
  }

  else
  {
    v4 = 44.0;
  }

  v5 = [(WRM_BWEvalManager *)self getPredictedWiFiBW:bandwidth backhaul:v4];
  [WCM_Logging logLevel:28 message:@"WiFiThroughputPrediction: getPredictedWiFiBandwidth: %d", v5];
  return v5;
}

- (unsigned)getPredictedWiFiBW:(double *)w backhaul:(double)backhaul
{
  v35 = 0;
  if (!self->iratWiFiModel)
  {
    goto LABEL_12;
  }

  mWiFi = self->mWiFi;
  if (mWiFi)
  {
    wifiService = [(WCM_WiFiController *)mWiFi wifiService];
    if (![(WCM_WiFiService *)wifiService isWiFiPrimaryInterface])
    {
      [WCM_Logging logLevel:28 message:@"WiFi is not primary link"];
LABEL_12:
      LODWORD(mWiFi) = 0;
      return mWiFi;
    }

    wCopy = w;
    [objc_msgSend(+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    v10 = v9 * 1000.0;
    v11 = [[CWFInterface alloc] initWithServiceType:1];
    [v11 activate];
    guardInterval = [v11 guardInterval];
    numberOfSpatialStreams = [v11 numberOfSpatialStreams];
    [v11 invalidate];

    getChannelType = [(WCM_WiFiService *)wifiService getChannelType];
    isWiFiNetworkCaptive = [(WCM_WiFiService *)wifiService isWiFiNetworkCaptive];
    getCCA = [(WCM_WiFiService *)wifiService getCCA];
    getWghtAverageRXPhyRate = [(WCM_WiFiService *)wifiService getWghtAverageRXPhyRate];
    getWghtAverageMetricsValid = [(WCM_WiFiService *)wifiService getWghtAverageMetricsValid];
    if (getWghtAverageRXPhyRate && getWghtAverageMetricsValid)
    {
      getWghtAverageRSSI = [(WCM_WiFiService *)wifiService getWghtAverageRSSI];
      getWghtAverageSNR = [(WCM_WiFiService *)wifiService getWghtAverageSNR];
      v20 = [(WCM_WiFiService *)wifiService getWghtAverageRXPhyRate]/ 1000.0;
      v21 = @"wght_avg_valid, using weighted average";
    }

    else
    {
      getWghtAverageRSSI = [(WCM_WiFiService *)wifiService getRSSI];
      getWghtAverageSNR = [(WCM_WiFiService *)wifiService getSNR];
      [(WCM_WiFiService *)wifiService getRxPhyRate];
      v20 = v22;
      v21 = @"wght_avg not valid, using inst avg";
    }

    [WCM_Logging logLevel:28 message:v21];
    [WCM_Logging logLevel:28 message:@"Start ML recommendation for BW estimation"];
    [WCM_Logging logLevel:28 message:@"WiFiThroughputPrediction input features: avg_rx_phy_rate: %f, avg_rssi: %d, avg_snr: %f, backhaul: %f, tcpRTTAvg: %f, wifChannelType: %f, wifiguardinterval: %lu, isWfiCaptive: %d, wifinumberOfSpatialStreams: %lu", *&v20, getWghtAverageRSSI, getWghtAverageSNR, *&backhaul, *&v10, getChannelType, guardInterval, isWiFiNetworkCaptive, numberOfSpatialStreams];
    v36[0] = @"cca";
    v37[0] = [NSNumber numberWithInt:getCCA];
    v36[1] = @"weighted_average_phyrate_rx";
    v37[1] = [NSNumber numberWithDouble:v20];
    v36[2] = @"weighted_average_rssi";
    v37[2] = [NSNumber numberWithInt:getWghtAverageRSSI];
    v36[3] = @"weighted_average_snr";
    v37[3] = [NSNumber numberWithInt:getWghtAverageSNR];
    v36[4] = @"maxOfActualLowBandwidth_d";
    v37[4] = [NSNumber numberWithDouble:backhaul];
    v36[5] = @"tcpRTTAvg";
    v37[5] = [NSNumber numberWithDouble:v10];
    v36[6] = @"wifChannelType";
    v37[6] = [NSNumber numberWithInt:getChannelType];
    v36[7] = @"wifiguardinterval";
    v37[7] = [NSNumber numberWithUnsignedInteger:guardInterval];
    v36[8] = @"isWfiCaptive";
    v37[8] = [NSNumber numberWithBool:isWiFiNetworkCaptive];
    v36[9] = @"wifinumberOfSpatialStreams";
    v37[9] = [NSNumber numberWithUnsignedInteger:numberOfSpatialStreams];
    v23 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:10];
    v24 = [objc_alloc(sub_10006BE8C()) initWithDictionary:v23 error:&v35];
    [WCM_Logging logLevel:28 message:@"Calling predictionFromFeatures, input:%@", [(NSDictionary *)v23 description]];
    v25 = [(MLModel *)self->iratWiFiModel predictionFromFeatures:v24 error:&v35];
    if (v35)
    {
      [WCM_Logging logLevel:28 message:@"Ran into an error while predicting"];
      localizedDescription = [v35 localizedDescription];
      v26 = @"Failed prediction: %@";
LABEL_11:
      [WCM_Logging logLevel:28 message:v26, localizedDescription];

      goto LABEL_12;
    }

    if (!v25)
    {
      v26 = @"prediction reutrned invalid output";
      goto LABEL_11;
    }

    [objc_msgSend(v25 featureValueForName:{@"actualLowBandwidth_d", "doubleValue"}];
    v28 = v27;
    mWrmiRATStreaming = self->mWrmiRATStreaming;
    *&mWrmiRATStreaming->wifiModelConfidenceLevel = 0x200000001;
    mWrmiRATStreaming->mlPredictedWiFiBW = v27;
    [WCM_Logging logLevel:28 message:@"Complete ML recommendation for BW Estimation, Model Output: %f, Predicted Value: %f ", *&v27, v27];
    [(WCM_WiFiService *)wifiService resetWghtAverageMetricsFlag];
    LODWORD(v30) = self->mWrmiRATStreaming->mlPredictedWiFiBW;
    *wCopy = v30;

    [WCM_Logging logLevel:28 message:@"WiFiThroughputPrediction: getPredictedWiFiBW ML Model: %f", *&v28];
    LODWORD(mWiFi) = (v28 * 1000.0);
  }

  return mWiFi;
}

- (unsigned)getMLPredictedCellBW
{
  [WCM_Logging logLevel:28 message:@"CellularThroughputPrediction: getMLPredictedCellBW maxActualBW before calling ML Prediction: %llu", self->mAchievedMaxCellBW, 0];
  v3 = [(WRM_BWEvalManager *)self getPredictedCellBW:&v5 backhaul:self->mAchievedMaxCellBW];
  [WCM_Logging logLevel:28 message:@"CellularThroughputPrediction: getMLPredictedCellBW: %d", v3];
  return v3;
}

- (unsigned)getPredictedCellBW:(double *)w backhaul:(double)backhaul
{
  if ([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
  {
    v7 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
    [v7 setActiveSlot:{objc_msgSend(v7, "getUserDataPreferredSlot")}];
    getCTDataIndictor = [v7 getCTDataIndictor];
  }

  else
  {
    v7 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    getCTDataIndictor = 0;
  }

  v9 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  v78 = 0;
  if (!self->iratCellularModel)
  {
    [WCM_Logging logLevel:28 message:@"CellularThroughputPrediction: iratCellularModel is nil"];
    return 0;
  }

  v11 = v9;
  LODWORD(v10) = dword_1002B7B84;
  v12 = v10;
  LODWORD(v10) = dword_1002B7B88;
  *&v13 = v10;
  v76 = v13;
  v77 = v12;
  LODWORD(v13) = dword_1002B7B8C;
  *&v14 = v13;
  v75 = v14;
  LODWORD(v14) = dword_1002B7B90;
  v15 = v14;
  LODWORD(v14) = dword_1002B7B94;
  v16 = v14;
  LODWORD(v14) = dword_1002B7B98;
  v17 = v14;
  LODWORD(v14) = dword_1002B7B9C;
  v18 = v14;
  if ([v7 getServingCellType] == 1)
  {
    backhaulCopy = backhaul;
    [v7 getServingCellRSRP];
    v20 = v19;
    [v7 getServingCellSNR];
    v22 = v21;
    [v7 getServingCellRSRQ];
    v23 = 0.0;
    v68 = v24;
    v69 = v20;
    v67 = v15;
    if (getCTDataIndictor - 16 < 4 || getCTDataIndictor == 8)
    {
      v71 = v18;
      v72 = v17;
      v73 = v16;
      [v7 getNrRSRP];
      v70 = v25;
      [v7 getNrSNR];
      v74 = v26;
      [v7 getNrRSRQ];
      v66 = v27;
      v28 = [v7 isDeviceUsingFR2Radio] ^ 1;
      v29 = 1.0;
    }

    else
    {
      v28 = 0;
      v66 = 0.0;
      v73 = 0.0;
      v74 = 0.0;
      v29 = 0.0;
      v70 = 0.0;
      v71 = 0.0;
      v72 = 0.0;
    }

    backhaul = backhaulCopy;
  }

  else if ([v7 getServingCellType] == 2)
  {
    [v7 getServingCellRSCP];
    v69 = v30;
    [v7 getServingCellECIO];
    v22 = v31;
    v28 = 0;
    v23 = -1.0;
    v66 = 0.0;
    v67 = 0.0;
    v73 = 0.0;
    v74 = 0.0;
    v68 = 0.0;
    v29 = 0.0;
    v70 = 0.0;
    v71 = 0.0;
    v72 = 0.0;
  }

  else
  {
    v73 = v16;
    v71 = v18;
    v72 = v17;
    if ([v7 getServingCellType] == 9)
    {
      [v7 getNrRSRP];
      v70 = v32;
      [v7 getNrSNR];
      v74 = v33;
      [v7 getNrRSRQ];
      v66 = v34;
      v28 = 0;
      v23 = 1.0;
      v67 = 0.0;
      v68 = 0.0;
      v29 = 0.0;
    }

    else
    {
      v28 = 0;
      v23 = -1.0;
      v66 = 0.0;
      v67 = v15;
      v74 = 0.0;
      v68 = 0.0;
      v29 = 0.0;
      v70 = 0.0;
    }

    v22 = 0.0;
    v69 = 0.0;
  }

  v35 = 1.0;
  if (v29 == 1.0)
  {
    v36 = v28;
  }

  else
  {
    v36 = 0;
  }

  v37 = v23 == 0.0;
  v38 = v29;
  v62 = v29;
  if (((v29 == 1.0) & ~v28 & v37) == 0)
  {
    v35 = 2.0;
  }

  if ((v36 & v37) != 0)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = v35;
  }

  getCellularDataLQM = [v11 getCellularDataLQM];
  [v7 getMeasureBWDataSlot];
  getBandWidthDataSlot = [v7 getBandWidthDataSlot];
  [v7 getMeasureBWDataSlot];
  v42 = v23;
  v63 = v23;
  v44 = v43 / 1000.0;
  v59 = v43 / 1000.0;
  v45 = backhaul / 1000.0;
  if (backhaul == 0.0)
  {
    v45 = 56.0;
  }

  v65 = v45;
  v46 = self->mAchievedPreviousCellBW / 1000.0;
  [WCM_Logging logLevel:28 message:@"CellularThroughputPrediction: Start ML recommendation for Cellular BW estimation"];
  v81[0] = &off_1002700C8;
  v81[1] = &off_1002700F8;
  v82[0] = &off_1002700E0;
  v82[1] = &off_1002700E0;
  v81[2] = &off_100270110;
  v81[3] = &off_100270128;
  v82[2] = &off_1002700E0;
  v82[3] = &off_1002700E0;
  v81[4] = &off_100270140;
  v81[5] = &off_100270158;
  v82[4] = &off_1002700E0;
  v82[5] = &off_1002700E0;
  v81[6] = &off_100270170;
  v81[7] = &off_100270188;
  v82[6] = &off_1002700E0;
  v82[7] = &off_1002700E0;
  v81[8] = &off_1002701A0;
  v81[9] = &off_1002701B8;
  v82[8] = &off_1002700E0;
  v82[9] = &off_1002700E0;
  v81[10] = &off_1002701D0;
  v81[11] = &off_1002701E8;
  v82[10] = &off_1002700E0;
  v82[11] = &off_1002700E0;
  v81[12] = &off_100270200;
  v81[13] = &off_100270218;
  v82[12] = &off_1002700E0;
  v82[13] = &off_1002700E0;
  v81[14] = &off_100270230;
  v81[15] = &off_100270248;
  v82[14] = &off_1002700E0;
  v82[15] = &off_1002700E0;
  v81[16] = &off_100270260;
  v81[17] = &off_1002700E0;
  v82[16] = &off_100270230;
  v82[17] = &off_100270230;
  v81[18] = &off_100270278;
  v81[19] = &off_100270290;
  v82[18] = &off_100270230;
  v82[19] = &off_100270230;
  v81[20] = &off_1002702A8;
  v81[21] = &off_1002702C0;
  v82[20] = &off_100270230;
  v82[21] = &off_100270230;
  v81[22] = &off_1002702D8;
  v81[23] = &off_1002702F0;
  v82[22] = &off_100270230;
  v82[23] = &off_100270230;
  v81[24] = &off_100270308;
  v81[25] = &off_100270320;
  v82[24] = &off_100270230;
  v82[25] = &off_100270230;
  v81[26] = &off_100270338;
  v81[27] = &off_100270350;
  v82[26] = &off_100270230;
  v82[27] = &off_100270230;
  v81[28] = &off_100270368;
  v81[29] = &off_100270380;
  v82[28] = &off_100270230;
  v82[29] = &off_100270230;
  v81[30] = &off_100270398;
  v81[31] = &off_1002703B0;
  v82[30] = &off_100270230;
  v82[31] = &off_100270230;
  v81[32] = &off_1002703C8;
  v81[33] = &off_1002703E0;
  v82[32] = &off_100270230;
  v82[33] = &off_100270230;
  v81[34] = &off_1002703F8;
  v81[35] = &off_100270410;
  v82[34] = &off_100270230;
  v82[35] = &off_100270230;
  v81[36] = &off_100270428;
  v81[37] = &off_100270440;
  v82[36] = &off_100270230;
  v82[37] = &off_100270458;
  v81[38] = &off_100270470;
  v81[39] = &off_100270488;
  v82[38] = &off_100270458;
  v82[39] = &off_100270458;
  v81[40] = &off_1002704A0;
  v81[41] = &off_1002704B8;
  v82[40] = &off_100270458;
  v82[41] = &off_100270458;
  v81[42] = &off_1002704D0;
  v81[43] = &off_1002704E8;
  v82[42] = &off_100270458;
  v82[43] = &off_100270458;
  v81[44] = &off_100270500;
  v81[45] = &off_100270518;
  v82[44] = &off_100270458;
  v82[45] = &off_100270458;
  v81[46] = &off_100270530;
  v81[47] = &off_100270548;
  v82[46] = &off_100270458;
  v82[47] = &off_100270458;
  v81[48] = &off_100270560;
  v81[49] = &off_100270578;
  v82[48] = &off_100270458;
  v82[49] = &off_100270458;
  v81[50] = &off_100270590;
  v81[51] = &off_1002705A8;
  v82[50] = &off_100270458;
  v82[51] = &off_100270458;
  v81[52] = &off_1002705C0;
  v81[53] = &off_1002705D8;
  v82[52] = &off_100270458;
  v82[53] = &off_100270458;
  v81[54] = &off_1002705F0;
  v81[55] = &off_100270608;
  v82[54] = &off_100270458;
  v82[55] = &off_100270458;
  v81[56] = &off_100270620;
  v81[57] = &off_100270638;
  v82[56] = &off_100270458;
  v82[57] = &off_100270458;
  v81[58] = &off_100270650;
  v82[58] = &off_100270458;
  v47 = [-[NSDictionary objectForKey:](+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:{59), "objectForKey:", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", objc_msgSend(v7, "getBandInfoDataSlot"))), "intValue"}];
  v60 = v46;
  v61 = v47;
  v48 = v46;
  if (v46 == 0.0)
  {
    v49 = v65;
  }

  else
  {
    v49 = 0.0;
  }

  [WCM_Logging logLevel:28 message:@"CellularThroughputPrediction CellRSRP: %f, CellSnr: %f, lqmScorecellular: %f, ratType: %f, isFR1: %d, Backhaul: %f, pActualLowBandwidth: %f, cellNrRSRP: %f, cellNrRSRQ: %f, cellNrSNR: %f, cellLteRSRQ: %f, cellEstimatedBW: %f, cellChannelBW: %f, cellNsaEnabled: %f, cellBandInfo: %f, NRType: %f", *&v69, *&v22, *&getCellularDataLQM, *&v42, v28, *&v49, *&v48, *&v70, *&v66, *&v74, *&v68, *&v44, *&getBandWidthDataSlot, *&v38, *&v47, *&v39];
  [WCM_Logging logLevel:28 message:@"CellularThroughputPrediction QSH Metrics num_ccs: %f, total_configured_bw: %f, total_configured_mimo_layers: %f, lte_max_scheduled_mimo_layers_in_a_cell: %f, nr_configured_bw: %f, nr_total_scheduled_mimo_layers: %f, nr_max_dl_modulation: %f", *&v77, v76, v75, *&v67, *&v73, *&v72, *&v71];
  v79[0] = @"cellSinr";
  v80[0] = [NSNumber numberWithDouble:v22];
  v79[1] = @"cellNrRSRQ";
  v80[1] = [NSNumber numberWithDouble:v66];
  v79[2] = @"cellLteRSRQ";
  v80[2] = [NSNumber numberWithDouble:v68];
  v79[3] = @"cellNrRSRP";
  v80[3] = [NSNumber numberWithDouble:v70];
  v79[4] = @"maxOfActualLowBandwidth_d";
  v80[4] = [NSNumber numberWithDouble:v49];
  v79[5] = @"lqmScorecellular";
  v80[5] = [NSNumber numberWithDouble:getCellularDataLQM];
  v79[6] = @"cellChannelBW";
  v80[6] = [NSNumber numberWithDouble:getBandWidthDataSlot];
  v79[7] = @"cellNrSNR";
  v80[7] = [NSNumber numberWithDouble:v74];
  v79[8] = @"cellRsrp";
  v80[8] = [NSNumber numberWithDouble:v69];
  v79[9] = @"cellEstimatedBW";
  v80[9] = [NSNumber numberWithDouble:v59];
  v79[10] = @"pActualLowBandwidth";
  v80[10] = [NSNumber numberWithDouble:v60];
  v79[11] = @"cellBandInfo";
  v80[11] = [NSNumber numberWithDouble:v61];
  v79[12] = @"cellNsaEnabled";
  v80[12] = [NSNumber numberWithDouble:v62];
  v79[13] = @"NRType";
  v80[13] = [NSNumber numberWithDouble:v39];
  v79[14] = @"ratType";
  v80[14] = [NSNumber numberWithDouble:v63];
  v50 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:15];
  v51 = [objc_alloc(sub_10006BE8C()) initWithDictionary:v50 error:&v78];
  [WCM_Logging logLevel:28 message:@"CellularThroughputPrediction: Calling predictionFromFeatures, input:%@", [(NSDictionary *)v50 description]];
  v52 = [(MLModel *)self->iratCellularModel predictionFromFeatures:v51 error:&v78];
  if (v78)
  {
    [WCM_Logging logLevel:28 message:@"CellularThroughputPrediction: Ran into an error while predicting"];
    localizedDescription = [v78 localizedDescription];
    v53 = @"CellularThroughputPrediction: Failed prediction: %@";
LABEL_32:
    [WCM_Logging logLevel:28 message:v53, localizedDescription];

    return 0;
  }

  if (!v52)
  {
    v53 = @"CellularThroughputPrediction: prediction reutrned invalid output";
    goto LABEL_32;
  }

  [objc_msgSend(v52 featureValueForName:{@"actualLowBandwidth_d", "doubleValue"}];
  v56 = v55;
  self->mWrmiRATStreaming->mlPredictedCellBW = v55;
  [WCM_Logging logLevel:28 message:@"CellularThroughputPrediction: Completete ML recommendation for BW Estimation, Model Output: %f, Predicted Value: %f", *&v55, v55];
  LODWORD(v57) = self->mWrmiRATStreaming->mlPredictedCellBW;
  *w = v57;

  [WCM_Logging logLevel:28 message:@"CellularThroughputPrediction: getPredictedCellBW ML Model: %f", *&v56];
  return (v56 * 1000.0);
}

- (void)updateDLBWEstimation:(unsigned int)estimation :(unsigned int)a4
{
  mWrmiRATStreaming = self->mWrmiRATStreaming;
  mWrmiRATStreaming->cellEstimatedBW = estimation;
  mWrmiRATStreaming->cellEstimatedBWConf = a4;
}

- (void)updateQSHMetrics:(unsigned int)metrics :(unsigned int)a4 :(unsigned int)a5 :(unsigned int)a6
{
  dword_1002B7B84 = metrics;
  dword_1002B7B8C = a5;
  dword_1002B7B90 = a6;
  if ([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
  {
    v7 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
    [v7 setActiveSlot:{objc_msgSend(v7, "getUserDataPreferredSlot")}];
    getCTDataIndictor = [v7 getCTDataIndictor];
  }

  else
  {
    v7 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    getCTDataIndictor = 0;
  }

  if ([v7 getServingCellType] == 1 && (getCTDataIndictor - 16 >= 4 && getCTDataIndictor != 8 || dword_1002B7B94 <= a4))
  {
    dword_1002B7B88 = a4;
  }
}

- (void)updateNRQSHMetrics:(unsigned int)metrics :(unsigned int)a4 :(unsigned int)a5
{
  dword_1002B7B94 = metrics;
  dword_1002B7B98 = a4;
  dword_1002B7B9C = a5;
}

- (id)getSpeedTestMetrics
{
  v2 = +[WRM_SCService WRM_SCServiceControllerSingleton];
  v3 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  v4 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  if ([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
  {
    v5 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
    [v5 setActiveSlot:{objc_msgSend(v5, "getUserDataPreferredSlot")}];
    [v5 getCTDataIndictor];
  }

  else
  {
    v5 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  }

  v8[0] = @"wghtRSSI";
  v9[0] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 getWghtAverageRSSI]);
  v8[1] = @"wghtSNR";
  v9[1] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 getWghtAverageSNR]);
  v8[2] = @"wghtPhyRate";
  v9[2] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v3 getWghtAverageRXPhyRate]);
  v8[3] = @"tcpRTT";
  [v4 getTCPMinRTT];
  v9[3] = [NSNumber numberWithDouble:v6 * 1000.0];
  v8[4] = @"chType";
  v9[4] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v3 getChannelType]);
  v8[5] = @"isCaptive";
  v9[5] = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isWiFiNetworkCaptive]);
  v8[6] = @"cellularDataLQM";
  v9[6] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 getCellularDataLQM]);
  v8[7] = @"CCA";
  v9[7] = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 getCCA]);
  v8[8] = @"nrRSRP";
  [v5 getNrRSRP];
  v9[8] = [NSNumber numberWithDouble:?];
  v8[9] = @"nrRSRQ";
  [v5 getNrRSRQ];
  v9[9] = [NSNumber numberWithDouble:?];
  v8[10] = @"nrSNR";
  [v5 getNrSNR];
  v9[10] = [NSNumber numberWithDouble:?];
  v8[11] = @"totalCellularBW";
  v9[11] = [NSNumber numberWithUnsignedInt:dword_1002B7B88];
  v8[12] = @"nrConfiguredBW";
  v9[12] = [NSNumber numberWithUnsignedInt:dword_1002B7B94];
  v8[13] = @"totalLayers";
  v9[13] = [NSNumber numberWithUnsignedInt:dword_1002B7B8C];
  v8[14] = @"nrLayers";
  v9[14] = [NSNumber numberWithUnsignedInt:dword_1002B7B98];
  v8[15] = @"lteMaxScheduledLayers";
  v9[15] = [NSNumber numberWithUnsignedInt:dword_1002B7B90];
  v8[16] = @"nrModulation";
  v9[16] = [NSNumber numberWithUnsignedInt:dword_1002B7B9C];
  v8[17] = @"totalCCs";
  v9[17] = [NSNumber numberWithUnsignedInt:dword_1002B7B84];
  return [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:18];
}

- (void)subscribeForDeviceLockStateInfo
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100014360, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)unSubscribeForDeviceLockStateInfo
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.keybagd.lock_status", 0);
}

- (void)subscribeForScreenStateInfo
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100014C14;
  handler[3] = &unk_10023E178;
  handler[4] = self;
  notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &dword_1002B7CAC, &_dispatch_main_q, handler);
  [(WRM_BWEvalManager *)self notifyScreenStatePassCodeNotEnabled:dword_1002B7CAC];
}

- (void)unSubscribeForScreenStateInfo
{
  v3 = +[NSNotificationCenter defaultCenter];

  [(NSNotificationCenter *)v3 removeObserver:self];
}

- (void)notifyScreenStatePassCodeNotEnabled:(int)enabled
{
  state64 = 0;
  v4 = MKBGetDeviceLockState();
  notify_get_state(enabled, &state64);
  v5 = state64;
  [WCM_Logging logLevel:24 message:@"Rx screen state change event NotDark:%d, keybagLockState: %d", state64 == 0, v4];
  if (v4 == 3)
  {
    v6 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    [v6 postBBNotification:v7 :0];
  }
}

@end