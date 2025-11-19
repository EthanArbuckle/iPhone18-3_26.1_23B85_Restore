@interface WRM_FT_HandoverManager
+ (id)WRM_FT_HandoverManagerSingleton;
+ (id)allocWithZone:(_NSZone *)a3;
- (BOOL)canWiFiTransportMeetActiveApplicationRequirements:(unint64_t)a3 :(unint64_t)a4 :(int)a5;
- (BOOL)canWiFiTransportMeetIdleApplicationRequirements:(unint64_t)a3 :(unint64_t)a4 :(int)a5;
- (BOOL)doesIRATClientSubscriptionContextExist;
- (BOOL)handoverEvaluationRequired;
- (BOOL)isCellularEntryCriteriaMetForFaceTimeCallCurrentLinkWiFi;
- (BOOL)isCellularExitCriteriaMetForFaceTimeCallCurrentLinkCellular;
- (BOOL)isMovingAverageDownlinkAudioQualityOfCurrentCallGood:(int)a3;
- (BOOL)isMovingAverageUplinkAudioQualityOfCurrentCallGood:(int)a3;
- (BOOL)isWiFiArqQualityIndicatorGood:(unint64_t)a3 :(unint64_t)a4 :(int)a5 :(BOOL)a6;
- (BOOL)isWiFiBeaconLossQualityIndicatorGood:(unint64_t)a3 :(unint64_t)a4 :(int)a5;
- (BOOL)isWiFiDataRateIndicatorGoodForFaceTime:(unint64_t)a3 :(int)a4;
- (BOOL)isWiFiLinkEvaluationDesired;
- (BOOL)isWiFiLoadQualityIndicatorGood:(unint64_t)a3 :(unint64_t)a4 :(BOOL)a5 :(int)a6;
- (BOOL)isWiFiVoIPQualityGoodEnough;
- (BOOL)needWiFiLQM;
- (WRM_FT_HandoverManager)init;
- (id)getiRATClientFromList:(int)a3;
- (int64_t)getRSSIHysteresis;
- (int64_t)getSNRHysteresis;
- (unsigned)faceTimeCallType;
- (void)addiRatClient:(id)a3;
- (void)callObserver:(id)a3 callChanged:(id)a4;
- (void)configureIDSMetricsReporting;
- (void)configureRTPMetricsReporting;
- (void)dealloc;
- (void)evaluateActiveCallQuality;
- (void)evaluateCellAleratedState:(unint64_t)a3;
- (void)evaluateHandover;
- (void)evaluateWiFiAleratedState:(unint64_t)a3;
- (void)feedAWDMetricsCellularStats;
- (void)feedAWDMetricsCellularStatsWithUUID:(id)a3;
- (void)feedAWDMetricsWiFiStats;
- (void)handlaIDSMetrics:(id)a3;
- (void)handleCallNotification:(id)a3;
- (void)handleCellularLinkQualityUpdate:(id)a3;
- (void)handleControllerAvailability:(unint64_t)a3;
- (void)handleFTConfig;
- (void)handleGetMetrcisMessage:(id)a3;
- (void)handleIDSRegisterd;
- (void)handleInternalMessage:(id)a3;
- (void)handleLinkPrefSubscribe:(id)a3;
- (void)handleLinkPrefSubscribeIDS:(id)a3;
- (void)handleMotionUpdate:(id)a3;
- (void)handlePeriodicRTPMetrics:(id)a3;
- (void)handleRTPEvent:(id)a3;
- (void)handleSessionNotification:(id)a3;
- (void)handleSubscribeStatusUpdateIDS:(id)a3 :(BOOL)a4;
- (void)handleWiFiConfig;
- (void)handleWiFiLinkQualityUpdate:(id)a3;
- (void)handleWiFiStateChaneEvents:(id)a3;
- (void)initCallNotifications;
- (void)registerForCTNotifications;
- (void)registerForSCNotifications;
- (void)removeiRatClient:(id)a3;
- (void)resetActiveCallEvaluationMetrics;
- (void)toggleFastLQMReport:(BOOL)a3;
- (void)updateControllerSession:(id)a3 ofId:(unint64_t)a4;
- (void)updateControllerState:(id)a3;
- (void)updateRSSITh:(int64_t)a3;
- (void)updateSlotInfoCTServie;
@end

@implementation WRM_FT_HandoverManager

+ (id)WRM_FT_HandoverManagerSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006288C;
  block[3] = &unk_10023DB28;
  block[4] = a1;
  if (qword_1002B7DC8 != -1)
  {
    dispatch_once(&qword_1002B7DC8, block);
  }

  return qword_1002B7DD0;
}

- (BOOL)needWiFiLQM
{
  v2 = [(WRM_FT_HandoverManager *)self doesIRATClientSubscriptionContextExist];
  v3 = "NO";
  if (v2)
  {
    v3 = "YES";
  }

  [WCM_Logging logLevel:29 message:@"%s: needWiFiLQM? %s ", "[WRM_FT_HandoverManager needWiFiLQM]", v3];
  return v2;
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

      v9 = [*(*(&v12 + 1) + 8 * i) getHandoverContexts];
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 29, @"%s: iRAT client Context count:%d.", "-[WRM_FT_HandoverManager doesIRATClientSubscriptionContextExist]", [v9 count]);
      v6 |= [v9 count] != 0;
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
  v3 = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  [(NSDate *)self->mStartTime timeIntervalSinceNow];
  v5 = v4;
  v6 = self->mPrevTimeSinceStart - v4;
  [WCM_Logging logLevel:29 message:@"HO Evaluation time duration is: %lf", *&v6];
  v7 = [v3 pingPongAvoidanceThresholdStationary];
  if (v6 * 1000.0 >= v7)
  {
    self->mPrevTimeSinceStart = v5;
  }

  return v6 * 1000.0 >= v7;
}

