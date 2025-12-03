@interface WRM_MetricsService
+ (WRM_MetricsService)allocWithZone:(_NSZone *)zone;
+ (id)getSingleton;
- (WRMAGCStats)getWRMAGCStats;
- (WRMAntSelPolicyStats)getWRMAntSelPolicyStats;
- (WRMMetriciRATLinkPrefChangeCellularToWiFi)getiRATMetricCellularToWifi;
- (WRMMetriciRATLinkPrefChangeWiFiToCellular)getiRATMetricWiFiToCellular;
- (WRMMetriciRATLinkPrefInit)getiRATMetricLinkPrefInit;
- (WRMMetrics5GVersusWiFi)getWRM5GVersusWiFiLinkPreferenceMetrics;
- (WRMMetricsiRATDataRecommendation)getStandaloneLinkPreferenceMetrics;
- (WRMMetricsiRATFaceTimeHandover)getWRMFaceTimeHandover;
- (WRMMetricsiRATStreaming)getWRMStreaming;
- (WRMPRoximityMetrics)getWRMProximity;
- (WRMULCACoexStats)getWRMULCACoexStats;
- (WRMWiFiCallingEnd)getWRMWiFiCallingEnd;
- (WRM_MetricsService)init;
- (id)getQueue;
- (id)getiRATMetricHORecordCache;
- (void)appCountUpdate:(WRMMetricsAppType *)update :(unint64_t)a4;
- (void)dealloc;
- (void)dumpiRATCellToWifi;
- (void)dumpiRATWifiToCell;
- (void)getOpModeReasonStr:(int)str :(char *)a4;
- (void)getReasonStr:(int)str :(char *)a4;
- (void)getTelephonyReasonStr:(int)str :(char *)a4;
- (void)initAWDService;
- (void)initFaceTimeHandoverMetrics;
- (void)initLTECoexMetrics;
- (void)mobCountUpdate:(WRMMetricsMobilityStatus *)update :(int)a4;
- (void)reset5GVersusWiFiMetrics;
- (void)resetAGCStats;
- (void)resetAntSelPolicyStats;
- (void)resetFaceTimeHandover;
- (void)resetProximity;
- (void)resetStandaloneLinkPreferenceMetrics;
- (void)resetStreaming;
- (void)resetULCACoexStats;
- (void)resetWiFiCallingEnd;
- (void)resetiRATMetricCellularToWifi;
- (void)resetiRATMetricLinkPrefInit;
- (void)resetiRATMetricWiFiToCellular;
- (void)updateiRATMetricLinkInit:(int)init;
@end

@implementation WRM_MetricsService

+ (id)getSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100157668;
  block[3] = &unk_10023DB28;
  block[4] = self;
  if (qword_1002B8208 != -1)
  {
    dispatch_once(&qword_1002B8208, block);
  }

  return qword_1002B8210;
}

- (WRMMetricsiRATFaceTimeHandover)getWRMFaceTimeHandover
{
  mFaceTimeMetrics = self->mFaceTimeMetrics;
  if (mFaceTimeMetrics)
  {
    return &mFaceTimeMetrics->mFaceTime;
  }

  else
  {
    return 0;
  }
}

- (void)initLTECoexMetrics
{
  if (!self->mLTECoexMetrics)
  {
    self->mLTECoexMetrics = objc_alloc_init(WRM_LTECoexMetrics);
  }
}

- (WRMWiFiCallingEnd)getWRMWiFiCallingEnd
{
  mWiFiCallingMetrics = self->mWiFiCallingMetrics;
  if (mWiFiCallingMetrics)
  {
    return &mWiFiCallingMetrics->mWifiCallingEnd;
  }

  else
  {
    return 0;
  }
}

