@interface WRM_HandoverManager
+ (id)WRM_HandoverManagerSingleton;
+ (id)allocWithZone:(_NSZone *)a3;
- (BOOL)can4G5GMeetApplicationRequirementsAppTypeWiFiCallingCallIdle:(int)a3;
- (BOOL)canCellularMeetApplicationRequirementsAppTypeData;
- (BOOL)canCellularMeetApplicationRequirementsAppTypeWiFiCallingCallActive:(int)a3;
- (BOOL)canCellularMeetApplicationRequirementsAppTypeWiFiCallingCallIdle:(int)a3;
- (BOOL)checkIFFr2SupportNotAvailable;
- (BOOL)disableICEClient;
- (BOOL)disableQMIClient;
- (BOOL)doesIRATClientSubscriptionContextExist;
- (BOOL)handoverEvaluationRequired;
- (BOOL)isAppQualityGoodOnWiFi:(int)a3;
- (BOOL)isCellularEntryCriteriaMetForIMSThumpCallCurrentLinkWiFi;
- (BOOL)isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi:(BOOL)a3;
- (BOOL)isCellularEntryCriteriaMetForVoiceCallCurrentLinkNone;
- (BOOL)isCellularExitCriteriaMetForIMSThumpCallCurrentLinkCellular;
- (BOOL)isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkLTE:(BOOL)a3;
- (BOOL)isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkNR:(BOOL)a3;
- (BOOL)isCellularExitCriteriaMetForVoiceCallCallCurrentLinkUMTS;
- (BOOL)isCellularViableForWiFiBlackList;
- (BOOL)isDeviceConnectedOverNonLTERadio;
- (BOOL)isEnhancedSisSupportedOnMAV;
- (BOOL)isIMSTransportQualityGood;
- (BOOL)isLteEntryCriteriaMetCurrentLinkNone;
- (BOOL)isLteEntryCriteriaMetCurrentLinkWiFi:(int64_t)a3;
- (BOOL)isMovingAverageAudioQualityOfCurrentCallGood:(int)a3;
- (BOOL)isNrEntryCriteriaMetCurrentLinkNone;
- (BOOL)isNrEntryCriteriaMetCurrentLinkWiFi:(int64_t)a3;
- (BOOL)isRLHandoverPolicyEnabledOnSlot:(int64_t)a3;
- (BOOL)isRecentDevice;
- (BOOL)isSisSupportedOnICE;
- (BOOL)isUplinkAudioQualityOfCurrentCallGood:(int)a3;
- (BOOL)isWiFiAppEntryCriteriaMet;
- (BOOL)isWiFiArqQualityIndicatorGoodUserData:(unint64_t)a3 :(unint64_t)a4 :(int)a5 :(BOOL)a6;
- (BOOL)isWiFiBeaconLossQualityIndicatorGood:(unint64_t)a3 :(unint64_t)a4 :(int)a5;
- (BOOL)isWiFiLinkEvaluationDesired;
- (BOOL)isWiFiLoadQualityIndicatorGood:(unint64_t)a3 :(unint64_t)a4 :(BOOL)a5 :(int)a6;
- (BOOL)isWiFiVoIPQualityGoodEnough;
- (BOOL)needWiFiLQM;
- (WRM_HandoverManager)init;
- (id)getQmiClientForSim:(int64_t)a3;
- (id)getiRATClientFromList:(int)a3;
- (int)convertToHOAlgorithmType:(unint64_t)a3;
- (int64_t)getRSSIHysteresis;
- (int64_t)getSNRHysteresis;
- (void)addiRatClient:(id)a3;
- (void)callObserver:(id)a3 callChanged:(id)a4;
- (void)configureRTPMetricsReporting;
- (void)createIBIClient;
- (void)createQMIClient;
- (void)createSymptomsService;
- (void)dealloc;
- (void)evalExitForceOutranking;
- (void)evalSAStatusWiFiCallCallingPrefChanged;
- (void)evaluateActiveCallQuality;
- (void)evaluateHandover;
- (void)evaluateWiFiVersusCell;
- (void)feedAWDCallEndStats;
- (void)feedAWDDataLinkPreferenceChange:(int)a3;
- (void)forceActiveModeEval:(BOOL)a3;
- (void)handleCallNotification:(id)a3;
- (void)handleCellularLinkQualityUpdate:(id)a3;
- (void)handleControllerAvailability:(unint64_t)a3;
- (void)handleGetVoiceLqmValue:(id)a3;
- (void)handleIPTelephonyMetrics:(id)a3;
- (void)handleIWLANMetrics:(id)a3;
- (void)handleInternalMessage:(id)a3;
- (void)handleLinkPrefSubscribe:(id)a3;
- (void)handleMotionUpdate:(id)a3;
- (void)handlePeriodicRTPMetrics:(id)a3;
- (void)handleSIPMetricsRecevied:(id)a3;
- (void)handleSIPStalledMetricsRecevied:(id)a3;
- (void)handleSessionNotification:(id)a3;
- (void)handleSubscribeStatusUpdate:(id)a3 :(BOOL)a4;
- (void)handleWiFiConfig;
- (void)handleWiFiLinkQualityUpdate:(id)a3;
- (void)handleWiFiStateChaneEvents:(id)a3;
- (void)initCallNotifications;
- (void)initWiFiCellDataEval;
- (void)lowPowerModePeriodicWakeUp;
- (void)notifyRecommendations;
- (void)notifyVoiceLqmUpdate:(int)a3 onSimSlot:(int64_t)a4;
- (void)postLinkPreference:(unint64_t)a3;
- (void)postWRMStateToBB;
- (void)reEvaluateSAState;
- (void)registerForCTNotifications;
- (void)registerForSCNotifications;
- (void)registerSFOutrankDecisionNotification;
- (void)registerSFRestartNotification;
- (void)registerThermalNotificationReasonToThrottle;
- (void)registerThermalTimeToThrottleNotification;
- (void)removeiRatClient:(id)a3;
- (void)resetActiveCallEvaluationMetrics;
- (void)resetActiveCallTimer;
- (void)rxVoIPAppNotification:(BOOL)a3 callType:(int)a4;
- (void)setCarPlaySession:(BOOL)a3;
- (void)setIWLANServiceType:(int)a3;
- (void)setiRATPolicy:(unint64_t)a3;
- (void)showHOAlertUI:(BOOL)a3;
- (void)submitCallEndMetics;
- (void)submitMetricsCBRSWithDataSimRecommendation:(BOOL)a3 forSimSlot:(int64_t)a4;
- (void)submitWiFiVersusCellAWDMetrics;
- (void)switchPrivateNwDataSim:(int64_t)a3 currentSlotQuality:(int)a4 anyCallState:(int)a5;
- (void)toggleSAState:(BOOL)a3;
- (void)triggerBWEval;
- (void)triggerEnableSA:(BOOL)a3;
- (void)triggerHarvestDataEval;
- (void)updateActiveHandoverStatus;
- (void)updateAnyCallState:(int)a3 providerIdentifier:(id)a4;
- (void)updateAppState:(int)a3 Category:(id)a4 sessionType:(int)a5;
- (void)updateCellularMetricsMovAverage;
- (void)updateControllerSession:(id)a3 ofId:(unint64_t)a4;
- (void)updateControllerState:(id)a3;
- (void)updateRLHandoverPolicyFromCarrierBundle:(BOOL)a3 onSimSlot:(int64_t)a4;
- (void)updateSaAllowedOnWiFiAssociation:(BOOL)a3 onSimSlot:(int64_t)a4;
@end

@implementation WRM_HandoverManager

+ (id)WRM_HandoverManagerSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D0E78;
  block[3] = &unk_10023DB28;
  block[4] = a1;
  if (qword_1002B80F0 != -1)
  {
    dispatch_once(&qword_1002B80F0, block);
  }

  return qword_1002B80F8;
}

- (void)triggerBWEval
{
  v4 = 0;
  if (byte_1002B7C70 == 1 && [(WRM_HandoverManager *)self highThroughputRequired:dword_1002B7B68])
  {
    qword_1002B7B70 = +[WRM_BWEvalManager WRM_BWEvalManagerSingleton];
    v2 = [qword_1002B7B70 getPredictedWiFiBandwidth:&v4];
    if (v2)
    {
      v3 = v4;
      qword_1002B7B60 = v4;
    }

    else
    {
      v3 = qword_1002B7B60;
    }

    [WCM_Logging logLevel:24 message:@"triggerBWEval: predicted BW: %f, status: %d", v3, v2 != 0];
  }
}

- (void)evaluateWiFiVersusCell
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002594;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(mQueue, block);
}

- (BOOL)needWiFiLQM
{
  v2 = [(WRM_HandoverManager *)self doesIRATClientSubscriptionContextExist];
  v3 = "NO";
  if (v2)
  {
    v3 = "YES";
  }

  [WCM_Logging logLevel:24 message:@"%s: needWiFiLQM? %s ", "[WRM_HandoverManager needWiFiLQM]", v3];
  return v2;
}

- (BOOL)doesIRATClientSubscriptionContextExist
{
  obj = self->miRATClientContexts;
  objc_sync_enter(obj);
  v3 = [(NSMutableArray *)self->miRATClientContexts count];
  [WCM_Logging logLevel:24 message:@"%s: iRAT client count:%d.", "[WRM_HandoverManager doesIRATClientSubscriptionContextExist]", v3];
  if (!v3)
  {
    [WCM_Logging logLevel:24 message:@" No iRAT client available."];
    goto LABEL_13;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  miRATClientContexts = self->miRATClientContexts;
  v5 = [(NSMutableArray *)miRATClientContexts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
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
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"%s: iRAT client Context count:%d.", "-[WRM_HandoverManager doesIRATClientSubscriptionContextExist]", [v9 count]);
      if ([v9 count])
      {
        [WCM_Logging logLevel:24 message:@"doesIRATClientSubscriptionContextExist: Subscription Context found"];
        v6 = 1;
      }
    }

    v5 = [(NSMutableArray *)miRATClientContexts countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v5);
LABEL_14:
  objc_sync_exit(obj);
  return v6 & 1;
}

- (BOOL)handoverEvaluationRequired
{
  v3 = [(WRM_HandoverManager *)self getMotionController];
  v4 = [(WRM_HandoverManager *)self getiRATConfigController];
  [(NSDate *)self->mStartTime timeIntervalSinceNow];
  v6 = v5;
  v7 = self->prevTimeSinceStart - v5;
  [WCM_Logging logLevel:24 message:@"HO Evaluation time duration is: %lf", *&v7];
  v8 = [v3 getMobilityState];
  if (v8 <= 1)
  {
    if (!v8)
    {
      [WCM_Logging logLevel:24 message:@"Device motion: STATIONARY"];
      if (v7 * 1000.0 < [v4 pingPongAvoidanceThresholdStationary])
      {
        return 0;
      }

      self->prevTimeSinceStart = v6;
      return 1;
    }

    if (v8 == 1)
    {
      v9 = [v4 pingPongAvoidanceThresholdWalking];
      v10 = v7 * 1000.0;
      v11 = v7 * 1000.0 >= v9;
      if (v7 * 1000.0 >= v9)
      {
        self->prevTimeSinceStart = v6;
      }

      v12 = @"Device motion: WALKING";
      goto LABEL_19;
    }

LABEL_23:
    v14 = [v4 pingPongAvoidanceThresholdStationary];
    if (v7 * 1000.0 < v14)
    {
      return 0;
    }

    self->prevTimeSinceStart = v6;
    [WCM_Logging logLevel:24 message:@"Device motion: UNKNOWN", v14, v7 * 1000.0];
    return 1;
  }

  if (v8 == 2)
  {
    v9 = [objc_opt_self() pingPongAvoidanceThresholdRunning];
    v10 = v7 * 1000.0;
    v11 = v7 * 1000.0 >= v9;
    if (v7 * 1000.0 >= v9)
    {
      self->prevTimeSinceStart = v6;
    }

    v12 = @"Device motion: RUNNING";
    goto LABEL_19;
  }

  if (v8 == 3)
  {
    v9 = [v4 pingPongAvoidanceThresholdStationary];
    v10 = v7 * 1000.0;
    v11 = v7 * 1000.0 >= v9;
    if (v7 * 1000.0 >= v9)
    {
      self->prevTimeSinceStart = v6;
    }

    v12 = @"Device motion: VEHICULAR";
    goto LABEL_19;
  }

  if (v8 != 4)
  {
    goto LABEL_23;
  }

  v9 = [v4 pingPongAvoidanceThresholdWalking];
  v10 = v7 * 1000.0;
  v11 = v7 * 1000.0 >= v9;
  if (v7 * 1000.0 >= v9)
  {
    self->prevTimeSinceStart = v6;
  }

  v12 = @"Device motion: PEDESTRIAN";
LABEL_19:
  [WCM_Logging logLevel:24 message:v12, v9, v10];
  return v11;
}

- (void)updateCellularMetricsMovAverage
{
  v2 = [(WRM_HandoverManager *)self getCTService];
  if (v2)
  {

    [v2 updateMovAverageOfSignalBar];
  }
}

- (BOOL)isRecentDevice
{
  v2.i32[0] = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v2.i32[3] = v2.i32[0] & 0xFFFFFFFE;
  v3 = vzip1q_s32(v2, vextq_s8(v2, v2, 0xCuLL));
  v4 = vdupq_lane_s32(*v2.i8, 0);
  v2.i32[1] = v2.i32[0];
  v2.i32[2] = v2.i32[0];
  v5 = vceqq_s32(v4, xmmword_100199220);
  v6.i32[0] = v2.i32[0] & 0xFFFFFFFE;
  v6.i32[1] = v2.i32[0];
  v6.i32[3] = v2.i32[0] & 0xFFFFFFFD;
  v7 = vuzp2q_s32(v6, v6);
  v4.i32[1] = v2.i32[0] & 0xFFFFFF7F;
  v6.i32[2] = v2.i32[0] & 0xFFFFFFFE;
  v7.i32[1] = v2.i32[0] & 0xFFFFFFFE;
  return (vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vceqq_s32(v2, xmmword_100199240), vceqq_s32(v4, xmmword_100199250)), vuzp1q_s16(v5, vceqq_s32(vuzp2q_s32(v3, v3), xmmword_100199230)))) | vmaxv_u8(vmovn_s16(vuzp1q_s16(vceqq_s32(v6, xmmword_100199270), vceqq_s32(v7, xmmword_100199260))))) & 1 | vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_100199290, vaddq_s32(vdupq_n_s32(v2.u32[0]), xmmword_100199280)))) & 1 | ((v2.i32[0] & 0xFFFFFFFD) == 176);
}

- (void)evaluateHandover
{
  v2 = self;
  v3 = [(WRM_HandoverManager *)self getIWLANServiceType]== 1 || [(WRM_iRATConfig *)v2->miRATConfig ctServiceType]== 2;
  v94 = v3;
  v4 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  v5 = [(NSMutableArray *)v2->miRATClientContexts count];
  if (!v5)
  {
    v6 = @"Evaluate Handover: No iRAT client available.";
    goto LABEL_8;
  }

  [WCM_Logging logLevel:24 message:@"Evaluate Handover: Total number of iRAT clients %zu.", v5];
  if (byte_1002B7CA9 != 1)
  {
    v85 = [(WRM_HandoverManager *)v2 getiRATConfigController];
    v84 = [-[WRM_HandoverManager getMotionController](v2 "getMotionController")];
    v7 = [[NSSortDescriptor alloc] initWithKey:@"mActive" ascending:0];
    miRATClientContexts = v2->miRATClientContexts;
    v81 = v7;
    v113 = v7;
    v9 = [(NSMutableArray *)miRATClientContexts sortedArrayUsingDescriptors:[NSArray arrayWithObjects:&v113 count:1]];
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v107 objects:v112 count:16];
    if (!v10)
    {
LABEL_181:

      return;
    }

    v11 = v10;
    v12 = *v108;
    v100 = v2;
    v77 = v9;
    v78 = v4;
    v80 = *v108;
LABEL_13:
    v13 = 0;
    v79 = v11;
    while (1)
    {
      if (*v108 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v82 = v13;
      v14 = *(*(&v107 + 1) + 8 * v13);
      v15 = [v14 getMyClientType];
      v96 = v15;
      if ((v94 | ![(WRM_HandoverManager *)v2 isEnhancedCTServiceNeeded]))
      {
        goto LABEL_20;
      }

      [v4 setActiveSlot:{objc_msgSend(v14, "getActiveSlot")}];
      v16 = [v4 getSubscriptionsSlotMap];
      if ((v15 - 1) > 1 || ([v4 activeSlot] & v16) != 0)
      {
        break;
      }

      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"Evaluate Handover: device, skip inactive slot id: %ld", [v14 getActiveSlot]);
      v12 = v80;
      v76 = v82;
LABEL_179:
      v13 = v76 + 1;
      if (v13 == v11)
      {
        v11 = [v9 countByEnumeratingWithState:&v107 objects:v112 count:16];
        if (!v11)
        {
          goto LABEL_181;
        }

        goto LABEL_13;
      }
    }

    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"Evaluate Handover: device, slot id: %ld", [v14 getActiveSlot]);
LABEL_20:
    v17 = "ClientCommCenter";
    if (v15 != 1)
    {
      if ((v15 - 2) >= 0x14)
      {
        v17 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
        if (v15 == 22)
        {
          v17 = "ClientCoreMediaStreaming";
        }
      }

      else
      {
        v17 = (&off_100241600)[v15 - 2];
      }
    }

    [WCM_Logging logLevel:24 message:@"<%s>Evaluate Handover: BEGIN.", v17];
    v18 = [v14 getHandoverContexts];
    v19 = [+[WRM_MetricsService getSingleton](WRM_MetricsService "getSingleton")];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    obj = v18;
    v91 = [v18 countByEnumeratingWithState:&v103 objects:v111 count:16];
    if (v91)
    {
      v90 = *v104;
      v20 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
      if (v15 == 22)
      {
        v20 = "ClientCoreMediaStreaming";
      }

      v99 = v20;
      v95 = (v15 - 2);
      v97 = v15 - 1;
      v86 = v19 + 168;
      v87 = v19 + 160;
      v21 = "ClientCommCenter";
      if (v15 != 1)
      {
        v21 = "ClientCommCenter1";
      }

      v89 = v21;
LABEL_31:
      v22 = 0;
      while (1)
      {
        if (*v104 != v90)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v103 + 1) + 8 * v22);
        v24 = [v14 getHandoverAlgorithmType:1];
        v98 = [v23 getBandwidth];
        v25 = [v23 getApplicationType];
        v26 = [v23 getCallState];
        v101 = [v23 getConnectedLinkType];
        if (v96 == 1)
        {
          v27 = "ClientCommCenter";
        }

        else
        {
          v27 = v99;
        }

        if (v96 != 1 && v95 <= 0x13)
        {
          v27 = (&off_100241600)[v95];
        }

        if (v25)
        {
          v28 = "CT_VOICE";
          if (v25 != 1)
          {
            if (v25 == 2)
            {
              v28 = "CT_Th_Call";
            }

            else
            {
              v28 = "UNKNOWN_APP!!!";
            }
          }
        }

        else
        {
          v28 = "CT_DATA";
        }

        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"<%s>{%s}Slot: %d Evaluate Handover: BEGIN.", v27, v28, [v14 getActiveSlot]);
        v29 = [v14 getActiveSlot];
        if (((v29 == 0) & ~v94) != 0)
        {
          return;
        }

        v30 = v29;
        v31 = 0;
        v102 = v26;
        if (![(WRM_HandoverManager *)v2 isRLHandoverPolicyEnabledOnSlot:v29])
        {
          goto LABEL_72;
        }

        v32 = v101;
        if (v97 > 1 || v25 != 1)
        {
          goto LABEL_73;
        }

        v33 = WRM_IPTelephonyController;
        [WCM_Logging logLevel:24 message:@"Handover learner: handling client %d.", v96 == 2];
        v34 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
        if ([v14 getActiveSlot] == 1 && !objc_msgSend(v34, "isWiFiCallingSupportedSlot1") || objc_msgSend(v14, "getActiveSlot") == 2 && (objc_msgSend(v34, "isWiFiCallingSupportedSlot2") & 1) == 0)
        {
          if ([v14 getActiveSlot])
          {
            v38 = [v14 getActiveSlot];
            v39 = "CTSubscriptionSlotOne";
            v26 = v102;
            if (v38 != 1)
            {
              v40 = [v14 getActiveSlot];
              v39 = "Unknown CTSubscriptionSlot!!!";
              if (v40 == 2)
              {
                v39 = "CTSubscriptionSlotTwo";
              }
            }
          }

          else
          {
            v39 = "CTSubscriptionSlotUnknown";
            v26 = v102;
          }

          [WCM_Logging logLevel:24 message:@"Handover learner: WiFi calling not supported on slot %s. Skipping learning", v39];
          v31 = 0;
          goto LABEL_72;
        }

        v35 = +[WRM_HandoverLearner getLearner];
        if (byte_1002B7CD0 == 1)
        {
          v36 = 24;
          v37 = @"Handover learner: wifi down.";
        }

        else
        {
          v41 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
          if ([v41 getRegistrationStatus:{objc_msgSend(v14, "getActiveSlot")}] == 1)
          {
            v92 = [(WCM_WiFiService *)[(WCM_WiFiController *)v2->mWiFi wifiService] getRSSI];
            v42 = [v41 getPLMN:{objc_msgSend(v14, "getActiveSlot")}];
            v83 = [(WCM_WiFiService *)[(WCM_WiFiController *)v2->mWiFi wifiService] getSSID];
            if (![v42 isEqual:@"0.0"])
            {
              if ([v14 getActiveSlot])
              {
                v64 = [v14 getActiveSlot];
                v65 = "CTSubscriptionSlotOne";
                if (v64 != 1)
                {
                  v66 = [v14 getActiveSlot];
                  v65 = "Unknown CTSubscriptionSlot!!!";
                  if (v66 == 2)
                  {
                    v65 = "CTSubscriptionSlotTwo";
                  }
                }
              }

              else
              {
                v65 = "CTSubscriptionSlotUnknown";
              }

              [WCM_Logging logLevel:24 message:@"Handover learner: updating recommendation for slot %s.", v65];
              v72 = [NSString stringWithFormat:@"PLMN:%@+SSID:%@", v42, v83];
              v73 = [[HandoverLearnerState alloc] initWithValues:v72 rssi:v92];
              [v35 updateRecommendation:v73 slot:objc_msgSend(v14 carrierPreference:"getActiveSlot") connectedLinkType:{v24, objc_msgSend(v14, "getBufferedLinkType")}];

              v33 = WRM_IPTelephonyController;
              goto LABEL_68;
            }

            v36 = 17;
            v37 = @"Handover learner: PLMN is 0.0. Skipping update";
          }

          else
          {
            v36 = 24;
            v37 = @"Handover learner: cellular is down.";
          }
        }

        [WCM_Logging logLevel:v36 message:v37];
        [v35 resetRecommendation:objc_msgSend(v14 withAlgorithm:{"getActiveSlot"), v24}];
