@interface WRM_EnhancedCTService
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)wrm_EnhancedCTServiceSingleton;
- (BOOL)cellularDataEnabled;
- (BOOL)checkIfServingCellNonLTE;
- (BOOL)dataAttachedWithCellularNetwork;
- (BOOL)dataAttachedWithCellularNetwork:(int64_t)network;
- (BOOL)deviceICheapFR2Coverage;
- (BOOL)deviceInRoaming;
- (BOOL)getDataStallState:(int64_t)state;
- (BOOL)ifAutomatedDeviceGroup;
- (BOOL)ifInternalDevice;
- (BOOL)isAudioQualityGood;
- (BOOL)isBetaBuild;
- (BOOL)isCommCenterAsserted;
- (BOOL)isDataLQMValid;
- (BOOL)isDataLQMValid:(int64_t)valid;
- (BOOL)isDataPreferredSlotCBRS;
- (BOOL)isDeviceUsingFR2Radio;
- (BOOL)isIMSPreferenceEnabled;
- (BOOL)isSimActive;
- (BOOL)isSuppressSOSOnlyWithLimitedServiceEnabled;
- (BOOL)isVoLTESupported;
- (BOOL)isVoNRSupportedOnSlot:(int64_t)slot;
- (BOOL)isVoNrSupported;
- (BOOL)isVoiceLQMValid;
- (BOOL)isVoiceLQMValid:(int64_t)valid;
- (BOOL)isWatchAssociated;
- (BOOL)isWiFiCallingAllowedInAPM;
- (BOOL)isWiFiCallingSupportedAnySlot;
- (BOOL)isWiFiCallingSupportedOnSlot:(int64_t)slot;
- (BOOL)isWiFiCallingSupportedSlot1;
- (BOOL)isWiFiCallingSupportedSlot2;
- (BOOL)qmiClientRunning;
- (BOOL)registeredWithCellularNetwork;
- (BOOL)shouldScheduleSpeedTests;
- (BOOL)validateStrongestSOSTimeStamp:(double)stamp;
- (WRM_EnhancedCTService)init;
- (double)getCurrentAudioErasure;
- (double)getLastKnownLatitude;
- (double)getLastKnownLocationTimestamp;
- (double)getLastKnownLongitude;
- (double)getMeasureBWDataSlot;
- (double)getNrRSRP;
- (double)getNrRSRP:(int64_t)p;
- (double)getNrRSRQ;
- (double)getNrRSRQ:(int64_t)q;
- (double)getNrSNR;
- (double)getNrSNR:(int64_t)r;
- (double)getServingCellECIO;
- (double)getServingCellECIO:(int64_t)o;
- (double)getServingCellRSCP;
- (double)getServingCellRSCP:(int64_t)p;
- (double)getServingCellRSRP;
- (double)getServingCellRSRP:(int64_t)p;
- (double)getServingCellRSRQ;
- (double)getServingCellRSRQ:(int64_t)q;
- (double)getServingCellRSSI;
- (double)getServingCellSINR;
- (double)getServingCellSNR;
- (double)getServingCellSNR:(int64_t)r;
- (double)initSOSWaypointThreshold;
- (float)getCurrentMovAvgSignalBars;
- (id)getCellID:(int64_t)d;
- (id)getCurrentCellularAvailabilityStatus;
- (id)getInternetInterfaceName;
- (id)getPLMN:(int64_t)n;
- (id)getPreviousCellularAvailabilityStatus;
- (id)intializeInterfaceClient:(int64_t)client;
- (int)combinedRegistrationStatus;
- (int)getBandInfoDataSlot;
- (int)getBandInfoOnSlot:(int64_t)slot;
- (int)getBandWidthDataSlot;
- (int)getCTDataIndictor;
- (int)getCTDataIndictor:(int64_t)indictor;
- (int)getCellRSRP4G5GvsWiFiThreshold;
- (int)getCellRSRQ4G5GvsWiFiThreshold;
- (int)getCellularDataLQM;
- (int)getCellularDataLQM:(int64_t)m;
- (int)getConfiguredMaxBW;
- (int)getCurrentNRStatusDataSlot;
- (int)getLteVoiceLQM;
- (int)getLteVoiceLQM:(int64_t)m;
- (int)getRRCState;
- (int)getRegistrationStatus:(int64_t)status;
- (int)getServingCellType;
- (int)getServingCellType:(int64_t)type;
- (int)getUARFCNDataSlot;
- (int)getVoiceLQM_sync:(int64_t)m_sync;
- (int)getWiFiNRStatusDataSlot;
- (int)parseRegistrationStatusForBiomeStream:(id)stream;
- (int64_t)getCellularLQM;
- (int64_t)getCurrentSignalBars;
- (int64_t)getCurrentSignalBars:(int64_t)bars;
- (int64_t)getSlotFromUUID:(id)d;
- (int64_t)getSubscriptionsSlotMap;
- (unsigned)getCellConfiguredBandwidthThreshold;
- (unsigned)getLocationDBFR1Count;
- (unsigned)getLocationDBFR2Count;
- (unsigned)getRadioCoverage;
- (unsigned)getRadioFrequency;
- (unsigned)getWRMCellOutrankWifiBWThreshold;
- (void)anyCallStateChange:(int)change;
- (void)carrierBundleChange:(id)change;
- (void)cellChanged:(id)changed cell:(id)cell;
- (void)cellMonitorUpdate:(id)update info:(id)info;
- (void)checkAndScheduleSpeedTest;
- (void)context:(id)context capabilitiesChanged:(id)changed;
- (void)createWrmSdmLocationManager;
- (void)currentDataSimChanged:(id)changed;
- (void)dataStatus:(id)status dataStatusInfo:(id)info;
- (void)dealloc;
- (void)displayStatusChanged:(id)changed status:(id)status;
- (void)enhancedDataLinkQualityChanged:(id)changed metric:(id)metric;
- (void)enhancedVoiceLinkQualityChanged:(id)changed metric:(id)metric;
- (void)evaluateCbrsInDualSimMode:(BOOL)mode;
- (void)evaluateCbrsInSingleSimMode;
- (void)feedCellularMetricsWithUUID:(id)d;
- (void)fetchWrmSdmLocationDbInfoWithMcc:(unsigned int)mcc Mnc:(unsigned int)mnc CellId:(unint64_t)id ForSim:(int64_t)sim;
- (void)getCurrentEnhancedCTMetrics;
- (void)imsRegistrationChanged:(id)changed info:(id)info;
- (void)initCellStationManager;
- (void)initCellularSpeedTest;
- (void)initCoreTelephonyClient;
- (void)initLocationController;
- (void)initMovAverageOfSignalBar;
- (void)initializeStrongestSOSSignal:(double)signal;
- (void)interfaceCostExpensiveChanged:(id)changed isExpensive:(BOOL)expensive;
- (void)internetConnectionStateChanged:(id)changed;
- (void)invalidateAudioQualityMetrics;
- (void)monitorStrongSOSSignal:(double)signal;
- (void)plmnChanged:(id)changed plmn:(id)plmn;
- (void)processDataAttached:(BOOL)attached :(int64_t)a4;
- (void)processDataStatus:(id)status :(int64_t)a4;
- (void)processEnhancedDataLQMBlob:(id)blob :(int64_t)a4;
- (void)processEnhancedVoiceLinkQualityBlob:(id)blob :(int64_t)a4;
- (void)processMobileCountryCode:(id)code :(int64_t)a4;
- (void)processMobileNetworkCode:(id)code :(int64_t)a4;
- (void)processPrivateNwPreferredOverWifiStatus:(BOOL)status slot:(int64_t)slot;
- (void)processPrivateNwSimStatus:(BOOL)status slot:(int64_t)slot;
- (void)processRadioTechnologyInfo:(id)info :(int64_t)a4;
- (void)processRegistrationStatus:(id)status :(int64_t)a4;
- (void)processSignalStrengthInfo:(id)info :(int64_t)a4;
- (void)processSubscriptionInfo:(id)info :(id)a4;
- (void)processVoNRStatus:(BOOL)status :(int64_t)a4;
- (void)processVoiceLinkQualityInfo:(id)info :(int64_t)a4;
- (void)processVoiceLqmQMI:(unsigned __int8)i VLQM:(unsigned __int8)m IMSPreference:(BOOL)preference AudioErasure:(double)erasure RSRP:(double)p;
- (void)processVolteStatus:(BOOL)status :(int64_t)a4;
- (void)processWiFiCallingStatus:(BOOL)status :(int64_t)a4;
- (void)queryLocationdDBForHarvestingData:(double)data :(double)a4;
- (void)reloadCellularSpeedTestSettingsFromPreferences;
- (void)resetCbrsCAMetricSentOnSimSlot:(int64_t)slot;
- (void)resetCellularDataLQM;
- (void)resetLteVoiceLQM;
- (void)resetMovAverageOfSignalBar;
- (void)resetWiFiNRStatusDataSlot;
- (void)sendInitialVoiceLqmNotification;
- (void)setActiveSlot:(int64_t)slot;
- (void)setCellularSpeedTestSettingsToPreferences:(BOOL)preferences;
- (void)setCellularSpeedTestsDisabled:(BOOL)disabled;
- (void)setNrRSRP:(double)p forSim:(int64_t)sim;
- (void)setNrRSRQ:(double)q forSim:(int64_t)sim;
- (void)setNrSNR:(double)r forSim:(int64_t)sim;
- (void)setServingCellECIO:(double)o forSim:(int64_t)sim;
- (void)setServingCellRSCP:(double)p forSim:(int64_t)sim;
- (void)setServingCellRSRP:(double)p forSim:(int64_t)sim;
- (void)setServingCellRSRQ:(double)q forSim:(int64_t)sim;
- (void)setServingCellRSSI:(double)i forSim:(int64_t)sim;
- (void)setServingCellSINR:(double)r forSim:(int64_t)sim;
- (void)setServingCellSNR:(double)r forSim:(int64_t)sim;
- (void)setTrialParameters:(id)parameters;
- (void)signalStrengthChanged:(id)changed info:(id)info;
- (void)smartDataModeChanged:(id)changed userEnabled:(BOOL)enabled;
- (void)subscriptionInfoDidChange;
- (void)tiggerEnhanceLQMConfiguration;
- (void)triggerCommCenterForActivation;
- (void)triggerCommCenterForDeActivation;
- (void)triggerHarvestedCellEval;
- (void)triggerLocationUpdate;
- (void)updateAllowSAonWiFiCarrierBundleKey:(id)key;
- (void)updateAudioQualityKaroo:(id *)karoo :(int64_t)a4;
- (void)updateCellularAvailabilityStatus:(id)status :(int64_t)a4 :(double)a5 :(BOOL)a6;
- (void)updateConfiguredMaxBW:(int64_t)w dlbw:(unsigned int)dlbw ulbw:(unsigned int)ulbw;
- (void)updateCurrentRatInfo:(int64_t)info currentNRCell:(int)cell;
- (void)updateDataStallState:(int64_t)state stall:(BOOL)stall;
- (void)updateGlobalCellID:(unsigned __int8)d gci:(id)gci cellprefix:(int)cellprefix;
- (void)updateHighRateLikely:(int64_t)likely highrateIndicator:(BOOL)indicator;
- (void)updateLTEBandwidth:(int64_t)bandwidth LTEBW:(unsigned int)w;
- (void)updateMovAverageOfSignalBar;
- (void)updateRLHandoverPolicyCarrierBundleKey:(id)key;
- (void)updateUplinkEstimatedBW:(unsigned __int8)w bw:(unsigned int)bw conf:(unsigned int)conf queue:(unsigned int)queue;
- (void)updateVoLTESpeechErasure:(unint64_t)erasure;
- (void)updateWrmSdmLocationDbInfoRegister:(BOOL)register forSim:(int64_t)sim;
- (void)voiceLinkQualityChanged:(id)changed metric:(id)metric;
- (void)writeToCellularAvailabilityStatusBiomeStream:(double)stream :(BOOL)a4;
@end

@implementation WRM_EnhancedCTService

+ (id)wrm_EnhancedCTServiceSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D1FC;
  block[3] = &unk_10023DB28;
  block[4] = self;
  if (qword_1002B7D30 != -1)
  {
    dispatch_once(&qword_1002B7D30, block);
  }

  return qword_1002B7D38;
}