- (void)resetWiFiCallingEnd
{
  mWiFiCallingMetrics = self->mWiFiCallingMetrics;
  if (mWiFiCallingMetrics)
  {
    *&mWiFiCallingMetrics->mWifiCallingEnd.ATM_Registration_State = 0u;
    *&mWiFiCallingMetrics->mWifiCallingEnd.session_id = 0u;
    *&mWiFiCallingMetrics->mWifiCallingEnd.iWLAN_Status = 0u;
    *&mWiFiCallingMetrics->mWifiCallingEnd.HO_Bool = 0u;
    *&mWiFiCallingMetrics->mWifiCallingEnd.Latte_Dejitter_Buffer_Underflow = 0u;
    *&mWiFiCallingMetrics->mWifiCallingEnd.LTE_Data_LQM = 0u;
    *&mWiFiCallingMetrics->mWifiCallingEnd.LTE_Tx_Power = 0u;
    *&mWiFiCallingMetrics->mWifiCallingEnd.WiFi_BSSID_Change = 0u;
    *&mWiFiCallingMetrics->mWifiCallingEnd.WiFi_RSSI = 0u;
  }
}

- (WRMMetriciRATLinkPrefChangeCellularToWiFi)getiRATMetricCellularToWifi
{
  miRATMetrics = self->miRATMetrics;
  if (miRATMetrics)
  {
    return &miRATMetrics->mCellToWifi;
  }

  else
  {
    return 0;
  }
}

- (WRMMetriciRATLinkPrefChangeWiFiToCellular)getiRATMetricWiFiToCellular
{
  miRATMetrics = self->miRATMetrics;
  if (miRATMetrics)
  {
    return &miRATMetrics->mWifiToCell;
  }

  else
  {
    return 0;
  }
}

- (WRMMetrics5GVersusWiFi)getWRM5GVersusWiFiLinkPreferenceMetrics
{
  miRAT5GVersusWiFi = self->miRAT5GVersusWiFi;
  if (miRAT5GVersusWiFi)
  {
    return &miRAT5GVersusWiFi->m5GVersusWiFiMetrics;
  }

  else
  {
    return 0;
  }
}

- (WRM_MetricsService)init
{
  v3.receiver = self;
  v3.super_class = WRM_MetricsService;
  result = [(WRM_MetricsService *)&v3 init];
  if (result)
  {
    *&result->mLTECoexMetrics = 0u;
    *&result->mProximityMetrics = 0u;
    *&result->mStreamingMetrics = 0u;
    *&result->mAWDService = 0u;
    *&result->mCoexMetrics = 0u;
  }

  return result;
}

- (void)dealloc
{
  mCoexMetrics = self->mCoexMetrics;
  if (mCoexMetrics)
  {
  }

  miRATMetrics = self->miRATMetrics;
  if (miRATMetrics)
  {
  }

  mWiFiCallingMetrics = self->mWiFiCallingMetrics;
  if (mWiFiCallingMetrics)
  {
  }

  mAWDService = self->mAWDService;
  if (mAWDService)
  {
  }

  mStreamingMetrics = self->mStreamingMetrics;
  if (mStreamingMetrics)
  {
  }

  mFaceTimeMetrics = self->mFaceTimeMetrics;
  if (mFaceTimeMetrics)
  {
  }

  mProximityMetrics = self->mProximityMetrics;
  if (mProximityMetrics)
  {
  }

  mStandaloneLinkPreferenceMetrics = self->mStandaloneLinkPreferenceMetrics;
  if (mStandaloneLinkPreferenceMetrics)
  {
  }

  mLTECoexMetrics = self->mLTECoexMetrics;
  if (mLTECoexMetrics)
  {
  }

  miRAT5GVersusWiFi = self->miRAT5GVersusWiFi;
  if (miRAT5GVersusWiFi)
  {
  }

  v13.receiver = self;
  v13.super_class = WRM_MetricsService;
  [(WRM_MetricsService *)&v13 dealloc];
}

+ (WRM_MetricsService)allocWithZone:(_NSZone *)zone
{
  getSingleton = [self getSingleton];

  return getSingleton;
}