LABEL_68:
        v43 = [v35 getRecommendation:{objc_msgSend(v14, "getActiveSlot")}];
        [&v33[98] logLevel:24 message:{@"Handover learner: recommends %@.", +[WRM_HandoverLearner handoverAlgToText:colored:](WRM_HandoverLearner, "handoverAlgToText:colored:", v43, 0)}];
        v44 = v33 + 98;
        if (v43 == v24)
        {
          [(__objc2_class *)v44 logLevel:24 message:@"Handover learner: did not override carrier preference."];
          v31 = 0;
        }

        else
        {
          [(__objc2_class *)v44 logLevel:24 message:@"Handover learner: overrode carrier preference."];
          v31 = 1;
          v24 = v43;
        }

        v26 = v102;
LABEL_72:
        v32 = v101;
LABEL_73:
        if (v97 <= 1 && v25 == 1 && ([v14 getActiveSlot] == 1 || objc_msgSend(v14, "getActiveSlot") == 2))
        {
          *&v87[4 * [v14 getActiveSlot] - 4] = v24;
          v86[[v14 getActiveSlot] - 1] = v31;
        }

        if (v32)
        {
          goto LABEL_79;
        }

        if (byte_1002B7A19 & v26) == 1 && (byte_1002B7BC9)
        {
LABEL_100:
          v51 = "CT_DATA";
          if (v25)
          {
            v51 = "CT_VOICE";
          }

          v52 = "UNKNOWN_APP!!!";
          if (v25 == 2)
          {
            v52 = "CT_Th_Call";
          }

          if (v25 >= 2)
          {
            v51 = v52;
          }

          [WCM_Logging logLevel:24 message:@"{%s}Skipping link evaluation for client connected on cellular link", v51];
          [v23 setLinkPreferenceNotificationRequired:0];
          goto LABEL_119;
        }

        if (!byte_1002B7A19)
        {
LABEL_79:
          v93 = v30;
        }

        else
        {
          if ([(WRM_HandoverManager *)v2 canCellularMeetApplicationRequirement:v98])
          {
            [WCM_Logging logLevel:24 message:@"canCellularMeetApplicationRequirement ok, appType: %d, callActive: %d, alg: %d", v25, v26, v24];
          }

          else if ([(WRM_HandoverManager *)v2 isWiFiLinkEvaluationDesired])
          {
            v93 = v30;
            [WCM_Logging logLevel:24 message:@"Continue to evaluate WiFi link: Cellular link bad, appType: %d, callActive: %d, alg: %d", v25, v26, v24];
            goto LABEL_81;
          }

          [WCM_Logging logLevel:24 message:@"evaluate_handover: connectedLinkType == WRM_CELLULAR, appType: %d, call active: %d", v25, v26];
          if (v84 != 5 && v84)
          {
            [v23 getDeltaTimeSinceLastCellularRecommendation];
            v68 = v67 * 1000.0;
            if (!v26)
            {
              v69 = [v23 getPingPongAvoidanceTimerMultiplier];
              v70 = [v85 cellularStickinessThreaholdIdle] * v69;
              [WCM_Logging logLevel:24 message:@"idle: getDeltaTimeSinceLastCellularRecommendation: delta time:%lf, effectiveBlockout time:%lld ", *&v68, v70];
              v71 = v70;
              v32 = v101;
              if (v68 < v71)
              {
                goto LABEL_100;
              }

              v93 = v30;
              v63 = @"WiFi link evaluation criteria met: Motion state not stationary, idle";
              goto LABEL_168;
            }

            [WCM_Logging logLevel:24 message:@"active: getDeltaTimeSinceLastCellularRecommendation: delta time:%lf", v67 * 1000.0];
            if (v68 < [v85 cellularStickinessThreaholdIdle])
            {
              goto LABEL_100;
            }

            v93 = v30;
            v56 = @"WiFi link evaluation criteria met: Motion state not stationary, active";
          }

          else
          {
            [v23 getDeltaTimeSinceLastCellularRecommendation];
            v55 = v54 * 1000.0;
            if (!v26)
            {
              v60 = [v23 getPingPongAvoidanceTimerMultiplier];
              v61 = [v85 cellularStickinessThreaholdStationary] * v60;
              [WCM_Logging logLevel:24 message:@"state: idle, getDeltaTimeSinceLastCellularRecommendation: delta time:%lf, effective blockout:%lld", *&v55, v61];
              v62 = v61;
              v32 = v101;
              if (v55 < v62)
              {
                goto LABEL_100;
              }

              v93 = v30;
              v63 = @"WiFi link evaluation criteria met: CellularStickinessThreaholdStationary";
LABEL_168:
              [WCM_Logging logLevel:24 message:v63];
              [v23 updatePrevTimeStamp];
              [v23 setPingPongAvoidanceTimerMultiplier:1];
              goto LABEL_81;
            }

            [WCM_Logging logLevel:24 message:@"state: active, getDeltaTimeSinceLastCellularRecommendation: delta time:%lf", v54 * 1000.0];
            if (v55 < [v85 cellularStickinessThreaholdStationaryActive])
            {
              goto LABEL_100;
            }

            v93 = v30;
            v56 = @"WiFi link evaluation criteria met: CellularStickinessThreaholdStationaryActive";
          }

          [WCM_Logging logLevel:24 message:v56];
        }

        [v23 updatePrevTimeStamp];
LABEL_81:
        [(WRM_HandoverManager *)v2 initHandoverReasonCode];
        v45 = "CT_DATA";
        if (v25)
        {
          v45 = "CT_VOICE";
        }

        v46 = "UNKNOWN_APP!!!";
        if (v25 == 2)
        {
          v46 = "CT_Th_Call";
        }

        if (v25 >= 2)
        {
          v47 = v46;
        }

        else
        {
          v47 = v45;
        }

        [WCM_Logging logLevel:24 message:@"{%s}invoking evaluate link", v47];
        v48 = -[WRM_HandoverManager evaluateLink::::::](v2, "evaluateLink::::::", v98, v25, v102, v32, v24, [v14 getActiveSlot]);
        v49 = v48 == 1;
        if ([v23 getConnectedLinkType] == v49)
        {
          [v23 setLinkPreferenceNotificationRequired:0];
          [WCM_Logging logLevel:24 message:@"{%s}Link preference did not change for application type =%lld for client =%d current link type =%d ", v47, v25, v96, v49];
        }

        else
        {
          v50 = [-[WRM_HandoverManager getMotionController](v2 "getMotionController")];
          if (v32 || v48 != 1)
          {
            if (v101 == 1 && v48 != 1)
            {
              [(WRM_MetricsService *)v100->mMetrics updateiRATMetricWifiToCell:v102];
              if (byte_1002B7CCB == 1 && v25 == 1)
              {
                [(WRM_HandoverManager *)v100 showHOAlertUI:0];
              }

              if (v102 && [(WRM_HandoverManager *)v100 isRLHandoverPolicyEnabledOnSlot:v93])
              {
                [+[WRM_HandoverLearner getLearner](WRM_HandoverLearner "getLearner")];
              }
            }
          }

          else
          {
            [(WRM_MetricsService *)v100->mMetrics updateiRATMetricCellToWifi:v102];
            if (byte_1002B7CCB == 1 && v25 == 1)
            {
              [(WRM_HandoverManager *)v100 showHOAlertUI:1];
            }

            if (v102 && [(WRM_HandoverManager *)v100 isRLHandoverPolicyEnabledOnSlot:v93])
            {
              [+[WRM_HandoverLearner getLearner](WRM_HandoverLearner "getLearner")];
            }
          }

          [v23 setLinkPreferenceNotificationRequired:1];
          [v23 setConnectedLinkType:v49];
          [v23 setHandoverReasonType:v100->mReasons];
          [WCM_Logging logLevel:24 message:@"{%s}Link preference changed for application type =%lld for client =%d", v47, v25, v96];
        }

LABEL_119:
        v53 = v89;
        switch(v96)
        {
          case 3:
            v53 = "ClientNetworkd";
            break;
          case 4:
            v53 = "ClientIDS";
            break;
          case 5:
            v53 = "ClientIDSTool";
            break;
          case 6:
            v53 = "ClientIMGVideo";
            break;
          case 7:
            v53 = "ClientFaceTimeCalling";
            break;
          case 8:
            v53 = "ClientCallKitTelephony";
            break;
          case 9:
            v53 = "ClientLocationd";
            break;
          case 10:
            v53 = "ClientCarousel";
            break;
          case 11:
            v53 = "ClientMusic";
            break;
          case 12:
            v53 = "ClientIMGVideoTest";
            break;
          case 13:
            v53 = "ClientTerminus";
            break;
          case 14:
            v53 = "ClientSiri";
            break;
          case 15:
            v53 = "ClientWebkit";
            break;
          case 16:
            v53 = "ClientWebkitMail";
            break;
          case 17:
            v53 = "ClientWebkitNotification";
            break;
          case 18:
            v53 = "ClientWirelessStress";
            break;
          case 19:
            v53 = "ClientCoreDuet";
            break;
          case 20:
            v53 = "ClientJTRNt";
            break;
          case 21:
            v53 = "ClientNPT";
            break;
          default:
            break;
        }

        v57 = "CT_DATA";
        if (v25)
        {
          v57 = "CT_VOICE";
        }

        v58 = "UNKNOWN_APP!!!";
        if (v25 == 2)
        {
          v58 = "CT_Th_Call";
        }

        if (v25 >= 2)
        {
          v59 = v58;
        }

        else
        {
          v59 = v57;
        }

        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"<%s>{%s}Slot:%d Evaluate Handover: END.", v53, v59, [v14 getActiveSlot]);
        v22 = v22 + 1;
        v2 = v100;
        if (v91 == v22)
        {
          v74 = [obj countByEnumeratingWithState:&v103 objects:v111 count:16];
          v91 = v74;
          if (v74)
          {
            goto LABEL_31;
          }

          break;
        }
      }
    }

    [v14 handleLinkPreferenceNotification:0];
    v75 = "ClientCommCenter";
    v9 = v77;
    v4 = v78;
    v11 = v79;
    v12 = v80;
    v76 = v82;
    if (v96 != 1)
    {
      if ((v96 - 2) >= 0x14)
      {
        v75 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
        if (v96 == 22)
        {
          v75 = "ClientCoreMediaStreaming";
        }
      }

      else
      {
        v75 = (&off_100241600)[v96 - 2];
      }
    }

    [WCM_Logging logLevel:24 message:@"<%s>Evaluate Handover: END.", v75];
    goto LABEL_179;
  }

  v6 = @"Do not evaluate link yet, did not receive LQM event from WiFi Manager yet";
LABEL_8:

  [WCM_Logging logLevel:24 message:v6];
}

- (int64_t)getRSSIHysteresis
{
  v3 = [(WRM_HandoverManager *)self getiRATConfigController];
  v4 = [-[WRM_HandoverManager getMotionController](self "getMotionController")];
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
    [WCM_Logging logLevel:24 message:v7];
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
        [WCM_Logging logLevel:24 message:v5];

        return [v3 rssiHysterisisWalking];
      }

LABEL_17:
      v7 = @"Device motion: UNKNOWN";
      goto LABEL_18;
    }

    v7 = @"Device motion: VEHICULAR";
    goto LABEL_18;
  }

  [WCM_Logging logLevel:24 message:@"Device  motion: RUNNING"];

  return [v3 rssiHysterisisRunning];
}

- (BOOL)canCellularMeetApplicationRequirementsAppTypeData
{
  v3 = [(WRM_HandoverManager *)self getCTService];
  v4 = [(WRM_HandoverManager *)self getSCService];
  v5 = [v3 getServingCellType];
  v6 = [v3 dataAttachedWithCellularNetwork];
  v7 = [v3 cellularDataEnabled];
  v8 = [v4 getCellularDataLQM];
  if (v5 == 10)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9 & v7;
  if (v8 > 0x31)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = @"CT_DATA meet application requirements";
  }

  else
  {
    [(WRM_HandoverManager *)self updateHandoverReasonCode:0x20000];
    v12 = @"CT_DATA can't meet application requirements";
  }

  [WCM_Logging logLevel:24 message:v12];
  return v11;
}

- (void)notifyRecommendations
{
  v3 = dword_1002B7640;
  v4 = byte_1002B7B58;
  v5 = byte_1002B7B59;
  v6 = byte_1002B7B5A;
  v7 = byte_1002B7B5B;
  v8 = byte_1002B7B5D & 1;
  v9 = (byte_1002B7B5C << 40) & 0xFFFEFFFFFFFFFFFFLL | (v8 << 48) | (byte_1002B7B5B << 32) | (byte_1002B7B5A << 24) | (byte_1002B7B59 << 16) | (byte_1002B7B58 << 8) | dword_1002B7640;
  [WCM_Logging logLevel:24 message:@"notifyRecommendations updated: m5GAvailable: %d", byte_1002B7B5C];
  [WCM_Logging logLevel:24 message:@"notifyRecommendations updated: mUsingPrivateNetwork: %d", v8];
  [WCM_Logging logLevel:24 message:@"notifyRecommendations updated: preferred link: %d, wifiscore: %d, wifi conf: %d, cell score: %d, cell conf:%d, Private network Enabled:%d, preference:%d", v3, v4, v5, v6, v7, v8, v9];
  [(WRM_HandoverManager *)self postLinkPreference:v9];
  byte_1002B7B79 = 0;
}

- (BOOL)disableQMIClient
{
  v2 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  result = 0;
  v4 = v2 > 0x3D || ((1 << v2) & 0x3FFC0000007DFF00) == 0;
  if (v4)
  {
    v5 = v2 - 127;
    v6 = v5 >= 0x35;
    v4 = v5 == 53;
    v7 = (1 << v5) & 0x20AAA8D92A0001;
    if (!v4 && v6 || v7 == 0)
    {
      return 1;
    }
  }

  return result;
}

- (void)triggerHarvestDataEval
{
  v2 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  [v2 triggerHarvestedCellEval];

  [v2 triggerLocationUpdate];
}

- (void)submitCallEndMetics
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015A98;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(mQueue, block);
}

- (void)feedAWDCallEndStats
{
  v3 = [(WCM_WiFiController *)self->mWiFi wifiService];
  v4 = [objc_msgSend(-[WRM_HandoverManager getiRATClientFromList:](self getiRATClientFromList:{dword_1002B7CCC), "getMobilityContextFromList:", 1), "getRecommenedLinkType"}];
  if (self->mMetrics)
  {
    v5 = v4;
    self->wrmWifiCallingEnd->HO_Capability = byte_1002B7CC8;
    if ([(WCM_WiFiService *)v3 isBeaconPerValid])
    {
      [(WCM_WiFiService *)v3 getBeaconPer];
      v7 = (v6 * 100.0);
    }

    else
    {
      v7 = 0;
    }

    self->wrmWifiCallingEnd->Beacon_Rate = v7;
    if ([(WCM_WiFiService *)v3 isTxPerValid])
    {
      [(WCM_WiFiService *)v3 getTxPer];
      v9 = (v8 * 100.0);
    }

    else
    {
      v9 = 0;
    }

    self->wrmWifiCallingEnd->WiFi_TxPER = v9;
    self->wrmWifiCallingEnd->BSS_Load = [(WCM_WiFiService *)v3 getCCA];
    v10 = [(WCM_WiFiService *)v3 isWiFiNetworkCaptive];
    wrmWifiCallingEnd = self->wrmWifiCallingEnd;
    wrmWifiCallingEnd->Captive_Network = v10;
    wrmWifiCallingEnd->iWLAN_Status = v5 == 1;
    self->wrmWifiCallingEnd->WOW_Enabled = [(WCM_WiFiService *)v3 isWoWEnabled];
    v12 = [(WRM_HandoverManager *)self getCTService];
    v13 = [(WRM_HandoverManager *)self getSCService];
    v14 = [v12 isVoiceLQMValid];
    if (v14)
    {
      v14 = [v12 getLteVoiceLQM];
    }

    self->wrmWifiCallingEnd->LTE_Voice_LQM = v14;
    v15 = [v13 isDataLQMValid];
    if (v15)
    {
      v15 = [v13 getCellularDataLQM];
    }

    self->wrmWifiCallingEnd->LTE_Data_LQM = v15;
    [v12 getServingCellRSRP];
    self->wrmWifiCallingEnd->LTE_RSRP = v16;
    self->wrmWifiCallingEnd->LTE_Signal_bar = [v12 getCurrentSignalBars];
    [v12 getServingCellSNR];
    v18 = self->wrmWifiCallingEnd;
    v18->LTE_SINR = v17;
    v19 = @"Cellular";
    if (v5 == 1)
    {
      v19 = @"WiFi";
    }

    v18->WRM_Recommended_RAT = &v19->isa;
    [WCM_Logging logLevel:24 message:@"HandoverManager: feedAWDCallEndStats RAT  %@, WiFi_RSSI: %d LTE_RSRP: %d iWLAN Status: %d LTE_Voice_LQM: %d, Latte_RTP_Packet_Loss: %d, Latte_Erasures: %d, Latte_Nominal_Jitter_Buffer_Size: %d, Latte_Nominal_Jitter_BufferCall: %d, SNR: %d, Signal BARS:%d", v19, v18->WiFi_RSSI, v18->LTE_RSRP, v18->iWLAN_Status, v18->LTE_Voice_LQM, v18->Latte_RTP_Packet_Loss, v18->Latte_Erasures, v18->Latte_Nominal_Jitter_Buffer_Size, v18->Latte_Dejitter_Buffer_Underflow, v17, v18->LTE_Signal_bar];
  }
}