- (int)getCTDataIndictor
{
  v3 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService dataIndicator](self "dataIndicator")];
  if ([(WRM_EnhancedCTService *)self dataPreferredSlot])
  {
    if ([(WRM_EnhancedCTService *)self dataPreferredSlot]== 1)
    {
      v4 = "CTSubscriptionSlotOne";
    }

    else
    {
      dataPreferredSlot = [(WRM_EnhancedCTService *)self dataPreferredSlot];
      v4 = "Unknown CTSubscriptionSlot!!!";
      if (dataPreferredSlot == 2)
      {
        v4 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  if (v3 < 0x13 && ((0x7FFF7u >> v3) & 1) != 0)
  {
    v6 = (&off_10023E400)[v3];
  }

  else
  {
    v6 = "Unknown kCTDataIndicatorStatusUnknown!!!";
    if (v3 == 19)
    {
      v6 = "5G_CA";
    }
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s Data indicator: %s", "[WRM_EnhancedCTService getCTDataIndictor]", v4, v6];
  return v3;
}

- (BOOL)isDeviceUsingFR2Radio
{
  if ([(WRM_EnhancedCTService *)self activeSlot])
  {
    if ([(WRM_EnhancedCTService *)self activeSlot]== 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else if ([(WRM_EnhancedCTService *)self activeSlot]== 2)
    {
      v3 = "CTSubscriptionSlotTwo";
    }

    else
    {
      v3 = "Unknown CTSubscriptionSlot!!!";
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s isFR2 %@", "[WRM_EnhancedCTService isDeviceUsingFR2Radio]", v3, [(WRM_EnhancedCTService *)self isFR2Radio]];
  v4 = [(NSMutableArray *)[(WRM_EnhancedCTService *)self isFR2Radio] objectAtIndex:[(WRM_EnhancedCTService *)self dataPreferredSlot]- 1];

  return [v4 BOOLValue];
}

- (int)getWiFiNRStatusDataSlot
{
  v3 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService wifiNRCellFound](self "wifiNRCellFound")];
  if ([(WRM_EnhancedCTService *)self dataPreferredSlot])
  {
    if ([(WRM_EnhancedCTService *)self dataPreferredSlot]== 1)
    {
      v4 = "CTSubscriptionSlotOne";
    }

    else
    {
      dataPreferredSlot = [(WRM_EnhancedCTService *)self dataPreferredSlot];
      v4 = "Unknown CTSubscriptionSlot!!!";
      if (dataPreferredSlot == 2)
      {
        v4 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s NR Available %d", "[WRM_EnhancedCTService getWiFiNRStatusDataSlot]", v4, v3];
  return v3;
}

- (int)getCurrentNRStatusDataSlot
{
  v3 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService currNRCellFound](self "currNRCellFound")];
  if ([(WRM_EnhancedCTService *)self dataPreferredSlot])
  {
    if ([(WRM_EnhancedCTService *)self dataPreferredSlot]== 1)
    {
      v4 = "CTSubscriptionSlotOne";
    }

    else
    {
      dataPreferredSlot = [(WRM_EnhancedCTService *)self dataPreferredSlot];
      v4 = "Unknown CTSubscriptionSlot!!!";
      if (dataPreferredSlot == 2)
      {
        v4 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s NR Available %d", "[WRM_EnhancedCTService getCurrentNRStatusDataSlot]", v4, v3];
  return v3;
}

- (int)getBandWidthDataSlot
{
  v3 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService cellBandwidth](self "cellBandwidth")];
  if ([(WRM_EnhancedCTService *)self dataPreferredSlot])
  {
    if ([(WRM_EnhancedCTService *)self dataPreferredSlot]== 1)
    {
      v4 = "CTSubscriptionSlotOne";
    }

    else
    {
      dataPreferredSlot = [(WRM_EnhancedCTService *)self dataPreferredSlot];
      v4 = "Unknown CTSubscriptionSlot!!!";
      if (dataPreferredSlot == 2)
      {
        v4 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s Cell BW %d", "[WRM_EnhancedCTService getBandWidthDataSlot]", v4, v3];
  return v3;
}

- (BOOL)isDataPreferredSlotCBRS
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003054;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)updateMovAverageOfSignalBar
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000070F0;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (int64_t)getSubscriptionsSlotMap
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000085FC;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (int)getServingCellType
{
  v3 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService servCellRadioTechnologyType](self "servCellRadioTechnologyType")];
  if ([(WRM_EnhancedCTService *)self activeSlot])
  {
    if ([(WRM_EnhancedCTService *)self activeSlot]== 1)
    {
      v4 = "CTSubscriptionSlotOne";
    }

    else if ([(WRM_EnhancedCTService *)self activeSlot]== 2)
    {
      v4 = "CTSubscriptionSlotTwo";
    }

    else
    {
      v4 = "Unknown CTSubscriptionSlot!!!";
    }
  }

  else
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  servCellRadioTechnologyType = [(WRM_EnhancedCTService *)self servCellRadioTechnologyType];
  v6 = v3 - 1;
  if (v3 - 1) < 0xA && ((0x2FFu >> v6))
  {
    v7 = (&off_10023E318)[v6];
  }

  else
  {
    v7 = "UNKNOWN_RADIO!!!";
    if (v3 == 9)
    {
      v7 = "N_RADIO";
    }
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s rat property %@ rat %s", "[WRM_EnhancedCTService getServingCellType]", v4, servCellRadioTechnologyType, v7];
  return v3;
}

- (BOOL)dataAttachedWithCellularNetwork
{
  if ([(WRM_EnhancedCTService *)self activeSlot])
  {
    if ([(WRM_EnhancedCTService *)self activeSlot]== 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else if ([(WRM_EnhancedCTService *)self activeSlot]== 2)
    {
      v3 = "CTSubscriptionSlotTwo";
    }

    else
    {
      v3 = "Unknown CTSubscriptionSlot!!!";
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s isDataAttached %@", "[WRM_EnhancedCTService dataAttachedWithCellularNetwork]", v3, [(WRM_EnhancedCTService *)self isDataAttached]];
  v4 = [(NSMutableArray *)[(WRM_EnhancedCTService *)self isDataAttached] objectAtIndex:[(WRM_EnhancedCTService *)self activeSlot]- 1];

  return [v4 BOOLValue];
}

- (BOOL)cellularDataEnabled
{
  if ([(WRM_EnhancedCTService *)self activeSlot])
  {
    if ([(WRM_EnhancedCTService *)self activeSlot]== 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else if ([(WRM_EnhancedCTService *)self activeSlot]== 2)
    {
      v3 = "CTSubscriptionSlotTwo";
    }

    else
    {
      v3 = "Unknown CTSubscriptionSlot!!!";
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s isDataEnabled %@", "[WRM_EnhancedCTService cellularDataEnabled]", v3, [(WRM_EnhancedCTService *)self isDataEnabled]];
  v4 = [(NSMutableArray *)[(WRM_EnhancedCTService *)self isDataEnabled] objectAtIndex:[(WRM_EnhancedCTService *)self activeSlot]- 1];

  return [v4 BOOLValue];
}

- (BOOL)deviceICheapFR2Coverage
{
  selfCopy = self;
  [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService isExpensive](self "isExpensive")];
  [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService dataModeLTE](selfCopy "dataModeLTE")];
  v3 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService detectedFR2CellCountLocDB](selfCopy "detectedFR2CellCountLocDB")];
  LODWORD(selfCopy) = v3;
  [WCM_Logging logLevel:22 message:@"deviceICheapFR2Coverage:%d", v3];
  return selfCopy != 0;
}

- (BOOL)isVoNrSupported
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000E5D4;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)registeredWithCellularNetwork
{
  if ([(WRM_EnhancedCTService *)self activeSlot])
  {
    if ([(WRM_EnhancedCTService *)self activeSlot]== 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else if ([(WRM_EnhancedCTService *)self activeSlot]== 2)
    {
      v3 = "CTSubscriptionSlotTwo";
    }

    else
    {
      v3 = "Unknown CTSubscriptionSlot!!!";
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s isDeviceRegistered %@", "[WRM_EnhancedCTService registeredWithCellularNetwork]", v3, [(WRM_EnhancedCTService *)self isDeviceRegistered]];
  v4 = [(NSMutableArray *)[(WRM_EnhancedCTService *)self isDeviceRegistered] objectAtIndex:[(WRM_EnhancedCTService *)self activeSlot]- 1];

  return [v4 BOOLValue];
}

- (BOOL)isIMSPreferenceEnabled
{
  if ([(WRM_EnhancedCTService *)self activeSlot])
  {
    if ([(WRM_EnhancedCTService *)self activeSlot]== 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else if ([(WRM_EnhancedCTService *)self activeSlot]== 2)
    {
      v3 = "CTSubscriptionSlotTwo";
    }

    else
    {
      v3 = "Unknown CTSubscriptionSlot!!!";
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s imsVoiceOverPSSupported %@", "[WRM_EnhancedCTService isIMSPreferenceEnabled]", v3, [(WRM_EnhancedCTService *)self imsVoiceOverPSSupported]];
  v4 = [(NSMutableArray *)[(WRM_EnhancedCTService *)self imsVoiceOverPSSupported] objectAtIndex:[(WRM_EnhancedCTService *)self activeSlot]- 1];

  return [v4 BOOLValue];
}

- (BOOL)isVoLTESupported
{
  if ([(WRM_EnhancedCTService *)self activeSlot])
  {
    if ([(WRM_EnhancedCTService *)self activeSlot]== 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else if ([(WRM_EnhancedCTService *)self activeSlot]== 2)
    {
      v3 = "CTSubscriptionSlotTwo";
    }

    else
    {
      v3 = "Unknown CTSubscriptionSlot!!!";
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s isVoLTESupported %@", "[WRM_EnhancedCTService isVoLTESupported]", v3, [(WRM_EnhancedCTService *)self isVolteSupported]];
  v4 = [(NSMutableArray *)[(WRM_EnhancedCTService *)self isVolteSupported] objectAtIndex:[(WRM_EnhancedCTService *)self activeSlot]- 1];

  return [v4 BOOLValue];
}

- (int64_t)getCurrentSignalBars
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000EAB4;
  v4[3] = &unk_10023DDB0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (float)getCurrentMovAvgSignalBars
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000EC7C;
  v4[3] = &unk_10023DDB0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = v6[6];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isAudioQualityGood
{
  v3 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService PrevAudioQualityWasGood](self "PrevAudioQualityWasGood")];
  if ([(WRM_EnhancedCTService *)self activeSlot])
  {
    if ([(WRM_EnhancedCTService *)self activeSlot]== 1)
    {
      v4 = "CTSubscriptionSlotOne";
    }

    else
    {
      activeSlot = [(WRM_EnhancedCTService *)self activeSlot];
      v4 = "Unknown CTSubscriptionSlot!!!";
      if (activeSlot == 2)
      {
        v4 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s PrevAudioQualityWasGood %d", "[WRM_EnhancedCTService isAudioQualityGood]", v4, v3];
  return v3;
}

- (BOOL)isVoiceLQMValid
{
  v3 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService VoiceLqmIsValid](self "VoiceLqmIsValid")];
  if ([(WRM_EnhancedCTService *)self activeSlot])
  {
    if ([(WRM_EnhancedCTService *)self activeSlot]== 1)
    {
      v4 = "CTSubscriptionSlotOne";
    }

    else
    {
      activeSlot = [(WRM_EnhancedCTService *)self activeSlot];
      v4 = "Unknown CTSubscriptionSlot!!!";
      if (activeSlot == 2)
      {
        v4 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  v6 = "No";
  if (v3)
  {
    v6 = "Yes";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s vLQM is valid? %s", "[WRM_EnhancedCTService isVoiceLQMValid]", v4, v6];
  return v3;
}

- (int)getLteVoiceLQM
{
  v3 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService VoiceLqmValue](self "VoiceLqmValue")];
  if ([(WRM_EnhancedCTService *)self activeSlot])
  {
    if ([(WRM_EnhancedCTService *)self activeSlot]== 1)
    {
      v4 = "CTSubscriptionSlotOne";
    }

    else
    {
      activeSlot = [(WRM_EnhancedCTService *)self activeSlot];
      v4 = "Unknown CTSubscriptionSlot!!!";
      if (activeSlot == 2)
      {
        v4 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s vLQM %d", "[WRM_EnhancedCTService getLteVoiceLQM]", v4, v3];
  return v3;
}

- (BOOL)isWiFiCallingSupportedSlot1
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000FB7C;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isWiFiCallingSupportedSlot2
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000FC80;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (double)getServingCellRSRP
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012F58;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (double)getServingCellSNR
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100013108;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (int)getRRCState
{
  v2 = [(NSMutableArray *)[(WRM_EnhancedCTService *)self rrcState] objectAtIndex:[(WRM_EnhancedCTService *)self dataPreferredSlot]- 1];

  return [v2 intValue];
}

- (double)getServingCellRSRQ
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100013304;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (double)getMeasureBWDataSlot
{
  [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService dataBW](self "dataBW")];
  v4 = v3;
  if ([(WRM_EnhancedCTService *)self dataPreferredSlot])
  {
    if ([(WRM_EnhancedCTService *)self dataPreferredSlot]== 1)
    {
      v5 = "CTSubscriptionSlotOne";
    }

    else
    {
      dataPreferredSlot = [(WRM_EnhancedCTService *)self dataPreferredSlot];
      v5 = "Unknown CTSubscriptionSlot!!!";
      if (dataPreferredSlot == 2)
      {
        v5 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v5 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s BW %f", "[WRM_EnhancedCTService getMeasureBWDataSlot]", v5, *&v4];
  return v4;
}

- (int)getUARFCNDataSlot
{
  v3 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService cellARFCN](self "cellARFCN")];
  if ([(WRM_EnhancedCTService *)self dataPreferredSlot])
  {
    if ([(WRM_EnhancedCTService *)self dataPreferredSlot]== 1)
    {
      v4 = "CTSubscriptionSlotOne";
    }

    else
    {
      dataPreferredSlot = [(WRM_EnhancedCTService *)self dataPreferredSlot];
      v4 = "Unknown CTSubscriptionSlot!!!";
      if (dataPreferredSlot == 2)
      {
        v4 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s ARFCN %d", "[WRM_EnhancedCTService getUARFCNDataSlot]", v4, v3];
  return v3;
}

- (int)getBandInfoDataSlot
{
  v3 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService cellBandInfo](self "cellBandInfo")];
  if ([(WRM_EnhancedCTService *)self dataPreferredSlot])
  {
    if ([(WRM_EnhancedCTService *)self dataPreferredSlot]== 1)
    {
      v4 = "CTSubscriptionSlotOne";
    }

    else
    {
      dataPreferredSlot = [(WRM_EnhancedCTService *)self dataPreferredSlot];
      v4 = "Unknown CTSubscriptionSlot!!!";
      if (dataPreferredSlot == 2)
      {
        v4 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s Band info %d", "[WRM_EnhancedCTService getBandInfoDataSlot]", v4, v3];
  return v3;
}

- (void)triggerHarvestedCellEval
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014948;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)triggerLocationUpdate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014AE8;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (double)getCurrentAudioErasure
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if ([(WRM_EnhancedCTService *)self activeSlot])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000162E0;
    v5[3] = &unk_10023DD60;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync([(WRM_EnhancedCTService *)self queue], v5);
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)getLastKnownLatitude
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100016800;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (double)getLastKnownLongitude
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100016AF8;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (double)getLastKnownLocationTimestamp
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100016BE0;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setActiveSlot:(int64_t)slot
{
  if (!slot)
  {
    [WCM_Logging logLevel:22 message:@"%s: Slot set to %s, changing it to Slot 1", "[WRM_EnhancedCTService setActiveSlot:]", "CTSubscriptionSlotUnknown"];
    slot = 1;
  }

  *(&self->_dataPreferredSlotOnCBRS + 2) = slot;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  wrm_EnhancedCTServiceSingleton = [self wrm_EnhancedCTServiceSingleton];

  return wrm_EnhancedCTServiceSingleton;
}

- (WRM_EnhancedCTService)init
{
  v13.receiver = self;
  v13.super_class = WRM_EnhancedCTService;
  v2 = [(WRM_CTService *)&v13 init];
  if (v2)
  {
    [v2 setQueue:{dispatch_queue_create("com.apple.WirelessRadioManager.enhancedCTClient", 0)}];
    [v2 setServerQueue:{dispatch_queue_create("com.apple.WirelessRadioManager.enhancedCTServer", 0)}];
    [v2 setCellularAvailabilityStatusQueue:{dispatch_queue_create("com.apple.WirelessRadioManager.enhancedCTCellularAvailabilityStatus", 0)}];
    [v2 setCTClientInitDone:0];
    [v2 setMSubscriptionInfoDidChange:0];
    [v2 setActiveSlot:1];
    [v2 setSubscriptions:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setIsDataAttached:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setIsDataEnabled:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setIsDeviceRegistered:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setIsVolteSupported:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setIsVoNRSupported:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setIsWiFiCallingSupported:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setIsPrivateNetworkSim:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setIsPrivateNetworkPreferredOverWifi:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setIsRoaming:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setIsFR2Radio:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setRadioCoverage:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setRadioFrequency:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setDataEnabled:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setBars:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setMovingAverageSignalBars:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setServCellRadioTechnologyType:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setVoiceLqmValue:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setVoiceLqmIsValid:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setVoiceLqmReasonCode:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setImsVoiceOverPSSupported:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setServCellRSRP:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setServCellRSRQ:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setServCellRSSI:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setServCellSNR:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setServCellSINR:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setServCellRSCP:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setServCellECIO:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setPrevAudioQualityWasGood:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setPrevAudioErasurePercent:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setLoads:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setRrcState:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setMcc:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setMnc:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setNrCellRSRP:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setNrCellRSRQ:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setNrCellSNR:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setDataIndicator:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setDataBW:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setCellARFCN:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setCellBandInfo:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setCellBandwidth:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setLocDbRequired:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setCurrNRCellFound:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setWifiNRCellFound:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setCurrCBRSCellFound:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setDataPreferredSlotOnCBRS:0];
    [v2 setWifiCBRSCellFound:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setCbrsCoreAnalyticsMetricsSent:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setDetectedFR1CellCountLocDB:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setDetectedFR1CellBW:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setDetectedFR2CellCountLocDB:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setCellID:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setConfiguredMaxDLBW:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setConfiguredMaxULBW:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setEstimatedBWDL:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setEstimatedBWDLConf:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setEstimatedBWUL:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setEstimatedBWULConf:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setNeighberCellType:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setHighDataRateObserved:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setCurrentNRCellType:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setCurrentHarvestedCellTypeFR2Capable:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setStallDetected:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setDataModeLTE:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    [v2 setIsExpensive:{objc_msgSend([NSMutableArray alloc], "initWithCapacity:", 2)}];
    *(v2 + 372) = [[NSMutableArray alloc] initWithCapacity:2];
    *(v2 + 95) = -1;
    v3 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    *(v2 + 428) = v3;
    if (!v3)
    {
      [WCM_Logging logLevel:24 message:@"%s: Creating SC Service WRM_SCServiceControllerSingleton", "[WRM_EnhancedCTService init]"];
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002E70C;
      block[3] = &unk_10023DB28;
      block[4] = v2;
      dispatch_async(global_queue, block);
    }

    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      [objc_msgSend(v2 "isDataAttached")];
      [objc_msgSend(v2 "isDataEnabled")];
      [objc_msgSend(v2 "isDeviceRegistered")];
      [objc_msgSend(v2 "isVolteSupported")];
      [objc_msgSend(v2 "isVoNRSupported")];
      [objc_msgSend(v2 "isWiFiCallingSupported")];
      [objc_msgSend(v2 "isPrivateNetworkSim")];
      [objc_msgSend(v2 "isPrivateNetworkPreferredOverWifi")];
      [objc_msgSend(v2 "isRoaming")];
      [objc_msgSend(v2 "isFR2Radio")];
      [objc_msgSend(v2 "radioCoverage")];
      [objc_msgSend(v2 "radioFrequency")];
      [objc_msgSend(v2 "dataEnabled")];
      [objc_msgSend(v2 "bars")];
      movingAverageSignalBars = [v2 movingAverageSignalBars];
      LODWORD(v9) = 5.0;
      [movingAverageSignalBars insertObject:+[NSNumber numberWithFloat:](NSNumber atIndex:{"numberWithFloat:", v9), v5}];
      [objc_msgSend(v2 "servCellRadioTechnologyType")];
      [objc_msgSend(v2 "VoiceLqmValue")];
      [objc_msgSend(v2 "VoiceLqmIsValid")];
      [objc_msgSend(v2 "VoiceLqmReasonCode")];
      [objc_msgSend(v2 "imsVoiceOverPSSupported")];
      [objc_msgSend(v2 "servCellRSRP")];
      [objc_msgSend(v2 "servCellRSRQ")];
      [objc_msgSend(v2 "servCellRSSI")];
      [objc_msgSend(v2 "servCellSNR")];
      [objc_msgSend(v2 "servCellSINR")];
      [objc_msgSend(v2 "servCellRSCP")];
      [objc_msgSend(v2 "servCellECIO")];
      [objc_msgSend(v2 "PrevAudioQualityWasGood")];
      [objc_msgSend(v2 "PrevAudioErasurePercent")];
      [objc_msgSend(v2 "loads")];
      [objc_msgSend(v2 "rrcState")];
      [objc_msgSend(v2 "nrCellRSRP")];
      [objc_msgSend(v2 "nrCellRSRQ")];
      [objc_msgSend(v2 "nrCellSNR")];
      [objc_msgSend(v2 "dataIndicator")];
      [objc_msgSend(v2 "dataBW")];
      [objc_msgSend(v2 "mcc")];
      [objc_msgSend(v2 "mnc")];
      [objc_msgSend(v2 "locDbRequired")];
      [objc_msgSend(v2 "cellARFCN")];
      [objc_msgSend(v2 "cellBandInfo")];
      [objc_msgSend(v2 "cellBandwidth")];
      [objc_msgSend(v2 "currNRCellFound")];
      [objc_msgSend(v2 "wifiNRCellFound")];
      [objc_msgSend(v2 "currCBRSCellFound")];
      [objc_msgSend(v2 "cbrsCoreAnalyticsMetricsSent")];
      [objc_msgSend(v2 "detectedFR1CellCountLocDB")];
      [objc_msgSend(v2 "detectedFR1CellBW")];
      [objc_msgSend(v2 "detectedFR2CellCountLocDB")];
      [objc_msgSend(v2 "cellID")];
      [objc_msgSend(v2 "configuredMaxDLBW")];
      [objc_msgSend(v2 "configuredMaxULBW")];
      [objc_msgSend(v2 "estimatedBWDL")];
      [objc_msgSend(v2 "estimatedBWDLConf")];
      [objc_msgSend(v2 "estimatedBWUL")];
      [objc_msgSend(v2 "estimatedBWULConf")];
      [objc_msgSend(v2 "neighberCellType")];
      [objc_msgSend(v2 "highDataRateObserved")];
      [objc_msgSend(v2 "currentNRCellType")];
      [objc_msgSend(v2 "currentHarvestedCellTypeFR2Capable")];
      [objc_msgSend(v2 "stallDetected")];
      [objc_msgSend(v2 "dataModeLTE")];
      [objc_msgSend(v2 "isExpensive")];
      [*(v2 + 372) insertObject:+[NSNumber numberWithInt:](NSNumber atIndex:{"numberWithInt:", 0), v5}];
      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
    [v2 setNumberofSubscriptions:1];
    [v2 setDataPreferredSlot:1];
    *(v2 + 316) = 0;
    *(v2 + 324) = 0;
    *(v2 + 332) = 0;
    *(v2 + 340) = 0;
    *(v2 + 348) = 0;
    v2[364] = 0;
    *(v2 + 388) = 0;
    *(v2 + 396) = 0;
    *(v2 + 404) = 0xC08F400000000000;
    [v2 initSOSWaypointThreshold];
    *(v2 + 412) = v10;
    v2[420] = 0;
    *(v2 + 111) = 40;
    *(v2 + 112) = 250000;
    *(v2 + 113) = -105;
    *(v2 + 114) = -20;
    *(v2 + 460) = 0;
    *(v2 + 468) = 0;
    v2[476] = 0;
    *(v2 + 120) = 2;
    *(v2 + 436) = 0;
    *(v2 + 484) = 0;
    [v2 initCellularProductExperimentsManager];
    [v2 initCellStationManager];
    [v2 initLocationController];
    [v2 createWrmSdmLocationManager];
    [WCM_Logging logLevel:22 message:@"enhancedCTService: module initialized"];
  }

  return v2;
}

- (void)dealloc
{
  [WCM_Logging logLevel:22 message:@"enhancedCTService: Dealloc !!"];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self subscriptions] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self isDataAttached] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self isDataEnabled] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self bars] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self movingAverageSignalBars] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self isDeviceRegistered] removeAllObjects];
  [*(&self->mWrmSdmLocationMonitoringStarted + 4) removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self isVolteSupported] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self isVoNRSupported] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self isWiFiCallingSupported] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self isPrivateNetworkSim] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self isPrivateNetworkPreferredOverWifi] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self isRoaming] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self isFR2Radio] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self radioCoverage] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self radioFrequency] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self dataEnabled] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self servCellRadioTechnologyType] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self VoiceLqmIsValid] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self VoiceLqmValue] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self VoiceLqmReasonCode] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self imsVoiceOverPSSupported] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self servCellRSRP] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self servCellRSSI] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self servCellRSRQ] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self servCellSNR] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self servCellSINR] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self servCellECIO] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self servCellRSCP] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self PrevAudioQualityWasGood] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self PrevAudioErasurePercent] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self loads] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self rrcState] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self nrCellRSRP] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self nrCellRSRQ] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self nrCellSNR] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self mcc] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self mnc] removeAllObjects];
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self locDbRequired] removeAllObjects];
  if ([(WRM_EnhancedCTService *)self isDataAttached])
  {

    [(WRM_EnhancedCTService *)self setIsDataAttached:0];
  }

  if ([(WRM_EnhancedCTService *)self isDataEnabled])
  {

    [(WRM_EnhancedCTService *)self setIsDataEnabled:0];
  }

  if ([(WRM_EnhancedCTService *)self isDeviceRegistered])
  {

    [(WRM_EnhancedCTService *)self setIsDeviceRegistered:0];
  }

  v3 = *(&self->mWrmSdmLocationMonitoringStarted + 4);
  if (v3)
  {

    *(&self->mWrmSdmLocationMonitoringStarted + 4) = 0;
  }

  if ([(WRM_EnhancedCTService *)self isVolteSupported])
  {

    [(WRM_EnhancedCTService *)self setIsVolteSupported:0];
  }

  if ([(WRM_EnhancedCTService *)self isVoNRSupported])
  {

    [(WRM_EnhancedCTService *)self setIsVoNRSupported:0];
  }

  if ([(WRM_EnhancedCTService *)self isWiFiCallingSupported])
  {

    [(WRM_EnhancedCTService *)self setIsWiFiCallingSupported:0];
  }

  if ([(WRM_EnhancedCTService *)self isPrivateNetworkSim])
  {

    [(WRM_EnhancedCTService *)self setIsPrivateNetworkSim:0];
  }

  if ([(WRM_EnhancedCTService *)self isPrivateNetworkPreferredOverWifi])
  {

    [(WRM_EnhancedCTService *)self setIsPrivateNetworkPreferredOverWifi:0];
  }

  if ([(WRM_EnhancedCTService *)self imsVoiceOverPSSupported])
  {

    [(WRM_EnhancedCTService *)self setImsVoiceOverPSSupported:0];
  }

  if ([(WRM_EnhancedCTService *)self PrevAudioQualityWasGood])
  {

    [(WRM_EnhancedCTService *)self setPrevAudioQualityWasGood:0];
  }

  if ([(WRM_EnhancedCTService *)self servCellRSRP])
  {

    [(WRM_EnhancedCTService *)self setServCellRSRP:0];
  }

  if ([(WRM_EnhancedCTService *)self servCellRSRQ])
  {

    [(WRM_EnhancedCTService *)self setServCellRSRQ:0];
  }

  if ([(WRM_EnhancedCTService *)self mcc])
  {

    [(WRM_EnhancedCTService *)self setMcc:0];
  }

  if ([(WRM_EnhancedCTService *)self mnc])
  {

    [(WRM_EnhancedCTService *)self setMnc:0];
  }

  if ([(WRM_EnhancedCTService *)self servCellRSSI])
  {

    [(WRM_EnhancedCTService *)self setServCellRSSI:0];
  }

  if ([(WRM_EnhancedCTService *)self servCellRSCP])
  {

    [(WRM_EnhancedCTService *)self setServCellRSCP:0];
  }

  if ([(WRM_EnhancedCTService *)self servCellECIO])
  {

    [(WRM_EnhancedCTService *)self setServCellECIO:0];
  }

  if ([(WRM_EnhancedCTService *)self servCellSNR])
  {

    [(WRM_EnhancedCTService *)self setServCellSNR:0];
  }

  if ([(WRM_EnhancedCTService *)self servCellSINR])
  {

    [(WRM_EnhancedCTService *)self setServCellSINR:0];
  }

  if ([(WRM_EnhancedCTService *)self isDeviceRegistered])
  {

    [(WRM_EnhancedCTService *)self setIsDeviceRegistered:0];
  }

  if ([(WRM_EnhancedCTService *)self servCellRadioTechnologyType])
  {

    [(WRM_EnhancedCTService *)self setServCellRadioTechnologyType:0];
  }

  if ([(WRM_EnhancedCTService *)self VoiceLqmIsValid])
  {

    [(WRM_EnhancedCTService *)self setVoiceLqmIsValid:0];
  }

  if ([(WRM_EnhancedCTService *)self VoiceLqmReasonCode])
  {

    [(WRM_EnhancedCTService *)self setVoiceLqmReasonCode:0];
  }

  if ([(WRM_EnhancedCTService *)self VoiceLqmValue])
  {

    [(WRM_EnhancedCTService *)self setVoiceLqmValue:0];
  }

  if ([(WRM_EnhancedCTService *)self dataEnabled])
  {

    [(WRM_EnhancedCTService *)self setDataEnabled:0];
  }

  if ([(WRM_EnhancedCTService *)self bars])
  {

    [(WRM_EnhancedCTService *)self setBars:0];
  }

  if ([(WRM_EnhancedCTService *)self movingAverageSignalBars])
  {

    [(WRM_EnhancedCTService *)self setMovingAverageSignalBars:0];
  }

  if ([(WRM_EnhancedCTService *)self subscriptions])
  {

    [(WRM_EnhancedCTService *)self setSubscriptions:0];
  }

  if ([(WRM_EnhancedCTService *)self queue])
  {
    dispatch_release([(WRM_EnhancedCTService *)self queue]);
    [(WRM_EnhancedCTService *)self setQueue:0];
  }

  if ([(WRM_EnhancedCTService *)self cellularAvailabilityStatusQueue])
  {
    dispatch_release([(WRM_EnhancedCTService *)self cellularAvailabilityStatusQueue]);
    [(WRM_EnhancedCTService *)self setCellularAvailabilityStatusQueue:0];
  }

  if ([(WRM_EnhancedCTService *)self loads])
  {

    [(WRM_EnhancedCTService *)self setLoads:0];
  }

  if ([(WRM_EnhancedCTService *)self rrcState])
  {

    [(WRM_EnhancedCTService *)self setRrcState:0];
  }

  if ([(WRM_EnhancedCTService *)self nrCellRSRP])
  {

    [(WRM_EnhancedCTService *)self setNrCellRSRP:0];
  }

  if ([(WRM_EnhancedCTService *)self nrCellRSRQ])
  {

    [(WRM_EnhancedCTService *)self setNrCellRSRQ:0];
  }

  if ([(WRM_EnhancedCTService *)self nrCellSNR])
  {

    [(WRM_EnhancedCTService *)self setNrCellSNR:0];
  }

  if ([(WRM_EnhancedCTService *)self locDbRequired])
  {

    [(WRM_EnhancedCTService *)self setLocDbRequired:0];
  }

  if ([(WRM_EnhancedCTService *)self dataIndicator])
  {

    [(WRM_EnhancedCTService *)self setDataIndicator:0];
  }

  if ([(WRM_EnhancedCTService *)self dataBW])
  {

    [(WRM_EnhancedCTService *)self setDataBW:0];
  }

  if ([(WRM_EnhancedCTService *)self cellARFCN])
  {

    [(WRM_EnhancedCTService *)self setCellARFCN:0];
  }

  if ([(WRM_EnhancedCTService *)self cellBandInfo])
  {

    [(WRM_EnhancedCTService *)self setCellBandInfo:0];
  }

  if ([(WRM_EnhancedCTService *)self cellBandwidth])
  {

    [(WRM_EnhancedCTService *)self setCellBandwidth:0];
  }

  if ([(WRM_EnhancedCTService *)self currNRCellFound])
  {

    [(WRM_EnhancedCTService *)self setCurrNRCellFound:0];
  }

  if ([(WRM_EnhancedCTService *)self wifiNRCellFound])
  {

    [(WRM_EnhancedCTService *)self setWifiNRCellFound:0];
  }

  if ([(WRM_EnhancedCTService *)self cellID])
  {

    [(WRM_EnhancedCTService *)self setCellID:0];
  }

  if ([(WRM_EnhancedCTService *)self currCBRSCellFound])
  {

    [(WRM_EnhancedCTService *)self setCurrCBRSCellFound:0];
  }

  if ([(WRM_EnhancedCTService *)self cbrsCoreAnalyticsMetricsSent])
  {

    [(WRM_EnhancedCTService *)self setCbrsCoreAnalyticsMetricsSent:0];
  }

  if ([(WRM_EnhancedCTService *)self wifiCBRSCellFound])
  {

    [(WRM_EnhancedCTService *)self setWifiCBRSCellFound:0];
  }

  if ([(WRM_EnhancedCTService *)self detectedFR1CellCountLocDB])
  {

    [(WRM_EnhancedCTService *)self setDetectedFR1CellCountLocDB:0];
  }

  if ([(WRM_EnhancedCTService *)self detectedFR1CellBW])
  {

    [(WRM_EnhancedCTService *)self setDetectedFR1CellBW:0];
  }

  if ([(WRM_EnhancedCTService *)self detectedFR2CellCountLocDB])
  {

    [(WRM_EnhancedCTService *)self setDetectedFR2CellCountLocDB:0];
  }

  if ([(WRM_EnhancedCTService *)self configuredMaxDLBW])
  {

    [(WRM_EnhancedCTService *)self setConfiguredMaxDLBW:0];
  }

  if ([(WRM_EnhancedCTService *)self configuredMaxULBW])
  {

    [(WRM_EnhancedCTService *)self setConfiguredMaxULBW:0];
  }

  if ([(WRM_EnhancedCTService *)self estimatedBWDL])
  {

    [(WRM_EnhancedCTService *)self setEstimatedBWDL:0];
  }

  if ([(WRM_EnhancedCTService *)self estimatedBWDLConf])
  {

    [(WRM_EnhancedCTService *)self setEstimatedBWDLConf:0];
  }

  if ([(WRM_EnhancedCTService *)self estimatedBWUL])
  {

    [(WRM_EnhancedCTService *)self setEstimatedBWUL:0];
  }

  if ([(WRM_EnhancedCTService *)self estimatedBWULConf])
  {

    [(WRM_EnhancedCTService *)self setEstimatedBWULConf:0];
  }

  if ([(WRM_EnhancedCTService *)self neighberCellType])
  {

    [(WRM_EnhancedCTService *)self setNeighberCellType:0];
  }

  if ([(WRM_EnhancedCTService *)self highDataRateObserved])
  {

    [(WRM_EnhancedCTService *)self setHighDataRateObserved:0];
  }

  if ([(WRM_EnhancedCTService *)self currentNRCellType])
  {

    [(WRM_EnhancedCTService *)self setCurrentNRCellType:0];
  }

  if ([(WRM_EnhancedCTService *)self currentHarvestedCellTypeFR2Capable])
  {

    [(WRM_EnhancedCTService *)self setCurrentHarvestedCellTypeFR2Capable:0];
  }

  if ([(WRM_EnhancedCTService *)self stallDetected])
  {

    [(WRM_EnhancedCTService *)self setStallDetected:0];
  }

  if ([(WRM_EnhancedCTService *)self dataModeLTE])
  {

    [(WRM_EnhancedCTService *)self setDataModeLTE:0];
  }

  if ([(WRM_EnhancedCTService *)self isExpensive])
  {

    [(WRM_EnhancedCTService *)self setIsExpensive:0];
  }

  v4 = *(&self->super.m_PDPAssertionRefCount + 1);
  if (v4)
  {

    *(&self->super.m_PDPAssertionRefCount + 1) = 0;
  }

  v5 = *(&self->cellularProductExperimentsManager + 4);
  if (v5)
  {

    *(&self->cellularProductExperimentsManager + 4) = 0;
  }

  v6 = *(&self->cellStationManager + 4);
  if (v6)
  {

    *(&self->cellStationManager + 4) = 0;
  }

  v7 = *(&self->mLastKnownLocationTimestamp + 4);
  if (v7)
  {
    [v7 stopMonitoring];

    *(&self->mLastKnownLocationTimestamp + 4) = 0.0;
  }

  if (qword_1002B7B40)
  {

    qword_1002B7B40 = 0;
  }

  if (*(&self->mWatchAssociated + 4))
  {
    *(&self->mWatchAssociated + 4) = 0;
  }

  v8 = *&self->mCellRSRQ4G5GvsWiFiThreshold;
  if (v8)
  {

    *&self->mCellRSRQ4G5GvsWiFiThreshold = 0;
  }

  v9 = *(&self->mSCService + 4);
  if (v9)
  {

    *(&self->mSCService + 4) = 0;
  }

  v10.receiver = self;
  v10.super_class = WRM_EnhancedCTService;
  [(WRM_CTService *)&v10 dealloc];
}