- (void)initFaceTimeHandoverMetrics
{
  v3 = objc_alloc_init(WRM_FaceTimeMetrics);
  self->mFaceTimeMetrics = v3;
  v3->mFaceTime.iRatPolicy[0] = 0;
  self->mFaceTimeMetrics->mFaceTime.iRatPolicy[1] = 0;
}

- (void)initAWDService
{
  if (!self->mAWDService)
  {
    [WCM_Logging logLevel:25 message:@"Init iRAT AWD service."];
    v4 = objc_alloc_init(WRM_AWDService);
    self->mAWDService = v4;

    [(WRM_AWDService *)v4 listenRTLocationsOfInterestDidClearNotification];
  }
}

- (void)updateiRATMetricLinkInit:(int)init
{
  [WCM_Logging logLevel:25 message:@"========= %s ================", "[WRM_MetricsService updateiRATMetricLinkInit:]"];
  v5 = "WRM_IWLAN_CELLULAR";
  if (init == 1)
  {
    v5 = "WRM_IWLAN_WIFI";
  }

  [WCM_Logging logLevel:25 message:@"%s: link %s", "[WRM_MetricsService updateiRATMetricLinkInit:]", v5];
  if (init == 1)
  {
    v6 = 216;
  }

  else
  {
    if (init)
    {
      goto LABEL_8;
    }

    v6 = 220;
  }

  ++*(&self->miRATMetrics->super.isa + v6);
LABEL_8:
  [WCM_Logging logLevel:25 message:@"LinkInit Stats: Wifi %d Cell %d", self->miRATMetrics->mLinkInit.countWiFi, self->miRATMetrics->mLinkInit.countCellular];

  [WCM_Logging logLevel:25 message:@"===================================================="];
}

- (void)getReasonStr:(int)str :(char *)a4
{
  v4 = a4;
  *a4 = 4271950;
  if (str)
  {
    for (i = 0; i != 16; ++i)
    {
      if ((dword_1001AE248[i] & str) != 0)
      {
        v4 += sprintf(v4, "%s", off_100242438[i]);
      }
    }
  }

  else
  {
    strcpy(a4, "NONE");
  }
}

- (void)dumpiRATCellToWifi
{
  miRATMetrics = self->miRATMetrics;
  [WCM_Logging logLevel:25 message:@"C2W Stats: count %d Call [act:%d idl:%d] App [dat:%d vo:%d] Mob [sta:%d wal:%d run:%d veh:%d]", miRATMetrics->mCellToWifi.count, miRATMetrics->mCellToWifi.callStatus.nCallActive, miRATMetrics->mCellToWifi.callStatus.nCallIdle, miRATMetrics->mCellToWifi.appType.nData, miRATMetrics->mCellToWifi.appType.nIMSVoIP, miRATMetrics->mCellToWifi.mobStatus.nStationary, miRATMetrics->mCellToWifi.mobStatus.nWalking, miRATMetrics->mCellToWifi.mobStatus.nRunning, miRATMetrics->mCellToWifi.mobStatus.nVehicular];
  [WCM_Logging logLevel:25 message:@"C2W Stats: reason [wifiGood:%d cell noReady:%d sigBar:%d LQM:%d RSRP:%d ECIO:%d]", miRATMetrics->mCellToWifi.reason.nWiFiGood, miRATMetrics->mCellToWifi.reason.nCellularNotReady, miRATMetrics->mCellToWifi.reason.nCelluarBadSigBar, miRATMetrics->mCellToWifi.reason.nCelluarBadLQM, miRATMetrics->mCellToWifi.reason.nCelluarBadRsrp, miRATMetrics->mCellToWifi.reason.nCelluarBadEcio];
}