- (void)initWiFiCellDataEval
{
  qword_1002B7C88 = [(WRM_MetricsService *)self->mMetrics getWRM5GVersusWiFiLinkPreferenceMetrics];
  *(qword_1002B7C88 + 148) = 0;
  byte_1002B7C70 = 0;
  notify_register_check("com.apple.WRM.iRAT_event.linkRecommendation", &dword_1002B7C80);
  [(WRM_HandoverManager *)self registerSFRestartNotification];
  [(WRM_HandoverManager *)self registerSFOutrankDecisionNotification];
  [(WRM_HandoverManager *)self registerThermalTimeToThrottleNotification];
  [(WRM_HandoverManager *)self registerThermalNotificationReasonToThrottle];
  byte_1002B7650 = ![(WRM_HandoverManager *)self checkIFFr2SupportNotAvailable];
}

- (void)forceActiveModeEval:(BOOL)a3
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041CB8;
  block[3] = &unk_10023DCA0;
  v5 = a3;
  dispatch_async(mQueue, block);
}

- (BOOL)isWiFiAppEntryCriteriaMet
{
  v4 = 0.0;
  if (byte_1002B7C70 == 1 && (qword_1002B7B70 = +[WRM_BWEvalManager WRM_BWEvalManagerSingleton](WRM_BWEvalManager, "WRM_BWEvalManagerSingleton"), [qword_1002B7B70 getPredictedWiFiBandwidth:&v4]))
  {
    qword_1002B7B60 = *&v4;
    v2 = v4 > 10.0;
  }

  else
  {
    v2 = 1;
  }

  [WCM_Logging logLevel:24 message:@"isWiFiAppEntryCriteriaMet: BW:%f, eval status: %d, appActive:%d", qword_1002B7B60, v2, byte_1002B7C70];
  return v2;
}

- (BOOL)isAppQualityGoodOnWiFi:(int)a3
{
  v5 = +[WRM_BWEvalManager WRM_BWEvalManagerSingleton];
  qword_1002B7B70 = v5;
  if (dword_1002B7B68 != 1)
  {
    if (a3 == 1)
    {
      return 1;
    }

LABEL_5:
    [(WRM_HandoverManager *)self isWiFiAppEntryCriteriaMet];
    return 1;
  }

  if (a3 != 1)
  {
    goto LABEL_5;
  }

  [v5 isWiFiStreamingExitCriteriaMet];
  return 1;
}

- (void)updateAppState:(int)a3 Category:(id)a4 sessionType:(int)a5
{
  dword_1002B7B68 = a5;
  byte_1002B7C70 = ((a3 - 4) & 0xFFFFFFFB) == 0;
  [(WRM_HandoverManager *)self triggerBWEval];
  [(WRM_HandoverManager *)self evaluateWiFiVersusCell];
  [WCM_Logging logLevel:24 message:@"updateAppState: active: %d, category: %@", byte_1002B7C70, a4];
}

- (void)postLinkPreference:(unint64_t)a3
{
  notify_set_state(dword_1002B7C80, a3);
  [WCM_Logging logLevel:24 message:@"preference: notifyRecommendations: %d", a3];

  notify_post("com.apple.WRM.iRAT_event.linkRecommendation");
}

- (void)registerSFOutrankDecisionNotification
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100041FD8;
  handler[3] = &unk_10023E178;
  handler[4] = self;
  if (notify_register_dispatch("com.apple.symptoms.celloutrankrecommendation", &dword_1002B7C74, &_dispatch_main_q, handler))
  {
    v2 = @"registerSFOutrankDecisionNotification returned error";
  }

  else
  {
    v2 = @"registerSFOutrankDecisionNotification did not return error";
  }

  [WCM_Logging logLevel:24 message:v2];
}

- (void)registerSFRestartNotification
{
  out_token = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100042210;
  v2[3] = &unk_10023E178;
  v2[4] = self;
  if (notify_register_dispatch("com.apple.symptoms.managed_events.startup", &out_token, &_dispatch_main_q, v2))
  {
    [WCM_Logging logLevel:24 message:@"registerSFRestartNotification returned error"];
  }
}