- (BOOL)isWiFiCallingSupportedOnSlot:(int64_t)slot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F420;
  block[3] = &unk_10023DD38;
  block[4] = self;
  block[5] = &v6;
  block[6] = slot;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isWiFiCallingSupportedAnySlot
{
  selfCopy = self;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F558;
  block[3] = &unk_10023DD60;
  block[4] = self;
  block[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], block);
  [WCM_Logging logLevel:22 message:@"%s: isWiFiCallingSupported %@", "[WRM_EnhancedCTService isWiFiCallingSupportedAnySlot]", [(WRM_EnhancedCTService *)selfCopy isWiFiCallingSupported]];
  LOBYTE(selfCopy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return selfCopy;
}

- (BOOL)qmiClientRunning
{
  mCTService = [(WRM_EnhancedCTService *)self mCTService];

  return [(WRM_CTService *)mCTService qmiClientRunning];
}

- (BOOL)isSimActive
{
  mCTService = [(WRM_EnhancedCTService *)self mCTService];

  return [(WRM_CTService *)mCTService isSimActive];
}

- (void)triggerCommCenterForActivation
{
  mCTService = [(WRM_EnhancedCTService *)self mCTService];

  [(WRM_CTService *)mCTService triggerCommCenterForActivation];
}

- (void)triggerCommCenterForDeActivation
{
  mCTService = [(WRM_EnhancedCTService *)self mCTService];

  [(WRM_CTService *)mCTService triggerCommCenterForDeActivation];
}

- (BOOL)isCommCenterAsserted
{
  mCTService = [(WRM_EnhancedCTService *)self mCTService];

  return [(WRM_CTService *)mCTService isCommCenterAsserted];
}

- (void)tiggerEnhanceLQMConfiguration
{
  mCTService = [(WRM_EnhancedCTService *)self mCTService];

  [(WRM_CTService *)mCTService tiggerEnhanceLQMConfiguration];
}

- (BOOL)dataAttachedWithCellularNetwork:(int64_t)network
{
  v4 = "CTSubscriptionSlotOne";
  v5 = "Unknown CTSubscriptionSlot!!!";
  if (network == 2)
  {
    v5 = "CTSubscriptionSlotTwo";
  }

  v6 = network - 1;
  if (network != 1)
  {
    v4 = v5;
  }

  if (network)
  {
    v7 = v4;
  }

  else
  {
    v7 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: sim slot %s isDataAttached %@", "[WRM_EnhancedCTService dataAttachedWithCellularNetwork:]", v7, [(WRM_EnhancedCTService *)self isDataAttached]];
  v8 = [(NSMutableArray *)[(WRM_EnhancedCTService *)self isDataAttached] objectAtIndex:v6];

  return [v8 BOOLValue];
}

- (unsigned)getWRMCellOutrankWifiBWThreshold
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002F830;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (unsigned)getCellConfiguredBandwidthThreshold
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002F950;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (int)getCellRSRP4G5GvsWiFiThreshold
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002FA70;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (int)getCellRSRQ4G5GvsWiFiThreshold
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002FB90;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setTrialParameters:(id)parameters
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002FC6C;
  v3[3] = &unk_10023DC80;
  v3[4] = parameters;
  v3[5] = self;
  dispatch_async([(WRM_EnhancedCTService *)self queue], v3);
}

