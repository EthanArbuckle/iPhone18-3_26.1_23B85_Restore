@interface WRM_FT_HandoverManager
+ (id)WRM_FT_HandoverManagerSingleton;
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)canWiFiTransportMeetActiveApplicationRequirements:(unint64_t)requirements :(unint64_t)a4 :(int)a5;
- (BOOL)canWiFiTransportMeetIdleApplicationRequirements:(unint64_t)requirements :(unint64_t)a4 :(int)a5;
- (BOOL)doesIRATClientSubscriptionContextExist;
- (BOOL)handoverEvaluationRequired;
- (BOOL)isCellularEntryCriteriaMetForFaceTimeCallCurrentLinkWiFi;
- (BOOL)isCellularExitCriteriaMetForFaceTimeCallCurrentLinkCellular;
- (BOOL)isMovingAverageDownlinkAudioQualityOfCurrentCallGood:(int)good;
- (BOOL)isMovingAverageUplinkAudioQualityOfCurrentCallGood:(int)good;
- (BOOL)isWiFiArqQualityIndicatorGood:(unint64_t)good :(unint64_t)a4 :(int)a5 :(BOOL)a6;
- (BOOL)isWiFiBeaconLossQualityIndicatorGood:(unint64_t)good :(unint64_t)a4 :(int)a5;
- (BOOL)isWiFiDataRateIndicatorGoodForFaceTime:(unint64_t)time :(int)a4;
- (BOOL)isWiFiLinkEvaluationDesired;
- (BOOL)isWiFiLoadQualityIndicatorGood:(unint64_t)good :(unint64_t)a4 :(BOOL)a5 :(int)a6;
- (BOOL)isWiFiVoIPQualityGoodEnough;
- (BOOL)needWiFiLQM;
- (WRM_FT_HandoverManager)init;
- (id)getiRATClientFromList:(int)list;
- (int64_t)getRSSIHysteresis;
- (int64_t)getSNRHysteresis;
- (unsigned)faceTimeCallType;
- (void)addiRatClient:(id)client;
- (void)callObserver:(id)observer callChanged:(id)changed;
- (void)configureIDSMetricsReporting;
- (void)configureRTPMetricsReporting;
- (void)dealloc;
- (void)evaluateActiveCallQuality;
- (void)evaluateCellAleratedState:(unint64_t)state;
- (void)evaluateHandover;
- (void)evaluateWiFiAleratedState:(unint64_t)state;
- (void)feedAWDMetricsCellularStats;
- (void)feedAWDMetricsCellularStatsWithUUID:(id)d;
- (void)feedAWDMetricsWiFiStats;
- (void)handlaIDSMetrics:(id)metrics;
- (void)handleCallNotification:(id)notification;
- (void)handleCellularLinkQualityUpdate:(id)update;
- (void)handleControllerAvailability:(unint64_t)availability;
- (void)handleFTConfig;
- (void)handleGetMetrcisMessage:(id)message;
- (void)handleIDSRegisterd;
- (void)handleInternalMessage:(id)message;
- (void)handleLinkPrefSubscribe:(id)subscribe;
- (void)handleLinkPrefSubscribeIDS:(id)s;
- (void)handleMotionUpdate:(id)update;
- (void)handlePeriodicRTPMetrics:(id)metrics;
- (void)handleRTPEvent:(id)event;
- (void)handleSessionNotification:(id)notification;
- (void)handleSubscribeStatusUpdateIDS:(id)s :(BOOL)a4;
- (void)handleWiFiConfig;
- (void)handleWiFiLinkQualityUpdate:(id)update;
- (void)handleWiFiStateChaneEvents:(id)events;
- (void)initCallNotifications;
- (void)registerForCTNotifications;
- (void)registerForSCNotifications;
- (void)removeiRatClient:(id)client;
- (void)resetActiveCallEvaluationMetrics;
- (void)toggleFastLQMReport:(BOOL)report;
- (void)updateControllerSession:(id)session ofId:(unint64_t)id;
- (void)updateControllerState:(id)state;
- (void)updateRSSITh:(int64_t)th;
- (void)updateSlotInfoCTServie;
@end

@implementation WRM_FT_HandoverManager

+ (id)WRM_FT_HandoverManagerSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006288C;
  block[3] = &unk_10023DB28;
  block[4] = self;
  if (qword_1002B7DC8 != -1)
  {
    dispatch_once(&qword_1002B7DC8, block);
  }

  return qword_1002B7DD0;
}

- (BOOL)needWiFiLQM
{
  doesIRATClientSubscriptionContextExist = [(WRM_FT_HandoverManager *)self doesIRATClientSubscriptionContextExist];
  v3 = "NO";
  if (doesIRATClientSubscriptionContextExist)
  {
    v3 = "YES";
  }

  [WCM_Logging logLevel:29 message:@"%s: needWiFiLQM? %s ", "[WRM_FT_HandoverManager needWiFiLQM]", v3];
  return doesIRATClientSubscriptionContextExist;
}

- (BOOL)doesIRATClientSubscriptionContextExist
{
  obj = self->miRATClientContexts;
  objc_sync_enter(obj);
  v3 = [(NSMutableArray *)self->miRATClientContexts count];
  [WCM_Logging logLevel:29 message:@"%s: iRAT client count:%d.", "[WRM_FT_HandoverManager doesIRATClientSubscriptionContextExist]", v3];
  if (!v3)
  {
    [WCM_Logging logLevel:29 message:@" No iRAT client available."];
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
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 29, @"%s: iRAT client Context count:%d.", "-[WRM_FT_HandoverManager doesIRATClientSubscriptionContextExist]", [getHandoverContexts count]);
      v6 |= [getHandoverContexts count] != 0;
    }

    v5 = [(NSMutableArray *)miRATClientContexts countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v5);
LABEL_12:
  objc_sync_exit(obj);
  return v6 & 1;
}

- (BOOL)handoverEvaluationRequired
{
  getiRATConfigController = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  [(NSDate *)self->mStartTime timeIntervalSinceNow];
  v5 = v4;
  v6 = self->mPrevTimeSinceStart - v4;
  [WCM_Logging logLevel:29 message:@"HO Evaluation time duration is: %lf", *&v6];
  pingPongAvoidanceThresholdStationary = [getiRATConfigController pingPongAvoidanceThresholdStationary];
  if (v6 * 1000.0 >= pingPongAvoidanceThresholdStationary)
  {
    self->mPrevTimeSinceStart = v5;
  }

  return v6 * 1000.0 >= pingPongAvoidanceThresholdStationary;
}

