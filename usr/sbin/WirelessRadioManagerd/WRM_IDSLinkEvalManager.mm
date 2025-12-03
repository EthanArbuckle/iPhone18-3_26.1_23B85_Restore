@interface WRM_IDSLinkEvalManager
+ (id)WRM_IDSLinkEvalManagerSingleton;
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)canBTMeetIDSRequirement:(unint64_t)requirement :(int)a4 :(int)a5;
- (BOOL)canWiFiRadioMeetMinRequirements;
- (BOOL)canWiFiRadioMeetTerminusRequirements:(id)requirements;
- (BOOL)canWiFiRadioMeetTerminusRequirementsForCompanionLink:(id)link;
- (BOOL)canWiFiTransportMeetIDSApplicationRequirements:(unint64_t)requirements :(int)a4 :(int)a5;
- (BOOL)doesIRATClientSubscriptionContextExist;
- (BOOL)isBTLinkQualityGood;
- (BOOL)isPingPongAvoidanceTimerSatisfied:(id)satisfied;
- (BOOL)isWiFiDataRateIndicatorGoodForIDS:(unint64_t)s :(int)a4;
- (BOOL)needWiFiLQM;
- (WRM_IDSLinkEvalManager)init;
- (id)getiRATClientFromList:(int)list;
- (id)getiRATProximityClientFromList:(int)list;
- (unint64_t)getWiFiRssi;
- (void)addProximityiRatClient:(id)client;
- (void)addiRatClient:(id)client;
- (void)configureIDSMetricsReporting;
- (void)dealloc;
- (void)deleteProximityiRATClient:(int)client;
- (void)evaluateBTWiFiLink;
- (void)evaluateBTWiFiLinkForTerminus;
- (void)evaluateBandwidth;
- (void)handlaIDSMetrics:(id)metrics;
- (void)handleBTLQMEval:(id)eval;
- (void)handleBTRegistered;
- (void)handleControllerAvailability:(unint64_t)availability;
- (void)handleIDSRegisterd;
- (void)handleInternalMessage:(id)message;
- (void)handleLinkPrefSubscribe:(id)subscribe;
- (void)handleSessionNotification:(id)notification;
- (void)handleSubscribeStatusUpdate:(id)update :(BOOL)a4;
- (void)handleTerminusLinkPrefSubscribe:(id)subscribe;
- (void)handleTerminusSubscribeStatusUpdate:(id)update;
- (void)handleWiFiRegistered;
- (void)handleWiFiStateChaneEvents:(id)events;
- (void)postBluetoothLQMScore:(BOOL)score;
- (void)removeProximityiRatClient:(id)client;
- (void)removeiRatClient:(id)client;
- (void)sendiRATRecommendationToWatch:(int)watch;
- (void)updateBTLQMScore;
- (void)updateControllerSession:(id)session ofId:(unint64_t)id;
- (void)updateControllerState:(id)state;
@end

@implementation WRM_IDSLinkEvalManager

+ (id)WRM_IDSLinkEvalManagerSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000713B4;
  block[3] = &unk_10023DB28;
  block[4] = self;
  if (qword_1002B7E20 != -1)
  {
    dispatch_once(&qword_1002B7E20, block);
  }

  return qword_1002B7E28;
}

- (BOOL)needWiFiLQM
{
  doesIRATClientSubscriptionContextExist = [(WRM_IDSLinkEvalManager *)self doesIRATClientSubscriptionContextExist];
  v3 = "NO";
  if (doesIRATClientSubscriptionContextExist)
  {
    v3 = "YES";
  }

  [WCM_Logging logLevel:27 message:@"%s: needWiFiLQM? %s ", "[WRM_IDSLinkEvalManager needWiFiLQM]", v3];
  return doesIRATClientSubscriptionContextExist;
}

- (BOOL)doesIRATClientSubscriptionContextExist
{
  miRATClientContexts = self->miRATClientContexts;
  objc_sync_enter(miRATClientContexts);
  v4 = [(NSMutableArray *)self->miRATClientContexts count];
  [WCM_Logging logLevel:27 message:@"%s: iRAT client count:%d.", "[WRM_IDSLinkEvalManager doesIRATClientSubscriptionContextExist]", v4];
  if (v4)
  {
    obj = miRATClientContexts;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = self->miRATClientContexts;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v6)
    {
      v7 = *v24;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v5);
          }

          getHandoverContexts = [*(*(&v23 + 1) + 8 * i) getHandoverContexts];
          +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 27, @"%s: iRAT client Context count:%d.", "-[WRM_IDSLinkEvalManager doesIRATClientSubscriptionContextExist]", [getHandoverContexts count]);
          if ([getHandoverContexts count])
          {
            v16 = 1;
            miRATClientContexts = obj;
            goto LABEL_25;
          }
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    objc_sync_exit(obj);
    miRATClientContexts = [(WRM_IDSLinkEvalManager *)self miRATProximityClientContexts];
    objc_sync_enter(miRATClientContexts);
    v10 = [(NSMutableArray *)[(WRM_IDSLinkEvalManager *)self miRATProximityClientContexts] count];
    [WCM_Logging logLevel:27 message:@"%s: iRAT Proximity client count:%d.", "[WRM_IDSLinkEvalManager doesIRATClientSubscriptionContextExist]", v10];
    if (v10)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      miRATProximityClientContexts = [(WRM_IDSLinkEvalManager *)self miRATProximityClientContexts];
      v12 = [(NSMutableArray *)miRATProximityClientContexts countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v12)
      {
        v13 = *v20;
        while (2)
        {
          for (j = 0; j != v12; j = j + 1)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(miRATProximityClientContexts);
            }

            v15 = *(*(&v19 + 1) + 8 * j);
            if (v15 && [*(*(&v19 + 1) + 8 * j) mTerminusContext] && (objc_msgSend(objc_msgSend(v15, "mTerminusContext"), "mTerminusIsRegistered") & 1) != 0)
            {
              v16 = 1;
              goto LABEL_25;
            }
          }

          v12 = [(NSMutableArray *)miRATProximityClientContexts countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      [WCM_Logging logLevel:27 message:@"No iRAT proximity client available"];
    }
  }

  else
  {
    [WCM_Logging logLevel:27 message:@" No iRAT client available."];
  }

  v16 = 0;
LABEL_25:
  objc_sync_exit(miRATClientContexts);
  return v16;
}

- (void)handleInternalMessage:(id)message
{
  [WCM_Logging logLevel:27 message:@"%s: internalMsg: %@", "[WRM_IDSLinkEvalManager(privateFunctions) handleInternalMessage:]", message];
  uint64 = xpc_dictionary_get_uint64(message, "kInternalMessageId");
  if (uint64 == 1040)
  {
LABEL_4:

    [WCM_Logging logLevel:27 message:@"handleInternalMessage:evaluateBTWiFiLink"];
    return;
  }

  if (uint64 == 1003)
  {
    byte_1002B7CA9 = 0;
    byte_1002B7CA8 = 1;
    goto LABEL_4;
  }

  [WCM_Logging logLevel:27 message:@"handleInternalMessage:default"];

  [(WRM_IDSLinkEvalManager *)self evaluateBTWiFiLink];
}