- (void)registerThermalTimeToThrottleNotification
{
  [WCM_Logging logLevel:24 message:@"registerThermalTimeToThrottleNotification: start"];
  if (notify_register_dispatch("com.apple.thermal.timeToMitigate", &dword_1002B7C7C, &_dispatch_main_q, &stru_10023E4B8))
  {

    [WCM_Logging logLevel:24 message:@"registerThermalTimeToThrottleNotification returned error"];
  }

  else
  {
    [WCM_Logging logLevel:24 message:@"registerThermalTimeToThrottleNotification returned: %d", 0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1000423CC, @"com.apple.thermal.timeToMitigate", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)registerThermalNotificationReasonToThrottle
{
  [WCM_Logging logLevel:24 message:@"registerThermalNotificationReasonToThrottle: start"];
  if (notify_register_dispatch("com.apple.thermal.mitigationReasonCode", &dword_1002B7C78, &_dispatch_main_q, &stru_10023E4D8))
  {

    [WCM_Logging logLevel:24 message:@"registerThermalNotificationReasonToThrottle returned error"];
  }

  else
  {
    [WCM_Logging logLevel:24 message:@"registerThermalNotificationReasonToThrottle did not return error"];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100042588, @"com.apple.thermal.mitigationReasonCode", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)submitWiFiVersusCellAWDMetrics
{
  v3 = [(WCM_WiFiController *)self->mWiFi wifiService];
  v4 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  if ([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
  {
    v5 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
    v6 = [v5 getCTDataIndictor];
    v7 = [v5 getFR2Status];
    *(qword_1002B7C88 + 149) = v7;
    v8 = [v5 getLocationDBFR1Count];
    *(qword_1002B7C88 + 152) = v8;
    v9 = [v5 getLocationDBFR2Count];
    v10 = qword_1002B7C88;
    *(qword_1002B7C88 + 156) = v9;
    *(v10 + 184) = byte_1002B7B5B;
    v11 = [v5 getRadioCoverage];
    *(qword_1002B7C88 + 188) = v11;
    v12 = [v5 getRadioFrequency];
    v13 = qword_1002B7C88;
    *(qword_1002B7C88 + 164) = *&qword_1002B7B60;
    v14 = byte_1002B7B59;
    *(v13 + 172) = byte_1002B7B58;
    *(v13 + 176) = v14;
    *(v13 + 180) = byte_1002B7B5A;
    v15 = dword_1002B7B68;
    v16 = byte_1002B7C84;
    *(v13 + 192) = v12;
    *(v13 + 196) = v16;
    *(v13 + 200) = v15;
    *(v13 + 160) = byte_1002B7B7A;
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"evaluateWiFiVersusCell: send metric: locationDBFR1Count %d", *(v13 + 152), [v5 getLocationDBFR1Count]);
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"evaluateWiFiVersusCell: send metric: locationDBFR2Count %d", *(qword_1002B7C88 + 156), [v5 getLocationDBFR2Count]);
  }

  else
  {
    v5 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    v6 = 0;
  }

  *(qword_1002B7C88 + 88) = dword_1002B7640;
  v17 = [v4 getCellularDataLQM];
  *(qword_1002B7C88 + 8) = v17;
  [v5 getMeasureBWDataSlot];
  *(qword_1002B7C88 + 12) = v18;
  v19 = [v5 getDataSlotLoad];
  v20 = qword_1002B7C88;
  *(qword_1002B7C88 + 20) = v19;
  *(v20 + 24) = 0;
  *(v20 + 40) = 0;
  *(v20 + 48) = 0;
  v21 = [v5 getRRCState];
  v22 = qword_1002B7C88;
  *(qword_1002B7C88 + 80) = v21;
  *(v22 + 84) = 0;
  if ([v5 getServingCellType] == 9)
  {
    *(qword_1002B7C88 + 72) = @"N_RADIO";
    [v5 getNrRSRP];
    *(qword_1002B7C88 + 56) = v23;
    [v5 getNrRSRQ];
    *(qword_1002B7C88 + 60) = v24;
    [v5 getNrSNR];
    *(qword_1002B7C88 + 64) = v25;
    v26 = [v5 isDeviceUsingFR2Radio];
    v27 = qword_1002B7C88;
    if (v26)
    {
LABEL_11:
      *(v27 + 52) = 1;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if ([v5 getServingCellType] == 1)
  {
    *(qword_1002B7C88 + 72) = @"LTE_RADIO";
    [v5 getServingCellRSRP];
    *(qword_1002B7C88 + 28) = v28;
    [v5 getServingCellRSRQ];
    *(qword_1002B7C88 + 32) = v29;
    [v5 getServingCellSNR];
    *(qword_1002B7C88 + 36) = v30;
    if (v6 - 16 >= 4 && v6 != 8)
    {
      goto LABEL_14;
    }

    [v5 getNrRSRP];
    *(qword_1002B7C88 + 56) = v31;
    [v5 getNrRSRQ];
    *(qword_1002B7C88 + 60) = v32;
    [v5 getNrSNR];
    v27 = qword_1002B7C88;
    *(qword_1002B7C88 + 64) = v33;
    *(v27 + 68) = 1;
    if ((v6 & 0x1A) == 0x10)
    {
      goto LABEL_11;
    }

LABEL_12:
    *(v27 + 52) = 0;
    goto LABEL_14;
  }

  *(qword_1002B7C88 + 72) = @"UNKNOWN_RADIO";
LABEL_14:
  if ([(WCM_WiFiService *)v3 isWiFiPrimaryInterface])
  {
    v34 = [(WCM_WiFiService *)v3 getPointOfInterest];
    *(qword_1002B7C88 + 92) = v34;
    v35 = [(WCM_WiFiService *)v3 getCCA];
    *(qword_1002B7C88 + 96) = v35;
    v36 = [(WCM_WiFiService *)v3 getChannelUtlization];
    *(qword_1002B7C88 + 104) = v36;
    v37 = [(WCM_WiFiService *)v3 getRSSI];
    *(qword_1002B7C88 + 108) = v37;
    [(WCM_WiFiService *)v3 getRxPhyRate];
    *(qword_1002B7C88 + 112) = v38;
    v39 = [(WCM_WiFiService *)v3 getSNR];
    *(qword_1002B7C88 + 116) = v39;
    v40 = [(WCM_WiFiService *)v3 getConnectedStationCount];
    *(qword_1002B7C88 + 120) = v40;
    [(WCM_WiFiService *)v3 getTxPer];
    *(qword_1002B7C88 + 124) = (v41 * 100.0);
    v42 = [(WCM_WiFiService *)v3 getWghtAverageRXPhyRate];
    *(qword_1002B7C88 + 128) = v42;
    v43 = [(WCM_WiFiService *)v3 getWghtAverageSNR];
    *(qword_1002B7C88 + 132) = v43;
    v44 = [(WCM_WiFiService *)v3 getWghtAverageTXPhyRate];
    *(qword_1002B7C88 + 136) = v44;
    v45 = [(WCM_WiFiService *)v3 getWghtAverageRSSI];
    v46 = qword_1002B7C88;
    *(qword_1002B7C88 + 100) = 0;
    *(v46 + 140) = v45;
  }

  else
  {
    v47 = qword_1002B7C88;
    *(qword_1002B7C88 + 92) = 0u;
    *(v47 + 108) = 0u;
    *(v47 + 124) = 0u;
    *(v47 + 140) = 0;
  }

  [-[WRM_MetricsService getAWDService](self->mMetrics "getAWDService")];

  [WCM_Logging logLevel:24 message:@"evaluateWiFiVersusCell: submitAWDMetrics"];
}

- (void)evalExitForceOutranking
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100042B04;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(mQueue, block);
}

- (BOOL)isCellularEntryCriteriaMetForIMSThumpCallCurrentLinkWiFi
{
  v3 = [(WRM_HandoverManager *)self getSCService];
  v4 = [(WRM_HandoverManager *)self getCTService];
  v5 = [v4 getServingCellType];
  v6 = [v4 getCurrentSignalBars];
  v7 = [(WRM_HandoverManager *)self getiRATConfigController];
  v8 = [v3 getCellularDataLQM];
  [WCM_Logging logLevel:24 message:@"isCellularEntryCriteriaMetForIMSThCallCurrentLinkWiFi, LQM: %d, Signal Bars: %d", v8, v6];
  if (v5 > 2)
  {
    if (v5 != 3 && v5 != 8)
    {
LABEL_9:
      v11 = [v7 minSigBarTh2] - 1;
      return v8 > 49 || v6 >= v11;
    }

    if (byte_1002B7BCA == 1)
    {
      v13 = [v7 minSigBarTh2];
      if (v8 > 49 || v6 >= (v13 - 1))
      {
        byte_1002B7BCA = 0;
        v10 = 1;
LABEL_21:
        [(WRM_HandoverManager *)self updateHandoverReasonCode:0x400000];
        [WCM_Logging logLevel:24 message:@"Thumper not supported on 2G radio:%ld", v6];
        return v10;
      }
    }

    else
    {
      [WCM_Logging logLevel:24 message:@"Thumper not supported on 2G radio:%ld", v6];
    }

    v10 = 0;
    goto LABEL_21;
  }

  if (v5 != 2)
  {
    goto LABEL_9;
  }

  v9 = [v7 minSigBarTh2];
  if (v8 > 49 || v6 >= (v9 - 1))
  {
    [WCM_Logging logLevel:24 message:@"UMTS entry conditions are met bars:%ld", v6];
    return 1;
  }

  else
  {
    [WCM_Logging logLevel:24 message:@"UMTS entry conditions are not met bars:%ld", v6];
    return 0;
  }
}

- (BOOL)isCellularExitCriteriaMetForIMSThumpCallCurrentLinkCellular
{
  v3 = [(WRM_HandoverManager *)self getCTService];
  v4 = [v3 getServingCellType];
  v5 = [v3 getCurrentSignalBars];
  v6 = [-[WRM_HandoverManager getSCService](self "getSCService")];
  v7 = [(WRM_HandoverManager *)self getiRATConfigController];
  [WCM_Logging logLevel:24 message:@"isCellularExitCriteriaMetForIMSThCallCurrentLinkCellular, LQM: %d, Signal Bars: %d", v6, v5];
  if (v4 > 2 && (v4 == 3 || v4 == 8))
  {
    [(WRM_HandoverManager *)self updateHandoverReasonCode:0x400000];
    [WCM_Logging logLevel:24 message:@"isCellularExitCriteriaMetForIMSThumpCallCurrentLinkCellular:%ld", v5];
  }

  else
  {
    if ((v5 > ([v7 minSigBarTh1] + 1) || v6 >= 11) && v5 > objc_msgSend(v7, "minSigBarTh1"))
    {
      return 0;
    }

    [(WRM_HandoverManager *)self updateHandoverReasonCode:0x80000];
    [(WRM_HandoverManager *)self updateHandoverReasonCode:0x40000];
  }

  return 1;
}

- (BOOL)can4G5GMeetApplicationRequirementsAppTypeWiFiCallingCallIdle:(int)a3
{
  v5 = [(WRM_HandoverManager *)self getCTService];
  v6 = [v5 getServingCellType];
  v7 = [v5 getCurrentSignalBars];
  v8 = [v5 isVoLTESupported];
  v9 = [v5 isVoNrSupported];
  v10 = [v5 activeSlot] - 1;
  v11 = v10 <= 1 && self->mSaAllowedOnWiFi[v10];
  if ((v8 & 1) == 0)
  {
    v13 = @"canMeetApplicationRequirementsAppTypeWiFiCallingCallIdle, VoLTE not enabled,preferWiFi";
LABEL_12:
    [WCM_Logging logLevel:24 message:v13];
    return 0;
  }

  [WCM_Logging logLevel:24 message:@"canMeetApplicationRequirementsAppTypeWiFiCallingCallIdle, signal bars:%lld, VoLTE enabled: %d", v7, 1];
  if ((v6 | 8) != 9)
  {
    return 0;
  }

  if (a3 == 2)
  {
    if ([(WRM_HandoverManager *)self isLteEntryCriteriaMetCurrentLinkNone]|| [(WRM_HandoverManager *)self isNrEntryCriteriaMetCurrentLinkNone])
    {
      v12 = @"EntryCriteriaMetCurrentLinkNone true";
      goto LABEL_26;
    }

    v13 = @"EntryCriteriaMetCurrentLinkNone false";
    goto LABEL_12;
  }

  if (a3 != 1)
  {
    if (((v6 == 9) & v11 & v9) == 1)
    {
      if (![(WRM_HandoverManager *)self isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkNR:0])
      {
        v12 = @"isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkNR false";
        goto LABEL_26;
      }

      v13 = @"isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkNR true";
    }

    else
    {
      if (![(WRM_HandoverManager *)self isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkLTE:0])
      {
        v12 = @"isCellularExitCriteriaMetForCellularCallCurrentLinkLTE false";
        goto LABEL_26;
      }

      v13 = @"isCellularExitCriteriaMetForCellularCallCurrentLinkLTE true";
    }

    goto LABEL_12;
  }

  if (![(WRM_HandoverManager *)self isLteEntryCriteriaMetCurrentLinkWiFi:2]&& ![(WRM_HandoverManager *)self isNrEntryCriteriaMetCurrentLinkWiFi:2])
  {
    v13 = @"EntryCriteriaMetCurrentLinkWiFi false";
    goto LABEL_12;
  }

  v12 = @"EntryCriteriaMetCurrentLinkWiFi true";
LABEL_26:
  [WCM_Logging logLevel:24 message:v12];
  return 1;
}

- (BOOL)canCellularMeetApplicationRequirementsAppTypeWiFiCallingCallIdle:(int)a3
{
  v5 = [(WRM_HandoverManager *)self getCTService];
  v6 = [v5 getServingCellType];
  v7 = [v5 getCurrentSignalBars];
  v8 = [-[WRM_HandoverManager getSCService](self "getSCService")];
  v9 = [v5 isVoLTESupported];
  v10 = [(WRM_HandoverManager *)self getiRATConfigController];
  [WCM_Logging logLevel:24 message:@"canCellularMeetApplicationRequirementsAppTypeWiFiCallingCallIdle, VoLTE enabled: %d", v9];
  if (v6 == 10)
  {
    v11 = "UNKNOWN_RADIO ";
  }

  else if (v6 - 1 >= 8)
  {
    v11 = "UNKNOWN_RADIO!!!";
    if (v6 == 9)
    {
      v11 = "N_RADIO";
    }
  }

  else
  {
    v11 = (&off_10023E910)[v6 - 1];
  }

  [WCM_Logging logLevel:24 message:@"Signal BARs =%ld, Registration Status = %d, Serving Cell Type: %s, Data LQM=%d", v7, self->deviceRegisteredWithCellularNetwork, v11, v8];
  if (a3 == 2)
  {
    if ([(WRM_HandoverManager *)self isCellularEntryCriteriaMetForVoiceCallCurrentLinkNone])
    {
      v12 = @"isCellularEntryCriteriaMetForVoiceCallCurrentLinkNone true";
      goto LABEL_13;
    }

    v14 = @"isCellularEntryCriteriaMetForVoiceCallCurrentLinkNone false";
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    if ([(WRM_HandoverManager *)self isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi:0])
    {
      v12 = @"isCellularEntryCriteriaMetForCellularCallCurrentLinkWiFi true";
LABEL_13:
      [WCM_Logging logLevel:24 message:v12, v15, v16];
      return 1;
    }

    v14 = @"isCellularEntryCriteriaMetForCellulaVoiceCurrentLinkWiFi false";
    goto LABEL_22;
  }

  switch(v6)
  {
    case 1u:
      if (![(WRM_HandoverManager *)self isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkLTE:0])
      {
        v12 = @"isCellularExitCriteriaMetForCellularCallCurrentLinkLTE false";
        goto LABEL_13;
      }

      v14 = @"isCellularExitCriteriaMetForCellularCallCurrentLinkLTE true";
      goto LABEL_22;
    case 2u:
      if (![(WRM_HandoverManager *)self isCellularExitCriteriaMetForVoiceCallCallCurrentLinkUMTS])
      {
        v12 = @"isCellularExitCriteriaMetForVoiceCallCallCurrentLinkUMTS not met";
        goto LABEL_13;
      }

      v14 = @"isCellularExitCriteriaMetForVoiceCallCallCurrentLinkUMTS met";
      goto LABEL_22;
    case 9u:
      if (![(WRM_HandoverManager *)self isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkNR:0])
      {
        v12 = @"isCellularExitCriteriaMetForCellularCallCurrentLinkNR false";
        goto LABEL_13;
      }

      v14 = @"isCellularExitCriteriaMetForCellularCallCurrentLinkNR true";
LABEL_22:
      [WCM_Logging logLevel:24 message:v14, v15, v16];
      return 0;
  }

  if (v6 != 10)
  {
    if ((v7 > ([v10 minSigBarTh1] + 1) || v8 >= 11) && v7 > objc_msgSend(v10, "minSigBarTh1"))
    {
      [WCM_Logging logLevel:24 message:@"signal bar: %d, data LQM: %d", v7, v8];
      return 1;
    }

    [WCM_Logging logLevel:24 message:@"signal bar: %d, data LQM: %d", v7, v8];
  }

  return 0;
}

- (BOOL)canCellularMeetApplicationRequirementsAppTypeWiFiCallingCallActive:(int)a3
{
  v5 = [(WRM_HandoverManager *)self getCTService];
  v6 = [v5 getServingCellType];
  v7 = [v5 isVoLTESupported];
  v8 = [v5 isIMSPreferenceEnabled];
  v9 = [v5 dataAttachedWithCellularNetwork];
  v10 = [v5 getLteVoiceLQM];
  [WCM_Logging logLevel:24 message:@"canCellularMeetApplicationRequirementsAppTypeWiFiCallingCallActive, VoLTE enabled: %d, IMS_preference: %d, vLQM: %d, Attached:%d", v7, v8, v10, v9];
  if (a3 != 1)
  {
    if (v6 == 9)
    {
      if (![(WRM_HandoverManager *)self isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkNR:1])
      {
        v11 = @"isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkNR false";
        goto LABEL_17;
      }

      v12 = @"isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkNR true";
    }

    else
    {
      if (v6 != 1)
      {
        return 0;
      }

      if (![(WRM_HandoverManager *)self isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkLTE:1])
      {
        v11 = @"isCellularExitCriteriaMetForCellularCallCurrentLinkLTE false";
        goto LABEL_17;
      }

      v12 = @"isCellularExitCriteriaMetForCellularCallCurrentLinkLTE true";
    }

LABEL_13:
    [WCM_Logging logLevel:24 message:v12];
    return 0;
  }

  if (((v10 != 10) & v7 & v9) == 0)
  {
    v12 = @"canCellularMeetApplicationRequirementsAppTypeWiFiCallingCallActive,cellular quality not good for active handover";
    goto LABEL_13;
  }

  if (![(WRM_HandoverManager *)self isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi:1])
  {
    v12 = @"isCellularEntryCriteriaMetForCellulaVoiceCurrentLinkWiFi false";
    goto LABEL_13;
  }

  v11 = @"isCellularEntryCriteriaMetForCellularCallCurrentLinkWiFi true";
LABEL_17:
  [WCM_Logging logLevel:24 message:v11];
  return 1;
}

- (BOOL)isNrEntryCriteriaMetCurrentLinkNone
{
  v3 = [(WRM_HandoverManager *)self getCTService];
  v4 = [v3 getCurrentSignalBars];
  v5 = [-[WRM_HandoverManager getSCService](self "getSCService")];
  v6 = [(WRM_HandoverManager *)self getiRATConfigController];
  if (-[WRM_HandoverManager isActiveHandoverSupported](self, "isActiveHandoverSupported") && [v3 isVoiceLQMValid])
  {
    if ([v3 getLteVoiceLQM] >= 50 && v4 >= objc_msgSend(v6, "minSigBarTh2"))
    {
      v7 = 1;
      v8 = @"isEntryCriteriaMetCurrentLinkNone met: Voice LQM GOOD or POOR";
    }

    else
    {
      v7 = 0;
      v8 = @"isEntryCriteriaMetCurrentLinkNone not met: Voice LQM Bad";
    }
  }

  else if (v5 - 50 <= 0xFFFFFFCE && v4 >= [v6 minSigBarTh2])
  {
    v7 = 1;
    v8 = @"isEntryCriteriaMetCurrentLinkNone: Data LQM better than kPOOR";
  }

  else
  {
    v7 = 0;
    v8 = @"isEntryCriteriaMetCurrentLinkNone: Entry Criteria not met";
  }

  [WCM_Logging logLevel:24 message:v8];
  return v7;
}

- (BOOL)isLteEntryCriteriaMetCurrentLinkNone
{
  v3 = [(WRM_HandoverManager *)self getCTService];
  v4 = [v3 getCurrentSignalBars];
  v5 = [-[WRM_HandoverManager getSCService](self "getSCService")];
  v6 = [(WRM_HandoverManager *)self getiRATConfigController];
  if (-[WRM_HandoverManager isActiveHandoverSupported](self, "isActiveHandoverSupported") && [v3 isVoiceLQMValid])
  {
    if ([v3 getLteVoiceLQM] >= 50 && v4 >= objc_msgSend(v6, "minSigBarTh2"))
    {
      v7 = 1;
      v8 = @"isCellularEntryCriteriaMetForVoiceCallCurrentLinkNone met: Voice LQM GOOD or POOR";
    }

    else
    {
      v7 = 0;
      v8 = @"isCellularEntryCriteriaMetForVoiceCallCurrentLinkNone not met: Voice LQM Bad";
    }
  }

  else if (v5 - 50 <= 0xFFFFFFCE && v4 >= [v6 minSigBarTh2])
  {
    v7 = 1;
    v8 = @"isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkNone: Data LQM better than kPOOR";
  }

  else
  {
    v7 = 0;
    v8 = @"isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkNone: Entry Criteria not met";
  }

  [WCM_Logging logLevel:24 message:v8];
  return v7;
}

- (BOOL)isCellularEntryCriteriaMetForVoiceCallCurrentLinkNone
{
  v3 = [(WRM_HandoverManager *)self getCTService];
  v4 = [v3 getServingCellType];
  v5 = [v3 getCurrentSignalBars];
  v6 = [-[WRM_HandoverManager getSCService](self "getSCService")];
  v7 = [(WRM_HandoverManager *)self getiRATConfigController];
  if (v4 > 8)
  {
    if (v4 != 9)
    {
      if (v4 == 10)
      {
        v9 = @"isCellularEntryCriteriaMetForVoiceCallCurrentLinkNone not met: ServingCell not known";
LABEL_22:
        [WCM_Logging logLevel:24 message:v9];
        return 0;
      }

LABEL_10:
      if (v5 >= [v7 minSigBarTh2] && v6 - 50 <= 0xFFFFFFCE)
      {
        v8 = @"isCellularEntryCriteriaMetForVoiceCallCurrentLinkNone met";
        goto LABEL_13;
      }

      v9 = @"isCellularEntryCriteriaMetForVoiceCallCurrentLinkNone not met";
      goto LABEL_22;
    }

    return [(WRM_HandoverManager *)self isNrEntryCriteriaMetCurrentLinkNone];
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        if (v5 >= [v7 minSigBarTh2] && v6 - 50 <= 0xFFFFFFCE)
        {
          v8 = @"isCellularEntryCriteriaMetForVoiceCallCurrentLinkNone met: LQM GOOD or POOR";
LABEL_13:
          [WCM_Logging logLevel:24 message:v8];
          return 1;
        }

        v9 = @"isCellularEntryCriteriaMetForVoiceCallCurrentLinkNone not met:LQM Bad";
        goto LABEL_22;
      }

      goto LABEL_10;
    }

    return [(WRM_HandoverManager *)self isLteEntryCriteriaMetCurrentLinkNone];
  }
}

- (BOOL)isNrEntryCriteriaMetCurrentLinkWiFi:(int64_t)a3
{
  v5 = [(WRM_HandoverManager *)self getCTService];
  v6 = [v5 getCurrentSignalBars];
  [v5 getCurrentMovAvgSignalBars];
  v8 = v7;
  v9 = [v5 isVoiceLQMValid];
  v10 = [(WRM_HandoverManager *)self getiRATConfigController];
  v11 = [(WRM_HandoverManager *)self isActiveHandoverSupported];
  v12 = 0;
  v13 = @"isEntryCriteriaMetCurrentLinkWiFi: Entry Criteria not met";
  if (v11 && v9)
  {
    v14 = [v5 getLteVoiceLQM];
    [WCM_Logging logLevel:24 message:@"isEntryCriteriaMetCurrentLinkWiFi, Voice LQM: %d, Signal Bars: %d, Mov Avg Sig Bars:%f", v14, v6, v8];
    if ((v14 - 50) <= 0xFFFFFFCE && (v8 * 10.0) > [v10 minMovSigBarTh0] && v6 >= (objc_msgSend(v10, "minSigBarTh0") - a3))
    {
      v12 = 1;
      v13 = @"isEntryCriteriaMetCurrentLinkWiFi: LQM better than kPOOR";
    }

    else
    {
      v12 = 0;
      v13 = @"isEntryCriteriaMetCurrentLinkWiFi: Entry Criteria not met";
    }
  }

  [WCM_Logging logLevel:24 message:v13];
  return v12;
}

- (BOOL)isLteEntryCriteriaMetCurrentLinkWiFi:(int64_t)a3
{
  v5 = [(WRM_HandoverManager *)self getSCService];
  v6 = [(WRM_HandoverManager *)self getCTService];
  v7 = [v6 getCurrentSignalBars];
  v8 = [v5 getCellularDataLQM];
  [v6 getCurrentMovAvgSignalBars];
  v10 = v9;
  v11 = [v6 isVoiceLQMValid];
  v12 = [(WRM_HandoverManager *)self getiRATConfigController];
  if (![(WRM_HandoverManager *)self isActiveHandoverSupported]|| !v11)
  {
    if (v8 - 50 <= 0xFFFFFFCE && (v10 * 10.0) > [v12 minMovSigBarTh0] && v7 >= (objc_msgSend(v12, "minSigBarTh0") - a3))
    {
      v14 = 1;
      v15 = @"isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi: Data LQM better than kPOOR";
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = [v6 getLteVoiceLQM];
  [WCM_Logging logLevel:24 message:@"isLteEntryCriteriaMetCurrentLinkWiFi, Voice LQM: %d, Signal Bars: %d, Mov Avg Sig Bars:%f", v13, v7, v10];
  if ((v13 - 50) > 0xFFFFFFCE || (v10 * 10.0) <= [v12 minMovSigBarTh0] || v7 < (objc_msgSend(v12, "minSigBarTh0") - a3))
  {
LABEL_10:
    v14 = 0;
    v15 = @"isLteEntryCriteriaMetCurrentLinkWiFi: Entry Criteria not met";
    goto LABEL_11;
  }

  v14 = 1;
  v15 = @"isLteEntryCriteriaMetCurrentLinkWiFi: LQM better than kPOOR";
LABEL_11:
  [WCM_Logging logLevel:24 message:v15];
  return v14;
}

- (BOOL)isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi:(BOOL)a3
{
  v3 = a3;
  v5 = [(WRM_HandoverManager *)self getSCService];
  v6 = [(WRM_HandoverManager *)self getCTService];
  v7 = [v6 getServingCellType];
  v8 = [v6 getCurrentSignalBars];
  [v6 getCurrentMovAvgSignalBars];
  v10 = v9;
  v11 = [v5 getCellularDataLQM];
  v12 = [v6 isAudioQualityGood];
  v13 = [(WRM_HandoverManager *)self getiRATConfigController];
  v14 = v13;
  if (v3)
  {
    v15 = 0;
  }

  else
  {
    v15 = 2;
  }

  if (v7 > 8)
  {
    if (v7 != 9)
    {
      if (v7 == 10)
      {
        v20 = @"isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi not met: ServingCell not known";
LABEL_36:
        [WCM_Logging logLevel:24 message:v20, v25, v26, *&v27];
        return 0;
      }

LABEL_19:
      if (v8 >= ([v13 minSigBarTh0] - v15))
      {
        v21 = [v14 minMovSigBarTh0];
        v22 = v11 - 50 >= 0xFFFFFFCF || (v10 * 10.0) <= v21;
        v23 = !v22;
        if ((v23 & v12) == 1)
        {
          v19 = 1;
          [WCM_Logging logLevel:24 message:@"default: isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi met. CS Audio Quality: %d, SigBars:%d, MovAvgBars:%f", 1, v8, v10];
          return v19;
        }
      }

      [WCM_Logging logLevel:24 message:@"default: isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi not met. CS Audio Quality: %d, SigBars:%d, MovAvgBars:%f", v12, v8, v10];
      return 0;
    }

    return [(WRM_HandoverManager *)self isNrEntryCriteriaMetCurrentLinkWiFi:v15];
  }

  else
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        if (v8 >= ([v13 minSigBarTh0] - v15))
        {
          v16 = [v14 minMovSigBarTh0];
          v17 = v11 - 50 >= 0xFFFFFFCF || (v10 * 10.0) <= v16;
          v18 = !v17;
          if ((v18 & v12) == 1)
          {
            v19 = 1;
            [WCM_Logging logLevel:24 message:@"isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi met: LQM POOR. CS Audio Quality: %d, SigBars:%d, MovAvgBars:%f", 1, v8, v10];
            return v19;
          }
        }

        v27 = v10;
        v25 = v12;
        v26 = v8;
        v20 = @"isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi Entry Criteria not met, CS Audio Quality:%d, SigBars:%d, MovAvgBars:%f";
        goto LABEL_36;
      }

      goto LABEL_19;
    }

    return [(WRM_HandoverManager *)self isLteEntryCriteriaMetCurrentLinkWiFi:v15];
  }
}

- (BOOL)isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkLTE:(BOOL)a3
{
  v3 = a3;
  v5 = [(WRM_HandoverManager *)self getCTService];
  v6 = [v5 getServingCellType];
  [v5 getServingCellRSRP];
  v8 = v7;
  [v5 getCurrentAudioErasure];
  v10 = v9;
  v11 = [v5 isSrvccHandoverInProgress];
  v12 = [(WRM_HandoverManager *)self getiRATConfigController];
  if (v11 && v3)
  {
    [WCM_Logging logLevel:24 message:@"isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkLT did not meet: SRVCC Handover in progress"];
    return 0;
  }

  if (!-[WRM_HandoverManager isActiveHandoverSupported](self, "isActiveHandoverSupported") || ![v5 isVoiceLQMValid] || v6 != 1)
  {
    v18 = [-[WRM_HandoverManager getSCService](self "getSCService")];
    v19 = [v5 getCurrentSignalBars];
    [WCM_Logging logLevel:24 message:@"isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkLTE, Data LQM: %d, Signal Bars: %d", v18, v19];
    if ((v18 > 10 || v19 > ([v12 minSigBarTh1] + 1)) && v19 > objc_msgSend(v12, "minSigBarTh1"))
    {
      return 0;
    }

    goto LABEL_26;
  }

  [WCM_Logging logLevel:24 message:@"Evaluating LTE Link Quality Metrics"];
  v13 = [v5 getLteVoiceLQM];
  v14 = [v5 getCurrentSignalBars];
  [WCM_Logging logLevel:24 message:@"isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkLTE, Voice LQM: %d, Signal Bars: %d, RSRP: %f, Erasure: %f", v13, v14, *&v8, *&v10];
  if (!v3)
  {
    if ((v13 != 10 || v14 > ([v12 minSigBarTh1] + 1)) && v14 > objc_msgSend(v12, "minSigBarTh1"))
    {
      return 0;
    }

    goto LABEL_26;
  }

  v15 = v8 <= -115.0 && v10 >= 5.0;
  if (v13 == 10)
  {
    if (!v15)
    {
      v16 = self;
      v17 = 0x80000;
LABEL_27:
      [(WRM_HandoverManager *)v16 updateHandoverReasonCode:v17];
      return 1;
    }

LABEL_23:
    v16 = self;
    v17 = 0x100000;
    goto LABEL_27;
  }

  if (v15)
  {
    goto LABEL_23;
  }

  v21 = [v12 minSigBarTh1];
  result = 0;
  if (v14 <= v21 && v13 < 51)
  {
LABEL_26:
    [(WRM_HandoverManager *)self updateHandoverReasonCode:0x80000];
    v16 = self;
    v17 = 0x40000;
    goto LABEL_27;
  }

  return result;
}

- (BOOL)isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkNR:(BOOL)a3
{
  v3 = a3;
  v5 = [(WRM_HandoverManager *)self getCTService];
  v6 = [v5 isSrvccHandoverInProgress];
  v7 = [(WRM_HandoverManager *)self getiRATConfigController];
  if (v6 && v3)
  {
    [WCM_Logging logLevel:24 message:@"isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkLT did not meet: SRVCC Handover in progress"];
    return 0;
  }

  [WCM_Logging logLevel:24 message:@"Evaluating LTE Link Quality when device is camped on NR CELL"];
  v9 = [v5 getLteVoiceLQM];
  v10 = [v5 getCurrentSignalBars];
  [v5 getServingCellRSRP];
  v12 = v11;
  [v5 getCurrentAudioErasure];
  v14 = v13;
  [WCM_Logging logLevel:24 message:@"isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkNR, Voice LQM: %d, Signal Bars: %d, RSRP: %f, Erasure:%f", v9, v10, *&v12, *&v13];
  if (!v3)
  {
    if ((v9 != 10 || v10 > ([v7 minSigBarTh1] + 1)) && v10 > objc_msgSend(v7, "minSigBarTh1"))
    {
      return 0;
    }

    goto LABEL_19;
  }

  v15 = v14 >= 5.0;
  if (v12 > -115.0)
  {
    v15 = 0;
  }

  if (v9 == 10)
  {
    if (!v15)
    {
      v16 = self;
      v17 = 0x80000;
LABEL_20:
      [(WRM_HandoverManager *)v16 updateHandoverReasonCode:v17];
      return 1;
    }

LABEL_16:
    v16 = self;
    v17 = 0x100000;
    goto LABEL_20;
  }

  if (v15)
  {
    goto LABEL_16;
  }

  v18 = [v7 minSigBarTh1];
  result = 0;
  if (v10 <= v18 && v9 < 51)
  {
LABEL_19:
    [(WRM_HandoverManager *)self updateHandoverReasonCode:0x80000];
    v16 = self;
    v17 = 0x40000;
    goto LABEL_20;
  }

  return result;
}

- (BOOL)isCellularExitCriteriaMetForVoiceCallCallCurrentLinkUMTS
{
  v3 = [(WRM_HandoverManager *)self getSCService];
  v4 = [(WRM_HandoverManager *)self getCTService];
  v5 = [v4 isAudioQualityGood];
  v6 = [v3 getCellularDataLQM];
  v7 = [v4 getCurrentSignalBars];
  v8 = [(WRM_HandoverManager *)self getiRATConfigController];
  [WCM_Logging logLevel:24 message:@"isCellularExitCriteriaMetForVoiceCallCallCurrentLinkUMTS, LQM: %d, Signal Bars: %d. CS audio quality: %d", v6, v7, v5];
  if (v7 <= ([v8 minSigBarTh1] + 1) && v6 < 11 || v7 <= objc_msgSend(v8, "minSigBarTh1"))
  {
    [(WRM_HandoverManager *)self updateHandoverReasonCode:0x80000];
    [(WRM_HandoverManager *)self updateHandoverReasonCode:0x40000];
    v9 = 1;
    v10 = @"UMTS exit conditions are met signal bars:%ld";
  }

  else
  {
    v9 = 0;
    v10 = @"UMTS exit conditions are not met signal bars:%ld ";
  }

  [WCM_Logging logLevel:24 message:v10, v7];
  return v9;
}

- (BOOL)isCellularViableForWiFiBlackList
{
  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  v3 = [(WRM_HandoverManager *)self getCTService];
  v4 = [v3 getLteVoiceLQM];
  v5 = [v3 getCurrentSignalBars];
  return v4 != 10 && v5 > 2;
}

- (BOOL)isWiFiBeaconLossQualityIndicatorGood:(unint64_t)a3 :(unint64_t)a4 :(int)a5
{
  v7 = [(WCM_WiFiController *)self->mWiFi wifiService:a3];
  if (![(WCM_WiFiService *)v7 isBeaconPerValid])
  {
    return 1;
  }

  v8 = [(WRM_HandoverManager *)self getiRATConfigController];
  [(WCM_WiFiService *)v7 getBeaconPer];
  v10 = (v9 * 100.0);
  [WCM_Logging logLevel:24 message:@" Beacon PER %lld", v10];
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
  v9 = [(WRM_HandoverManager *)self getIWLANServiceType:a3];
  if (v9 != 1)
  {
    v10 = [(WCM_WiFiController *)self->mWiFi wifiService];
    v11 = [(WRM_HandoverManager *)self getiRATConfigController];
    v12 = [(WCM_WiFiService *)v10 getCCA];
    if (a6 == 1)
    {
      if (!v7)
      {
        v13 = [v11 minIdleWiFiCcaTh1];
        goto LABEL_9;
      }
    }

    else if (!a6)
    {
      if (v7)
      {
        v13 = [v11 minActiveWiFiCcaTh0];
      }

      else
      {
        v13 = [v11 minIdleWiFiCcaTh0];
      }

LABEL_9:
      if (v12 >= v13)
      {
        [(WRM_HandoverManager *)self updateHandoverReasonCode:32];
        LOBYTE(v9) = 0;
        return v9;
      }
    }

    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)isWiFiArqQualityIndicatorGoodUserData:(unint64_t)a3 :(unint64_t)a4 :(int)a5 :(BOOL)a6
{
  v6 = a6;
  v10 = [(WRM_HandoverManager *)self getIWLANServiceType];
  if (v10 != 1)
  {
    v11 = [(WCM_WiFiController *)self->mWiFi wifiService];
    v12 = [(WRM_HandoverManager *)self getiRATConfigController];
    [(WCM_WiFiService *)v11 getTxPer];
    v14 = (v13 * 100.0);
    v15 = [(WCM_WiFiService *)v11 isTxPerValid];
    [(WCM_WiFiService *)v11 getTxFail];
    v17 = v16;
    [(WCM_WiFiService *)v11 getRxRatio];
    v19 = v18 * 100.0;
    [(WCM_WiFiService *)v11 getCumulativeTxPer];
    [WCM_Logging logLevel:24 message:@"Actual Tx PER %lld, TX Fail %lld, RX Ratio=%lf, CumTxPER %lld, TX PER valid: %d", v14, v17, *&v19, (v20 * 100.0), v15];
    if (!v15)
    {
      goto LABEL_18;
    }

    if (v6)
    {
      if (a4 != 1)
      {
        goto LABEL_18;
      }

      if (a5)
      {
        if (a5 == 1 && [v12 minActiveWiFiTxPktLossRateTh1] < v14)
        {
          v21 = @"iRAT detected WiFi bad because of WiFi_Metrics: TX PER THREASHOLD: %lld";
LABEL_13:
          +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, v21, [v12 minActiveWiFiTxPktLossRateTh1]);
LABEL_17:
          [(WRM_HandoverManager *)self updateHandoverReasonCode:16];
          LOBYTE(v10) = 0;
          return v10;
        }

        goto LABEL_18;
      }

      v22 = [v12 minActiveWiFiTxPktLossRateTh0];
    }

    else
    {
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"TX PER THREASHOLD: %lld", [v12 minActiveWiFiTxPktLossRateTh1]);
      if (a5)
      {
        if (a5 == 1 && [v12 minIdleWiFiTxPktLossRateTh1] < v14)
        {
          v21 = @"iRAT detected WiFi bad because of WiFi_Metrics: TX PER THREASHOLD:%lld";
          goto LABEL_13;
        }

LABEL_18:
        LOBYTE(v10) = 1;
        return v10;
      }

      v22 = [v12 minIdleWiFiTxPktLossRateTh0];
    }

    if (v22 < v14)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  return v10;
}

- (void)evaluateActiveCallQuality
{
  [(NSDate *)self->mAudioEvaluationTimer timeIntervalSinceNow];
  v4 = v3;
  v5 = self->mTimeSinceAudioEvaluationStarted - v3;
  if (v5 <= 30.0)
  {
    [WCM_Logging logLevel:24 message:@"evaluateActiveCallQuality: not evaluating audio quality, call too short duration:%lf", *&v5];
    self->mTimeSinceAudioEvaluationStarted = v4;
    return;
  }

  [WCM_Logging logLevel:24 message:@"evaluateActiveCallQuality: evaluating audio quality, call duration:%lf", *&v5];
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
    v11 = [(WRM_HandoverManager *)self getWiFiCallingController];
    v12 = [v11 averagedNominalJitterBufferDelay];
    [v11 movAvgRxPktLoss];
    v14 = v13;
    [WCM_Logging logLevel:24 message:@"evaluateActiveCallQuality: Avg RSSI: %lld, CumTX PER: %lld, AVG Nominal Jitter Buffer:%lld, RTP pkt loss:%lld ", v10, v9, v12, v13];
    [WCM_Logging logLevel:24 message:@"Handover Manager: Checking active call Quality evaluation criteria"];
    v16 = v12 <= 1000 && v14 <= 20 && v9 <= 20;
    if (v16 || v10 < -65)
    {
      [WCM_Logging logLevel:24 message:@"Handover Manager: Audio Quality was good"];
    }

    else
    {
      v17 = [-[WRM_HandoverManager getCTService](self "getCTService")];
      [WCM_Logging logLevel:24 message:@"Handover Manager: Audio Quality was bad, WiFiMetrics: TX PER THREASHOLD: %lld, RTP Loss THREASHOLD: %lld, Nominal jitter buffer delay THREASHOLD: %lld, AVG Call RSSI THREASHOLD: %lld", 20, 20, 1000, 4294967231];
      byte_1002B7BC8 = 1;
      if (!v17 || ![(WRM_HandoverManager *)self isActiveHandoverSupported])
      {
        [(WRM_HandoverManager *)self setPingPongTimerMultipler:90];
      }
    }

    [(WRM_HandoverManager *)self evaluateHandover];
    goto LABEL_20;
  }

  [WCM_Logging logLevel:24 message:@"evaluateActiveCallQuality: ptrWiFiService==NULL"];
LABEL_20:
  byte_1002B7BC8 = 0;

  [WCM_Logging logLevel:24 message:@"evaluateActiveCallQuality: exit"];
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
    v12 = [(WCM_WiFiService *)v4 getPointOfInterest]- 1 < 2;
    v13 = (v10 > 5) & v11 | v8 & (v7 >= 0.3);
  }

  else
  {
    v12 = 0;
    v5 = 0;
    v13 = 0;
  }

  v14 = [(WRM_HandoverManager *)self getCTService];
  v15 = [v14 isVoLTESupported];
  if ([(WRM_iRATConfig *)self->miRATConfig ctServiceType]!= 2 && (!v15 || ![(WRM_HandoverManager *)self isActiveHandoverSupported]))
  {
    v21 = @"isWiFiVoIPQualityGoodEnough:VoLTE not enabled or handover not supported on device";
    goto LABEL_13;
  }

  v16 = [(WRM_HandoverManager *)self getWiFiCallingController];
  if (!v16)
  {
    [WCM_Logging logLevel:24 message:@"isWiFiVoIPQualityGoodEnough: tmpPtrWiFiCallingController == NULL"];
    [0 resetRTPMetrics];
    [0 resetCumulativeRTPMetrics];
    v22 = 0;
LABEL_18:
    [v22 resetPeriodicRTPStats];
    return 1;
  }

  v17 = v16;
  if ((byte_1002B7CC9 & 1) == 0)
  {
    v23 = @"isWiFiVoIPQualityGoodEnough: Call not on WiFI";
LABEL_17:
    [WCM_Logging logLevel:24 message:v23];
    [v17 resetRTPMetrics];
    [v17 resetCumulativeRTPMetrics];
    v22 = v17;
    goto LABEL_18;
  }

  v18 = [v14 getCallState];
  v19 = [v14 isCallOnHold];
  v20 = [v14 isCallInConference];
  if (v18 != 1)
  {
    v23 = @"isWiFiVoIPQualityGoodEnough: do not use RTP metrics, call not active";
    goto LABEL_17;
  }

  if ((v19 | v20))
  {
    v21 = @"isWiFiVoIPQualityGoodEnough: do not use RTP metrics, call on hold or in conference";
LABEL_13:
    [WCM_Logging logLevel:24 message:v21];
    return 1;
  }

  [(NSDate *)self->mLatteContextStartedTimer timeIntervalSinceNow];
  if (self->mTimeSinceLatteContextStarted - v25 < 3.0)
  {
    v21 = @"isWiFiVoIPQualityGoodEnough: ignoring inital RTP metrics to avoid false alarm";
    goto LABEL_13;
  }

  if ((_os_feature_enabled_impl() & v12) == 1 && v5 >= -69)
  {
    v21 = @"isWiFiVoIPQualityGoodEnough: device in commonly used wifi and in good RSSI";
    goto LABEL_13;
  }

  v26 = [(WRM_HandoverManager *)self getiRATConfigController];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"Rx Pkt loss: %lld, nominal buffer delay %lld", [v17 rxPktLoss], objc_msgSend(v17, "nominalJitterBufferDelay"));
  v27 = [v17 rxPktLoss];
  if (v27 < [v26 handoverRxPktLossThreshold] || !((v5 < -70) | v13 & 1))
  {
    [WCM_Logging logLevel:24 message:@"isWiFiVoIPQualityGoodEnough: true"];
    byte_1002B7BCA = 0;
    return 1;
  }

  [WCM_Logging logLevel:24 message:@"isWiFiVoIPQualityGoodEnough: false"];
  byte_1002B7BCA = 1;
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"WiFiMetrics: triggering handover due to RTP Erasure: %lld, RTP Erasure THREASHOLD: %lld ", [v17 rxPktLoss], objc_msgSend(v26, "handoverRxPktLossThreshold"));
  [(WRM_HandoverManager *)self updateHandoverReasonCode:256];
  return 0;
}