- (void)evaluateHandover
{
  selfCopy = self;
  v3 = [(NSMutableArray *)self->miRATClientContexts count];
  if (!v3)
  {

    [WCM_Logging logLevel:29 message:@"Evaluate Handover: No iRAT client available."];
    return;
  }

  [WCM_Logging logLevel:29 message:@"Evaluate Handover: Total number of iRAT clients %zu.", v3];
  [(WRM_FT_HandoverManager *)selfCopy updateSlotInfoCTServie];
  getiRATConfigController = [(WRM_FT_HandoverManager *)selfCopy getiRATConfigController];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = selfCopy->miRATClientContexts;
  v44 = [(NSMutableArray *)obj countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (!v44)
  {
LABEL_101:
    v39 = "ClientFaceTimeCalling";
    goto LABEL_102;
  }

  v43 = *v58;
  v48 = selfCopy;
  do
  {
    v4 = 0;
    do
    {
      if (*v58 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v57 + 1) + 8 * v4);
      getMyClientType = [v5 getMyClientType];
      v7 = "ClientCommCenter";
      if (getMyClientType != 1)
      {
        if ((getMyClientType - 2) >= 0x14)
        {
          v7 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
          if (getMyClientType == 22)
          {
            v7 = "ClientCoreMediaStreaming";
          }
        }

        else
        {
          v7 = off_10023F038[getMyClientType - 2];
        }
      }

      v42 = getMyClientType - 1;
      v46 = v4;
      v52 = getMyClientType;
      [WCM_Logging logLevel:29 message:@"<%s>Evaluate Handover: BEGIN.", v7];
      v45 = v5;
      getHandoverContexts = [v5 getHandoverContexts];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v49 = getHandoverContexts;
      v9 = [getHandoverContexts countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
        if (v52 == 22)
        {
          v11 = "ClientCoreMediaStreaming";
        }

        v50 = v11;
        v51 = *v54;
        v12 = (v52 - 2);
        do
        {
          v13 = 0;
          do
          {
            if (*v54 != v51)
            {
              objc_enumerationMutation(v49);
            }

            v14 = *(*(&v53 + 1) + 8 * v13);
            getBandwidth = [v14 getBandwidth];
            getApplicationType = [v14 getApplicationType];
            getCallState = [v14 getCallState];
            getConnectedLinkType = [v14 getConnectedLinkType];
            if ([v14 getSubscriptionType] != 1)
            {
              [WCM_Logging logLevel:29 message:@"Evaluate Handover: SubscriptionType != WIFI_CELL, HO Eval Required: %d", 0, v40];
              goto LABEL_82;
            }

            v19 = "ClientCommCenter";
            if (v52 != 1)
            {
              v19 = v50;
              if (v12 <= 0x13)
              {
                v19 = off_10023F038[v12];
              }
            }

            if (getApplicationType)
            {
              v20 = "VOICE";
              if (getApplicationType != 1)
              {
                v20 = "UNKNOWN_APP!!!";
                if (getApplicationType == 2)
                {
                  v20 = "VIDEO";
                }
              }
            }

            else
            {
              v20 = "DATA";
            }

            [WCM_Logging logLevel:29 message:@"<%s>{%s}Evaluate Handover: BEGIN.", v19, v20];
            if (getConnectedLinkType || (byte_1002B7DDE & 1) != 0)
            {
              goto LABEL_32;
            }

            if (byte_1002B7DDF == 1)
            {
              [WCM_Logging logLevel:29 message:@"evaluate_handover: connectedLinkType == WRM_CELLULAR"];
              [v14 getDeltaTimeSinceLastCellularRecommendation];
              v30 = v29 * 1000.0;
              if (getCallState)
              {
                [WCM_Logging logLevel:29 message:@"state: active, getDeltaTimeSinceLastCellularRecommendation: delta time:%lf", v29 * 1000.0];
                if (v30 < [getiRATConfigController faceTimeCellularStickinessThreaholdActive])
                {
                  goto LABEL_85;
                }

                [WCM_Logging logLevel:29 message:@"WiFi link evaluation criteria met: FaceTimeCellularStickinessThreaholdStationaryActive"];
LABEL_32:
                [v14 updatePrevTimeStamp];
                goto LABEL_33;
              }

              getPingPongAvoidanceTimerMultiplier = [v14 getPingPongAvoidanceTimerMultiplier];
              v35 = [getiRATConfigController faceTimeCellularStickinessThreaholdActive] * getPingPongAvoidanceTimerMultiplier;
              [WCM_Logging logLevel:29 message:@"state: idle, getDeltaTimeSinceLastCellularRecommendation: delta time:%lf, effective blockout:%lld", *&v30, v35];
              v36 = v35;
              selfCopy = v48;
              if (v30 < v36)
              {
LABEL_85:
                if (getApplicationType)
                {
                  v37 = "VOICE";
                  if (getApplicationType != 1)
                  {
                    v37 = "UNKNOWN_APP!!!";
                    if (getApplicationType == 2)
                    {
                      v37 = "VIDEO";
                    }
                  }
                }

                else
                {
                  v37 = "DATA";
                }

                [WCM_Logging logLevel:29 message:@"{%s}Skipping link evaluation for client connected on cellular link", v37];
                [v14 setLinkPreferenceNotificationRequired:0];
                goto LABEL_71;
              }

              [WCM_Logging logLevel:29 message:@"WiFi link evaluation criteria met: FaceTimeCellularStickinessThreaholdStationary"];
              [v14 updatePrevTimeStamp];
              [v14 setPingPongAvoidanceTimerMultiplier:1];
            }

LABEL_33:
            [(WRM_FT_HandoverManager *)selfCopy initHandoverReasonCode];
            if (getApplicationType)
            {
              v21 = "VOICE";
              if (getApplicationType != 1)
              {
                v21 = "UNKNOWN_APP!!!";
                if (getApplicationType == 2)
                {
                  v21 = "VIDEO";
                }
              }
            }

            else
            {
              v21 = "DATA";
            }

            [WCM_Logging logLevel:29 message:@"{%s}invoking evaluate link", v21];
            v22 = [(WRM_FT_HandoverManager *)selfCopy evaluateLink:getBandwidth];
            v23 = v22 == 1;
            if ([v14 getConnectedLinkType] == v23)
            {
              [v14 setLinkPreferenceNotificationRequired:0];
              if (getApplicationType)
              {
                v24 = "VOICE";
                v25 = v52;
                if (getApplicationType != 1)
                {
                  v24 = "UNKNOWN_APP!!!";
                  if (getApplicationType == 2)
                  {
                    v24 = "VIDEO";
                  }
                }
              }

              else
              {
                v24 = "DATA";
                v25 = v52;
              }

              v31 = v25;
              [WCM_Logging logLevel:29 message:@"{%s}Link preference did not change for application type =%lld for client =%d current link type =%d ", v24, getApplicationType, v25, v23];
              goto LABEL_72;
            }

            if (getConnectedLinkType)
            {
              v26 = 0;
            }

            else
            {
              v26 = v22 == 1;
            }

            v27 = v26;
            if (v26)
            {
              [(WRM_MetricsService *)v48->mMetrics updateiRATMetricCellToWifi:getCallState];
            }

            else
            {
              if (getConnectedLinkType != 1 || v22 == 1)
              {
                goto LABEL_58;
              }

              [(WRM_MetricsService *)v48->mMetrics updateiRATMetricWifiToCell:getCallState];
            }

            byte_1002B7DDF = v27 ^ 1;
LABEL_58:
            [v14 setLinkPreferenceNotificationRequired:1];
            [v14 setConnectedLinkType:v23];
            selfCopy = v48;
            [v14 setHandoverReasonType:v48->mReasons];
            if (getApplicationType)
            {
              v28 = "VOICE";
              if (getApplicationType != 1)
              {
                v28 = "UNKNOWN_APP!!!";
                if (getApplicationType == 2)
                {
                  v28 = "VIDEO";
                }
              }
            }

            else
            {
              v28 = "DATA";
            }

            [WCM_Logging logLevel:29 message:@"{%s}Link preference changed for application type =%lld for client =%d", v28, getApplicationType, v52];
LABEL_71:
            v31 = v52;
LABEL_72:
            v32 = "ClientCommCenter";
            if (v31 != 1)
            {
              v32 = v50;
              if (v12 <= 0x13)
              {
                v32 = off_10023F038[v12];
              }
            }

            if (getApplicationType)
            {
              v33 = "VOICE";
              if (getApplicationType != 1)
              {
                v33 = "UNKNOWN_APP!!!";
                if (getApplicationType == 2)
                {
                  v33 = "VIDEO";
                }
              }
            }

            else
            {
              v33 = "DATA";
            }

            [WCM_Logging logLevel:29 message:@"<%s>{%s}Evaluate Handover: END.", v32, v33];
LABEL_82:
            v13 = v13 + 1;
          }

          while (v10 != v13);
          v38 = [v49 countByEnumeratingWithState:&v53 objects:v61 count:16];
          v10 = v38;
        }

        while (v38);
      }

      [v45 handleLinkPreferenceNotificationInternetDataVoiceVideo:0 :selfCopy->mCTService :{-[WCM_WiFiController wifiService](selfCopy->mWiFi, "wifiService")}];
      v4 = v46 + 1;
    }

    while ((v46 + 1) != v44);
    v44 = [(NSMutableArray *)obj countByEnumeratingWithState:&v57 objects:v62 count:16];
  }

  while (v44);
  v39 = "ClientCommCenter";
  switch(v42)
  {
    case 0:
      break;
    case 1:
      v39 = "ClientCommCenter1";
      break;
    case 2:
      v39 = "ClientNetworkd";
      break;
    case 3:
      v39 = "ClientIDS";
      break;
    case 4:
      v39 = "ClientIDSTool";
      break;
    case 5:
      v39 = "ClientIMGVideo";
      break;
    case 6:
      goto LABEL_101;
    case 7:
      v39 = "ClientCallKitTelephony";
      break;
    case 8:
      v39 = "ClientLocationd";
      break;
    case 9:
      v39 = "ClientCarousel";
      break;
    case 10:
      v39 = "ClientMusic";
      break;
    case 11:
      v39 = "ClientIMGVideoTest";
      break;
    case 12:
      v39 = "ClientTerminus";
      break;
    case 13:
      v39 = "ClientSiri";
      break;
    case 14:
      v39 = "ClientWebkit";
      break;
    case 15:
      v39 = "ClientWebkitMail";
      break;
    case 16:
      v39 = "ClientWebkitNotification";
      break;
    case 17:
      v39 = "ClientWirelessStress";
      break;
    case 18:
      v39 = "ClientCoreDuet";
      break;
    case 19:
      v39 = "ClientJTRNt";
      break;
    case 20:
      v39 = "ClientNPT";
      break;
    default:
      v39 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
      if (v52 == 22)
      {
        v39 = "ClientCoreMediaStreaming";
      }

      break;
  }

LABEL_102:
  [WCM_Logging logLevel:29 message:@"<%s>Evaluate Handover: END.", v39];
}

- (void)updateSlotInfoCTServie
{
  mCTService = self->mCTService;
  getUserDataPreferredSlot = [(WRM_CTService *)mCTService getUserDataPreferredSlot];

  [(WRM_CTService *)mCTService setActiveSlot:getUserDataPreferredSlot];
}

- (void)feedAWDMetricsWiFiStats
{
  wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
  self->mWrmiRATFaceTimeMetrics->wifiRssi = [(WCM_WiFiService *)wifiService getRSSI];
  self->mWrmiRATFaceTimeMetrics->wifiSNR = [(WCM_WiFiService *)wifiService getSNR];
  [(WCM_WiFiService *)wifiService getRxPhyRate];
  self->mWrmiRATFaceTimeMetrics->wifiRxPhyRate = v4;
  [(WCM_WiFiService *)wifiService getTxPhyRate];
  self->mWrmiRATFaceTimeMetrics->wifiTxPhyRate = v5;
  self->mWrmiRATFaceTimeMetrics->cca = [(WCM_WiFiService *)wifiService getCCA];
  self->mWrmiRATFaceTimeMetrics->qbssLoad = [(WCM_WiFiService *)wifiService getChannelUtlization];
  [(WCM_WiFiService *)wifiService getRxRatio];
  self->mWrmiRATFaceTimeMetrics->wifiRxRetry = (v6 * 100.0);
  [(WCM_WiFiService *)wifiService getTxPer];
  self->mWrmiRATFaceTimeMetrics->wifiTxPER = (v7 * 100.0);
  self->mWrmiRATFaceTimeMetrics->captiveNetworks = [(WCM_WiFiService *)wifiService isWiFiNetworkCaptive];
  self->mWrmiRATFaceTimeMetrics->stationCount = [(WCM_WiFiService *)wifiService getConnectedStationCount];
}

- (void)handleMotionUpdate:(id)update
{
  int64 = xpc_dictionary_get_int64(update, "kWRMM_MOTION_STATE");
  [(WRM_FT_HandoverManager *)self evaluateHandover];
  [WCM_Logging logLevel:29 message:@"handleMotionUpdate received: %s: motion state: %d", "[WRM_FT_HandoverManager(privateFunctions) handleMotionUpdate:]", int64];
}

- (void)handleInternalMessage:(id)message
{
  uint64 = xpc_dictionary_get_uint64(message, "kInternalMessageId");
  value = xpc_dictionary_get_value(message, "kInternalMessageArgs");
  if (uint64 == 1040 || uint64 == 1003)
  {
    [WCM_Logging logLevel:29 message:@"handleInternalMessage:handleWiFiLinkQualityUpdate"];

    [(WRM_FT_HandoverManager *)self handleWiFiLinkQualityUpdate:value];
  }

  else if (uint64 == 1001)
  {

    [(WRM_FT_HandoverManager *)self handleMotionUpdate:value];
  }
}

- (BOOL)isCellularEntryCriteriaMetForFaceTimeCallCurrentLinkWiFi
{
  getSCService = [(WRM_FT_HandoverManager *)self getSCService];
  getCTService = [(WRM_FT_HandoverManager *)self getCTService];
  getServingCellType = [getCTService getServingCellType];
  getCurrentSignalBars = [getCTService getCurrentSignalBars];
  if (getServingCellType == 1)
  {
    [getCTService getServingCellRSRP];
  }

  else
  {
    [getCTService getNrRSRP];
  }

  v8 = v7;
  getiRATConfigController = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  getCellularDataLQM = [getSCService getCellularDataLQM];
  [WCM_Logging logLevel:29 message:@"isCellularEntryCriteriaMetForFaceTimeCallCurrentLinkWiFi, LQM: %d, Signal Bars: %d", getCellularDataLQM, getCurrentSignalBars];
  if (getServingCellType > 2)
  {
    if (getServingCellType != 3 && getServingCellType != 8)
    {
      if (getServingCellType == 9)
      {
        v11 = v8 >= -110.0;
        [WCM_Logging logLevel:29 message:@"FaceTime entry criteria met on 5G radio:%f, status:%d", *&v8, v8 >= -110.0];
        return v11;
      }

      goto LABEL_17;
    }

    if (byte_1002B7B7B == 1)
    {
      minSigBarTh2 = [getiRATConfigController minSigBarTh2];
      if (getCellularDataLQM > 49 || getCurrentSignalBars >= (minSigBarTh2 - 1))
      {
        byte_1002B7B7B = 0;
        v11 = 1;
LABEL_25:
        [(WRM_FT_HandoverManager *)self updateHandoverReasonCode:0x400000];
        return v11;
      }
    }

    else
    {
      [WCM_Logging logLevel:29 message:@"FaceTime not supported on 2G radio:%ld", getCurrentSignalBars];
    }

    v11 = 0;
    goto LABEL_25;
  }

  if (getServingCellType != 2)
  {
LABEL_17:
    v14 = [getiRATConfigController minSigBarTh2] - 1;
    return getCellularDataLQM > 49 || getCurrentSignalBars >= v14;
  }

  minSigBarTh22 = [getiRATConfigController minSigBarTh2];
  if (getCellularDataLQM > 49 || getCurrentSignalBars >= (minSigBarTh22 - 1))
  {
    [WCM_Logging logLevel:29 message:@"UMTS entry conditions are met bars:%ld", getCurrentSignalBars];
    return 1;
  }

  else
  {
    [WCM_Logging logLevel:29 message:@"UMTS entry conditions are not met bars:%ld", getCurrentSignalBars];
    return 0;
  }
}