- (BOOL)canWiFiRadioMeetTerminusRequirementsForCompanionLink:(id)link
{
  v5 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
  isLSMWiFiQualityGood = [(WCM_WiFiService *)wifiService isLSMWiFiQualityGood];
  isRemoteWiFiGood = [(WRM_IDSP2PController *)self->mIDSP2PController isRemoteWiFiGood];
  getRSSI = [(WCM_WiFiService *)wifiService getRSSI];
  getSNR = [(WCM_WiFiService *)wifiService getSNR];
  isWiFiConnected = [(WCM_WiFiService *)wifiService isWiFiConnected];
  canBTMeetTerminusRequirement = [(WRM_IDSLinkEvalManager *)self canBTMeetTerminusRequirement];
  getBadVideoCounter = [(WCM_WiFiService *)wifiService getBadVideoCounter];
  getGoodVideoCounter = [(WCM_WiFiService *)wifiService getGoodVideoCounter];
  v14 = [objc_msgSend(link "mTerminusContext")];
  v23 = getSNR;
  v15 = canBTMeetTerminusRequirement;
  if (!v14)
  {
    if (getSNR > [v5 idsMinWiFiSnrTh0])
    {
      idsMinWiFiRssiTh0 = [v5 idsMinWiFiRssiTh0];
      goto LABEL_6;
    }

LABEL_12:
    v17 = isLSMWiFiQualityGood;
    v19 = getRSSI;
    v20 = 0;
    goto LABEL_13;
  }

  if (getSNR <= [v5 idsMinWiFiSnrTh1])
  {
    goto LABEL_12;
  }

  idsMinWiFiRssiTh0 = [v5 idsMinWiFiRssiTh1];
LABEL_6:
  v17 = isLSMWiFiQualityGood;
  v18 = getGoodVideoCounter >= getBadVideoCounter && isLSMWiFiQualityGood;
  v19 = getRSSI;
  v20 = getRSSI > idsMinWiFiRssiTh0 && v18;
LABEL_13:
  v21 = isWiFiConnected && isRemoteWiFiGood && (v20 || !v15);
  [WCM_Logging logLevel:27 message:@"%s: RSSI %lld, SNR %lld isWifi available %d isAssociated %d, LSM Quality: %d, isCompanionWiFiGood: %d, infra WiFi good: %d, BT good: %d, badCounter: %d, goodCounter:%d, wifi entry criteria met: %d", "[WRM_IDSLinkEvalManager(privateFunctions) canWiFiRadioMeetTerminusRequirementsForCompanionLink:]", v19, v23, [(WCM_WiFiService *)wifiService isWiFiPrimaryInterface], isWiFiConnected, v17, isRemoteWiFiGood, v21, v15, getBadVideoCounter, getGoodVideoCounter, v20];
  return v21;
}

- (BOOL)canWiFiRadioMeetTerminusRequirements:(id)requirements
{
  v5 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
  isLSMWiFiQualityGood = [(WCM_WiFiService *)wifiService isLSMWiFiQualityGood];
  getRSSI = [(WCM_WiFiService *)wifiService getRSSI];
  getSNR = [(WCM_WiFiService *)wifiService getSNR];
  [(WCM_WiFiService *)wifiService getAdjustedBeaconPer];
  v11 = v10;
  isWiFiConnected = [(WCM_WiFiService *)wifiService isWiFiConnected];
  isBeaconSchedValid = [(WCM_WiFiService *)wifiService isBeaconSchedValid];
  if (isWiFiConnected)
  {
    v14 = isBeaconSchedValid;
    if (getSNR > [v5 dataMinWifiSnrTh0] && getRSSI > objc_msgSend(v5, "dataMinWifiRssiTh0"))
    {
      if (v14)
      {
        if (v11 * 100.0 <= [v5 dataMinWifiBeaconPerTh0] && isLSMWiFiQualityGood)
        {
LABEL_6:
          v15 = 1;
          goto LABEL_9;
        }
      }

      else if (isLSMWiFiQualityGood)
      {
        goto LABEL_6;
      }
    }
  }

  v15 = 0;
LABEL_9:
  [WCM_Logging logLevel:27 message:@"%s: RSSI %lld, SNR %lld Beacon PER %llf isWifi available %d isAssociated %d, LSM Quality: %d, direct WiFi good:%d", "[WRM_IDSLinkEvalManager(privateFunctions) canWiFiRadioMeetTerminusRequirements:]", getRSSI, getSNR, *&v11, [(WCM_WiFiService *)wifiService isWiFiPrimaryInterface], isWiFiConnected, isLSMWiFiQualityGood, v15];
  mTerminusContext = [requirements mTerminusContext];
  if (isWiFiConnected)
  {
    [mTerminusContext setWifiRSSI:getRSSI];
    [objc_msgSend(requirements "mTerminusContext")];
    [objc_msgSend(requirements "mTerminusContext")];
    [objc_msgSend(requirements "mTerminusContext")];
    [objc_msgSend(requirements "mTerminusContext")];
    [objc_msgSend(requirements "mTerminusContext")];
    [objc_msgSend(requirements "mTerminusContext")];
    [objc_msgSend(requirements "mTerminusContext")];
    getTxLossRateVI = [(WCM_WiFiService *)wifiService getTxLossRateVI];
  }

  else
  {
    [mTerminusContext setWifiRSSI:-600];
    [objc_msgSend(requirements "mTerminusContext")];
    [objc_msgSend(requirements "mTerminusContext")];
    [objc_msgSend(requirements "mTerminusContext")];
    [objc_msgSend(requirements "mTerminusContext")];
    [objc_msgSend(requirements "mTerminusContext")];
    [objc_msgSend(requirements "mTerminusContext")];
    [objc_msgSend(requirements "mTerminusContext")];
    getTxLossRateVI = 0;
  }

  [objc_msgSend(requirements "mTerminusContext")];
  return v15;
}

- (BOOL)canWiFiRadioMeetMinRequirements
{
  v3 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
  getRSSI = [(WCM_WiFiService *)wifiService getRSSI];
  getSNR = [(WCM_WiFiService *)wifiService getSNR];
  isWiFiConnected = [(WCM_WiFiService *)wifiService isWiFiConnected];
  if (isWiFiConnected)
  {
    LOBYTE(isWiFiConnected) = getSNR > [v3 dataMinWifiSnrTh1] && getRSSI > objc_msgSend(v3, "dataMinWifiRssiTh1");
  }

  return isWiFiConnected;
}