- (BOOL)isMovingAverageAudioQualityOfCurrentCallGood:(int)a3
{
  v5 = [(WCM_WiFiController *)self->mWiFi wifiService];
  v6 = [(WCM_WiFiService *)v5 getRSSI];
  if ([(WRM_HandoverManager *)self getIWLANServiceType]== 1)
  {
    return 1;
  }

  v7 = [(WRM_HandoverManager *)self getWiFiCallingController];
  if (byte_1002B7CC9)
  {
    v8 = [(WRM_HandoverManager *)self getCTService];
    v9 = [v8 getCallState];
    v10 = [v8 isCallOnHold];
    v11 = [v8 isCallInConference];
    if (v9 == 1)
    {
      v12 = v11;
      if (-[WRM_iRATConfig ctServiceType](self->miRATConfig, "ctServiceType") != 2 && (![v8 isVoLTESupported] || !-[WRM_HandoverManager isActiveHandoverSupported](self, "isActiveHandoverSupported")))
      {
        v13 = @"isWiFiVoIPQualityGoodEnough:VoLTE not enabled or handover not supported on device";
        goto LABEL_24;
      }

      if ((v10 | v12))
      {
        v13 = @"isWiFiVoIPQualityGoodEnough: do not use RTP metrics, call on hold or in conference";
LABEL_24:
        [WCM_Logging logLevel:24 message:v13];
        return 1;
      }

      v15 = [(WRM_HandoverManager *)self getiRATConfigController];
      if (!a3)
      {
        v13 = @"isMovingAverageAudioQualityOfCurrentCallGood: returned";
        goto LABEL_24;
      }

      v16 = v15;
      mWiFi = self->mWiFi;
      if (mWiFi)
      {
        v18 = [(WCM_WiFiController *)mWiFi wifiService];
        if (!v18)
        {
          [WCM_Logging logLevel:24 message:@"evaluateActiveCallQuality: ptrWiFiService==NULL"];
          goto LABEL_38;
        }

        v5 = v18;
      }

      [(WCM_WiFiService *)v5 getMovingAverageTxPer];
      v20 = (v19 * 100.0);
      v21 = [(WCM_WiFiService *)v5 isMovingAverageTxPerValid];
      v22 = [v7 movAvgNominalJitterBufferDelay];
      [v7 movAvgRxPktLoss];
      v24 = v23;
      [v7 movAvgIdleRxPktLoss];
      v26 = v25;
      if (v25 >= 0x64)
      {
        [WCM_Logging logLevel:24 message:@"evaluateActiveCallQuality: discard invalid metrics"];
        v26 = 0;
      }

      [WCM_Logging logLevel:24 message:@"isMovingAverageAudioQualityOfCurrentCallGood: TX PER (Mov Avg): %lld, Moving Avg RTP packet loss: %lld, Moving Avg Valid: %d, Mov Jitter Buffer Delay: %lld, Total Mov AVG RTP packet loss: %lld ", v20, v24, v21, v22, v26];
      if ([v16 handoverAvgRxPktLossThreshold] >= v24 && v26 <= objc_msgSend(v16, "handoverAvgIdleRxPktLossThreshold"))
      {
        v32 = 1;
      }

      else
      {
        v27 = -[WRM_HandoverManager isCellularViableForWiFiBlackList](self, "isCellularViableForWiFiBlackList") || v26 > [v16 handoverAvgIdleRxPktLossThreshold];
        byte_1002B7BC9 = v27;
        v30 = [v16 minActiveWiFiAvgTxPktLossRateTh];
        v31 = [v16 handoverAvgRxPktLossThreshold];
        [WCM_Logging logLevel:24 message:@"Handover Manager: Moving average audio quality was bad, WiFiMetics: TX PER THREASHOLD: %lld, RX RTP THREASHOLD: %lld, VoIP status:%d", v30, v31, byte_1002B7BC9];
        v32 = 0;
      }

      v33 = [v16 minActiveWiFiAvgTxPktLossRateTh];
      v34 = !v21;
      if (v33 >= v20)
      {
        v34 = 1;
      }

      if ((v34 & 1) == 0)
      {
        if ([(WRM_HandoverManager *)self isCellularViableForWiFiBlackList]&& v6 > -70)
        {
          v35 = 1;
          byte_1002B7BC9 = 1;
        }

        else
        {
          v35 = byte_1002B7BC9;
        }

        [WCM_Logging logLevel:24 message:@"isMovingAverageAudioQualityOfCurrentCallGood: Call Quality Bad: %d", v35];
        goto LABEL_41;
      }

      [WCM_Logging logLevel:24 message:@"isMovingAverageAudioQualityOfCurrentCallGood: Call Quality Bad: %d", byte_1002B7BC9];
      if ((v32 & 1) == 0)
      {
LABEL_41:
        [(WRM_HandoverManager *)self updateHandoverReasonCode:256];
        [(WRM_HandoverManager *)self updateHandoverReasonCode:16];
        v28 = 0;
        goto LABEL_42;
      }

LABEL_38:
      v28 = 1;
LABEL_42:
      [WCM_Logging logLevel:24 message:@"isMovingAverageAudioQualityOfCurrentCallGood: exit"];
      return v28;
    }

    v14 = @"isMovingAverageAudioQualityOfCurrentCallGood: discard WIFI RTP metrics, call not active";
  }

  else
  {
    v14 = @"isMovingAverageAudioQualityOfCurrentCallGood: Call not on WiFI";
  }

  [WCM_Logging logLevel:24 message:v14];
  [v7 resetRTPMetrics];
  [v7 resetCumulativeRTPMetrics];
  [v7 resetPeriodicRTPStats];
  return 1;
}

- (BOOL)isIMSTransportQualityGood
{
  mSymtomsService = self->mSymtomsService;
  if (!mSymtomsService)
  {
    goto LABEL_6;
  }

  v4 = [(WRM_SymptomsService *)mSymtomsService isWiFiNotUsableForIMSCall];
  v5 = v4;
  v6 = [(WRM_SymptomsService *)self->mSymtomsService isIMSTransportQualityGood];
  [WCM_Logging logLevel:24 message:@"Handover Manager: isIMSTransportQualityGood: %d, WiFi Not Usable:%d", v6, v5];
  if (!v4)
  {
    if (!v6)
    {
      if ([(WRM_SymptomsService *)self->mSymtomsService dpdFailureDetected])
      {
        [(WRM_HandoverManager *)self updateHandoverReasonCode:1];
      }

      if (![(WRM_SymptomsService *)self->mSymtomsService sipTimeOutDetected])
      {
        LOBYTE(v5) = 0;
        return v5;
      }

      v7 = 64;
      goto LABEL_4;
    }

LABEL_6:
    LOBYTE(v5) = 1;
    return v5;
  }

  v7 = 128;
LABEL_4:
  [(WRM_HandoverManager *)self updateHandoverReasonCode:v7];
  return v5;
}

- (BOOL)isUplinkAudioQualityOfCurrentCallGood:(int)a3
{
  if ([(WRM_HandoverManager *)self getIWLANServiceType]!= 1)
  {
    v5 = [(WRM_HandoverManager *)self getCTService];
    if ([v5 getCallState] == 1)
    {
      if (-[WRM_iRATConfig ctServiceType](self->miRATConfig, "ctServiceType") == 2 || [v5 isVoLTESupported] && -[WRM_HandoverManager isActiveHandoverSupported](self, "isActiveHandoverSupported"))
      {
        if (a3)
        {
          v6 = [(WCM_WiFiController *)self->mWiFi wifiService];
          [(WCM_WiFiService *)v6 getTxPer];
          v8 = v7 * 100.0;
          [(WCM_WiFiService *)v6 getTxRetryPercent];
          v10 = v9;
          v11 = [(WCM_WiFiService *)v6 isTxPerValid];
          v12 = [(WCM_WiFiService *)v6 isRetryValid];
          v13 = [(WCM_WiFiService *)v6 getCCA];
          v14 = [(WCM_WiFiService *)v6 getChannelUtlization];
          v15 = [(WCM_WiFiService *)v6 isQBSSLoadValid];
          v16 = [(WCM_WiFiService *)v6 getRSSI];
          if (v8 < 2.0 || v11 == 0)
          {
            v18 = 1;
          }

          else
          {
            v20 = v14;
            if (!v15)
            {
              v20 = v13;
            }

            v21 = v12 ^ 1;
            v18 = 1;
            v19 = @"isUplinkAudioQualityOfCurrentCallGood: exit";
            if (v10 * 100.0 < 60.0)
            {
              v21 = 1;
            }

            if ((v21 & 1) != 0 || v20 < 40)
            {
              goto LABEL_31;
            }

            v22 = v16;
            [WCM_Logging logLevel:24 message:@"Handover Manager: Uplink Audio Quality was bad, WiFiMetrics: TX PER THREASHOLD: %lld, TX Retry THREASHOLD: %lld, Load THREASHOLD: %lld", v10 * 100.0, 2, 60, 40];
            if (![-[WRM_HandoverManager getMotionController](self "getMotionController")] || v22 >= -70)
            {
              if ([(WRM_HandoverManager *)self isCellularViableForWiFiBlackList])
              {
                byte_1002B7BC9 = 1;
                [WCM_Logging logLevel:24 message:@"Handover Manager: Blocklist WiFi till call ends due to bad uplink audio"];
              }

              else
              {
                byte_1002B7BC9 = 0;
              }
            }

            [(WRM_HandoverManager *)self updateHandoverReasonCode:16];
            [(WRM_HandoverManager *)self updateHandoverReasonCode:32];
            if (byte_1002B7BC9 == 1)
            {
              [(WRM_HandoverManager *)self updateHandoverReasonCode:256];
            }

            v18 = 0;
          }

          v19 = @"isUplinkAudioQualityOfCurrentCallGood: exit";
        }

        else
        {
          v18 = 1;
          v19 = @"isUplinkAudioQualityOfCurrentCallGood: returned";
        }
      }

      else
      {
        v18 = 1;
        v19 = @"isUplinkAudioQualityOfCurrentCallGood:VoLTE not enabled or handover not supported on device";
      }

LABEL_31:
      [WCM_Logging logLevel:24 message:v19];
      return v18;
    }
  }

  return 1;
}