- (BOOL)isCellularExitCriteriaMetForFaceTimeCallCurrentLinkCellular
{
  getCTService = [(WRM_FT_HandoverManager *)self getCTService];
  getServingCellType = [getCTService getServingCellType];
  getCurrentSignalBars = [getCTService getCurrentSignalBars];
  if (getServingCellType == 1)
  {
    [getCTService getServingCellRSRP];
  }

  else
  {
    [getCTService getNrRSRP];
  }

  v7 = v6;
  v8 = [-[WRM_FT_HandoverManager getSCService](self "getSCService")];
  getiRATConfigController = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  [WCM_Logging logLevel:29 message:@"isCellularExitCriteriaMetForFaceTimeCallCurrentLinkCellular, LQM: %d, Signal Bars: %d", v8, getCurrentSignalBars];
  if (getServingCellType <= 2)
  {
    goto LABEL_13;
  }

  if (getServingCellType == 3 || getServingCellType == 8)
  {
    [(WRM_FT_HandoverManager *)self updateHandoverReasonCode:0x400000];
    [WCM_Logging logLevel:29 message:@"isCellularExitCriteriaMetForFaceTimeCallCurrentLinkCellular:%ld", getCurrentSignalBars];
    return 1;
  }

  if (getServingCellType != 9)
  {
LABEL_13:
    if ((getCurrentSignalBars > ([getiRATConfigController minSigBarTh1] + 1) || v8 >= 11) && getCurrentSignalBars > objc_msgSend(getiRATConfigController, "minSigBarTh1"))
    {
      return 0;
    }

    [(WRM_FT_HandoverManager *)self updateHandoverReasonCode:0x80000];
    [(WRM_FT_HandoverManager *)self updateHandoverReasonCode:0x40000];
    return 1;
  }

  v10 = v7 < -121.0;
  if (v7 < -121.0)
  {
    [(WRM_FT_HandoverManager *)self updateHandoverReasonCode:0x100000];
  }

  [WCM_Logging logLevel:29 message:@"FaceTime exit criteria met on 5G radio: %f, status:%d", *&v7, v7 < -121.0];
  return v10;
}

- (BOOL)isWiFiDataRateIndicatorGoodForFaceTime:(unint64_t)time :(int)a4
{
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  wRM_HandoverManagerSingleton = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager WRM_HandoverManagerSingleton];
  wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
  [+[WRM_BWEvalManager WRM_BWEvalManagerSingleton](WRM_BWEvalManager "WRM_BWEvalManagerSingleton")];
  v8 = *&v20[0];
  v9 = *&v20[0];
  [(WCM_WiFiService *)wifiService getRxRetryPercent];
  v11 = v10;
  [(WCM_WiFiService *)wifiService getTxRetryPercent];
  v13 = v12;
  [(WCM_WiFiService *)wifiService getRxPhyRate];
  v15 = (1.0 - v11) * v14;
  [(WCM_WiFiService *)wifiService getTxPhyRate];
  v17 = (1.0 - v13) * v16;
  [WCM_Logging logLevel:29 message:@"Estimated BW: %.2f, Calculated Available Rx PHY Rate: %.2f, Calculated Available TX Rate: %.2f", v9, v15, v17];
  if (a4 == 1)
  {
    return v9 >= [wRM_HandoverManagerSingleton idsMinWiFiThroughputTh1] && v15 >= objc_msgSend(wRM_HandoverManagerSingleton, "idsMinWiFiEffectivePhyRateTh1") && v17 >= objc_msgSend(wRM_HandoverManagerSingleton, "idsMinWiFiEffectivePhyRateTh1");
  }

  return !a4 && v8 > 0x8FB;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v3 = [self WRM:zone FT:?HandoverManagerSingleton];

  return v3;
}

- (void)addiRatClient:(id)client
{
  miRATClientContexts = self->miRATClientContexts;
  objc_sync_enter(miRATClientContexts);
  [(NSMutableArray *)self->miRATClientContexts addObject:client];
  [(WRM_FT_HandoverManager *)self existingContexts];

  objc_sync_exit(miRATClientContexts);
}

- (void)removeiRatClient:(id)client
{
  miRATClientContexts = self->miRATClientContexts;
  objc_sync_enter(miRATClientContexts);
  [(WRM_FT_HandoverManager *)self existingContexts];
  [(NSMutableArray *)self->miRATClientContexts removeObject:client];
  [(WRM_FT_HandoverManager *)self existingContexts];

  objc_sync_exit(miRATClientContexts);
}

