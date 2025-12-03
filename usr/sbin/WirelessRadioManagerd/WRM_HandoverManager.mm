@interface WRM_HandoverManager
+ (id)WRM_HandoverManagerSingleton;
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)can4G5GMeetApplicationRequirementsAppTypeWiFiCallingCallIdle:(int)idle;
- (BOOL)canCellularMeetApplicationRequirementsAppTypeData;
- (BOOL)canCellularMeetApplicationRequirementsAppTypeWiFiCallingCallActive:(int)active;
- (BOOL)canCellularMeetApplicationRequirementsAppTypeWiFiCallingCallIdle:(int)idle;
- (BOOL)checkIFFr2SupportNotAvailable;
- (BOOL)disableICEClient;
- (BOOL)disableQMIClient;
- (BOOL)doesIRATClientSubscriptionContextExist;
- (BOOL)handoverEvaluationRequired;
- (BOOL)isAppQualityGoodOnWiFi:(int)fi;
- (BOOL)isCellularEntryCriteriaMetForIMSThumpCallCurrentLinkWiFi;
- (BOOL)isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi:(BOOL)fi;
- (BOOL)isCellularEntryCriteriaMetForVoiceCallCurrentLinkNone;
- (BOOL)isCellularExitCriteriaMetForIMSThumpCallCurrentLinkCellular;
- (BOOL)isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkLTE:(BOOL)e;
- (BOOL)isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkNR:(BOOL)r;
- (BOOL)isCellularExitCriteriaMetForVoiceCallCallCurrentLinkUMTS;
- (BOOL)isCellularViableForWiFiBlackList;
- (BOOL)isDeviceConnectedOverNonLTERadio;
- (BOOL)isEnhancedSisSupportedOnMAV;
- (BOOL)isIMSTransportQualityGood;
- (BOOL)isLteEntryCriteriaMetCurrentLinkNone;
- (BOOL)isLteEntryCriteriaMetCurrentLinkWiFi:(int64_t)fi;
- (BOOL)isMovingAverageAudioQualityOfCurrentCallGood:(int)good;
- (BOOL)isNrEntryCriteriaMetCurrentLinkNone;
- (BOOL)isNrEntryCriteriaMetCurrentLinkWiFi:(int64_t)fi;
- (BOOL)isRLHandoverPolicyEnabledOnSlot:(int64_t)slot;
- (BOOL)isRecentDevice;
- (BOOL)isSisSupportedOnICE;
- (BOOL)isUplinkAudioQualityOfCurrentCallGood:(int)good;
- (BOOL)isWiFiAppEntryCriteriaMet;
- (BOOL)isWiFiArqQualityIndicatorGoodUserData:(unint64_t)data :(unint64_t)a4 :(int)a5 :(BOOL)a6;
- (BOOL)isWiFiBeaconLossQualityIndicatorGood:(unint64_t)good :(unint64_t)a4 :(int)a5;
- (BOOL)isWiFiLinkEvaluationDesired;
- (BOOL)isWiFiLoadQualityIndicatorGood:(unint64_t)good :(unint64_t)a4 :(BOOL)a5 :(int)a6;
- (BOOL)isWiFiVoIPQualityGoodEnough;
- (BOOL)needWiFiLQM;
- (WRM_HandoverManager)init;
- (id)getQmiClientForSim:(int64_t)sim;
- (id)getiRATClientFromList:(int)list;
- (int)convertToHOAlgorithmType:(unint64_t)type;
- (int64_t)getRSSIHysteresis;
- (int64_t)getSNRHysteresis;
- (void)addiRatClient:(id)client;
- (void)callObserver:(id)observer callChanged:(id)changed;
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
- (void)feedAWDDataLinkPreferenceChange:(int)change;
- (void)forceActiveModeEval:(BOOL)eval;
- (void)handleCallNotification:(id)notification;
- (void)handleCellularLinkQualityUpdate:(id)update;
- (void)handleControllerAvailability:(unint64_t)availability;
- (void)handleGetVoiceLqmValue:(id)value;
- (void)handleIPTelephonyMetrics:(id)metrics;
- (void)handleIWLANMetrics:(id)metrics;
- (void)handleInternalMessage:(id)message;
- (void)handleLinkPrefSubscribe:(id)subscribe;
- (void)handleMotionUpdate:(id)update;
- (void)handlePeriodicRTPMetrics:(id)metrics;
- (void)handleSIPMetricsRecevied:(id)recevied;
- (void)handleSIPStalledMetricsRecevied:(id)recevied;
- (void)handleSessionNotification:(id)notification;
- (void)handleSubscribeStatusUpdate:(id)update :(BOOL)a4;
- (void)handleWiFiConfig;
- (void)handleWiFiLinkQualityUpdate:(id)update;
- (void)handleWiFiStateChaneEvents:(id)events;
- (void)initCallNotifications;
- (void)initWiFiCellDataEval;
- (void)lowPowerModePeriodicWakeUp;
- (void)notifyRecommendations;
- (void)notifyVoiceLqmUpdate:(int)update onSimSlot:(int64_t)slot;
- (void)postLinkPreference:(unint64_t)preference;
- (void)postWRMStateToBB;
- (void)reEvaluateSAState;
- (void)registerForCTNotifications;
- (void)registerForSCNotifications;
- (void)registerSFOutrankDecisionNotification;
- (void)registerSFRestartNotification;
- (void)registerThermalNotificationReasonToThrottle;
- (void)registerThermalTimeToThrottleNotification;
- (void)removeiRatClient:(id)client;
- (void)resetActiveCallEvaluationMetrics;
- (void)resetActiveCallTimer;
- (void)rxVoIPAppNotification:(BOOL)notification callType:(int)type;
- (void)setCarPlaySession:(BOOL)session;
- (void)setIWLANServiceType:(int)type;
- (void)setiRATPolicy:(unint64_t)policy;
- (void)showHOAlertUI:(BOOL)i;
- (void)submitCallEndMetics;
- (void)submitMetricsCBRSWithDataSimRecommendation:(BOOL)recommendation forSimSlot:(int64_t)slot;
- (void)submitWiFiVersusCellAWDMetrics;
- (void)switchPrivateNwDataSim:(int64_t)sim currentSlotQuality:(int)quality anyCallState:(int)state;
- (void)toggleSAState:(BOOL)state;
- (void)triggerBWEval;
- (void)triggerEnableSA:(BOOL)a;
- (void)triggerHarvestDataEval;
- (void)updateActiveHandoverStatus;
- (void)updateAnyCallState:(int)state providerIdentifier:(id)identifier;
- (void)updateAppState:(int)state Category:(id)category sessionType:(int)type;
- (void)updateCellularMetricsMovAverage;
- (void)updateControllerSession:(id)session ofId:(unint64_t)id;
- (void)updateControllerState:(id)state;
- (void)updateRLHandoverPolicyFromCarrierBundle:(BOOL)bundle onSimSlot:(int64_t)slot;
- (void)updateSaAllowedOnWiFiAssociation:(BOOL)association onSimSlot:(int64_t)slot;
@end

@implementation WRM_HandoverManager

+ (id)WRM_HandoverManagerSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D0E78;
  block[3] = &unk_10023DB28;
  block[4] = self;
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
  doesIRATClientSubscriptionContextExist = [(WRM_HandoverManager *)self doesIRATClientSubscriptionContextExist];
  v3 = "NO";
  if (doesIRATClientSubscriptionContextExist)
  {
    v3 = "YES";
  }

  [WCM_Logging logLevel:24 message:@"%s: needWiFiLQM? %s ", "[WRM_HandoverManager needWiFiLQM]", v3];
  return doesIRATClientSubscriptionContextExist;
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

      getHandoverContexts = [*(*(&v12 + 1) + 8 * i) getHandoverContexts];
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"%s: iRAT client Context count:%d.", "-[WRM_HandoverManager doesIRATClientSubscriptionContextExist]", [getHandoverContexts count]);
      if ([getHandoverContexts count])
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
  getMotionController = [(WRM_HandoverManager *)self getMotionController];
  getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
  [(NSDate *)self->mStartTime timeIntervalSinceNow];
  v6 = v5;
  v7 = self->prevTimeSinceStart - v5;
  [WCM_Logging logLevel:24 message:@"HO Evaluation time duration is: %lf", *&v7];
  getMobilityState = [getMotionController getMobilityState];
  if (getMobilityState <= 1)
  {
    if (!getMobilityState)
    {
      [WCM_Logging logLevel:24 message:@"Device motion: STATIONARY"];
      if (v7 * 1000.0 < [getiRATConfigController pingPongAvoidanceThresholdStationary])
      {
        return 0;
      }

      self->prevTimeSinceStart = v6;
      return 1;
    }

    if (getMobilityState == 1)
    {
      pingPongAvoidanceThresholdWalking = [getiRATConfigController pingPongAvoidanceThresholdWalking];
      v10 = v7 * 1000.0;
      v11 = v7 * 1000.0 >= pingPongAvoidanceThresholdWalking;
      if (v7 * 1000.0 >= pingPongAvoidanceThresholdWalking)
      {
        self->prevTimeSinceStart = v6;
      }

      v12 = @"Device motion: WALKING";
      goto LABEL_19;
    }

LABEL_23:
    pingPongAvoidanceThresholdStationary = [getiRATConfigController pingPongAvoidanceThresholdStationary];
    if (v7 * 1000.0 < pingPongAvoidanceThresholdStationary)
    {
      return 0;
    }

    self->prevTimeSinceStart = v6;
    [WCM_Logging logLevel:24 message:@"Device motion: UNKNOWN", pingPongAvoidanceThresholdStationary, v7 * 1000.0];
    return 1;
  }

  if (getMobilityState == 2)
  {
    pingPongAvoidanceThresholdWalking = [objc_opt_self() pingPongAvoidanceThresholdRunning];
    v10 = v7 * 1000.0;
    v11 = v7 * 1000.0 >= pingPongAvoidanceThresholdWalking;
    if (v7 * 1000.0 >= pingPongAvoidanceThresholdWalking)
    {
      self->prevTimeSinceStart = v6;
    }

    v12 = @"Device motion: RUNNING";
    goto LABEL_19;
  }

  if (getMobilityState == 3)
  {
    pingPongAvoidanceThresholdWalking = [getiRATConfigController pingPongAvoidanceThresholdStationary];
    v10 = v7 * 1000.0;
    v11 = v7 * 1000.0 >= pingPongAvoidanceThresholdWalking;
    if (v7 * 1000.0 >= pingPongAvoidanceThresholdWalking)
    {
      self->prevTimeSinceStart = v6;
    }

    v12 = @"Device motion: VEHICULAR";
    goto LABEL_19;
  }

  if (getMobilityState != 4)
  {
    goto LABEL_23;
  }

  pingPongAvoidanceThresholdWalking = [getiRATConfigController pingPongAvoidanceThresholdWalking];
  v10 = v7 * 1000.0;
  v11 = v7 * 1000.0 >= pingPongAvoidanceThresholdWalking;
  if (v7 * 1000.0 >= pingPongAvoidanceThresholdWalking)
  {
    self->prevTimeSinceStart = v6;
  }

  v12 = @"Device motion: PEDESTRIAN";
LABEL_19:
  [WCM_Logging logLevel:24 message:v12, pingPongAvoidanceThresholdWalking, v10];
  return v11;
}