- (void)handleInternalMessage:(id)a3
{
  uint64 = xpc_dictionary_get_uint64(a3, "kInternalMessageId");
  value = xpc_dictionary_get_value(a3, "kInternalMessageArgs");
  if (uint64 == 1003)
  {
    [WCM_Logging logLevel:29 message:@"handleInternalMessage:handleWiFiLinkQualityUpdate"];
    [(WRM_HandoverManager *)self monitorTransportMetrics];

    [(WRM_HandoverManager *)self handleWiFiLinkQualityUpdate:value];
  }

  else if (uint64 == 1001)
  {

    [(WRM_HandoverManager *)self handleMotionUpdate:value];
  }
}

- (void)handleMotionUpdate:(id)a3
{
  int64 = xpc_dictionary_get_int64(a3, "kWRMM_MOTION_STATE");
  [(WRM_HandoverManager *)self evaluateHandover];
  [WCM_Logging logLevel:24 message:@"handleMotionUpdate received: %s: motion state: %d", "[WRM_HandoverManager(privateFunctions) handleMotionUpdate:]", int64];
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = [a1 WRM_HandoverManagerSingleton];

  return v3;
}

- (void)addiRatClient:(id)a3
{
  miRATClientContexts = self->miRATClientContexts;
  objc_sync_enter(miRATClientContexts);
  [(NSMutableArray *)self->miRATClientContexts addObject:a3];
  [(WRM_HandoverManager *)self existingContexts];

  objc_sync_exit(miRATClientContexts);
}

- (void)removeiRatClient:(id)a3
{
  miRATClientContexts = self->miRATClientContexts;
  objc_sync_enter(miRATClientContexts);
  [(WRM_HandoverManager *)self existingContexts];
  [(NSMutableArray *)self->miRATClientContexts removeObject:a3];
  [(WRM_HandoverManager *)self existingContexts];

  objc_sync_exit(miRATClientContexts);
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

- (WRM_HandoverManager)init
{
  v9.receiver = self;
  v9.super_class = WRM_HandoverManager;
  v2 = [(WRM_HandoverManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.WirelessRadioManager.Handover", 0);
    v2->mWiFi = 0;
    v2->mQueue = v3;
    v2->mCTService = 0;
    v4 = +[WRM_IDSP2PController wrm_IDSP2PControllerSingleton];
    v2->mSCService = 0;
    v2->mIDSP2PController = v4;
    v2->mIPTelephonyController = 0;
    v2->mWiFiCalling = 0;
    v2->mSymtomsService = 0;
    byte_1002B7CD0 = 0;
    byte_1002B7CA9 = 1;
    byte_1002B7CC9 = 0;
    byte_1002B7CCA = 0;
    v2->miRATConfig = 0;
    v2->mMotionController = 0;
    v2->miRATClientContexts = objc_alloc_init(NSMutableArray);
    v2->miRATConfig = objc_opt_new();
    v2->mMotionController = +[WRM_MotionController singleton];
    v5 = +[WRM_MetricsService getSingleton];
    v2->mMetrics = v5;
    if (v5)
    {
      [(WRM_MetricsService *)v5 initiRATMetrics];
      [(WRM_MetricsService *)v2->mMetrics initWiFiCallingMetrics];
      [(WRM_MetricsService *)v2->mMetrics initStandaloneLinkPrefMetrics];
      [(WRM_MetricsService *)v2->mMetrics init5GVersusWiFiLinkPrefMetrics];
    }

    [(WRM_HandoverManager *)v2 updateActiveHandoverStatus];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"Handover Manager: Bundle ID %@", [+[NSBundle bundleIdentifier] mainBundle];
    [WCM_Logging logLevel:24 message:@"Handover Manager: Handover manager initialized"];
    v2->wrmWifiCallingEnd = ([(WRM_MetricsService *)v2->mMetrics getWiFiCallingMetrics]+ 8);
    v6 = [(WRM_MetricsService *)v2->mMetrics getStandaloneLinkPreferenceMetrics];
    v2->mDataLinkPrefMetrics = v6;
    v6->metricsUpdate = 0;
    v2->mStartTime = [+[NSDate date](NSDate copy];
    v2->prevTimeSinceStart = 0.0;
    v2->mAudioEvaluationTimer = [+[NSDate date](NSDate copy];
    v2->mTimeSinceAudioEvaluationStarted = 0.0;
    v2->mLatteContextStartedTimer = [+[NSDate date](NSDate copy];
    v2->mTimeSinceLatteContextStarted = 0.0;
    *v2->mSaAllowedOnWiFi = 0;
    if (NSClassFromString(@"CXCallObserver"))
    {
      v7 = objc_alloc_init(CXCallObserver);
      v2->mCallObserver = v7;
      [(CXCallObserver *)v7 setDelegate:v2 queue:&_dispatch_main_q];
    }

    else
    {
      v2->mCallObserver = 0;
    }

    byte_1002B7C01 = 0;
    byte_1002B7C02 = 0;
    [(WRM_HandoverManager *)v2 initWiFiCellDataEval];
    *&v2->mQMINasClientPrimary = 0u;
    *&v2->mQMIDsdClientPrimary = 0u;
    if ([(WRM_iRATConfig *)v2->miRATConfig qmiClientEnabled])
    {
      [(WRM_HandoverManager *)v2 createQMIClient];
    }

    [(WRM_HandoverManager *)v2 createIBIClient];
    v2->mAnyCallState = objc_alloc_init(NSMutableDictionary);
    [(WRM_HandoverManager *)v2 initCallNotifications];
    qword_1002B7CC0 = objc_alloc_init(WRM_ABTestManager);
  }

  return v2;
}

- (void)dealloc
{
  p_mQueue = &self->mQueue;
  mQueue = self->mQueue;
  if (mQueue)
  {
    dispatch_release(mQueue);
  }

  mCTService = self->mCTService;
  if (mCTService)
  {
  }

  mIDSP2PController = self->mIDSP2PController;
  if (mIDSP2PController)
  {
  }

  mSCService = self->mSCService;
  if (mSCService)
  {
  }

  mWiFi = self->mWiFi;
  if (mWiFi)
  {
  }

  mWiFiCalling = self->mWiFiCalling;
  if (mWiFiCalling)
  {
  }

  mSymtomsService = self->mSymtomsService;
  if (mSymtomsService)
  {
  }

  miRATConfig = self->miRATConfig;
  if (miRATConfig)
  {
  }

  mCallObserver = self->mCallObserver;
  if (mCallObserver)
  {
    [(CXCallObserver *)mCallObserver setDelegate:0 queue:0];

    self->mCallObserver = 0;
  }

  mAnyCallState = self->mAnyCallState;
  if (mAnyCallState)
  {

    self->mAnyCallState = 0;
  }

  mQMINasClientPrimary = self->mQMINasClientPrimary;
  if (mQMINasClientPrimary)
  {

    self->mQMINasClientPrimary = 0;
  }

  mQMINasClientSecondary = self->mQMINasClientSecondary;
  if (mQMINasClientSecondary)
  {

    self->mQMINasClientSecondary = 0;
  }

  mQMIDsdClientPrimary = self->mQMIDsdClientPrimary;
  if (mQMIDsdClientPrimary)
  {

    self->mQMIDsdClientPrimary = 0;
  }

  mIBIClient = self->mIBIClient;
  if (mIBIClient)
  {

    self->mIBIClient = 0;
  }

  if (qword_1002B7CC0)
  {

    qword_1002B7CC0 = 0;
  }

  self->mIPTelephonyController = 0;
  *p_mQueue = 0u;
  *(p_mQueue + 1) = 0u;
  *(p_mQueue + 2) = 0u;
  p_mQueue[6] = 0;
  [WCM_Logging logLevel:24 message:@"Handover Manager: Dealloc called for handover manager "];
  miRATClientContexts = self->miRATClientContexts;
  if (miRATClientContexts)
  {
  }

  mStartTime = self->mStartTime;
  if (mStartTime)
  {

    self->mStartTime = 0;
    self->prevTimeSinceStart = 0.0;
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

  v22.receiver = self;
  v22.super_class = WRM_HandoverManager;
  [(WRM_HandoverManager *)&v22 dealloc];
}

- (BOOL)isDeviceConnectedOverNonLTERadio
{
  if ([(WRM_HandoverManager *)self isEnhancedCTServiceNeeded])
  {
    mCTService = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  }

  else
  {
    mCTService = self->mCTService;
  }

  return [(WRM_CTService *)mCTService checkIfServingCellNonLTE];
}

- (void)rxVoIPAppNotification:(BOOL)a3 callType:(int)a4
{
  if ((byte_1002B7C01 & 1) == 0)
  {
    if (a3)
    {
      v4 = 1;
      v5 = 1;
    }

    else
    {
      if (byte_1002B7C02 != 1)
      {
        return;
      }

      v5 = 0;
      v4 = 2;
    }

    [(WRM_HandoverManager *)self notifyBBVoIPState:2];
    byte_1002B7C02 = v5;
  }
}

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  if ([a4 hasConnected])
  {
    v6 = [a4 hasEnded];
    byte_1002B7C01 = v6 ^ 1;
    v7 = 1;
    if (((v6 ^ 1) & 1) == 0)
    {
      [(WRM_HandoverManager *)self toggleSAState:[(WRM_SCService *)self->mSCService isWiFiPrimary]];
      if (byte_1002B7C01)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }
    }

    v8 = [@"com.apple.coretelephony" isEqualToString:{objc_msgSend(a4, "providerIdentifier")}];
    v9 = 1;
    if (([@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider" isEqualToString:{objc_msgSend(a4, "providerIdentifier")}] & 1) == 0)
    {
      if ([@"com.apple.coretelephony" isEqualToString:{objc_msgSend(a4, "providerIdentifier")}])
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }

    v10 = [a4 isVideo];
    v11 = [a4 providerIdentifier];
    if (v10)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    if (v10)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    [(WRM_HandoverManager *)self notifyBBVoIPState:v9];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"Call Active: %d, provider id: %@, VoIP app type: %d, VoIP CallType: %d, isTelephonyCall: %d", byte_1002B7C01, [a4 providerIdentifier], v9, v13, v8);
    v14 = +[WCM_PolicyManager singleton];
    v15 = byte_1002B7C01;

    [v14 updateCallStateActive:v15];
  }
}

- (void)updateAnyCallState:(int)a3 providerIdentifier:(id)a4
{
  if (a4)
  {
    if ([a4 length])
    {
      mQueue = self->mQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000D1C34;
      block[3] = &unk_10023E218;
      v9 = a3;
      block[4] = self;
      block[5] = a4;
      dispatch_async(mQueue, block);
    }
  }
}

- (void)updateControllerSession:(id)a3 ofId:(unint64_t)a4
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D1F24;
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
  v4[2] = sub_1000D2418;
  v4[3] = &unk_10023DC80;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(mQueue, v4);
}

- (void)handleSessionNotification:(id)a3
{
  uint64 = xpc_dictionary_get_uint64(a3, "kMessageId");
  if (uint64 <= 407)
  {
    if (uint64 > 201)
    {
      switch(uint64)
      {
        case 202:

          [(WRM_HandoverManager *)self handlePeriodicRTPMetrics:a3];
          break;
        case 400:
          [(WRM_HandoverManager *)self handleLinkPrefSubscribe:a3];
          [(WCM_WiFiController *)self->mWiFi toggleWiFiLQMIfNeeded:[(WRM_HandoverManager *)self needWiFiLQM]];
          [(WRM_HandoverManager *)self registerForCTNotifications];

          [(WRM_HandoverManager *)self registerForSCNotifications];
          break;
        case 401:

          [(WRM_HandoverManager *)self handleSubscribeStatusUpdate:a3];
          break;
      }
    }

    else if (uint64 == 100)
    {
      [(WRM_HandoverManager *)self monitorTransportMetrics];

      [(WRM_HandoverManager *)self handleWiFiConfig];
    }

    else if (uint64 == 103)
    {
      [(WRM_HandoverManager *)self monitorTransportMetrics];

      [(WRM_HandoverManager *)self handleWiFiStateChaneEvents:a3];
    }

    else if (uint64 == 109 && [(WRM_HandoverManager *)self isRecentDevice])
    {
      v6 = dispatch_time(0, 2000000000);
      mQueue = self->mQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000D2794;
      block[3] = &unk_10023DB28;
      block[4] = self;
      dispatch_after(v6, mQueue, block);
    }
  }

  else if (uint64 <= 419)
  {
    switch(uint64)
    {
      case 408:

        [(WRM_HandoverManager *)self handleCellularLinkQualityUpdate:a3];
        break;
      case 411:

        [(WRM_HandoverManager *)self handleBBAssertionBGAppActiveRequest:a3];
        break;
      case 416:

        [(WRM_HandoverManager *)self handleIWLANMetrics:a3];
        break;
    }
  }

  else if (uint64 > 700)
  {
    if (uint64 == 701)
    {

      [(WRM_HandoverManager *)self handleSIPMetricsRecevied:a3];
    }

    else if (uint64 == 1000)
    {
      value = xpc_dictionary_get_value(a3, "kMessageArgs");

      [(WRM_HandoverManager *)self handleInternalMessage:value];
    }
  }

  else if (uint64 == 420)
  {

    [(WRM_HandoverManager *)self handleSIPStalledMetricsRecevied:a3];
  }

  else if (uint64 == 700)
  {

    [(WRM_HandoverManager *)self handleIPTelephonyMetrics:a3];
  }
}

- (BOOL)checkIFFr2SupportNotAvailable
{
  v2 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  result = 1;
  v4 = v2 > 0x3E || ((1 << v2) & 0x4000000001800000) == 0;
  if (v4 && v2 != 176 && v2 != 178)
  {
    return 0;
  }

  return result;
}

- (BOOL)isSisSupportedOnICE
{
  v2 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  result = 1;
  v4 = v2 > 0x3E || ((1 << v2) & 0x4000000001800000) == 0;
  if (v4 && v2 != 176 && v2 != 178)
  {
    return 0;
  }

  return result;
}

- (BOOL)isEnhancedSisSupportedOnMAV
{
  v2 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v3 = vand_s8(vdup_n_s32(v2), 0xFFFFFFFEFFFFFFFDLL);
  v4 = vdup_lane_s32(v3, 1).u32[0];
  v5.i64[0] = __PAIR64__(v2, v4);
  v5.i32[2] = v4;
  v5.i32[3] = vdupq_lane_s32(v3, 0).i32[3];
  v6 = vceq_s32(v3, 0x3A000000A8);
  return vmaxv_u8(vmovn_s16(vuzp1q_s16(vceqq_s32(vdupq_lane_s64(__SPAIR64__(v2, v4), 0), xmmword_100199230), vceqq_s32(v5, xmmword_100199270)))) & 1 | (v2 == 60) | v6.i8[4] & 1 | (v2 == 180) | v6.i8[0] & 1 | (v2 == 61) | (v2 - 19 < 4);
}

- (BOOL)disableICEClient
{
  v2 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  result = 0;
  v4 = v2 > 0x3E || ((1 << v2) & 0x4000000001800095) == 0;
  if (v4 && v2 != 176 && v2 != 178)
  {
    return 1;
  }

  return result;
}

- (void)updateActiveHandoverStatus
{
  v3 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v4 = 1;
  if (v3 > 0x3E || ((1 << v3) & 0x5FFC000001FDFDFFLL) == 0)
  {
    byte_1002B7CC8 = 0;
    v6 = 1;
    [(WRM_HandoverManager *)self setIWLANServiceType:1];
    v4 = byte_1002B7CC8;
  }

  else
  {
    [(WRM_HandoverManager *)self setIWLANServiceType:0];
    v6 = 0;
    byte_1002B7CC8 = 1;
  }

  [WCM_Logging logLevel:24 message:@"Handover support status: %d, Device Service Type: %d", v4, v6];
}

- (void)handleControllerAvailability:(unint64_t)a3
{
  if (![(WRM_HandoverManager *)self enableiRATManager])
  {
    return;
  }

  if (a3 > 8)
  {
    switch(a3)
    {
      case 9uLL:

        [(WRM_HandoverManager *)self configureRTPMetricsReporting];
        break;
      case 0xFuLL:

        [(WRM_HandoverManager *)self handleCallKitConfig];
        break;
      case 0x15uLL:
LABEL_9:
        [(WRM_HandoverManager *)self handleCTConfig];
LABEL_10:
        if (a3 == 8)
        {

          [(WRM_HandoverManager *)self handleNetworkdConfig];
        }

        return;
      default:
        return;
    }
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 != 7)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    [(WRM_HandoverManager *)self handleWiFiConfig];
  }
}

- (void)handleWiFiConfig
{
  [WCM_Logging logLevel:24 message:@"WiFi config changed."];
  if (!self->mWiFi)
  {
    [WCM_Logging logLevel:18 message:@"WiFi did not register, can't get state"];

    [(WRM_HandoverManager *)self evaluateHandover];
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
    LOBYTE(v6) = v7 >= [-[WRM_HandoverManager getiRATConfigController](self "getiRATConfigController")];
  }

  return v6;
}

- (void)setCarPlaySession:(BOOL)a3
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2D2C;
  block[3] = &unk_10023DCA0;
  v5 = a3;
  dispatch_async(mQueue, block);
}

- (void)toggleSAState:(BOOL)a3
{
  mQueue = self->mQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000D2DE8;
  v4[3] = &unk_10023E008;
  v5 = a3;
  v4[4] = self;
  dispatch_async(mQueue, v4);
}

- (void)triggerEnableSA:(BOOL)a3
{
  mQueue = self->mQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000D3124;
  v4[3] = &unk_10023E008;
  v4[4] = self;
  v5 = a3;
  dispatch_async(mQueue, v4);
}

- (void)switchPrivateNwDataSim:(int64_t)a3 currentSlotQuality:(int)a4 anyCallState:(int)a5
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D37DC;
  block[3] = &unk_10023DDD8;
  block[4] = self;
  block[5] = a3;
  v7 = a4;
  v8 = a5;
  dispatch_async(mQueue, block);
}

- (void)submitMetricsCBRSWithDataSimRecommendation:(BOOL)a3 forSimSlot:(int64_t)a4
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D3ACC;
  block[3] = &unk_10023DF40;
  block[4] = self;
  block[5] = a4;
  v6 = a3;
  dispatch_async(mQueue, block);
}

- (BOOL)isRLHandoverPolicyEnabledOnSlot:(int64_t)a3
{
  v5 = _os_feature_enabled_impl();
  result = 0;
  if ((a3 - 1) <= 1 && v5)
  {
    return self->mSaAllowedOnWiFi[a3 + 1] || MGGetBoolAnswer() && qword_1002B7CC0 && ([qword_1002B7CC0 getRLHandoverPolicyEnabled] & 1) != 0;
  }

  return result;
}

- (void)showHOAlertUI:(BOOL)a3
{
  v4 = objc_alloc_init(NSMutableString);
  v5 = v4;
  if (qword_1002B7BF0)
  {
    [WCM_Logging logLevel:24 message:@"%s %d: Notification is already pending!", "[WRM_HandoverManager showHOAlertUI:]", 2518];
  }

  else
  {
    [v4 appendString:@"iRAT Handover Alert\n"];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [-[WRM_MetricsService getiRATMetricHORecordCache](self->mMetrics "getiRATMetricHORecordCache")];
    v25 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v25)
    {
      v7 = 0;
      v24 = *v28;
      do
      {
        v8 = 0;
        v9 = v7;
        do
        {
          v10 = v5;
          if (*v28 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v27 + 1) + 8 * v8);
          -[WRM_MetricsService getReasonStr::](self->mMetrics, "getReasonStr::", [v11 mReason], v31);
          v12 = [v11 getDate];
          v13 = objc_alloc_init(NSDateFormatter);
          [v13 setDateFormat:@"MM/dd HH:mm:ss"];
          v14 = [v13 stringFromDate:v12];
          v7 = (v9 + 1);
          v15 = self;
          if ([v11 mApp] == 1)
          {
            v16 = "vo";
          }

          else
          {
            v16 = "dat";
          }

          v17 = [v11 mType];
          v18 = "->C";
          if (v17 == 200)
          {
            v18 = "->W";
          }

          v22 = v16;
          self = v15;
          v5 = v10;
          [v10 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d: %s %s %@ (%s)\n", v9, v22, v18, v14, v31)}];

          v8 = v8 + 1;
          v9 = (v9 + 1);
        }

        while (v25 != v8);
        v25 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v25);
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    qword_1002B7BE8 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, v5);
      CFDictionarySetValue(qword_1002B7BE8, kCFUserNotificationDefaultButtonTitleKey, @"OK");
      CFDictionarySetValue(qword_1002B7BE8, kCFUserNotificationAlternateButtonTitleKey, @"Radar");
      error = 0;
      v20 = CFUserNotificationCreate(kCFAllocatorDefault, 60.0, 0, &error, qword_1002B7BE8);
      qword_1002B7BF0 = v20;
      if (!error)
      {
        if (v20)
        {
          qword_1002B7BF8 = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v20, sub_1000D3F90, 0);
          if (qword_1002B7BF8)
          {
            Main = CFRunLoopGetMain();
            CFRunLoopAddSource(Main, qword_1002B7BF8, kCFRunLoopDefaultMode);
            [WCM_Logging logLevel:24 message:@"%s %d: Notification created", "[WRM_HandoverManager showHOAlertUI:]", 2579];
          }
        }
      }
    }
  }

  if (qword_1002B7BF8)
  {
    v6 = 1;
  }

  else
  {
    v6 = qword_1002B7BF0 == 0;
  }

  if (!v6)
  {
    CFRelease(qword_1002B7BF0);
    qword_1002B7BF0 = 0;
  }

  if (qword_1002B7BE8)
  {
    CFRelease(qword_1002B7BE8);
    qword_1002B7BE8 = 0;
  }
}