- (int)getServingCellType:(int64_t)type
{
  v5 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService servCellRadioTechnologyType](self "servCellRadioTechnologyType")];
  v6 = "CTSubscriptionSlotOne";
  v7 = "Unknown CTSubscriptionSlot!!!";
  if (type == 2)
  {
    v7 = "CTSubscriptionSlotTwo";
  }

  if (type != 1)
  {
    v6 = v7;
  }

  if (type)
  {
    v8 = v6;
  }

  else
  {
    v8 = "CTSubscriptionSlotUnknown";
  }

  servCellRadioTechnologyType = [(WRM_EnhancedCTService *)self servCellRadioTechnologyType];
  v10 = v5 - 1;
  if (v5 - 1) < 0xA && ((0x2FFu >> v10))
  {
    v11 = (&off_10023E318)[v10];
  }

  else
  {
    v11 = "UNKNOWN_RADIO!!!";
    if (v5 == 9)
    {
      v11 = "N_RADIO";
    }
  }

  [WCM_Logging logLevel:22 message:@"%s: sim slot %s rat property %@ rat %s", "[WRM_EnhancedCTService getServingCellType:]", v8, servCellRadioTechnologyType, v11];
  return v5;
}

- (void)invalidateAudioQualityMetrics
{
  prevAudioQualityWasGood = [(WRM_EnhancedCTService *)self PrevAudioQualityWasGood];
  v4 = [(WRM_EnhancedCTService *)self activeSlot]- 1;
  v5 = [NSNumber numberWithBool:1];

  [(NSMutableArray *)prevAudioQualityWasGood replaceObjectAtIndex:v4 withObject:v5];
}

- (void)updateVoLTESpeechErasure:(unint64_t)erasure
{
  if ([(WRM_EnhancedCTService *)self activeSlot])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10002FF9C;
    v5[3] = &unk_10023DD88;
    v5[4] = self;
    v5[5] = erasure;
    dispatch_sync([(WRM_EnhancedCTService *)self queue], v5);
  }
}

- (int)getLteVoiceLQM:(int64_t)m
{
  v4 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService VoiceLqmValue](self "VoiceLqmValue")];
  v5 = "CTSubscriptionSlotUnknown";
  v6 = "CTSubscriptionSlotOne";
  v7 = "Unknown CTSubscriptionSlot!!!";
  if (m == 2)
  {
    v7 = "CTSubscriptionSlotTwo";
  }

  if (m != 1)
  {
    v6 = v7;
  }

  if (m)
  {
    v5 = v6;
  }

  [WCM_Logging logLevel:22 message:@"%s: sim slot %s vLQM %d", "[WRM_EnhancedCTService getLteVoiceLQM:]", v5, v4];
  return v4;
}

- (int)getVoiceLQM_sync:(int64_t)m_sync
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030200;
  block[3] = &unk_10023DD38;
  block[4] = self;
  block[5] = &v6;
  block[6] = m_sync;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)getCellularLQM
{
  v3 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService DataLqmValue](self "DataLqmValue")];
  if ([(WRM_EnhancedCTService *)self activeSlot])
  {
    if ([(WRM_EnhancedCTService *)self activeSlot]== 1)
    {
      v4 = "CTSubscriptionSlotOne";
    }

    else
    {
      activeSlot = [(WRM_EnhancedCTService *)self activeSlot];
      v4 = "Unknown CTSubscriptionSlot!!!";
      if (activeSlot == 2)
      {
        v4 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s data LQM %d", "[WRM_EnhancedCTService getCellularLQM]", v4, v3];
  return v3;
}

- (BOOL)isVoiceLQMValid:(int64_t)valid
{
  v4 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService VoiceLqmIsValid](self "VoiceLqmIsValid")];
  v5 = "CTSubscriptionSlotUnknown";
  v6 = "CTSubscriptionSlotOne";
  v7 = "Unknown CTSubscriptionSlot!!!";
  if (valid == 2)
  {
    v7 = "CTSubscriptionSlotTwo";
  }

  if (valid != 1)
  {
    v6 = v7;
  }

  if (valid)
  {
    v5 = v6;
  }

  v8 = "No";
  if (v4)
  {
    v8 = "Yes";
  }

  [WCM_Logging logLevel:22 message:@"%s: sim slot %s vLQM is valid? %s", "[WRM_EnhancedCTService isVoiceLQMValid:]", v5, v8];
  return v4;
}

- (void)resetLteVoiceLQM
{
  voiceLqmIsValid = [(WRM_EnhancedCTService *)self VoiceLqmIsValid];
  v4 = [(WRM_EnhancedCTService *)self activeSlot]- 1;
  v5 = [NSNumber numberWithBool:0];

  [(NSMutableArray *)voiceLqmIsValid replaceObjectAtIndex:v4 withObject:v5];
}

- (void)resetCellularDataLQM
{
  dataLqmIsValid = [(WRM_EnhancedCTService *)self DataLqmIsValid];
  v4 = [(WRM_EnhancedCTService *)self activeSlot]- 1;
  v5 = [NSNumber numberWithBool:0];

  [(NSMutableArray *)dataLqmIsValid replaceObjectAtIndex:v4 withObject:v5];
}

- (BOOL)isDataLQMValid
{
  v3 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService DataLqmIsValid](self "DataLqmIsValid")];
  if ([(WRM_EnhancedCTService *)self activeSlot])
  {
    if ([(WRM_EnhancedCTService *)self activeSlot]== 1)
    {
      v4 = "CTSubscriptionSlotOne";
    }

    else
    {
      activeSlot = [(WRM_EnhancedCTService *)self activeSlot];
      v4 = "Unknown CTSubscriptionSlot!!!";
      if (activeSlot == 2)
      {
        v4 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  v6 = "No";
  if (v3)
  {
    v6 = "Yes";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s data LQM is valid? %s", "[WRM_EnhancedCTService isDataLQMValid]", v4, v6];
  return v3;
}

- (BOOL)isDataLQMValid:(int64_t)valid
{
  v4 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService DataLqmIsValid](self "DataLqmIsValid")];
  v5 = "CTSubscriptionSlotUnknown";
  v6 = "CTSubscriptionSlotOne";
  v7 = "Unknown CTSubscriptionSlot!!!";
  if (valid == 2)
  {
    v7 = "CTSubscriptionSlotTwo";
  }

  if (valid != 1)
  {
    v6 = v7;
  }

  if (valid)
  {
    v5 = v6;
  }

  v8 = "No";
  if (v4)
  {
    v8 = "Yes";
  }

  [WCM_Logging logLevel:22 message:@"%s: sim slot %s data LQM is valid? %s", "[WRM_EnhancedCTService isDataLQMValid:]", v5, v8];
  return v4;
}

- (void)initMovAverageOfSignalBar
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030720;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)resetMovAverageOfSignalBar
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003085C;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (int)getCellularDataLQM
{
  v3 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService DataLqmValue](self "DataLqmValue")];
  if ([(WRM_EnhancedCTService *)self activeSlot])
  {
    if ([(WRM_EnhancedCTService *)self activeSlot]== 1)
    {
      v4 = "CTSubscriptionSlotOne";
    }

    else
    {
      activeSlot = [(WRM_EnhancedCTService *)self activeSlot];
      v4 = "Unknown CTSubscriptionSlot!!!";
      if (activeSlot == 2)
      {
        v4 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s data LQM %d", "[WRM_EnhancedCTService getCellularDataLQM]", v4, v3];
  return v3;
}

- (BOOL)getDataStallState:(int64_t)state
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030A90;
  block[3] = &unk_10023DD38;
  block[4] = self;
  block[5] = &v6;
  block[6] = state;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)getCellularDataLQM:(int64_t)m
{
  v4 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService DataLqmValue](self "DataLqmValue")];
  v5 = "CTSubscriptionSlotUnknown";
  v6 = "CTSubscriptionSlotOne";
  v7 = "Unknown CTSubscriptionSlot!!!";
  if (m == 2)
  {
    v7 = "CTSubscriptionSlotTwo";
  }

  if (m != 1)
  {
    v6 = v7;
  }

  if (m)
  {
    v5 = v6;
  }

  [WCM_Logging logLevel:22 message:@"%s: sim slot %s data LQM %d", "[WRM_EnhancedCTService getCellularDataLQM:]", v5, v4];
  return v4;
}

- (void)setServingCellRSSI:(double)i forSim:(int64_t)sim
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030C0C;
  block[3] = &unk_10023DDD8;
  block[4] = self;
  block[5] = sim;
  *&block[6] = i;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)setServingCellRSRP:(double)p forSim:(int64_t)sim
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030D68;
  block[3] = &unk_10023DDD8;
  block[4] = self;
  block[5] = sim;
  *&block[6] = p;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)setServingCellSNR:(double)r forSim:(int64_t)sim
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030F04;
  block[3] = &unk_10023DDD8;
  block[4] = self;
  block[5] = sim;
  *&block[6] = r;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)setServingCellSINR:(double)r forSim:(int64_t)sim
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031060;
  block[3] = &unk_10023DDD8;
  block[4] = self;
  block[5] = sim;
  *&block[6] = r;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)setServingCellRSRQ:(double)q forSim:(int64_t)sim
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000311BC;
  block[3] = &unk_10023DDD8;
  block[4] = self;
  block[5] = sim;
  *&block[6] = q;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (double)getServingCellRSSI
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031354;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (double)getServingCellRSRP:(int64_t)p
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031514;
  block[3] = &unk_10023DD38;
  block[4] = self;
  block[5] = &v6;
  block[6] = p;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)getServingCellSNR:(int64_t)r
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000316AC;
  block[3] = &unk_10023DD38;
  block[4] = self;
  block[5] = &v6;
  block[6] = r;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)getServingCellSINR
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031830;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (double)getServingCellRSRQ:(int64_t)q
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000319F0;
  block[3] = &unk_10023DD38;
  block[4] = self;
  block[5] = &v6;
  block[6] = q;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)getServingCellRSCP
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031B74;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (double)getServingCellRSCP:(int64_t)p
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031D34;
  block[3] = &unk_10023DD38;
  block[4] = self;
  block[5] = &v6;
  block[6] = p;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)getServingCellECIO
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031EB8;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (double)getServingCellECIO:(int64_t)o
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032078;
  block[3] = &unk_10023DD38;
  block[4] = self;
  block[5] = &v6;
  block[6] = o;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)getCurrentSignalBars:(int64_t)bars
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032204;
  block[3] = &unk_10023DE00;
  block[5] = &v6;
  block[6] = bars;
  block[4] = self;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)getCellID:(int64_t)d
{
  if (d == 1)
  {
    v4 = 0;
  }

  else
  {
    if (d != 2)
    {
      return 0;
    }

    v4 = 1;
  }

  if (![(WRM_EnhancedCTService *)self cellID]|| v4 >= [(NSMutableArray *)[(WRM_EnhancedCTService *)self cellID] count])
  {
    return 0;
  }

  v5 = [(NSMutableArray *)[(WRM_EnhancedCTService *)self cellID] objectAtIndexedSubscript:v4];

  return [v5 copy];
}

- (id)getPLMN:(int64_t)n
{
  if (n == 1)
  {
    v4 = 0;
  }

  else
  {
    if (n != 2)
    {
      return 0;
    }

    v4 = 1;
  }

  if (![(WRM_EnhancedCTService *)self mcc]|| ![(WRM_EnhancedCTService *)self mnc]|| v4 >= [(NSMutableArray *)[(WRM_EnhancedCTService *)self mcc] count])
  {
    return 0;
  }

  v5 = [NSString stringWithFormat:@"%@.%@", [(NSMutableArray *)[(WRM_EnhancedCTService *)self mcc] objectAtIndexedSubscript:v4], [(NSMutableArray *)[(WRM_EnhancedCTService *)self mnc] objectAtIndexedSubscript:v4]];

  return v5;
}

- (int64_t)getSlotFromUUID:(id)d
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  dataPreferredSlot = [(WRM_EnhancedCTService *)self dataPreferredSlot];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032514;
  block[3] = &unk_10023DE28;
  block[4] = self;
  block[5] = d;
  block[6] = &v8;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], block);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (int)getRegistrationStatus:(int64_t)status
{
  v3 = *(&self->mWrmSdmLocationMonitoringStarted + 4);
  if (v3)
  {
    v4 = [v3 objectAtIndexedSubscript:status - 1];

    LODWORD(v3) = [v4 intValue];
  }

  return v3;
}