- (BOOL)isWiFiDataRateIndicatorGoodForIDS:(unint64_t)s :(int)a4
{
  wRM_HandoverManagerSingleton = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager WRM_HandoverManagerSingleton];
  wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
  isQBSSLoadValid = [(WCM_WiFiService *)wifiService isQBSSLoadValid];
  [(WCM_WiFiService *)wifiService getCalculatedAvailableRxPhyBandwidth];
  v10 = v9;
  [(WCM_WiFiService *)wifiService getCalculatedAvailableTxPhyBandwidth];
  v12 = v11;
  v13 = v11;
  [WCM_Logging logLevel:27 message:@"WIFI Throughput Estimation, Calculated Rx PHY Rate: %.2f, Calculated TX Rate: %.2f", v10, v11];
  if (isQBSSLoadValid)
  {
    LODWORD(v14) = 1151500288;
    *&v15 = v10;
    [(WCM_WiFiService *)wifiService getL3Bandwidth:v14];
    v17 = v16;
    LODWORD(v18) = 1151500288;
    *&v19 = v12;
    [(WCM_WiFiService *)wifiService getL3Bandwidth:v18];
    v12 = v20;
    v21 = "WIFI";
    if (a4 == 2)
    {
      v21 = "BLUETOOTH";
    }

    [WCM_Logging logLevel:27 message:@"WIFI Throughput Estimation using QBSS load, Calculated L3 Rx PHY BW: %.2f, Calculated L3 TX PHY BW: %.2f, Recommended Link:%s", v17, v20, v21];
    if (a4 != 3)
    {
      if (a4 == 1)
      {
        v12 = v12 + v12;
        idsMinWiFiThroughputTh1 = [wRM_HandoverManagerSingleton idsMinWiFiThroughputTh1];
        return v12 >= idsMinWiFiThroughputTh1;
      }

      if (v17 < [wRM_HandoverManagerSingleton idsMinWiFiThroughputTh1])
      {
        return 0;
      }

      idsMinWiFiThroughputTh12 = [wRM_HandoverManagerSingleton idsMinWiFiThroughputTh1];
      return v12 >= idsMinWiFiThroughputTh12;
    }

    if (v17 >= [wRM_HandoverManagerSingleton idsMinWiFiThroughputTh0])
    {
      return 1;
    }

    idsMinWiFiThroughputTh0 = [wRM_HandoverManagerSingleton idsMinWiFiThroughputTh0];
  }

  else
  {
    v23 = "WIFI";
    if (a4 == 2)
    {
      v23 = "BLUETOOTH";
    }

    [WCM_Logging logLevel:27 message:@"WIFI rate Estimation without QBSS load, Effective Rx Phy Rate: %.2f, Effective Tx Phy Rate: %.2f, Recommended Link: %s", v10, *&v13, v23];
    if (a4 != 3)
    {
      if (a4 == 1)
      {
        idsMinWiFiThroughputTh1 = [wRM_HandoverManagerSingleton idsMinWiFiEffectivePhyRateTh1];
        return v12 >= idsMinWiFiThroughputTh1;
      }

      if (v10 < [wRM_HandoverManagerSingleton idsMinWiFiEffectivePhyRateTh1])
      {
        return 0;
      }

      idsMinWiFiThroughputTh12 = [wRM_HandoverManagerSingleton idsMinWiFiEffectivePhyRateTh1];
      return v12 >= idsMinWiFiThroughputTh12;
    }

    if (v10 >= [wRM_HandoverManagerSingleton idsMinWiFiEffectivePhyRateTh0])
    {
      return 1;
    }

    idsMinWiFiThroughputTh0 = [wRM_HandoverManagerSingleton idsMinWiFiEffectivePhyRateTh0];
  }

  return v12 >= idsMinWiFiThroughputTh0;
}

- (BOOL)canWiFiTransportMeetIDSApplicationRequirements:(unint64_t)requirements :(int)a4 :(int)a5
{
  wRM_HandoverManagerSingleton = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager WRM_HandoverManagerSingleton];
  mIDSMetricsController = self->mIDSMetricsController;
  if (!mIDSMetricsController)
  {
    return 1;
  }

  v32 = a5;
  v31 = wRM_HandoverManagerSingleton;
  getRTT = [(WRM_IdsMetricsController *)mIDSMetricsController getRTT];
  [(WRM_IdsMetricsController *)self->mIDSMetricsController getTxPer];
  v11 = v10 * 100.0;
  getTxPerValid = [(WRM_IdsMetricsController *)self->mIDSMetricsController getTxPerValid];
  [(WRM_IdsMetricsController *)self->mIDSMetricsController getAnticipiatedTxPer];
  v14 = v13 * 100.0;
  getAnticipiatedTxPerValid = [(WRM_IdsMetricsController *)self->mIDSMetricsController getAnticipiatedTxPerValid];
  [(WRM_IdsMetricsController *)self->mIDSMetricsController getTxPerAnticipatedMovAvg];
  v17 = v16 * 100.0;
  getTxPerAnticipatedMovAvgValid = [(WRM_IdsMetricsController *)self->mIDSMetricsController getTxPerAnticipatedMovAvgValid];
  getAvgTxPDUSize = [(WRM_IdsMetricsController *)self->mIDSMetricsController getAvgTxPDUSize];
  getAvgRxPDUSize = [(WRM_IdsMetricsController *)self->mIDSMetricsController getAvgRxPDUSize];
  [(WRM_IdsMetricsController *)self->mIDSMetricsController evaluateDLThroughput];
  v22 = v21;
  [(WRM_IdsMetricsController *)self->mIDSMetricsController evaluateULThroughput];
  v24 = v23;
  getRTTMovAvg = [(WRM_IdsMetricsController *)self->mIDSMetricsController getRTTMovAvg];
  [(WRM_IdsMetricsController *)self->mIDSMetricsController getTxPerMovAvg];
  v27 = v26 * 100.0;
  getAvgTxPDUSizeMovAvg = [(WRM_IdsMetricsController *)self->mIDSMetricsController getAvgTxPDUSizeMovAvg];
  getAvgRxPDUSizeMovAvg = [(WRM_IdsMetricsController *)self->mIDSMetricsController getAvgRxPDUSizeMovAvg];
  [WCM_Logging logLevel:27 message:@"Ant PER: %.2f, Ant PER Valid: %d, Ant Mov PER: %.2f, Ant Mov PER Valid:%d", *&v14, getAnticipiatedTxPerValid, *&v17, getTxPerAnticipatedMovAvgValid];
  [WCM_Logging logLevel:27 message:@"IDS Metrics, RTT: %d, M_avg RTT: %d, TX PER: %.2f, Tx PER Valid: %d, M_avg TX PER: %.2f, Rx Size: %d, MAvgRx Size: %d, DL Thr: %.2f, Tx Size: %d, MAvgTx Size: %d, UL Thr: %.2f", getRTT, getRTTMovAvg, *&v11, getTxPerValid, *&v27, getAvgRxPDUSize, getAvgRxPDUSizeMovAvg, v22, getAvgTxPDUSize, getAvgTxPDUSizeMovAvg, *&v24];
  result = 1;
  if (a4 == 1 && v32 != 3 && v24 < 1000.0)
  {
    return [v31 idsWiFiMinRttTh1] > getRTT && (v14 < objc_msgSend(v31, "idsWiFiMinPerTh1") || !getAnticipiatedTxPerValid) && (v17 < objc_msgSend(v31, "idsMovAvgWiFiMinPerTh1") || !getTxPerAnticipatedMovAvgValid) && (v11 < objc_msgSend(v31, "idsAvgWiFiMinPerTh1") || !getTxPerValid);
  }

  return result;
}