- (void)dumpiRATWifiToCell
{
  miRATMetrics = self->miRATMetrics;
  [WCM_Logging logLevel:25 message:@"W2C Stats: count %d Call [act:%d int:%d] App [dat:%d vo:%d] Mob [sta:%d wal:%d run:%d veh:%d]", miRATMetrics->mWifiToCell.count, miRATMetrics->mWifiToCell.callStatus.nCallActive, miRATMetrics->mWifiToCell.callStatus.nCallIdle, miRATMetrics->mWifiToCell.appType.nData, miRATMetrics->mWifiToCell.appType.nIMSVoIP, miRATMetrics->mWifiToCell.mobStatus.nStationary, miRATMetrics->mWifiToCell.mobStatus.nWalking, miRATMetrics->mWifiToCell.mobStatus.nRunning, miRATMetrics->mWifiToCell.mobStatus.nVehicular];
  [WCM_Logging logLevel:25 message:@"W2C Stats: reason [wifi DPD :%d noReady:%d snr:%d rssi:%d arq:%d load:%d bcn:%d sym:%d rtp:%d Cellular Good:%d]", miRATMetrics->mWifiToCell.reason.nBrokenBH_DPD_or_Video, miRATMetrics->mWifiToCell.reason.nWiFiNotReady, miRATMetrics->mWifiToCell.reason.nWiFiBadSNR, miRATMetrics->mWifiToCell.reason.nWiFiBadRSSI, miRATMetrics->mWifiToCell.reason.nWiFiBadARQ, miRATMetrics->mWifiToCell.reason.nWiFiBadLoad, miRATMetrics->mWifiToCell.reason.nWiFiBadBrokenBH_SIP_VideoStall, miRATMetrics->mWifiToCell.reason.nWiFiBadSymptom, miRATMetrics->mWifiToCell.reason.nWiFiBadRTP, miRATMetrics->mWifiToCell.reason.nWiFiCellularGood];
}

- (void)appCountUpdate:(WRMMetricsAppType *)update :(unint64_t)a4
{
  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    update = (update + 4);
  }

  ++update->nData;
}

- (void)mobCountUpdate:(WRMMetricsMobilityStatus *)update :(int)a4
{
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      update = (update + 8);
    }

    else
    {
      if (a4 != 3)
      {
        return;
      }

      update = (update + 12);
    }
  }

  else if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    update = (update + 4);
  }

  ++update->nStationary;
}

- (WRMMetriciRATLinkPrefInit)getiRATMetricLinkPrefInit
{
  miRATMetrics = self->miRATMetrics;
  if (miRATMetrics)
  {
    return &miRATMetrics->mLinkInit;
  }

  else
  {
    return 0;
  }
}

- (WRMAntSelPolicyStats)getWRMAntSelPolicyStats
{
  mLTECoexMetrics = self->mLTECoexMetrics;
  if (mLTECoexMetrics)
  {
    return &mLTECoexMetrics->mAntSelPolicyStats;
  }

  else
  {
    return 0;
  }
}

- (WRMULCACoexStats)getWRMULCACoexStats
{
  mLTECoexMetrics = self->mLTECoexMetrics;
  if (mLTECoexMetrics)
  {
    return &mLTECoexMetrics->mULCACoexStats;
  }

  else
  {
    return 0;
  }
}

- (WRMAGCStats)getWRMAGCStats
{
  mLTECoexMetrics = self->mLTECoexMetrics;
  if (mLTECoexMetrics)
  {
    return &mLTECoexMetrics->mWRMAGCStats;
  }

  else
  {
    return 0;
  }
}

- (WRMMetricsiRATStreaming)getWRMStreaming
{
  mStreamingMetrics = self->mStreamingMetrics;
  if (mStreamingMetrics)
  {
    return &mStreamingMetrics->mStreaming;
  }

  else
  {
    return 0;
  }
}

- (WRMPRoximityMetrics)getWRMProximity
{
  mProximityMetrics = self->mProximityMetrics;
  if (mProximityMetrics)
  {
    return &mProximityMetrics->mProximity;
  }

  else
  {
    return 0;
  }
}