- (BOOL)deviceInRoaming
{
  if ([(WRM_EnhancedCTService *)self activeSlot])
  {
    if ([(WRM_EnhancedCTService *)self activeSlot]== 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else if ([(WRM_EnhancedCTService *)self activeSlot]== 2)
    {
      v3 = "CTSubscriptionSlotTwo";
    }

    else
    {
      v3 = "Unknown CTSubscriptionSlot!!!";
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s isRoaming %@", "[WRM_EnhancedCTService deviceInRoaming]", v3, [(WRM_EnhancedCTService *)self isRoaming]];
  v4 = [(NSMutableArray *)[(WRM_EnhancedCTService *)self isRoaming] objectAtIndex:[(WRM_EnhancedCTService *)self activeSlot]- 1];

  return [v4 BOOLValue];
}

- (unsigned)getRadioCoverage
{
  v2 = [(NSMutableArray *)[(WRM_EnhancedCTService *)self radioCoverage] objectAtIndex:[(WRM_EnhancedCTService *)self dataPreferredSlot]- 1];

  return [v2 intValue];
}

- (unsigned)getRadioFrequency
{
  v2 = [(NSMutableArray *)[(WRM_EnhancedCTService *)self radioFrequency] objectAtIndex:[(WRM_EnhancedCTService *)self dataPreferredSlot]- 1];

  return [v2 intValue];
}

- (void)updateRLHandoverPolicyCarrierBundleKey:(id)key
{
  if ([key slotID])
  {
    if ([key slotID] == 1)
    {
      v5 = "CTSubscriptionSlotOne";
    }

    else
    {
      slotID = [key slotID];
      v5 = "Unknown CTSubscriptionSlot!!!";
      if (slotID == 2)
      {
        v5 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v5 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"updateRLHandoverPolicyCarrierBundleKey on sim slot:%s", v5];
  if ([(WRM_EnhancedCTService *)self CTClient])
  {
    v13 = 0;
    v7 = [[CTBundle alloc] initWithBundleType:1];
    v8 = [(CoreTelephonyClient *)[(WRM_EnhancedCTService *)self CTClient] copyCarrierBundleValue:key key:@"EnableIratRLHandoverPolicy" bundleType:v7 error:&v13];
    if (v8)
    {
      v9 = v13 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v12 = v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"EnableIratRLHandoverPolicy CB key=%ld", [v12 integerValue]);
        v11 = [v12 integerValue] != 0;
LABEL_18:

        goto LABEL_19;
      }

      v10 = @"EnableIratRLHandoverPolicy mis-configured in CB";
    }

    else
    {
      v10 = @"EnableIratRLHandoverPolicy CB key not present in CB";
    }

    [WCM_Logging logLevel:22 message:v10];
    v11 = 0;
    goto LABEL_18;
  }

  [WCM_Logging logLevel:22 message:@"CoreTelephony client not ready yet"];
  v11 = 0;
LABEL_19:
  [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
}

- (void)updateAllowSAonWiFiCarrierBundleKey:(id)key
{
  if ([key slotID])
  {
    if ([key slotID] == 1)
    {
      v5 = "CTSubscriptionSlotOne";
    }

    else
    {
      slotID = [key slotID];
      v5 = "Unknown CTSubscriptionSlot!!!";
      if (slotID == 2)
      {
        v5 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v5 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"updateAllowSAonWiFiCarrierBundleKey on sim slot:%s", v5];
  if ([(WRM_EnhancedCTService *)self CTClient])
  {
    v13 = 0;
    v7 = [[CTBundle alloc] initWithBundleType:1];
    v8 = [(CoreTelephonyClient *)[(WRM_EnhancedCTService *)self CTClient] copyCarrierBundleValue:key key:@"AllowSAOnWiFiAssociation" bundleType:v7 error:&v13];
    if (v8)
    {
      v9 = v13 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v12 = v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"AllowSAOnWiFiAssociation %ld", [v12 integerValue]);
        v11 = [v12 integerValue] != 0;
LABEL_18:

        goto LABEL_19;
      }

      v10 = @"AllowSAOnWiFiAssociation mis-configured in CB";
    }

    else
    {
      v10 = @"AllowSAOnWiFiAssociation key not present in CB";
    }

    [WCM_Logging logLevel:22 message:v10];
    v11 = 0;
    goto LABEL_18;
  }

  [WCM_Logging logLevel:22 message:@"CoreTelephony client not ready yet"];
  v11 = 0;
LABEL_19:
  [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
}

- (void)carrierBundleChange:(id)change
{
  if (change && [change slotID])
  {
    [(WRM_EnhancedCTService *)self updateAllowSAonWiFiCarrierBundleKey:change];

    [(WRM_EnhancedCTService *)self updateRLHandoverPolicyCarrierBundleKey:change];
  }
}

- (BOOL)isVoNRSupportedOnSlot:(int64_t)slot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032D24;
  block[3] = &unk_10023DD38;
  block[4] = self;
  block[5] = &v6;
  block[6] = slot;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isWiFiCallingAllowedInAPM
{
  if ([(WRM_EnhancedCTService *)self CTClient])
  {
    v11 = 0;
    v3 = [[CTBundle alloc] initWithBundleType:1];
    v4 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:{-[WRM_EnhancedCTService dataPreferredSlot](self, "dataPreferredSlot")}];
    v5 = [(CoreTelephonyClient *)[(WRM_EnhancedCTService *)self CTClient] copyCarrierBundleValue:v4 keyHierarchy:&off_1002857C0 bundleType:v3 error:&v11];
    if (v5)
    {
      v6 = v11 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v9 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"AllowWiFiCallingInAirplaneMode %d", [v9 integerValue]);
        v8 = [v9 integerValue] != 0;
LABEL_12:

        return v8;
      }

      v7 = @"AllowWiFiCallingInAirplaneMode misconfigured in CB";
    }

    else
    {
      v7 = @"AllowWiFiCallingInAirplaneMode key not present in CB";
    }

    [WCM_Logging logLevel:22 message:v7];
    v8 = 1;
    goto LABEL_12;
  }

  [WCM_Logging logLevel:22 message:@"CoreTelephony client not ready yet"];
  return 1;
}

- (void)getCurrentEnhancedCTMetrics
{
  v55 = 0;
  v3 = [(CoreTelephonyClient *)[(WRM_EnhancedCTService *)self CTClient] isPrivateNetworkEvaluationNeeded:&v55];
  v4 = WRM_IPTelephonyController;
  if (v55)
  {
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"isPrivateNetworkEvaluationNeeded: error %@", [v55 localizedDescription]);
  }

  else
  {
    BYTE4(self->mLastCbrsRecommendation) = v3;
    [WCM_Logging logLevel:22 message:@"isPrivateNetworkEvaluationNeeded mWrmCbrsMonitorRequired: %d", v3];
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [(WRM_EnhancedCTService *)self subscriptions];
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v5)
  {
    v6 = v5;
    v39 = *v52;
    v38 = kCTCapabilityAgent;
    v37 = kCTCapabilityAgent3;
    v36 = kCTCapabilityAgent2;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v52 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v51 + 1) + 8 * i);
        if ([v8 slotID])
        {
          v9 = [(CoreTelephonyClient *)[(WRM_EnhancedCTService *)self CTClient] getPrivateNetworkCapabilitiesForContext:v8 error:&v55];
          v10 = v55;
          v11 = v4;
          v12 = v4 + 98;
          slotID = [v8 slotID];
          if (v10 || !v9)
          {
            if (slotID)
            {
              v17 = "CTSubscriptionSlotOne";
              if ([v8 slotID] != 1)
              {
                if ([v8 slotID] == 2)
                {
                  v17 = "CTSubscriptionSlotTwo";
                }

                else
                {
                  v17 = "Unknown CTSubscriptionSlot!!!";
                }
              }
            }

            else
            {
              v17 = "CTSubscriptionSlotUnknown";
            }

            -[__objc2_class logLevel:message:](v12, "logLevel:message:", 22, @"%s: getPrivateNetworkCapabilitiesForContext error=%@", v17, [v55 localizedDescription]);
            v18 = 0;
            isPrivateNetworkPreferredOverWifi = 0;
          }

          else
          {
            if (slotID)
            {
              slotID2 = [v8 slotID];
              v15 = "CTSubscriptionSlotOne";
              if (slotID2 != 1)
              {
                slotID3 = [v8 slotID];
                v15 = "Unknown CTSubscriptionSlot!!!";
                if (slotID3 == 2)
                {
                  v15 = "CTSubscriptionSlotTwo";
                }
              }
            }

            else
            {
              v15 = "CTSubscriptionSlotUnknown";
            }

            [(__objc2_class *)v12 logLevel:22 message:@"%s: getPrivateNetworkCapabilitiesForContext %@", v15, v9];
            isPrivateNetworkModeEnabled = [v9 isPrivateNetworkModeEnabled];
            isPrivateNetworkPreferredOverWifi = [v9 isPrivateNetworkPreferredOverWifi];
            if (isPrivateNetworkModeEnabled)
            {
              BYTE4(self->mLastCbrsRecommendation) = 1;
              if ([v8 slotID])
              {
                slotID4 = [v8 slotID];
                v22 = "CTSubscriptionSlotOne";
                if (slotID4 != 1)
                {
                  slotID5 = [v8 slotID];
                  v22 = "Unknown CTSubscriptionSlot!!!";
                  if (slotID5 == 2)
                  {
                    v22 = "CTSubscriptionSlotTwo";
                  }
                }
              }

              else
              {
                v22 = "CTSubscriptionSlotUnknown";
              }

              [&v11[98] logLevel:22 message:{@"%s: getPrivateNetworkCapabilitiesForContext force mWrmCbrsMonitorRequired to true", v22}];
              v18 = 1;
            }

            else
            {
              v18 = 0;
            }
          }

          -[WRM_EnhancedCTService processPrivateNwSimStatus:slot:](self, "processPrivateNwSimStatus:slot:", v18, [v8 slotID]);
          -[WRM_EnhancedCTService processPrivateNwPreferredOverWifiStatus:slot:](self, "processPrivateNwPreferredOverWifiStatus:slot:", isPrivateNetworkPreferredOverWifi, [v8 slotID]);
          cTClient = [(WRM_EnhancedCTService *)self CTClient];
          v50[0] = _NSConcreteStackBlock;
          v50[1] = 3221225472;
          v50[2] = sub_100033678;
          v50[3] = &unk_10023DE50;
          v50[4] = v8;
          v50[5] = self;
          [(CoreTelephonyClient *)cTClient getSignalStrengthInfo:v8 completion:v50];
          cTClient2 = [(WRM_EnhancedCTService *)self CTClient];
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_100033738;
          v49[3] = &unk_10023DE78;
          v49[4] = v8;
          v49[5] = self;
          [(CoreTelephonyClient *)cTClient2 copyIsDataAttached:v8 completion:v49];
          cTClient3 = [(WRM_EnhancedCTService *)self CTClient];
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_1000337F4;
          v48[3] = &unk_10023DEA0;
          v48[4] = v8;
          v48[5] = self;
          [(CoreTelephonyClient *)cTClient3 copyRegistrationStatus:v8 completion:v48];
          cTClient4 = [(WRM_EnhancedCTService *)self CTClient];
          v47[0] = _NSConcreteStackBlock;
          v47[1] = 3221225472;
          v47[2] = sub_1000338B4;
          v47[3] = &unk_10023DEA0;
          v47[4] = v8;
          v47[5] = self;
          [(CoreTelephonyClient *)cTClient4 copyMobileCountryCode:v8 completion:v47];
          cTClient5 = [(WRM_EnhancedCTService *)self CTClient];
          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_100033974;
          v46[3] = &unk_10023DEA0;
          v46[4] = v8;
          v46[5] = self;
          [(CoreTelephonyClient *)cTClient5 copyMobileNetworkCode:v8 completion:v46];
          cTClient6 = [(WRM_EnhancedCTService *)self CTClient];
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_100033A34;
          v45[3] = &unk_10023DEC8;
          v45[4] = v8;
          v45[5] = self;
          [(CoreTelephonyClient *)cTClient6 context:v8 getCapability:v38 completion:v45];
          cTClient7 = [(WRM_EnhancedCTService *)self CTClient];
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = sub_100033AF4;
          v44[3] = &unk_10023DEC8;
          v44[4] = v8;
          v44[5] = self;
          [(CoreTelephonyClient *)cTClient7 context:v8 getCapability:v37 completion:v44];
          cTClient8 = [(WRM_EnhancedCTService *)self CTClient];
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_100033BB4;
          v43[3] = &unk_10023DEC8;
          v43[4] = v8;
          v43[5] = self;
          [(CoreTelephonyClient *)cTClient8 context:v8 getCapability:v36 completion:v43];
          cTClient9 = [(WRM_EnhancedCTService *)self CTClient];
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_100033C74;
          v42[3] = &unk_10023DEA0;
          v42[4] = v8;
          v42[5] = self;
          [(CoreTelephonyClient *)cTClient9 copyRadioAccessTechnology:v8 completion:v42];
          cTClient10 = [(WRM_EnhancedCTService *)self CTClient];
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_100033D34;
          v41[3] = &unk_10023DEF0;
          v41[4] = v8;
          v41[5] = self;
          [(CoreTelephonyClient *)cTClient10 getVoiceLinkQualityMetric:v8 completion:v41];
          cTClient11 = [(WRM_EnhancedCTService *)self CTClient];
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_100033DF4;
          v40[3] = &unk_10023DF18;
          v40[4] = v8;
          v40[5] = self;
          [(CoreTelephonyClient *)cTClient11 getEnhancedVoiceLinkQualityMetric:v8 completion:v40];
          [(WRM_EnhancedCTService *)self updateAllowSAonWiFiCarrierBundleKey:v8];
          [(WRM_EnhancedCTService *)self updateRLHandoverPolicyCarrierBundleKey:v8];
          v4 = v11;
        }
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v6);
  }

  [(WRM_EnhancedCTService *)self setMSubscriptionInfoDidChange:0];
}

- (void)processDataAttached:(BOOL)attached :(int64_t)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033F44;
  block[3] = &unk_10023DF40;
  block[4] = self;
  block[5] = a4;
  attachedCopy = attached;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)processVolteStatus:(BOOL)status :(int64_t)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003403C;
  block[3] = &unk_10023DF40;
  block[4] = self;
  block[5] = a4;
  statusCopy = status;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)processVoNRStatus:(BOOL)status :(int64_t)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034134;
  block[3] = &unk_10023DF40;
  block[4] = self;
  block[5] = a4;
  statusCopy = status;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)interfaceCostExpensiveChanged:(id)changed isExpensive:(BOOL)expensive
{
  if ([changed slotID])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003423C;
    block[3] = &unk_10023DF68;
    expensiveCopy = expensive;
    block[4] = changed;
    block[5] = self;
    dispatch_async([(WRM_EnhancedCTService *)self queue], block);
  }
}

- (void)smartDataModeChanged:(id)changed userEnabled:(BOOL)enabled
{
  if ([changed slotID])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000343B8;
    block[3] = &unk_10023DF68;
    enabledCopy = enabled;
    block[4] = changed;
    block[5] = self;
    dispatch_async([(WRM_EnhancedCTService *)self queue], block);
  }
}

- (void)processWiFiCallingStatus:(BOOL)status :(int64_t)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034610;
  block[3] = &unk_10023DF40;
  block[4] = self;
  block[5] = a4;
  statusCopy = status;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)processPrivateNwSimStatus:(BOOL)status slot:(int64_t)slot
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034708;
  block[3] = &unk_10023DF40;
  block[4] = self;
  block[5] = slot;
  statusCopy = status;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)processPrivateNwPreferredOverWifiStatus:(BOOL)status slot:(int64_t)slot
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034800;
  block[3] = &unk_10023DF40;
  block[4] = self;
  block[5] = slot;
  statusCopy = status;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)processRegistrationStatus:(id)status :(int64_t)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000348F8;
  block[3] = &unk_10023DFB8;
  block[4] = self;
  block[5] = status;
  block[6] = a4;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (BOOL)isWatchAssociated
{
  if (!+[NRPairedDeviceRegistry sharedInstance])
  {
    v9 = @"%s: Skipping CellularAvailabilityStatusBiomeStream event on iPhone as weak link to NanoRegistry framework missing.";
LABEL_13:
    [WCM_Logging logLevel:17 message:v9, "[WRM_EnhancedCTService isWatchAssociated]"];
    return 0;
  }

  getAllDevicesWithArchivedDevices = [+[NRPairedDeviceRegistry sharedInstance](NRPairedDeviceRegistry getAllDevicesWithArchivedDevices];
  if ([getAllDevicesWithArchivedDevices count] < 1)
  {
    v9 = @"%s: Skipping CellularAvailabilityStatusBiomeStream event on iPhone as no associated watches";
    goto LABEL_13;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [getAllDevicesWithArchivedDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = NRDevicePropertyProductType;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(getAllDevicesWithArchivedDevices);
        }

        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: Associated watches. %@", "-[WRM_EnhancedCTService isWatchAssociated]", [*(*(&v10 + 1) + 8 * v7) valueForProperty:v6]);
        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [getAllDevicesWithArchivedDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return 1;
}

- (void)updateCellularAvailabilityStatus:(id)status :(int64_t)a4 :(double)a5 :(BOOL)a6
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034CBC;
  block[3] = &unk_10023DFE0;
  block[4] = self;
  block[5] = status;
  block[6] = a4;
  *&block[7] = a5;
  v7 = a6;
  dispatch_async([(WRM_EnhancedCTService *)self cellularAvailabilityStatusQueue], block);
}

- (void)processMobileCountryCode:(id)code :(int64_t)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034E60;
  block[3] = &unk_10023DFB8;
  block[5] = self;
  block[6] = a4;
  block[4] = code;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)processMobileNetworkCode:(id)code :(int64_t)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034FB8;
  block[3] = &unk_10023DFB8;
  block[5] = self;
  block[6] = a4;
  block[4] = code;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)processVoiceLinkQualityInfo:(id)info :(int64_t)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035110;
  block[3] = &unk_10023DFB8;
  block[4] = info;
  block[5] = self;
  block[6] = a4;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)updateAudioQualityKaroo:(id *)karoo :(int64_t)a4
{
  var1 = karoo->var1;
  v8 = (100 * karoo->var0) / (var1 + 0.000001);
  v10 = v8 < 80.0 || var1 < 0x1F5;
  [(NSMutableArray *)[(WRM_EnhancedCTService *)self PrevAudioQualityWasGood] replaceObjectAtIndex:a4 - 1 withObject:[NSNumber numberWithBool:v10]];
  var0 = karoo->var0;
  p_var1 = &karoo->var1;
  v12 = karoo->var1;
  v13 = p_var1[1];
  [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService servCellRSCP](self "servCellRSCP")];
  v16 = v15;
  [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService servCellECIO](self "servCellECIO")];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"BB Audio Metrics, CodecType: %d, Total Erasures: %d, Total playbacks: %d, Percent Erasures: %f, RSCP: %f, ECIO:%f, Eval Quality: %d", v13, var0, v12, *&v8, v16, v17, [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService PrevAudioQualityWasGood](self "PrevAudioQualityWasGood")]);
}

- (void)processEnhancedDataLQMBlob:(id)blob :(int64_t)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000355F0;
  block[3] = &unk_10023DFB8;
  block[5] = blob;
  block[6] = a4;
  block[4] = self;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)processEnhancedVoiceLinkQualityBlob:(id)blob :(int64_t)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035A90;
  block[3] = &unk_10023DFB8;
  block[4] = blob;
  block[5] = self;
  block[6] = a4;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)processDataStatus:(id)status :(int64_t)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000369DC;
  block[3] = &unk_10023DFB8;
  block[4] = status;
  block[5] = self;
  block[6] = a4;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)processRadioTechnologyInfo:(id)info :(int64_t)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000371A4;
  block[3] = &unk_10023DFB8;
  block[4] = info;
  block[5] = self;
  block[6] = a4;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)processSignalStrengthInfo:(id)info :(int64_t)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000375AC;
  block[3] = &unk_10023DFB8;
  block[4] = info;
  block[5] = self;
  block[6] = a4;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)processSubscriptionInfo:(id)info :(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100037744;
  v4[3] = &unk_10023DC80;
  v4[4] = self;
  v4[5] = info;
  dispatch_async([(WRM_EnhancedCTService *)self queue:info], v4);
}

- (void)initCoreTelephonyClient
{
  [WCM_Logging logLevel:22 message:@"%s CTClientInitDone %d", "[WRM_EnhancedCTService initCoreTelephonyClient]", [(WRM_EnhancedCTService *)self CTClientInitDone]];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037B40;
  block[3] = &unk_10023DB28;
  block[4] = self;
  if (qword_1002B7D48 != -1)
  {
    dispatch_once(&qword_1002B7D48, block);
  }

  [WCM_Logging logLevel:22 message:@"%s Done CTClientInitDone %d", "[WRM_EnhancedCTService initCoreTelephonyClient]", [(WRM_EnhancedCTService *)self CTClientInitDone]];
  if (*(&self->speedTestSchedulerServices + 4))
  {
    [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: initCellularProductExperimentsManager"];
    [*(&self->speedTestSchedulerServices + 4) subscribeToTrial];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: Not initialized"];
  }
}

- (id)getInternetInterfaceName
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = sub_100037E68;
  v9 = sub_100037E78;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100037E84;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)internetConnectionStateChanged:(id)changed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100037F20;
  v3[3] = &unk_10023DC80;
  v3[4] = changed;
  v3[5] = self;
  dispatch_async([(WRM_EnhancedCTService *)self queue], v3);
}

- (void)subscriptionInfoDidChange
{
  [WCM_Logging logLevel:22 message:@"%s", "[WRM_EnhancedCTService subscriptionInfoDidChange]"];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100038088;
  v3[3] = &unk_10023E030;
  v3[4] = self;
  [(CoreTelephonyClient *)[(WRM_EnhancedCTService *)self CTClient] getSubscriptionInfo:v3];
}

- (void)signalStrengthChanged:(id)changed info:(id)info
{
  if ([changed slotID])
  {
    [WCM_Logging logLevel:22 message:@"%s context %@ info %@", "[WRM_EnhancedCTService signalStrengthChanged:info:]", changed, info];
    slotID = [changed slotID];

    [(WRM_EnhancedCTService *)self processSignalStrengthInfo:info];
  }
}

- (void)displayStatusChanged:(id)changed status:(id)status
{
  if ([changed slotID])
  {
    [WCM_Logging logLevel:22 message:@"%s context %@ status %@", "[WRM_EnhancedCTService displayStatusChanged:status:]", changed, status];
    -[WRM_EnhancedCTService processRegistrationStatus::](self, "processRegistrationStatus::", [status registrationDisplayStatus], objc_msgSend(changed, "slotID"));
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000382B0;
    v7[3] = &unk_10023DEA0;
    v7[4] = self;
    v7[5] = changed;
    [(CoreTelephonyClient *)[(WRM_EnhancedCTService *)self CTClient] copyRegistrationStatus:changed completion:v7];
  }
}

- (int)parseRegistrationStatusForBiomeStream:(id)stream
{
  if ([stream isEqualToString:@"kCTRegistrationStatusRegisteredHome"] & 1) != 0 || (objc_msgSend(stream, "isEqualToString:", @"kCTRegistrationStatusRegisteredRoaming"))
  {
    return 1;
  }

  if ([stream isEqualToString:@"kCTRegistrationStatusEmergencyOnly"])
  {
    if (![(WRM_EnhancedCTService *)self isSuppressSOSOnlyWithLimitedServiceEnabled])
    {
      return 2;
    }

    [WCM_Logging logLevel:22 message:@"parseRegistrationStatusForBiomeStream:: Suppressed SOS with Limited Services."];
    return 3;
  }

  if ([stream isEqualToString:@"kCTRegistrationStatusNotRegistered"])
  {
    return 3;
  }

  if ([stream isEqualToString:@"kCTRegistrationStatusDenied"])
  {
    return 3;
  }

  if ([stream isEqualToString:@"kCTRegistrationStatusSearching"])
  {
    return 3;
  }

  result = [stream isEqualToString:@"kCTRegistrationStatusUnknown"];
  if (result)
  {
    return 3;
  }

  return result;
}