- (BOOL)canBTMeetIDSRequirement:(unint64_t)requirement :(int)a4 :(int)a5
{
  wRM_HandoverManagerSingleton = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager WRM_HandoverManagerSingleton];
  mIDSMetricsController = self->mIDSMetricsController;
  if (!mIDSMetricsController)
  {
    return 1;
  }

  getRTT = [(WRM_IdsMetricsController *)mIDSMetricsController getRTT];
  [(WRM_IdsMetricsController *)self->mIDSMetricsController getTxPer];
  v12 = v11 * 100.0;
  getTxPerValid = [(WRM_IdsMetricsController *)self->mIDSMetricsController getTxPerValid];
  getAvgTxPDUSize = [(WRM_IdsMetricsController *)self->mIDSMetricsController getAvgTxPDUSize];
  getAvgRxPDUSize = [(WRM_IdsMetricsController *)self->mIDSMetricsController getAvgRxPDUSize];
  [(WRM_IdsMetricsController *)self->mIDSMetricsController evaluateDLThroughput];
  v17 = v16;
  [(WRM_IdsMetricsController *)self->mIDSMetricsController evaluateDLThroughput];
  v19 = v18;
  getRTTMovAvg = [(WRM_IdsMetricsController *)self->mIDSMetricsController getRTTMovAvg];
  [(WRM_IdsMetricsController *)self->mIDSMetricsController getTxPerMovAvg];
  [WCM_Logging logLevel:27 message:@"IDS Metrics, RTT: %d, M_avg RTT: %d, TX PER: %.2f, M_avg TX PER: %.2f, Tx PER Valid: %d, Rx Size: %d, MAvgRx Size: %d, DL Thr: %.2f, Tx Size: %d, MAvgTx Size: %d, UL Thr: %.2f", getRTT, getRTTMovAvg, *&v12, getTxPerValid, v21 * 100.0, getAvgRxPDUSize, [(WRM_IdsMetricsController *)self->mIDSMetricsController getAvgRxPDUSizeMovAvg], v17, getAvgTxPDUSize, [(WRM_IdsMetricsController *)self->mIDSMetricsController getAvgTxPDUSizeMovAvg], v19];
  result = 1;
  if (a4 == 3 && a5 != 1)
  {
    return [wRM_HandoverManagerSingleton idsBTMinRttTh1] > getRTT && (v12 < objc_msgSend(wRM_HandoverManagerSingleton, "idsBTMinPerTh1") || !getTxPerValid);
  }

  return result;
}

- (void)handleBTLQMEval:(id)eval
{
  v4 = dispatch_time(0, 5000000000);
  mQueueTerminus = self->mQueueTerminus;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F368;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_after(v4, mQueueTerminus, block);
}

- (void)handleSessionNotification:(id)notification
{
  uint64 = xpc_dictionary_get_uint64(notification, "kMessageId");
  [WCM_Logging logLevel:27 message:@"%s:Recevied message: %lld", "[WRM_IDSLinkEvalManager(privateFunctions) handleSessionNotification:]", uint64];
  if (uint64 > 413)
  {
    if (uint64 > 599)
    {
      if (uint64 == 600)
      {

        [(WRM_IDSLinkEvalManager *)self handlaIDSMetrics:notification];
      }

      else if (uint64 == 1000)
      {
        value = xpc_dictionary_get_value(notification, "kMessageArgs");

        [(WRM_IDSLinkEvalManager *)self handleInternalMessage:value];
      }
    }

    else if (uint64 == 414)
    {

      [(WRM_IDSLinkEvalManager *)self handleTerminusSubscribeStatusUpdate:notification];
    }

    else if (uint64 == 421)
    {

      [(WRM_IDSLinkEvalManager *)self handleBTLQMEval:notification];
    }
  }

  else if (uint64 > 402)
  {
    if (uint64 == 403)
    {

      [(WRM_IDSLinkEvalManager *)self handleSubscribeStatusUpdate:notification];
    }

    else if (uint64 == 413)
    {

      [(WRM_IDSLinkEvalManager *)self handleTerminusLinkPrefSubscribe:notification];
    }
  }

  else if (uint64 == 103)
  {

    [(WRM_IDSLinkEvalManager *)self handleWiFiStateChaneEvents:notification];
  }

  else if (uint64 == 402)
  {

    [(WRM_IDSLinkEvalManager *)self handleLinkPrefSubscribe:notification];
  }
}

- (void)handleTerminusLinkPrefSubscribe:(id)subscribe
{
  mQueueTerminus = self->mQueueTerminus;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006F68C;
  v4[3] = &unk_10023DC80;
  v4[4] = subscribe;
  v4[5] = self;
  dispatch_async(mQueueTerminus, v4);
}

- (void)handleLinkPrefSubscribe:(id)subscribe
{
  [WCM_Logging logLevel:27 message:@"IDS Link Eval Manager: handleLinkPrefSubscribe."];
  value = xpc_dictionary_get_value(subscribe, "kMessageArgs");
  uint64 = xpc_dictionary_get_uint64(subscribe, "kClientType");
  v7 = [(WRM_IDSLinkEvalManager *)self getiRATClientFromList:uint64];
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
    v8 = off_10023F3D8[(uint64 - 1)];
  }

  [WCM_Logging logLevel:27 message:@"Message received from client %d(%s) ", uint64, v8];
  v9 = xpc_dictionary_get_value(value, "kWRMApplicationTypeList");
  count = xpc_array_get_count(v9);
  byte_1002B7CA8 = 0;
  if (count)
  {
    v11 = count;
    selfCopy2 = self;
    [v7 removeAllMobilityContextsFromList];
    [WCM_Logging logLevel:24 message:@"Removing all contexts from iRAT client."];
    v12 = 0;
    v13 = 0;
    v14 = 2;
    do
    {
      v15 = xpc_array_get_value(v9, v12);
      v16 = xpc_dictionary_get_uint64(v15, "kWRMApplicationType");
      if (xpc_dictionary_get_value(v15, "kWRMSubscriptionType"))
      {
        v13 = xpc_dictionary_get_uint64(v15, "kWRMSubscriptionType");
      }

      if (xpc_dictionary_get_value(v15, "kWRMLinkType"))
      {
        v14 = xpc_dictionary_get_uint64(v15, "kWRMLinkType");
      }

      [WCM_Logging logLevel:27 message:@"%s: Record#= %d Application Type=%llu", "[WRM_IDSLinkEvalManager(privateFunctions) handleLinkPrefSubscribe:]", v12, v16];
      v17 = objc_alloc_init(WRM_Mobility_Context);
      [(WRM_Mobility_Context *)v17 setApplicationType:v16];
      [(WRM_Mobility_Context *)v17 setConnectedLinkType:v14];
      [(WRM_Mobility_Context *)v17 setSubscriptionType:v13];
      [(WRM_Mobility_Context *)v17 activateMobilityContext:1];
      [v7 addMobilityContextToList:v17];

      ++v12;
    }

    while (v11 != v12);
    goto LABEL_15;
  }

  if ([(WRM_IDSLinkEvalManager *)self doesIRATClientSubscriptionContextExist])
  {
    selfCopy2 = self;
    [v7 removeAllMobilityContextsFromList];
    [WCM_Logging logLevel:24 message:@"Removing all contexts from iRAT client."];
LABEL_15:
    [(WRM_IDSLinkEvalManager *)selfCopy2 evaluateBTWiFiLink];
    [WCM_Logging logLevel:27 message:@"Send IDS Notification at connection setup"];
    mWiFi = selfCopy2->mWiFi;
    needWiFiLQM = [(WRM_IDSLinkEvalManager *)selfCopy2 needWiFiLQM];

    [(WCM_WiFiController *)mWiFi toggleWiFiLQMIfNeeded:needWiFiLQM];
    return;
  }

  [WCM_Logging logLevel:27 message:@"Ignoring un-subscribe message from a client for which subscription does not exist"];
}