- (WRMMetricsiRATDataRecommendation)getStandaloneLinkPreferenceMetrics
{
  mStandaloneLinkPreferenceMetrics = self->mStandaloneLinkPreferenceMetrics;
  if (mStandaloneLinkPreferenceMetrics)
  {
    return &mStandaloneLinkPreferenceMetrics->mDataLinkPreferenceMetrics;
  }

  else
  {
    return 0;
  }
}

- (id)getiRATMetricHORecordCache
{
  miRATMetrics = self->miRATMetrics;
  if (miRATMetrics)
  {
    return miRATMetrics->mHORecordCache;
  }

  else
  {
    return 0;
  }
}

- (id)getQueue
{
  v2 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

  return [v2 getQueue];
}

- (void)resetiRATMetricWiFiToCellular
{
  miRATMetrics = self->miRATMetrics;
  if (miRATMetrics)
  {
    *&miRATMetrics->mWifiToCell.handover.nStatusUpdateDelayBin[2] = 0u;
    *&miRATMetrics->mWifiToCell.handover.nHandoverNotPerformed = 0u;
    *&miRATMetrics->mWifiToCell.reason.nWiFiBadSymptom = 0u;
    *&miRATMetrics->mWifiToCell.reason.nWiFiBadRSSI = 0u;
    *&miRATMetrics->mWifiToCell.mobStatus.nVehicular = 0u;
    *&miRATMetrics->mWifiToCell.appType.nIMSVoIP = 0u;
    *&miRATMetrics->mWifiToCell.count = 0u;
  }
}

- (void)resetiRATMetricCellularToWifi
{
  miRATMetrics = self->miRATMetrics;
  if (miRATMetrics)
  {
    *&miRATMetrics->mCellToWifi.handover.nStatusUpdateDelayBin[2] = 0u;
    *&miRATMetrics->mCellToWifi.handover.nHandoverNotPerformed = 0u;
    *&miRATMetrics->mCellToWifi.reason.nCelluarBadLQM = 0u;
    *&miRATMetrics->mCellToWifi.mobStatus.nVehicular = 0u;
    *&miRATMetrics->mCellToWifi.appType.nIMSVoIP = 0u;
    *&miRATMetrics->mCellToWifi.count = 0u;
  }
}

- (void)resetiRATMetricLinkPrefInit
{
  miRATMetrics = self->miRATMetrics;
  if (miRATMetrics)
  {
    miRATMetrics->mLinkInit = 0;
  }
}

- (void)resetAntSelPolicyStats
{
  mLTECoexMetrics = self->mLTECoexMetrics;
  if (mLTECoexMetrics)
  {
    *&mLTECoexMetrics->mAntSelPolicyStats.IsCoexBand = 0;
    *&mLTECoexMetrics->mAntSelPolicyStats.IssueBand = 0;
  }
}

- (void)resetULCACoexStats
{
  mLTECoexMetrics = self->mLTECoexMetrics;
  if (mLTECoexMetrics)
  {
    mLTECoexMetrics->mULCACoexStats.ULCACriticalCarrierDLBW = 0;
    *&mLTECoexMetrics->mULCACoexStats.ULCAPrimaryCarrierDLBW = 0u;
    *&mLTECoexMetrics->mULCACoexStats.ULCAHasCoexBand = 0u;
  }
}

- (void)resetAGCStats
{
  mLTECoexMetrics = self->mLTECoexMetrics;
  if (mLTECoexMetrics)
  {
    *&mLTECoexMetrics->mWRMAGCStats.issueBand = 0;
    *&mLTECoexMetrics->mWRMAGCStats.wifiAGCMode = 0;
    *&mLTECoexMetrics->mWRMAGCStats.hasIssue = 0;
  }
}