- (int)combinedRegistrationStatus
{
  v2 = *(&self->mWrmSdmLocationMonitoringStarted + 4);
  if (!v2)
  {
    return 0;
  }

  v4 = 1;
  if (([v2 containsObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 1)}] & 1) == 0)
  {
    v4 = 2;
    if (([*(&self->mWrmSdmLocationMonitoringStarted + 4) containsObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 2)}] & 1) == 0)
    {
      if ([*(&self->mWrmSdmLocationMonitoringStarted + 4) containsObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 3)}])
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

- (id)getPreviousCellularAvailabilityStatus
{
  mCellularAvailabilityStatus_high = HIDWORD(self->mCellularAvailabilityStatus);
  if (mCellularAvailabilityStatus_high != -1)
  {
    return sub_100038520(mCellularAvailabilityStatus_high);
  }

  HIDWORD(self->mCellularAvailabilityStatus) = 0;
  return sub_100038520(0);
}

- (id)getCurrentCellularAvailabilityStatus
{
  [*(&self->mWatchAssociated + 4) getAirPlaneMode];
  if ([*(&self->mWatchAssociated + 4) isAirPlaneModeEnabled])
  {
    combinedRegistrationStatus = 4;
  }

  else
  {
    combinedRegistrationStatus = [(WRM_EnhancedCTService *)self combinedRegistrationStatus];
  }

  return sub_100038520(combinedRegistrationStatus);
}

- (BOOL)isSuppressSOSOnlyWithLimitedServiceEnabled
{
  if ([(WRM_EnhancedCTService *)self CTClient])
  {
    v11 = 0;
    v3 = [[CTBundle alloc] initWithBundleType:6];
    v4 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:{-[WRM_EnhancedCTService dataPreferredSlot](self, "dataPreferredSlot")}];
    v5 = [(CoreTelephonyClient *)[(WRM_EnhancedCTService *)self CTClient] copyCarrierBundleValue:v4 keyHierarchy:&off_1002857D8 bundleType:v3 error:&v11];
    if (v5)
    {
      v6 = v11 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v9 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"isSuppressSOSOnlyWithLimitedServiceEnabled:: SuppressSOSOnlyWithLimitedService %d", [v9 integerValue]);
        v8 = [v9 integerValue] != 0;
LABEL_12:

        return v8;
      }

      v7 = @"isSuppressSOSOnlyWithLimitedServiceEnabled:: SuppressSOSOnlyWithLimitedService misconfigured in CB";
    }

    else
    {
      v7 = @"isSuppressSOSOnlyWithLimitedServiceEnabled:: SuppressSOSOnlyWithLimitedService key not present in CB. Setting it to default value of True";
    }

    [WCM_Logging logLevel:22 message:v7];
    v8 = 1;
    goto LABEL_12;
  }

  [WCM_Logging logLevel:22 message:@"isSuppressSOSOnlyWithLimitedServiceEnabled::CoreTelephony client not ready yet"];
  return 1;
}

- (void)monitorStrongSOSSignal:(double)signal
{
  [WCM_Logging logLevel:24 message:@"%s mStrongestSOSRSRP %f, rsrp %f", "[WRM_EnhancedCTService monitorStrongSOSSignal:]", *(&self->mEnterSOSTimeStamp + 4), *&signal];
  if (*(&self->mStrongestSOSRSRP + 4) <= signal || *(&self->mEnterSOSTimeStamp + 4) <= signal)
  {
    if (signal > -44.0 || signal < -140.0)
    {
      [WCM_Logging logLevel:24 message:@"%s Invalid RSRP: %f", "[WRM_EnhancedCTService monitorStrongSOSSignal:]", *&signal, v6];
    }

    else
    {
      *(&self->mEnterSOSTimeStamp + 4) = signal;
      [+[NSDate date](NSDate timeIntervalSince1970];
      *(&self->mPrevCombinedRegistrationStatus + 1) = v5;
      [WCM_Logging logLevel:24 message:@"%s mStrongestSOSRSRP %f, mStrongestSOSTimeStamp %@", "[WRM_EnhancedCTService monitorStrongSOSSignal:]", *(&self->mEnterSOSTimeStamp + 4), [NSDate dateWithTimeIntervalSince1970:?]];
    }
  }
}

- (BOOL)validateStrongestSOSTimeStamp:(double)stamp
{
  v4 = *(&self->mPrevCombinedRegistrationStatus + 1);
  if (v4 <= 0.0)
  {
    [WCM_Logging logLevel:24 message:@"%s Invalid mStrongestSOSTimeStamp %@", "[WRM_EnhancedCTService validateStrongestSOSTimeStamp:]", [NSDate dateWithTimeIntervalSince1970:?], v10, v12, v14];
    return 0;
  }

  v6 = *(&self->mEnterSOSTimeStamp + 4);
  if (v6 > -44.0 || v6 < -140.0)
  {
    [WCM_Logging logLevel:24 message:@"%s Invalid mStrongestSOSRSRP %f", "[WRM_EnhancedCTService validateStrongestSOSTimeStamp:]", *&v6, v10, v12, v14];
    return 0;
  }

  v7 = v4 - *(&self->mStrongestSOSTimeStamp + 4);
  [WCM_Logging logLevel:24 message:@"%s mStrongestSOSTimeStamp %@ within %f seconds of mEnterSOSTimeStamp %@. ", "[WRM_EnhancedCTService validateStrongestSOSTimeStamp:]", [NSDate dateWithTimeIntervalSince1970:?], *&v7, [NSDate dateWithTimeIntervalSince1970:*(&self->mStrongestSOSTimeStamp + 4)]];
  if (v7 <= 0.0)
  {
    [WCM_Logging logLevel:24 message:@"%s Invalid mStrongestSOSTimeStamp as before mEnterSOSTimeStamp ", "[WRM_EnhancedCTService validateStrongestSOSTimeStamp:]", v9, v11, v13, v14];
    return 0;
  }

  if (v7 < 180.0)
  {
    *(&self->mPrevCombinedRegistrationStatus + 1) = *(&self->mStrongestSOSTimeStamp + 4) + 180.0;
    [WCM_Logging logLevel:24 message:@"%s Resetting mStrongestSOSTimeStamp to %@ as too close to entry SOS timestamp", "[WRM_EnhancedCTService validateStrongestSOSTimeStamp:]", [NSDate dateWithTimeIntervalSince1970:?]];
    if (*(&self->mPrevCombinedRegistrationStatus + 1) > stamp)
    {
      [WCM_Logging logLevel:24 message:@"%s Invalid mStrongestSOSTimeStamp %@ as SOS patch is less than %d seconds (mEnterSOSTimeStamp %@ - changeTimeStamp %@)", "[WRM_EnhancedCTService validateStrongestSOSTimeStamp:]", [NSDate dateWithTimeIntervalSince1970:?], 180, [NSDate dateWithTimeIntervalSince1970:*(&self->mStrongestSOSTimeStamp + 4)], [NSDate dateWithTimeIntervalSince1970:stamp]];
      return 0;
    }
  }

  return 1;
}

- (void)initializeStrongestSOSSignal:(double)signal
{
  *(&self->mStrongestSOSTimeStamp + 4) = signal;
  *(&self->mPrevCombinedRegistrationStatus + 1) = 0;
  *(&self->mEnterSOSTimeStamp + 4) = -1000.0;
  [WCM_Logging logLevel:24 message:@"%s Reset to initial values. mEnterSOSTimeStamp %@ mStrongestSOSRSRP %f, mStrongestSOSTimeStamp %@", "[WRM_EnhancedCTService initializeStrongestSOSSignal:]", [NSDate dateWithTimeIntervalSince1970:*(&self->mStrongestSOSTimeStamp + 4)], *(&self->mEnterSOSTimeStamp + 4), [NSDate dateWithTimeIntervalSince1970:*(&self->mPrevCombinedRegistrationStatus + 1)]];
}

- (void)writeToCellularAvailabilityStatusBiomeStream:(double)stream :(BOOL)a4
{
  if (a4)
  {
    combinedRegistrationStatus = 4;
  }

  else
  {
    combinedRegistrationStatus = [(WRM_EnhancedCTService *)self combinedRegistrationStatus];
  }

  v7 = WRM_IPTelephonyController;
  if (HIDWORD(self->mCellularAvailabilityStatus) == combinedRegistrationStatus)
  {
    [WCM_Logging logLevel:17 message:@"%s: Skipping event as %d same as previous status %d\n", "[WRM_EnhancedCTService writeToCellularAvailabilityStatusBiomeStream::]", combinedRegistrationStatus, combinedRegistrationStatus];
  }

  else
  {
    [WCM_Logging logLevel:17 message:@"%s: changeTimeStamp %@ combinedRegistrationStatus: %d mCellularAvailabilityStatus %@\n", "[WRM_EnhancedCTService writeToCellularAvailabilityStatusBiomeStream::]", [NSDate dateWithTimeIntervalSince1970:stream], combinedRegistrationStatus, *(&self->mWrmSdmLocationMonitoringStarted + 4)];
    v8 = 0.0;
    v9 = &selRef_setMGnssVictimFreq_KHz_;
    if (HIDWORD(self->mCellularAvailabilityStatus) == 2)
    {
      if ([(WRM_EnhancedCTService *)self validateStrongestSOSTimeStamp:stream])
      {
        v8 = *(&self->mPrevCombinedRegistrationStatus + 1);
        v9 = &selRef_setMGnssVictimFreq_KHz_;
        [WCM_Logging logLevel:17 message:@"%s Setting latestStrongTimeStamp %@ to mStrongestSOSTimeStamp %@ with RSRP %f aboveThreshold %d", "[WRM_EnhancedCTService writeToCellularAvailabilityStatusBiomeStream::]", [NSDate dateWithTimeIntervalSince1970:v8], [NSDate dateWithTimeIntervalSince1970:v8], *(&self->mEnterSOSTimeStamp + 4), *(&self->mEnterSOSTimeStamp + 4) >= *(&self->mStrongestSOSRSRP + 4)];
      }

      else
      {
        [WCM_Logging logLevel:17 message:@"%s Invalid latestStrongTimeStamp %@. Persisting changeTimeStamp %@ for SOS", "[WRM_EnhancedCTService writeToCellularAvailabilityStatusBiomeStream::]", [NSDate dateWithTimeIntervalSince1970:0.0], [NSDate dateWithTimeIntervalSince1970:stream], v22, v23];
      }
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v10 = off_1002B7D70;
    v27 = off_1002B7D70;
    if (!off_1002B7D70)
    {
      v11 = sub_1000415E0();
      v25[3] = dlsym(v11, "__BMRootLibrary");
      off_1002B7D70 = v25[3];
      v10 = v25[3];
    }

    _Block_object_dispose(&v24, 8);
    if (!v10)
    {
      sub_10015F030();
    }

    v12 = [objc_msgSend(objc_msgSend(objc_msgSend(v10() "Device")];
    if (HIDWORD(self->mCellularAvailabilityStatus) == -1)
    {
      HIDWORD(self->mCellularAvailabilityStatus) = 0;
    }

    v13 = *(&self->super.super.isa + *(v9 + 653));
    if (v8 == 0.0)
    {
      [WCM_Logging logLevel:17 message:@"%s NIL latestStrongTimeStamp %f  mStrongestSOSTimeStamp %f", "[WRM_EnhancedCTService writeToCellularAvailabilityStatusBiomeStream::]", *&v8, v13];
      v20 = [objc_alloc(sub_100038FB4()) initWithTimeStamp:+[NSDate dateWithTimeIntervalSince1970:](NSDate deviceType:"dateWithTimeIntervalSince1970:" deviceRegistrationStatus:stream) previousDeviceRegistrationStatus:{2, combinedRegistrationStatus, HIDWORD(self->mCellularAvailabilityStatus)}];
    }

    else
    {
      [WCM_Logging logLevel:17 message:@"%s NOT NIL latestStrongTimeStamp %f mStrongestSOSTimeStamp %f", "[WRM_EnhancedCTService writeToCellularAvailabilityStatusBiomeStream::]", *&v8, v13];
      v14 = objc_alloc(sub_100038FB4());
      v15 = [NSDate dateWithTimeIntervalSince1970:stream];
      mCellularAvailabilityStatus_high = HIDWORD(self->mCellularAvailabilityStatus);
      v17 = [NSNumber numberWithBool:0];
      v18 = [NSDate dateWithTimeIntervalSince1970:v8];
      v19 = v15;
      v7 = WRM_IPTelephonyController;
      v20 = [v14 initWithTimeStamp:v19 deviceType:2 deviceRegistrationStatus:combinedRegistrationStatus previousDeviceRegistrationStatus:mCellularAvailabilityStatus_high aboveThreshold:v17 latestStrongTimeStamp:v18];
    }

    v21 = v20;
    [&v7[98] logLevel:17 message:{@"%s Event: %@", "-[WRM_EnhancedCTService writeToCellularAvailabilityStatusBiomeStream::]", objc_msgSend(v20, "description")}];
    HIDWORD(self->mCellularAvailabilityStatus) = combinedRegistrationStatus;
    [v12 sendEvent:v21];

    if (HIDWORD(self->mCellularAvailabilityStatus) == 2)
    {
      [(WRM_EnhancedCTService *)self initializeStrongestSOSSignal:stream];
    }
  }
}

- (void)plmnChanged:(id)changed plmn:(id)plmn
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039130;
  block[3] = &unk_10023E058;
  block[4] = changed;
  block[5] = self;
  block[6] = plmn;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)sendInitialVoiceLqmNotification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000392B8;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)evaluateCbrsInSingleSimMode
{
  if (BYTE4(self->mLastCbrsRecommendation) == 1 && [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")] && -[WRM_EnhancedCTService numberofSubscriptions](self, "numberofSubscriptions") == 1)
  {
    if ([(WRM_EnhancedCTService *)self dataPreferredSlot])
    {
      if ([(WRM_EnhancedCTService *)self dataPreferredSlot]== 1)
      {
        v3 = "CTSubscriptionSlotOne";
      }

      else
      {
        dataPreferredSlot = [(WRM_EnhancedCTService *)self dataPreferredSlot];
        v3 = "Unknown CTSubscriptionSlot!!!";
        if (dataPreferredSlot == 2)
        {
          v3 = "CTSubscriptionSlotTwo";
        }
      }
    }

    else
    {
      v3 = "CTSubscriptionSlotUnknown";
    }

    [WCM_Logging logLevel:22 message:@"evaluateCbrsInSingleSimMode SingleSim DataSlot=%s", v3];
    if ([(WRM_EnhancedCTService *)self dataPreferredSlot])
    {
      v5 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
      if (v5)
      {
        v6 = v5;
        v7 = [(WRM_EnhancedCTService *)self dataPreferredSlot]- 1;
        v8 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService servCellRadioTechnologyType](self "servCellRadioTechnologyType")];
        if (v8 == 9)
        {
          [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService nrCellRSRP](self "nrCellRSRP")];
          v9 = v13;
          nrCellRSRQ = [(WRM_EnhancedCTService *)self nrCellRSRQ];
        }

        else
        {
          v9 = 0.0;
          v10 = 0.0;
          if (v8 != 1)
          {
            goto LABEL_21;
          }

          [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService servCellRSRP](self "servCellRSRP")];
          v9 = v11;
          nrCellRSRQ = [(WRM_EnhancedCTService *)self servCellRSRQ];
        }

        [-[NSMutableArray objectAtIndex:](nrCellRSRQ objectAtIndex:{v7), "doubleValue"}];
        v10 = v14;
LABEL_21:
        v15 = v9 > [v6 nonCbrsExitRsrpMin] && v10 > objc_msgSend(v6, "nonCbrsExitRsrqMin");
        [WCM_Logging logLevel:22 message:@"evaluateCbrsInSingleSimMode recommendSlot=unknown, dataSlotQuality=%d, anyCallState=%d", v15, *&self->mWrmCbrsMonitorRequired];
        v16 = *&self->mWrmCbrsMonitorRequired;

        [(WRM_EnhancedCTService *)self switchPrivateNwDataSim:0 currentSlotQuality:v15 anyCallState:v16 forceRecommend:1];
        return;
      }

      [WCM_Logging logLevel:22 message:@"Error: invalid tempiRATConfig"];
    }
  }
}

- (void)currentDataSimChanged:(id)changed
{
  if (![changed slotID])
  {
    return;
  }

  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"dataPreferredSlot changed to %ld", [changed slotID]);
  -[WRM_EnhancedCTService setDataPreferredSlot:](self, "setDataPreferredSlot:", [changed slotID]);
  if (BYTE4(self->mLastCbrsRecommendation) != 1 || [(WRM_EnhancedCTService *)self numberofSubscriptions]== 1)
  {
    return;
  }

  if ([-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService isPrivateNetworkSim](self "isPrivateNetworkSim")])
  {
    v5 = 1;
  }

  else
  {
    if (([-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService isPrivateNetworkSim](self "isPrivateNetworkSim")] & 1) == 0)
    {
      v10 = @"currentDataSimChanged error: cbrs SIM not present in dual sim mode";
      goto LABEL_18;
    }

    v5 = 2;
  }

  slotID = [changed slotID];
  if (slotID == *(&self->mCbrsSwitchingTimer + 4))
  {
    if (*&self->mCellRSRQ4G5GvsWiFiThreshold)
    {
      [*&self->mCellRSRQ4G5GvsWiFiThreshold invalidate];

      *&self->mCellRSRQ4G5GvsWiFiThreshold = 0;
      slotID = *(&self->mCbrsSwitchingTimer + 4);
    }

    if (slotID == v5)
    {
      v7 = 15.0;
    }

    else
    {
      v7 = 60.0;
    }

    objc_initWeak(&location, self);
    v8 = [WRM_Timer alloc];
    queue = [(WRM_EnhancedCTService *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100039BD8;
    v11[3] = &unk_10023E080;
    objc_copyWeak(&v12, &location);
    *&self->mCellRSRQ4G5GvsWiFiThreshold = [(WRM_Timer *)v8 initWithFireTimeIntervalSinceNow:queue queue:v11 block:v7];
    [WCM_Logging logLevel:22 message:@"CBRS ping-pong timer started for %f seconds", *&v7];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    return;
  }

  v10 = @"Do not start CBRS ping-pong timer as CT hasn't honored WRM's recommendation";
LABEL_18:

  [WCM_Logging logLevel:22 message:v10];
}

- (void)anyCallStateChange:(int)change
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100039CE4;
  v3[3] = &unk_10023DBA0;
  v3[4] = self;
  changeCopy = change;
  dispatch_async([(WRM_EnhancedCTService *)self queue], v3);
}