- (void)handleTerminusSubscribeStatusUpdate:(id)update
{
  mQueueTerminus = self->mQueueTerminus;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006FC14;
  v4[3] = &unk_10023DC80;
  v4[4] = update;
  v4[5] = self;
  dispatch_async(mQueueTerminus, v4);
}

- (void)handleSubscribeStatusUpdate:(id)update :(BOOL)a4
{
  uint64 = xpc_dictionary_get_uint64(update, "kClientType");
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
    v7 = off_10023F3D8[(uint64 - 1)];
  }

  [WCM_Logging logLevel:27 message:@"IDS Link Eval Mgr: Message received from client %d(%s)", uint64, v7];
  value = xpc_dictionary_get_value(update, "kMessageArgs");
  xarray = xpc_dictionary_get_value(value, "kWRMApplicationTypeList");
  count = xpc_array_get_count(xarray);
  if (count)
  {
    v10 = count;
    selfCopy = self;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = xpc_array_get_value(xarray, v11);
      v15 = xpc_dictionary_get_uint64(v14, "kWRMApplicationType");
      v16 = xpc_dictionary_get_uint64(v14, "kWRMLinkType");
      if (xpc_dictionary_get_value(v14, "kWRMConnected"))
      {
        v12 = xpc_dictionary_get_uint64(v14, "kWRMConnected") != 0;
      }

      if (xpc_dictionary_get_value(v14, "kWRMNearByOverBT"))
      {
        v13 = xpc_dictionary_get_uint64(v14, "kWRMNearByOverBT") != 0;
      }

      if (v16 >= 3)
      {
        v17 = "UNKNOWN_WRM_IWLAN_LINK_TYPE!!!";
        if (v16 == 3)
        {
          v17 = "WRM_IWLAN_BLUETOOTH";
        }
      }

      else
      {
        v17 = off_10023F320[v16 & 3];
      }

      [WCM_Logging logLevel:27 message:@"%s: Record#=%d, IDS Application Type=%llu, IDS Connected Link Type=%llu (%s) isConnected %d, isGizmoNearbyOverBt %d", "[WRM_IDSLinkEvalManager(privateFunctions) handleSubscribeStatusUpdate::]", v11++, v15, v16, v17, v12, v13];
    }

    while (v10 != v11);
    if (v12)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    self = selfCopy;
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v18 = 2;
    v16 = 2;
  }

  [WCM_Logging logLevel:27 message:@"IDS Link Eval Manager: handleSubscribeStatusUpdate."];
  v19 = [-[WRM_IDSLinkEvalManager getiRATClientFromList:](self getiRATClientFromList:{uint64), "getMobilityContextFromList:", v15}];
  if (v19)
  {
    v20 = v19;
    [WCM_Logging logLevel:27 message:@"IDS Link Eval Manager: handleSubscribeStatusUpdate."];
    [(WRM_IdsMetricsController *)self->mIDSMetricsController resetIDSMetrics];
    [v20 setRecommendedLinkType:v16];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  miRATProximityClientContexts = [(WRM_IDSLinkEvalManager *)self miRATProximityClientContexts];
  v22 = [(NSMutableArray *)miRATProximityClientContexts countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(miRATProximityClientContexts);
        }

        v26 = *(*(&v31 + 1) + 8 * i);
        if (v26 && [*(*(&v31 + 1) + 8 * i) mTerminusContext])
        {
          [objc_msgSend(v26 "mTerminusContext")];
          mTerminusContext = [v26 mTerminusContext];
          if ((v16 - 2) >= 2)
          {
            if (v16)
            {
              v28 = v18;
            }

            else
            {
              v28 = 3;
            }
          }

          else
          {
            v28 = 0;
          }

          [mTerminusContext setMCurrentActiveLink:v28];
          [objc_msgSend(v26 "mTerminusContext")];
        }
      }

      v23 = [(NSMutableArray *)miRATProximityClientContexts countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v23);
  }
}

- (void)configureIDSMetricsReporting
{
  [(WRM_IdsMetricsController *)self->mIDSMetricsController resetIDSMetrics];
  [(WRM_IdsMetricsController *)self->mIDSMetricsController resetCumulativeIdsMetrics];
  [(WRM_IdsMetricsController *)self->mIDSMetricsController configureIDSMetricsReporting];
  mIDSP2PController = self->mIDSP2PController;

  [(WRM_IDSP2PController *)mIDSP2PController InitService];
}

- (void)handlaIDSMetrics:(id)metrics
{
  mWiFi = self->mWiFi;
  if (mWiFi)
  {
    wifiService = [(WCM_WiFiController *)mWiFi wifiService];
    if (wifiService)
    {
      v7 = wifiService;
      [(WRM_IdsMetricsController *)self->mIDSMetricsController handlePeriodicIDSMetrics:metrics];
      if (![(WCM_WiFiService *)v7 isWiFiPrimaryInterface])
      {

        [(WRM_IDSLinkEvalManager *)self evaluateBTWiFiLink];
      }

      return;
    }

    v8 = @"handlaIDSMetrics: WiFi service not initialized.";
  }

  else
  {
    v8 = @"handlaIDSMetrics: WiFi not initialized.";
  }

  [WCM_Logging logLevel:27 message:v8];
}