- (void)evaluateCellAleratedState:(unint64_t)state
{
  singleton = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager singleton];
  if (([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")] & 1) == 0 && singleton > 6)
  {
    return;
  }

  mInAleratedState = self->mInAleratedState;
  getCTService = [(WRM_FT_HandoverManager *)self getCTService];
  getServingCellType = [getCTService getServingCellType];
  v8 = getServingCellType;
  if (getServingCellType == 1)
  {
    [getCTService getServingCellRSRP];
    v10 = v9;
    [getCTService getServingCellSNR];
    v12 = v11;
    [getCTService getServingCellRSRQ];
    goto LABEL_8;
  }

  if (getServingCellType != 2)
  {
    if (getServingCellType != 9)
    {
      [WCM_Logging logLevel:29 message:@" RAT type: %d", getServingCellType];
      v10 = 0.0;
      goto LABEL_9;
    }

    [getCTService getNrRSRP];
    v10 = v14;
    [getCTService getNrSNR];
    v12 = v15;
    [getCTService getNrRSRQ];
LABEL_8:
    [WCM_Logging logLevel:29 message:@"RSRP: %lf, SNR: %lf, RSRQ: %lf", *&v10, v12, v13];
LABEL_9:
    v16 = 0.0;
    goto LABEL_10;
  }

  [getCTService getServingCellECIO];
  v23 = v22;
  [getCTService getServingCellRSCP];
  v16 = v24;
  [WCM_Logging logLevel:29 message:@"RSCP :%lf, ECIO: %lf", *&v24, v23];
  v10 = 0.0;
LABEL_10:
  [WCM_Logging logLevel:29 message:@"evaluateCellAleratedState, state:%d", mInAleratedState];
  if (!self->mInAleratedState)
  {
    v17 = 1;
    if (v8 <= 9)
    {
      v18 = 1;
      if (((1 << v8) & 0x207) == 0)
      {
LABEL_33:
        [WCM_Logging logLevel:29 message:@"isEntryCriteriaMetRatType met: %d, isEntryCriteriaMet: %d", v17, v18];
        LOBYTE(mInAleratedState) = v18 || mInAleratedState;
        goto LABEL_34;
      }

      v19 = v8 == 9 || v8 == 1;
      if (!v19 || v10 >= -121.0)
      {
        v17 = 0;
        v18 = v16 < -115.0 && v8 == 2;
        goto LABEL_33;
      }

      v17 = 0;
    }

    v18 = 1;
    goto LABEL_33;
  }

  if (v8 == 1 && v10 > -110.0 || v8 == 9 && v10 > -105.0)
  {
    [WCM_Logging logLevel:29 message:@"isExitCriteriaMet : %d", 1];
  }

  else
  {
    v26 = v16 > -105.0 && v8 == 2;
    [WCM_Logging logLevel:29 message:@"isExitCriteriaMet : %d", v26];
    if (!v26)
    {
      goto LABEL_34;
    }
  }

  LOBYTE(mInAleratedState) = 0;
LABEL_34:
  if (self->mInAleratedState != mInAleratedState)
  {
    v21 = [(WRM_FT_HandoverManager *)self getiRATClientFromList:7];
    [WCM_Logging logLevel:29 message:@"updating evaluateCellAleratedState: state: %d", mInAleratedState];
    [v21 alertWRMClient:mInAleratedState :self->mCTService :-[WCM_WiFiController wifiService](self->mWiFi :{"wifiService"), 0}];
  }

  self->mInAleratedState = mInAleratedState;
}

- (void)evaluateWiFiAleratedState:(unint64_t)state
{
  getiRATConfigController = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  mInAleratedState = self->mInAleratedState;
  [WCM_Logging logLevel:29 message:@"evaluateWiFiAleratedState, state:%d", mInAleratedState];
  wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
  getRSSI = [(WCM_WiFiService *)wifiService getRSSI];
  getCCA = [(WCM_WiFiService *)wifiService getCCA];
  getConnectedStationCount = [(WCM_WiFiService *)wifiService getConnectedStationCount];
  [(WCM_WiFiService *)wifiService getTxPer];
  v11 = v10;
  [(WCM_WiFiService *)wifiService getMovingAverageTxPer];
  v13 = v12;
  isMovingAverageTxPerValid = [(WCM_WiFiService *)wifiService isMovingAverageTxPerValid];
  [(WCM_WiFiService *)wifiService getRxRatio];
  v16 = v15;
  isRxRatioValid = [(WCM_WiFiService *)wifiService isRxRatioValid];
  getAVConferenceController = [(WRM_FT_HandoverManager *)self getAVConferenceController];
  [getAVConferenceController deltaVideoErasure];
  v20 = v19;
  if (getRSSI >= [getiRATConfigController faceTimeAleratedModeRssiTh0])
  {
    v23 = 0;
  }

  else if (isMovingAverageTxPerValid && [getiRATConfigController faceTimeAleratedModeTxPer1] <= (v13 * 100.0))
  {
    v23 = 1;
  }

  else
  {
    faceTimeAleratedModeCCATh0 = [getiRATConfigController faceTimeAleratedModeCCATh0];
    if (v16 >= 0.3)
    {
      v22 = isRxRatioValid;
    }

    else
    {
      v22 = 0;
    }

    v23 = 1;
    if (getCCA <= faceTimeAleratedModeCCATh0 && (v22 & 1) == 0)
    {
      [getAVConferenceController movAvgRxPktLoss];
      v23 = v24 >= 3.0;
    }
  }

  if (self->mInAleratedState)
  {
    if (getRSSI >= [getiRATConfigController faceTimeAleratedModeRssiTh0] && objc_msgSend(getiRATConfigController, "faceTimeAleratedModeTxPer0") >= (v11 * 100.0))
    {
      mInAleratedState &= getCCA > [getiRATConfigController faceTimeAleratedModeCCATh0];
    }
  }

  else
  {
    v25 = getRSSI <= [getiRATConfigController faceTimeAleratedModeRssiTh1] || v23 || getCCA >= objc_msgSend(getiRATConfigController, "faceTimeAleratedModeCCATh1") && objc_msgSend(getiRATConfigController, "faceTimeAleratedModeVideoErasures") < v20 || getCCA >= objc_msgSend(getiRATConfigController, "faceTimeAleratedModeCCATh1") && objc_msgSend(getiRATConfigController, "faceTimeAleratedModeStationCount") <= getConnectedStationCount;
    mInAleratedState |= v25;
  }

  v26 = mInAleratedState & 1;
  if (self->mInAleratedState != (mInAleratedState & 1))
  {
    v27 = [(WRM_FT_HandoverManager *)self getiRATClientFromList:7];
    [WCM_Logging logLevel:29 message:@"evaluateWiFiAleratedState: state: %d", mInAleratedState & 1];
    [v27 alertWRMClient:mInAleratedState & 1 :self->mCTService :-[WCM_WiFiController wifiService](self->mWiFi :{"wifiService"), 1}];
    self->mWrmiRATFaceTimeMetrics->alertedMode = v26;
  }

  if ((byte_1002B7DD8 & 1) == 0)
  {
    if ((getRSSI + 60) <= 0xFFFFFFFFFFFFFFF6)
    {
      [(WRM_FT_HandoverManager *)self toggleFastLQMReport:getRSSI < -69];
    }

    self->mInAleratedState = v26;
  }
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

- (WRM_FT_HandoverManager)init
{
  v7.receiver = self;
  v7.super_class = WRM_FT_HandoverManager;
  v2 = [(WRM_FT_HandoverManager *)&v7 init];
  if (v2)
  {
    v2->mQueue = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    *&v2->mCTService = 0u;
    *&v2->mWiFi = 0u;
    v2->mAVConferenceController = objc_opt_new();
    v3 = +[WRM_IdsMetricsController WRM_IdsMetricsControllerSingleton];
    v2->mMotionController = 0;
    v2->mIDSMetricsController = v3;
    byte_1002B7DD9 = 0;
    byte_1002B7DDA = 1;
    byte_1002B7DDB = 0;
    v2->mDiscardRTPMetrics = 0;
    byte_1002B7DDC = 0;
    byte_1002B7DD8 = 0;
    v2->miRATConfig = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    v2->miRATClientContexts = objc_alloc_init(NSMutableArray);
    v2->mMotionController = +[WRM_MotionController singleton];
    v4 = +[WRM_MetricsService getSingleton];
    v2->mMetrics = v4;
    if (v4)
    {
      [(WRM_MetricsService *)v4 initFaceTimeHandoverMetrics];
    }

    if (NSClassFromString(@"CXCallObserver"))
    {
      v5 = objc_alloc_init(CXCallObserver);
      v2->mCallObserver = v5;
      [(CXCallObserver *)v5 setDelegate:v2 queue:&_dispatch_main_q];
    }

    else
    {
      v2->mCallObserver = 0;
    }

    [(WRM_FT_HandoverManager *)v2 initCallNotifications];
    v2->mWrmiRATFaceTimeMetrics = [(WRM_MetricsService *)v2->mMetrics getWRMFaceTimeHandover];
    v2->mStartTime = [+[NSDate date](NSDate copy];
    v2->mPrevTimeSinceStart = 0.0;
    v2->mAudioEvaluationTimer = [+[NSDate date](NSDate copy];
    v2->mTimeSinceAudioEvaluationStarted = 0.0;
    v2->mLatteContextStartedTimer = [+[NSDate date](NSDate copy];
    v2->mTimeSinceLatteContextStarted = 0.0;
    [WCM_Logging logLevel:29 message:@"FT Handover Manager: Handover manager initialized"];
    byte_1002B7DDD = 0;
    v2->mInAleratedState = 0;
  }

  return v2;
}

- (void)dealloc
{
  self->miRATConfig = 0;
  self->mIDSMetricsController = 0;
  *&self->mQueue = 0u;
  *&self->mSCService = 0u;
  self->mBT = 0;
  mCallObserver = self->mCallObserver;
  if (mCallObserver)
  {
    [(CXCallObserver *)mCallObserver setDelegate:0 queue:0];

    self->mCallObserver = 0;
  }

  mAVConferenceController = self->mAVConferenceController;
  if (mAVConferenceController)
  {

    self->mAVConferenceController = 0;
  }

  self->mIDSMetricsController = 0;
  self->mDiscardRTPMetrics = 0;
  [WCM_Logging logLevel:29 message:@"FT Handover Manager: Dealloc called for handover manager "];
  miRATClientContexts = self->miRATClientContexts;
  if (miRATClientContexts)
  {
  }

  mStartTime = self->mStartTime;
  if (mStartTime)
  {

    self->mStartTime = 0;
    self->mPrevTimeSinceStart = 0.0;
  }

  mAudioEvaluationTimer = self->mAudioEvaluationTimer;
  if (mAudioEvaluationTimer)
  {

    self->mAudioEvaluationTimer = 0;
    self->mTimeSinceAudioEvaluationStarted = 0.0;
  }

  mLatteContextStartedTimer = self->mLatteContextStartedTimer;
  if (mLatteContextStartedTimer)
  {

    self->mLatteContextStartedTimer = 0;
    self->mTimeSinceLatteContextStarted = 0.0;
  }

  v9.receiver = self;
  v9.super_class = WRM_FT_HandoverManager;
  [(WRM_FT_HandoverManager *)&v9 dealloc];
}

- (void)updateControllerSession:(id)session ofId:(unint64_t)id
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063530;
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
  v4[2] = sub_10006391C;
  v4[3] = &unk_10023DC80;
  v4[4] = self;
  v4[5] = state;
  dispatch_async(mQueue, v4);
}

- (void)handleSessionNotification:(id)notification
{
  uint64 = xpc_dictionary_get_uint64(notification, "kMessageId");
  if (uint64 > 405)
  {
    if (uint64 > 414)
    {
      switch(uint64)
      {
        case 415:

          [(WRM_FT_HandoverManager *)self handleGetMetrcisMessage:notification];
          break;
        case 600:

          [(WRM_FT_HandoverManager *)self handlaIDSMetrics:notification];
          break;
        case 1000:
          value = xpc_dictionary_get_value(notification, "kMessageArgs");

          [(WRM_FT_HandoverManager *)self handleInternalMessage:value];
          break;
      }
    }

    else
    {
      switch(uint64)
      {
        case 406:
          [(WRM_FT_HandoverManager *)self handleLinkPrefSubscribe:notification];
LABEL_45:
          [(WCM_WiFiController *)self->mWiFi toggleWiFiLQMIfNeeded:[(WRM_FT_HandoverManager *)self needWiFiLQM]];
          [(WRM_FT_HandoverManager *)self registerForCTNotifications];

          [(WRM_FT_HandoverManager *)self registerForSCNotifications];
          return;
        case 407:

          [(WRM_FT_HandoverManager *)self handleSubscribeStatusUpdate:notification];
          break;
        case 408:

          [(WRM_FT_HandoverManager *)self handleCellularLinkQualityUpdate:notification];
          break;
      }
    }
  }

  else
  {
    if (uint64 <= 201)
    {
      switch(uint64)
      {
        case 100:

          [(WRM_FT_HandoverManager *)self handleWiFiConfig];
          break;
        case 103:

          [(WRM_FT_HandoverManager *)self handleWiFiStateChaneEvents:notification];
          break;
        case 201:

          [(WRM_FT_HandoverManager *)self handleRTPEvent:notification];
          break;
      }

      return;
    }

    if (uint64 != 202)
    {
      if (uint64 != 402)
      {
        if (uint64 == 403)
        {

          [(WRM_FT_HandoverManager *)self handleSubscribeStatusUpdateIDS:notification];
        }

        return;
      }

      [(WRM_FT_HandoverManager *)self handleLinkPrefSubscribeIDS:notification];
      goto LABEL_45;
    }

    [(WRM_FT_HandoverManager *)self handlePeriodicRTPMetrics:notification];
  }
}

- (void)handleControllerAvailability:(unint64_t)availability
{
  if ([(WRM_FT_HandoverManager *)self enableiRATManager])
  {
    if (availability > 11)
    {
      if (availability == 12)
      {

        [(WRM_FT_HandoverManager *)self handleIDSToolRegisterd];
      }

      else if (availability == 14)
      {

        [(WRM_FT_HandoverManager *)self handleFTConfig];
      }
    }

    else if (availability == 1)
    {

      [(WRM_FT_HandoverManager *)self handleWiFiConfig];
    }

    else if (availability == 11)
    {

      [(WRM_FT_HandoverManager *)self handleIDSRegisterd];
    }
  }
}

- (void)handleIDSRegisterd
{
  if ([(WRM_FT_HandoverManager *)self getiRATClientFromList:4])
  {
    [WCM_Logging logLevel:29 message:@"IDS Link Manager: configureIDSMetricsReporting."];
    [(WRM_FT_HandoverManager *)self configureIDSMetricsReporting];
  }

  [WCM_Logging logLevel:29 message:@"IDS registration status changed."];
}

- (void)configureIDSMetricsReporting
{
  [(WRM_IdsMetricsController *)self->mIDSMetricsController resetIDSMetrics];
  [(WRM_IdsMetricsController *)self->mIDSMetricsController resetCumulativeIdsMetrics];
  mIDSMetricsController = self->mIDSMetricsController;

  [(WRM_IdsMetricsController *)mIDSMetricsController configureIDSMetricsReporting];
}

- (void)handlaIDSMetrics:(id)metrics
{
  mWiFi = self->mWiFi;
  if (mWiFi)
  {
    if ([(WCM_WiFiController *)mWiFi wifiService])
    {
      mIDSMetricsController = self->mIDSMetricsController;

      [(WRM_IdsMetricsController *)mIDSMetricsController handlePeriodicIDSMetrics:metrics];
      return;
    }

    v7 = @"handlaIDSMetrics: WiFi service not initialized.";
  }

  else
  {
    v7 = @"handlaIDSMetrics: WiFi not initialized.";
  }

  [WCM_Logging logLevel:29 message:v7];
}

- (void)handleFTConfig
{
  [WCM_Logging logLevel:29 message:@"FaceTime Calling Client config changed."];

  [(WRM_FT_HandoverManager *)self configureRTPMetricsReporting];
}

- (void)handleWiFiConfig
{
  [WCM_Logging logLevel:29 message:@"WiFi config changed."];
  if (!self->mWiFi)
  {
    [WCM_Logging logLevel:18 message:@"WiFi did not register, can't get state"];

    [(WRM_FT_HandoverManager *)self evaluateHandover];
  }
}

- (BOOL)isWiFiLinkEvaluationDesired
{
  mWiFi = self->mWiFi;
  if (!mWiFi)
  {
    v8 = @"isWiFiLinkEvaluationDesired: WiFi not initialized.";
LABEL_7:
    [WCM_Logging logLevel:26 message:v8];
    LOBYTE(isWiFiPrimaryInterface) = 0;
    return isWiFiPrimaryInterface;
  }

  wifiService = [(WCM_WiFiController *)mWiFi wifiService];
  if (!wifiService)
  {
    v8 = @"isWiFiLinkEvaluationDesired: WiFi service not initialized.";
    goto LABEL_7;
  }

  v5 = wifiService;
  isWiFiPrimaryInterface = [(WCM_WiFiService *)wifiService isWiFiPrimaryInterface];
  if (isWiFiPrimaryInterface)
  {
    getRSSI = [(WCM_WiFiService *)v5 getRSSI];
    LOBYTE(isWiFiPrimaryInterface) = getRSSI >= [-[WRM_FT_HandoverManager getiRATConfigController](self "getiRATConfigController")];
  }

  return isWiFiPrimaryInterface;
}

- (void)handleWiFiLinkQualityUpdate:(id)update
{
  [WCM_Logging logLevel:29 message:@"FT Handover Manager received WiFi link metrics"];
  byte_1002B7DDA = 0;
  if ([(WRM_FT_HandoverManager *)self handoverEvaluationRequired])
  {
    [WCM_Logging logLevel:29 message:@"Evaluating WiFi versus Cellular link preference."];

    [(WRM_FT_HandoverManager *)self evaluateHandover];
  }

  else
  {

    [WCM_Logging logLevel:29 message:@"No need of Handover Evaluation: Evaluation Criteria not met."];
  }
}

- (void)handleWiFiStateChaneEvents:(id)events
{
  value = xpc_dictionary_get_value(events, "kMessageArgs");
  [WCM_Logging logLevel:29 message:@"FT Handover Manager received WiFi link state change event"];
  if (value)
  {
    byte_1002B7DDC = 0;
    int64 = xpc_dictionary_get_int64(value, "kWRM_WiFi_LINK_STATUS");
    byte_1002B7DDF = 0;
    if (int64)
    {
      [WCM_Logging logLevel:29 message:@"FT Handover Manager:Link down event received"];
      byte_1002B7DD9 = 1;
    }

    else
    {
      byte_1002B7DD9 = 0;
      v6 = xpc_dictionary_get_int64(value, "kWRMM_WiFi_RSSI");
      v7 = xpc_dictionary_get_int64(value, "kWRMM_WiFi_SNR");
      [WCM_Logging logLevel:29 message:@"FT Handover Manager:Linkup event received"];
      wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
      [(WCM_WiFiService *)wifiService updateTxStats:0];
      [(WCM_WiFiService *)wifiService updateTxPer];
      [(WCM_WiFiService *)wifiService updateFwTxStats:0];
      [(WCM_WiFiService *)wifiService updateFwTxPer];
      [(WCM_WiFiService *)wifiService updateRxStats:0];
      [(WCM_WiFiService *)wifiService updateRxRatio];
      [(WCM_WiFiService *)wifiService updateRxBeacons:0];
      [(WCM_WiFiService *)wifiService updateRxBeaconPer];
      [(WCM_WiFiService *)wifiService setRSSI:v6];
      [(WCM_WiFiService *)wifiService setSNR:v7];
    }

    [(WRM_FT_HandoverManager *)self evaluateHandover];
  }

  else
  {

    [WCM_Logging logLevel:29 message:@"FT Handover Manager:Empty message received"];
  }
}

- (void)handleCellularLinkQualityUpdate:(id)update
{
  [WCM_Logging logLevel:29 message:@"FT Handover Manager received Cellular link metrics"];
  if ([(WRM_FT_HandoverManager *)self handoverEvaluationRequired])
  {

    [(WRM_FT_HandoverManager *)self evaluateHandover];
  }
}

- (void)updateRSSITh:(int64_t)th
{
  if ((th + 79) >= 0xFFFFFFFFFFFFFFF7)
  {
    [(WRM_iRATConfig *)self->miRATConfig updateFaceTimeRSSITh:?];
  }
}

- (void)handleLinkPrefSubscribe:(id)subscribe
{
  byte_1002B7DDD = 1;
  dword_1002B7DE0 = 0;
  byte_1002B7DDF = 0;
  byte_1002B7DD8 = 0;
  [WCM_Logging logLevel:29 message:@"HandoverManager: handleIWLANRadioLinkPreferenceRequest."];
  value = xpc_dictionary_get_value(subscribe, "kMessageArgs");
  uint64 = xpc_dictionary_get_uint64(subscribe, "kClientType");
  v19 = [(WRM_FT_HandoverManager *)self getiRATClientFromList:uint64];
  if ((uint64 - 1) >= 0x15)
  {
    v7 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
    if (uint64 == 22)
    {
      v7 = "ClientCoreMediaStreaming";
    }
  }

  else
  {
    v7 = off_10023F0D8[(uint64 - 1)];
  }

  [WCM_Logging logLevel:29 message:@"Message received from client %d(%s) ", uint64, v7];
  xarray = xpc_dictionary_get_value(value, "kWRMApplicationTypeList");
  count = xpc_array_get_count(xarray);
  [v19 removeAllMobilityContextsFromList];
  [WCM_Logging logLevel:29 message:@"Removing all contexts from iRAT client."];
  if (count)
  {
    if (!self->mWiFi)
    {
      [WCM_Logging logLevel:18 message:@"WiFi did not register, can't get state"];
    }

    for (i = 0; i != count; ++i)
    {
      v10 = xpc_array_get_value(xarray, i);
      v11 = xpc_dictionary_get_uint64(v10, "kWRMApplicationType");
      v12 = xpc_dictionary_get_uint64(v10, "kWRMDesiredLinkQoS");
      v13 = xpc_dictionary_get_uint64(v10, "kWRMDesiredBandwidth");
      [WCM_Logging logLevel:29 message:@"%s: Record#= %d Application Type=%llu, LinkQoS=%llu, Bandwidth=%llu, Service Status=%llu", "[WRM_FT_HandoverManager handleLinkPrefSubscribe:]", i, v11, v12, v13, 0];
      if (xpc_dictionary_get_value(v10, "kWRMRSSITh"))
      {
        int64 = xpc_dictionary_get_int64(v10, "kWRMRSSITh");
        [WCM_Logging logLevel:29 message:@"%s: Enabling AVC test: RSSI: TH: %lld ", "[WRM_FT_HandoverManager handleLinkPrefSubscribe:]", int64];
        [(WRM_FT_HandoverManager *)self updateRSSITh:int64];
      }

      if (xpc_dictionary_get_value(v10, "kWRMDis1SecLQM"))
      {
        v15 = xpc_dictionary_get_BOOL(v10, "kWRMDis1SecLQM");
        byte_1002B7DD8 = v15;
        [WCM_Logging logLevel:29 message:@"%s: Toggle 1 sec LQM: %d", "[WRM_FT_HandoverManager handleLinkPrefSubscribe:]", v15];
      }

      [WCM_Logging logLevel:29 message:@"%s: AVC RSSI TH1: %lld, RSSI: TH0: %lld ", "[WRM_FT_HandoverManager handleLinkPrefSubscribe:]", [(WRM_iRATConfig *)self->miRATConfig faceTimeMinActiveWiFiRssiTh1], [(WRM_iRATConfig *)self->miRATConfig faceTimeMinActiveWiFiRssiTh0]];
      v16 = objc_alloc_init(WRM_Mobility_Context);
      [(WRM_Mobility_Context *)v16 setLinkQoS:v12];
      [(WRM_Mobility_Context *)v16 setBandwidth:v13];
      [(WRM_Mobility_Context *)v16 setApplicationType:v11];
      [(WRM_Mobility_Context *)v16 activateMobilityContext:1];
      [(WRM_Mobility_Context *)v16 setSubscriptionType:1];
      [(WRM_Mobility_Context *)v16 setCallState:byte_1002B7DDD];
      [v19 addMobilityContextToList:v16];
    }

    [(WRM_FT_HandoverManager *)self evaluateHandover];
    [v19 handleLinkPreferenceNotificationInternetDataVoiceVideo:1 :self->mCTService :{-[WCM_WiFiController wifiService](self->mWiFi, "wifiService")}];
    [WCM_Logging logLevel:29 message:@"Send Link Preference Notification at connection setup"];
    if ([objc_msgSend(+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
    {
      [(WRM_MotionController *)self->mMotionController stopAllAlarms];
      mMotionController = self->mMotionController;

      [(WRM_MotionController *)mMotionController startMonitoringAlarms];
    }
  }
}

- (void)handleLinkPrefSubscribeIDS:(id)s
{
  [WCM_Logging logLevel:29 message:@"IDS WiFi-Cell Link Eval Manager: handleLinkPrefSubscribe."];
  value = xpc_dictionary_get_value(s, "kMessageArgs");
  uint64 = xpc_dictionary_get_uint64(s, "kClientType");
  v7 = [(WRM_FT_HandoverManager *)self getiRATClientFromList:uint64];
  if ((uint64 - 1) >= 0x15)
  {
    v8 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
    if (uint64 == 22)
    {
      v8 = "ClientCoreMediaStreaming";
    }
  }

  else
  {
    v8 = off_10023F0D8[(uint64 - 1)];
  }

  [WCM_Logging logLevel:29 message:@"Message received from client %d(%s)", uint64, v8];
  v9 = xpc_dictionary_get_value(value, "kWRMApplicationTypeList");
  count = xpc_array_get_count(v9);
  if (count)
  {
    v11 = count;
    selfCopy2 = self;
    [v7 removeAllMobilityContextsFromList];
    [WCM_Logging logLevel:29 message:@"Removing all contexts from iRAT client."];
    v12 = 0;
    v13 = 2;
    do
    {
      v14 = xpc_array_get_value(v9, v12);
      v15 = xpc_dictionary_get_uint64(v14, "kWRMApplicationType");
      if (xpc_dictionary_get_value(v14, "kWRMLinkType"))
      {
        v13 = xpc_dictionary_get_uint64(v14, "kWRMLinkType");
      }

      [WCM_Logging logLevel:29 message:@"%s: Record#= %d Application Type=%llu", "[WRM_FT_HandoverManager handleLinkPrefSubscribeIDS:]", v12, v15];
      v16 = objc_alloc_init(WRM_Mobility_Context);
      [(WRM_Mobility_Context *)v16 setApplicationType:v15];
      [(WRM_Mobility_Context *)v16 setSubscriptionType:1];
      [(WRM_Mobility_Context *)v16 setConnectedLinkType:v13];
      [(WRM_Mobility_Context *)v16 activateMobilityContext:1];
      [v7 addMobilityContextToList:v16];

      ++v12;
    }

    while (v11 != v12);
    goto LABEL_13;
  }

  if ([(WRM_FT_HandoverManager *)self doesIRATClientSubscriptionContextExist])
  {
    selfCopy2 = self;
    [v7 removeAllMobilityContextsFromList];
    [WCM_Logging logLevel:29 message:@"Removing all contexts from iRAT client."];
LABEL_13:

    [(WRM_FT_HandoverManager *)selfCopy2 evaluateHandover];
    return;
  }

  [WCM_Logging logLevel:29 message:@"Ignoring un-subscribe message from a client for which subscription does not exist"];
}

- (void)handleGetMetrcisMessage:(id)message
{
  uint64 = xpc_dictionary_get_uint64(message, "kClientType");
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
    v5 = off_10023F0D8[(uint64 - 1)];
  }

  [WCM_Logging logLevel:27 message:@"%s Message received from client %d(%s) ", "[WRM_FT_HandoverManager handleGetMetrcisMessage:]", uint64, v5];
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064F48;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(mQueue, block);
}

- (void)handleSubscribeStatusUpdateIDS:(id)s :(BOOL)a4
{
  uint64 = xpc_dictionary_get_uint64(s, "kClientType");
  if ((uint64 - 1) >= 0x15)
  {
    v7 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
    if (uint64 == 22)
    {
      v7 = "ClientCoreMediaStreaming";
    }
  }

  else
  {
    v7 = off_10023F0D8[(uint64 - 1)];
  }

  [WCM_Logging logLevel:29 message:@"IDS WiFi versus Cell Link Eval Mgr: Message received from client %d(%s)", uint64, v7];
  value = xpc_dictionary_get_value(s, "kMessageArgs");
  v9 = xpc_dictionary_get_value(value, "kWRMApplicationTypeList");
  count = xpc_array_get_count(v9);
  if (count)
  {
    v11 = count;
    v16 = uint64;
    for (i = 0; i != v11; ++i)
    {
      v13 = xpc_array_get_value(v9, i);
      v14 = xpc_dictionary_get_uint64(v13, "kWRMApplicationType");
      [WCM_Logging logLevel:29 message:@"%s: Record#=%d, IDS Application Type=%llu, IDS Connected Link Type=%llu", "[WRM_FT_HandoverManager handleSubscribeStatusUpdateIDS::]", i, v14, xpc_dictionary_get_uint64(v13, "kWRMLinkType")];
    }

    uint64 = v16;
  }

  else
  {
    v14 = 0;
  }

  [WCM_Logging logLevel:29 message:@"IDS Link Eval Manager: handleSubscribeStatusUpdate."];
  if ([-[WRM_FT_HandoverManager getiRATClientFromList:](self getiRATClientFromList:{uint64), "getMobilityContextFromList:", v14}])
  {
    [WCM_Logging logLevel:29 message:@"IDS Link Eval Manager: handleSubscribeStatusUpdate."];
    mIDSMetricsController = self->mIDSMetricsController;

    [(WRM_IdsMetricsController *)mIDSMetricsController resetIDSMetrics];
  }
}

- (void)configureRTPMetricsReporting
{
  mAVConferenceController = self->mAVConferenceController;
  if (mAVConferenceController)
  {
    [(WRM_AVConferenceController *)mAVConferenceController configureFaceTimeRTPMetricsReporting];
    v4 = self->mAVConferenceController;

    [(WRM_AVConferenceController *)v4 resetPeriodicRTPStats];
  }
}

- (void)handleRTPEvent:(id)event
{
  getAVConferenceController = [(WRM_FT_HandoverManager *)self getAVConferenceController];
  [getAVConferenceController handleRTPEvent:event];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 29, @"handleRTPEvent, poor connection =%lld, mediaStall = %lld", [getAVConferenceController poorConnectionDetected], objc_msgSend(getAVConferenceController, "mediaStallDetected"));
  [(WRM_FT_HandoverManager *)self evaluateHandover];
  [getAVConferenceController setPoorConnectionDetected:0];

  [getAVConferenceController setMediaStallDetected:0];
}

- (void)handlePeriodicRTPMetrics:(id)metrics
{
  getAVConferenceController = [(WRM_FT_HandoverManager *)self getAVConferenceController];
  [getAVConferenceController handlePeriodicRTPMetrics:metrics];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 29, @"Rx periodic Average RTP packet loss=%lld", [getAVConferenceController avgRxPktLoss]);
  [(WRM_FT_HandoverManager *)self evaluateHandover];

  [getAVConferenceController resetRTPMetrics];
}

- (int64_t)getSNRHysteresis
{
  v3 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  getMobilityState = [(WRM_MotionController *)self->mMotionController getMobilityState];
  if (getMobilityState <= 1)
  {
    if (getMobilityState)
    {
      if (getMobilityState == 1)
      {
        v5 = @"Device motion: WALKING";
        goto LABEL_9;
      }

      goto LABEL_17;
    }

    v7 = @"Device motion: STATIONARY";
LABEL_18:
    [WCM_Logging logLevel:29 message:v7];
    return 0;
  }

  if (getMobilityState != 2)
  {
    if (getMobilityState != 3)
    {
      if (getMobilityState == 4)
      {
        v5 = @"Device motion: PEDESTRIAN";
LABEL_9:
        [WCM_Logging logLevel:29 message:v5];

        return [v3 snrHysterisisWalking];
      }

LABEL_17:
      v7 = @"Device motion: UNKNOWN";
      goto LABEL_18;
    }

    v7 = @"Device motion: VEHICULAR";
    goto LABEL_18;
  }

  [WCM_Logging logLevel:29 message:@"Device motion: RUNNING"];

  return [v3 snrHysterisisRunning];
}

- (int64_t)getRSSIHysteresis
{
  v3 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  getMobilityState = [(WRM_MotionController *)self->mMotionController getMobilityState];
  if (getMobilityState <= 1)
  {
    if (getMobilityState)
    {
      if (getMobilityState == 1)
      {
        v5 = @"Device motion: WALKING";
        goto LABEL_9;
      }

      goto LABEL_17;
    }

    v7 = @"Device motion: STATIONARY";
LABEL_18:
    [WCM_Logging logLevel:29 message:v7];
    return 0;
  }

  if (getMobilityState != 2)
  {
    if (getMobilityState != 3)
    {
      if (getMobilityState == 4)
      {
        v5 = @"Device motion: PEDESTRIAN";
LABEL_9:
        [WCM_Logging logLevel:29 message:v5];

        return [v3 rssiHysterisisWalking];
      }

LABEL_17:
      v7 = @"Device motion: UNKNOWN";
      goto LABEL_18;
    }

    v7 = @"Device motion: VEHICULAR";
    goto LABEL_18;
  }

  [WCM_Logging logLevel:29 message:@"Device  motion: RUNNING"];

  return [v3 rssiHysterisisRunning];
}

- (BOOL)isWiFiBeaconLossQualityIndicatorGood:(unint64_t)good :(unint64_t)a4 :(int)a5
{
  v7 = [(WCM_WiFiController *)self->mWiFi wifiService:good];
  if (![(WCM_WiFiService *)v7 isBeaconPerValid])
  {
    return 1;
  }

  getiRATConfigController = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  [(WCM_WiFiService *)v7 getBeaconPer];
  v10 = (v9 * 100.0);
  [WCM_Logging logLevel:29 message:@" Beacon PER %lld", v10];
  if (!a5)
  {
    minWiFiBeaconPerTh0 = [getiRATConfigController minWiFiBeaconPerTh0];
    return minWiFiBeaconPerTh0 >= v10;
  }

  if (a5 != 1)
  {
    return 1;
  }

  minWiFiBeaconPerTh0 = [getiRATConfigController minWiFiBeaconPerTh1];
  return minWiFiBeaconPerTh0 >= v10;
}

- (BOOL)isWiFiLoadQualityIndicatorGood:(unint64_t)good :(unint64_t)a4 :(BOOL)a5 :(int)a6
{
  v7 = a5;
  v9 = [(WCM_WiFiController *)self->mWiFi wifiService:good];
  getiRATConfigController = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  getCCA = [(WCM_WiFiService *)v9 getCCA];
  if (a6 == 1)
  {
    if (!v7)
    {
      minIdleWiFiCcaTh1 = [getiRATConfigController minIdleWiFiCcaTh1];
      goto LABEL_8;
    }

    return 1;
  }

  if (a6)
  {
    return 1;
  }

  if (v7)
  {
    minIdleWiFiCcaTh1 = [getiRATConfigController minActiveWiFiCcaTh0];
  }

  else
  {
    minIdleWiFiCcaTh1 = [getiRATConfigController minIdleWiFiCcaTh0];
  }

LABEL_8:
  if (getCCA < minIdleWiFiCcaTh1)
  {
    return 1;
  }

  [(WRM_FT_HandoverManager *)self updateHandoverReasonCode:32];
  return 0;
}

- (BOOL)isWiFiArqQualityIndicatorGood:(unint64_t)good :(unint64_t)a4 :(int)a5 :(BOOL)a6
{
  v38 = a6;
  wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
  selfCopy = self;
  getiRATConfigController = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  [(WCM_WiFiService *)wifiService getTxPer];
  v9 = (v8 * 100.0);
  isTxPerValid = [(WCM_WiFiService *)wifiService isTxPerValid];
  [(WCM_WiFiService *)wifiService getTxFail];
  v12 = v11;
  [(WCM_WiFiService *)wifiService getFwTxPer];
  v14 = (v13 * 100.0);
  isFwTxPerValid = [(WCM_WiFiService *)wifiService isFwTxPerValid];
  [(WCM_WiFiService *)wifiService getRxRatio];
  v17 = v16 * 100.0;
  [(WCM_WiFiService *)wifiService getCumulativeTxPer];
  v19 = (v18 * 100.0);
  isCumulativeTxPerValid = [(WCM_WiFiService *)wifiService isCumulativeTxPerValid];
  [(WCM_WiFiService *)wifiService getCumulativeFwTxPer];
  v22 = (v21 * 100.0);
  isCumulativeFwTxPerValid = [(WCM_WiFiService *)wifiService isCumulativeFwTxPerValid];
  [WCM_Logging logLevel:29 message:@"Actual Tx PER %lld, FW Tx PER %lld TX Fail %lld, RX Ratio=%lf CumTxPER %lld CumFwTxPer %lld", v9, v14, v12, *&v17, v19, v22];
  if (isTxPerValid)
  {
    v24 = v9;
  }

  else
  {
    v24 = 0;
  }

  if (isFwTxPerValid)
  {
    v25 = v14;
  }

  else
  {
    v25 = 0;
  }

  if (isCumulativeTxPerValid)
  {
    v26 = v19;
  }

  else
  {
    v26 = 0;
  }

  if (isCumulativeFwTxPerValid)
  {
    v27 = v22;
  }

  else
  {
    v27 = 0;
  }

  [WCM_Logging logLevel:29 message:@"Effective Tx PER %lld, FW Tx PER %lld TX Fail %lld, RX Ratio=%lf CumTxPER %lld CumFwTxPer %lld", v24, v25, v12, *&v17, v26, v27];
  if (!v38)
  {
    if ((isTxPerValid | isFwTxPerValid))
    {
      if (a5)
      {
        v31 = getiRATConfigController;
        if (a5 != 1)
        {
          return 1;
        }

        minIdleWiFiTxPktLossRateTh1 = [getiRATConfigController minIdleWiFiTxPktLossRateTh1];
      }

      else
      {
        v31 = getiRATConfigController;
        minIdleWiFiTxPktLossRateTh1 = [getiRATConfigController minIdleWiFiTxPktLossRateTh0];
      }

      if (((minIdleWiFiTxPktLossRateTh1 >= v9) & isTxPerValid) == 0 && (([v31 minIdleWiFiFwTxPktLossRateTh1] >= v14) & isFwTxPerValid) == 0)
      {
        goto LABEL_32;
      }
    }

    return 1;
  }

  if ((isTxPerValid & 1) == 0)
  {
    return 1;
  }

  if (a4 == 2)
  {
    v28 = getiRATConfigController;
    v29 = a5;
    if (a5)
    {
LABEL_18:
      if (v29 == 1)
      {
        minActiveWiFiTxPktLossRateTh1 = [v28 minActiveWiFiTxPktLossRateTh1];
        goto LABEL_26;
      }

      return 1;
    }
  }

  else
  {
    v28 = getiRATConfigController;
    v29 = a5;
    if (a4 != 1)
    {
      return 1;
    }

    if (a5)
    {
      goto LABEL_18;
    }
  }

  minActiveWiFiTxPktLossRateTh1 = [v28 minActiveWiFiTxPktLossRateTh0];
LABEL_26:
  if (minActiveWiFiTxPktLossRateTh1 >= v9)
  {
    return 1;
  }

LABEL_32:
  [(WRM_FT_HandoverManager *)selfCopy updateHandoverReasonCode:16];
  return 0;
}

- (BOOL)canWiFiTransportMeetIdleApplicationRequirements:(unint64_t)requirements :(unint64_t)a4 :(int)a5
{
  if (a5 == 1)
  {
    [WCM_Logging logLevel:29 message:@"Evaluating IDS transport metrics: Connected link WiFi, status: %d", 1];
    v6 = [(WRM_IdsMetricsController *)self->mIDSMetricsController isIDSTransportMetricsGoodEnough:1];
    [WCM_Logging logLevel:29 message:@"Evaluated IDS transport metrics: Connected link WiFi, status: %d", v6];
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)isWiFiVoIPQualityGoodEnough
{
  mWiFi = self->mWiFi;
  if (mWiFi)
  {
    wifiService = [(WCM_WiFiController *)mWiFi wifiService];
    getRSSI = [(WCM_WiFiService *)wifiService getRSSI];
    [(WCM_WiFiService *)wifiService getRxRatio];
    v7 = v6;
    isRxRatioValid = [(WCM_WiFiService *)wifiService isRxRatioValid];
    [(WCM_WiFiService *)wifiService getTxPer];
    v10 = (v9 * 100.0);
    isTxPerValid = [(WCM_WiFiService *)wifiService isTxPerValid];
    v12 = [(WCM_WiFiService *)wifiService getCCA]> 87 || getRSSI < -75;
    v13 = (v10 > 5) & isTxPerValid;
    if (v12)
    {
      v13 = 1;
    }

    v14 = v13 | isRxRatioValid & (v7 >= 0.3);
  }

  else
  {
    v14 = 0;
  }

  getAVConferenceController = [(WRM_FT_HandoverManager *)self getAVConferenceController];
  if (!getAVConferenceController)
  {
    [WCM_Logging logLevel:29 message:@"isWiFiVoIPQualityGoodEnough: ptrAVConferenceController == NULL"];
    [0 resetRTPMetrics];
    [0 resetCumulativeRTPMetrics];
    v18 = 0;
LABEL_17:
    [v18 resetPeriodicRTPStats];
    return 1;
  }

  v16 = getAVConferenceController;
  if ((byte_1002B7DDB & 1) == 0)
  {
    v17 = @"isWiFiVoIPQualityGoodEnough: Call not on WiFI";
    goto LABEL_16;
  }

  if (self->mDiscardRTPMetrics)
  {
    v17 = @"isWiFiVoIPQualityGoodEnough:discard RTP metrics ";
LABEL_16:
    [WCM_Logging logLevel:29 message:v17];
    [v16 resetRTPMetrics];
    [v16 resetCumulativeRTPMetrics];
    v18 = v16;
    goto LABEL_17;
  }

  [(NSDate *)self->mLatteContextStartedTimer timeIntervalSinceNow];
  if (self->mTimeSinceLatteContextStarted - v20 < 3.0)
  {
    [WCM_Logging logLevel:29 message:@"isWiFiVoIPQualityGoodEnough: ignoring inital RTP metrics to avoid false alarm"];
    return 1;
  }

  getiRATConfigController = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 29, @"Rx Pkt loss: %lld, nominal buffer delay %lld", [v16 rxPktLoss], objc_msgSend(v16, "nominalJitterBufferDelay"));
  rxPktLoss = [v16 rxPktLoss];
  if (((rxPktLoss >= [getiRATConfigController faceTimeHandoverRxPktLossThreshold]) & v14) == 0)
  {
    [WCM_Logging logLevel:29 message:@"isWiFiVoIPQualityGoodEnough: true"];
    byte_1002B7B7B = 0;
    return 1;
  }

  [WCM_Logging logLevel:29 message:@"isWiFiVoIPQualityGoodEnough: false"];
  byte_1002B7B7B = 1;
  [(WRM_FT_HandoverManager *)self updateHandoverReasonCode:256];
  return 0;
}

- (BOOL)canWiFiTransportMeetActiveApplicationRequirements:(unint64_t)requirements :(unint64_t)a4 :(int)a5
{
  getiRATConfigController = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  if (a4 - 1 >= 2)
  {
    if (a4)
    {
      [WCM_Logging logLevel:29 message:@"Application category not supported"];
    }

    return 1;
  }

  if (a5 != 1 || ![getiRATConfigController rtpMetricsEnabled])
  {
    return 1;
  }

  return [(WRM_FT_HandoverManager *)self isWiFiVoIPQualityGoodEnough];
}

- (void)registerForCTNotifications
{
  if (self->mCTService)
  {
    [WCM_Logging logLevel:24 message:@"CT already registered."];
  }

  else
  {
    v3 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
    self->mCTService = v3;
    [(WRM_CTService *)v3 initCoreTelephonyClient];
  }

  mCTService = self->mCTService;

  [(WRM_CTService *)mCTService tiggerEnhanceLQMConfiguration];
}

- (void)registerForSCNotifications
{
  if (self->mSCService)
  {

    [WCM_Logging logLevel:29 message:@"SC already registered."];
  }

  else
  {
    self->mSCService = +[WRM_SCService WRM_SCServiceControllerSingleton];
  }
}

- (void)feedAWDMetricsCellularStatsWithUUID:(id)d
{
  v4 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];

  [v4 feedCellularMetricsWithUUID:d];
}

- (void)feedAWDMetricsCellularStats
{
  getCTService = [(WRM_FT_HandoverManager *)self getCTService];
  getSCService = [(WRM_FT_HandoverManager *)self getSCService];
  getCTDataIndictor = [getCTService getCTDataIndictor];
  isVoiceLQMValid = [getCTService isVoiceLQMValid];
  if (isVoiceLQMValid)
  {
    isVoiceLQMValid = [getCTService getLteVoiceLQM];
  }

  self->mWrmiRATFaceTimeMetrics->voiceLQM = isVoiceLQMValid;
  isDataLQMValid = [getSCService isDataLQMValid];
  if (isDataLQMValid)
  {
    isDataLQMValid = [getSCService getCellularDataLQM];
  }

  self->mWrmiRATFaceTimeMetrics->dataLQM = isDataLQMValid;
  dataAttachedWithCellularNetwork = [getCTService dataAttachedWithCellularNetwork];
  self->mDeviceAttachedWithCellularNetwork = dataAttachedWithCellularNetwork;
  if (dataAttachedWithCellularNetwork)
  {
    dataAttachedWithCellularNetwork = [getCTService getCurrentSignalBars];
  }

  self->mWrmiRATFaceTimeMetrics->signalBar = dataAttachedWithCellularNetwork;
  getServingCellType = [getCTService getServingCellType];
  mWrmiRATFaceTimeMetrics = self->mWrmiRATFaceTimeMetrics;
  if (getServingCellType > 4)
  {
    if (getServingCellType <= 6)
    {
      if (getServingCellType == 5)
      {
        v15 = @"CDMAHybrid";
      }

      else
      {
        v15 = @"eHRPD_RADIO";
      }

      goto LABEL_30;
    }

    switch(getServingCellType)
    {
      case 7:
        v15 = @"TDSCDMA";
        break;
      case 8:
        v15 = @"GSM";
        break;
      case 9:
        mWrmiRATFaceTimeMetrics->ratType = @"N_RADIO";
        [getCTService getNrRSRP];
        self->mWrmiRATFaceTimeMetrics->cellRsrp = v11;
        [getCTService getNrRSRQ];
        self->mWrmiRATFaceTimeMetrics->cellRsrq = v12;
        [getCTService getNrSNR];
LABEL_17:
        self->mWrmiRATFaceTimeMetrics->cellSnr = v13;
        return;
      default:
LABEL_29:
        v15 = @"UNKNOWN";
        break;
    }

LABEL_30:
    mWrmiRATFaceTimeMetrics->ratType = &v15->isa;
    return;
  }

  if (getServingCellType > 2)
  {
    if (getServingCellType == 3)
    {
      v15 = @"CDMA1X";
    }

    else
    {
      v15 = @"CDMAEVDO";
    }

    goto LABEL_30;
  }

  if (getServingCellType != 1)
  {
    if (getServingCellType == 2)
    {
      mWrmiRATFaceTimeMetrics->ratType = @"UMTS";
      [getCTService getServingCellRSCP];
      self->mWrmiRATFaceTimeMetrics->cellRsrp = v14;
      [getCTService getServingCellECIO];
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  mWrmiRATFaceTimeMetrics->ratType = @"LTE";
  [getCTService getServingCellRSRP];
  self->mWrmiRATFaceTimeMetrics->cellRsrp = v16;
  [getCTService getServingCellRSRQ];
  self->mWrmiRATFaceTimeMetrics->cellRsrq = v17;
  [getCTService getServingCellSNR];
  v19 = self->mWrmiRATFaceTimeMetrics;
  v19->cellSnr = v18;
  v19->isNSAMode = getCTDataIndictor - 16 < 4 || getCTDataIndictor == 8;
}

- (void)resetActiveCallEvaluationMetrics
{
  [WCM_Logging logLevel:29 message:@"resetActiveCallEvaluationMetrics"];
  [(NSDate *)self->mAudioEvaluationTimer timeIntervalSinceNow];
  self->mTimeSinceAudioEvaluationStarted = v3;
  getAVConferenceController = [(WRM_FT_HandoverManager *)self getAVConferenceController];
  mWiFi = self->mWiFi;
  if (mWiFi && (mWiFi = [(WCM_WiFiController *)mWiFi wifiService]) == 0)
  {
    [WCM_Logging logLevel:29 message:@"resetActiveCallEvaluationMetrics: ptrWiFiService==NULL"];
  }

  else
  {
    [(WCM_WiFiController *)mWiFi resetCumulativeCounters];
    [getAVConferenceController resetCumulativeRTPMetrics];
  }

  [WCM_Logging logLevel:29 message:@"resetActiveCallEvaluationMetrics: exit"];
}

- (void)evaluateActiveCallQuality
{
  [(NSDate *)self->mAudioEvaluationTimer timeIntervalSinceNow];
  v4 = v3;
  v5 = self->mTimeSinceAudioEvaluationStarted - v3;
  if (v5 <= 30.0)
  {
    [WCM_Logging logLevel:29 message:@"evaluateActiveCallQuality: not evaluating audio quality, call too short duration:%lf", *&v5];
    self->mTimeSinceAudioEvaluationStarted = v4;
    return;
  }

  [WCM_Logging logLevel:29 message:@"evaluateActiveCallQuality: evaluating audio quality, call duration:%lf", *&v5];
  mWiFi = self->mWiFi;
  if (!mWiFi)
  {
    wifiService = 0;
    goto LABEL_7;
  }

  wifiService = [(WCM_WiFiController *)mWiFi wifiService];
  if (wifiService)
  {
LABEL_7:
    [(WCM_WiFiService *)wifiService getCumulativeTxPer];
    v9 = (v8 * 100.0);
    getRSSI = [(WCM_WiFiService *)wifiService getRSSI];
    getAVConferenceController = [(WRM_FT_HandoverManager *)self getAVConferenceController];
    averagedNominalJitterBufferDelay = [getAVConferenceController averagedNominalJitterBufferDelay];
    [getAVConferenceController movAvgRxPktLoss];
    v14 = v13;
    [WCM_Logging logLevel:29 message:@"evaluateActiveCallQuality: Avg RSSI: %lld CumTX PER: %lld, AVG Nominal Jitter Buffer:%lld, RTP pkt loss:%lld ", getRSSI, v9, averagedNominalJitterBufferDelay, v13];
    [WCM_Logging logLevel:29 message:@"Handover Manager: Checking active call Quality evaluation criteria"];
    v16 = averagedNominalJitterBufferDelay <= 1000 && v14 <= 20 && v9 <= 20;
    if (!v16 && getRSSI >= -65)
    {
      [WCM_Logging logLevel:29 message:@"Handover Manager: Audio Quality was good"];
    }

    [(WRM_FT_HandoverManager *)self evaluateHandover];
    goto LABEL_17;
  }

  [WCM_Logging logLevel:29 message:@"evaluateActiveCallQuality: ptrWiFiService==NULL"];
LABEL_17:

  [WCM_Logging logLevel:29 message:@"evaluateActiveCallQuality: exit"];
}

- (BOOL)isMovingAverageUplinkAudioQualityOfCurrentCallGood:(int)good
{
  getiRATConfigController = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  if (good == 1)
  {
    v6 = getiRATConfigController;
    mWiFi = self->mWiFi;
    if (mWiFi)
    {
      wifiService = [(WCM_WiFiController *)mWiFi wifiService];
      if (!wifiService)
      {
        [WCM_Logging logLevel:29 message:@"isMovingAverageUplinkAudioQualityOfCurrentCallGood: ptrWiFiService==NULL"];
        v9 = 1;
LABEL_10:
        v10 = @"isMovingAverageUplinklinkAudioQualityOfCurrentCallGood exit";
        goto LABEL_11;
      }
    }

    else
    {
      wifiService = 0;
    }

    [(WCM_WiFiService *)wifiService getMovingAverageTxPer];
    v12 = (v11 * 100.0);
    isMovingAverageTxPerValid = [(WCM_WiFiService *)wifiService isMovingAverageTxPerValid];
    [WCM_Logging logLevel:29 message:@"isMovingAverageUplinkAudioQualityOfCurrentCallGood: TX PER (Mov Avg): %lld, Moving Avg Valid:%d", v12, isMovingAverageTxPerValid];
    faceTimeMinActiveWiFiAvgTxPktLossRateTh = [v6 faceTimeMinActiveWiFiAvgTxPktLossRateTh];
    v9 = 1;
    v10 = @"isMovingAverageUplinklinkAudioQualityOfCurrentCallGood exit";
    if (isMovingAverageTxPerValid && faceTimeMinActiveWiFiAvgTxPktLossRateTh < v12)
    {
      [WCM_Logging logLevel:29 message:@"Handover Manager: Moving average uplink audio quality was bad"];
      [(WRM_FT_HandoverManager *)self updateHandoverReasonCode:16];
      [(WRM_FT_HandoverManager *)self updateHandoverReasonCode:32];
      v9 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 1;
    v10 = @"isMovingAverageUplinkAudioQualityOfCurrentCallGood: returned";
  }

LABEL_11:
  [WCM_Logging logLevel:29 message:v10];
  return v9;
}

- (BOOL)isMovingAverageDownlinkAudioQualityOfCurrentCallGood:(int)good
{
  getAVConferenceController = [(WRM_FT_HandoverManager *)self getAVConferenceController];
  getiRATConfigController = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  if ((byte_1002B7DDB & 1) == 0)
  {
    v7 = @"isMovingAverageDownlinkAudioQualityOfCurrentCallGood: Call not on WiFI";
    goto LABEL_5;
  }

  if (!self->mDiscardRTPMetrics)
  {
    v10 = getiRATConfigController;
    if (self->mWiFi)
    {
      v11 = 0;
      if (good)
      {
LABEL_10:
        if (good != 1)
        {
          [WCM_Logging logLevel:29 message:@"isMovingAverageDownlinkAudioQualityOfCurrentCallGood: returned"];
          goto LABEL_6;
        }

        movAvgNominalJitterBufferDelay = [getAVConferenceController movAvgNominalJitterBufferDelay];
        [getAVConferenceController movAvgRxPktLoss];
        v14 = v13;
        v15 = [(WRM_FT_HandoverManager *)self isVideoQualityGood:1];
        poorConnectionDetected = [getAVConferenceController poorConnectionDetected];
        self->mWrmiRATFaceTimeMetrics->isPCDetected = [getAVConferenceController poorConnectionDetected];
        self->mWrmiRATFaceTimeMetrics->isStallDetected = [getAVConferenceController mediaStallDetected];
        [getAVConferenceController primaryAudioPacketLossRate];
        self->mWrmiRATFaceTimeMetrics->audioErasure = (v17 * 100.0);
        [getAVConferenceController deltaVideoErasure];
        self->mWrmiRATFaceTimeMetrics->videoErasure = v18;
        [getAVConferenceController totalVideoPacketLossRate];
        self->mWrmiRATFaceTimeMetrics->facetimePacketLoss = (v19 * 100.0);
        [WCM_Logging logLevel:29 message:@"isMovingAverageDownlinkAudioQualityOfCurrentCallGood: Moving Avg RTP packet loss:%lld, Mov Jitter Buffer Delay: %lld, video good : %lld, Bad connection deteted: %lld", v14, movAvgNominalJitterBufferDelay, v15, poorConnectionDetected];
        v20 = ([v10 faceTimeHandoverAvgRxPktLossThreshold] < v14) | poorConnectionDetected & v11;
        if (v20)
        {
          [WCM_Logging logLevel:29 message:@"Handover Manager: Moving average audio quality was bad or poor connection detected"];
          mediaStallDetected = [getAVConferenceController mediaStallDetected];
          if (mediaStallDetected)
          {
            v22 = 64;
          }

          else
          {
            v22 = 1;
          }

          if ((mediaStallDetected & 1) == 0 && v15)
          {
            if ([getAVConferenceController poorConnectionDetected])
            {
              v23 = 128;
            }

            else
            {
              v23 = 16;
            }

            [(WRM_FT_HandoverManager *)self updateHandoverReasonCode:v23];
            v22 = 256;
          }

          [(WRM_FT_HandoverManager *)self updateHandoverReasonCode:v22];
        }

        LOBYTE(v8) = v20 ^ 1;
        v24 = @"isMovingAverageAudioQualityOfCurrentCallGood: exit";
LABEL_35:
        [WCM_Logging logLevel:29 message:v24, v37, v38, v39];
        return v8 & 1;
      }
    }

    else
    {
      wifiService = [0 wifiService];
      getRSSI = [wifiService getRSSI];
      [wifiService getRxRatio];
      v28 = v27;
      isRxRatioValid = [wifiService isRxRatioValid];
      [wifiService getTxPer];
      v31 = ((v30 * 100.0) > 5) & [wifiService isTxPerValid];
      if (getRSSI < -75)
      {
        v31 = 1;
      }

      v11 = v31 | isRxRatioValid & (v28 >= 0.3);
      if (good)
      {
        goto LABEL_10;
      }
    }

    [getAVConferenceController primaryAudioPacketLossRate];
    v33 = v32;
    [getAVConferenceController primaryVideoPacketLossRate];
    v35 = v34;
    v8 = v33 < 1 && v35 < 1;
    if (v8 == 1)
    {
      [(WRM_FT_HandoverManager *)self updateHandoverReasonCode:0x10000];
    }

    v38 = v33;
    v39 = v35;
    v37 = v8;
    v24 = @"isMovingAverageDownlinkAudioQualityOfCurrentCallGood: returned, Audio Quality good : %lld, WiFi Audo Loss Rate: %lld, WiFi Video Loss Rate: %lld";
    goto LABEL_35;
  }

  v7 = @"isMovingAverageDownlinkAudioQualityOfCurrentCallGood: discard RTP metrics";
LABEL_5:
  [WCM_Logging logLevel:29 message:v7];
  [getAVConferenceController resetRTPMetrics];
  [getAVConferenceController resetCumulativeRTPMetrics];
  [getAVConferenceController resetPeriodicRTPStats];
LABEL_6:
  LOBYTE(v8) = 1;
  return v8 & 1;
}

- (void)toggleFastLQMReport:(BOOL)report
{
  reportCopy = report;
  wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
  if (byte_1002B7DDC != reportCopy)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100067584;
    v5[3] = &unk_10023E008;
    v6 = reportCopy;
    v5[4] = wifiService;
    dispatch_sync(&_dispatch_main_q, v5);
  }
}

- (unsigned)faceTimeCallType
{
  getAVConferenceController = [(WRM_FT_HandoverManager *)self getAVConferenceController];
  callType = [getAVConferenceController callType];
  if (callType != 2)
  {
    if ([getAVConferenceController callType] == 4)
    {
      LOBYTE(callType) = 2;
    }

    else
    {
      callType = [getAVConferenceController callType];
      if (callType != 1)
      {
        LOBYTE(callType) = [getAVConferenceController callType] == 3;
      }
    }
  }

  return callType;
}

- (void)callObserver:(id)observer callChanged:(id)changed
{
  v6 = [objc_msgSend(observer "calls")];
  if (v6 > 1)
  {
    v7 = 1;
LABEL_26:
    self->mDiscardRTPMetrics = v7;
    goto LABEL_27;
  }

  if (v6 != 1)
  {
    v7 = 0;
    goto LABEL_26;
  }

  calls = [observer calls];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [calls countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = v9;
  v11 = *v17;
  do
  {
    v12 = 0;
    do
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(calls);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      if ([v13 isOutgoing] & 1) == 0 && (objc_msgSend(v13, "hasConnected") & 1) == 0 && !objc_msgSend(v13, "hasEnded") || (objc_msgSend(v13, "hasConnected"))
      {
        v14 = 0;
LABEL_17:
        self->mDiscardRTPMetrics = v14;
        goto LABEL_18;
      }

      if (([v13 isOnHold] & 1) != 0 || objc_msgSend(v13, "isOutgoing") && (objc_msgSend(v13, "hasConnected") & 1) == 0 && (objc_msgSend(v13, "hasEnded") & 1) == 0)
      {
        v14 = 1;
        goto LABEL_17;
      }

LABEL_18:
      v12 = v12 + 1;
    }

    while (v10 != v12);
    v15 = [calls countByEnumeratingWithState:&v16 objects:v20 count:16];
    v10 = v15;
  }

  while (v15);
LABEL_27:
  [WCM_Logging logLevel:29 message:@"callObserver: discard RTP metrics: %d", self->mDiscardRTPMetrics];
}

- (void)initCallNotifications
{
  [WCM_Logging logLevel:29 message:@"TUCallCenterCallStatusChangedNotification register"];
  +[TUCallCenter sharedInstance];
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 addObserver:self selector:"handleCallNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = TUCallCenterVideoCallStatusChangedNotification;

  [(NSNotificationCenter *)v4 addObserver:self selector:"handleCallNotification:" name:v5 object:0];
}

- (void)handleCallNotification:(id)notification
{
  [WCM_Logging logLevel:29 message:@"handleCallNotification notification=%@", notification];
  name = [notification name];
  v6 = TUCallCenterCallStatusChangedNotification;
  if (([name isEqualToString:TUCallCenterCallStatusChangedNotification] & 1) != 0 || (v7 = objc_msgSend(notification, "name"), objc_msgSend(v7, "isEqualToString:", TUCallCenterVideoCallStatusChangedNotification)))
  {
    object = [notification object];
    [WCM_Logging logLevel:29 message:@"handleCallNotification call=%@", object];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 29, @"handleCallNotification provider=%@", [object provider]);
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 29, @"handleCallNotification bundleIdentifier=%@", [objc_msgSend(object "provider")]);
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 29, @"handleCallNotification inCallUIBundleIdentifier=%@", [objc_msgSend(object "provider")]);
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 29, @"handleCallNotification displayAppBundleIdentifier=%@", [objc_msgSend(object "provider")]);
    v9 = [(WRM_FT_HandoverManager *)self getiRATClientFromList:1];
    [WCM_Logging logLevel:29 message:@"handleCallNotification controller=%@", v9];
    if ([objc_msgSend(objc_msgSend(object "provider")] || objc_msgSend(objc_msgSend(objc_msgSend(object, "provider"), "displayAppBundleIdentifier"), "length"))
    {
      v10 = xpc_dictionary_create(0, 0, 0);
      v11 = [objc_msgSend(objc_msgSend(object "provider")];
      provider = [object provider];
      if (v11)
      {
        bundleIdentifier = [provider bundleIdentifier];
      }

      else
      {
        bundleIdentifier = [provider displayAppBundleIdentifier];
      }

      xpc_dictionary_set_string(v10, "kWRMVoIPBundleId", [bundleIdentifier UTF8String]);
      v14 = [object status] == 3 || objc_msgSend(object, "status") == 4;
      xpc_dictionary_set_BOOL(v10, "kWRMVoIPCallStartingFlag", v14);
      xpc_dictionary_set_BOOL(v10, "kWRMVoIPCallEndedFlag", [object status] == 6);
      xpc_dictionary_set_BOOL(v10, "kWRMVoIPCallActiveFlag", [object status] == 1);
      xpc_dictionary_set_BOOL(v10, "kWRMVoIPCallVideoFlag", [object isVideo]);
      [v9 sendMessage:2500 withArgs:v10];
      xpc_release(v10);
    }
  }

  if ([objc_msgSend(notification "name")])
  {
    object2 = [notification object];
    if ([object2 status] == 6 && ((objc_msgSend(objc_msgSend(object2, "provider"), "isTelephonyProvider") & 1) != 0 || objc_msgSend(objc_msgSend(object2, "provider"), "isFaceTimeProvider")))
    {
      mWrmiRATFaceTimeMetrics = self->mWrmiRATFaceTimeMetrics;
      if (mWrmiRATFaceTimeMetrics)
      {
        mWrmiRATFaceTimeMetrics->callType = 0;
        if ([objc_msgSend(object2 "provider")])
        {
          isVideo = [object2 isVideo];
          v18 = self->mWrmiRATFaceTimeMetrics;
          if (isVideo)
          {
            v19 = 2;
          }

          else
          {
            v19 = 3;
          }

          goto LABEL_30;
        }

        if ([objc_msgSend(object2 "provider")])
        {
          if ([object2 providerContext] && objc_msgSend(objc_msgSend(objc_msgSend(object2, "providerContext"), "objectForKeyedSubscript:", @"kCallSubType"), "isEqualToString:", @"kCallSubTypeVoLTE"))
          {
            goto LABEL_29;
          }

          if ([object2 providerContext] && objc_msgSend(objc_msgSend(objc_msgSend(object2, "providerContext"), "objectForKeyedSubscript:", @"kCallSubType"), "isEqualToString:", @"kCallSubTypeWifi"))
          {
            v18 = self->mWrmiRATFaceTimeMetrics;
            v19 = 5;
LABEL_30:
            v18->callType = v19;
            goto LABEL_31;
          }

          if ([object2 providerContext] && objc_msgSend(objc_msgSend(objc_msgSend(object2, "providerContext"), "objectForKeyedSubscript:", @"kCallSubType"), "isEqualToString:", @"kCallSubTypeVoNR"))
          {
LABEL_29:
            v18 = self->mWrmiRATFaceTimeMetrics;
            v19 = 4;
            goto LABEL_30;
          }

          if ([object2 providerContext] && objc_msgSend(objc_msgSend(objc_msgSend(object2, "providerContext"), "objectForKeyedSubscript:", @"kCallSubType"), "isEqualToString:", @"kCallSubTypeTelephony"))
          {
            v18 = self->mWrmiRATFaceTimeMetrics;
            v19 = 1;
            goto LABEL_30;
          }
        }

LABEL_31:
        if ([object2 localSenderIdentityUUID])
        {
          v20 = [[NSUUID alloc] initWithUUIDString:{objc_msgSend(objc_msgSend(object2, "localSenderIdentityUUID"), "UUIDString")}];
        }

        else
        {
          v20 = 0;
        }

        disconnectedReason = [object2 disconnectedReason];
        objc_initWeak(&location, self);
        mQueue = self->mQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100067DD0;
        block[3] = &unk_10023F018;
        objc_copyWeak(&v24, &location);
        block[4] = v20;
        block[5] = self;
        v25 = disconnectedReason;
        dispatch_async(mQueue, block);
        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }
    }
  }
}

@end