- (void)resetStreaming
{
  mStreamingMetrics = self->mStreamingMetrics;
  if (mStreamingMetrics)
  {
    *&mStreamingMetrics->mStreaming.timestamp = 0u;
    p_mStreaming = &mStreamingMetrics->mStreaming;
    *&p_mStreaming->total_configured_mimo_layers = 0u;
    *&p_mStreaming->numStall = 0u;
    *&p_mStreaming->cellChannelBW = 0u;
    *&p_mStreaming->mac_DLCA_configured = 0u;
    *&p_mStreaming->cellNsaEnabled = 0u;
    *&p_mStreaming->cellLteRSRQ = 0u;
    *&p_mStreaming->wifinumberOfSpatialStreams = 0u;
    *&p_mStreaming->tcpRTTmin = 0u;
    *&p_mStreaming->coldStartTypeCellular = 0u;
    *&p_mStreaming->btWiFiCoexState = 0u;
    *&p_mStreaming->lqmScoreBT = 0u;
    *&p_mStreaming->wifiModelConfidenceLevel = 0u;
    *&p_mStreaming->devicePointOfInterest = 0u;
    *&p_mStreaming->rrcState = 0u;
    *&p_mStreaming->pkgLifeTimeVO = 0u;
    *&p_mStreaming->weightedAverageRssi = 0u;
    *&p_mStreaming->goodDecisionsCounterVO = 0u;
    *&p_mStreaming->invalidDecisionCounter = 0u;
    *&p_mStreaming->wifiRssi = 0u;
    *&p_mStreaming->StationCount = 0u;
    *&p_mStreaming->maxOfActualLowBandwidth = 0u;
    *&p_mStreaming->movingAvgHighBandwidth = 0u;
    *&p_mStreaming->buffer_interval = 0u;
  }
}

- (void)resetFaceTimeHandover
{
  mFaceTimeMetrics = self->mFaceTimeMetrics;
  if (mFaceTimeMetrics)
  {
    mFaceTimeMetrics->mFaceTime.callSimSlot = 0;
    *mFaceTimeMetrics->mFaceTime.iRatPolicy = 0u;
    *&mFaceTimeMetrics->mFaceTime.audioErasure = 0u;
    *&mFaceTimeMetrics->mFaceTime.cellRsrp = 0u;
    *&mFaceTimeMetrics->mFaceTime.signalBar = 0u;
    *&mFaceTimeMetrics->mFaceTime.facetimeDelay = 0u;
    *&mFaceTimeMetrics->mFaceTime.iRATRecommendationReason = 0u;
    *&mFaceTimeMetrics->mFaceTime.wifiEstimatedBandwitdh = 0u;
    *&mFaceTimeMetrics->mFaceTime.wifiTxPER = 0u;
    *&mFaceTimeMetrics->mFaceTime.cca = 0u;
    *&mFaceTimeMetrics->mFaceTime.wifiRssi = 0u;
    *&mFaceTimeMetrics->mFaceTime.timestamp = 0u;
  }
}

- (void)resetProximity
{
  mProximityMetrics = self->mProximityMetrics;
  if (mProximityMetrics)
  {
    *&mProximityMetrics->mProximity.btRssi = 0u;
    *&mProximityMetrics->mProximity.newLinkState = 0u;
    *&mProximityMetrics->mProximity.ccAssertion = 0u;
    *&mProximityMetrics->mProximity.timestamp = 0u;
  }
}