- (void)sendiRATRecommendationToWatch:(int)watch
{
  if ([objc_msgSend(+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
  {
    if (![(WRM_IDSP2PController *)self->mIDSP2PController IsIDSInitDone])
    {
      [(WRM_IDSP2PController *)self->mIDSP2PController InitService];
    }

    mIDSP2PController = self->mIDSP2PController;
    v6 = @"WRM_IWLAN_NOT_INIT";
    if (watch == 1)
    {
      v6 = @"WRM_IWLAN_WIFI";
    }

    if (watch == 3)
    {
      v7 = @"WRM_IWLAN_BLUETOOTH";
    }

    else
    {
      v7 = v6;
    }

    [(WRM_IDSP2PController *)mIDSP2PController WrmSendp2pMessage:@"BT versus WiFi pref" MessageBody:v7 withOptions:0];
  }
}

- (void)evaluateBTWiFiLink
{
  v3 = [(NSMutableArray *)self->miRATClientContexts count];
  if (v3)
  {
    [WCM_Logging logLevel:27 message:@"Evaluate BT-WIFI: Total number of IDS clients %zu.", v3];
    if (byte_1002B7CA8)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      selfCopy = self;
      obj = self->miRATClientContexts;
      v30 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (!v30)
      {
        return;
      }

      v29 = *v41;
      while (1)
      {
        v4 = 0;
        do
        {
          if (*v41 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v40 + 1) + 8 * v4);
          getMyClientType = [v5 getMyClientType];
          v7 = "ClientCommCenter";
          if (getMyClientType != 1)
          {
            if (getMyClientType - 2 >= 0x14)
            {
              v7 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
              if (getMyClientType == 22)
              {
                v7 = "ClientCoreMediaStreaming";
              }
            }

            else
            {
              v7 = off_10023F338[getMyClientType - 2];
            }
          }

          v32 = v4;
          [WCM_Logging logLevel:27 message:@"<%s>Evaluate BT-WiFi Link: BEGIN.", v7];
          v31 = v5;
          getHandoverContexts = [v5 getHandoverContexts];
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v33 = getHandoverContexts;
          v9 = [getHandoverContexts countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v9)
          {
            v10 = v9;
            v35 = *v37;
            if (getMyClientType == 22)
            {
              v11 = "ClientCoreMediaStreaming";
            }

            else
            {
              v11 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
            }

            v12 = getMyClientType - 2;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v37 != v35)
                {
                  objc_enumerationMutation(v33);
                }

                v14 = *(*(&v36 + 1) + 8 * i);
                getApplicationType = [v14 getApplicationType];
                getConnectedLinkType = [v14 getConnectedLinkType];
                getRecommenedLinkType = [v14 getRecommenedLinkType];
                if ([v14 getSubscriptionType] == 1)
                {
                  [WCM_Logging logLevel:27 message:@"Do not evaluate, WiFi versus BT because subscription is for WiFi versus Cellular, %d", 0];
                  continue;
                }

                v18 = "ClientCommCenter";
                if (getMyClientType != 1)
                {
                  v18 = v11;
                  if (v12 <= 0x13)
                  {
                    v18 = off_10023F338[v12];
                  }
                }

                if (getApplicationType)
                {
                  v19 = "CT_VOICE";
                  if (getApplicationType != 1)
                  {
                    v19 = "UNKNOWN_APP!!!";
                    if (getApplicationType == 2)
                    {
                      v19 = "CT_Th_Call";
                    }
                  }
                }

                else
                {
                  v19 = "CT_DATA";
                }

                [WCM_Logging logLevel:27 message:@"<%s>{%s}Evaluate Link: BEGIN.", v18, v19];
                if (getConnectedLinkType != 3)
                {
                  goto LABEL_44;
                }

                if ([(WRM_IDSLinkEvalManager *)selfCopy canBTMeetIDSRequirement:getApplicationType])
                {
                  [v14 getDeltaTimeSinceLastCellularRecommendation];
                  v21 = v20 * 1000.0;
                  [WCM_Logging logLevel:27 message:@"getDeltaTimeSinceLastBTRecommendation: delta time:%lf, effectiveBlockout time:%lld ", v20 * 1000.0, 30000];
                  if (v21 < 30000.0)
                  {
                    v22 = "UNKNOWN_APP!!!";
                    if (getApplicationType == 2)
                    {
                      v22 = "CT_Th_Call";
                    }

                    if (getApplicationType == 1)
                    {
                      v22 = "CT_VOICE";
                    }

                    if (!getApplicationType)
                    {
                      v22 = "CT_DATA";
                    }

                    [WCM_Logging logLevel:27 message:@"{%s}Skipping link evaluation for client connected on BT link", v22];
                    [v14 setLinkPreferenceNotificationRequired:0];
                    continue;
                  }

                  [WCM_Logging logLevel:27 message:@"IDS WiFi link evaluation criteria met"];
LABEL_44:
                  [v14 updatePrevTimeStamp];
                  goto LABEL_45;
                }

                [WCM_Logging logLevel:27 message:@"Continue to evaluate WiFi link: BT link bad"];
LABEL_45:
                if ([(WRM_IDSLinkEvalManager *)selfCopy evaluateLink:getApplicationType]== 1)
                {
                  v23 = 1;
                }

                else
                {
                  v23 = 3;
                }

                if (v23 == [v14 getConnectedLinkType])
                {
                  [v14 setLinkPreferenceNotificationRequired:0];
                }

                else
                {
                  [v14 setLinkPreferenceNotificationRequired:1];
                  [(WRM_IdsMetricsController *)selfCopy->mIDSMetricsController resetIDSMetrics];
                  [(WRM_IDSLinkEvalManager *)selfCopy sendiRATRecommendationToWatch:v23];
                }

                [v14 setConnectedLinkType:v23];
                v24 = "ClientCommCenter";
                if (getMyClientType != 1)
                {
                  v24 = v11;
                  if (v12 <= 0x13)
                  {
                    v24 = off_10023F338[v12];
                  }
                }

                if (getApplicationType)
                {
                  v25 = "CT_VOICE";
                  if (getApplicationType != 1)
                  {
                    v25 = "UNKNOWN_APP!!!";
                    if (getApplicationType == 2)
                    {
                      v25 = "CT_Th_Call";
                    }
                  }
                }

                else
                {
                  v25 = "CT_DATA";
                }

                [WCM_Logging logLevel:27 message:@"<%s>{%s}Evaluate BT-WIFI Link: END.", v24, v25];
                v26 = "ClientCommCenter";
                if (getMyClientType != 1)
                {
                  v26 = v11;
                  if (v12 <= 0x13)
                  {
                    v26 = off_10023F338[v12];
                  }
                }

                [WCM_Logging logLevel:27 message:@"<%s>Evaluate BT-WiFi Link: END.", v26];
              }

              v10 = [v33 countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v10);
          }

          [v31 handleLinkPreferenceNotificationIDS:0];
          v4 = v32 + 1;
        }

        while ((v32 + 1) != v30);
        v30 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (!v30)
        {
          return;
        }
      }
    }

    v27 = @"Do not evaluate WiFi link, LQM not received yet";
  }

  else
  {
    v27 = @"Evaluate BT-WIFI Link: No IDS client available.";
  }

  [WCM_Logging logLevel:27 message:v27];
}

- (void)evaluateBandwidth
{
  v2 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  v3 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  if (v3)
  {
    wifiService = [v3 wifiService];
    [wifiService getEstimatedAvailableRxPhyBandwidth];
    v6 = v5;
    [wifiService getCalculatedAvailableRxPhyBandwidth];
    v8 = v7;
    [wifiService getCalculatedAvailableTxPhyBandwidth];
    v10 = v9;
    [WCM_Logging logLevel:27 message:@"WIFI Throughput Estimation, Estimated Rx PHY BW: %.2f, Calculated Rx PHY BW: %.2f, Calculated TX BW: %.2f", v6, v8, v9];
    LODWORD(v11) = 1151500288;
    *&v12 = v6;
    [wifiService getL3Bandwidth:v11 :v12];
    v14 = v13;
    LODWORD(v15) = 1151500288;
    *&v16 = v8;
    [wifiService getL3Bandwidth:v15 :v16];
    v18 = v17;
    LODWORD(v19) = 1151500288;
    *&v20 = v10;
    [wifiService getL3Bandwidth:v19 :v20];
    [WCM_Logging logLevel:27 message:@"WIFI Throughput Estimation, Estimated L3 Rx PHY BW: %.2f, Calculated L3 Rx PHY BW: %.2f, Calculated L3 TX BW: %.2f", v14, v18, v21];
  }

  if (v2)
  {
    [WCM_Logging logLevel:27 message:@"L3 Bandwidth BW: %.2f", 0];
  }
}