- (void)updateCellularMetricsMovAverage
{
  getCTService = [(WRM_HandoverManager *)self getCTService];
  if (getCTService)
  {

    [getCTService updateMovAverageOfSignalBar];
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
  selfCopy = self;
  v3 = [(WRM_HandoverManager *)self getIWLANServiceType]== 1 || [(WRM_iRATConfig *)selfCopy->miRATConfig ctServiceType]== 2;
  v94 = v3;
  v4 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  v5 = [(NSMutableArray *)selfCopy->miRATClientContexts count];
  if (!v5)
  {
    v6 = @"Evaluate Handover: No iRAT client available.";
    goto LABEL_8;
  }

  [WCM_Logging logLevel:24 message:@"Evaluate Handover: Total number of iRAT clients %zu.", v5];
  if (byte_1002B7CA9 != 1)
  {
    getiRATConfigController = [(WRM_HandoverManager *)selfCopy getiRATConfigController];
    v84 = [-[WRM_HandoverManager getMotionController](selfCopy "getMotionController")];
    v7 = [[NSSortDescriptor alloc] initWithKey:@"mActive" ascending:0];
    miRATClientContexts = selfCopy->miRATClientContexts;
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
    v100 = selfCopy;
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
      getMyClientType = [v14 getMyClientType];
      v96 = getMyClientType;
      if ((v94 | ![(WRM_HandoverManager *)selfCopy isEnhancedCTServiceNeeded]))
      {
        goto LABEL_20;
      }

      [v4 setActiveSlot:{objc_msgSend(v14, "getActiveSlot")}];
      getSubscriptionsSlotMap = [v4 getSubscriptionsSlotMap];
      if ((getMyClientType - 1) > 1 || ([v4 activeSlot] & getSubscriptionsSlotMap) != 0)
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
    if (getMyClientType != 1)
    {
      if ((getMyClientType - 2) >= 0x14)
      {
        v17 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
        if (getMyClientType == 22)
        {
          v17 = "ClientCoreMediaStreaming";
        }
      }

      else
      {
        v17 = (&off_100241600)[getMyClientType - 2];
      }
    }

    [WCM_Logging logLevel:24 message:@"<%s>Evaluate Handover: BEGIN.", v17];
    getHandoverContexts = [v14 getHandoverContexts];
    v19 = [+[WRM_MetricsService getSingleton](WRM_MetricsService "getSingleton")];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    obj = getHandoverContexts;
    v91 = [getHandoverContexts countByEnumeratingWithState:&v103 objects:v111 count:16];
    if (v91)
    {
      v90 = *v104;
      v20 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
      if (getMyClientType == 22)
      {
        v20 = "ClientCoreMediaStreaming";
      }

      v99 = v20;
      v95 = (getMyClientType - 2);
      v97 = getMyClientType - 1;
      v86 = v19 + 168;
      v87 = v19 + 160;
      v21 = "ClientCommCenter";
      if (getMyClientType != 1)
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
        getBandwidth = [v23 getBandwidth];
        getApplicationType = [v23 getApplicationType];
        getCallState = [v23 getCallState];
        getConnectedLinkType = [v23 getConnectedLinkType];
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

        if (getApplicationType)
        {
          v28 = "CT_VOICE";
          if (getApplicationType != 1)
          {
            if (getApplicationType == 2)
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
        getActiveSlot = [v14 getActiveSlot];
        if (((getActiveSlot == 0) & ~v94) != 0)
        {
          return;
        }

        v30 = getActiveSlot;
        v31 = 0;
        v102 = getCallState;
        if (![(WRM_HandoverManager *)selfCopy isRLHandoverPolicyEnabledOnSlot:getActiveSlot])
        {
          goto LABEL_72;
        }

        v32 = getConnectedLinkType;
        if (v97 > 1 || getApplicationType != 1)
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
            getActiveSlot2 = [v14 getActiveSlot];
            v39 = "CTSubscriptionSlotOne";
            getCallState = v102;
            if (getActiveSlot2 != 1)
            {
              getActiveSlot3 = [v14 getActiveSlot];
              v39 = "Unknown CTSubscriptionSlot!!!";
              if (getActiveSlot3 == 2)
              {
                v39 = "CTSubscriptionSlotTwo";
              }
            }
          }

          else
          {
            v39 = "CTSubscriptionSlotUnknown";
            getCallState = v102;
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
            getRSSI = [(WCM_WiFiService *)[(WCM_WiFiController *)selfCopy->mWiFi wifiService] getRSSI];
            v42 = [v41 getPLMN:{objc_msgSend(v14, "getActiveSlot")}];
            getSSID = [(WCM_WiFiService *)[(WCM_WiFiController *)selfCopy->mWiFi wifiService] getSSID];
            if (![v42 isEqual:@"0.0"])
            {
              if ([v14 getActiveSlot])
              {
                getActiveSlot4 = [v14 getActiveSlot];
                v65 = "CTSubscriptionSlotOne";
                if (getActiveSlot4 != 1)
                {
                  getActiveSlot5 = [v14 getActiveSlot];
                  v65 = "Unknown CTSubscriptionSlot!!!";
                  if (getActiveSlot5 == 2)
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
              v72 = [NSString stringWithFormat:@"PLMN:%@+SSID:%@", v42, getSSID];
              v73 = [[HandoverLearnerState alloc] initWithValues:v72 rssi:getRSSI];
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

        getCallState = v102;
LABEL_72:
        v32 = getConnectedLinkType;
LABEL_73:
        if (v97 <= 1 && getApplicationType == 1 && ([v14 getActiveSlot] == 1 || objc_msgSend(v14, "getActiveSlot") == 2))
        {
          *&v87[4 * [v14 getActiveSlot] - 4] = v24;
          v86[[v14 getActiveSlot] - 1] = v31;
        }

        if (v32)
        {
          goto LABEL_79;
        }

        if (byte_1002B7A19 & getCallState) == 1 && (byte_1002B7BC9)
        {
LABEL_100:
          v51 = "CT_DATA";
          if (getApplicationType)
          {
            v51 = "CT_VOICE";
          }

          v52 = "UNKNOWN_APP!!!";
          if (getApplicationType == 2)
          {
            v52 = "CT_Th_Call";
          }

          if (getApplicationType >= 2)
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
          if ([(WRM_HandoverManager *)selfCopy canCellularMeetApplicationRequirement:getBandwidth])
          {
            [WCM_Logging logLevel:24 message:@"canCellularMeetApplicationRequirement ok, appType: %d, callActive: %d, alg: %d", getApplicationType, getCallState, v24];
          }

          else if ([(WRM_HandoverManager *)selfCopy isWiFiLinkEvaluationDesired])
          {
            v93 = v30;
            [WCM_Logging logLevel:24 message:@"Continue to evaluate WiFi link: Cellular link bad, appType: %d, callActive: %d, alg: %d", getApplicationType, getCallState, v24];
            goto LABEL_81;
          }

          [WCM_Logging logLevel:24 message:@"evaluate_handover: connectedLinkType == WRM_CELLULAR, appType: %d, call active: %d", getApplicationType, getCallState];
          if (v84 != 5 && v84)
          {
            [v23 getDeltaTimeSinceLastCellularRecommendation];
            v68 = v67 * 1000.0;
            if (!getCallState)
            {
              getPingPongAvoidanceTimerMultiplier = [v23 getPingPongAvoidanceTimerMultiplier];
              v70 = [getiRATConfigController cellularStickinessThreaholdIdle] * getPingPongAvoidanceTimerMultiplier;
              [WCM_Logging logLevel:24 message:@"idle: getDeltaTimeSinceLastCellularRecommendation: delta time:%lf, effectiveBlockout time:%lld ", *&v68, v70];
              v71 = v70;
              v32 = getConnectedLinkType;
              if (v68 < v71)
              {
                goto LABEL_100;
              }

              v93 = v30;
              v63 = @"WiFi link evaluation criteria met: Motion state not stationary, idle";
              goto LABEL_168;
            }

            [WCM_Logging logLevel:24 message:@"active: getDeltaTimeSinceLastCellularRecommendation: delta time:%lf", v67 * 1000.0];
            if (v68 < [getiRATConfigController cellularStickinessThreaholdIdle])
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
            if (!getCallState)
            {
              getPingPongAvoidanceTimerMultiplier2 = [v23 getPingPongAvoidanceTimerMultiplier];
              v61 = [getiRATConfigController cellularStickinessThreaholdStationary] * getPingPongAvoidanceTimerMultiplier2;
              [WCM_Logging logLevel:24 message:@"state: idle, getDeltaTimeSinceLastCellularRecommendation: delta time:%lf, effective blockout:%lld", *&v55, v61];
              v62 = v61;
              v32 = getConnectedLinkType;
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
            if (v55 < [getiRATConfigController cellularStickinessThreaholdStationaryActive])
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
        [(WRM_HandoverManager *)selfCopy initHandoverReasonCode];
        v45 = "CT_DATA";
        if (getApplicationType)
        {
          v45 = "CT_VOICE";
        }

        v46 = "UNKNOWN_APP!!!";
        if (getApplicationType == 2)
        {
          v46 = "CT_Th_Call";
        }

        if (getApplicationType >= 2)
        {
          v47 = v46;
        }

        else
        {
          v47 = v45;
        }

        [WCM_Logging logLevel:24 message:@"{%s}invoking evaluate link", v47];
        v48 = -[WRM_HandoverManager evaluateLink::::::](selfCopy, "evaluateLink::::::", getBandwidth, getApplicationType, v102, v32, v24, [v14 getActiveSlot]);
        v49 = v48 == 1;
        if ([v23 getConnectedLinkType] == v49)
        {
          [v23 setLinkPreferenceNotificationRequired:0];
          [WCM_Logging logLevel:24 message:@"{%s}Link preference did not change for application type =%lld for client =%d current link type =%d ", v47, getApplicationType, v96, v49];
        }

        else
        {
          v50 = [-[WRM_HandoverManager getMotionController](selfCopy "getMotionController")];
          if (v32 || v48 != 1)
          {
            if (getConnectedLinkType == 1 && v48 != 1)
            {
              [(WRM_MetricsService *)v100->mMetrics updateiRATMetricWifiToCell:v102];
              if (byte_1002B7CCB == 1 && getApplicationType == 1)
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
            if (byte_1002B7CCB == 1 && getApplicationType == 1)
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
          [WCM_Logging logLevel:24 message:@"{%s}Link preference changed for application type =%lld for client =%d", v47, getApplicationType, v96];
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
        if (getApplicationType)
        {
          v57 = "CT_VOICE";
        }

        v58 = "UNKNOWN_APP!!!";
        if (getApplicationType == 2)
        {
          v58 = "CT_Th_Call";
        }

        if (getApplicationType >= 2)
        {
          v59 = v58;
        }

        else
        {
          v59 = v57;
        }

        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"<%s>{%s}Slot:%d Evaluate Handover: END.", v53, v59, [v14 getActiveSlot]);
        v22 = v22 + 1;
        selfCopy = v100;
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
  getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
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

        return [getiRATConfigController rssiHysterisisWalking];
      }

LABEL_17:
      v7 = @"Device motion: UNKNOWN";
      goto LABEL_18;
    }

    v7 = @"Device motion: VEHICULAR";
    goto LABEL_18;
  }

  [WCM_Logging logLevel:24 message:@"Device  motion: RUNNING"];

  return [getiRATConfigController rssiHysterisisRunning];
}

- (BOOL)canCellularMeetApplicationRequirementsAppTypeData
{
  getCTService = [(WRM_HandoverManager *)self getCTService];
  getSCService = [(WRM_HandoverManager *)self getSCService];
  getServingCellType = [getCTService getServingCellType];
  dataAttachedWithCellularNetwork = [getCTService dataAttachedWithCellularNetwork];
  cellularDataEnabled = [getCTService cellularDataEnabled];
  getCellularDataLQM = [getSCService getCellularDataLQM];
  if (getServingCellType == 10)
  {
    v9 = 0;
  }

  else
  {
    v9 = dataAttachedWithCellularNetwork;
  }

  v10 = v9 & cellularDataEnabled;
  if (getCellularDataLQM > 0x31)
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
  wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
  v4 = [objc_msgSend(-[WRM_HandoverManager getiRATClientFromList:](self getiRATClientFromList:{dword_1002B7CCC), "getMobilityContextFromList:", 1), "getRecommenedLinkType"}];
  if (self->mMetrics)
  {
    v5 = v4;
    self->wrmWifiCallingEnd->HO_Capability = byte_1002B7CC8;
    if ([(WCM_WiFiService *)wifiService isBeaconPerValid])
    {
      [(WCM_WiFiService *)wifiService getBeaconPer];
      v7 = (v6 * 100.0);
    }

    else
    {
      v7 = 0;
    }

    self->wrmWifiCallingEnd->Beacon_Rate = v7;
    if ([(WCM_WiFiService *)wifiService isTxPerValid])
    {
      [(WCM_WiFiService *)wifiService getTxPer];
      v9 = (v8 * 100.0);
    }

    else
    {
      v9 = 0;
    }

    self->wrmWifiCallingEnd->WiFi_TxPER = v9;
    self->wrmWifiCallingEnd->BSS_Load = [(WCM_WiFiService *)wifiService getCCA];
    isWiFiNetworkCaptive = [(WCM_WiFiService *)wifiService isWiFiNetworkCaptive];
    wrmWifiCallingEnd = self->wrmWifiCallingEnd;
    wrmWifiCallingEnd->Captive_Network = isWiFiNetworkCaptive;
    wrmWifiCallingEnd->iWLAN_Status = v5 == 1;
    self->wrmWifiCallingEnd->WOW_Enabled = [(WCM_WiFiService *)wifiService isWoWEnabled];
    getCTService = [(WRM_HandoverManager *)self getCTService];
    getSCService = [(WRM_HandoverManager *)self getSCService];
    isVoiceLQMValid = [getCTService isVoiceLQMValid];
    if (isVoiceLQMValid)
    {
      isVoiceLQMValid = [getCTService getLteVoiceLQM];
    }

    self->wrmWifiCallingEnd->LTE_Voice_LQM = isVoiceLQMValid;
    isDataLQMValid = [getSCService isDataLQMValid];
    if (isDataLQMValid)
    {
      isDataLQMValid = [getSCService getCellularDataLQM];
    }

    self->wrmWifiCallingEnd->LTE_Data_LQM = isDataLQMValid;
    [getCTService getServingCellRSRP];
    self->wrmWifiCallingEnd->LTE_RSRP = v16;
    self->wrmWifiCallingEnd->LTE_Signal_bar = [getCTService getCurrentSignalBars];
    [getCTService getServingCellSNR];
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

- (void)forceActiveModeEval:(BOOL)eval
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041CB8;
  block[3] = &unk_10023DCA0;
  evalCopy = eval;
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

- (BOOL)isAppQualityGoodOnWiFi:(int)fi
{
  v5 = +[WRM_BWEvalManager WRM_BWEvalManagerSingleton];
  qword_1002B7B70 = v5;
  if (dword_1002B7B68 != 1)
  {
    if (fi == 1)
    {
      return 1;
    }

LABEL_5:
    [(WRM_HandoverManager *)self isWiFiAppEntryCriteriaMet];
    return 1;
  }

  if (fi != 1)
  {
    goto LABEL_5;
  }

  [v5 isWiFiStreamingExitCriteriaMet];
  return 1;
}

- (void)updateAppState:(int)state Category:(id)category sessionType:(int)type
{
  dword_1002B7B68 = type;
  byte_1002B7C70 = ((state - 4) & 0xFFFFFFFB) == 0;
  [(WRM_HandoverManager *)self triggerBWEval];
  [(WRM_HandoverManager *)self evaluateWiFiVersusCell];
  [WCM_Logging logLevel:24 message:@"updateAppState: active: %d, category: %@", byte_1002B7C70, category];
}

- (void)postLinkPreference:(unint64_t)preference
{
  notify_set_state(dword_1002B7C80, preference);
  [WCM_Logging logLevel:24 message:@"preference: notifyRecommendations: %d", preference];

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
  wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
  v4 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  if ([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
  {
    v5 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
    getCTDataIndictor = [v5 getCTDataIndictor];
    getFR2Status = [v5 getFR2Status];
    *(qword_1002B7C88 + 149) = getFR2Status;
    getLocationDBFR1Count = [v5 getLocationDBFR1Count];
    *(qword_1002B7C88 + 152) = getLocationDBFR1Count;
    getLocationDBFR2Count = [v5 getLocationDBFR2Count];
    v10 = qword_1002B7C88;
    *(qword_1002B7C88 + 156) = getLocationDBFR2Count;
    *(v10 + 184) = byte_1002B7B5B;
    getRadioCoverage = [v5 getRadioCoverage];
    *(qword_1002B7C88 + 188) = getRadioCoverage;
    getRadioFrequency = [v5 getRadioFrequency];
    v13 = qword_1002B7C88;
    *(qword_1002B7C88 + 164) = *&qword_1002B7B60;
    v14 = byte_1002B7B59;
    *(v13 + 172) = byte_1002B7B58;
    *(v13 + 176) = v14;
    *(v13 + 180) = byte_1002B7B5A;
    v15 = dword_1002B7B68;
    v16 = byte_1002B7C84;
    *(v13 + 192) = getRadioFrequency;
    *(v13 + 196) = v16;
    *(v13 + 200) = v15;
    *(v13 + 160) = byte_1002B7B7A;
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"evaluateWiFiVersusCell: send metric: locationDBFR1Count %d", *(v13 + 152), [v5 getLocationDBFR1Count]);
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"evaluateWiFiVersusCell: send metric: locationDBFR2Count %d", *(qword_1002B7C88 + 156), [v5 getLocationDBFR2Count]);
  }

  else
  {
    v5 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    getCTDataIndictor = 0;
  }

  *(qword_1002B7C88 + 88) = dword_1002B7640;
  getCellularDataLQM = [v4 getCellularDataLQM];
  *(qword_1002B7C88 + 8) = getCellularDataLQM;
  [v5 getMeasureBWDataSlot];
  *(qword_1002B7C88 + 12) = v18;
  getDataSlotLoad = [v5 getDataSlotLoad];
  v20 = qword_1002B7C88;
  *(qword_1002B7C88 + 20) = getDataSlotLoad;
  *(v20 + 24) = 0;
  *(v20 + 40) = 0;
  *(v20 + 48) = 0;
  getRRCState = [v5 getRRCState];
  v22 = qword_1002B7C88;
  *(qword_1002B7C88 + 80) = getRRCState;
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
    isDeviceUsingFR2Radio = [v5 isDeviceUsingFR2Radio];
    v27 = qword_1002B7C88;
    if (isDeviceUsingFR2Radio)
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
    if (getCTDataIndictor - 16 >= 4 && getCTDataIndictor != 8)
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
    if ((getCTDataIndictor & 0x1A) == 0x10)
    {
      goto LABEL_11;
    }

LABEL_12:
    *(v27 + 52) = 0;
    goto LABEL_14;
  }

  *(qword_1002B7C88 + 72) = @"UNKNOWN_RADIO";
LABEL_14:
  if ([(WCM_WiFiService *)wifiService isWiFiPrimaryInterface])
  {
    getPointOfInterest = [(WCM_WiFiService *)wifiService getPointOfInterest];
    *(qword_1002B7C88 + 92) = getPointOfInterest;
    getCCA = [(WCM_WiFiService *)wifiService getCCA];
    *(qword_1002B7C88 + 96) = getCCA;
    getChannelUtlization = [(WCM_WiFiService *)wifiService getChannelUtlization];
    *(qword_1002B7C88 + 104) = getChannelUtlization;
    getRSSI = [(WCM_WiFiService *)wifiService getRSSI];
    *(qword_1002B7C88 + 108) = getRSSI;
    [(WCM_WiFiService *)wifiService getRxPhyRate];
    *(qword_1002B7C88 + 112) = v38;
    getSNR = [(WCM_WiFiService *)wifiService getSNR];
    *(qword_1002B7C88 + 116) = getSNR;
    getConnectedStationCount = [(WCM_WiFiService *)wifiService getConnectedStationCount];
    *(qword_1002B7C88 + 120) = getConnectedStationCount;
    [(WCM_WiFiService *)wifiService getTxPer];
    *(qword_1002B7C88 + 124) = (v41 * 100.0);
    getWghtAverageRXPhyRate = [(WCM_WiFiService *)wifiService getWghtAverageRXPhyRate];
    *(qword_1002B7C88 + 128) = getWghtAverageRXPhyRate;
    getWghtAverageSNR = [(WCM_WiFiService *)wifiService getWghtAverageSNR];
    *(qword_1002B7C88 + 132) = getWghtAverageSNR;
    getWghtAverageTXPhyRate = [(WCM_WiFiService *)wifiService getWghtAverageTXPhyRate];
    *(qword_1002B7C88 + 136) = getWghtAverageTXPhyRate;
    getWghtAverageRSSI = [(WCM_WiFiService *)wifiService getWghtAverageRSSI];
    v46 = qword_1002B7C88;
    *(qword_1002B7C88 + 100) = 0;
    *(v46 + 140) = getWghtAverageRSSI;
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
  getSCService = [(WRM_HandoverManager *)self getSCService];
  getCTService = [(WRM_HandoverManager *)self getCTService];
  getServingCellType = [getCTService getServingCellType];
  getCurrentSignalBars = [getCTService getCurrentSignalBars];
  getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
  getCellularDataLQM = [getSCService getCellularDataLQM];
  [WCM_Logging logLevel:24 message:@"isCellularEntryCriteriaMetForIMSThCallCurrentLinkWiFi, LQM: %d, Signal Bars: %d", getCellularDataLQM, getCurrentSignalBars];
  if (getServingCellType > 2)
  {
    if (getServingCellType != 3 && getServingCellType != 8)
    {
LABEL_9:
      v11 = [getiRATConfigController minSigBarTh2] - 1;
      return getCellularDataLQM > 49 || getCurrentSignalBars >= v11;
    }

    if (byte_1002B7BCA == 1)
    {
      minSigBarTh2 = [getiRATConfigController minSigBarTh2];
      if (getCellularDataLQM > 49 || getCurrentSignalBars >= (minSigBarTh2 - 1))
      {
        byte_1002B7BCA = 0;
        v10 = 1;
LABEL_21:
        [(WRM_HandoverManager *)self updateHandoverReasonCode:0x400000];
        [WCM_Logging logLevel:24 message:@"Thumper not supported on 2G radio:%ld", getCurrentSignalBars];
        return v10;
      }
    }

    else
    {
      [WCM_Logging logLevel:24 message:@"Thumper not supported on 2G radio:%ld", getCurrentSignalBars];
    }

    v10 = 0;
    goto LABEL_21;
  }

  if (getServingCellType != 2)
  {
    goto LABEL_9;
  }

  minSigBarTh22 = [getiRATConfigController minSigBarTh2];
  if (getCellularDataLQM > 49 || getCurrentSignalBars >= (minSigBarTh22 - 1))
  {
    [WCM_Logging logLevel:24 message:@"UMTS entry conditions are met bars:%ld", getCurrentSignalBars];
    return 1;
  }

  else
  {
    [WCM_Logging logLevel:24 message:@"UMTS entry conditions are not met bars:%ld", getCurrentSignalBars];
    return 0;
  }
}

- (BOOL)isCellularExitCriteriaMetForIMSThumpCallCurrentLinkCellular
{
  getCTService = [(WRM_HandoverManager *)self getCTService];
  getServingCellType = [getCTService getServingCellType];
  getCurrentSignalBars = [getCTService getCurrentSignalBars];
  v6 = [-[WRM_HandoverManager getSCService](self "getSCService")];
  getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
  [WCM_Logging logLevel:24 message:@"isCellularExitCriteriaMetForIMSThCallCurrentLinkCellular, LQM: %d, Signal Bars: %d", v6, getCurrentSignalBars];
  if (getServingCellType > 2 && (getServingCellType == 3 || getServingCellType == 8))
  {
    [(WRM_HandoverManager *)self updateHandoverReasonCode:0x400000];
    [WCM_Logging logLevel:24 message:@"isCellularExitCriteriaMetForIMSThumpCallCurrentLinkCellular:%ld", getCurrentSignalBars];
  }

  else
  {
    if ((getCurrentSignalBars > ([getiRATConfigController minSigBarTh1] + 1) || v6 >= 11) && getCurrentSignalBars > objc_msgSend(getiRATConfigController, "minSigBarTh1"))
    {
      return 0;
    }

    [(WRM_HandoverManager *)self updateHandoverReasonCode:0x80000];
    [(WRM_HandoverManager *)self updateHandoverReasonCode:0x40000];
  }

  return 1;
}

- (BOOL)can4G5GMeetApplicationRequirementsAppTypeWiFiCallingCallIdle:(int)idle
{
  getCTService = [(WRM_HandoverManager *)self getCTService];
  getServingCellType = [getCTService getServingCellType];
  getCurrentSignalBars = [getCTService getCurrentSignalBars];
  isVoLTESupported = [getCTService isVoLTESupported];
  isVoNrSupported = [getCTService isVoNrSupported];
  v10 = [getCTService activeSlot] - 1;
  v11 = v10 <= 1 && self->mSaAllowedOnWiFi[v10];
  if ((isVoLTESupported & 1) == 0)
  {
    v13 = @"canMeetApplicationRequirementsAppTypeWiFiCallingCallIdle, VoLTE not enabled,preferWiFi";
LABEL_12:
    [WCM_Logging logLevel:24 message:v13];
    return 0;
  }

  [WCM_Logging logLevel:24 message:@"canMeetApplicationRequirementsAppTypeWiFiCallingCallIdle, signal bars:%lld, VoLTE enabled: %d", getCurrentSignalBars, 1];
  if ((getServingCellType | 8) != 9)
  {
    return 0;
  }

  if (idle == 2)
  {
    if ([(WRM_HandoverManager *)self isLteEntryCriteriaMetCurrentLinkNone]|| [(WRM_HandoverManager *)self isNrEntryCriteriaMetCurrentLinkNone])
    {
      v12 = @"EntryCriteriaMetCurrentLinkNone true";
      goto LABEL_26;
    }

    v13 = @"EntryCriteriaMetCurrentLinkNone false";
    goto LABEL_12;
  }

  if (idle != 1)
  {
    if (((getServingCellType == 9) & v11 & isVoNrSupported) == 1)
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

- (BOOL)canCellularMeetApplicationRequirementsAppTypeWiFiCallingCallIdle:(int)idle
{
  getCTService = [(WRM_HandoverManager *)self getCTService];
  getServingCellType = [getCTService getServingCellType];
  getCurrentSignalBars = [getCTService getCurrentSignalBars];
  v8 = [-[WRM_HandoverManager getSCService](self "getSCService")];
  isVoLTESupported = [getCTService isVoLTESupported];
  getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
  [WCM_Logging logLevel:24 message:@"canCellularMeetApplicationRequirementsAppTypeWiFiCallingCallIdle, VoLTE enabled: %d", isVoLTESupported];
  if (getServingCellType == 10)
  {
    v11 = "UNKNOWN_RADIO ";
  }

  else if (getServingCellType - 1 >= 8)
  {
    v11 = "UNKNOWN_RADIO!!!";
    if (getServingCellType == 9)
    {
      v11 = "N_RADIO";
    }
  }

  else
  {
    v11 = (&off_10023E910)[getServingCellType - 1];
  }

  [WCM_Logging logLevel:24 message:@"Signal BARs =%ld, Registration Status = %d, Serving Cell Type: %s, Data LQM=%d", getCurrentSignalBars, self->deviceRegisteredWithCellularNetwork, v11, v8];
  if (idle == 2)
  {
    if ([(WRM_HandoverManager *)self isCellularEntryCriteriaMetForVoiceCallCurrentLinkNone])
    {
      v12 = @"isCellularEntryCriteriaMetForVoiceCallCurrentLinkNone true";
      goto LABEL_13;
    }

    v14 = @"isCellularEntryCriteriaMetForVoiceCallCurrentLinkNone false";
    goto LABEL_22;
  }

  if (idle == 1)
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

  switch(getServingCellType)
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

  if (getServingCellType != 10)
  {
    if ((getCurrentSignalBars > ([getiRATConfigController minSigBarTh1] + 1) || v8 >= 11) && getCurrentSignalBars > objc_msgSend(getiRATConfigController, "minSigBarTh1"))
    {
      [WCM_Logging logLevel:24 message:@"signal bar: %d, data LQM: %d", getCurrentSignalBars, v8];
      return 1;
    }

    [WCM_Logging logLevel:24 message:@"signal bar: %d, data LQM: %d", getCurrentSignalBars, v8];
  }

  return 0;
}

- (BOOL)canCellularMeetApplicationRequirementsAppTypeWiFiCallingCallActive:(int)active
{
  getCTService = [(WRM_HandoverManager *)self getCTService];
  getServingCellType = [getCTService getServingCellType];
  isVoLTESupported = [getCTService isVoLTESupported];
  isIMSPreferenceEnabled = [getCTService isIMSPreferenceEnabled];
  dataAttachedWithCellularNetwork = [getCTService dataAttachedWithCellularNetwork];
  getLteVoiceLQM = [getCTService getLteVoiceLQM];
  [WCM_Logging logLevel:24 message:@"canCellularMeetApplicationRequirementsAppTypeWiFiCallingCallActive, VoLTE enabled: %d, IMS_preference: %d, vLQM: %d, Attached:%d", isVoLTESupported, isIMSPreferenceEnabled, getLteVoiceLQM, dataAttachedWithCellularNetwork];
  if (active != 1)
  {
    if (getServingCellType == 9)
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
      if (getServingCellType != 1)
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

  if (((getLteVoiceLQM != 10) & isVoLTESupported & dataAttachedWithCellularNetwork) == 0)
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
  getCTService = [(WRM_HandoverManager *)self getCTService];
  getCurrentSignalBars = [getCTService getCurrentSignalBars];
  v5 = [-[WRM_HandoverManager getSCService](self "getSCService")];
  getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
  if (-[WRM_HandoverManager isActiveHandoverSupported](self, "isActiveHandoverSupported") && [getCTService isVoiceLQMValid])
  {
    if ([getCTService getLteVoiceLQM] >= 50 && getCurrentSignalBars >= objc_msgSend(getiRATConfigController, "minSigBarTh2"))
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

  else if (v5 - 50 <= 0xFFFFFFCE && getCurrentSignalBars >= [getiRATConfigController minSigBarTh2])
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
  getCTService = [(WRM_HandoverManager *)self getCTService];
  getCurrentSignalBars = [getCTService getCurrentSignalBars];
  v5 = [-[WRM_HandoverManager getSCService](self "getSCService")];
  getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
  if (-[WRM_HandoverManager isActiveHandoverSupported](self, "isActiveHandoverSupported") && [getCTService isVoiceLQMValid])
  {
    if ([getCTService getLteVoiceLQM] >= 50 && getCurrentSignalBars >= objc_msgSend(getiRATConfigController, "minSigBarTh2"))
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

  else if (v5 - 50 <= 0xFFFFFFCE && getCurrentSignalBars >= [getiRATConfigController minSigBarTh2])
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
  getCTService = [(WRM_HandoverManager *)self getCTService];
  getServingCellType = [getCTService getServingCellType];
  getCurrentSignalBars = [getCTService getCurrentSignalBars];
  v6 = [-[WRM_HandoverManager getSCService](self "getSCService")];
  getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
  if (getServingCellType > 8)
  {
    if (getServingCellType != 9)
    {
      if (getServingCellType == 10)
      {
        v9 = @"isCellularEntryCriteriaMetForVoiceCallCurrentLinkNone not met: ServingCell not known";
LABEL_22:
        [WCM_Logging logLevel:24 message:v9];
        return 0;
      }

LABEL_10:
      if (getCurrentSignalBars >= [getiRATConfigController minSigBarTh2] && v6 - 50 <= 0xFFFFFFCE)
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
    if (getServingCellType != 1)
    {
      if (getServingCellType == 2)
      {
        if (getCurrentSignalBars >= [getiRATConfigController minSigBarTh2] && v6 - 50 <= 0xFFFFFFCE)
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

- (BOOL)isNrEntryCriteriaMetCurrentLinkWiFi:(int64_t)fi
{
  getCTService = [(WRM_HandoverManager *)self getCTService];
  getCurrentSignalBars = [getCTService getCurrentSignalBars];
  [getCTService getCurrentMovAvgSignalBars];
  v8 = v7;
  isVoiceLQMValid = [getCTService isVoiceLQMValid];
  getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
  isActiveHandoverSupported = [(WRM_HandoverManager *)self isActiveHandoverSupported];
  v12 = 0;
  v13 = @"isEntryCriteriaMetCurrentLinkWiFi: Entry Criteria not met";
  if (isActiveHandoverSupported && isVoiceLQMValid)
  {
    getLteVoiceLQM = [getCTService getLteVoiceLQM];
    [WCM_Logging logLevel:24 message:@"isEntryCriteriaMetCurrentLinkWiFi, Voice LQM: %d, Signal Bars: %d, Mov Avg Sig Bars:%f", getLteVoiceLQM, getCurrentSignalBars, v8];
    if ((getLteVoiceLQM - 50) <= 0xFFFFFFCE && (v8 * 10.0) > [getiRATConfigController minMovSigBarTh0] && getCurrentSignalBars >= (objc_msgSend(getiRATConfigController, "minSigBarTh0") - fi))
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

- (BOOL)isLteEntryCriteriaMetCurrentLinkWiFi:(int64_t)fi
{
  getSCService = [(WRM_HandoverManager *)self getSCService];
  getCTService = [(WRM_HandoverManager *)self getCTService];
  getCurrentSignalBars = [getCTService getCurrentSignalBars];
  getCellularDataLQM = [getSCService getCellularDataLQM];
  [getCTService getCurrentMovAvgSignalBars];
  v10 = v9;
  isVoiceLQMValid = [getCTService isVoiceLQMValid];
  getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
  if (![(WRM_HandoverManager *)self isActiveHandoverSupported]|| !isVoiceLQMValid)
  {
    if (getCellularDataLQM - 50 <= 0xFFFFFFCE && (v10 * 10.0) > [getiRATConfigController minMovSigBarTh0] && getCurrentSignalBars >= (objc_msgSend(getiRATConfigController, "minSigBarTh0") - fi))
    {
      v14 = 1;
      v15 = @"isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi: Data LQM better than kPOOR";
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  getLteVoiceLQM = [getCTService getLteVoiceLQM];
  [WCM_Logging logLevel:24 message:@"isLteEntryCriteriaMetCurrentLinkWiFi, Voice LQM: %d, Signal Bars: %d, Mov Avg Sig Bars:%f", getLteVoiceLQM, getCurrentSignalBars, v10];
  if ((getLteVoiceLQM - 50) > 0xFFFFFFCE || (v10 * 10.0) <= [getiRATConfigController minMovSigBarTh0] || getCurrentSignalBars < (objc_msgSend(getiRATConfigController, "minSigBarTh0") - fi))
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

- (BOOL)isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi:(BOOL)fi
{
  fiCopy = fi;
  getSCService = [(WRM_HandoverManager *)self getSCService];
  getCTService = [(WRM_HandoverManager *)self getCTService];
  getServingCellType = [getCTService getServingCellType];
  getCurrentSignalBars = [getCTService getCurrentSignalBars];
  [getCTService getCurrentMovAvgSignalBars];
  v10 = v9;
  getCellularDataLQM = [getSCService getCellularDataLQM];
  isAudioQualityGood = [getCTService isAudioQualityGood];
  getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
  v14 = getiRATConfigController;
  if (fiCopy)
  {
    v15 = 0;
  }

  else
  {
    v15 = 2;
  }

  if (getServingCellType > 8)
  {
    if (getServingCellType != 9)
    {
      if (getServingCellType == 10)
      {
        v20 = @"isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi not met: ServingCell not known";
LABEL_36:
        [WCM_Logging logLevel:24 message:v20, v25, v26, *&v27];
        return 0;
      }

LABEL_19:
      if (getCurrentSignalBars >= ([getiRATConfigController minSigBarTh0] - v15))
      {
        minMovSigBarTh0 = [v14 minMovSigBarTh0];
        v22 = getCellularDataLQM - 50 >= 0xFFFFFFCF || (v10 * 10.0) <= minMovSigBarTh0;
        v23 = !v22;
        if ((v23 & isAudioQualityGood) == 1)
        {
          v19 = 1;
          [WCM_Logging logLevel:24 message:@"default: isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi met. CS Audio Quality: %d, SigBars:%d, MovAvgBars:%f", 1, getCurrentSignalBars, v10];
          return v19;
        }
      }

      [WCM_Logging logLevel:24 message:@"default: isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi not met. CS Audio Quality: %d, SigBars:%d, MovAvgBars:%f", isAudioQualityGood, getCurrentSignalBars, v10];
      return 0;
    }

    return [(WRM_HandoverManager *)self isNrEntryCriteriaMetCurrentLinkWiFi:v15];
  }

  else
  {
    if (getServingCellType != 1)
    {
      if (getServingCellType == 2)
      {
        if (getCurrentSignalBars >= ([getiRATConfigController minSigBarTh0] - v15))
        {
          minMovSigBarTh02 = [v14 minMovSigBarTh0];
          v17 = getCellularDataLQM - 50 >= 0xFFFFFFCF || (v10 * 10.0) <= minMovSigBarTh02;
          v18 = !v17;
          if ((v18 & isAudioQualityGood) == 1)
          {
            v19 = 1;
            [WCM_Logging logLevel:24 message:@"isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi met: LQM POOR. CS Audio Quality: %d, SigBars:%d, MovAvgBars:%f", 1, getCurrentSignalBars, v10];
            return v19;
          }
        }

        v27 = v10;
        v25 = isAudioQualityGood;
        v26 = getCurrentSignalBars;
        v20 = @"isCellularEntryCriteriaMetForIMSVoiceCallCurrentLinkWiFi Entry Criteria not met, CS Audio Quality:%d, SigBars:%d, MovAvgBars:%f";
        goto LABEL_36;
      }

      goto LABEL_19;
    }

    return [(WRM_HandoverManager *)self isLteEntryCriteriaMetCurrentLinkWiFi:v15];
  }
}

- (BOOL)isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkLTE:(BOOL)e
{
  eCopy = e;
  getCTService = [(WRM_HandoverManager *)self getCTService];
  getServingCellType = [getCTService getServingCellType];
  [getCTService getServingCellRSRP];
  v8 = v7;
  [getCTService getCurrentAudioErasure];
  v10 = v9;
  isSrvccHandoverInProgress = [getCTService isSrvccHandoverInProgress];
  getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
  if (isSrvccHandoverInProgress && eCopy)
  {
    [WCM_Logging logLevel:24 message:@"isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkLT did not meet: SRVCC Handover in progress"];
    return 0;
  }

  if (!-[WRM_HandoverManager isActiveHandoverSupported](self, "isActiveHandoverSupported") || ![getCTService isVoiceLQMValid] || getServingCellType != 1)
  {
    v18 = [-[WRM_HandoverManager getSCService](self "getSCService")];
    getCurrentSignalBars = [getCTService getCurrentSignalBars];
    [WCM_Logging logLevel:24 message:@"isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkLTE, Data LQM: %d, Signal Bars: %d", v18, getCurrentSignalBars];
    if ((v18 > 10 || getCurrentSignalBars > ([getiRATConfigController minSigBarTh1] + 1)) && getCurrentSignalBars > objc_msgSend(getiRATConfigController, "minSigBarTh1"))
    {
      return 0;
    }

    goto LABEL_26;
  }

  [WCM_Logging logLevel:24 message:@"Evaluating LTE Link Quality Metrics"];
  getLteVoiceLQM = [getCTService getLteVoiceLQM];
  getCurrentSignalBars2 = [getCTService getCurrentSignalBars];
  [WCM_Logging logLevel:24 message:@"isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkLTE, Voice LQM: %d, Signal Bars: %d, RSRP: %f, Erasure: %f", getLteVoiceLQM, getCurrentSignalBars2, *&v8, *&v10];
  if (!eCopy)
  {
    if ((getLteVoiceLQM != 10 || getCurrentSignalBars2 > ([getiRATConfigController minSigBarTh1] + 1)) && getCurrentSignalBars2 > objc_msgSend(getiRATConfigController, "minSigBarTh1"))
    {
      return 0;
    }

    goto LABEL_26;
  }

  v15 = v8 <= -115.0 && v10 >= 5.0;
  if (getLteVoiceLQM == 10)
  {
    if (!v15)
    {
      selfCopy3 = self;
      v17 = 0x80000;
LABEL_27:
      [(WRM_HandoverManager *)selfCopy3 updateHandoverReasonCode:v17];
      return 1;
    }

LABEL_23:
    selfCopy3 = self;
    v17 = 0x100000;
    goto LABEL_27;
  }

  if (v15)
  {
    goto LABEL_23;
  }

  minSigBarTh1 = [getiRATConfigController minSigBarTh1];
  result = 0;
  if (getCurrentSignalBars2 <= minSigBarTh1 && getLteVoiceLQM < 51)
  {
LABEL_26:
    [(WRM_HandoverManager *)self updateHandoverReasonCode:0x80000];
    selfCopy3 = self;
    v17 = 0x40000;
    goto LABEL_27;
  }

  return result;
}

- (BOOL)isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkNR:(BOOL)r
{
  rCopy = r;
  getCTService = [(WRM_HandoverManager *)self getCTService];
  isSrvccHandoverInProgress = [getCTService isSrvccHandoverInProgress];
  getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
  if (isSrvccHandoverInProgress && rCopy)
  {
    [WCM_Logging logLevel:24 message:@"isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkLT did not meet: SRVCC Handover in progress"];
    return 0;
  }

  [WCM_Logging logLevel:24 message:@"Evaluating LTE Link Quality when device is camped on NR CELL"];
  getLteVoiceLQM = [getCTService getLteVoiceLQM];
  getCurrentSignalBars = [getCTService getCurrentSignalBars];
  [getCTService getServingCellRSRP];
  v12 = v11;
  [getCTService getCurrentAudioErasure];
  v14 = v13;
  [WCM_Logging logLevel:24 message:@"isCellularExitCriteriaMetForIMSVoiceCallCurrentLinkNR, Voice LQM: %d, Signal Bars: %d, RSRP: %f, Erasure:%f", getLteVoiceLQM, getCurrentSignalBars, *&v12, *&v13];
  if (!rCopy)
  {
    if ((getLteVoiceLQM != 10 || getCurrentSignalBars > ([getiRATConfigController minSigBarTh1] + 1)) && getCurrentSignalBars > objc_msgSend(getiRATConfigController, "minSigBarTh1"))
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

  if (getLteVoiceLQM == 10)
  {
    if (!v15)
    {
      selfCopy3 = self;
      v17 = 0x80000;
LABEL_20:
      [(WRM_HandoverManager *)selfCopy3 updateHandoverReasonCode:v17];
      return 1;
    }

LABEL_16:
    selfCopy3 = self;
    v17 = 0x100000;
    goto LABEL_20;
  }

  if (v15)
  {
    goto LABEL_16;
  }

  minSigBarTh1 = [getiRATConfigController minSigBarTh1];
  result = 0;
  if (getCurrentSignalBars <= minSigBarTh1 && getLteVoiceLQM < 51)
  {
LABEL_19:
    [(WRM_HandoverManager *)self updateHandoverReasonCode:0x80000];
    selfCopy3 = self;
    v17 = 0x40000;
    goto LABEL_20;
  }

  return result;
}

- (BOOL)isCellularExitCriteriaMetForVoiceCallCallCurrentLinkUMTS
{
  getSCService = [(WRM_HandoverManager *)self getSCService];
  getCTService = [(WRM_HandoverManager *)self getCTService];
  isAudioQualityGood = [getCTService isAudioQualityGood];
  getCellularDataLQM = [getSCService getCellularDataLQM];
  getCurrentSignalBars = [getCTService getCurrentSignalBars];
  getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
  [WCM_Logging logLevel:24 message:@"isCellularExitCriteriaMetForVoiceCallCallCurrentLinkUMTS, LQM: %d, Signal Bars: %d. CS audio quality: %d", getCellularDataLQM, getCurrentSignalBars, isAudioQualityGood];
  if (getCurrentSignalBars <= ([getiRATConfigController minSigBarTh1] + 1) && getCellularDataLQM < 11 || getCurrentSignalBars <= objc_msgSend(getiRATConfigController, "minSigBarTh1"))
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

  [WCM_Logging logLevel:24 message:v10, getCurrentSignalBars];
  return v9;
}

- (BOOL)isCellularViableForWiFiBlackList
{
  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  getCTService = [(WRM_HandoverManager *)self getCTService];
  getLteVoiceLQM = [getCTService getLteVoiceLQM];
  getCurrentSignalBars = [getCTService getCurrentSignalBars];
  return getLteVoiceLQM != 10 && getCurrentSignalBars > 2;
}

- (BOOL)isWiFiBeaconLossQualityIndicatorGood:(unint64_t)good :(unint64_t)a4 :(int)a5
{
  v7 = [(WCM_WiFiController *)self->mWiFi wifiService:good];
  if (![(WCM_WiFiService *)v7 isBeaconPerValid])
  {
    return 1;
  }

  getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
  [(WCM_WiFiService *)v7 getBeaconPer];
  v10 = (v9 * 100.0);
  [WCM_Logging logLevel:24 message:@" Beacon PER %lld", v10];
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
  v9 = [(WRM_HandoverManager *)self getIWLANServiceType:good];
  if (v9 != 1)
  {
    wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
    getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
    getCCA = [(WCM_WiFiService *)wifiService getCCA];
    if (a6 == 1)
    {
      if (!v7)
      {
        minIdleWiFiCcaTh1 = [getiRATConfigController minIdleWiFiCcaTh1];
        goto LABEL_9;
      }
    }

    else if (!a6)
    {
      if (v7)
      {
        minIdleWiFiCcaTh1 = [getiRATConfigController minActiveWiFiCcaTh0];
      }

      else
      {
        minIdleWiFiCcaTh1 = [getiRATConfigController minIdleWiFiCcaTh0];
      }

LABEL_9:
      if (getCCA >= minIdleWiFiCcaTh1)
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

- (BOOL)isWiFiArqQualityIndicatorGoodUserData:(unint64_t)data :(unint64_t)a4 :(int)a5 :(BOOL)a6
{
  v6 = a6;
  getIWLANServiceType = [(WRM_HandoverManager *)self getIWLANServiceType];
  if (getIWLANServiceType != 1)
  {
    wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
    getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
    [(WCM_WiFiService *)wifiService getTxPer];
    v14 = (v13 * 100.0);
    isTxPerValid = [(WCM_WiFiService *)wifiService isTxPerValid];
    [(WCM_WiFiService *)wifiService getTxFail];
    v17 = v16;
    [(WCM_WiFiService *)wifiService getRxRatio];
    v19 = v18 * 100.0;
    [(WCM_WiFiService *)wifiService getCumulativeTxPer];
    [WCM_Logging logLevel:24 message:@"Actual Tx PER %lld, TX Fail %lld, RX Ratio=%lf, CumTxPER %lld, TX PER valid: %d", v14, v17, *&v19, (v20 * 100.0), isTxPerValid];
    if (!isTxPerValid)
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
        if (a5 == 1 && [getiRATConfigController minActiveWiFiTxPktLossRateTh1] < v14)
        {
          v21 = @"iRAT detected WiFi bad because of WiFi_Metrics: TX PER THREASHOLD: %lld";
LABEL_13:
          +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, v21, [getiRATConfigController minActiveWiFiTxPktLossRateTh1]);
LABEL_17:
          [(WRM_HandoverManager *)self updateHandoverReasonCode:16];
          LOBYTE(getIWLANServiceType) = 0;
          return getIWLANServiceType;
        }

        goto LABEL_18;
      }

      minActiveWiFiTxPktLossRateTh0 = [getiRATConfigController minActiveWiFiTxPktLossRateTh0];
    }

    else
    {
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"TX PER THREASHOLD: %lld", [getiRATConfigController minActiveWiFiTxPktLossRateTh1]);
      if (a5)
      {
        if (a5 == 1 && [getiRATConfigController minIdleWiFiTxPktLossRateTh1] < v14)
        {
          v21 = @"iRAT detected WiFi bad because of WiFi_Metrics: TX PER THREASHOLD:%lld";
          goto LABEL_13;
        }

LABEL_18:
        LOBYTE(getIWLANServiceType) = 1;
        return getIWLANServiceType;
      }

      minActiveWiFiTxPktLossRateTh0 = [getiRATConfigController minIdleWiFiTxPktLossRateTh0];
    }

    if (minActiveWiFiTxPktLossRateTh0 < v14)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  return getIWLANServiceType;
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
    getWiFiCallingController = [(WRM_HandoverManager *)self getWiFiCallingController];
    averagedNominalJitterBufferDelay = [getWiFiCallingController averagedNominalJitterBufferDelay];
    [getWiFiCallingController movAvgRxPktLoss];
    v14 = v13;
    [WCM_Logging logLevel:24 message:@"evaluateActiveCallQuality: Avg RSSI: %lld, CumTX PER: %lld, AVG Nominal Jitter Buffer:%lld, RTP pkt loss:%lld ", getRSSI, v9, averagedNominalJitterBufferDelay, v13];
    [WCM_Logging logLevel:24 message:@"Handover Manager: Checking active call Quality evaluation criteria"];
    v16 = averagedNominalJitterBufferDelay <= 1000 && v14 <= 20 && v9 <= 20;
    if (v16 || getRSSI < -65)
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
    wifiService = [(WCM_WiFiController *)mWiFi wifiService];
    getRSSI = [(WCM_WiFiService *)wifiService getRSSI];
    [(WCM_WiFiService *)wifiService getRxRatio];
    v7 = v6;
    isRxRatioValid = [(WCM_WiFiService *)wifiService isRxRatioValid];
    [(WCM_WiFiService *)wifiService getTxPer];
    v10 = (v9 * 100.0);
    isTxPerValid = [(WCM_WiFiService *)wifiService isTxPerValid];
    v12 = [(WCM_WiFiService *)wifiService getPointOfInterest]- 1 < 2;
    v13 = (v10 > 5) & isTxPerValid | isRxRatioValid & (v7 >= 0.3);
  }

  else
  {
    v12 = 0;
    getRSSI = 0;
    v13 = 0;
  }

  getCTService = [(WRM_HandoverManager *)self getCTService];
  isVoLTESupported = [getCTService isVoLTESupported];
  if ([(WRM_iRATConfig *)self->miRATConfig ctServiceType]!= 2 && (!isVoLTESupported || ![(WRM_HandoverManager *)self isActiveHandoverSupported]))
  {
    v21 = @"isWiFiVoIPQualityGoodEnough:VoLTE not enabled or handover not supported on device";
    goto LABEL_13;
  }

  getWiFiCallingController = [(WRM_HandoverManager *)self getWiFiCallingController];
  if (!getWiFiCallingController)
  {
    [WCM_Logging logLevel:24 message:@"isWiFiVoIPQualityGoodEnough: tmpPtrWiFiCallingController == NULL"];
    [0 resetRTPMetrics];
    [0 resetCumulativeRTPMetrics];
    v22 = 0;
LABEL_18:
    [v22 resetPeriodicRTPStats];
    return 1;
  }

  v17 = getWiFiCallingController;
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

  getCallState = [getCTService getCallState];
  isCallOnHold = [getCTService isCallOnHold];
  isCallInConference = [getCTService isCallInConference];
  if (getCallState != 1)
  {
    v23 = @"isWiFiVoIPQualityGoodEnough: do not use RTP metrics, call not active";
    goto LABEL_17;
  }

  if ((isCallOnHold | isCallInConference))
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

  if ((_os_feature_enabled_impl() & v12) == 1 && getRSSI >= -69)
  {
    v21 = @"isWiFiVoIPQualityGoodEnough: device in commonly used wifi and in good RSSI";
    goto LABEL_13;
  }

  getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"Rx Pkt loss: %lld, nominal buffer delay %lld", [v17 rxPktLoss], objc_msgSend(v17, "nominalJitterBufferDelay"));
  rxPktLoss = [v17 rxPktLoss];
  if (rxPktLoss < [getiRATConfigController handoverRxPktLossThreshold] || !((getRSSI < -70) | v13 & 1))
  {
    [WCM_Logging logLevel:24 message:@"isWiFiVoIPQualityGoodEnough: true"];
    byte_1002B7BCA = 0;
    return 1;
  }

  [WCM_Logging logLevel:24 message:@"isWiFiVoIPQualityGoodEnough: false"];
  byte_1002B7BCA = 1;
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"WiFiMetrics: triggering handover due to RTP Erasure: %lld, RTP Erasure THREASHOLD: %lld ", [v17 rxPktLoss], objc_msgSend(getiRATConfigController, "handoverRxPktLossThreshold"));
  [(WRM_HandoverManager *)self updateHandoverReasonCode:256];
  return 0;
}

- (BOOL)isMovingAverageAudioQualityOfCurrentCallGood:(int)good
{
  wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
  getRSSI = [(WCM_WiFiService *)wifiService getRSSI];
  if ([(WRM_HandoverManager *)self getIWLANServiceType]== 1)
  {
    return 1;
  }

  getWiFiCallingController = [(WRM_HandoverManager *)self getWiFiCallingController];
  if (byte_1002B7CC9)
  {
    getCTService = [(WRM_HandoverManager *)self getCTService];
    getCallState = [getCTService getCallState];
    isCallOnHold = [getCTService isCallOnHold];
    isCallInConference = [getCTService isCallInConference];
    if (getCallState == 1)
    {
      v12 = isCallInConference;
      if (-[WRM_iRATConfig ctServiceType](self->miRATConfig, "ctServiceType") != 2 && (![getCTService isVoLTESupported] || !-[WRM_HandoverManager isActiveHandoverSupported](self, "isActiveHandoverSupported")))
      {
        v13 = @"isWiFiVoIPQualityGoodEnough:VoLTE not enabled or handover not supported on device";
        goto LABEL_24;
      }

      if ((isCallOnHold | v12))
      {
        v13 = @"isWiFiVoIPQualityGoodEnough: do not use RTP metrics, call on hold or in conference";
LABEL_24:
        [WCM_Logging logLevel:24 message:v13];
        return 1;
      }

      getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
      if (!good)
      {
        v13 = @"isMovingAverageAudioQualityOfCurrentCallGood: returned";
        goto LABEL_24;
      }

      v16 = getiRATConfigController;
      mWiFi = self->mWiFi;
      if (mWiFi)
      {
        wifiService2 = [(WCM_WiFiController *)mWiFi wifiService];
        if (!wifiService2)
        {
          [WCM_Logging logLevel:24 message:@"evaluateActiveCallQuality: ptrWiFiService==NULL"];
          goto LABEL_38;
        }

        wifiService = wifiService2;
      }

      [(WCM_WiFiService *)wifiService getMovingAverageTxPer];
      v20 = (v19 * 100.0);
      isMovingAverageTxPerValid = [(WCM_WiFiService *)wifiService isMovingAverageTxPerValid];
      movAvgNominalJitterBufferDelay = [getWiFiCallingController movAvgNominalJitterBufferDelay];
      [getWiFiCallingController movAvgRxPktLoss];
      v24 = v23;
      [getWiFiCallingController movAvgIdleRxPktLoss];
      v26 = v25;
      if (v25 >= 0x64)
      {
        [WCM_Logging logLevel:24 message:@"evaluateActiveCallQuality: discard invalid metrics"];
        v26 = 0;
      }

      [WCM_Logging logLevel:24 message:@"isMovingAverageAudioQualityOfCurrentCallGood: TX PER (Mov Avg): %lld, Moving Avg RTP packet loss: %lld, Moving Avg Valid: %d, Mov Jitter Buffer Delay: %lld, Total Mov AVG RTP packet loss: %lld ", v20, v24, isMovingAverageTxPerValid, movAvgNominalJitterBufferDelay, v26];
      if ([v16 handoverAvgRxPktLossThreshold] >= v24 && v26 <= objc_msgSend(v16, "handoverAvgIdleRxPktLossThreshold"))
      {
        v32 = 1;
      }

      else
      {
        v27 = -[WRM_HandoverManager isCellularViableForWiFiBlackList](self, "isCellularViableForWiFiBlackList") || v26 > [v16 handoverAvgIdleRxPktLossThreshold];
        byte_1002B7BC9 = v27;
        minActiveWiFiAvgTxPktLossRateTh = [v16 minActiveWiFiAvgTxPktLossRateTh];
        handoverAvgRxPktLossThreshold = [v16 handoverAvgRxPktLossThreshold];
        [WCM_Logging logLevel:24 message:@"Handover Manager: Moving average audio quality was bad, WiFiMetics: TX PER THREASHOLD: %lld, RX RTP THREASHOLD: %lld, VoIP status:%d", minActiveWiFiAvgTxPktLossRateTh, handoverAvgRxPktLossThreshold, byte_1002B7BC9];
        v32 = 0;
      }

      minActiveWiFiAvgTxPktLossRateTh2 = [v16 minActiveWiFiAvgTxPktLossRateTh];
      v34 = !isMovingAverageTxPerValid;
      if (minActiveWiFiAvgTxPktLossRateTh2 >= v20)
      {
        v34 = 1;
      }

      if ((v34 & 1) == 0)
      {
        if ([(WRM_HandoverManager *)self isCellularViableForWiFiBlackList]&& getRSSI > -70)
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
  [getWiFiCallingController resetRTPMetrics];
  [getWiFiCallingController resetCumulativeRTPMetrics];
  [getWiFiCallingController resetPeriodicRTPStats];
  return 1;
}

- (BOOL)isIMSTransportQualityGood
{
  mSymtomsService = self->mSymtomsService;
  if (!mSymtomsService)
  {
    goto LABEL_6;
  }

  isWiFiNotUsableForIMSCall = [(WRM_SymptomsService *)mSymtomsService isWiFiNotUsableForIMSCall];
  v5 = isWiFiNotUsableForIMSCall;
  isIMSTransportQualityGood = [(WRM_SymptomsService *)self->mSymtomsService isIMSTransportQualityGood];
  [WCM_Logging logLevel:24 message:@"Handover Manager: isIMSTransportQualityGood: %d, WiFi Not Usable:%d", isIMSTransportQualityGood, v5];
  if (!isWiFiNotUsableForIMSCall)
  {
    if (!isIMSTransportQualityGood)
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

- (BOOL)isUplinkAudioQualityOfCurrentCallGood:(int)good
{
  if ([(WRM_HandoverManager *)self getIWLANServiceType]!= 1)
  {
    getCTService = [(WRM_HandoverManager *)self getCTService];
    if ([getCTService getCallState] == 1)
    {
      if (-[WRM_iRATConfig ctServiceType](self->miRATConfig, "ctServiceType") == 2 || [getCTService isVoLTESupported] && -[WRM_HandoverManager isActiveHandoverSupported](self, "isActiveHandoverSupported"))
      {
        if (good)
        {
          wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
          [(WCM_WiFiService *)wifiService getTxPer];
          v8 = v7 * 100.0;
          [(WCM_WiFiService *)wifiService getTxRetryPercent];
          v10 = v9;
          isTxPerValid = [(WCM_WiFiService *)wifiService isTxPerValid];
          isRetryValid = [(WCM_WiFiService *)wifiService isRetryValid];
          getCCA = [(WCM_WiFiService *)wifiService getCCA];
          getChannelUtlization = [(WCM_WiFiService *)wifiService getChannelUtlization];
          isQBSSLoadValid = [(WCM_WiFiService *)wifiService isQBSSLoadValid];
          getRSSI = [(WCM_WiFiService *)wifiService getRSSI];
          if (v8 < 2.0 || isTxPerValid == 0)
          {
            v18 = 1;
          }

          else
          {
            v20 = getChannelUtlization;
            if (!isQBSSLoadValid)
            {
              v20 = getCCA;
            }

            v21 = isRetryValid ^ 1;
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

            v22 = getRSSI;
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

- (void)handleInternalMessage:(id)message
{
  uint64 = xpc_dictionary_get_uint64(message, "kInternalMessageId");
  value = xpc_dictionary_get_value(message, "kInternalMessageArgs");
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

- (void)handleMotionUpdate:(id)update
{
  int64 = xpc_dictionary_get_int64(update, "kWRMM_MOTION_STATE");
  [(WRM_HandoverManager *)self evaluateHandover];
  [WCM_Logging logLevel:24 message:@"handleMotionUpdate received: %s: motion state: %d", "[WRM_HandoverManager(privateFunctions) handleMotionUpdate:]", int64];
}

+ (id)allocWithZone:(_NSZone *)zone
{
  wRM_HandoverManagerSingleton = [self WRM_HandoverManagerSingleton];

  return wRM_HandoverManagerSingleton;
}

- (void)addiRatClient:(id)client
{
  miRATClientContexts = self->miRATClientContexts;
  objc_sync_enter(miRATClientContexts);
  [(NSMutableArray *)self->miRATClientContexts addObject:client];
  [(WRM_HandoverManager *)self existingContexts];

  objc_sync_exit(miRATClientContexts);
}

- (void)removeiRatClient:(id)client
{
  miRATClientContexts = self->miRATClientContexts;
  objc_sync_enter(miRATClientContexts);
  [(WRM_HandoverManager *)self existingContexts];
  [(NSMutableArray *)self->miRATClientContexts removeObject:client];
  [(WRM_HandoverManager *)self existingContexts];

  objc_sync_exit(miRATClientContexts);
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
    getStandaloneLinkPreferenceMetrics = [(WRM_MetricsService *)v2->mMetrics getStandaloneLinkPreferenceMetrics];
    v2->mDataLinkPrefMetrics = getStandaloneLinkPreferenceMetrics;
    getStandaloneLinkPreferenceMetrics->metricsUpdate = 0;
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

- (void)rxVoIPAppNotification:(BOOL)notification callType:(int)type
{
  if ((byte_1002B7C01 & 1) == 0)
  {
    if (notification)
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

- (void)callObserver:(id)observer callChanged:(id)changed
{
  if ([changed hasConnected])
  {
    hasEnded = [changed hasEnded];
    byte_1002B7C01 = hasEnded ^ 1;
    v7 = 1;
    if (((hasEnded ^ 1) & 1) == 0)
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

    v8 = [@"com.apple.coretelephony" isEqualToString:{objc_msgSend(changed, "providerIdentifier")}];
    v9 = 1;
    if (([@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider" isEqualToString:{objc_msgSend(changed, "providerIdentifier")}] & 1) == 0)
    {
      if ([@"com.apple.coretelephony" isEqualToString:{objc_msgSend(changed, "providerIdentifier")}])
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }

    isVideo = [changed isVideo];
    providerIdentifier = [changed providerIdentifier];
    if (isVideo)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    if (isVideo)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    [(WRM_HandoverManager *)self notifyBBVoIPState:v9];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"Call Active: %d, provider id: %@, VoIP app type: %d, VoIP CallType: %d, isTelephonyCall: %d", byte_1002B7C01, [changed providerIdentifier], v9, v13, v8);
    v14 = +[WCM_PolicyManager singleton];
    v15 = byte_1002B7C01;

    [v14 updateCallStateActive:v15];
  }
}

- (void)updateAnyCallState:(int)state providerIdentifier:(id)identifier
{
  if (identifier)
  {
    if ([identifier length])
    {
      mQueue = self->mQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000D1C34;
      block[3] = &unk_10023E218;
      stateCopy = state;
      block[4] = self;
      block[5] = identifier;
      dispatch_async(mQueue, block);
    }
  }
}

- (void)updateControllerSession:(id)session ofId:(unint64_t)id
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D1F24;
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
  v4[2] = sub_1000D2418;
  v4[3] = &unk_10023DC80;
  v4[4] = self;
  v4[5] = state;
  dispatch_async(mQueue, v4);
}

- (void)handleSessionNotification:(id)notification
{
  uint64 = xpc_dictionary_get_uint64(notification, "kMessageId");
  if (uint64 <= 407)
  {
    if (uint64 > 201)
    {
      switch(uint64)
      {
        case 202:

          [(WRM_HandoverManager *)self handlePeriodicRTPMetrics:notification];
          break;
        case 400:
          [(WRM_HandoverManager *)self handleLinkPrefSubscribe:notification];
          [(WCM_WiFiController *)self->mWiFi toggleWiFiLQMIfNeeded:[(WRM_HandoverManager *)self needWiFiLQM]];
          [(WRM_HandoverManager *)self registerForCTNotifications];

          [(WRM_HandoverManager *)self registerForSCNotifications];
          break;
        case 401:

          [(WRM_HandoverManager *)self handleSubscribeStatusUpdate:notification];
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

      [(WRM_HandoverManager *)self handleWiFiStateChaneEvents:notification];
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

        [(WRM_HandoverManager *)self handleCellularLinkQualityUpdate:notification];
        break;
      case 411:

        [(WRM_HandoverManager *)self handleBBAssertionBGAppActiveRequest:notification];
        break;
      case 416:

        [(WRM_HandoverManager *)self handleIWLANMetrics:notification];
        break;
    }
  }

  else if (uint64 > 700)
  {
    if (uint64 == 701)
    {

      [(WRM_HandoverManager *)self handleSIPMetricsRecevied:notification];
    }

    else if (uint64 == 1000)
    {
      value = xpc_dictionary_get_value(notification, "kMessageArgs");

      [(WRM_HandoverManager *)self handleInternalMessage:value];
    }
  }

  else if (uint64 == 420)
  {

    [(WRM_HandoverManager *)self handleSIPStalledMetricsRecevied:notification];
  }

  else if (uint64 == 700)
  {

    [(WRM_HandoverManager *)self handleIPTelephonyMetrics:notification];
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

- (void)handleControllerAvailability:(unint64_t)availability
{
  if (![(WRM_HandoverManager *)self enableiRATManager])
  {
    return;
  }

  if (availability > 8)
  {
    switch(availability)
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
        if (availability == 8)
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
    if (availability != 1)
    {
      if (availability != 7)
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
    LOBYTE(isWiFiPrimaryInterface) = getRSSI >= [-[WRM_HandoverManager getiRATConfigController](self "getiRATConfigController")];
  }

  return isWiFiPrimaryInterface;
}

- (void)setCarPlaySession:(BOOL)session
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2D2C;
  block[3] = &unk_10023DCA0;
  sessionCopy = session;
  dispatch_async(mQueue, block);
}

- (void)toggleSAState:(BOOL)state
{
  mQueue = self->mQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000D2DE8;
  v4[3] = &unk_10023E008;
  stateCopy = state;
  v4[4] = self;
  dispatch_async(mQueue, v4);
}

- (void)triggerEnableSA:(BOOL)a
{
  mQueue = self->mQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000D3124;
  v4[3] = &unk_10023E008;
  v4[4] = self;
  aCopy = a;
  dispatch_async(mQueue, v4);
}

- (void)switchPrivateNwDataSim:(int64_t)sim currentSlotQuality:(int)quality anyCallState:(int)state
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D37DC;
  block[3] = &unk_10023DDD8;
  block[4] = self;
  block[5] = sim;
  qualityCopy = quality;
  stateCopy = state;
  dispatch_async(mQueue, block);
}

- (void)submitMetricsCBRSWithDataSimRecommendation:(BOOL)recommendation forSimSlot:(int64_t)slot
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D3ACC;
  block[3] = &unk_10023DF40;
  block[4] = self;
  block[5] = slot;
  recommendationCopy = recommendation;
  dispatch_async(mQueue, block);
}

- (BOOL)isRLHandoverPolicyEnabledOnSlot:(int64_t)slot
{
  v5 = _os_feature_enabled_impl();
  result = 0;
  if ((slot - 1) <= 1 && v5)
  {
    return self->mSaAllowedOnWiFi[slot + 1] || MGGetBoolAnswer() && qword_1002B7CC0 && ([qword_1002B7CC0 getRLHandoverPolicyEnabled] & 1) != 0;
  }

  return result;
}

- (void)showHOAlertUI:(BOOL)i
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
          getDate = [v11 getDate];
          v13 = objc_alloc_init(NSDateFormatter);
          [v13 setDateFormat:@"MM/dd HH:mm:ss"];
          v14 = [v13 stringFromDate:getDate];
          v7 = (v9 + 1);
          selfCopy = self;
          if ([v11 mApp] == 1)
          {
            v16 = "vo";
          }

          else
          {
            v16 = "dat";
          }

          mType = [v11 mType];
          v18 = "->C";
          if (mType == 200)
          {
            v18 = "->W";
          }

          v22 = v16;
          self = selfCopy;
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

- (void)handleWiFiLinkQualityUpdate:(id)update
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

- (void)handleWiFiStateChaneEvents:(id)events
{
  value = xpc_dictionary_get_value(events, "kMessageArgs");
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
      getCTService = [(WRM_HandoverManager *)self getCTService];
      if (getCTService)
      {
        v17 = getCTService;
        [getCTService invalidateAudioQualityMetrics];
        [v17 initMovAverageOfSignalBar];
      }

      [(WRM_HandoverManager *)self toggleSAState:1];
      byte_1002B7CD0 = 0;
      v18 = xpc_dictionary_get_int64(value, "kWRMM_WiFi_RSSI");
      v19 = xpc_dictionary_get_int64(value, "kWRMM_WiFi_SNR");
      [WCM_Logging logLevel:24 message:@"Handover Manager:Linkup event received"];
      wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
      [(WCM_WiFiService *)wifiService setRSSI:v18];
      [(WCM_WiFiService *)wifiService setSNR:v19];
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

- (void)handleCellularLinkQualityUpdate:(id)update
{
  [WCM_Logging logLevel:24 message:@"Handover Manager received Cellular link metrics"];
  if ([(WRM_HandoverManager *)self handoverEvaluationRequired])
  {

    [(WRM_HandoverManager *)self evaluateHandover];
  }
}

- (void)handleLinkPrefSubscribe:(id)subscribe
{
  [WCM_Logging logLevel:24 message:@"HandoverManager: handleIWLANRadioLinkPreferenceRequest."];
  value = xpc_dictionary_get_value(subscribe, "kMessageArgs");
  uint64 = xpc_dictionary_get_uint64(subscribe, "kClientType");
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
    subscribeCopy = subscribe;
    selfCopy = self;
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
      v23 = selfCopy;
      int64 = [(WRM_HandoverManager *)selfCopy convertToHOAlgorithmType:qword_1002B7BD0];
    }

    else
    {
      v23 = selfCopy;
      if (![(WRM_iRATConfig *)selfCopy->miRATConfig handoverAlgorithmSettingDynamic])
      {
        int64 = [(WRM_iRATConfig *)selfCopy->miRATConfig handoverAlgorithmType];
      }
    }

    [v14 setHandoverAlgorithmType:int64];
    [(WRM_HandoverManager *)v23 setIWLANServiceType:v11];
    if ([v14 isStatusUpdateMsgBuffered])
    {
      [WCM_Logging logLevel:24 message:@"Processing buffered status update message"];
      [(WRM_HandoverManager *)v23 handleSubscribeStatusUpdate:subscribeCopy];
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

- (void)handleSubscribeStatusUpdate:(id)update :(BOOL)a4
{
  v4 = a4;
  [-[WRM_HandoverManager getWiFiCallingController](self "getWiFiCallingController")];
  wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
  uint64 = xpc_dictionary_get_uint64(update, "kClientType");
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
    value = xpc_dictionary_get_value(update, "kMessageArgs");
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
      [(WCM_WiFiService *)wifiService setWiFiCallingState:1];
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
      [(WCM_WiFiService *)wifiService setWiFiCallingState:0];
      byte_1002B7CC9 = 0;
      v24 = @"HandoverManager: handleSubscribeStatusUpdate:Call not on WIFI";
    }

    [&v10[98] logLevel:24 message:v24];
    [&v10[98] logLevel:24 message:@"HandoverManager: handleSubscribeStatusUpdate."];
    v25 = [v9 getMobilityContextFromList:v18];
    if (v25)
    {
      v26 = v25;
      getCallState = [v25 getCallState];
      [v26 setCallState:v20 != 0];
      [v26 setRecommendedLinkType:v19];
      if (!v20 && getCallState)
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

      if (v20 != getCallState)
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

- (void)handleSIPStalledMetricsRecevied:(id)recevied
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

- (void)handleSIPMetricsRecevied:(id)recevied
{
  value = xpc_dictionary_get_value(recevied, "kMessageArgs");
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

- (void)handleIWLANMetrics:(id)metrics
{
  isDeviceConnectedOverNonLTERadio = [(WRM_HandoverManager *)self isDeviceConnectedOverNonLTERadio];
  value = xpc_dictionary_get_value(metrics, "kMessageArgs");
  if (value)
  {
    v7 = value;
    if (xpc_dictionary_get_value(value, "kTunnelDisconnected"))
    {
      int64 = xpc_dictionary_get_int64(v7, "kTunnelDisconnected");
      [WCM_Logging logLevel:16 message:@"handleIWLANMetrics reasonCode: %d, checkIfServingCellNonLTE: %d", int64, isDeviceConnectedOverNonLTERadio];
      v9 = (int64 == 1) & (isDeviceConnectedOverNonLTERadio ^ 1);
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

- (void)handleIPTelephonyMetrics:(id)metrics
{
  value = xpc_dictionary_get_value(metrics, "kMessageArgs");
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
    getCTService = [(WRM_HandoverManager *)self getCTService];
    if (getCTService)
    {
      v13 = getCTService;
      [getCTService setCallState:v8];
      [v13 setCallInConference:v11];
      [v13 setCallOnHold:v9 || v10];
      if (v7)
      {

        [(WRM_HandoverManager *)self resetActiveCallTimer];
      }
    }
  }
}

- (void)handlePeriodicRTPMetrics:(id)metrics
{
  getCTService = [-[WRM_HandoverManager getCTService](self getCTService];
  wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
  [WCM_Logging logLevel:24 message:@"Handover Manager received filtered RTP netrics"];
  if (getCTService == 1)
  {
    if (byte_1002B7CC9)
    {
      getWiFiCallingController = [(WRM_HandoverManager *)self getWiFiCallingController];
      self->wrmWifiCallingEnd->Latte_RTP_Packet_Loss = [getWiFiCallingController avgRxPktLoss];
      self->wrmWifiCallingEnd->WiFi_RSSI = [(WCM_WiFiService *)wifiService getRSSI];
      self->wrmWifiCallingEnd->WiFi_SINR = [(WCM_WiFiService *)wifiService getSNR];
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"Rx periodic Average RTP packet loss=%lld", [getWiFiCallingController avgRxPktLoss]);
      v7 = [getWiFiCallingController erasuresInSpeech] * 100.0;
      self->wrmWifiCallingEnd->Latte_Erasures = (v7 / ([getWiFiCallingController totalPlayBacks] + 0.000001));
      self->wrmWifiCallingEnd->Latte_Nominal_Jitter_Buffer_Size = [getWiFiCallingController movAvgNominalJitterBufferDelay];
      self->wrmWifiCallingEnd->Latte_Dejitter_Buffer_Underflow = [getWiFiCallingController averagedNominalJitterBufferDelay];
      [(WRM_HandoverManager *)self evaluateHandover];

      [getWiFiCallingController resetRTPMetrics];
    }

    else
    {

      [WCM_Logging logLevel:24 message:@"handlePeriodicRTPMetrics: discard RTP metrics, call not on WiFi"];
    }
  }

  else
  {
    [WCM_Logging logLevel:24 message:@"handlePeriodicRTPMetrics: discard WIFI RTP metrics, call not active, call state: %d", getCTService];
  }
}

- (int64_t)getSNRHysteresis
{
  getiRATConfigController = [(WRM_HandoverManager *)self getiRATConfigController];
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

        return [getiRATConfigController snrHysterisisWalking];
      }

LABEL_17:
      v7 = @"Device motion: UNKNOWN";
      goto LABEL_18;
    }

    v7 = @"Device motion: VEHICULAR";
    goto LABEL_18;
  }

  [WCM_Logging logLevel:24 message:@"Device motion: RUNNING"];

  return [getiRATConfigController snrHysterisisRunning];
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

- (int)convertToHOAlgorithmType:(unint64_t)type
{
  if (type == 3)
  {
    return 2;
  }

  else
  {
    return type == 2;
  }
}

- (void)setiRATPolicy:(unint64_t)policy
{
  mQueue = self->mQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000D5ABC;
  v4[3] = &unk_10023DD88;
  v4[4] = self;
  v4[5] = policy;
  dispatch_async(mQueue, v4);
}

- (void)resetActiveCallEvaluationMetrics
{
  [WCM_Logging logLevel:24 message:@"resetActiveCallEvaluationMetrics"];
  [(NSDate *)self->mAudioEvaluationTimer timeIntervalSinceNow];
  self->mTimeSinceAudioEvaluationStarted = v3;
  getWiFiCallingController = [(WRM_HandoverManager *)self getWiFiCallingController];
  mWiFi = self->mWiFi;
  if (mWiFi && (mWiFi = [(WCM_WiFiController *)mWiFi wifiService]) == 0)
  {
    [WCM_Logging logLevel:24 message:@"resetActiveCallEvaluationMetrics: ptrWiFiService==NULL"];
  }

  else
  {
    [(WCM_WiFiController *)mWiFi resetCumulativeCounters];
    [getWiFiCallingController resetCumulativeRTPMetrics];
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

- (void)setIWLANServiceType:(int)type
{
  [(WRM_iRATConfig *)self->miRATConfig setCtServiceType:type];
  if (type == 2)
  {
    byte_1002B7CC8 = 1;
  }
}

- (void)feedAWDDataLinkPreferenceChange:(int)change
{
  wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
  getCTService = [(WRM_HandoverManager *)self getCTService];
  getSCService = [(WRM_HandoverManager *)self getSCService];
  v8 = [-[WRM_HandoverManager getiRATClientFromList:](self getiRATClientFromList:{1), "getMobilityContextFromList:", 1}];
  getCallState = [v8 getCallState];
  getConnectedLinkType = [v8 getConnectedLinkType];
  v11 = [-[WRM_HandoverManager getMotionController](self "getMotionController")];
  if (self->mMetrics)
  {
    mDataLinkPrefMetrics = self->mDataLinkPrefMetrics;
    mDataLinkPrefMetrics->callStatus = getCallState;
    mDataLinkPrefMetrics->dataLinkPref = change;
    mDataLinkPrefMetrics->voiceLinkPref = getConnectedLinkType;
    mDataLinkPrefMetrics->motionState = v11;
    mDataLinkPrefMetrics->dataAppStatus = 0;
    isDataLQMValid = [getSCService isDataLQMValid];
    getCellularDataLQM = 0;
    if (isDataLQMValid)
    {
      getCellularDataLQM = [getSCService getCellularDataLQM];
    }

    self->mDataLinkPrefMetrics->dataLQM = getCellularDataLQM;
    isVoiceLQMValid = [getCTService isVoiceLQMValid];
    if (isVoiceLQMValid)
    {
      isVoiceLQMValid = [getCTService getLteVoiceLQM];
    }

    self->mDataLinkPrefMetrics->voiceLQM = isVoiceLQMValid;
    if ([getCTService getServingCellType] == 1)
    {
      self->mDataLinkPrefMetrics->ratType = @"LTE_RADIO";
      [getCTService getServingCellRSRP];
      self->mDataLinkPrefMetrics->cellRSRP = v16;
      [getCTService getServingCellSNR];
    }

    else
    {
      getServingCellType = [getCTService getServingCellType];
      v19 = self->mDataLinkPrefMetrics;
      if (getServingCellType != 2)
      {
        v19->ratType = @"UNKNOWN_RADIO";
        goto LABEL_12;
      }

      v19->ratType = @"UMTS_RADIO";
      [getCTService getServingCellRSCP];
      self->mDataLinkPrefMetrics->cellRSRP = v20;
      [getCTService getServingCellECIO];
    }

    self->mDataLinkPrefMetrics->cellSINR = v17;
LABEL_12:
    self->mDataLinkPrefMetrics->signalBar = [getCTService getCurrentSignalBars];
    self->mDataLinkPrefMetrics->wifiRssi = [(WCM_WiFiService *)wifiService getRSSI];
    self->mDataLinkPrefMetrics->wifiSNR = [(WCM_WiFiService *)wifiService getSNR];
    [(WCM_WiFiService *)wifiService getBeaconPer];
    self->mDataLinkPrefMetrics->bcnPer = (v21 * 100.0);
    self->mDataLinkPrefMetrics->cca = [(WCM_WiFiService *)wifiService getCCA];
    self->mDataLinkPrefMetrics->qbssLoad = [(WCM_WiFiService *)wifiService getChannelUtlization];
    self->mDataLinkPrefMetrics->stationCount = [(WCM_WiFiService *)wifiService getConnectedStationCount];
    [(WCM_WiFiService *)wifiService getEstimatedAvailableRxPhyBandwidth];
    self->mDataLinkPrefMetrics->wifiEstimatedBandwitdh = v22;
    [(WCM_WiFiService *)wifiService getRxPhyRate];
    self->mDataLinkPrefMetrics->wifiRxPhyRate = v23;
    [(WCM_WiFiService *)wifiService getRxRetryPercent];
    self->mDataLinkPrefMetrics->wifiRxRetry = v24;
    [(WCM_WiFiService *)wifiService getTxPer];
    self->mDataLinkPrefMetrics->wifiTxPER = v25;
    [(WCM_WiFiService *)wifiService getTxPhyRate];
    self->mDataLinkPrefMetrics->wifiTxPhyRate = v26;
    self->mDataLinkPrefMetrics->captiveNetworks = [(WCM_WiFiService *)wifiService isWiFiNetworkCaptive];
    self->mDataLinkPrefMetrics->bssLoad = [(WCM_WiFiService *)wifiService getPointOfInterest];
    self->mDataLinkPrefMetrics->decisionVIBE = [(WCM_WiFiService *)wifiService getBEDecision];
    self->mDataLinkPrefMetrics->decisionVO = [(WCM_WiFiService *)wifiService getVoiceDecision];
    self->mDataLinkPrefMetrics->expectedThroughputVIBE = [(WCM_WiFiService *)wifiService getTxThroughputVI];
    self->mDataLinkPrefMetrics->packetLifetimeVIBE = [(WCM_WiFiService *)wifiService getLifeTimeVI];
    self->mDataLinkPrefMetrics->pkgLifeTimeVO = [(WCM_WiFiService *)wifiService getLifeTimeVO];
    getTxLossRateVO = [(WCM_WiFiService *)wifiService getTxLossRateVO];
    v28 = self->mDataLinkPrefMetrics;
    v28->pktLossRateVO = getTxLossRateVO;
    v28->lqmScoreWifi = change == 1;
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
    isWiFiPrimary = [(WRM_SCService *)mSCService isWiFiPrimary];

    [(WRM_HandoverManager *)self toggleSAState:isWiFiPrimary];
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

- (void)updateRLHandoverPolicyFromCarrierBundle:(BOOL)bundle onSimSlot:(int64_t)slot
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6914;
  block[3] = &unk_10023DF40;
  bundleCopy = bundle;
  block[4] = self;
  block[5] = slot;
  dispatch_async(mQueue, block);
}

- (void)updateSaAllowedOnWiFiAssociation:(BOOL)association onSimSlot:(int64_t)slot
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D69F0;
  block[3] = &unk_10023DF40;
  associationCopy = association;
  block[4] = self;
  block[5] = slot;
  dispatch_async(mQueue, block);
}

- (void)handleGetVoiceLqmValue:(id)value
{
  value = xpc_dictionary_get_value(value, "kMessageArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kWRMVoiceLqm_SlotId");
  mQueue = self->mQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D6AF4;
  v8[3] = &unk_10023DD88;
  v8[4] = value;
  v8[5] = uint64;
  dispatch_async(mQueue, v8);
}

- (void)notifyVoiceLqmUpdate:(int)update onSimSlot:(int64_t)slot
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6C78;
  block[3] = &unk_10023E0A8;
  updateCopy = update;
  block[4] = self;
  block[5] = slot;
  dispatch_async(mQueue, block);
}

- (id)getQmiClientForSim:(int64_t)sim
{
  if (sim == 1)
  {
    v3 = 80;
    return *(&self->super.isa + v3);
  }

  if (sim == 2)
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

- (void)handleCallNotification:(id)notification
{
  [WCM_Logging logLevel:24 message:@"handleCallNotification notification=%@", notification];
  name = [notification name];
  if ([name isEqualToString:TUCallCenterCallStatusChangedNotification])
  {
    object = [notification object];
    if (object)
    {
      v7 = object;
      if ([objc_msgSend(object "provider")])
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
            disconnectedReason = [v7 disconnectedReason];
            objc_initWeak(&location, self);
            mQueue = self->mQueue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000D7114;
            block[3] = &unk_1002415E0;
            objc_copyWeak(v12, &location);
            v13 = disconnectedReason;
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