- (void)resetStandaloneLinkPreferenceMetrics
{
  mStandaloneLinkPreferenceMetrics = self->mStandaloneLinkPreferenceMetrics;
  if (mStandaloneLinkPreferenceMetrics)
  {
    *&mStandaloneLinkPreferenceMetrics->mDataLinkPreferenceMetrics.packetLifetimeVIBE = 0u;
    *&mStandaloneLinkPreferenceMetrics->mDataLinkPreferenceMetrics.decisionVO = 0u;
    *&mStandaloneLinkPreferenceMetrics->mDataLinkPreferenceMetrics.wifiTxPhyRate = 0u;
    *&mStandaloneLinkPreferenceMetrics->mDataLinkPreferenceMetrics.wifiEstimatedBandwitdh = 0u;
    *&mStandaloneLinkPreferenceMetrics->mDataLinkPreferenceMetrics.bcnPer = 0u;
    *&mStandaloneLinkPreferenceMetrics->mDataLinkPreferenceMetrics.wifiRssi = 0u;
    *&mStandaloneLinkPreferenceMetrics->mDataLinkPreferenceMetrics.ratType = 0u;
    *&mStandaloneLinkPreferenceMetrics->mDataLinkPreferenceMetrics.dataAppStatus = 0u;
    *&mStandaloneLinkPreferenceMetrics->mDataLinkPreferenceMetrics.motionState = 0u;
    *&mStandaloneLinkPreferenceMetrics->mDataLinkPreferenceMetrics.voiceLinkPref = 0u;
    *&mStandaloneLinkPreferenceMetrics->mDataLinkPreferenceMetrics.timestamp = 0u;
  }
}

- (void)reset5GVersusWiFiMetrics
{
  miRAT5GVersusWiFi = self->miRAT5GVersusWiFi;
  if (miRAT5GVersusWiFi)
  {
    *&miRAT5GVersusWiFi->m5GVersusWiFiMetrics.total_nr_bandwidth = 0;
    *&miRAT5GVersusWiFi->m5GVersusWiFiMetrics.radioFrequency = 0u;
    *&miRAT5GVersusWiFi->m5GVersusWiFiMetrics.wifiRecommendationConfidence = 0u;
    *&miRAT5GVersusWiFi->m5GVersusWiFiMetrics.highThermalTemperatureNotification = 0u;
    *&miRAT5GVersusWiFi->m5GVersusWiFiMetrics.wifiWifiEstThoughtputConfidence = 0u;
    *&miRAT5GVersusWiFi->m5GVersusWiFiMetrics.wifiWghtAVGRXPHYRATE = 0u;
    *&miRAT5GVersusWiFi->m5GVersusWiFiMetrics.wifiRxRetry = 0u;
    *&miRAT5GVersusWiFi->m5GVersusWiFiMetrics.wifiCca = 0u;
    *&miRAT5GVersusWiFi->m5GVersusWiFiMetrics.cellRrcState = 0u;
    *&miRAT5GVersusWiFi->m5GVersusWiFiMetrics.cellNrSNR = 0u;
    *&miRAT5GVersusWiFi->m5GVersusWiFiMetrics.cellNrEstimatedThroughput = 0u;
    *&miRAT5GVersusWiFi->m5GVersusWiFiMetrics.cellLteRSRQ = 0u;
    *&miRAT5GVersusWiFi->m5GVersusWiFiMetrics.cellEstimatedBw = 0u;
    *&miRAT5GVersusWiFi->m5GVersusWiFiMetrics.timestamp = 0u;
  }
}

- (void)getTelephonyReasonStr:(int)str :(char *)a4
{
  v4 = a4;
  *a4 = 4271950;
  if (str)
  {
    for (i = 0; i != 8; ++i)
    {
      if ((dword_1001AE288[i] & str) != 0)
      {
        v7 = "tMode";
        if (i <= 6)
        {
          v7 = off_1002424B8[i];
        }

        v4 += sprintf(v4, "%s", v7);
      }
    }
  }

  else
  {
    strcpy(a4, "NONE");
  }
}

- (void)getOpModeReasonStr:(int)str :(char *)a4
{
  v4 = a4;
  *a4 = 4271950;
  if (str)
  {
    for (i = 0; i != 7; ++i)
    {
      if ((dword_1001AE2A8[i] & str) != 0)
      {
        v7 = "oMusicLPMAssertion";
        if (i <= 5)
        {
          v7 = off_1002424F0[i];
        }

        v4 += sprintf(v4, "%s", v7);
      }
    }
  }

  else
  {
    strcpy(a4, "NONE");
  }
}

@end