- (void)handleWiFiStateChaneEvents:(id)events
{
  value = xpc_dictionary_get_value(events, "kMessageArgs");
  [WCM_Logging logLevel:27 message:@"WRM IDS Link Eval Manager received WiFi link state change event"];
  if (value)
  {
    v5 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    if (xpc_dictionary_get_int64(value, "kWRM_WiFi_LINK_STATUS"))
    {
      [WCM_Logging logLevel:27 message:@"IDS Link Eval Manager:Link down event received"];
      if (![v5 p2pAssistanceEnabled])
      {
LABEL_13:

        [(WRM_IDSLinkEvalManager *)self evaluateBTWiFiLink];
        return;
      }

      p_mIDSP2PController = &self->mIDSP2PController;
      v7 = @"LinkDown";
      if ([(WRM_IDSP2PController *)self->mIDSP2PController IsIDSInitDone])
      {
LABEL_6:
        [(WRM_IDSP2PController *)*p_mIDSP2PController WrmSendp2pMessage:@"WiFi status" MessageBody:v7 withOptions:0];
        goto LABEL_13;
      }
    }

    else
    {
      int64 = xpc_dictionary_get_int64(value, "kWRMM_WiFi_RSSI");
      v9 = xpc_dictionary_get_int64(value, "kWRMM_WiFi_SNR");
      [WCM_Logging logLevel:27 message:@"IDS Link Eval Mgr :Linkup event received"];
      wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];
      [(WCM_WiFiService *)wifiService setRSSI:int64];
      [(WCM_WiFiService *)wifiService setSNR:v9];
      if (![v5 p2pAssistanceEnabled])
      {
        goto LABEL_13;
      }

      p_mIDSP2PController = &self->mIDSP2PController;
      v7 = @"LinkUP";
      if ([(WRM_IDSP2PController *)self->mIDSP2PController IsIDSInitDone])
      {
        goto LABEL_6;
      }
    }

    [(WRM_IDSP2PController *)*p_mIDSP2PController InitService];
    goto LABEL_6;
  }

  [WCM_Logging logLevel:27 message:@"IDS Link Eval Manager:Empty message received"];
}

- (void)addProximityiRatClient:(id)client
{
  mQueueTerminus = self->mQueueTerminus;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100070DB4;
  v4[3] = &unk_10023DC80;
  v4[4] = self;
  v4[5] = client;
  dispatch_async(mQueueTerminus, v4);
}

- (void)removeProximityiRatClient:(id)client
{
  if ([client queue])
  {
    dispatch_release([client queue]);
  }

  [client setQueue:0];
  if ([client mTerminusContext])
  {

    [client setMTerminusContext:0];
  }

  miRATProximityClientContexts = [(WRM_IDSLinkEvalManager *)self miRATProximityClientContexts];

  [(NSMutableArray *)miRATProximityClientContexts removeObject:client];
}

- (void)deleteProximityiRATClient:(int)client
{
  mQueueTerminus = self->mQueueTerminus;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100070EF0;
  v4[3] = &unk_10023DBA0;
  v4[4] = self;
  clientCopy = client;
  dispatch_async(mQueueTerminus, v4);
}

- (void)addiRatClient:(id)client
{
  miRATClientContexts = self->miRATClientContexts;
  objc_sync_enter(miRATClientContexts);
  [(NSMutableArray *)self->miRATClientContexts addObject:client];
  [(WRM_IDSLinkEvalManager *)self existingContexts];

  objc_sync_exit(miRATClientContexts);
}

- (void)removeiRatClient:(id)client
{
  miRATClientContexts = self->miRATClientContexts;
  objc_sync_enter(miRATClientContexts);
  [(WRM_IDSLinkEvalManager *)self existingContexts];
  [(NSMutableArray *)self->miRATClientContexts removeObject:client];
  [(WRM_IDSLinkEvalManager *)self existingContexts];

  objc_sync_exit(miRATClientContexts);
}

- (void)handleControllerAvailability:(unint64_t)availability
{
  if ([(WRM_IDSLinkEvalManager *)self enableiRATManager])
  {
    if (availability > 10)
    {
      if (availability == 12)
      {

        [(WRM_IDSLinkEvalManager *)self handleIDSToolRegisterd];
      }

      else if (availability == 11)
      {

        [(WRM_IDSLinkEvalManager *)self handleIDSRegisterd];
      }
    }

    else if (availability == 1)
    {

      [(WRM_IDSLinkEvalManager *)self handleWiFiRegistered];
    }

    else if (availability == 4)
    {

      [(WRM_IDSLinkEvalManager *)self handleBTRegistered];
    }
  }
}

- (void)handleIDSRegisterd
{
  if ([(WRM_IDSLinkEvalManager *)self getiRATClientFromList:4])
  {
    [WCM_Logging logLevel:27 message:@"IDS Link Manager: configureIDSMetricsReporting."];
    [(WRM_IDSLinkEvalManager *)self configureIDSMetricsReporting];
  }

  [WCM_Logging logLevel:27 message:@"IDS registration status changed."];
}

- (void)handleBTRegistered
{
  [WCM_Logging logLevel:27 message:@"%s BT registration status changed. State: %d", "[WRM_IDSLinkEvalManager(privateFunctions) handleBTRegistered]", [(WCM_BTController *)self->mBT getBTState]];

  [(WRM_IDSLinkEvalManager *)self evaluateBTWiFiLink];
}

- (void)handleWiFiRegistered
{
  [WCM_Logging logLevel:27 message:@"WiFi registration status changed."];
  if (!self->mWiFi)
  {
    [WCM_Logging logLevel:18 message:@"WiFi did not register, can't get state"];

    [(WRM_IDSLinkEvalManager *)self evaluateBTWiFiLink];
  }
}

+ (id)allocWithZone:(_NSZone *)zone
{
  wRM_IDSLinkEvalManagerSingleton = [self WRM_IDSLinkEvalManagerSingleton];

  return wRM_IDSLinkEvalManagerSingleton;
}

- (WRM_IDSLinkEvalManager)init
{
  v5.receiver = self;
  v5.super_class = WRM_IDSLinkEvalManager;
  v2 = [(WRM_IDSLinkEvalManager *)&v5 init];
  if (v2)
  {
    v2->mQueue = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v2->mQueueTerminus = dispatch_queue_create("com.apple.WirelessRadioManager.IDSLinkEvalMgr", v3);
    v2->miRATClientContexts = objc_alloc_init(NSMutableArray);
    [(WRM_IDSLinkEvalManager *)v2 setMiRATProximityClientContexts:objc_alloc_init(NSMutableArray)];
    v2->mIDSMetricsController = +[WRM_IdsMetricsController WRM_IdsMetricsControllerSingleton];
    v2->mIDSP2PController = +[WRM_IDSP2PController wrm_IDSP2PControllerSingleton];
    [WCM_Logging logLevel:27 message:@"IDS Linkeval Manager: IDS Eval manager initialized"];
    qword_1002B7C98 = 0;
    v2->mWiFi = 0;
    v2->mBT = 0;
    byte_1002B7CA9 = 1;
    v2->mCurrentBTLQMScore = -1;
    v2->mBtLQMUpdateNeeded = 0;
  }

  return v2;
}