- (void)evaluateCbrsInDualSimMode:(BOOL)mode
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100039E7C;
  v3[3] = &unk_10023E008;
  v3[4] = self;
  modeCopy = mode;
  dispatch_async([(WRM_EnhancedCTService *)self queue], v3);
}

- (void)voiceLinkQualityChanged:(id)changed metric:(id)metric
{
  if ([changed slotID])
  {
    [WCM_Logging logLevel:22 message:@"%s context %@ metric %@", "[WRM_EnhancedCTService voiceLinkQualityChanged:metric:]", changed, metric];
    slotID = [changed slotID];

    [(WRM_EnhancedCTService *)self processVoiceLinkQualityInfo:metric];
  }
}

- (void)enhancedVoiceLinkQualityChanged:(id)changed metric:(id)metric
{
  if ([changed slotID])
  {
    [WCM_Logging logLevel:22 message:@"%s context %@ metric %@", "[WRM_EnhancedCTService enhancedVoiceLinkQualityChanged:metric:]", changed, metric];
    slotID = [changed slotID];

    [(WRM_EnhancedCTService *)self processEnhancedVoiceLinkQualityBlob:metric];
  }
}

- (void)enhancedDataLinkQualityChanged:(id)changed metric:(id)metric
{
  if ([changed slotID])
  {
    [WCM_Logging logLevel:22 message:@"%s context %@ metric %@", "[WRM_EnhancedCTService enhancedDataLinkQualityChanged:metric:]", changed, metric];
    slotID = [changed slotID];

    [(WRM_EnhancedCTService *)self processEnhancedDataLQMBlob:metric];
  }
}

- (void)dataStatus:(id)status dataStatusInfo:(id)info
{
  if ([status slotID])
  {
    [WCM_Logging logLevel:22 message:@"%s context %@ dataStatus %@", "[WRM_EnhancedCTService dataStatus:dataStatusInfo:]", status, info];
    slotID = [status slotID];

    [(WRM_EnhancedCTService *)self processDataStatus:info];
  }
}

- (void)imsRegistrationChanged:(id)changed info:(id)info
{
  if ([changed slotID])
  {
    [WCM_Logging logLevel:22 message:@"%s context %@ info %@", "[WRM_EnhancedCTService imsRegistrationChanged:info:]", changed, info];
  }
}

- (void)cellChanged:(id)changed cell:(id)cell
{
  if ([changed slotID])
  {
    [WCM_Logging logLevel:22 message:@"%s context %@ cell info %@", "[WRM_EnhancedCTService cellChanged:cell:]", changed, cell];
    if (cell)
    {
      v7 = [cell objectForKey:@"kCTRegistrationRadioAccessTechnology"];
      [WCM_Logging logLevel:22 message:@"%s rat info %@", "[WRM_EnhancedCTService cellChanged:cell:]", v7];
      if (v7)
      {
        slotID = [changed slotID];

        [(WRM_EnhancedCTService *)self processRadioTechnologyInfo:v7];
      }
    }
  }
}

- (void)cellMonitorUpdate:(id)update info:(id)info
{
  if (![update slotID])
  {
    return;
  }

  [WCM_Logging logLevel:22 message:@"%s context %@ cell info %@", "[WRM_EnhancedCTService cellMonitorUpdate:info:]", update, info];
  legacyInfo = [info legacyInfo];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = [legacyInfo countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v43;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(legacyInfo);
        }

        v12 = *(*(&v42 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return;
        }
      }

      v9 = [legacyInfo countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v9);
  }

  if (!legacyInfo || ![legacyInfo count])
  {
    return;
  }

  updateCopy = update;
  if (![legacyInfo count])
  {
    v28 = 0;
    v40 = 0;
    LODWORD(intValue) = 0;
    v30 = 0;
    v29 = 0;
    v27 = WRM_IPTelephonyController;
    goto LABEL_43;
  }

  v13 = 0;
  intValue2 = 0;
  intValue5 = 0;
  v14 = 0;
  v15 = 0;
  v31 = 0;
  intValue3 = 0;
  v39 = kCTCellMonitorCellId;
  v38 = kCTCellMonitorUARFCN;
  v37 = kCTCellMonitorBandInfo;
  v36 = kCTCellMonitorBandwidth;
  v35 = kCTCellMonitorNRARFCN;
  do
  {
    intValue = v15;
    v17 = [legacyInfo objectAtIndex:v13];
    v18 = [v17 objectForKeyedSubscript:v39];
    if (v18)
    {
      intValue = [v18 intValue];
    }

    v19 = [v17 objectForKeyedSubscript:v38];
    if (v19)
    {
      intValue2 = [v19 intValue];
      -[NSMutableArray replaceObjectAtIndex:withObject:](-[WRM_EnhancedCTService cellARFCN](self, "cellARFCN"), "replaceObjectAtIndex:withObject:", [updateCopy slotID] - 1, +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", intValue2));
    }

    v20 = [v17 objectForKeyedSubscript:v37];
    if (v20)
    {
      intValue3 = [v20 intValue];
      -[NSMutableArray replaceObjectAtIndex:withObject:](-[WRM_EnhancedCTService cellBandInfo](self, "cellBandInfo"), "replaceObjectAtIndex:withObject:", [updateCopy slotID] - 1, +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", intValue3));
    }

    v21 = [v17 objectForKeyedSubscript:v36];
    v15 = intValue;
    if (v21)
    {
      intValue4 = [v21 intValue];
      if (intValue4 > 49)
      {
        switch(intValue4)
        {
          case '2':
            v14 = 10;
            goto LABEL_35;
          case 'K':
            v14 = 15;
            goto LABEL_35;
          case 'd':
            v14 = 20;
            goto LABEL_35;
        }
      }

      else
      {
        switch(intValue4)
        {
          case 6:
            v14 = 1;
            goto LABEL_35;
          case 16:
            v14 = 3;
            goto LABEL_35;
          case 25:
            v14 = 5;
LABEL_35:
            -[NSMutableArray replaceObjectAtIndex:withObject:](-[WRM_EnhancedCTService cellBandwidth](self, "cellBandwidth"), "replaceObjectAtIndex:withObject:", [updateCopy slotID] - 1, +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v14));
            goto LABEL_36;
        }
      }

      v14 = 0;
      goto LABEL_35;
    }

LABEL_36:
    v23 = [v17 objectForKeyedSubscript:v35];
    if (v23)
    {
      intValue5 = [v23 intValue];
      v31 = 1;
    }

    ++v13;
  }

  while ([legacyInfo count] > v13);
  if (v31)
  {
    v40 = v14;
    v24 = updateCopy;
    -[NSMutableArray replaceObjectAtIndex:withObject:](-[WRM_EnhancedCTService cellID](self, "cellID"), "replaceObjectAtIndex:withObject:", [updateCopy slotID] - 1, +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", intValue));
    v25 = 1;
    -[NSMutableArray replaceObjectAtIndex:withObject:](-[WRM_EnhancedCTService currNRCellFound](self, "currNRCellFound"), "replaceObjectAtIndex:withObject:", [updateCopy slotID] - 1, +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 1));
    wifiNRCellFound = [(WRM_EnhancedCTService *)self wifiNRCellFound];
    v27 = WRM_IPTelephonyController;
    v29 = intValue3;
    v28 = intValue2;
    goto LABEL_46;
  }

  v40 = v14;
  v27 = WRM_IPTelephonyController;
  v29 = intValue3;
  v28 = intValue2;
  v30 = intValue5;
LABEL_43:
  v24 = updateCopy;
  if ([-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService cellID](self "cellID")] == intValue)
  {
    v25 = 0;
  }

  else
  {
    intValue5 = v30;
    -[NSMutableArray replaceObjectAtIndex:withObject:](-[WRM_EnhancedCTService wifiNRCellFound](self, "wifiNRCellFound"), "replaceObjectAtIndex:withObject:", [updateCopy slotID] - 1, +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0));
    wifiNRCellFound = [(WRM_EnhancedCTService *)self currNRCellFound];
    v25 = 0;
LABEL_46:
    -[NSMutableArray replaceObjectAtIndex:withObject:](wifiNRCellFound, "replaceObjectAtIndex:withObject:", [v24 slotID] - 1, +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v25));
    v30 = intValue5;
  }

  [&v27[98] logLevel:22 message:{@"%s ARFCN: %d, CellBW: %d, CellBandInfo: %d, NRCellFound: %d, nARFCN: %d", "-[WRM_EnhancedCTService cellMonitorUpdate:info:]", v28, v40, v29, v25, v30}];
}

- (void)context:(id)context capabilitiesChanged:(id)changed
{
  [WCM_Logging logLevel:22 message:@"%s context %@ capabilitiesChanged info %@", "[WRM_EnhancedCTService context:capabilitiesChanged:]", context, changed];
  if ([context slotID])
  {
    v7 = [changed objectForKey:kCTCapabilityAgent];
    if (v7)
    {
      v8 = [v7 objectForKey:@"kCTCapabilityStatus"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"kCTCapabilityVoLTE status %d", [v8 BOOLValue]);
        -[WRM_EnhancedCTService processVolteStatus::](self, "processVolteStatus::", [v8 BOOLValue], objc_msgSend(context, "slotID"));
      }
    }

    v9 = [changed objectForKey:kCTCapabilityAgent3];
    if (v9)
    {
      v10 = [v9 objectForKey:@"kCTCapabilityStatus"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"kCTCapabilityVoNR status %d", [v10 BOOLValue]);
        -[WRM_EnhancedCTService processVoNRStatus::](self, "processVoNRStatus::", [v10 BOOLValue], objc_msgSend(context, "slotID"));
        [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
      }
    }

    v11 = [changed objectForKey:kCTCapabilityAgent2];
    if (v11)
    {
      v12 = [v11 objectForKey:@"kCTCapabilityStatus"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"kCTCapabilityWiFiCalling status %d", [v12 BOOLValue]);
        -[WRM_EnhancedCTService processWiFiCallingStatus::](self, "processWiFiCallingStatus::", [v12 BOOLValue], objc_msgSend(context, "slotID"));
        v13 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

        [v13 reEvaluateSAState];
      }
    }
  }
}

- (BOOL)checkIfServingCellNonLTE
{
  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService servCellRadioTechnologyType](self "servCellRadioTechnologyType")];
    if (v6 != 10 && v6 != 1)
    {
      break;
    }

    v4 = 0;
    result = 0;
    v3 = 1;
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  return 1;
}

- (void)setNrRSRP:(double)p forSim:(int64_t)sim
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B374;
  block[3] = &unk_10023DDD8;
  block[4] = self;
  block[5] = sim;
  *&block[6] = p;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)setNrSNR:(double)r forSim:(int64_t)sim
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B4D8;
  block[3] = &unk_10023DDD8;
  block[4] = self;
  block[5] = sim;
  *&block[6] = r;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)setServingCellECIO:(double)o forSim:(int64_t)sim
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B5FC;
  block[3] = &unk_10023DDD8;
  block[4] = self;
  block[5] = sim;
  *&block[6] = o;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)setServingCellRSCP:(double)p forSim:(int64_t)sim
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B720;
  block[3] = &unk_10023DDD8;
  block[4] = self;
  block[5] = sim;
  *&block[6] = p;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)setNrRSRQ:(double)q forSim:(int64_t)sim
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B844;
  block[3] = &unk_10023DDD8;
  block[4] = self;
  block[5] = sim;
  *&block[6] = q;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (double)getNrRSRP
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003B9A4;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (double)getNrRSRP:(int64_t)p
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003BB64;
  block[3] = &unk_10023DD38;
  block[4] = self;
  block[5] = &v6;
  block[6] = p;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)getNrSNR
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003BCE8;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (double)getNrSNR:(int64_t)r
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003BEA8;
  block[3] = &unk_10023DD38;
  block[4] = self;
  block[5] = &v6;
  block[6] = r;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)getNrRSRQ
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003C02C;
  v4[3] = &unk_10023DD60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (double)getNrRSRQ:(int64_t)q
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C1EC;
  block[3] = &unk_10023DD38;
  block[4] = self;
  block[5] = &v6;
  block[6] = q;
  dispatch_sync([(WRM_EnhancedCTService *)self queue], block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)getLocationDBFR1Count
{
  if ([(WRM_EnhancedCTService *)self dataPreferredSlot])
  {
    if ([(WRM_EnhancedCTService *)self dataPreferredSlot]== 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else if ([(WRM_EnhancedCTService *)self dataPreferredSlot]== 2)
    {
      v3 = "CTSubscriptionSlotTwo";
    }

    else
    {
      v3 = "Unknown CTSubscriptionSlot!!!";
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: active slot %s getLocationDBFR1Count %d", "-[WRM_EnhancedCTService getLocationDBFR1Count]", v3, [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService detectedFR1CellCountLocDB](self "detectedFR1CellCountLocDB")]);
  v4 = [(NSMutableArray *)[(WRM_EnhancedCTService *)self detectedFR1CellCountLocDB] objectAtIndex:[(WRM_EnhancedCTService *)self dataPreferredSlot]- 1];

  return [v4 intValue];
}

- (unsigned)getLocationDBFR2Count
{
  if ([(WRM_EnhancedCTService *)self dataPreferredSlot])
  {
    if ([(WRM_EnhancedCTService *)self dataPreferredSlot]== 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else if ([(WRM_EnhancedCTService *)self dataPreferredSlot]== 2)
    {
      v3 = "CTSubscriptionSlotTwo";
    }

    else
    {
      v3 = "Unknown CTSubscriptionSlot!!!";
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: active slot %s getLocationDBFR2Count %d", "-[WRM_EnhancedCTService getLocationDBFR2Count]", v3, [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService detectedFR2CellCountLocDB](self "detectedFR2CellCountLocDB")]);
  v4 = [(NSMutableArray *)[(WRM_EnhancedCTService *)self detectedFR2CellCountLocDB] objectAtIndex:[(WRM_EnhancedCTService *)self dataPreferredSlot]- 1];

  return [v4 intValue];
}

- (int)getCTDataIndictor:(int64_t)indictor
{
  v4 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService dataIndicator](self "dataIndicator")];
  v5 = "Unknown CTSubscriptionSlot!!!";
  if (indictor == 2)
  {
    v5 = "CTSubscriptionSlotTwo";
  }

  if (indictor == 1)
  {
    v5 = "CTSubscriptionSlotOne";
  }

  if (!indictor)
  {
    v5 = "CTSubscriptionSlotUnknown";
  }

  if (v4 < 0x13 && ((0x7FFF7u >> v4) & 1) != 0)
  {
    v6 = (&off_10023E400)[v4];
  }

  else
  {
    v6 = "Unknown kCTDataIndicatorStatusUnknown!!!";
    if (v4 == 19)
    {
      v6 = "5G_CA";
    }
  }

  [WCM_Logging logLevel:22 message:@"%s: sim slot %s Data indicator: %s", "[WRM_EnhancedCTService getCTDataIndictor:]", v5, v6];
  return v4;
}

- (int)getBandInfoOnSlot:(int64_t)slot
{
  v4 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService cellBandInfo](self "cellBandInfo")];
  v5 = "CTSubscriptionSlotUnknown";
  v6 = "CTSubscriptionSlotOne";
  v7 = "Unknown CTSubscriptionSlot!!!";
  if (slot == 2)
  {
    v7 = "CTSubscriptionSlotTwo";
  }

  if (slot != 1)
  {
    v6 = v7;
  }

  if (slot)
  {
    v5 = v6;
  }

  [WCM_Logging logLevel:22 message:@"%s: getBandInfoOnSlot %s Band info %d", "[WRM_EnhancedCTService getBandInfoOnSlot:]", v5, v4];
  return v4;
}

- (int)getConfiguredMaxBW
{
  v3 = [-[NSMutableArray objectAtIndex:](-[WRM_EnhancedCTService configuredMaxDLBW](self "configuredMaxDLBW")];
  if ([(WRM_EnhancedCTService *)self dataPreferredSlot])
  {
    if ([(WRM_EnhancedCTService *)self dataPreferredSlot]== 1)
    {
      v4 = "CTSubscriptionSlotOne";
    }

    else
    {
      dataPreferredSlot = [(WRM_EnhancedCTService *)self dataPreferredSlot];
      v4 = "Unknown CTSubscriptionSlot!!!";
      if (dataPreferredSlot == 2)
      {
        v4 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: active slot %s Cell BW %d", "[WRM_EnhancedCTService getConfiguredMaxBW]", v4, v3];
  return v3;
}

- (void)resetWiFiNRStatusDataSlot
{
  wifiNRCellFound = [(WRM_EnhancedCTService *)self wifiNRCellFound];
  v4 = [(WRM_EnhancedCTService *)self dataPreferredSlot]- 1;
  v5 = [NSNumber numberWithInt:0];

  [(NSMutableArray *)wifiNRCellFound replaceObjectAtIndex:v4 withObject:v5];
}

- (void)updateDataStallState:(int64_t)state stall:(BOOL)stall
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C83C;
  block[3] = &unk_10023DF40;
  stallCopy = stall;
  block[4] = self;
  block[5] = state;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)updateCurrentRatInfo:(int64_t)info currentNRCell:(int)cell
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003CA40;
  block[3] = &unk_10023E0A8;
  cellCopy = cell;
  block[4] = self;
  block[5] = info;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)updateLTEBandwidth:(int64_t)bandwidth LTEBW:(unsigned int)w
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003CBA8;
  block[3] = &unk_10023E0A8;
  wCopy = w;
  block[4] = self;
  block[5] = bandwidth;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)updateConfiguredMaxBW:(int64_t)w dlbw:(unsigned int)dlbw ulbw:(unsigned int)ulbw
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003CD14;
  block[3] = &unk_10023DDD8;
  dlbwCopy = dlbw;
  ulbwCopy = ulbw;
  block[4] = self;
  block[5] = w;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)updateUplinkEstimatedBW:(unsigned __int8)w bw:(unsigned int)bw conf:(unsigned int)conf queue:(unsigned int)queue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D064;
  block[3] = &unk_10023E0D0;
  wCopy = w;
  bwCopy = bw;
  confCopy = conf;
  queueCopy = queue;
  block[4] = self;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)updateHighRateLikely:(int64_t)likely highrateIndicator:(BOOL)indicator
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D204;
  block[3] = &unk_10023DF40;
  indicatorCopy = indicator;
  block[4] = self;
  block[5] = likely;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (BOOL)ifInternalDevice
{
  [WCM_Logging logLevel:22 message:@"CellularThroughput check for internal device"];

  return MGGetBoolAnswer();
}

- (BOOL)isBetaBuild
{
  if (qword_1002B7D50 != -1)
  {
    sub_10015F098();
  }

  return 0;
}

- (BOOL)ifAutomatedDeviceGroup
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = sub_100037E68;
  v2 = qword_1002B7D80;
  v9 = sub_100037E78;
  v10 = qword_1002B7D80;
  if (!qword_1002B7D80)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000417F4;
    v4[3] = &unk_10023DCC8;
    v4[4] = &v5;
    sub_1000417F4(v4);
    v2 = v6[5];
  }

  _Block_object_dispose(&v5, 8);
  return [objc_msgSend(v2 performSelector:{NSSelectorFromString(@"automatedDeviceGroup")), "length"}] != 0;
}