- (void)evaluateHandover
{
  v2 = self;
  v3 = [(NSMutableArray *)self->miRATClientContexts count];
  if (!v3)
  {

    [WCM_Logging logLevel:29 message:@"Evaluate Handover: No iRAT client available."];
    return;
  }

  [WCM_Logging logLevel:29 message:@"Evaluate Handover: Total number of iRAT clients %zu.", v3];
  [(WRM_FT_HandoverManager *)v2 updateSlotInfoCTServie];
  v47 = [(WRM_FT_HandoverManager *)v2 getiRATConfigController];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v2->miRATClientContexts;
  v44 = [(NSMutableArray *)obj countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (!v44)
  {
LABEL_101:
    v39 = "ClientFaceTimeCalling";
    goto LABEL_102;
  }

  v43 = *v58;
  v48 = v2;
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
      v6 = [v5 getMyClientType];
      v7 = "ClientCommCenter";
      if (v6 != 1)
      {
        if ((v6 - 2) >= 0x14)
        {
          v7 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
          if (v6 == 22)
          {
            v7 = "ClientCoreMediaStreaming";
          }
        }

        else
        {
          v7 = off_10023F038[v6 - 2];
        }
      }

      v42 = v6 - 1;
      v46 = v4;
      v52 = v6;
      [WCM_Logging logLevel:29 message:@"<%s>Evaluate Handover: BEGIN.", v7];
      v45 = v5;
      v8 = [v5 getHandoverContexts];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v49 = v8;
      v9 = [v8 countByEnumeratingWithState:&v53 objects:v61 count:16];
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
            v15 = [v14 getBandwidth];
            v16 = [v14 getApplicationType];
            v17 = [v14 getCallState];
            v18 = [v14 getConnectedLinkType];
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

            if (v16)
            {
              v20 = "VOICE";
              if (v16 != 1)
              {
                v20 = "UNKNOWN_APP!!!";
                if (v16 == 2)
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
            if (v18 || (byte_1002B7DDE & 1) != 0)
            {
              goto LABEL_32;
            }

            if (byte_1002B7DDF == 1)
            {
              [WCM_Logging logLevel:29 message:@"evaluate_handover: connectedLinkType == WRM_CELLULAR"];
              [v14 getDeltaTimeSinceLastCellularRecommendation];
              v30 = v29 * 1000.0;
              if (v17)
              {
                [WCM_Logging logLevel:29 message:@"state: active, getDeltaTimeSinceLastCellularRecommendation: delta time:%lf", v29 * 1000.0];
                if (v30 < [v47 faceTimeCellularStickinessThreaholdActive])
                {
                  goto LABEL_85;
                }

                [WCM_Logging logLevel:29 message:@"WiFi link evaluation criteria met: FaceTimeCellularStickinessThreaholdStationaryActive"];
LABEL_32:
                [v14 updatePrevTimeStamp];
                goto LABEL_33;
              }

              v34 = [v14 getPingPongAvoidanceTimerMultiplier];
              v35 = [v47 faceTimeCellularStickinessThreaholdActive] * v34;
              [WCM_Logging logLevel:29 message:@"state: idle, getDeltaTimeSinceLastCellularRecommendation: delta time:%lf, effective blockout:%lld", *&v30, v35];
              v36 = v35;
              v2 = v48;
              if (v30 < v36)
              {
LABEL_85:
                if (v16)
                {
                  v37 = "VOICE";
                  if (v16 != 1)
                  {
                    v37 = "UNKNOWN_APP!!!";
                    if (v16 == 2)
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
            [(WRM_FT_HandoverManager *)v2 initHandoverReasonCode];
            if (v16)
            {
              v21 = "VOICE";
              if (v16 != 1)
              {
                v21 = "UNKNOWN_APP!!!";
                if (v16 == 2)
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
            v22 = [(WRM_FT_HandoverManager *)v2 evaluateLink:v15];
            v23 = v22 == 1;
            if ([v14 getConnectedLinkType] == v23)
            {
              [v14 setLinkPreferenceNotificationRequired:0];
              if (v16)
              {
                v24 = "VOICE";
                v25 = v52;
                if (v16 != 1)
                {
                  v24 = "UNKNOWN_APP!!!";
                  if (v16 == 2)
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
              [WCM_Logging logLevel:29 message:@"{%s}Link preference did not change for application type =%lld for client =%d current link type =%d ", v24, v16, v25, v23];
              goto LABEL_72;
            }

            if (v18)
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
              [(WRM_MetricsService *)v48->mMetrics updateiRATMetricCellToWifi:v17];
            }

            else
            {
              if (v18 != 1 || v22 == 1)
              {
                goto LABEL_58;
              }

              [(WRM_MetricsService *)v48->mMetrics updateiRATMetricWifiToCell:v17];
            }

            byte_1002B7DDF = v27 ^ 1;
LABEL_58:
            [v14 setLinkPreferenceNotificationRequired:1];
            [v14 setConnectedLinkType:v23];
            v2 = v48;
            [v14 setHandoverReasonType:v48->mReasons];
            if (v16)
            {
              v28 = "VOICE";
              if (v16 != 1)
              {
                v28 = "UNKNOWN_APP!!!";
                if (v16 == 2)
                {
                  v28 = "VIDEO";
                }
              }
            }

            else
            {
              v28 = "DATA";
            }

            [WCM_Logging logLevel:29 message:@"{%s}Link preference changed for application type =%lld for client =%d", v28, v16, v52];
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

            if (v16)
            {
              v33 = "VOICE";
              if (v16 != 1)
              {
                v33 = "UNKNOWN_APP!!!";
                if (v16 == 2)
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

      [v45 handleLinkPreferenceNotificationInternetDataVoiceVideo:0 :v2->mCTService :{-[WCM_WiFiController wifiService](v2->mWiFi, "wifiService")}];
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
  v3 = [(WRM_CTService *)mCTService getUserDataPreferredSlot];

  [(WRM_CTService *)mCTService setActiveSlot:v3];
}

- (void)feedAWDMetricsWiFiStats
{
  v3 = [(WCM_WiFiController *)self->mWiFi wifiService];
  self->mWrmiRATFaceTimeMetrics->wifiRssi = [(WCM_WiFiService *)v3 getRSSI];
  self->mWrmiRATFaceTimeMetrics->wifiSNR = [(WCM_WiFiService *)v3 getSNR];
  [(WCM_WiFiService *)v3 getRxPhyRate];
  self->mWrmiRATFaceTimeMetrics->wifiRxPhyRate = v4;
  [(WCM_WiFiService *)v3 getTxPhyRate];
  self->mWrmiRATFaceTimeMetrics->wifiTxPhyRate = v5;
  self->mWrmiRATFaceTimeMetrics->cca = [(WCM_WiFiService *)v3 getCCA];
  self->mWrmiRATFaceTimeMetrics->qbssLoad = [(WCM_WiFiService *)v3 getChannelUtlization];
  [(WCM_WiFiService *)v3 getRxRatio];
  self->mWrmiRATFaceTimeMetrics->wifiRxRetry = (v6 * 100.0);
  [(WCM_WiFiService *)v3 getTxPer];
  self->mWrmiRATFaceTimeMetrics->wifiTxPER = (v7 * 100.0);
  self->mWrmiRATFaceTimeMetrics->captiveNetworks = [(WCM_WiFiService *)v3 isWiFiNetworkCaptive];
  self->mWrmiRATFaceTimeMetrics->stationCount = [(WCM_WiFiService *)v3 getConnectedStationCount];
}

- (void)handleMotionUpdate:(id)a3
{
  int64 = xpc_dictionary_get_int64(a3, "kWRMM_MOTION_STATE");
  [(WRM_FT_HandoverManager *)self evaluateHandover];
  [WCM_Logging logLevel:29 message:@"handleMotionUpdate received: %s: motion state: %d", "[WRM_FT_HandoverManager(privateFunctions) handleMotionUpdate:]", int64];
}

- (void)handleInternalMessage:(id)a3
{
  uint64 = xpc_dictionary_get_uint64(a3, "kInternalMessageId");
  value = xpc_dictionary_get_value(a3, "kInternalMessageArgs");
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
  v3 = [(WRM_FT_HandoverManager *)self getSCService];
  v4 = [(WRM_FT_HandoverManager *)self getCTService];
  v5 = [v4 getServingCellType];
  v6 = [v4 getCurrentSignalBars];
  if (v5 == 1)
  {
    [v4 getServingCellRSRP];
  }

  else
  {
    [v4 getNrRSRP];
  }

  v8 = v7;
  v9 = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  v10 = [v3 getCellularDataLQM];
  [WCM_Logging logLevel:29 message:@"isCellularEntryCriteriaMetForFaceTimeCallCurrentLinkWiFi, LQM: %d, Signal Bars: %d", v10, v6];
  if (v5 > 2)
  {
    if (v5 != 3 && v5 != 8)
    {
      if (v5 == 9)
      {
        v11 = v8 >= -110.0;
        [WCM_Logging logLevel:29 message:@"FaceTime entry criteria met on 5G radio:%f, status:%d", *&v8, v8 >= -110.0];
        return v11;
      }

      goto LABEL_17;
    }

    if (byte_1002B7B7B == 1)
    {
      v13 = [v9 minSigBarTh2];
      if (v10 > 49 || v6 >= (v13 - 1))
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
      [WCM_Logging logLevel:29 message:@"FaceTime not supported on 2G radio:%ld", v6];
    }

    v11 = 0;
    goto LABEL_25;
  }

  if (v5 != 2)
  {
LABEL_17:
    v14 = [v9 minSigBarTh2] - 1;
    return v10 > 49 || v6 >= v14;
  }

  v12 = [v9 minSigBarTh2];
  if (v10 > 49 || v6 >= (v12 - 1))
  {
    [WCM_Logging logLevel:29 message:@"UMTS entry conditions are met bars:%ld", v6];
    return 1;
  }

  else
  {
    [WCM_Logging logLevel:29 message:@"UMTS entry conditions are not met bars:%ld", v6];
    return 0;
  }
}

- (BOOL)isCellularExitCriteriaMetForFaceTimeCallCurrentLinkCellular
{
  v3 = [(WRM_FT_HandoverManager *)self getCTService];
  v4 = [v3 getServingCellType];
  v5 = [v3 getCurrentSignalBars];
  if (v4 == 1)
  {
    [v3 getServingCellRSRP];
  }

  else
  {
    [v3 getNrRSRP];
  }

  v7 = v6;
  v8 = [-[WRM_FT_HandoverManager getSCService](self "getSCService")];
  v9 = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  [WCM_Logging logLevel:29 message:@"isCellularExitCriteriaMetForFaceTimeCallCurrentLinkCellular, LQM: %d, Signal Bars: %d", v8, v5];
  if (v4 <= 2)
  {
    goto LABEL_13;
  }

  if (v4 == 3 || v4 == 8)
  {
    [(WRM_FT_HandoverManager *)self updateHandoverReasonCode:0x400000];
    [WCM_Logging logLevel:29 message:@"isCellularExitCriteriaMetForFaceTimeCallCurrentLinkCellular:%ld", v5];
    return 1;
  }

  if (v4 != 9)
  {
LABEL_13:
    if ((v5 > ([v9 minSigBarTh1] + 1) || v8 >= 11) && v5 > objc_msgSend(v9, "minSigBarTh1"))
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

- (BOOL)isWiFiDataRateIndicatorGoodForFaceTime:(unint64_t)a3 :(int)a4
{
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v6 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager WRM_HandoverManagerSingleton];
  v7 = [(WCM_WiFiController *)self->mWiFi wifiService];
  [+[WRM_BWEvalManager WRM_BWEvalManagerSingleton](WRM_BWEvalManager "WRM_BWEvalManagerSingleton")];
  v8 = *&v20[0];
  v9 = *&v20[0];
  [(WCM_WiFiService *)v7 getRxRetryPercent];
  v11 = v10;
  [(WCM_WiFiService *)v7 getTxRetryPercent];
  v13 = v12;
  [(WCM_WiFiService *)v7 getRxPhyRate];
  v15 = (1.0 - v11) * v14;
  [(WCM_WiFiService *)v7 getTxPhyRate];
  v17 = (1.0 - v13) * v16;
  [WCM_Logging logLevel:29 message:@"Estimated BW: %.2f, Calculated Available Rx PHY Rate: %.2f, Calculated Available TX Rate: %.2f", v9, v15, v17];
  if (a4 == 1)
  {
    return v9 >= [v6 idsMinWiFiThroughputTh1] && v15 >= objc_msgSend(v6, "idsMinWiFiEffectivePhyRateTh1") && v17 >= objc_msgSend(v6, "idsMinWiFiEffectivePhyRateTh1");
  }

  return !a4 && v8 > 0x8FB;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = [a1 WRM:a3 FT:?HandoverManagerSingleton];

  return v3;
}

- (void)addiRatClient:(id)a3
{
  miRATClientContexts = self->miRATClientContexts;
  objc_sync_enter(miRATClientContexts);
  [(NSMutableArray *)self->miRATClientContexts addObject:a3];
  [(WRM_FT_HandoverManager *)self existingContexts];

  objc_sync_exit(miRATClientContexts);
}

- (void)removeiRatClient:(id)a3
{
  miRATClientContexts = self->miRATClientContexts;
  objc_sync_enter(miRATClientContexts);
  [(WRM_FT_HandoverManager *)self existingContexts];
  [(NSMutableArray *)self->miRATClientContexts removeObject:a3];
  [(WRM_FT_HandoverManager *)self existingContexts];

  objc_sync_exit(miRATClientContexts);
}

- (void)evaluateCellAleratedState:(unint64_t)a3
{
  v4 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager singleton];
  if (([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")] & 1) == 0 && v4 > 6)
  {
    return;
  }

  mInAleratedState = self->mInAleratedState;
  v6 = [(WRM_FT_HandoverManager *)self getCTService];
  v7 = [v6 getServingCellType];
  v8 = v7;
  if (v7 == 1)
  {
    [v6 getServingCellRSRP];
    v10 = v9;
    [v6 getServingCellSNR];
    v12 = v11;
    [v6 getServingCellRSRQ];
    goto LABEL_8;
  }

  if (v7 != 2)
  {
    if (v7 != 9)
    {
      [WCM_Logging logLevel:29 message:@" RAT type: %d", v7];
      v10 = 0.0;
      goto LABEL_9;
    }

    [v6 getNrRSRP];
    v10 = v14;
    [v6 getNrSNR];
    v12 = v15;
    [v6 getNrRSRQ];
LABEL_8:
    [WCM_Logging logLevel:29 message:@"RSRP: %lf, SNR: %lf, RSRQ: %lf", *&v10, v12, v13];
LABEL_9:
    v16 = 0.0;
    goto LABEL_10;
  }

  [v6 getServingCellECIO];
  v23 = v22;
  [v6 getServingCellRSCP];
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

- (void)evaluateWiFiAleratedState:(unint64_t)a3
{
  v4 = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  mInAleratedState = self->mInAleratedState;
  [WCM_Logging logLevel:29 message:@"evaluateWiFiAleratedState, state:%d", mInAleratedState];
  v6 = [(WCM_WiFiController *)self->mWiFi wifiService];
  v7 = [(WCM_WiFiService *)v6 getRSSI];
  v8 = [(WCM_WiFiService *)v6 getCCA];
  v9 = [(WCM_WiFiService *)v6 getConnectedStationCount];
  [(WCM_WiFiService *)v6 getTxPer];
  v11 = v10;
  [(WCM_WiFiService *)v6 getMovingAverageTxPer];
  v13 = v12;
  v14 = [(WCM_WiFiService *)v6 isMovingAverageTxPerValid];
  [(WCM_WiFiService *)v6 getRxRatio];
  v16 = v15;
  v17 = [(WCM_WiFiService *)v6 isRxRatioValid];
  v18 = [(WRM_FT_HandoverManager *)self getAVConferenceController];
  [v18 deltaVideoErasure];
  v20 = v19;
  if (v7 >= [v4 faceTimeAleratedModeRssiTh0])
  {
    v23 = 0;
  }

  else if (v14 && [v4 faceTimeAleratedModeTxPer1] <= (v13 * 100.0))
  {
    v23 = 1;
  }

  else
  {
    v21 = [v4 faceTimeAleratedModeCCATh0];
    if (v16 >= 0.3)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0;
    }

    v23 = 1;
    if (v8 <= v21 && (v22 & 1) == 0)
    {
      [v18 movAvgRxPktLoss];
      v23 = v24 >= 3.0;
    }
  }

  if (self->mInAleratedState)
  {
    if (v7 >= [v4 faceTimeAleratedModeRssiTh0] && objc_msgSend(v4, "faceTimeAleratedModeTxPer0") >= (v11 * 100.0))
    {
      mInAleratedState &= v8 > [v4 faceTimeAleratedModeCCATh0];
    }
  }

  else
  {
    v25 = v7 <= [v4 faceTimeAleratedModeRssiTh1] || v23 || v8 >= objc_msgSend(v4, "faceTimeAleratedModeCCATh1") && objc_msgSend(v4, "faceTimeAleratedModeVideoErasures") < v20 || v8 >= objc_msgSend(v4, "faceTimeAleratedModeCCATh1") && objc_msgSend(v4, "faceTimeAleratedModeStationCount") <= v9;
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
    if ((v7 + 60) <= 0xFFFFFFFFFFFFFFF6)
    {
      [(WRM_FT_HandoverManager *)self toggleFastLQMReport:v7 < -69];
    }

    self->mInAleratedState = v26;
  }
}

- (id)getiRATClientFromList:(int)a3
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
      if ([v10 getMyClientType] == a3)
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

- (void)updateControllerSession:(id)a3 ofId:(unint64_t)a4
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063530;
  block[3] = &unk_10023DFB8;
  block[5] = self;
  block[6] = a4;
  block[4] = a3;
  dispatch_async(mQueue, block);
}

- (void)updateControllerState:(id)a3
{
  mQueue = self->mQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006391C;
  v4[3] = &unk_10023DC80;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(mQueue, v4);
}

- (void)handleSessionNotification:(id)a3
{
  uint64 = xpc_dictionary_get_uint64(a3, "kMessageId");
  if (uint64 > 405)
  {
    if (uint64 > 414)
    {
      switch(uint64)
      {
        case 415:

          [(WRM_FT_HandoverManager *)self handleGetMetrcisMessage:a3];
          break;
        case 600:

          [(WRM_FT_HandoverManager *)self handlaIDSMetrics:a3];
          break;
        case 1000:
          value = xpc_dictionary_get_value(a3, "kMessageArgs");

          [(WRM_FT_HandoverManager *)self handleInternalMessage:value];
          break;
      }
    }

    else
    {
      switch(uint64)
      {
        case 406:
          [(WRM_FT_HandoverManager *)self handleLinkPrefSubscribe:a3];
LABEL_45:
          [(WCM_WiFiController *)self->mWiFi toggleWiFiLQMIfNeeded:[(WRM_FT_HandoverManager *)self needWiFiLQM]];
          [(WRM_FT_HandoverManager *)self registerForCTNotifications];

          [(WRM_FT_HandoverManager *)self registerForSCNotifications];
          return;
        case 407:

          [(WRM_FT_HandoverManager *)self handleSubscribeStatusUpdate:a3];
          break;
        case 408:

          [(WRM_FT_HandoverManager *)self handleCellularLinkQualityUpdate:a3];
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

          [(WRM_FT_HandoverManager *)self handleWiFiStateChaneEvents:a3];
          break;
        case 201:

          [(WRM_FT_HandoverManager *)self handleRTPEvent:a3];
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

          [(WRM_FT_HandoverManager *)self handleSubscribeStatusUpdateIDS:a3];
        }

        return;
      }

      [(WRM_FT_HandoverManager *)self handleLinkPrefSubscribeIDS:a3];
      goto LABEL_45;
    }

    [(WRM_FT_HandoverManager *)self handlePeriodicRTPMetrics:a3];
  }
}

- (void)handleControllerAvailability:(unint64_t)a3
{
  if ([(WRM_FT_HandoverManager *)self enableiRATManager])
  {
    if (a3 > 11)
    {
      if (a3 == 12)
      {

        [(WRM_FT_HandoverManager *)self handleIDSToolRegisterd];
      }

      else if (a3 == 14)
      {

        [(WRM_FT_HandoverManager *)self handleFTConfig];
      }
    }

    else if (a3 == 1)
    {

      [(WRM_FT_HandoverManager *)self handleWiFiConfig];
    }

    else if (a3 == 11)
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

- (void)handlaIDSMetrics:(id)a3
{
  mWiFi = self->mWiFi;
  if (mWiFi)
  {
    if ([(WCM_WiFiController *)mWiFi wifiService])
    {
      mIDSMetricsController = self->mIDSMetricsController;

      [(WRM_IdsMetricsController *)mIDSMetricsController handlePeriodicIDSMetrics:a3];
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
    LOBYTE(v6) = 0;
    return v6;
  }

  v4 = [(WCM_WiFiController *)mWiFi wifiService];
  if (!v4)
  {
    v8 = @"isWiFiLinkEvaluationDesired: WiFi service not initialized.";
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [(WCM_WiFiService *)v4 isWiFiPrimaryInterface];
  if (v6)
  {
    v7 = [(WCM_WiFiService *)v5 getRSSI];
    LOBYTE(v6) = v7 >= [-[WRM_FT_HandoverManager getiRATConfigController](self "getiRATConfigController")];
  }

  return v6;
}

- (void)handleWiFiLinkQualityUpdate:(id)a3
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

- (void)handleWiFiStateChaneEvents:(id)a3
{
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
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
      v8 = [(WCM_WiFiController *)self->mWiFi wifiService];
      [(WCM_WiFiService *)v8 updateTxStats:0];
      [(WCM_WiFiService *)v8 updateTxPer];
      [(WCM_WiFiService *)v8 updateFwTxStats:0];
      [(WCM_WiFiService *)v8 updateFwTxPer];
      [(WCM_WiFiService *)v8 updateRxStats:0];
      [(WCM_WiFiService *)v8 updateRxRatio];
      [(WCM_WiFiService *)v8 updateRxBeacons:0];
      [(WCM_WiFiService *)v8 updateRxBeaconPer];
      [(WCM_WiFiService *)v8 setRSSI:v6];
      [(WCM_WiFiService *)v8 setSNR:v7];
    }

    [(WRM_FT_HandoverManager *)self evaluateHandover];
  }

  else
  {

    [WCM_Logging logLevel:29 message:@"FT Handover Manager:Empty message received"];
  }
}

- (void)handleCellularLinkQualityUpdate:(id)a3
{
  [WCM_Logging logLevel:29 message:@"FT Handover Manager received Cellular link metrics"];
  if ([(WRM_FT_HandoverManager *)self handoverEvaluationRequired])
  {

    [(WRM_FT_HandoverManager *)self evaluateHandover];
  }
}

- (void)updateRSSITh:(int64_t)a3
{
  if ((a3 + 79) >= 0xFFFFFFFFFFFFFFF7)
  {
    [(WRM_iRATConfig *)self->miRATConfig updateFaceTimeRSSITh:?];
  }
}

- (void)handleLinkPrefSubscribe:(id)a3
{
  byte_1002B7DDD = 1;
  dword_1002B7DE0 = 0;
  byte_1002B7DDF = 0;
  byte_1002B7DD8 = 0;
  [WCM_Logging logLevel:29 message:@"HandoverManager: handleIWLANRadioLinkPreferenceRequest."];
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  uint64 = xpc_dictionary_get_uint64(a3, "kClientType");
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

- (void)handleLinkPrefSubscribeIDS:(id)a3
{
  [WCM_Logging logLevel:29 message:@"IDS WiFi-Cell Link Eval Manager: handleLinkPrefSubscribe."];
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  uint64 = xpc_dictionary_get_uint64(a3, "kClientType");
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
    v17 = self;
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
    v17 = self;
    [v7 removeAllMobilityContextsFromList];
    [WCM_Logging logLevel:29 message:@"Removing all contexts from iRAT client."];
LABEL_13:

    [(WRM_FT_HandoverManager *)v17 evaluateHandover];
    return;
  }

  [WCM_Logging logLevel:29 message:@"Ignoring un-subscribe message from a client for which subscription does not exist"];
}

- (void)handleGetMetrcisMessage:(id)a3
{
  uint64 = xpc_dictionary_get_uint64(a3, "kClientType");
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

- (void)handleSubscribeStatusUpdateIDS:(id)a3 :(BOOL)a4
{
  uint64 = xpc_dictionary_get_uint64(a3, "kClientType");
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
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
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

- (void)handleRTPEvent:(id)a3
{
  v5 = [(WRM_FT_HandoverManager *)self getAVConferenceController];
  [v5 handleRTPEvent:a3];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 29, @"handleRTPEvent, poor connection =%lld, mediaStall = %lld", [v5 poorConnectionDetected], objc_msgSend(v5, "mediaStallDetected"));
  [(WRM_FT_HandoverManager *)self evaluateHandover];
  [v5 setPoorConnectionDetected:0];

  [v5 setMediaStallDetected:0];
}

- (void)handlePeriodicRTPMetrics:(id)a3
{
  v5 = [(WRM_FT_HandoverManager *)self getAVConferenceController];
  [v5 handlePeriodicRTPMetrics:a3];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 29, @"Rx periodic Average RTP packet loss=%lld", [v5 avgRxPktLoss]);
  [(WRM_FT_HandoverManager *)self evaluateHandover];

  [v5 resetRTPMetrics];
}

- (int64_t)getSNRHysteresis
{
  v3 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  v4 = [(WRM_MotionController *)self->mMotionController getMobilityState];
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
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

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
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
  v4 = [(WRM_MotionController *)self->mMotionController getMobilityState];
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
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

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
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

- (BOOL)isWiFiBeaconLossQualityIndicatorGood:(unint64_t)a3 :(unint64_t)a4 :(int)a5
{
  v7 = [(WCM_WiFiController *)self->mWiFi wifiService:a3];
  if (![(WCM_WiFiService *)v7 isBeaconPerValid])
  {
    return 1;
  }

  v8 = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  [(WCM_WiFiService *)v7 getBeaconPer];
  v10 = (v9 * 100.0);
  [WCM_Logging logLevel:29 message:@" Beacon PER %lld", v10];
  if (!a5)
  {
    v11 = [v8 minWiFiBeaconPerTh0];
    return v11 >= v10;
  }

  if (a5 != 1)
  {
    return 1;
  }

  v11 = [v8 minWiFiBeaconPerTh1];
  return v11 >= v10;
}

- (BOOL)isWiFiLoadQualityIndicatorGood:(unint64_t)a3 :(unint64_t)a4 :(BOOL)a5 :(int)a6
{
  v7 = a5;
  v9 = [(WCM_WiFiController *)self->mWiFi wifiService:a3];
  v10 = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  v11 = [(WCM_WiFiService *)v9 getCCA];
  if (a6 == 1)
  {
    if (!v7)
    {
      v12 = [v10 minIdleWiFiCcaTh1];
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
    v12 = [v10 minActiveWiFiCcaTh0];
  }

  else
  {
    v12 = [v10 minIdleWiFiCcaTh0];
  }

LABEL_8:
  if (v11 < v12)
  {
    return 1;
  }

  [(WRM_FT_HandoverManager *)self updateHandoverReasonCode:32];
  return 0;
}

- (BOOL)isWiFiArqQualityIndicatorGood:(unint64_t)a3 :(unint64_t)a4 :(int)a5 :(BOOL)a6
{
  v38 = a6;
  v7 = [(WCM_WiFiController *)self->mWiFi wifiService];
  v34 = self;
  v37 = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  [(WCM_WiFiService *)v7 getTxPer];
  v9 = (v8 * 100.0);
  v10 = [(WCM_WiFiService *)v7 isTxPerValid];
  [(WCM_WiFiService *)v7 getTxFail];
  v12 = v11;
  [(WCM_WiFiService *)v7 getFwTxPer];
  v14 = (v13 * 100.0);
  v15 = [(WCM_WiFiService *)v7 isFwTxPerValid];
  [(WCM_WiFiService *)v7 getRxRatio];
  v17 = v16 * 100.0;
  [(WCM_WiFiService *)v7 getCumulativeTxPer];
  v19 = (v18 * 100.0);
  v20 = [(WCM_WiFiService *)v7 isCumulativeTxPerValid];
  [(WCM_WiFiService *)v7 getCumulativeFwTxPer];
  v22 = (v21 * 100.0);
  v23 = [(WCM_WiFiService *)v7 isCumulativeFwTxPerValid];
  [WCM_Logging logLevel:29 message:@"Actual Tx PER %lld, FW Tx PER %lld TX Fail %lld, RX Ratio=%lf CumTxPER %lld CumFwTxPer %lld", v9, v14, v12, *&v17, v19, v22];
  if (v10)
  {
    v24 = v9;
  }

  else
  {
    v24 = 0;
  }

  if (v15)
  {
    v25 = v14;
  }

  else
  {
    v25 = 0;
  }

  if (v20)
  {
    v26 = v19;
  }

  else
  {
    v26 = 0;
  }

  if (v23)
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
    if ((v10 | v15))
    {
      if (a5)
      {
        v31 = v37;
        if (a5 != 1)
        {
          return 1;
        }

        v32 = [v37 minIdleWiFiTxPktLossRateTh1];
      }

      else
      {
        v31 = v37;
        v32 = [v37 minIdleWiFiTxPktLossRateTh0];
      }

      if (((v32 >= v9) & v10) == 0 && (([v31 minIdleWiFiFwTxPktLossRateTh1] >= v14) & v15) == 0)
      {
        goto LABEL_32;
      }
    }

    return 1;
  }

  if ((v10 & 1) == 0)
  {
    return 1;
  }

  if (a4 == 2)
  {
    v28 = v37;
    v29 = a5;
    if (a5)
    {
LABEL_18:
      if (v29 == 1)
      {
        v30 = [v28 minActiveWiFiTxPktLossRateTh1];
        goto LABEL_26;
      }

      return 1;
    }
  }

  else
  {
    v28 = v37;
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

  v30 = [v28 minActiveWiFiTxPktLossRateTh0];
LABEL_26:
  if (v30 >= v9)
  {
    return 1;
  }

LABEL_32:
  [(WRM_FT_HandoverManager *)v34 updateHandoverReasonCode:16];
  return 0;
}

- (BOOL)canWiFiTransportMeetIdleApplicationRequirements:(unint64_t)a3 :(unint64_t)a4 :(int)a5
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
    v4 = [(WCM_WiFiController *)mWiFi wifiService];
    v5 = [(WCM_WiFiService *)v4 getRSSI];
    [(WCM_WiFiService *)v4 getRxRatio];
    v7 = v6;
    v8 = [(WCM_WiFiService *)v4 isRxRatioValid];
    [(WCM_WiFiService *)v4 getTxPer];
    v10 = (v9 * 100.0);
    v11 = [(WCM_WiFiService *)v4 isTxPerValid];
    v12 = [(WCM_WiFiService *)v4 getCCA]> 87 || v5 < -75;
    v13 = (v10 > 5) & v11;
    if (v12)
    {
      v13 = 1;
    }

    v14 = v13 | v8 & (v7 >= 0.3);
  }

  else
  {
    v14 = 0;
  }

  v15 = [(WRM_FT_HandoverManager *)self getAVConferenceController];
  if (!v15)
  {
    [WCM_Logging logLevel:29 message:@"isWiFiVoIPQualityGoodEnough: ptrAVConferenceController == NULL"];
    [0 resetRTPMetrics];
    [0 resetCumulativeRTPMetrics];
    v18 = 0;
LABEL_17:
    [v18 resetPeriodicRTPStats];
    return 1;
  }

  v16 = v15;
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

  v21 = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 29, @"Rx Pkt loss: %lld, nominal buffer delay %lld", [v16 rxPktLoss], objc_msgSend(v16, "nominalJitterBufferDelay"));
  v22 = [v16 rxPktLoss];
  if (((v22 >= [v21 faceTimeHandoverRxPktLossThreshold]) & v14) == 0)
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

- (BOOL)canWiFiTransportMeetActiveApplicationRequirements:(unint64_t)a3 :(unint64_t)a4 :(int)a5
{
  v8 = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  if (a4 - 1 >= 2)
  {
    if (a4)
    {
      [WCM_Logging logLevel:29 message:@"Application category not supported"];
    }

    return 1;
  }

  if (a5 != 1 || ![v8 rtpMetricsEnabled])
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

- (void)feedAWDMetricsCellularStatsWithUUID:(id)a3
{
  v4 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];

  [v4 feedCellularMetricsWithUUID:a3];
}

- (void)feedAWDMetricsCellularStats
{
  v3 = [(WRM_FT_HandoverManager *)self getCTService];
  v4 = [(WRM_FT_HandoverManager *)self getSCService];
  v5 = [v3 getCTDataIndictor];
  v6 = [v3 isVoiceLQMValid];
  if (v6)
  {
    v6 = [v3 getLteVoiceLQM];
  }

  self->mWrmiRATFaceTimeMetrics->voiceLQM = v6;
  v7 = [v4 isDataLQMValid];
  if (v7)
  {
    v7 = [v4 getCellularDataLQM];
  }

  self->mWrmiRATFaceTimeMetrics->dataLQM = v7;
  v8 = [v3 dataAttachedWithCellularNetwork];
  self->mDeviceAttachedWithCellularNetwork = v8;
  if (v8)
  {
    v8 = [v3 getCurrentSignalBars];
  }

  self->mWrmiRATFaceTimeMetrics->signalBar = v8;
  v9 = [v3 getServingCellType];
  mWrmiRATFaceTimeMetrics = self->mWrmiRATFaceTimeMetrics;
  if (v9 > 4)
  {
    if (v9 <= 6)
    {
      if (v9 == 5)
      {
        v15 = @"CDMAHybrid";
      }

      else
      {
        v15 = @"eHRPD_RADIO";
      }

      goto LABEL_30;
    }

    switch(v9)
    {
      case 7:
        v15 = @"TDSCDMA";
        break;
      case 8:
        v15 = @"GSM";
        break;
      case 9:
        mWrmiRATFaceTimeMetrics->ratType = @"N_RADIO";
        [v3 getNrRSRP];
        self->mWrmiRATFaceTimeMetrics->cellRsrp = v11;
        [v3 getNrRSRQ];
        self->mWrmiRATFaceTimeMetrics->cellRsrq = v12;
        [v3 getNrSNR];
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

  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v15 = @"CDMA1X";
    }

    else
    {
      v15 = @"CDMAEVDO";
    }

    goto LABEL_30;
  }

  if (v9 != 1)
  {
    if (v9 == 2)
    {
      mWrmiRATFaceTimeMetrics->ratType = @"UMTS";
      [v3 getServingCellRSCP];
      self->mWrmiRATFaceTimeMetrics->cellRsrp = v14;
      [v3 getServingCellECIO];
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  mWrmiRATFaceTimeMetrics->ratType = @"LTE";
  [v3 getServingCellRSRP];
  self->mWrmiRATFaceTimeMetrics->cellRsrp = v16;
  [v3 getServingCellRSRQ];
  self->mWrmiRATFaceTimeMetrics->cellRsrq = v17;
  [v3 getServingCellSNR];
  v19 = self->mWrmiRATFaceTimeMetrics;
  v19->cellSnr = v18;
  v19->isNSAMode = v5 - 16 < 4 || v5 == 8;
}

- (void)resetActiveCallEvaluationMetrics
{
  [WCM_Logging logLevel:29 message:@"resetActiveCallEvaluationMetrics"];
  [(NSDate *)self->mAudioEvaluationTimer timeIntervalSinceNow];
  self->mTimeSinceAudioEvaluationStarted = v3;
  v4 = [(WRM_FT_HandoverManager *)self getAVConferenceController];
  mWiFi = self->mWiFi;
  if (mWiFi && (mWiFi = [(WCM_WiFiController *)mWiFi wifiService]) == 0)
  {
    [WCM_Logging logLevel:29 message:@"resetActiveCallEvaluationMetrics: ptrWiFiService==NULL"];
  }

  else
  {
    [(WCM_WiFiController *)mWiFi resetCumulativeCounters];
    [v4 resetCumulativeRTPMetrics];
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
    v7 = 0;
    goto LABEL_7;
  }

  v7 = [(WCM_WiFiController *)mWiFi wifiService];
  if (v7)
  {
LABEL_7:
    [(WCM_WiFiService *)v7 getCumulativeTxPer];
    v9 = (v8 * 100.0);
    v10 = [(WCM_WiFiService *)v7 getRSSI];
    v11 = [(WRM_FT_HandoverManager *)self getAVConferenceController];
    v12 = [v11 averagedNominalJitterBufferDelay];
    [v11 movAvgRxPktLoss];
    v14 = v13;
    [WCM_Logging logLevel:29 message:@"evaluateActiveCallQuality: Avg RSSI: %lld CumTX PER: %lld, AVG Nominal Jitter Buffer:%lld, RTP pkt loss:%lld ", v10, v9, v12, v13];
    [WCM_Logging logLevel:29 message:@"Handover Manager: Checking active call Quality evaluation criteria"];
    v16 = v12 <= 1000 && v14 <= 20 && v9 <= 20;
    if (!v16 && v10 >= -65)
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

- (BOOL)isMovingAverageUplinkAudioQualityOfCurrentCallGood:(int)a3
{
  v5 = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  if (a3 == 1)
  {
    v6 = v5;
    mWiFi = self->mWiFi;
    if (mWiFi)
    {
      v8 = [(WCM_WiFiController *)mWiFi wifiService];
      if (!v8)
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
      v8 = 0;
    }

    [(WCM_WiFiService *)v8 getMovingAverageTxPer];
    v12 = (v11 * 100.0);
    v13 = [(WCM_WiFiService *)v8 isMovingAverageTxPerValid];
    [WCM_Logging logLevel:29 message:@"isMovingAverageUplinkAudioQualityOfCurrentCallGood: TX PER (Mov Avg): %lld, Moving Avg Valid:%d", v12, v13];
    v14 = [v6 faceTimeMinActiveWiFiAvgTxPktLossRateTh];
    v9 = 1;
    v10 = @"isMovingAverageUplinklinkAudioQualityOfCurrentCallGood exit";
    if (v13 && v14 < v12)
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

- (BOOL)isMovingAverageDownlinkAudioQualityOfCurrentCallGood:(int)a3
{
  v5 = [(WRM_FT_HandoverManager *)self getAVConferenceController];
  v6 = [(WRM_FT_HandoverManager *)self getiRATConfigController];
  if ((byte_1002B7DDB & 1) == 0)
  {
    v7 = @"isMovingAverageDownlinkAudioQualityOfCurrentCallGood: Call not on WiFI";
    goto LABEL_5;
  }

  if (!self->mDiscardRTPMetrics)
  {
    v10 = v6;
    if (self->mWiFi)
    {
      v11 = 0;
      if (a3)
      {
LABEL_10:
        if (a3 != 1)
        {
          [WCM_Logging logLevel:29 message:@"isMovingAverageDownlinkAudioQualityOfCurrentCallGood: returned"];
          goto LABEL_6;
        }

        v12 = [v5 movAvgNominalJitterBufferDelay];
        [v5 movAvgRxPktLoss];
        v14 = v13;
        v15 = [(WRM_FT_HandoverManager *)self isVideoQualityGood:1];
        v16 = [v5 poorConnectionDetected];
        self->mWrmiRATFaceTimeMetrics->isPCDetected = [v5 poorConnectionDetected];
        self->mWrmiRATFaceTimeMetrics->isStallDetected = [v5 mediaStallDetected];
        [v5 primaryAudioPacketLossRate];
        self->mWrmiRATFaceTimeMetrics->audioErasure = (v17 * 100.0);
        [v5 deltaVideoErasure];
        self->mWrmiRATFaceTimeMetrics->videoErasure = v18;
        [v5 totalVideoPacketLossRate];
        self->mWrmiRATFaceTimeMetrics->facetimePacketLoss = (v19 * 100.0);
        [WCM_Logging logLevel:29 message:@"isMovingAverageDownlinkAudioQualityOfCurrentCallGood: Moving Avg RTP packet loss:%lld, Mov Jitter Buffer Delay: %lld, video good : %lld, Bad connection deteted: %lld", v14, v12, v15, v16];
        v20 = ([v10 faceTimeHandoverAvgRxPktLossThreshold] < v14) | v16 & v11;
        if (v20)
        {
          [WCM_Logging logLevel:29 message:@"Handover Manager: Moving average audio quality was bad or poor connection detected"];
          v21 = [v5 mediaStallDetected];
          if (v21)
          {
            v22 = 64;
          }

          else
          {
            v22 = 1;
          }

          if ((v21 & 1) == 0 && v15)
          {
            if ([v5 poorConnectionDetected])
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
      v25 = [0 wifiService];
      v26 = [v25 getRSSI];
      [v25 getRxRatio];
      v28 = v27;
      v29 = [v25 isRxRatioValid];
      [v25 getTxPer];
      v31 = ((v30 * 100.0) > 5) & [v25 isTxPerValid];
      if (v26 < -75)
      {
        v31 = 1;
      }

      v11 = v31 | v29 & (v28 >= 0.3);
      if (a3)
      {
        goto LABEL_10;
      }
    }

    [v5 primaryAudioPacketLossRate];
    v33 = v32;
    [v5 primaryVideoPacketLossRate];
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
  [v5 resetRTPMetrics];
  [v5 resetCumulativeRTPMetrics];
  [v5 resetPeriodicRTPStats];
LABEL_6:
  LOBYTE(v8) = 1;
  return v8 & 1;
}

- (void)toggleFastLQMReport:(BOOL)a3
{
  v3 = a3;
  v4 = [(WCM_WiFiController *)self->mWiFi wifiService];
  if (byte_1002B7DDC != v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100067584;
    v5[3] = &unk_10023E008;
    v6 = v3;
    v5[4] = v4;
    dispatch_sync(&_dispatch_main_q, v5);
  }
}

- (unsigned)faceTimeCallType
{
  v2 = [(WRM_FT_HandoverManager *)self getAVConferenceController];
  v3 = [v2 callType];
  if (v3 != 2)
  {
    if ([v2 callType] == 4)
    {
      LOBYTE(v3) = 2;
    }

    else
    {
      v3 = [v2 callType];
      if (v3 != 1)
      {
        LOBYTE(v3) = [v2 callType] == 3;
      }
    }
  }

  return v3;
}

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  v6 = [objc_msgSend(a3 "calls")];
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

  v8 = [a3 calls];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(v8);
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
    v15 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)handleCallNotification:(id)a3
{
  [WCM_Logging logLevel:29 message:@"handleCallNotification notification=%@", a3];
  v5 = [a3 name];
  v6 = TUCallCenterCallStatusChangedNotification;
  if (([v5 isEqualToString:TUCallCenterCallStatusChangedNotification] & 1) != 0 || (v7 = objc_msgSend(a3, "name"), objc_msgSend(v7, "isEqualToString:", TUCallCenterVideoCallStatusChangedNotification)))
  {
    v8 = [a3 object];
    [WCM_Logging logLevel:29 message:@"handleCallNotification call=%@", v8];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 29, @"handleCallNotification provider=%@", [v8 provider]);
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 29, @"handleCallNotification bundleIdentifier=%@", [objc_msgSend(v8 "provider")]);
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 29, @"handleCallNotification inCallUIBundleIdentifier=%@", [objc_msgSend(v8 "provider")]);
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 29, @"handleCallNotification displayAppBundleIdentifier=%@", [objc_msgSend(v8 "provider")]);
    v9 = [(WRM_FT_HandoverManager *)self getiRATClientFromList:1];
    [WCM_Logging logLevel:29 message:@"handleCallNotification controller=%@", v9];
    if ([objc_msgSend(objc_msgSend(v8 "provider")] || objc_msgSend(objc_msgSend(objc_msgSend(v8, "provider"), "displayAppBundleIdentifier"), "length"))
    {
      v10 = xpc_dictionary_create(0, 0, 0);
      v11 = [objc_msgSend(objc_msgSend(v8 "provider")];
      v12 = [v8 provider];
      if (v11)
      {
        v13 = [v12 bundleIdentifier];
      }

      else
      {
        v13 = [v12 displayAppBundleIdentifier];
      }

      xpc_dictionary_set_string(v10, "kWRMVoIPBundleId", [v13 UTF8String]);
      v14 = [v8 status] == 3 || objc_msgSend(v8, "status") == 4;
      xpc_dictionary_set_BOOL(v10, "kWRMVoIPCallStartingFlag", v14);
      xpc_dictionary_set_BOOL(v10, "kWRMVoIPCallEndedFlag", [v8 status] == 6);
      xpc_dictionary_set_BOOL(v10, "kWRMVoIPCallActiveFlag", [v8 status] == 1);
      xpc_dictionary_set_BOOL(v10, "kWRMVoIPCallVideoFlag", [v8 isVideo]);
      [v9 sendMessage:2500 withArgs:v10];
      xpc_release(v10);
    }
  }

  if ([objc_msgSend(a3 "name")])
  {
    v15 = [a3 object];
    if ([v15 status] == 6 && ((objc_msgSend(objc_msgSend(v15, "provider"), "isTelephonyProvider") & 1) != 0 || objc_msgSend(objc_msgSend(v15, "provider"), "isFaceTimeProvider")))
    {
      mWrmiRATFaceTimeMetrics = self->mWrmiRATFaceTimeMetrics;
      if (mWrmiRATFaceTimeMetrics)
      {
        mWrmiRATFaceTimeMetrics->callType = 0;
        if ([objc_msgSend(v15 "provider")])
        {
          v17 = [v15 isVideo];
          v18 = self->mWrmiRATFaceTimeMetrics;
          if (v17)
          {
            v19 = 2;
          }

          else
          {
            v19 = 3;
          }

          goto LABEL_30;
        }

        if ([objc_msgSend(v15 "provider")])
        {
          if ([v15 providerContext] && objc_msgSend(objc_msgSend(objc_msgSend(v15, "providerContext"), "objectForKeyedSubscript:", @"kCallSubType"), "isEqualToString:", @"kCallSubTypeVoLTE"))
          {
            goto LABEL_29;
          }

          if ([v15 providerContext] && objc_msgSend(objc_msgSend(objc_msgSend(v15, "providerContext"), "objectForKeyedSubscript:", @"kCallSubType"), "isEqualToString:", @"kCallSubTypeWifi"))
          {
            v18 = self->mWrmiRATFaceTimeMetrics;
            v19 = 5;
LABEL_30:
            v18->callType = v19;
            goto LABEL_31;
          }

          if ([v15 providerContext] && objc_msgSend(objc_msgSend(objc_msgSend(v15, "providerContext"), "objectForKeyedSubscript:", @"kCallSubType"), "isEqualToString:", @"kCallSubTypeVoNR"))
          {
LABEL_29:
            v18 = self->mWrmiRATFaceTimeMetrics;
            v19 = 4;
            goto LABEL_30;
          }

          if ([v15 providerContext] && objc_msgSend(objc_msgSend(objc_msgSend(v15, "providerContext"), "objectForKeyedSubscript:", @"kCallSubType"), "isEqualToString:", @"kCallSubTypeTelephony"))
          {
            v18 = self->mWrmiRATFaceTimeMetrics;
            v19 = 1;
            goto LABEL_30;
          }
        }

LABEL_31:
        if ([v15 localSenderIdentityUUID])
        {
          v20 = [[NSUUID alloc] initWithUUIDString:{objc_msgSend(objc_msgSend(v15, "localSenderIdentityUUID"), "UUIDString")}];
        }

        else
        {
          v20 = 0;
        }

        v21 = [v15 disconnectedReason];
        objc_initWeak(&location, self);
        mQueue = self->mQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100067DD0;
        block[3] = &unk_10023F018;
        objc_copyWeak(&v24, &location);
        block[4] = v20;
        block[5] = self;
        v25 = v21;
        dispatch_async(mQueue, block);
        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }
    }
  }
}

@end