- (void)dealloc
{
  [WCM_Logging logLevel:27 message:@"Handover Manager: Dealloc called for IDS Linkeval manager "];
  [(NSMutableArray *)[(WRM_IDSLinkEvalManager *)self miRATProximityClientContexts] removeAllObjects];
  miRATClientContexts = self->miRATClientContexts;
  if (miRATClientContexts)
  {
  }

  if ([(WRM_IDSLinkEvalManager *)self miRATProximityClientContexts])
  {
  }

  self->mWiFi = 0;
  self->mBT = 0;
  mIDSMetricsController = self->mIDSMetricsController;
  if (mIDSMetricsController)
  {
  }

  self->mIDSMetricsController = 0;
  mIDSP2PController = self->mIDSP2PController;
  if (mIDSP2PController)
  {
  }

  self->mIDSP2PController = 0;
  v6.receiver = self;
  v6.super_class = WRM_IDSLinkEvalManager;
  [(WRM_IDSLinkEvalManager *)&v6 dealloc];
}

- (void)updateControllerSession:(id)session ofId:(unint64_t)id
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100071724;
  block[3] = &unk_10023DFB8;
  block[5] = self;
  block[6] = id;
  block[4] = session;
  dispatch_async(mQueue, block);
}

- (void)updateControllerState:(id)state
{
  mQueueTerminus = self->mQueueTerminus;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100071BE4;
  v4[3] = &unk_10023DC80;
  v4[4] = self;
  v4[5] = state;
  dispatch_async(mQueueTerminus, v4);
}

- (id)getiRATClientFromList:(int)list
{
  miRATClientContexts = self->miRATClientContexts;
  objc_sync_enter(miRATClientContexts);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->miRATClientContexts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 getMyClientType] == list)
        {
          if ((list - 1) >= 0x15)
          {
            v11 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
            if (list == 22)
            {
              v11 = "ClientCoreMediaStreaming";
            }
          }

          else
          {
            v11 = off_10023F3D8[list - 1];
          }

          [WCM_Logging logLevel:27 message:@"%s: Found valid irat context for %s", "[WRM_IDSLinkEvalManager getiRATClientFromList:]", v11];
          goto LABEL_15;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_15:
  objc_sync_exit(miRATClientContexts);
  return v10;
}

- (id)getiRATProximityClientFromList:(int)list
{
  miRATClientContexts = self->miRATClientContexts;
  objc_sync_enter(miRATClientContexts);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  miRATProximityClientContexts = [(WRM_IDSLinkEvalManager *)self miRATProximityClientContexts];
  v7 = [(NSMutableArray *)miRATProximityClientContexts countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(miRATProximityClientContexts);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 getMyClientType] == list)
        {
          if ((list - 1) >= 0x15)
          {
            v11 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
            if (list == 22)
            {
              v11 = "ClientCoreMediaStreaming";
            }
          }

          else
          {
            v11 = off_10023F3D8[list - 1];
          }

          [WCM_Logging logLevel:27 message:@"%s: Found valid context for %s", "[WRM_IDSLinkEvalManager getiRATProximityClientFromList:]", v11];
          goto LABEL_15;
        }
      }

      v7 = [(NSMutableArray *)miRATProximityClientContexts countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_15:
  objc_sync_exit(miRATClientContexts);
  return v10;
}

- (BOOL)isPingPongAvoidanceTimerSatisfied:(id)satisfied
{
  v4 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  [objc_msgSend(satisfied "mTerminusContext")];
  v6 = v5;
  dataBtStickinessTimeThreshMs = [v4 dataBtStickinessTimeThreshMs];
  v8 = v6 * 1000.0;
  [WCM_Logging logLevel:27 message:@"delta time:%lf, effectiveBlockout time:%lld ", *&v8, dataBtStickinessTimeThreshMs];
  if (v8 >= dataBtStickinessTimeThreshMs)
  {
    [objc_msgSend(satisfied "mTerminusContext")];
  }

  return v8 >= dataBtStickinessTimeThreshMs;
}

- (void)updateBTLQMScore
{
  v3 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  if (!self->mIDSMetricsController)
  {
    goto LABEL_8;
  }

  v4 = v3;
  mBT = self->mBT;
  if (!mBT)
  {
    goto LABEL_8;
  }

  getMovingAvgBTRssi = [(WCM_BTController *)mBT getMovingAvgBTRssi];
  isBTMetricsValid = [(WCM_BTController *)self->mBT isBTMetricsValid];
  [WCM_Logging logLevel:27 message:@"btMetricsValid: %d btMovingAvg RSSI %llu", isBTMetricsValid, getMovingAvgBTRssi];
  if (!getMovingAvgBTRssi)
  {
LABEL_9:
    v8 = 1;
    goto LABEL_10;
  }

  if (!isBTMetricsValid)
  {
LABEL_8:
    v8 = -1;
    goto LABEL_10;
  }

  if (getMovingAvgBTRssi >= [v4 dataMinBtRssiTh1])
  {
    goto LABEL_9;
  }

  if (getMovingAvgBTRssi >= [v4 dataMinBtRssiTh0])
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

LABEL_10:
  self->mCurrentBTLQMScore = v8;
}

- (void)postBluetoothLQMScore:(BOOL)score
{
  scoreCopy = score;
  [WCM_Logging logLevel:27 message:@"postBluetoothLQMScore: mBtLQMUpdateNeeded %d", self->mBtLQMUpdateNeeded];
  if (self->mBtLQMUpdateNeeded || scoreCopy)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_int64(v5, "WRMLinkPrefBTScore_LQMScore", self->mCurrentBTLQMScore);
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      miRATProximityClientContexts = [(WRM_IDSLinkEvalManager *)self miRATProximityClientContexts];
      v8 = [(NSMutableArray *)miRATProximityClientContexts countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          v11 = 0;
          do
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(miRATProximityClientContexts);
            }

            [*(*(&v12 + 1) + 8 * v11) sendMessage:1309 withArgs:v6];
            [WCM_Logging logLevel:27 message:@"BT LQMScore has changed, post: LQMScore %d", self->mCurrentBTLQMScore];
            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [(NSMutableArray *)miRATProximityClientContexts countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v9);
      }

      xpc_release(v6);
    }
  }
}

- (void)evaluateBTWiFiLinkForTerminus
{
  mQueueTerminus = self->mQueueTerminus;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007229C;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(mQueueTerminus, block);
}

- (BOOL)isBTLinkQualityGood
{
  selfCopy = self;
  getMovingAvgBTRssi = [(WCM_BTController *)self->mBT getMovingAvgBTRssi];
  LODWORD(selfCopy) = [(WCM_BTController *)selfCopy->mBT isBTMetricsValid];
  v4 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  return selfCopy && getMovingAvgBTRssi < [v4 commCenterBTlpmThreasholdBTProximity];
}

- (unint64_t)getWiFiRssi
{
  wifiService = [(WCM_WiFiController *)self->mWiFi wifiService];

  return [(WCM_WiFiService *)wifiService getRSSI];
}

@end