- (void)setCellularSpeedTestsDisabled:(BOOL)disabled
{
  v4 = "NO";
  if (disabled)
  {
    v4 = "YES";
  }

  [WCM_Logging logLevel:22 message:@"CellularThroughput cellularSpeedTestsDisabled: %s", v4];
  byte_1002B7D58 = disabled;
}

- (void)checkAndScheduleSpeedTest
{
  if (*(&self->super.m_PDPAssertionRefCount + 1) && (byte_1002B7D58 & 1) == 0)
  {
    v3 = [(WRM_EnhancedCTService *)self getCTDataIndictor]- 8;
    if (v3 > 0xB)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = dword_1001957D8[v3];
    }

    v5 = *(&self->super.m_PDPAssertionRefCount + 1);
    if ((byte_1002B7D59 & 1) == 0)
    {
      v6 = [v5 ifScheduleSpeedTestAfterReboot:1 probability:60];
      v5 = *(&self->super.m_PDPAssertionRefCount + 1);
      if ((v6 & 1) == 0 && v5)
      {

        *(&self->super.m_PDPAssertionRefCount + 1) = 0;
        return;
      }

      byte_1002B7D59 = 1;
    }

    v7 = v5;
    if ((byte_1002B7D5A & 1) == 0)
    {
      v8 = *(&self->super.m_PDPAssertionRefCount + 1);
      byte_1002B7D5A = 1;

      [v8 scheduleTests:v4 :&stru_10023E150];
    }
  }
}

- (void)reloadCellularSpeedTestSettingsFromPreferences
{
  [WCM_Logging logLevel:22 message:@"CellularThroughput: reloadCellularSpeedTestSettingsFromPreferences called"];
  v3 = CFPreferencesCopyAppValue(@"iRATDebug", @"com.apple.WirelessRadioManager.debug");
  if (!v3)
  {
    [WCM_Logging logLevel:22 message:@"iRATDebug not Found"];
    v8 = 0;
    v10 = 1;
    goto LABEL_13;
  }

  v4 = v3;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(v4))
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(v4, @"CellularSpeedTest", &value))
    {
      v6 = CFStringGetTypeID();
      if (v6 == CFGetTypeID(value))
      {
        v7 = CFStringCompare(@"FALSE", value, 0) == kCFCompareEqualTo;
        v8 = v7;
        v9 = "FALSE";
        if (v7)
        {
          v9 = "TRUE";
        }

        [WCM_Logging logLevel:22 message:@"CellularThroughput: DisableCellularSpeedTest read from preference %s", v9];
        v10 = 0;
        goto LABEL_12;
      }
    }

    v11 = @"CellularThroughput: DisableCellularSpeedTest not found";
  }

  else
  {
    v11 = @"iRATDebug not Found";
  }

  [WCM_Logging logLevel:22 message:v11];
  v8 = 0;
  v10 = 1;
LABEL_12:
  CFRelease(v4);
LABEL_13:
  [WCM_Logging logLevel:22 message:@"CellularThroughput setCellularSpeedTestDisabled is %d", v8];
  [(WRM_EnhancedCTService *)self handleSettingCellularSpeedTestSetting:v8];
  if (v10)
  {
    [(WRM_EnhancedCTService *)self setCellularSpeedTestSettingsToPreferences:v8];
  }
}

- (void)setCellularSpeedTestSettingsToPreferences:(BOOL)preferences
{
  v3 = "FALSE";
  if (preferences)
  {
    v3 = "TRUE";
  }

  values = [NSString stringWithFormat:@"%s", v3];
  keys = @"CellularSpeedTest";
  v4 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v4)
  {
    v5 = v4;
    CFPreferencesSetAppValue(@"iRATDebug", v4, @"com.apple.WirelessRadioManager.debug");
    CFRelease(v5);
  }

  if (!CFPreferencesAppSynchronize(@"com.apple.WirelessRadioManager.debug"))
  {
    [WCM_Logging logLevel:22 message:@"%s: Failed to sync the preferences.", "[WRM_EnhancedCTService setCellularSpeedTestSettingsToPreferences:]"];
  }
}

- (double)initSOSWaypointThreshold
{
  v2 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  if (v2)
  {
    v3 = v2;
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"initSOSWaypointThreshold: Setting to %f", [v2 sosWaypointRSRPTh]);
    return [v3 sosWaypointRSRPTh];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"initSOSWaypointThreshold Error: invalid tempiRATConfig. Setting to default value of -115"];
    return -115.0;
  }
}

- (void)initCellularSpeedTest
{
  if ([(WRM_EnhancedCTService *)self shouldScheduleSpeedTests])
  {
    [WCM_Logging logLevel:22 message:@"CellularThroughput: initCellularSpeedTest"];
    *(&self->super.m_PDPAssertionRefCount + 1) = [[WRM_SpeedTestSchedulerServicesIOS alloc] initWithWaitTime:259200.0];
    [WCM_Logging logLevel:22 message:@"CellularThroughput: calling reloadCellularSpeedTestSettingsFromPreferences"];
    out_token = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10003EBFC;
    v3[3] = &unk_10023E178;
    v3[4] = self;
    notify_register_dispatch("com.apple.WirelessRadioManager.DisableSpeedTestNotification", &out_token, &_dispatch_main_q, v3);
    [(WRM_EnhancedCTService *)self reloadCellularSpeedTestSettingsFromPreferences];
    [WCM_Logging logLevel:22 message:@"CellularThroughput: reloadCellularSpeedTestSettingsFromPreferences called from EnhancedCTServices"];
  }

  else
  {
    *(&self->super.m_PDPAssertionRefCount + 1) = 0;
  }
}

- (void)initCellStationManager
{
  if ([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
  {
    v3 = objc_alloc_init(WRM_CellStationManagerIOS);
    *(&self->cellularProductExperimentsManager + 4) = v3;
    if (v3)
    {
      v4 = @"CellStationManager: initCellStationManager";
    }

    else
    {
      v4 = @"CellStationManager: Not initialized";
    }
  }

  else
  {
    *(&self->cellularProductExperimentsManager + 4) = 0;
    v4 = @"CellStationManager: Not a recent device";
  }

  [WCM_Logging logLevel:22 message:v4];
}

- (void)initLocationController
{
  if ([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
  {
    v3 = [[WRM_LocationControllerIOS alloc] initWithDesiredAccuracy:kCLLocationAccuracyHundredMeters distanceFilter:100.0];
    *(&self->cellStationManager + 4) = v3;
    if (v3)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10003EDBC;
      v6[3] = &unk_10023E1A0;
      v6[4] = self;
      [(WRM_LocationControllerIOS *)v3 setClientLocationAuthorized:v6];
      v4 = *(&self->cellStationManager + 4);
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10003EE90;
      v5[3] = &unk_10023E1F0;
      v5[4] = self;
      [v4 setClientLocationHandler:v5];
    }
  }
}

- (void)createWrmSdmLocationManager
{
  if ([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
  {
    v3 = [WRM_LocationControllerIOS alloc];
    v4 = [(WRM_LocationControllerIOS *)v3 initWithDesiredAccuracy:kCLLocationAccuracyLeech distanceFilter:kCLDistanceFilterNone];
    *(&self->mLastKnownLocationTimestamp + 4) = v4;
    if (v4)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10003F134;
      v7[3] = &unk_10023E1A0;
      v7[4] = self;
      [(WRM_LocationControllerIOS *)v4 setClientLocationAuthorized:v7];
      v5 = *(&self->mLastKnownLocationTimestamp + 4);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100004EA8;
      v6[3] = &unk_10023E1F0;
      v6[4] = self;
      [v5 setClientLocationHandler:v6];
      [*(&self->mLastKnownLocationTimestamp + 4) startMonitoring];
    }

    else
    {

      [WCM_Logging logLevel:22 message:@"wrmSdmLocationController creation failed"];
    }
  }
}

- (void)updateWrmSdmLocationDbInfoRegister:(BOOL)register forSim:(int64_t)sim
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F284;
  block[3] = &unk_10023DF40;
  block[4] = self;
  block[5] = sim;
  registerCopy = register;
  dispatch_async([(WRM_EnhancedCTService *)self queue], block);
}

- (void)fetchWrmSdmLocationDbInfoWithMcc:(unsigned int)mcc Mnc:(unsigned int)mnc CellId:(unint64_t)id ForSim:(int64_t)sim
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003F490;
  v6[3] = &unk_10023E1C8;
  mccCopy = mcc;
  mncCopy = mnc;
  v6[4] = self;
  v6[5] = id;
  v6[6] = sim;
  dispatch_async([(WRM_EnhancedCTService *)self queue], v6);
}

- (void)updateGlobalCellID:(unsigned __int8)d gci:(id)gci cellprefix:(int)cellprefix
{
  if ([(WRM_EnhancedCTService *)self dataPreferredSlot]- 1 == d)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003F704;
    block[3] = &unk_10023E218;
    cellprefixCopy = cellprefix;
    block[4] = gci;
    block[5] = self;
    dispatch_async([(WRM_EnhancedCTService *)self queue], block);
  }
}

- (void)queryLocationdDBForHarvestingData:(double)data :(double)a4
{
  v7 = [objc_alloc(sub_1000165F8()) initWithGEOCoordinate:{data, a4}];
  [v7 setHorizontalAccuracy:0.0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003FA14;
  v8[3] = &unk_10023E240;
  *&v8[5] = data;
  *&v8[6] = a4;
  v8[4] = self;
  [sub_10003F928() fetchDataForLocation:v7 type:1 responseQueue:-[WRM_EnhancedCTService queue](self responseBlock:{"queue"), v8}];
}

- (void)processVoiceLqmQMI:(unsigned __int8)i VLQM:(unsigned __int8)m IMSPreference:(BOOL)preference AudioErasure:(double)erasure RSRP:(double)p
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100040120;
  v7[3] = &unk_10023E288;
  v7[4] = self;
  iCopy = i;
  mCopy = m;
  preferenceCopy = preference;
  *&v7[5] = erasure;
  *&v7[6] = p;
  dispatch_async([(WRM_EnhancedCTService *)self queue], v7);
}

- (id)intializeInterfaceClient:(int64_t)client
{
  v4 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  v5 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];
  if (v4)
  {
    v6 = [v5 getQmiClientForSim:client];
    if (v6)
    {
      [WCM_Logging logLevel:22 message:@"%s: qmiClient is ready.", "[WRM_EnhancedCTService intializeInterfaceClient:]"];
    }

    else
    {
      [WCM_Logging logLevel:22 message:@"%s: qmiClient not ready yet", "[WRM_EnhancedCTService intializeInterfaceClient:]"];
    }
  }

  else if ([v5 isIbiSdmSupported])
  {
    v6 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    if (v6)
    {
      [WCM_Logging logLevel:22 message:@"%s: ibiClient is ready.", "[WRM_EnhancedCTService intializeInterfaceClient:]"];
    }

    else
    {
      [WCM_Logging logLevel:22 message:@"%s: ibiClient not ready yet", "[WRM_EnhancedCTService intializeInterfaceClient:]"];
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

- (BOOL)shouldScheduleSpeedTests
{
  ifInternalDevice = [(WRM_EnhancedCTService *)self ifInternalDevice];
  if (ifInternalDevice)
  {
    ifInternalDevice = [(WRM_EnhancedCTService *)self ifLimitSpeedTest];
    if (ifInternalDevice)
    {
      if ([(WRM_EnhancedCTService *)self ifAutomatedDeviceGroup])
      {
        LOBYTE(ifInternalDevice) = 0;
      }

      else
      {
        LOBYTE(ifInternalDevice) = ![(WRM_EnhancedCTService *)self deviceInRoaming];
      }
    }
  }

  return ifInternalDevice;
}

- (void)resetCbrsCAMetricSentOnSimSlot:(int64_t)slot
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100040990;
  v3[3] = &unk_10023DD88;
  v3[4] = self;
  v3[5] = slot;
  dispatch_async([(WRM_EnhancedCTService *)self queue], v3);
}

- (void)feedCellularMetricsWithUUID:(id)d
{
  v5 = [+[WRM_MetricsService getSingleton](WRM_MetricsService "getSingleton")];
  if (v5)
  {
    v6 = v5;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    dataPreferredSlot = [(WRM_EnhancedCTService *)self dataPreferredSlot];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100040D34;
    block[3] = &unk_10023DE28;
    block[4] = self;
    block[5] = d;
    block[6] = &v21;
    dispatch_sync([(WRM_EnhancedCTService *)self queue], block);
    v7 = [(WRM_EnhancedCTService *)self getCTDataIndictor:v22[3]];
    v6[22] = v22[3];
    v8 = [(WRM_EnhancedCTService *)self isVoiceLQMValid:?];
    if (v8)
    {
      v8 = [(WRM_EnhancedCTService *)self getLteVoiceLQM:v22[3]];
    }

    *(v6 + 31) = v8;
    v9 = [(WRM_EnhancedCTService *)self isDataLQMValid:v22[3]];
    if (v9)
    {
      v9 = [(WRM_EnhancedCTService *)self getCellularDataLQM:v22[3]];
    }

    *(v6 + 30) = v9;
    v10 = [(WRM_EnhancedCTService *)self dataAttachedWithCellularNetwork:v22[3]];
    if (v10)
    {
      v10 = [(WRM_EnhancedCTService *)self getCurrentSignalBars:v22[3]];
    }

    *(v6 + 28) = v10;
    v11 = [(WRM_EnhancedCTService *)self getServingCellType:v22[3]];
    if (v11 > 4)
    {
      if (v11 <= 6)
      {
        if (v11 == 5)
        {
          v16 = @"CDMAHybrid";
        }

        else
        {
          v16 = @"eHRPD_RADIO";
        }

        goto LABEL_31;
      }

      switch(v11)
      {
        case 7:
          v16 = @"TDSCDMA";
          break;
        case 8:
          v16 = @"GSM";
          break;
        case 9:
          v6[13] = @"N_RADIO";
          [(WRM_EnhancedCTService *)self getNrRSRP:v22[3]];
          *(v6 + 32) = v12;
          [(WRM_EnhancedCTService *)self getNrRSRQ:v22[3]];
          *(v6 + 33) = v13;
          [(WRM_EnhancedCTService *)self getNrSNR:v22[3]];
LABEL_18:
          *(v6 + 34) = v14;
LABEL_32:
          _Block_object_dispose(&v21, 8);
          return;
        default:
LABEL_30:
          v16 = @"UNKNOWN";
          break;
      }

LABEL_31:
      v6[13] = v16;
      goto LABEL_32;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        v16 = @"CDMA1X";
      }

      else
      {
        v16 = @"CDMAEVDO";
      }

      goto LABEL_31;
    }

    if (v11 == 1)
    {
      v6[13] = @"LTE";
      [(WRM_EnhancedCTService *)self getServingCellRSRP:v22[3]];
      *(v6 + 32) = v17;
      [(WRM_EnhancedCTService *)self getServingCellRSRQ:v22[3]];
      *(v6 + 33) = v18;
      [(WRM_EnhancedCTService *)self getServingCellSNR:v22[3]];
      *(v6 + 34) = v19;
      *(v6 + 141) = v7 - 16 < 4 || v7 == 8;
      goto LABEL_32;
    }

    if (v11 == 2)
    {
      v6[13] = @"UMTS";
      [(WRM_EnhancedCTService *)self getServingCellRSCP:v22[3]];
      *(v6 + 32) = v15;
      [(WRM_EnhancedCTService *)self getServingCellECIO:v22[3]];
      goto LABEL_18;
    }

    goto LABEL_30;
  }
}

@end