- (void)handleWiFiLinkQualityUpdate:(id)a3
{
  [WCM_Logging logLevel:24 message:@"Handover Manager received WiFi link metrics"];
  byte_1002B7CA9 = 0;
  [(WRM_HandoverManager *)self updateCellularMetricsMovAverage];
  if ([(WRM_HandoverManager *)self isRecentDevice])
  {
    [(WRM_HandoverManager *)self evaluateWiFiVersusCell];
  }

  if ([(WRM_HandoverManager *)self handoverEvaluationRequired])
  {
    [WCM_Logging logLevel:24 message:@"Evaluating WiFi versus Cellular link preference."];

    [(WRM_HandoverManager *)self evaluateHandover];
  }

  else
  {

    [WCM_Logging logLevel:24 message:@"No need of Handover Evaluation: Evaluation Criteria not met."];
  }
}

- (void)handleWiFiStateChaneEvents:(id)a3
{
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  byte_1002B7CA9 = 0;
  if ([(WRM_HandoverManager *)self isRecentDevice])
  {
    [(WRM_HandoverManager *)self evaluateWiFiVersusCell];
  }

  mSymtomsService = self->mSymtomsService;
  if (mSymtomsService)
  {
    [(WRM_SymptomsService *)mSymtomsService resetIMSMetrics];
    [(WRM_SymptomsService *)self->mSymtomsService resetMetricsWiFiStateChange];
  }

  [WCM_Logging logLevel:24 message:@"Handover Manager received WiFi link state change event"];
  if (value)
  {
    int64 = xpc_dictionary_get_int64(value, "kWRM_WiFi_LINK_STATUS");
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    miRATClientContexts = self->miRATClientContexts;
    v8 = [(NSMutableArray *)miRATClientContexts countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(miRATClientContexts);
          }

          -[WRM_HandoverManager setPingPongTimerMultipler:::](self, "setPingPongTimerMultipler:::", 1, [*(*(&v23 + 1) + 8 * i) getMyClientType], 1);
        }

        v9 = [(NSMutableArray *)miRATClientContexts countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    byte_1002B7BC9 = 0;
    if (int64)
    {
      v12 = dispatch_time(0, 2000000000);
      mQueue = self->mQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000D443C;
      block[3] = &unk_10023DB28;
      block[4] = self;
      dispatch_after(v12, mQueue, block);
      [WCM_Logging logLevel:24 message:@"Handover Manager:Link down event received"];
      byte_1002B7CD0 = 1;
      v14 = dispatch_time(0, 2000000000);
      v15 = self->mQueue;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000D4448;
      v21[3] = &unk_10023DB28;
      v21[4] = self;
      dispatch_after(v14, v15, v21);
    }

    else
    {
      v16 = [(WRM_HandoverManager *)self getCTService];
      if (v16)
      {
        v17 = v16;
        [v16 invalidateAudioQualityMetrics];
        [v17 initMovAverageOfSignalBar];
      }

      [(WRM_HandoverManager *)self toggleSAState:1];
      byte_1002B7CD0 = 0;
      v18 = xpc_dictionary_get_int64(value, "kWRMM_WiFi_RSSI");
      v19 = xpc_dictionary_get_int64(value, "kWRMM_WiFi_SNR");
      [WCM_Logging logLevel:24 message:@"Handover Manager:Linkup event received"];
      v20 = [(WCM_WiFiController *)self->mWiFi wifiService];
      [(WCM_WiFiService *)v20 setRSSI:v18];
      [(WCM_WiFiService *)v20 setSNR:v19];
      if ([(WRM_HandoverManager *)self isRecentDevice])
      {
        [(WRM_HandoverManager *)self triggerHarvestDataEval];
      }
    }

    [(WRM_HandoverManager *)self evaluateHandover];
  }

  else
  {

    [WCM_Logging logLevel:24 message:@"Handover Manager:Empty message received"];
  }
}

- (void)handleCellularLinkQualityUpdate:(id)a3
{
  [WCM_Logging logLevel:24 message:@"Handover Manager received Cellular link metrics"];
  if ([(WRM_HandoverManager *)self handoverEvaluationRequired])
  {

    [(WRM_HandoverManager *)self evaluateHandover];
  }
}

- (void)handleLinkPrefSubscribe:(id)a3
{
  [WCM_Logging logLevel:24 message:@"HandoverManager: handleIWLANRadioLinkPreferenceRequest."];
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  uint64 = xpc_dictionary_get_uint64(a3, "kClientType");
  v7 = [(WRM_HandoverManager *)self getiRATClientFromList:uint64];
  if (uint64 == 1)
  {
    v8 = "ClientCommCenter";
  }

  else if ((uint64 - 2) >= 0x14)
  {
    v8 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
    if (uint64 == 22)
    {
      v8 = "ClientCoreMediaStreaming";
    }
  }

  else
  {
    v8 = (&off_100241600)[(uint64 - 2)];
  }

  [WCM_Logging logLevel:24 message:@"Message received from client %d(%s) ", uint64, v8];
  v32 = xpc_dictionary_get_value(value, "kWRMApplicationTypeList");
  count = xpc_array_get_count(v32);
  [v7 removeAllMobilityContextsFromList];
  [WCM_Logging logLevel:24 message:@"Removing all contexts from iRAT client."];
  if (count)
  {
    v28 = a3;
    v29 = self;
    if (!self->mWiFi)
    {
      [WCM_Logging logLevel:18 message:@"WiFi did not register, can't get state"];
    }

    v10 = 0;
    v11 = 0;
    int64 = 0;
    v31 = uint64 - 1;
    v13 = &dword_1002B7BDC;
    if (uint64 == 1)
    {
      v13 = &dword_1002B7BD8;
    }

    v30 = v13;
    do
    {
      v14 = v7;
      v15 = xpc_array_get_value(v32, v10);
      v16 = xpc_dictionary_get_uint64(v15, "kWRMApplicationType");
      v17 = xpc_dictionary_get_uint64(v15, "kWRMDesiredLinkQoS");
      v18 = xpc_dictionary_get_uint64(v15, "kWRMDesiredBandwidth");
      if (xpc_dictionary_get_value(v15, "kWRMSubscribeSlotInfo"))
      {
        v19 = xpc_dictionary_get_uint64(v15, "kWRMSubscribeSlotInfo") + 1;
      }

      else
      {
        v19 = 1;
      }

      v20 = xpc_dictionary_get_value(v15, "kWRMPolicyInfo");
      if (v20)
      {
        v21 = v20;
        int64 = xpc_dictionary_get_int64(v20, "kWRMPolicyInfoHoAlgorithmType");
        v11 = xpc_dictionary_get_uint64(v21, "kWRMPolicyInfoServiceType");
        if (v31 <= 1)
        {
          *v30 = int64;
        }
      }

      [WCM_Logging logLevel:24 message:@"%s: Record#= %d Application Type=%llu, LinkQoS=%llu, Bandwidth=%llu, Service Status=%llu AlgorithmType=%d, ServiceType=%llu", "[WRM_HandoverManager handleLinkPrefSubscribe:]", v10, v16, v17, v18, 0, int64, v11];
      v22 = objc_alloc_init(WRM_Mobility_Context);
      [(WRM_Mobility_Context *)v22 setLinkQoS:v17];
      [(WRM_Mobility_Context *)v22 setBandwidth:v18];
      [(WRM_Mobility_Context *)v22 setMappedApplicationType:v16];
      [(WRM_Mobility_Context *)v22 activateMobilityContext:1];
      v7 = v14;
      [v14 addMobilityContextToList:v22];

      ++v10;
    }

    while (count != v10);
    [v14 setActiveSlot:v19];
    if (MGGetBoolAnswer() && qword_1002B7BD0)
    {
      [WCM_Logging logLevel:24 message:@"handleLinkPrefSubscribe: Use internal UI iRAT policy"];
      v23 = v29;
      int64 = [(WRM_HandoverManager *)v29 convertToHOAlgorithmType:qword_1002B7BD0];
    }

    else
    {
      v23 = v29;
      if (![(WRM_iRATConfig *)v29->miRATConfig handoverAlgorithmSettingDynamic])
      {
        int64 = [(WRM_iRATConfig *)v29->miRATConfig handoverAlgorithmType];
      }
    }

    [v14 setHandoverAlgorithmType:int64];
    [(WRM_HandoverManager *)v23 setIWLANServiceType:v11];
    if ([v14 isStatusUpdateMsgBuffered])
    {
      [WCM_Logging logLevel:24 message:@"Processing buffered status update message"];
      [(WRM_HandoverManager *)v23 handleSubscribeStatusUpdate:v28];
    }

    if ([v14 isCallActive])
    {
      v25 = [v14 getMobilityContextFromList:{objc_msgSend(v14, "getBufferedAppType")}];
      if (v25)
      {
        v26 = v25;
        if (byte_1002B7CC9 == 1)
        {
          [v25 setConnectedLinkType:1];
        }

        [v26 setCallState:1];
        [WCM_Logging logLevel:24 message:@"HandoverManager: Update call status becuase CT subscribed in the middle of call"];
      }
    }

    [v14 postiRATNotificationToEnableDisableCellData:1 :1];
    [v14 postiRATNotificationToEnableDisableCellData:0 :1];
    v27 = [v14 getMobilityContextFromList:1];

    [v27 setConnectedLinkType:0];
  }

  else if ([(WRM_iRATConfig *)self->miRATConfig mobilityStateAwarenessEnabled])
  {
    mMotionController = self->mMotionController;

    [(WRM_MotionController *)mMotionController stopAllAlarms];
  }
}

- (void)handleSubscribeStatusUpdate:(id)a3 :(BOOL)a4
{
  v4 = a4;
  [-[WRM_HandoverManager getWiFiCallingController](self "getWiFiCallingController")];
  v7 = [(WCM_WiFiController *)self->mWiFi wifiService];
  uint64 = xpc_dictionary_get_uint64(a3, "kClientType");
  v9 = [(WRM_HandoverManager *)self getiRATClientFromList:uint64];
  dword_1002B7CCC = uint64;
  v10 = WRM_IPTelephonyController;
  if ((uint64 - 1) >= 0x15)
  {
    v11 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
    if (uint64 == 22)
    {
      v11 = "ClientCoreMediaStreaming";
    }
  }

  else
  {
    v11 = (&off_1002416A0)[(uint64 - 1)];
  }

  [WCM_Logging logLevel:24 message:@"HandoverManager: Message received from client %d(%s)", uint64, v11];
  if (v4)
  {
    value = xpc_dictionary_get_value(a3, "kMessageArgs");
    v13 = xpc_dictionary_get_value(value, "kWRMApplicationTypeList");
    count = xpc_array_get_count(v13);
    if (count)
    {
      v15 = count;
      for (i = 0; i != v15; ++i)
      {
        v17 = xpc_array_get_value(v13, i);
        v18 = xpc_dictionary_get_uint64(v17, "kWRMApplicationType");
        v19 = xpc_dictionary_get_uint64(v17, "kWRMLinkType");
        v20 = xpc_dictionary_get_uint64(v17, "kWRMServiceStatus");
        [WCM_Logging logLevel:24 message:@"%s: Record#=%d, Application Type=%llu, Link Type=%llu Service Status %d ", "[WRM_HandoverManager handleSubscribeStatusUpdate::]", i, v18, v19, v20];
      }

      v10 = WRM_IPTelephonyController;
    }

    else
    {
      v20 = 0;
      v19 = 2;
      v18 = 1;
    }

    [v9 setStatusUpdateMsgBuffered:1];
    [v9 setBufferedLinkType:v19];
    if (v18 == 1 && [(WRM_iRATConfig *)self->miRATConfig ctServiceType]== 2)
    {
      v23 = @"handleSubscribeStatusUpdate changing mapped application type to CT_Thumper";
      v18 = 2;
    }

    else
    {
      v23 = @"handleSubscribeStatusUpdate using application type CT_VoLTE";
    }

    [&v10[98] logLevel:24 message:v23];
    [v9 setBufferedAppType:v18];
    [v9 setCallState:v20 != 0];
    if (([v9 isCallActive] & 1) == 0)
    {
      byte_1002B7BC9 = 0;
      [-[WRM_HandoverManager getCTService](self "getCTService")];
    }

    if ([v9 isCallActive] && objc_msgSend(v9, "getBufferedLinkType") == 1)
    {
      byte_1002B7CC9 = 1;
      [(WRM_HandoverManager *)self triggerEnableSA:0];
      [(WRM_SymptomsService *)self->mSymtomsService notifyWifiCallState:1];
      [(WCM_WiFiService *)v7 setWiFiCallingState:1];
      if ([(WRM_iRATConfig *)self->miRATConfig mobilityStateAwarenessEnabled])
      {
        [(WRM_MotionController *)self->mMotionController stopAllAlarms];
        [(WRM_MotionController *)self->mMotionController startMonitoringAlarms];
      }

      v24 = @"HandoverManager: handleSubscribeStatusUpdate: Call on WiFi";
    }

    else
    {
      if ([(WRM_iRATConfig *)self->miRATConfig mobilityStateAwarenessEnabled])
      {
        [(WRM_MotionController *)self->mMotionController stopAllAlarms];
      }

      [(WRM_SymptomsService *)self->mSymtomsService notifyWifiCallState:0];
      [(WCM_WiFiService *)v7 setWiFiCallingState:0];
      byte_1002B7CC9 = 0;
      v24 = @"HandoverManager: handleSubscribeStatusUpdate:Call not on WIFI";
    }

    [&v10[98] logLevel:24 message:v24];
    [&v10[98] logLevel:24 message:@"HandoverManager: handleSubscribeStatusUpdate."];
    v25 = [v9 getMobilityContextFromList:v18];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 getCallState];
      [v26 setCallState:v20 != 0];
      [v26 setRecommendedLinkType:v19];
      if (!v20 && v27)
      {
        v28 = v10 + 98;
        if (v19)
        {
          [(__objc2_class *)v28 logLevel:24 message:@"Handover Manager: evaluateActiveCallQuality"];
          [(WRM_HandoverManager *)self evaluateActiveCallQuality];
        }

        else
        {
          [(__objc2_class *)v28 logLevel:24 message:@"Handover Manager:  do not evaluateActiveCallQuality"];
        }
      }

      if (v20 != v27)
      {
        [&v10[98] logLevel:24 message:@"Handover Manager: resetActiveCallEvaluationMetrics"];

        [(WRM_HandoverManager *)self resetActiveCallEvaluationMetrics];
      }
    }
  }

  else
  {
    v21 = [v9 getMobilityContextFromList:{objc_msgSend(v9, "getBufferedAppType")}];
    if (v21)
    {
      v22 = v21;
      [v21 setConnectedLinkType:{objc_msgSend(v9, "getBufferedLinkType")}];
      [v22 setCallState:{objc_msgSend(v9, "isCallActive")}];
      [v9 setStatusUpdateMsgBuffered:0];

      [WCM_Logging logLevel:24 message:@"HandoverManager: handleSubscribeStatusUpdate."];
    }
  }
}

- (void)configureRTPMetricsReporting
{
  mWiFiCalling = self->mWiFiCalling;
  if (mWiFiCalling)
  {
    [(WRM_AVConferenceController *)mWiFiCalling configureRTPMetricsReporting];
    v4 = self->mWiFiCalling;

    [(WRM_AVConferenceController *)v4 resetPeriodicRTPStats];
  }
}

- (void)handleSIPStalledMetricsRecevied:(id)a3
{
  [WCM_Logging logLevel:24 message:@"handleSIPStalledMetricsRecevied"];
  if (self->mSymtomsService)
  {
    [WCM_Logging logLevel:16 message:@"handleSIPStalledMetricsRecevied, update SIP Stalled"];
    [(WRM_SymptomsService *)self->mSymtomsService updateSIPMetrics:1];
    [(WRM_HandoverManager *)self evaluateHandover];
    v4 = dispatch_time(0, 1000000000);
    mQueue = self->mQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D4F78;
    block[3] = &unk_10023DB28;
    block[4] = self;
    dispatch_after(v4, mQueue, block);
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"handleSIPMetricsRecevied-> mSymtomsService not init"];
  }
}

- (void)handleSIPMetricsRecevied:(id)a3
{
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value)
  {
    v5 = value;
    if (xpc_dictionary_get_value(value, "kRegtdLinkType"))
    {
      uint64 = xpc_dictionary_get_uint64(v5, "kRegtdLinkType");
    }

    else
    {
      uint64 = 0;
    }

    if (xpc_dictionary_get_value(v5, "kSipTmo"))
    {
      v7 = xpc_dictionary_get_BOOL(v5, "kSipTmo");
    }

    else
    {
      v7 = 0;
    }

    if (uint64)
    {
      if (self->mSymtomsService)
      {
        [WCM_Logging logLevel:16 message:@"handleSIPMetricsRecevied, update SIP TMO: %d", v7];
        if (![(WRM_SymptomsService *)self->mSymtomsService getDPDFailCount]&& ![(WRM_SymptomsService *)self->mSymtomsService getSIPTimeout])
        {
          [(WRM_SymptomsService *)self->mSymtomsService startBrokenBackHaulTimer:self->mQueue];
        }

        [(WRM_SymptomsService *)self->mSymtomsService updateSIPMetrics:v7];
      }

      else
      {
        [WCM_Logging logLevel:16 message:@"handleSIPMetricsRecevied-> mSymtomsService not init"];
      }
    }

    [WCM_Logging logLevel:24 message:@"handleSIPMetricsRecevied, sip TMO:%d, connected link: %d", v7, uint64];
    [(WRM_HandoverManager *)self evaluateHandover];
    if (v7)
    {
      v8 = dispatch_time(0, 20000000000);
      mQueue = self->mQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000D51AC;
      block[3] = &unk_10023DB28;
      block[4] = self;
      dispatch_after(v8, mQueue, block);
    }
  }

  else
  {
    [WCM_Logging logLevel:24 message:@"handleSIPMetricsRecevied, sip TMO:%d, connected link: %d", 0, 0];

    [(WRM_HandoverManager *)self evaluateHandover];
  }
}

- (void)handleIWLANMetrics:(id)a3
{
  v5 = [(WRM_HandoverManager *)self isDeviceConnectedOverNonLTERadio];
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value)
  {
    v7 = value;
    if (xpc_dictionary_get_value(value, "kTunnelDisconnected"))
    {
      int64 = xpc_dictionary_get_int64(v7, "kTunnelDisconnected");
      [WCM_Logging logLevel:16 message:@"handleIWLANMetrics reasonCode: %d, checkIfServingCellNonLTE: %d", int64, v5];
      v9 = (int64 == 1) & (v5 ^ 1);
    }

    else
    {
      [WCM_Logging logLevel:16 message:@"handleIWLANMetrics empty message recevied, no WRMiWLANMetricsReport_TunnelDisconnected"];
      v9 = 0;
    }

    xpc_dictionary_get_uint64(v7, "kSlotID");
    mSymtomsService = self->mSymtomsService;
    if (mSymtomsService)
    {
      if (![(WRM_SymptomsService *)mSymtomsService getDPDFailCount]&& ![(WRM_SymptomsService *)self->mSymtomsService getSIPTimeout])
      {
        [(WRM_SymptomsService *)self->mSymtomsService startBrokenBackHaulTimer:self->mQueue];
      }

      [(WRM_SymptomsService *)self->mSymtomsService updateDPDMetrics:v9];
    }

    else
    {
      [WCM_Logging logLevel:16 message:@"handleIWLANMetrics-> mSymtomsService not init"];
    }

    [WCM_Logging logLevel:24 message:@"Recevied handleIWLANMetrics, dpd:%d", v9];
    [(WRM_HandoverManager *)self evaluateHandover];
    if (v9)
    {
      v11 = dispatch_time(0, 20000000000);
      mQueue = self->mQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000D5408;
      block[3] = &unk_10023DB28;
      block[4] = self;
      dispatch_after(v11, mQueue, block);
    }
  }

  else
  {
    [WCM_Logging logLevel:16 message:@"handleIWLANMetrics empty message recevied, ccDpdMetrics is null"];
    [WCM_Logging logLevel:24 message:@"Recevied handleIWLANMetrics, dpd:%d", 0];

    [(WRM_HandoverManager *)self evaluateHandover];
  }
}

- (void)handleIPTelephonyMetrics:(id)a3
{
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value)
  {
    v5 = value;
    if (xpc_dictionary_get_value(value, "WRMIPTelephonyEventReport_CallStatus"))
    {
      uint64 = xpc_dictionary_get_uint64(v5, "WRMIPTelephonyEventReport_CallStatus");
      v7 = uint64 != 0;
      v8 = uint64 != 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = xpc_dictionary_get_value(v5, "WRMIPTelephonyEventReport_LocalHold") && xpc_dictionary_get_uint64(v5, "WRMIPTelephonyEventReport_LocalHold") != 0;
    v10 = xpc_dictionary_get_value(v5, "WRMIPTelephonyEventReport_RemoteHold") && xpc_dictionary_get_uint64(v5, "WRMIPTelephonyEventReport_RemoteHold") != 0;
    v11 = xpc_dictionary_get_value(v5, "WRMIPTelephonyEventReport_Conference") && xpc_dictionary_get_uint64(v5, "WRMIPTelephonyEventReport_Conference") != 0;
    [WCM_Logging logLevel:24 message:@"Received IP Telephony Event, Call Status=%ld, Local Hold Enabled=%d Remote Hold Enabled=%d, Conference Enabled=%d ", v8, v9, v10, v11];
    v12 = [(WRM_HandoverManager *)self getCTService];
    if (v12)
    {
      v13 = v12;
      [v12 setCallState:v8];
      [v13 setCallInConference:v11];
      [v13 setCallOnHold:v9 || v10];
      if (v7)
      {

        [(WRM_HandoverManager *)self resetActiveCallTimer];
      }
    }
  }
}

- (void)handlePeriodicRTPMetrics:(id)a3
{
  v4 = [-[WRM_HandoverManager getCTService](self getCTService];
  v5 = [(WCM_WiFiController *)self->mWiFi wifiService];
  [WCM_Logging logLevel:24 message:@"Handover Manager received filtered RTP netrics"];
  if (v4 == 1)
  {
    if (byte_1002B7CC9)
    {
      v6 = [(WRM_HandoverManager *)self getWiFiCallingController];
      self->wrmWifiCallingEnd->Latte_RTP_Packet_Loss = [v6 avgRxPktLoss];
      self->wrmWifiCallingEnd->WiFi_RSSI = [(WCM_WiFiService *)v5 getRSSI];
      self->wrmWifiCallingEnd->WiFi_SINR = [(WCM_WiFiService *)v5 getSNR];
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"Rx periodic Average RTP packet loss=%lld", [v6 avgRxPktLoss]);
      v7 = [v6 erasuresInSpeech] * 100.0;
      self->wrmWifiCallingEnd->Latte_Erasures = (v7 / ([v6 totalPlayBacks] + 0.000001));
      self->wrmWifiCallingEnd->Latte_Nominal_Jitter_Buffer_Size = [v6 movAvgNominalJitterBufferDelay];
      self->wrmWifiCallingEnd->Latte_Dejitter_Buffer_Underflow = [v6 averagedNominalJitterBufferDelay];
      [(WRM_HandoverManager *)self evaluateHandover];

      [v6 resetRTPMetrics];
    }

    else
    {

      [WCM_Logging logLevel:24 message:@"handlePeriodicRTPMetrics: discard RTP metrics, call not on WiFi"];
    }
  }

  else
  {
    [WCM_Logging logLevel:24 message:@"handlePeriodicRTPMetrics: discard WIFI RTP metrics, call not active, call state: %d", v4];
  }
}

- (int64_t)getSNRHysteresis
{
  v3 = [(WRM_HandoverManager *)self getiRATConfigController];
  v4 = [-[WRM_HandoverManager getMotionController](self "getMotionController")];
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
    [WCM_Logging logLevel:24 message:v7];
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
        [WCM_Logging logLevel:24 message:v5];

        return [v3 snrHysterisisWalking];
      }

LABEL_17:
      v7 = @"Device motion: UNKNOWN";
      goto LABEL_18;
    }

    v7 = @"Device motion: VEHICULAR";
    goto LABEL_18;
  }

  [WCM_Logging logLevel:24 message:@"Device motion: RUNNING"];

  return [v3 snrHysterisisRunning];
}

- (void)registerForCTNotifications
{
  if (self->mCTService)
  {
    [WCM_Logging logLevel:24 message:@"CT already registered."];
  }

  else if ([(WRM_HandoverManager *)self isEnhancedCTServiceNeeded])
  {
    v3 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
    self->mCTService = v3;
    [(WRM_CTService *)v3 initCoreTelephonyClient];
  }

  else
  {
    self->mCTService = +[WRM_CTService WRM_CTServiceControllerSingleton];
  }

  mCTService = self->mCTService;

  [(WRM_CTService *)mCTService tiggerEnhanceLQMConfiguration];
}

- (void)registerForSCNotifications
{
  if (self->mSCService)
  {

    [WCM_Logging logLevel:24 message:@"SC already registered."];
  }

  else
  {
    self->mSCService = +[WRM_SCService WRM_SCServiceControllerSingleton];
  }
}

- (int)convertToHOAlgorithmType:(unint64_t)a3
{
  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return a3 == 2;
  }
}

- (void)setiRATPolicy:(unint64_t)a3
{
  mQueue = self->mQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000D5ABC;
  v4[3] = &unk_10023DD88;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(mQueue, v4);
}

- (void)resetActiveCallEvaluationMetrics
{
  [WCM_Logging logLevel:24 message:@"resetActiveCallEvaluationMetrics"];
  [(NSDate *)self->mAudioEvaluationTimer timeIntervalSinceNow];
  self->mTimeSinceAudioEvaluationStarted = v3;
  v4 = [(WRM_HandoverManager *)self getWiFiCallingController];
  mWiFi = self->mWiFi;
  if (mWiFi && (mWiFi = [(WCM_WiFiController *)mWiFi wifiService]) == 0)
  {
    [WCM_Logging logLevel:24 message:@"resetActiveCallEvaluationMetrics: ptrWiFiService==NULL"];
  }

  else
  {
    [(WCM_WiFiController *)mWiFi resetCumulativeCounters];
    [v4 resetCumulativeRTPMetrics];
  }

  byte_1002B7BC8 = 0;

  [WCM_Logging logLevel:24 message:@"resetActiveCallEvaluationMetrics: exit"];
}

- (void)resetActiveCallTimer
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5D3C;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(mQueue, block);
}

- (void)setIWLANServiceType:(int)a3
{
  [(WRM_iRATConfig *)self->miRATConfig setCtServiceType:a3];
  if (a3 == 2)
  {
    byte_1002B7CC8 = 1;
  }
}

- (void)feedAWDDataLinkPreferenceChange:(int)a3
{
  v5 = [(WCM_WiFiController *)self->mWiFi wifiService];
  v6 = [(WRM_HandoverManager *)self getCTService];
  v7 = [(WRM_HandoverManager *)self getSCService];
  v8 = [-[WRM_HandoverManager getiRATClientFromList:](self getiRATClientFromList:{1), "getMobilityContextFromList:", 1}];
  v9 = [v8 getCallState];
  v10 = [v8 getConnectedLinkType];
  v11 = [-[WRM_HandoverManager getMotionController](self "getMotionController")];
  if (self->mMetrics)
  {
    mDataLinkPrefMetrics = self->mDataLinkPrefMetrics;
    mDataLinkPrefMetrics->callStatus = v9;
    mDataLinkPrefMetrics->dataLinkPref = a3;
    mDataLinkPrefMetrics->voiceLinkPref = v10;
    mDataLinkPrefMetrics->motionState = v11;
    mDataLinkPrefMetrics->dataAppStatus = 0;
    v13 = [v7 isDataLQMValid];
    v14 = 0;
    if (v13)
    {
      v14 = [v7 getCellularDataLQM];
    }

    self->mDataLinkPrefMetrics->dataLQM = v14;
    v15 = [v6 isVoiceLQMValid];
    if (v15)
    {
      v15 = [v6 getLteVoiceLQM];
    }

    self->mDataLinkPrefMetrics->voiceLQM = v15;
    if ([v6 getServingCellType] == 1)
    {
      self->mDataLinkPrefMetrics->ratType = @"LTE_RADIO";
      [v6 getServingCellRSRP];
      self->mDataLinkPrefMetrics->cellRSRP = v16;
      [v6 getServingCellSNR];
    }

    else
    {
      v18 = [v6 getServingCellType];
      v19 = self->mDataLinkPrefMetrics;
      if (v18 != 2)
      {
        v19->ratType = @"UNKNOWN_RADIO";
        goto LABEL_12;
      }

      v19->ratType = @"UMTS_RADIO";
      [v6 getServingCellRSCP];
      self->mDataLinkPrefMetrics->cellRSRP = v20;
      [v6 getServingCellECIO];
    }

    self->mDataLinkPrefMetrics->cellSINR = v17;
LABEL_12:
    self->mDataLinkPrefMetrics->signalBar = [v6 getCurrentSignalBars];
    self->mDataLinkPrefMetrics->wifiRssi = [(WCM_WiFiService *)v5 getRSSI];
    self->mDataLinkPrefMetrics->wifiSNR = [(WCM_WiFiService *)v5 getSNR];
    [(WCM_WiFiService *)v5 getBeaconPer];
    self->mDataLinkPrefMetrics->bcnPer = (v21 * 100.0);
    self->mDataLinkPrefMetrics->cca = [(WCM_WiFiService *)v5 getCCA];
    self->mDataLinkPrefMetrics->qbssLoad = [(WCM_WiFiService *)v5 getChannelUtlization];
    self->mDataLinkPrefMetrics->stationCount = [(WCM_WiFiService *)v5 getConnectedStationCount];
    [(WCM_WiFiService *)v5 getEstimatedAvailableRxPhyBandwidth];
    self->mDataLinkPrefMetrics->wifiEstimatedBandwitdh = v22;
    [(WCM_WiFiService *)v5 getRxPhyRate];
    self->mDataLinkPrefMetrics->wifiRxPhyRate = v23;
    [(WCM_WiFiService *)v5 getRxRetryPercent];
    self->mDataLinkPrefMetrics->wifiRxRetry = v24;
    [(WCM_WiFiService *)v5 getTxPer];
    self->mDataLinkPrefMetrics->wifiTxPER = v25;
    [(WCM_WiFiService *)v5 getTxPhyRate];
    self->mDataLinkPrefMetrics->wifiTxPhyRate = v26;
    self->mDataLinkPrefMetrics->captiveNetworks = [(WCM_WiFiService *)v5 isWiFiNetworkCaptive];
    self->mDataLinkPrefMetrics->bssLoad = [(WCM_WiFiService *)v5 getPointOfInterest];
    self->mDataLinkPrefMetrics->decisionVIBE = [(WCM_WiFiService *)v5 getBEDecision];
    self->mDataLinkPrefMetrics->decisionVO = [(WCM_WiFiService *)v5 getVoiceDecision];
    self->mDataLinkPrefMetrics->expectedThroughputVIBE = [(WCM_WiFiService *)v5 getTxThroughputVI];
    self->mDataLinkPrefMetrics->packetLifetimeVIBE = [(WCM_WiFiService *)v5 getLifeTimeVI];
    self->mDataLinkPrefMetrics->pkgLifeTimeVO = [(WCM_WiFiService *)v5 getLifeTimeVO];
    v27 = [(WCM_WiFiService *)v5 getTxLossRateVO];
    v28 = self->mDataLinkPrefMetrics;
    v28->pktLossRateVO = v27;
    v28->lqmScoreWifi = a3 == 1;
    v28->metricsUpdate = 1;
  }
}

- (void)createSymptomsService
{
  if (self->mSymtomsService)
  {
    [WCM_Logging logLevel:24 message:@"iRAT: SymptomsService already exist."];
    mSymtomsService = self->mSymtomsService;

    [(WRM_SymptomsService *)mSymtomsService resetSFContext];
  }

  else
  {
    self->mSymtomsService = objc_alloc_init(WRM_SymptomsService);

    [WCM_Logging logLevel:24 message:@"iRAT: SymptomsService created."];
  }
}

- (void)createIBIClient
{
  if (![(WRM_HandoverManager *)self disableICEClient]&& !self->mIBIClient)
  {
    self->mIBIClient = objc_alloc_init(WRM_IceClientDriver);

    [WCM_Logging logLevel:24 message:@"iRAT: ICE client is created."];
  }
}

- (void)createQMIClient
{
  if ([(WRM_HandoverManager *)self disableQMIClient])
  {
    return;
  }

  if (self->mQMINasClientPrimary)
  {
    v3 = @"iRAT: QMI NAS Primary client already exist.";
  }

  else
  {
    v4 = [[WRM_QMINasClient alloc] initWithSub:1];
    self->mQMINasClientPrimary = v4;
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = @"iRAT: QMI NAS Primary client is created.";
  }

  [WCM_Logging logLevel:24 message:v3];
LABEL_7:
  if (![(WRM_HandoverManager *)self isRecentDevice])
  {
    return;
  }

  if (self->mQMINasClientSecondary)
  {
    v5 = @"iRAT: QMI NAS Secondary client already exist.";
LABEL_12:
    [WCM_Logging logLevel:24 message:v5];
    goto LABEL_13;
  }

  v6 = [[WRM_QMINasClient alloc] initWithSub:2];
  self->mQMINasClientSecondary = v6;
  if (v6)
  {
    v5 = @"iRAT: QMI NAS Secondary client is created.";
    goto LABEL_12;
  }

LABEL_13:
  if (self->mQMIDsdClientPrimary)
  {
    v7 = @"iRAT: QMI DSD Primary client already exist.";
  }

  else
  {
    v8 = [[WRM_QMIDsdClient alloc] initWithSub:1];
    self->mQMIDsdClientPrimary = v8;
    if (!v8)
    {
      return;
    }

    v7 = @"iRAT: QMI DSD Primary client is created.";
  }

  [WCM_Logging logLevel:24 message:v7];
}

- (void)postWRMStateToBB
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6620;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(mQueue, block);
}

- (void)evalSAStatusWiFiCallCallingPrefChanged
{
  [WCM_Logging logLevel:26 message:@"evalSAStatusWiFiCallCallingPrefChanged "];
  if (self->mSCService)
  {
    v3 = dispatch_time(0, 2000000000);
    mQueue = self->mQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D6718;
    block[3] = &unk_10023DB28;
    block[4] = self;
    dispatch_after(v3, mQueue, block);
  }
}

- (void)reEvaluateSAState
{
  mSCService = self->mSCService;
  if (mSCService)
  {
    v4 = [(WRM_SCService *)mSCService isWiFiPrimary];

    [(WRM_HandoverManager *)self toggleSAState:v4];
  }
}

- (void)lowPowerModePeriodicWakeUp
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  miRATClientContexts = self->miRATClientContexts;
  v3 = [(NSMutableArray *)miRATClientContexts countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(miRATClientContexts);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 isLowPowerModePeriodicWakeUpNotificationSubscribed])
        {
          [v7 notifylowPowerModePeriodicWakeUp];
        }
      }

      v4 = [(NSMutableArray *)miRATClientContexts countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)updateRLHandoverPolicyFromCarrierBundle:(BOOL)a3 onSimSlot:(int64_t)a4
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6914;
  block[3] = &unk_10023DF40;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(mQueue, block);
}

- (void)updateSaAllowedOnWiFiAssociation:(BOOL)a3 onSimSlot:(int64_t)a4
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D69F0;
  block[3] = &unk_10023DF40;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(mQueue, block);
}

- (void)handleGetVoiceLqmValue:(id)a3
{
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kWRMVoiceLqm_SlotId");
  mQueue = self->mQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D6AF4;
  v8[3] = &unk_10023DD88;
  v8[4] = a3;
  v8[5] = uint64;
  dispatch_async(mQueue, v8);
}

- (void)notifyVoiceLqmUpdate:(int)a3 onSimSlot:(int64_t)a4
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6C78;
  block[3] = &unk_10023E0A8;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(mQueue, block);
}

- (id)getQmiClientForSim:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 80;
    return *(&self->super.isa + v3);
  }

  if (a3 == 2)
  {
    v3 = 88;
    return *(&self->super.isa + v3);
  }

  return 0;
}

- (void)initCallNotifications
{
  [WCM_Logging logLevel:24 message:@"TUCallCenterCallStatusChangedNotification register"];
  +[TUCallCenter sharedInstance];
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = TUCallCenterCallStatusChangedNotification;

  [(NSNotificationCenter *)v3 addObserver:self selector:"handleCallNotification:" name:v4 object:0];
}

- (void)handleCallNotification:(id)a3
{
  [WCM_Logging logLevel:24 message:@"handleCallNotification notification=%@", a3];
  v5 = [a3 name];
  if ([v5 isEqualToString:TUCallCenterCallStatusChangedNotification])
  {
    v6 = [a3 object];
    if (v6)
    {
      v7 = v6;
      if ([objc_msgSend(v6 "provider")])
      {
        [WCM_Logging logLevel:24 message:@"handleCallNotification call=%@", v7];
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"TUCallCenterCallStatusChangedNotification call.status: %d, call.subtype: %d", [v7 status], objc_msgSend(v7, "callSubType"));
        if ([v7 status] == 1)
        {
          [(WRM_HandoverManager *)self resetActiveCallTimer];
        }

        else if (![v7 status] || objc_msgSend(v7, "status") == 6)
        {
          [(WRM_CTService *)self->mCTService setSrvccHandoverState:0];
          [WCM_Logging logLevel:24 message:@"Call Disconnected or IDLE: resetting SRVCC flag"];
          if ([v7 status] == 6)
          {
            [WCM_Logging logLevel:24 message:@"Call Disconnected : submit callend metrics"];
            [(WRM_HandoverManager *)self submitCallEndMetics];
            if ([(WRM_SCService *)self->mSCService isWiFiPrimary])
            {
              if ([v7 disconnectedReason])
              {
                +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"handleCallNotification disconnectedReason=%d, toggle ABC report", [v7 disconnectedReason]);
                [(WRM_HandoverManager *)self triggerABC:@"iRATManager" subType:@"HandoverManager" subtypeContext:@"wAlert"];
              }
            }
          }
        }

        if ([v7 status] == 6)
        {
          v8 = [+[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton](WRM_EnhancedCTService "wrm_EnhancedCTServiceSingleton")];
          if ([(WRM_HandoverManager *)self isRLHandoverPolicyEnabledOnSlot:v8])
          {
            v9 = [v7 disconnectedReason];
            objc_initWeak(&location, self);
            mQueue = self->mQueue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000D7114;
            block[3] = &unk_1002415E0;
            objc_copyWeak(v12, &location);
            v13 = v9;
            v12[1] = v8;
            dispatch_async(mQueue, block);
            objc_destroyWeak(v12);
            objc_destroyWeak(&location);
          }
        }
      }
    }
  }
}

@end