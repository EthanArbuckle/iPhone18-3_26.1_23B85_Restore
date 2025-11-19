@interface WCM_PolicyManager
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)singleton;
- (BOOL)fetchWRMdebugPlistDisableLow5GRate;
- (BOOL)fetchWRMdebugPlistForceRTG;
- (BOOL)isCellularOnGPSIMDBand;
- (BOOL)isCellularOnIMD3CellBand;
- (BOOL)isCellularOnWiFi3FoBand;
- (BOOL)isWiFiChannel:(int)a3 inChannelMap:(id)a4;
- (BOOL)processDynamicAntennaBlocking;
- (WCM_PolicyManager)init;
- (id)getControllerOfId:(int)a3;
- (id)getLTErFemFrequencyRanges:(BOOL)a3;
- (id)getNRrFemFrequencyRanges:(BOOL)a3;
- (id)legacyWiFiChannelsToAvoidFor3FoWiFi;
- (id)legacyWiFiChannelsToAvoidForIMD2GPS;
- (id)legacyWiFiChannelsToAvoidForIMD3Cell;
- (int)cellularCoexBand;
- (int)parseCenterFreqtoUNIIBand:(unsigned int)a3;
- (unsigned)getBtBlockedAntennaForPencilCoexByPlatform;
- (unsigned)getWifiAntennaBitmapForPencilCoexByPlatform;
- (void)audioRouteChanged;
- (void)combineWifiChannelList:(id)a3 withChannelList:(id)a4;
- (void)combineWifiChannelList:(id)a3 withChannelList:(id)a4 inAllowedChannelSet:(id)a5;
- (void)configureBTAntennaSelection;
- (void)configureForLTECDRXWiFiTimeSharing;
- (void)configureTimeSharingWifiChannels;
- (void)configureWCI2BitmapForTimeSharingWifiChannels:(id)a3;
- (void)configureWiFiChannelMap;
- (void)configureWiFiChannelsForConditionalMitigation;
- (void)configureWifiAntennaSelectionForCoex;
- (void)dealloc;
- (void)evaluateGen9rFemConfig;
- (void)evaluateULCARestrictions;
- (void)getPencilCoexCellRatBand:(char *)a3 band:(unsigned __int16 *)a4;
- (void)getUpdatedWifiAntennaSelectionEnhConfigsWithbmWifiEnhAntTx000:(unsigned __int16 *)a3 bmWiFiEnhAntTx001:(unsigned __int16 *)a4 bmWiFiEnhAntTx010:(unsigned __int16 *)a5 bmWiFiEnhAntTx011:(unsigned __int16 *)a6 bmWiFiEnhAntTx100:(unsigned __int16 *)a7 bmWiFiEnhAntTx101:(unsigned __int16 *)a8 bmWiFiEnhAntTx110:(unsigned __int16 *)a9 bmWiFiEnhAntTx111:(unsigned __int16 *)a10 bmWiFiBand:(unsigned __int16 *)a11;
- (void)handleBTCoexConnectedDevicesEvent_numA2DP:(unint64_t)a3 numLLA:(unint64_t)a4 numHID:(unint64_t)a5 numSCO:(unint64_t)a6 numeSCO:(unint64_t)a7 numLE:(unint64_t)a8 numLEA:(unint64_t)a9;
- (void)handleBTCoexStatsEvent_tddCnt:(unsigned int)a3 hybridCnt:(unsigned int)a4 btDurMs:(unsigned int)a5 totDurMs:(unsigned int)a6 parallelCnt:(unsigned int)a7 btDurAirMs:(unsigned int)a8 wlrssiCoex:(char)a9 btrssiCoex:(char)a10;
- (void)handleBTCoexWiFiStateEvent:(int)a3 wifiChannel:(unsigned int)a4;
- (void)handleBTConnectionChange;
- (void)handleBTLeConn;
- (void)handleBTLeDiscoveryScanStateChange;
- (void)handleBTPowerStateChange;
- (void)handleBTScanConfigChange;
- (void)handleCCConnectionUpdate;
- (void)handleCallLQMStateChange;
- (void)handleCameraStateIndication;
- (void)handleCellularNetworkUpdate;
- (void)handleControllerAvailability:(unint64_t)a3;
- (void)handleFTCall;
- (void)handleHPCellularSessionEnd;
- (void)handleHPCellularSessionStart;
- (void)handleLeADVePAStateChange;
- (void)handleLow5GRate:(BOOL)a3 forceReset:(BOOL)a4;
- (void)handleMavCameraStateIndication;
- (void)handleMedtronicConnection;
- (void)handlePencilStateIndication;
- (void)handleRCU2ContentionChange;
- (void)handleSessionNotification:(unint64_t)a3;
- (void)handleWiFiBTAirplayChange;
- (void)handleWiFiBTCatsChange:(BOOL)a3;
- (void)handleWiFiBTCoexChange;
- (void)handleWiFiBTULOFDMAChange;
- (void)handleWiFiConfigChange;
- (void)handleWiFiP2PChange;
- (void)handleWiFiPowerStateChange;
- (void)handleWiFiRCU1Change;
- (void)handleWiFiRCU1PowerOff;
- (void)handleWiFiRCU2Change;
- (void)handleWiFiRCU2PowerOff;
- (void)initWiFiStatetoBT;
- (void)legacyType7MsgForWiFiChannels;
- (void)queryHPCellularInitialState;
- (void)refreshWiFiWCI2Bitmap;
- (void)sendNRFrequencyBandUpdateForMic:(double)a3 dlHighFreq:(double)a4 ulLowFreq:(double)a5 ulHighFreq:(double)a6;
- (void)sendRCU2UpdateMessage;
- (void)sendULFrequencyUpdates:(int64_t)a3 ulCenterFreq:(double)a4 ulBandwidth:(double)a5;
- (void)startHomeKitTimer;
- (void)stopHomeKitTimer;
- (void)submitWifiAntselPolicyStats;
- (void)updateAntselPolicyStatsArray:(id)a3;
- (void)updateBTRCU2TimingArray;
- (void)updateBTStateChangeToCellular;
- (void)updateCTSacDriverRemoveAllFromWifiClient;
- (void)updateCTSacDriverWifiInfo;
- (void)updateCellTxPowerLimit;
- (void)updateCellularPencilCoex_TriggeredByPowerOnEvent:(BOOL)a3;
- (void)updateControllerState:(unint64_t)a3;
- (void)updateGpsbandsInfoForBB;
- (void)updateGpsbandsInfoForBBv2;
- (void)updateHPCellularMetric;
- (void)updateLqmState:(int)a3 deviceRRCState:(unsigned __int8)a4 subscriptionSlot:(int64_t)a5;
- (void)updatePHSWifiChannels;
- (void)updatePencilCoexActivationCondition;
- (void)updateWiFiBTConnectionReport;
- (void)updateWiFiChannelForConditionalMitigation;
- (void)updateWiFiCoexState;
- (void)updateWiFiRCU1ModeChange;
- (void)updateWiFiRCU1Status;
- (void)updateWiFiRCU1ULOFDMAStatus;
- (void)updateWiFiRCU2CoexMode;
- (void)updateWiFiRCU2CoexParams;
- (void)updateWiFiRCU2PMProtectionMode;
- (void)updateWiFiRCU2TimingArray;
- (void)updateWiFiRCU2ULOFDMAStatus;
- (void)updateWifiAntennaSelectionV1V2Configs;
- (void)updateWifiOCLChannelList;
- (void)wrmCACoexSubmit_BTAFHIssue:(unsigned int)a3 issueType:(unsigned int)a4;
- (void)wrmCACoexSubmit_BTAFHMap:(id)a3;
@end

@implementation WCM_PolicyManager

+ (id)singleton
{
  objc_sync_enter(a1);
  v3 = qword_1002B8130;
  if (qword_1002B8130)
  {
    goto LABEL_25;
  }

  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___WCM_PolicyManager;
  qword_1002B8130 = [objc_msgSendSuper2(&v11 allocWithZone:{0), "init"}];
  if ([objc_msgSend(qword_1002B8130 "platformManager")])
  {
    dispatch_async([qword_1002B8130 getCoreLocationHandlingQueue], &stru_100241A08);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100003C00, CLTechStatusChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  if (([objc_msgSend(qword_1002B8130 "activeCoexFeatures")] & 1) != 0 || (objc_msgSend(objc_msgSend(qword_1002B8130, "activeCoexFeatures"), "containsObject:", @"AntennaTuningForGpsBB20") & 1) != 0 || objc_msgSend(objc_msgSend(qword_1002B8130, "activeCoexFeatures"), "containsObject:", @"SacPolicySupport"))
  {
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, 0, sub_10000AEAC, CLGnssBandsChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [WCM_Logging logLevel:5 message:@"Sac driver: added notification gpsRadioActive %d", *(qword_1002B8130 + 18)];
    dispatch_async([qword_1002B8130 getCoreLocationHandlingQueue], &stru_100241A28);
  }

  v6 = [objc_msgSend(qword_1002B8130 "activeCoexFeatures")];
  [qword_1002B8130 setWcmCellularWCI2Mode_Ext_Enable:v6];
  [qword_1002B8130 setWcmCellularWCI2Mode_Ext_critical_ul_ca_bitmap:1];
  if (([objc_msgSend(qword_1002B8130 "activeCoexFeatures")] & 1) != 0 || objc_msgSend(objc_msgSend(qword_1002B8130, "activeCoexFeatures"), "containsObject:", @"BB_POLICY_CONFIG_SUPPORT"))
  {
    [qword_1002B8130 setWcmCellularCCSetToBB:0];
    [qword_1002B8130 setWcmCellularWCI2Mode_Ext_critical_ul_ca_bitmap:0];
  }

  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"ULCA Init-0-ULCA critical bitmap %d", [qword_1002B8130 wcmCellularWCI2Mode_Ext_critical_ul_ca_bitmap]);
  if ([objc_msgSend(qword_1002B8130 "activeCoexFeatures")])
  {
    [WCM_Logging logLevel:1 message:@"RCU2: Creating the controller"];
    [qword_1002B8130 setRcu2Controller:objc_opt_new()];
    [objc_msgSend(qword_1002B8130 "rcu2Controller")];
    [qword_1002B8130 updateControllerSession:objc_msgSend(qword_1002B8130 ofId:{"rcu2Controller"), 30}];
  }

  if (![objc_msgSend(qword_1002B8130 "activeCoexFeatures")])
  {
    [WCM_Logging logLevel:3 message:@"ARI driver is not created as feature is not enabled"];
    goto LABEL_23;
  }

  v7 = +[WCM_AriCoexCommandDriver singleton];
  if (!v7)
  {
    [WCM_Logging logLevel:0 message:@"Failed to create ARI driver!"];
    goto LABEL_23;
  }

  if ([objc_msgSend(qword_1002B8130 "activeCoexFeatures")])
  {
    v8 = 1;
LABEL_21:
    [v7 createCommandHandlerForAriVersion:v8];
    goto LABEL_22;
  }

  if ([objc_msgSend(qword_1002B8130 "activeCoexFeatures")])
  {
    v8 = 2;
    goto LABEL_21;
  }

LABEL_22:
  [v7 connectBaseband];
LABEL_23:
  v9 = MGGetBoolAnswer();
  v3 = qword_1002B8130;
  if (v9)
  {
    [qword_1002B8130 startHomeKitTimer];
    v3 = qword_1002B8130;
  }

LABEL_25:
  v3[36] = 0;
  objc_sync_exit(a1);
  return v3;
}

- (void)handleWiFiRCU1Change
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [(WCM_PolicyManager *)self updateWiFiRCU1ULOFDMAStatus];
    [(WCM_PolicyManager *)self updateWiFiRCU1ModeChange];
    [(WCM_PolicyManager *)self updateWiFiRCU1Status];
    if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] && -[WCM_PolicyManager cellularController](self, "cellularController"))
    {
      [(WCM_CellularController *)[(WCM_PolicyManager *)self cellularController] updateBBRC1Params:[(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] mRCU1PowerOn] channel:[(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] mRCU1ChannelNum] duration:[(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] mRCU1OnDuration] priority:[(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] mRCU1UseCaseNum]];
    }

    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"CoexBBUnifiedSensorInfoSupport"])
    {
      v3 = [(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] mRCU1PowerOn];
      v4 = [(WCM_PolicyManager *)self cellularController];
      v5 = [(WCM_PolicyManager *)self rcu1Controller];
      if (v3)
      {
        v6 = [(WCM_R1Controller *)v5 mRCU1ChannelNum];
      }

      else
      {
        v6 = [(WCM_R1Controller *)v5 mRCU1PowerOn];
      }

      v7 = v6;
      v8 = [(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] mRCU1UseCaseNum];

      [(WCM_CellularController *)v4 sendBBCoexSensorMessage:3 band:v7 usecase:v8];
    }
  }
}

- (void)updateWiFiRCU1ModeChange
{
  v3 = [(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] mRCU1PowerOn];
  v4 = [(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] mRCU1ChannelNum];
  v5 = [(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] mRCU1NbBandMask];
  v6 = [(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] mRCU15GHzInUse];
  v7 = [(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] mRCU1CurrentMode];
  if (![(WCM_PolicyManager *)self wifiController])
  {
    v12 = 0;
    goto LABEL_9;
  }

  v8 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v9 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState];
  v10 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] didWiFiDeviceReset];
  v11 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState];
  if (v8)
  {
    if (v11 & v3)
    {
      if (v5)
      {
        v4 = 5;
      }

      v12 = 257;
      if (v10)
      {
        goto LABEL_20;
      }

LABEL_9:
      v10 = 0;
      goto LABEL_21;
    }

LABEL_19:
    v12 = 0;
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v9 == 3)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v13 != 1)
  {
    goto LABEL_19;
  }

  v12 = v4 == 5 && v3;
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_20:
  v10 = 1;
  [WCM_Logging logLevel:2 message:@"updateWiFiRCU1ModeChange wifiReset (%d)", 1];
LABEL_21:
  v14 = v10;
  if (v12 != v7)
  {
    [WCM_Logging logLevel:2 message:@"updateWiFiRCU1ModeChange mode change old (0x%04x) new (0x%04x)", v7, v12];
    [(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] setMRCU1CurrentMode:v12];
    v14 = 1;
  }

  if (word_1002B7A28 != v4)
  {
    [WCM_Logging logLevel:2 message:@"updateWiFiRCU1ModeChange chan change old (%d) new (%d)", word_1002B7A28, v4];
    word_1002B7A28 = v4;
    v10 = 1;
  }

  if (v3 != word_1002B818E)
  {
    [WCM_Logging logLevel:2 message:@"updateWiFiRCU1ModeChange pwr change old (%d) new (%d)", word_1002B818E, v3];
    word_1002B818E = v3;
    if (!v3)
    {
      v4 = 0;
    }

    v10 = 1;
    goto LABEL_31;
  }

  if (v14 | v10)
  {
LABEL_31:
    [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateWiFiRCU1ModeChanged:v14 andChannelChanged:v10 andMode:[NSNumber andChannel:"numberWithUnsignedInt:" numberWithUnsignedInt:v12], [NSNumber numberWithShort:v4]];
  }

  if (word_1002B8190 != v6)
  {
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiFigaroCoex"])
    {
      [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateUWB5GHzActive:v6];
      word_1002B8190 = v6;
    }
  }
}

- (void)updateWiFiRCU1Status
{
  if ([(WCM_PolicyManager *)self rcu1Controller])
  {
    if ([(WCM_PolicyManager *)self wifiController])
    {
      v3 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState];
      v4 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState];
      if (v4 == 4 || v4 == 3)
      {
        v5 = 2;
      }

      else
      {
        v5 = v4 == 2;
      }
    }

    else
    {
      v5 = 0;
      v3 = 0;
    }

    if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      [(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] sendBlockEnhancedMms:[(WCM_PolicyManager *)self parseCenterFreqtoUNIIBand:[(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] channelCenterFreqMHz]]> 0xB];
    }

    if ([(WCM_PolicyManager *)self btController])
    {
      v6 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState];
      v7 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] getAny5GHzBTDevicesConnected];
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v8 = [(WCM_PolicyManager *)self rcu1Controller];

    [(WCM_R1Controller *)v8 sendRCU1Message:v3 wifiBand:v5 btPowerState:v6 btBand:v7 isForce:0];
  }
}

- (void)handleWiFiBTCoexChange
{
  v46 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState];
  *(&v47 + 1) = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] numSCODevice];
  *&v47 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] numeSCODevice];
  v3 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] getNum2GHzAclA2DPDevices];
  v4 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] numHIDDevice];
  v48 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] numLEDevice];
  v49 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] numLEADevice];
  v5 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] numLLADevice];
  v6 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] getPhyMode];
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v7 = [(WCM_CtrXPCClient *)[(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] threadClient] getRCU2Status];
    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateThreadRadioStatus:v7];
  }

  else
  {
    v7 = 0;
  }

  [WCM_Logging logLevel:4 message:@"threadActive is %d", v7];
  if (self->_forceRealTimeAWDL)
  {
    [WCM_Logging logLevel:2 message:@"Forcing AWDL RTG Active due to defaults write"];
    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateAWDLRTGActive:1];
  }

  [WCM_Logging logLevel:2 message:@"Handle WiFi/BT Coex change phyMode11ax: %d", v6 == 6];
  self->_coexProfile2GTDDReason = 0;
  [WCM_Logging logLevel:2 message:@"Handle WiFi/BT Coex change -  findMyPencilScanActive(%d)", self->_findMyPencilScanActive];
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] && -[WCM_WiFiController powerState](-[WCM_PolicyManager wifiController](self, "wifiController"), "powerState"))
  {
    [WCM_Logging logLevel:2 message:@"Handle WiFi/BT Coex change - WIFI_BT_PROFILE"];
    if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState]&& (v47 != 0 || v3 || v4 || v48))
    {
      if (*(&v47 + 1) || !(v4 | v48) || v47 || v3 || v49)
      {
        if (v47 == 0 || v4 || v48)
        {
          v8 = [(WCM_PolicyManager *)self wifiController];
          if (v3 != 1 || v4 || v48)
          {
            v9 = 4;
          }

          else
          {
            v9 = 3;
          }
        }

        else
        {
          v8 = [(WCM_PolicyManager *)self wifiController];
          v9 = 2;
        }
      }

      else
      {
        v8 = [(WCM_PolicyManager *)self wifiController];
        v9 = 1;
      }
    }

    else
    {
      v8 = [(WCM_PolicyManager *)self wifiController];
      v9 = 0;
    }

    v10 = 0;
    goto LABEL_48;
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] && -[WCM_WiFiController powerState](-[WCM_PolicyManager wifiController](self, "wifiController"), "powerState"))
  {
    [WCM_Logging logLevel:2 message:@"Handle WiFi/BT Coex change- WIFI_BT_5G_PROFILE - BT power (%u)", [(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState]];
    if (![(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState])
    {
      [WCM_Logging logLevel:2 message:@"Handle WiFi/BT Coex change- WIFI_BT_5G_PROFILE- BT is not power on- set default profile"];
      goto LABEL_36;
    }

    enablePencilCoexTDDProfile = self->_enablePencilCoexTDDProfile;
    findMyPencilScanActive = self->_findMyPencilScanActive;
    if (enablePencilCoexTDDProfile || v7 || findMyPencilScanActive)
    {
      goto LABEL_146;
    }

LABEL_29:
    if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] getAny2GHzBTDevicesConnected])
    {
      if (v4 | v48 && ![(WCM_BTController *)[(WCM_PolicyManager *)self btController] get2GHzSub15msAudioDevicesConnected]&& !v3 && !v49)
      {
        v8 = [(WCM_PolicyManager *)self wifiController];
        v9 = 1;
LABEL_47:
        v10 = 6;
LABEL_48:
        [(WCM_WiFiController *)v8 updateWiFiBTCoexActiveProfileFor2G:v9 and5G:v10];
        goto LABEL_49;
      }

      if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] get2GHzSub15msAudioDevicesConnected]&& !v4 && !v48)
      {
        v8 = [(WCM_PolicyManager *)self wifiController];
        v9 = 2;
        goto LABEL_47;
      }

      v8 = [(WCM_PolicyManager *)self wifiController];
      if (v3 == 1 && !v4 && !v48)
      {
        v9 = 3;
        goto LABEL_47;
      }

LABEL_46:
      v9 = 4;
      goto LABEL_47;
    }

LABEL_36:
    v8 = [(WCM_PolicyManager *)self wifiController];
    v9 = 0;
    goto LABEL_47;
  }

  if (![objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] || !-[WCM_WiFiController powerState](-[WCM_PolicyManager wifiController](self, "wifiController"), "powerState"))
  {
    goto LABEL_49;
  }

  [WCM_Logging logLevel:2 message:@"Handle WiFi/BT Coex change- WIFI_BT_5G_PROFILE - BT power (%u)", [(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState]];
  if (![(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState])
  {
    v13 = @"Handle WiFi/BT Coex change- WIFI_BT_EXT_PROFILE- BT is not power on- set TDD profile";
LABEL_45:
    [WCM_Logging logLevel:2 message:v13];
    v8 = [(WCM_PolicyManager *)self wifiController];
    goto LABEL_46;
  }

  if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState]!= 2)
  {
    v13 = @"Handle WiFi/BT Coex change- WIFI_BT_EXT_PROFILE- WiFi is not on 2G Channel- set TDD profile";
    goto LABEL_45;
  }

  enablePencilCoexTDDProfile = self->_enablePencilCoexTDDProfile;
  findMyPencilScanActive = self->_findMyPencilScanActive;
  if (!enablePencilCoexTDDProfile && !v7 && !findMyPencilScanActive)
  {
    goto LABEL_29;
  }

LABEL_146:
  [WCM_Logging logLevel:2 message:@"Setting TDD profile for 2.4GHz - _enablePencilCoexTDDProfile || _findMyPencilScanActive || threadActive is (%d || %d || %d)", enablePencilCoexTDDProfile, findMyPencilScanActive, v7];
  [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateWiFiBTCoexActiveProfileFor2G:4 and5G:6];
  if (self->_enablePencilCoexTDDProfile)
  {
    v44 = 1;
  }

  else if (self->_findMyPencilScanActive)
  {
    v44 = 3;
  }

  else
  {
    v44 = 2;
  }

  self->_coexProfile2GTDDReason = v44;
LABEL_49:
  if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState])
  {
    if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] get2GHzSub15msNonSCOConnected])
      {
        v14 = @"Sub15msBTAudio link active sending Wifi controller eSCO traffic status";
LABEL_77:
        [WCM_Logging logLevel:2 message:v14];
        v19 = 1;
        goto LABEL_78;
      }

      [WCM_Logging logLevel:2 message:@"Sub15msBTAudio link not active sending Wifi controller eSCO traffic status", v45];
LABEL_72:
      v19 = 0;
LABEL_78:
      byte_1002B813E = v19;
      goto LABEL_79;
    }

    if (![objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] || !objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"WiFiBTLimitedAggregation"))
    {
      if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
      {
        v18 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] get2GHzSub15msNonSCOConnected];
        if (v6 == 6 && v18)
        {
          v14 = @"Handle WiFi/BT Coex 11ax AND Sub15msBTAudio active";
          goto LABEL_77;
        }

        v40 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] get2GHzSub15msNonSCOConnected];
        v41 = "InActive";
        if (v40)
        {
          v41 = "Active";
        }

        [WCM_Logging logLevel:2 message:@"Handle WiFi/BT Coex 11ax(%d) OR Sub15msBTAudio(%s) link not active", v6 == 6, v41];
      }

      else
      {
        if (![objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
        {
          goto LABEL_79;
        }

        if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] get2GHzSub15msNonSCOConnected]&& v4 >= 2)
        {
          v14 = @"Handle WiFi/BT Coex eSCOplus2HID true";
          goto LABEL_77;
        }

        v42 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] get2GHzSub15msNonSCOConnected];
        v43 = "InActive";
        if (v42)
        {
          v43 = "Active";
        }

        [WCM_Logging logLevel:2 message:@"Handle WiFi/BT Coex Sub15msBTAudio: %s, numHID: %lu", v43, v4];
      }

      if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] get2GHzSub15msNonSCOConnected])
      {
        goto LABEL_79;
      }

      goto LABEL_72;
    }

    [WCM_Logging logLevel:2 message:@"Handle WiFi/BT Coex eSCOplus2HID state %d", byte_1002B813F];
    if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] get2GHzSub15msNonSCOConnected]&& v4 >= 2 && (byte_1002B813F & 1) == 0)
    {
      byte_1002B813F = 1;
      v15 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] get2GHzSub15msNonSCOConnected];
      v16 = "InActive";
      if (v15)
      {
        v16 = "Active";
      }

      [WCM_Logging logLevel:2 message:@"Handle WiFi/BT Coex Sub15msBTAudio: %s, numHID: %lu", v16, v4];
      byte_1002B813E = 1;
    }

    v17 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] get2GHzSub15msNonSCOConnected];
    if (v6 == 6 && v17 && (byte_1002B813F & 1) == 0)
    {
      [WCM_Logging logLevel:2 message:@"Handle WiFi/BT Coex 11ax AND eSCO link active"];
      byte_1002B813E = 1;
    }

    if (![(WCM_BTController *)[(WCM_PolicyManager *)self btController] get2GHzSub15msNonSCOConnected])
    {
      byte_1002B813F = 0;
      [WCM_Logging logLevel:2 message:@"Handle WiFi/BT Coex Sub15msBTAudio: InActive, numHID: %lu", v4];
      goto LABEL_72;
    }
  }

LABEL_79:
  v20 = byte_1002B813E;
  [WCM_Logging logLevel:2 message:@"Handle WiFi/BT Coex LA final enable(%d) useCase(%d)", byte_1002B813E, byte_1002B813E];
  v21 = [(WCM_PolicyManager *)self wifiController];
  [(WCM_WiFiController *)v21 updateWiFiLimitedAggregationActiveStatus:byte_1002B813E andUseCase:v20];
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] && -[WCM_WiFiController powerState](-[WCM_PolicyManager wifiController](self, "wifiController"), "powerState") && byte_1002B8140 != (v3 != 0))
  {
    [WCM_Logging logLevel:2 message:@"Handle WiFi/BT Coex send Wifi controller A2DP status to %d", v3 != 0];
    [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateWiFiA2DPActiveStatus:v3 != 0];
    byte_1002B8140 = v3 != 0;
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] && -[WCM_WiFiController powerState](-[WCM_PolicyManager wifiController](self, "wifiController"), "powerState") && byte_1002B8141 != (v5 != 0))
  {
    [WCM_Logging logLevel:2 message:@"Handle WiFi/BT Coex send Wifi controller LLA status to %d", v5 != 0];
    [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateWiFiA2DPLLAActiveStatus:v5 != 0];
    byte_1002B8141 = v5 != 0;
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] && -[WCM_WiFiController powerState](-[WCM_PolicyManager wifiController](self, "wifiController"), "powerState"))
  {
    v22 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] get2GHzSub15msAudioDevicesConnected];
    if (v3)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    if (v49)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    v25 = "enable";
    if (v24)
    {
      v25 = "disable";
    }

    [WCM_Logging logLevel:2 message:@"Handle WiFi/BT Coex change LPSC Beacon Offload %s, LPSC Scan Offload: %s", v25, v25];
    [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateLPSCBeaconOffload:v24 andScanOffload:v24];
  }

  v26 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] get2GHzSub15msNonSCOConnected];
  if (byte_1002B8142 != v26)
  {
    v27 = v26;
    [WCM_Logging logLevel:2 message:@"Handle WiFi/BT Coex change sending Wifi controller sub15msNonSCO traffic status to %d", v26];
    [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateWiFieSCOActiveStatus:v27];
    byte_1002B8142 = v27;
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:2 message:@"handleWiFiBTCoexChange updating 3way RC2 grant status for WiFi/BT"];
    [(WCM_PolicyManager *)self updateBTRCU2TimingArray];
    [(WCM_PolicyManager *)self updateWiFiRCU2TimingArray];
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [(WCM_PolicyManager *)self handleWiFiRCU1Change];
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v28 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] getNumberOfSpatialStreamOnAccessPoint];
    if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] isAWDLInProgress])
    {
      [WCM_Logging logLevel:3 message:@"Defer WiFi antenna fallback wifiAWDLInProgress(%d)", 1];
      return;
    }

    if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState]&& ((v6 & 0xFFFFFFFE) == 2 || v28 == 1))
    {
      [WCM_Logging logLevel:3 message:@"phyMode(%d) numNSSOnAP(%d)", v6, v28];
      v29 = 1;
    }

    else
    {
      v29 = 0;
    }

    [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] disableAntennaSharedByBluetooth:v29 andReassociate:0];
  }

  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState])
  {
    *&v50 = v3;
    *(&v50 + 1) = v5;
    v30 = *(&v47 + 1);
    *&v51 = v4;
    *(&v51 + 1) = *(&v47 + 1);
    v31 = v49;
    v32 = v48;
    v33 = v47;
    *&v52 = v47;
    *(&v52 + 1) = v48;
    v34 = v4;
    v35 = v5;
    v36 = v3;
    v53 = v49;
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"updateBTConnectedDevices with btPower=off"];
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  if (unk_1002B8148 != v36 || xmmword_1002B8150 != __PAIR128__(v34, v35) || qword_1002B8160 != v30 || unk_1002B8168 != v33 || xmmword_1002B8170 != __PAIR128__(v31, v32))
  {
    [WCM_Logging logLevel:2 message:@"updateBTConnectedDevices with numA2DP=%lu, numLLA=%lu, numHID=%lu, numSCO=%lu, numeSCO=%lu, numLE=%lu, numLEA=%lu", v3, v5, v4, *(&v47 + 1), v47, v48, v49];
    [(WCM_PolicyManager *)self handleBTCoexConnectedDevicesEvent_numA2DP:v3 numLLA:v5 numHID:v4 numSCO:*(&v47 + 1) numeSCO:v47 numLE:v48 numLEA:v49];
    [+[WCM_UCMClientManager WCM_UCMClientManagerSingleton](WCM_UCMClientManager "WCM_UCMClientManagerSingleton")];
    unk_1002B8148 = v50;
    *(&xmmword_1002B8150 + 8) = v51;
    unk_1002B8168 = v52;
    *(&xmmword_1002B8170 + 1) = v53;
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [(WCM_CtrXPCClient *)[(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] threadClient] updateWiFiBand:v46];
    [(WCM_CtrXPCClient *)[(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] threadClient] updateWiFiChannel:[(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiChannel]];
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v37 = dword_1002B8180;
    if (v37 != [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiChannel]|| (v38 = dword_1002B8184, v38 != [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] channelBandwidthMHz]) || (v39 = dword_1002B8188, v39 != [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] channelCenterFreqMHz]))
    {
      [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateWiFiChannelInfo:[(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiChannel] bandwidth:[(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] channelBandwidthMHz] regBand:[(WCM_PolicyManager *)self parseCenterFreqtoUNIIBand:[(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] channelCenterFreqMHz]]];
      dword_1002B8180 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiChannel];
      dword_1002B8184 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] channelBandwidthMHz];
      dword_1002B8188 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] channelCenterFreqMHz];
    }
  }
}

- (void)updateWiFiRCU1ULOFDMAStatus
{
  [WCM_Logging logLevel:2 message:@"Handle WiFi NR UL_OFDMA Coex change"];
  if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState])
  {
    v3 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    v4 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState];
    v5 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] didWiFiDeviceReset];
    if (v4 >= 4)
    {
      v6 = "INVALID_STATE!!!";
      if (v4 == 4)
      {
        v6 = "ASSOCIATED_6G";
      }
    }

    else
    {
      v6 = off_100241CB8[v4];
    }

    [WCM_Logging logLevel:2 message:@"WiFiState(%s)", v6];
    v7 = [(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] mRCU1PowerOn];
    v8 = [(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] mRCU1ChannelNum];
    v9 = v8 << 16;
    [WCM_Logging logLevel:2 message:@"NR State : Power:(%d) ChannelNo:(%d)", v7, v8];
    v10 = v7 && v9 == 327680;
    if (v4 != 3)
    {
      v10 = 0;
    }

    if (v3)
    {
      v11 = (v4 - 3 < 2) & v7;
    }

    else
    {
      v11 = v10;
    }

    if (byte_1002B818D != v11 || v5)
    {
      [WCM_Logging logLevel:2 message:@"WiFi/RCU1 UL OFDMA disable state change prev (%d) current (%d) wifiReset (%d)", byte_1002B818D, v11, v5];
      byte_1002B818D = v11;
      v12 = [(WCM_PolicyManager *)self wifiController];

      [(WCM_WiFiController *)v12 updateWiFiRCU1ULOFDMAstate:v11];
    }
  }

  else
  {
    byte_1002B818D = 0;
  }
}

- (void)updateGpsbandsInfoForBB
{
  v3 = [(WCM_PolicyManager *)self cellularController];
  if (![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"AntennaTuningForGpsBB20"])
  {
    return;
  }

  v4 = WRM_IPTelephonyController;
  LOBYTE(v5) = 4;
  [WCM_Logging logLevel:4 message:@"BB20: updateGpsbandsInfoForBB: Count =  %d\n", [(NSMutableArray *)[(WCM_PolicyManager *)self gpsBandInfoList] count]];
  if ([(NSMutableArray *)[(WCM_PolicyManager *)self gpsBandInfoList] count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [(WCM_PolicyManager *)self gpsBandInfoList];
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v22 = v3;
      v9 = 0;
      v23 = 0;
      v10 = 0;
      v11 = *v27;
      v5 = 4;
      v12 = 4;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v24 = 0u;
          v25 = 0u;
          [v14 getValue:&v24];
          if (v24 == 2)
          {
            v10 |= 2u;
            if (DWORD2(v25) == 512)
            {
              v16 = 2;
            }

            else
            {
              v16 = v5;
            }

            v23 = 1;
            if (DWORD2(v25) == 256)
            {
              v5 = 1;
            }

            else
            {
              v5 = v16;
            }
          }

          else if (v24 == 1)
          {
            v10 |= 1u;
            if (DWORD2(v25) == 512)
            {
              v15 = 2;
            }

            else
            {
              v15 = v12;
            }

            if (DWORD2(v25) == 256)
            {
              v12 = 1;
            }

            else
            {
              v12 = v15;
            }

            v9 = 1;
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
      v17 = v12;
      v3 = v22;
      v4 = WRM_IPTelephonyController;
      v18 = v23;
      goto LABEL_29;
    }

    v9 = 0;
    v18 = 0;
    LOBYTE(v10) = 0;
    LOBYTE(v5) = 4;
  }

  else
  {
    v9 = 0;
    v18 = 0;
    LOBYTE(v10) = 0;
  }

  v17 = 4;
LABEL_29:
  v19 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] getNum2GHzAclA2DPDevices]!= 0;
  [&v4[98] logLevel:1 message:{@"BB20: updateGpsbandsInfoForBB: L1enabled = %d, L5Enabled = %d, btA2DPEnabled = %d, l5Level = %d, l1Level = %d\n", v9 & 1, v18 & 1, v19, v5, v17}];
  [(WCM_CellularController *)v3 setGpsBandInfoToBB:v9 & 1 l5Enabled:v18 & 1 btA2DPEnabled:v19 l5Level:v5];
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"CoexBBUnifiedSensorInfoSupport"])
  {
    v20 = [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"AntennaTunningForGpsL1Level"];
    v21 = 16 * v17;
    if (!v20)
    {
      v21 = 0;
    }

    [(WCM_CellularController *)v3 sendBBCoexSensorMessage:0 band:v10 usecase:v21 & 0xF0 | v5 & 0xFu];
  }
}

- (void)configureWifiAntennaSelectionForCoex
{
  [WCM_Logging logLevel:2 message:@"YYDebug_ configureWifiAntennaSelectionForCoex: wifi state = %d, ", [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState]];
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"AntennaSelectionCoex"]|| ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"AntennaSelectionV2Coex"]|| [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"AntennaSelectionV1_1Coex"]) && ![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
  {

    [(WCM_PolicyManager *)self updateWifiAntennaSelectionV1V2Configs];
  }

  else if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"AntennaSelectionV2Coex"]&& [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
  {
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"PencilCoexSupport"])
    {
      if (self->_pencilCoexActive)
      {
        v3 = [(WCM_PolicyManager *)self getWifiAntennaBitmapForPencilCoexByPlatform];
        v4 = v3 | 0x800;
        v16 = v3 | 0x1800;
        v5 = v3 | 0x2800;
        v6 = v3 | 0x3800;
        v7 = v3 | 0x4800;
        v8 = v3 | 0x5800;
        v9 = v3 | 0x6800;
        v10 = v3 | 0x7800;
      }

      else
      {
        v4 = 0;
        v16 = 4096;
        v5 = 0x2000;
        v6 = 12288;
        v7 = 0x4000;
        v8 = 20480;
        v9 = 24576;
        v10 = 28672;
      }

      if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState])
      {
        if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState]== 1)
        {
          v11 = "ENABLED";
        }

        else if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState]== 2)
        {
          v11 = "ASSOCIATED_2G";
        }

        else if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState]== 3)
        {
          v11 = "ASSOCIATED_5G";
        }

        else
        {
          v12 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState];
          v11 = "INVALID_STATE!!!";
          if (v12 == 4)
          {
            v11 = "ASSOCIATED_6G";
          }
        }
      }

      else
      {
        v11 = "DISABLED";
      }

      v15 = v5;
      [WCM_Logging logLevel:1 message:@"YYDebug_ configureAntennaForCoex: with WiFi State (%s), Pencil coex antenna selection for band 2G, bitmaps 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x", v11, v4, v16, v5, v6, v7, v8, v9, v10];
    }

    else
    {
      v4 = 0;
      v10 = 28672;
      v9 = 24576;
      v8 = 20480;
      v7 = 0x4000;
      v6 = 12288;
      v15 = 0x2000;
      v16 = 4096;
    }

    v25 = 0;
    v24 = 4096;
    v23 = 0x2000;
    v22 = 12288;
    v21 = 0x4000;
    v20 = 20480;
    v19 = 24576;
    v18 = 28672;
    v17 = 0;
    [(WCM_PolicyManager *)self getUpdatedWifiAntennaSelectionEnhConfigsWithbmWifiEnhAntTx000:&v25 bmWiFiEnhAntTx001:&v24 bmWiFiEnhAntTx010:&v23 bmWiFiEnhAntTx011:&v22 bmWiFiEnhAntTx100:&v21 bmWiFiEnhAntTx101:&v20 bmWiFiEnhAntTx110:&v19 bmWiFiEnhAntTx111:&v18 bmWiFiBand:&v17];
    if (self->_pencilCoexActive)
    {
      v25 = 0;
      v24 = 4096;
      v23 = 0x2000;
      v22 = 12288;
      v21 = 0x4000;
      v20 = 20480;
      v19 = 24576;
      v18 = 28672;
      v40[0] = [NSNumber numberWithUnsignedShort:2];
      v40[1] = [NSNumber numberWithUnsignedShort:v25];
      v40[2] = [NSNumber numberWithUnsignedShort:v24];
      v40[3] = [NSNumber numberWithUnsignedShort:v23];
      v40[4] = [NSNumber numberWithUnsignedShort:v22];
      v40[5] = [NSNumber numberWithUnsignedShort:v21];
      v40[6] = [NSNumber numberWithUnsignedShort:v20];
      v40[7] = [NSNumber numberWithUnsignedShort:v19];
      v40[8] = [NSNumber numberWithUnsignedShort:v18];
      [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateAntennaSelectionWiFiEnh5G:[NSArray arrayWithObjects:v40 count:9]];
      v39[0] = [NSNumber numberWithUnsignedShort:3];
      v39[1] = [NSNumber numberWithUnsignedShort:v25];
      v39[2] = [NSNumber numberWithUnsignedShort:v24];
      v39[3] = [NSNumber numberWithUnsignedShort:v23];
      v39[4] = [NSNumber numberWithUnsignedShort:v22];
      v39[5] = [NSNumber numberWithUnsignedShort:v21];
      v39[6] = [NSNumber numberWithUnsignedShort:v20];
      v39[7] = [NSNumber numberWithUnsignedShort:v19];
      v39[8] = [NSNumber numberWithUnsignedShort:v18];
      [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateAntennaSelectionWiFiEnh6G:[NSArray arrayWithObjects:v39 count:9]];
      v38[0] = [NSNumber numberWithUnsignedShort:1];
      v38[1] = [NSNumber numberWithUnsignedShort:v4];
      v38[2] = [NSNumber numberWithUnsignedShort:v16];
      v38[3] = [NSNumber numberWithUnsignedShort:v15];
      v38[4] = [NSNumber numberWithUnsignedShort:v6];
      v38[5] = [NSNumber numberWithUnsignedShort:v7];
      v38[6] = [NSNumber numberWithUnsignedShort:v8];
      v38[7] = [NSNumber numberWithUnsignedShort:v9];
      v38[8] = [NSNumber numberWithUnsignedShort:v10];
      v13 = v38;
LABEL_31:
      [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateAntennaSelectionWiFiEnh2G:[NSArray arrayWithObjects:v13 count:9]];
      return;
    }

    if (v17 <= 3u)
    {
      if (v17 <= 1u)
      {
        if (v17)
        {
          v34[0] = [NSNumber numberWithUnsignedShort:1];
          v34[1] = [NSNumber numberWithUnsignedShort:v25];
          v34[2] = [NSNumber numberWithUnsignedShort:v24];
          v34[3] = [NSNumber numberWithUnsignedShort:v23];
          v34[4] = [NSNumber numberWithUnsignedShort:v22];
          v34[5] = [NSNumber numberWithUnsignedShort:v21];
          v34[6] = [NSNumber numberWithUnsignedShort:v20];
          v34[7] = [NSNumber numberWithUnsignedShort:v19];
          v34[8] = [NSNumber numberWithUnsignedShort:v18];
          [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateAntennaSelectionWiFiEnh2G:[NSArray arrayWithObjects:v34 count:9]];
          v25 = 0;
          v24 = 4096;
          v23 = 0x2000;
          v22 = 12288;
          v21 = 0x4000;
          v20 = 20480;
          v19 = 24576;
          v18 = 28672;
          v33[0] = [NSNumber numberWithUnsignedShort:2];
          v33[1] = [NSNumber numberWithUnsignedShort:v25];
          v33[2] = [NSNumber numberWithUnsignedShort:v24];
          v33[3] = [NSNumber numberWithUnsignedShort:v23];
          v33[4] = [NSNumber numberWithUnsignedShort:v22];
          v33[5] = [NSNumber numberWithUnsignedShort:v21];
          v33[6] = [NSNumber numberWithUnsignedShort:v20];
          v33[7] = [NSNumber numberWithUnsignedShort:v19];
          v33[8] = [NSNumber numberWithUnsignedShort:v18];
          [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateAntennaSelectionWiFiEnh2G:[NSArray arrayWithObjects:v33 count:9]];
          v32[0] = [NSNumber numberWithUnsignedShort:3];
          v32[1] = [NSNumber numberWithUnsignedShort:v25];
          v32[2] = [NSNumber numberWithUnsignedShort:v24];
          v32[3] = [NSNumber numberWithUnsignedShort:v23];
          v32[4] = [NSNumber numberWithUnsignedShort:v22];
          v32[5] = [NSNumber numberWithUnsignedShort:v21];
          v32[6] = [NSNumber numberWithUnsignedShort:v20];
          v32[7] = [NSNumber numberWithUnsignedShort:v19];
          v32[8] = [NSNumber numberWithUnsignedShort:v18];
          v13 = v32;
          goto LABEL_31;
        }

        v25 = 0;
        v24 = 4096;
        v23 = 0x2000;
        v22 = 12288;
        v21 = 0x4000;
        v20 = 20480;
        v19 = 24576;
        v18 = 28672;
        v37[0] = [NSNumber numberWithUnsignedShort:1];
        v37[1] = [NSNumber numberWithUnsignedShort:v25];
        v37[2] = [NSNumber numberWithUnsignedShort:v24];
        v37[3] = [NSNumber numberWithUnsignedShort:v23];
        v37[4] = [NSNumber numberWithUnsignedShort:v22];
        v37[5] = [NSNumber numberWithUnsignedShort:v21];
        v37[6] = [NSNumber numberWithUnsignedShort:v20];
        v37[7] = [NSNumber numberWithUnsignedShort:v19];
        v37[8] = [NSNumber numberWithUnsignedShort:v18];
        [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateAntennaSelectionWiFiEnh2G:[NSArray arrayWithObjects:v37 count:9]];
        v36[0] = [NSNumber numberWithUnsignedShort:2];
        v36[1] = [NSNumber numberWithUnsignedShort:v25];
        v36[2] = [NSNumber numberWithUnsignedShort:v24];
        v36[3] = [NSNumber numberWithUnsignedShort:v23];
        v36[4] = [NSNumber numberWithUnsignedShort:v22];
        v36[5] = [NSNumber numberWithUnsignedShort:v21];
        v36[6] = [NSNumber numberWithUnsignedShort:v20];
        v36[7] = [NSNumber numberWithUnsignedShort:v19];
        v36[8] = [NSNumber numberWithUnsignedShort:v18];
        [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateAntennaSelectionWiFiEnh5G:[NSArray arrayWithObjects:v36 count:9]];
        v35[0] = [NSNumber numberWithUnsignedShort:3];
        v35[1] = [NSNumber numberWithUnsignedShort:v25];
        v35[2] = [NSNumber numberWithUnsignedShort:v24];
        v35[3] = [NSNumber numberWithUnsignedShort:v23];
        v35[4] = [NSNumber numberWithUnsignedShort:v22];
        v35[5] = [NSNumber numberWithUnsignedShort:v21];
        v35[6] = [NSNumber numberWithUnsignedShort:v20];
        v35[7] = [NSNumber numberWithUnsignedShort:v19];
        v35[8] = [NSNumber numberWithUnsignedShort:v18];
        v14 = v35;
        goto LABEL_38;
      }

      if (v17 == 2)
      {
        v31[0] = [NSNumber numberWithUnsignedShort:2];
        v31[1] = [NSNumber numberWithUnsignedShort:v25];
        v31[2] = [NSNumber numberWithUnsignedShort:v24];
        v31[3] = [NSNumber numberWithUnsignedShort:v23];
        v31[4] = [NSNumber numberWithUnsignedShort:v22];
        v31[5] = [NSNumber numberWithUnsignedShort:v21];
        v31[6] = [NSNumber numberWithUnsignedShort:v20];
        v31[7] = [NSNumber numberWithUnsignedShort:v19];
        v31[8] = [NSNumber numberWithUnsignedShort:v18];
        [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateAntennaSelectionWiFiEnh5G:[NSArray arrayWithObjects:v31 count:9]];
        v25 = 0;
        v24 = 4096;
        v23 = 0x2000;
        v22 = 12288;
        v21 = 0x4000;
        v20 = 20480;
        v19 = 24576;
        v18 = 28672;
        v30[0] = [NSNumber numberWithUnsignedShort:1];
        v30[1] = [NSNumber numberWithUnsignedShort:v25];
        v30[2] = [NSNumber numberWithUnsignedShort:v24];
        v30[3] = [NSNumber numberWithUnsignedShort:v23];
        v30[4] = [NSNumber numberWithUnsignedShort:v22];
        v30[5] = [NSNumber numberWithUnsignedShort:v21];
        v30[6] = [NSNumber numberWithUnsignedShort:v20];
        v30[7] = [NSNumber numberWithUnsignedShort:v19];
        v30[8] = [NSNumber numberWithUnsignedShort:v18];
        [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateAntennaSelectionWiFiEnh2G:[NSArray arrayWithObjects:v30 count:9]];
        v29[0] = [NSNumber numberWithUnsignedShort:3];
        v29[1] = [NSNumber numberWithUnsignedShort:v25];
        v29[2] = [NSNumber numberWithUnsignedShort:v24];
        v29[3] = [NSNumber numberWithUnsignedShort:v23];
        v29[4] = [NSNumber numberWithUnsignedShort:v22];
        v29[5] = [NSNumber numberWithUnsignedShort:v21];
        v29[6] = [NSNumber numberWithUnsignedShort:v20];
        v29[7] = [NSNumber numberWithUnsignedShort:v19];
        v29[8] = [NSNumber numberWithUnsignedShort:v18];
        v14 = v29;
LABEL_38:
        [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateAntennaSelectionWiFiEnh6G:[NSArray arrayWithObjects:v14 count:9]];
        return;
      }

      v28[0] = [NSNumber numberWithUnsignedShort:3];
      v28[1] = [NSNumber numberWithUnsignedShort:v25];
      v28[2] = [NSNumber numberWithUnsignedShort:v24];
      v28[3] = [NSNumber numberWithUnsignedShort:v23];
      v28[4] = [NSNumber numberWithUnsignedShort:v22];
      v28[5] = [NSNumber numberWithUnsignedShort:v21];
      v28[6] = [NSNumber numberWithUnsignedShort:v20];
      v28[7] = [NSNumber numberWithUnsignedShort:v19];
      v28[8] = [NSNumber numberWithUnsignedShort:v18];
      [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateAntennaSelectionWiFiEnh6G:[NSArray arrayWithObjects:v28 count:9]];
      v25 = 0;
      v24 = 4096;
      v23 = 0x2000;
      v22 = 12288;
      v21 = 0x4000;
      v20 = 20480;
      v19 = 24576;
      v18 = 28672;
      v27[0] = [NSNumber numberWithUnsignedShort:1];
      v27[1] = [NSNumber numberWithUnsignedShort:v25];
      v27[2] = [NSNumber numberWithUnsignedShort:v24];
      v27[3] = [NSNumber numberWithUnsignedShort:v23];
      v27[4] = [NSNumber numberWithUnsignedShort:v22];
      v27[5] = [NSNumber numberWithUnsignedShort:v21];
      v27[6] = [NSNumber numberWithUnsignedShort:v20];
      v27[7] = [NSNumber numberWithUnsignedShort:v19];
      v27[8] = [NSNumber numberWithUnsignedShort:v18];
      [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateAntennaSelectionWiFiEnh2G:[NSArray arrayWithObjects:v27 count:9]];
      v26[0] = [NSNumber numberWithUnsignedShort:2];
      v26[1] = [NSNumber numberWithUnsignedShort:v25];
      v26[2] = [NSNumber numberWithUnsignedShort:v24];
      v26[3] = [NSNumber numberWithUnsignedShort:v23];
      v26[4] = [NSNumber numberWithUnsignedShort:v22];
      v26[5] = [NSNumber numberWithUnsignedShort:v21];
      v26[6] = [NSNumber numberWithUnsignedShort:v20];
      v26[7] = [NSNumber numberWithUnsignedShort:v19];
      v26[8] = [NSNumber numberWithUnsignedShort:v18];
      [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateAntennaSelectionWiFiEnh5G:[NSArray arrayWithObjects:v26 count:9]];
    }
  }

  else
  {

    [WCM_Logging logLevel:2 message:@"YYDebug_ WiFi antenna selection is not supported"];
  }
}

- (void)updateCellTxPowerLimit
{
  v3 = [(WCM_PolicyManager *)self platformManager];
  v4 = [(WCM_PolicyManager *)self cellularController];
  LODWORD(v5) = [(NSNumber *)[(WCM_PlatformManager *)v3 wcmCellularWCI2ModeLTEMaxTxPowerHigh] intValue];
  if ([(WCM_PlatformManager *)v3 wcmWiFiCellCoexIssueTable])
  {
    v5 = v5;
    if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState]< 2)
    {
      goto LABEL_27;
    }

    [(WCM_CellularController *)v4 dlCenterFreq];
    if (v6 == 0.0)
    {
      goto LABEL_27;
    }

    [(WCM_CellularController *)v4 dlBandwidth];
    if (v7 == 0.0)
    {
      goto LABEL_27;
    }

    [(WCM_CellularController *)v4 ulCenterFreq];
    if (v8 != 0.0)
    {
      [(WCM_CellularController *)v4 ulBandwidth];
      if (v9 != 0.0)
      {
        v10 = [(WCM_CellularController *)v4 bandInfoType];
        [(WCM_CellularController *)v4 dlCenterFreq];
        v37 = v11;
        [(WCM_CellularController *)v4 dlBandwidth];
        v13 = v12 * 0.5;
        [(WCM_CellularController *)v4 dlCenterFreq];
        v15 = v14;
        [(WCM_CellularController *)v4 dlBandwidth];
        v17 = v16 * 0.5;
        [(WCM_CellularController *)v4 ulCenterFreq];
        v19 = v18;
        [(WCM_CellularController *)v4 ulBandwidth];
        v21 = v20;
        [(WCM_CellularController *)v4 ulCenterFreq];
        v23 = v22;
        [(WCM_CellularController *)v4 ulBandwidth];
        v25 = v24;
        if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"EnableULCA"])
        {
          v26 = v19 - v21 * 0.5;
          v27 = v23 + v25 * 0.5;
        }

        else
        {
          [(WCM_CellularController *)v4 getCombinedUplinkFreqRange];
          v26 = v28;
          v27 = v28 + v29;
        }

        v30 = v37 - v13;
        v38 = 0;
        v31 = [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"];
        v32 = [(WCM_PlatformManager *)v3 wcmWiFiCellCoexIssueTable];
        v33 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiChannel];
        if (v31)
        {
          v34 = [(WCM_WiFiCellCoexIssueBandTable *)v32 findWiFiAntennaOrCellTxPowerConstraintWiFiEnhCoexIssueByCellBandInfoType:v10 cellDlLowFreq:v33 cellDlHighFreq:[(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] channelCenterFreqMHz] cellUlLowFreq:[(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] channelBandwidthMHz] cellUlHighFreq:[(WCM_PolicyManager *)self gpsRadioActive] wifiChannel:&v38 + 1 wifiCenterFreq:v30 wifiBandwidth:v15 + v17 gpsRadioActive:v26 wifiAntennaConstraint:v27 cellTxPowerConstraint:&v38];
        }

        else
        {
          v34 = [(WCM_WiFiCellCoexIssueBandTable *)v32 findWiFiAntennaOrCellTxPowerConstraintCoexIssueByCellBandInfoType:v10 cellDlLowFreq:v33 cellDlHighFreq:[(WCM_PolicyManager *)self gpsRadioActive] cellUlLowFreq:&v38 + 1 cellUlHighFreq:&v38 wifiChannel:v30 gpsRadioActive:v15 + v17 wifiAntennaConstraint:v26 cellTxPowerConstraint:v27];
        }

        v35 = v34;
        if (!v34 || v38 != 1)
        {
          goto LABEL_27;
        }

        if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"CellularPowerLimiting"]&& [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiChannel]== 13 && ![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
        {
          v36 = @"on channel 13 apply Cell Tx power limit to %lld dBm";
        }

        else
        {
          if (![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"CellularPowerLimiting"]|| ![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
          {
            goto LABEL_26;
          }

          v36 = @"WiFiEnh_: Apply Cell Tx power limit to %lld dBm";
        }

        v5 = [v35 cellTxPowerLimit];
        [WCM_Logging logLevel:4 message:v36, v5];
LABEL_26:
        [WCM_Logging logLevel:3 message:@"apply Cell Tx power limit to %lld dBm", v5];
LABEL_27:
        [(WCM_CellularController *)v4 updateControllerTxPower:v5];
      }
    }
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"Platform doesn't have wcmWiFiCellCoexIssueTable initialized"];
  }
}

- (void)evaluateULCARestrictions
{
  v3 = [(WCM_PolicyManager *)self platformManager];
  v4 = [(WCM_PolicyManager *)self cellularController];
  v5 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiChannel];
  v63 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] channelCenterFreqMHz];
  v62 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] channelBandwidthMHz];
  if (v4)
  {
    v6 = [(WCM_CellularController *)v4 getActiveULCAConfig];
    if (v6)
    {
      v7 = v6;
      [(WCM_CellularController *)v4 bandInfoType];
      *&v7->var3 = 0;
      v7->var5 = 0;
      v7->var9 = 0;
      v8 = WRM_IPTelephonyController;
      if (v7->var1)
      {
        v9 = 0;
        v64 = 0;
        v58 = 0;
        p_var5 = &v7->var0[0].var5;
        v59 = 99;
        v60 = 0;
        v61 = v5;
        while (1)
        {
          v11 = *(p_var5 - 3);
          v12 = *(p_var5 - 2);
          v13 = *(p_var5 - 5);
          v14 = *(p_var5 - 4);
          v15 = v11 - v12 * 0.5;
          v16 = v11 + v12 * 0.5;
          v17 = v13 - v14 * 0.5;
          v18 = v13 + v14 * 0.5;
          v65 = 0;
          [&v8[98] logLevel:2 message:{@"evaluateULCARestrictions: Carrier %d, UL (%f, %f), BandInfoType(%d), CarrierId(%d)", v9, *&v17, *&v18, *(p_var5 + 6), *(p_var5 - 2)}];
          *(p_var5 + 28) = 0;
          v19 = *(p_var5 + 6);
          v20 = [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"];
          v21 = [(WCM_PlatformManager *)v3 wcmWiFiCellCoexIssueTable];
          v22 = [(WCM_PolicyManager *)self gpsRadioActive];
          if (v20)
          {
            v23 = [(WCM_WiFiCellCoexIssueBandTable *)v21 findWiFiAntennaOrCellTxPowerConstraintWiFiEnhCoexIssueByCellBandInfoType:v19 cellDlLowFreq:v5 cellDlHighFreq:v63 cellUlLowFreq:v62 cellUlHighFreq:v22 wifiChannel:&v65 + 1 wifiCenterFreq:v15 wifiBandwidth:v16 gpsRadioActive:v17 wifiAntennaConstraint:v18 cellTxPowerConstraint:&v65];
          }

          else
          {
            v23 = [(WCM_WiFiCellCoexIssueBandTable *)v21 findWiFiAntennaOrCellTxPowerConstraintCoexIssueByCellBandInfoType:v19 cellDlLowFreq:v5 cellDlHighFreq:v22 cellUlLowFreq:&v65 + 1 cellUlHighFreq:&v65 wifiChannel:v15 gpsRadioActive:v16 wifiAntennaConstraint:v17 cellTxPowerConstraint:v18];
          }

          v24 = v23;
          *p_var5 = v23;
          if (!v23)
          {
            [&v8[98] logLevel:2 message:{@"evaluateULCARestrictions: Carrier %d has no Coex issue for CC1(Cell Victim), ULCA Priority(%d)", v9, objc_msgSend(0, "ulcaPriority")}];
            goto LABEL_14;
          }

          if (!v7->var10)
          {
            goto LABEL_12;
          }

          v25 = [v23 ulcaPriority];
          if (v25 < [v64 ulcaPriority])
          {
            break;
          }

LABEL_14:
          if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiWCI2BitmapV2Enabled"])
          {
            v27 = [(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v3 wcmWiFiCellCoexIssueTable] findWiFiVictimCoexIssueByCellBandInfoType:v19 cellDlLowFreq:v15 cellDlHighFreq:v16 cellUlLowFreq:v17 cellUlHighFreq:v18];
            p_var5[1] = v27;
            if (v27)
            {
              if ([v27 ulcaPriorityCCWiFi] && v59 > objc_msgSend(p_var5[1], "ulcaPriorityCCWiFi"))
              {
                v59 = [p_var5[1] ulcaPriorityCCWiFi];
                v7->var3 = v9;
                v28 = v8 + 98;
                v8 = WRM_IPTelephonyController;
                v5 = v61;
                -[__objc2_class logLevel:message:](v28, "logLevel:message:", 2, @"evaluateULCARestrictions: Carrier %d set as critical carrier(CC2, WiFi Victim), UL (%f, %f), BandInfoType(%d), CarrierId(%d), ULCA Priority(%d)", v9, *&v17, *&v18, *(p_var5 + 6), *(p_var5 - 2), [*p_var5 ulcaPriority]);
                v58 = 1;
              }
            }

            else
            {
              [&v8[98] logLevel:2 message:{@"evaluateULCARestrictions: Carrier %d has no Coex issue for CC2 (WiFi Victim), ULCA Priority(%d)", v9, objc_msgSend(*p_var5, "ulcaPriority")}];
            }
          }

          if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFi5GHzType7NR79AntBlocking"])
          {
            v29 = [(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v3 wcmWiFiCellCoexIssueTable] isNR79FoundForCellUlLowFreq:v17 cellUlHighFreq:v18];
            *(p_var5 + 28) = v29;
            [&v8[98] logLevel:2 message:{@"DLDebug_ CC2UnitTest: ulcaConfig->scell_config[%d].nr79Found=%d", v9, v29}];
            var4 = v7->var4;
            if (*(p_var5 + 28) == 1 && v18 > v7->var0[var4].var0 + v7->var0[var4].var1 * 0.5)
            {
              v7->var4 = v9;
              var4 = v9;
            }

            [&v8[98] logLevel:2 message:{@"DLDebug_ CC2UnitTest: for ulcaConfig->scell_config[%d], ulcaConfig->criticalCarrieridxNR79=%d", v9, var4}];
          }

          if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"Type72GWiFiSupport"])
          {
            v31 = [(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v3 wcmWiFiCellCoexIssueTable] isLTEB7FoundForCellDlLowFreq:v15 cellDlHighFreq:v16 cellUlLowFreq:v17 cellUlHighFreq:v18];
            *(p_var5 + 29) = v31;
            [&v8[98] logLevel:4 message:{@"TYPE7_2GWIFI_SUPPORT_ : ulcaConfig->scell_config[%d].lteB7Found=%d", v9, v31}];
            var5 = v7->var5;
            if (*(p_var5 + 29) == 1)
            {
              v33 = &v7->var0[var5];
              if (v12 > v33->var3 && v33->var10)
              {
                v7->var5 = v9;
                var5 = v9;
              }
            }

            [&v8[98] logLevel:4 message:{@"TYPE7_2GWIFI_SUPPORT_ for ulcaConfig->scell_config[%d], ulcaConfig->criticalCarrieridxLTEB7=%d", v9, var5}];
          }

          ++v9;
          p_var5 += 9;
          if (v9 >= v7->var1)
          {
            var3 = v7->var3;
            v35 = v7->var4;
            v36 = v7->var5;
            v37 = v58;
            v38 = v60;
            goto LABEL_34;
          }
        }

        v24 = *p_var5;
LABEL_12:
        v7->var2 = v9;
        v60 = 1;
        v7->var10 = 1;
        v26 = v8 + 98;
        v8 = WRM_IPTelephonyController;
        -[__objc2_class logLevel:message:](v26, "logLevel:message:", 2, @"evaluateULCARestrictions: Carrier %d set as critical carrier(CC1, Cell Victim), UL (%f, %f), BandInfoType(%d), CarrierId(%d), ULCA Priority(%d)", v9, *&v17, *&v18, *(p_var5 + 6), *(p_var5 - 2), [v24 ulcaPriority]);
        v64 = v24;
        v5 = v61;
        goto LABEL_14;
      }

      v36 = 0;
      v35 = 0;
      var3 = 0;
      v37 = 0;
      v38 = 0;
LABEL_34:
      v39 = &v7->var0[var3];
      v40 = *&v39->var2;
      *&v7->var6.var8 = *&v39->var8;
      *&v7->var6.var6 = *&v39->var6;
      *&v7->var6.var0 = *&v39->var0;
      v41 = *&v39->var4;
      *&v7->var6.var2 = v40;
      *&v7->var6.var4 = v41;
      v42 = &v7->var0[v35];
      *&v7->var7.var0 = *&v42->var0;
      v43 = *&v42->var6;
      v44 = *&v42->var8;
      v45 = *&v42->var2;
      *&v7->var7.var4 = *&v42->var4;
      *&v7->var7.var2 = v45;
      *&v7->var7.var8 = v44;
      *&v7->var7.var6 = v43;
      v46 = &v7->var0[v36];
      *&v7->var8.var0 = *&v46->var0;
      v47 = *&v46->var2;
      v48 = *&v46->var4;
      v49 = *&v46->var6;
      *&v7->var8.var8 = *&v46->var8;
      *&v7->var8.var4 = v48;
      *&v7->var8.var6 = v49;
      *&v7->var8.var2 = v47;
      var2 = v7->var2;
      if (var2 == -1)
      {
        [&v8[98] logLevel:3 message:{@"evaluateULCARestrictions: Done! -ULCA NO Coex issue to report, Critical Carrier(CC1) not set", v52, v54, v56}];
      }

      else
      {
        if ((v38 & 1) == 0)
        {
          [&v8[98] logLevel:2 message:@"evaluateULCARestrictions: Critical Carrier CC1 not found. Set CC1 to Primary Carrier (PCC)"];
          var2 = v7->var2;
        }

        [&v8[98] logLevel:2 message:{@"evaluateULCARestrictions: Done! - ULCA Critical Carrier(CC1) Coex Priority = %d, Carrier Index = %d, BandInfoType = %d", objc_msgSend(v7->var0[var2].var5, "ulcaPriority"), v7->var2, v7->var0[v7->var2].var8}];
      }

      if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiWCI2BitmapV2Enabled"])
      {
        v51 = v7->var3;
        if (v51 == -1)
        {
          [&v8[98] logLevel:2 message:{@"evaluateULCARestrictions: Done! -ULCA NO Coex issue to report, Critical Carrier(CC2) not set", v53, v55, v57}];
        }

        else
        {
          if ((v37 & 1) == 0)
          {
            [&v8[98] logLevel:2 message:@"evaluateULCARestrictions: Critical Carrier CC2 not found. Set CC2 to Primary Carrier (PCC)"];
            v51 = v7->var3;
          }

          [&v8[98] logLevel:2 message:{@"evaluateULCARestrictions: Done! - ULCA Critical Carrier(CC2) Coex Priority = %d, Carrier Index = %d, BandInfoType = %d", objc_msgSend(v7->var0[v51].var6, "ulcaPriorityCCWiFi"), v7->var3, v7->var0[v7->var3].var8}];
        }
      }
    }
  }
}

- (void)handleCellularNetworkUpdate
{
  v3 = [(WCM_PolicyManager *)self cellularCoexBand];
  v4 = [(WCM_PolicyManager *)self cellularController];
  v5 = [(WCM_PolicyManager *)self platformManager];
  v6 = [(WCM_PolicyManager *)self wifiController];
  v7 = [(WCM_CellularController *)v4 getActiveULCAConfig];
  v118 = v3 != 7;
  v136 = 0;
  v137 = 0;
  v114 = [NSArray arrayWithObjects:&off_100271328, &off_100271340, &off_100271358, &off_100271370, &off_100271388, &off_1002713A0, &off_1002713B8, 0];
  v135 = 0;
  if ((v3 - 1) >= 2)
  {
    v8 = 255;
  }

  else
  {
    v8 = 0;
  }

  [(WCM_PolicyManager *)self setBtPreferredRole:v8];
  v9 = WRM_IPTelephonyController;
  [WCM_Logging logLevel:2 message:@"Handling Cellular Network Update"];
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"BLEActiveScanPwrLmtEnabled"])
  {
    v10 = v3;
    if ((v3 & 0xFFFFFFFE) == 2)
    {
      v11 = 5;
    }

    else
    {
      v11 = 0;
    }

    v12 = [(WCM_PolicyManager *)self BLEActiveScanPwrLmtAssrInt];
    v13 = [(WCM_PolicyManager *)self BLEActiveScanPwrLmtAssrInt];
    if (v11 == v12)
    {
      [WCM_Logging logLevel:4 message:@"DLDebugBLEIntervalTooOften_ updateBLEActiveScanPwrLmtAssertionInterval is called by handleCellularNetworkUpdate. No Need to update with same value --- new interval (%d), old interval (%d)", v11, v13];
    }

    else
    {
      [WCM_Logging logLevel:4 message:@"DLDebugBLEIntervalTooOften_ updateBLEActiveScanPwrLmtAssertionInterval is called by handleCellularNetworkUpdate. Updating with new interval (%d), old interval (%d)", v11, v13];
      [(WCM_PolicyManager *)self setBLEActiveScanPwrLmtAssrInt:v11];
      [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateBLEActiveScanPwrLmtAssertionInterval:[(WCM_PolicyManager *)self BLEActiveScanPwrLmtAssrInt]];
    }

    v3 = v10;
  }

  v116 = objc_autoreleasePoolPush();
  if ([(WCM_PlatformManager *)v5 wcmWiFiCellCoexIssueTable])
  {
    v14 = [(WCM_CellularController *)v4 bandInfoType];
    [(WCM_CellularController *)v4 dlCenterFreq];
    v16 = v15;
    [(WCM_CellularController *)v4 dlBandwidth];
    v18 = v16 - v17 * 0.5;
    [(WCM_CellularController *)v4 dlCenterFreq];
    v20 = v19;
    [(WCM_CellularController *)v4 dlBandwidth];
    v22 = v20 + v21 * 0.5;
    [(WCM_CellularController *)v4 ulCenterFreq];
    v24 = v23;
    [(WCM_CellularController *)v4 ulBandwidth];
    v26 = v24 - v25 * 0.5;
    [(WCM_CellularController *)v4 ulCenterFreq];
    v28 = v27;
    [(WCM_CellularController *)v4 ulBandwidth];
    v30 = v28 + v29 * 0.5;
    v112 = [(WCM_WiFiController *)v6 wifiChannel];
    v31 = [(WCM_WiFiController *)v6 channelBandwidthMHz];
    v32 = [(WCM_WiFiController *)v6 channelCenterFreqMHz];
    [WCM_Logging logLevel:4 message:@"V2BtimapDebug_ handleCellularNetworkUpdate gets called with dlLowFreq = %f, dlHighFreq = %f, ulLowFreq = %f, ulHighFreq = %f.", *&v18, *&v22, *&v26, *&v30];
    [(WCM_PolicyManager *)self sendNRFrequencyBandUpdateForMic:v18 dlHighFreq:v22 ulLowFreq:v26 ulHighFreq:v30];
    [(WCM_CellularController *)v4 ulCenterFreq];
    if (v33 != 0.0)
    {
      [(WCM_CellularController *)v4 ulCenterFreq];
      v35 = v34;
      [(WCM_CellularController *)v4 ulBandwidth];
      [(WCM_PolicyManager *)self sendULFrequencyUpdates:v14 ulCenterFreq:v35 ulBandwidth:v36];
    }

    if (![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"EnableULCA"])
    {
      [(WCM_CellularController *)v4 getCombinedUplinkFreqRange];
      v26 = v37;
      v30 = v37 + v38;
    }

    if (v7)
    {
      if (self->_cellularRc1PolicyManager)
      {
        [WCM_Logging logLevel:4 message:@"Cellular RC1 policy manager handleCellularNetworkUpdate."];
        [(WCM_CellularRc1PolicyManager *)self->_cellularRc1PolicyManager handleCellularNetworkUpdate];
      }

      else
      {
        [WCM_Logging logLevel:4 message:@"Cellular RC1 policy manager is NULL"];
      }

      if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"LegacyNonCoexBandBitmapFix"])
      {
        [(WCM_PolicyManager *)self setWcmCellularCoexBand:[(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v5 wcmWiFiCellCoexIssueTable] coexBandCheckBandInfoType:v14 cellDlLowFreq:v18 cellDlHighFreq:v22 cellUlLowFreq:v26 cellUlHighFreq:v30]];
        v42 = [(WCM_PolicyManager *)self cellularCoexBand];
        v44 = v42 != 7 || v3 != 7;
        v9 = WRM_IPTelephonyController;
        [WCM_Logging logLevel:1 message:@"InCoexBandCheck %d %d %d", [(WCM_PolicyManager *)self wcmCellularCoexBand], v42, v44];
        v118 = v44;
        v3 = v42;
      }

      if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiWCI2BitmapV2Enabled"]|| [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiFVGHzPDHLS"])
      {
        var8 = v7->var6.var8;
        var2 = v7->var6.var2;
        v47 = v7->var6.var3 * 0.5;
        v48 = var2 - v47;
        v49 = var2 + v47;
        var0 = v7->var6.var0;
        v51 = v7->var6.var1 * 0.5;
        v52 = var0 - v51;
        v53 = var0 + v51;
        if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
        {
          if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
          {
            v54 = [(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v5 wcmWiFiCellCoexIssueTable] wifiChannelsToEnableWCI2WiFiEnhForCellBandInfoType:var8 cellDlLowFreq:&v135 cellDlHighFreq:v48 cellUlLowFreq:v49 cellUlHighFreq:v52 pissueBandMatch:v53];
            [WCM_Logging logLevel:4 message:@"WCI2_WiFiEnh: wifiChannelEnhDict = %@", v54];
            -[WCM_PolicyManager setWifiChannelsToEnableWCI2Gand5G:](self, "setWifiChannelsToEnableWCI2Gand5G:", [v54 objectForKey:@"wifiChannels2Gand5G"]);
            -[WCM_PolicyManager setWifiChannelsToEnableWCI2WiFiEnh:](self, "setWifiChannelsToEnableWCI2WiFiEnh:", [v54 objectForKey:@"wifiChannelsEnh"]);
          }
        }

        else
        {
          [(WCM_PolicyManager *)self setWifiChannelsToEnableWCI2V2:[(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v5 wcmWiFiCellCoexIssueTable] wifiChannelsToEnableWCI2V2ForCellBandInfoType:var8 cellDlLowFreq:&v135 cellDlHighFreq:v48 cellUlLowFreq:v49 cellUlHighFreq:v52 pissueBandMatch:v53]];
          [WCM_Logging logLevel:4 message:@"WCI2_V2: self.wifiChannelsToEnableWCI2V2 = %@", [(WCM_PolicyManager *)self wifiChannelsToEnableWCI2V2]];
        }

        [(WCM_PolicyManager *)self setWcmCellularCoexBand:v135];
        v3 = [(WCM_PolicyManager *)self cellularCoexBand];
        v118 |= v3 != 7;
        [WCM_Logging logLevel:1 message:@"InCoexBandCheck %d %d %d", [(WCM_PolicyManager *)self wcmCellularCoexBand], v3, v118 & 1];
        v9 = WRM_IPTelephonyController;
      }

      else
      {
        [(WCM_PolicyManager *)self setWifiChannelsToEnableWCI2:[(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v5 wcmWiFiCellCoexIssueTable] wifiChannelsToEnableWCI2ForCellBandInfoType:v14 cellDlLowFreq:v18 cellDlHighFreq:v22 cellUlLowFreq:v26 cellUlHighFreq:v30]];
        [(NSMutableArray *)[(WCM_PolicyManager *)self wifiChannelsToEnableLTEMBType7] addObject:&off_100271310];
      }

      [(WCM_PolicyManager *)self updatePHSWifiChannels];
    }

    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WlanConditionId"])
    {
      [(WCM_PolicyManager *)self configureWiFiChannelsForConditionalMitigation];
    }

    else if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFi5GHzType7NR79AntBlocking"]|| [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiType7LTEMBAntBlocking"]|| [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"Type72GWiFiSupport"])
    {
      [(WCM_PolicyManager *)self legacyType7MsgForWiFiChannels];
    }

    v55 = [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"BTSeparateAGCCoexMode"];
    v56 = [(WCM_PlatformManager *)v5 wcmWiFiCellCoexIssueTable];
    if (v55)
    {
      if (![(WCM_WiFiCellCoexIssueBandTable *)v56 wifiBtAgcCoexModeEnableCheckBandCombinationV2:v14 cellDlLowFreq:v112 cellDlHighFreq:v32 cellUlLowFreq:v31 cellUlHighFreq:&v137 wifiChannel:&v136 channelCenterFreqMHz:v18 channelBandwidthMHz:v22 coexModeWifiLevel:v26 coexModeBTLevel:v30])
      {
        goto LABEL_68;
      }
    }

    else if (![(WCM_WiFiCellCoexIssueBandTable *)v56 wifiBtAgcCoexModeEnableCheckBandCombination:v14 cellDlLowFreq:&v137 cellDlHighFreq:v18 cellUlLowFreq:v22 cellUlHighFreq:v26 coexModeWifiLevel:v30])
    {
      goto LABEL_68;
    }

    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"BTSeparateAGCCoexMode"])
    {
      v57 = &off_100271310;
      if (v137 == 3)
      {
        v57 = &off_1002716A0;
      }

      if (v137 == 2)
      {
        v58 = &off_100271688;
      }

      else
      {
        v58 = v57;
      }

      [(WCM_PolicyManager *)self setWifiAgcCoexModeLevel:v58];
      if (v136 == 2)
      {
        v59 = &off_1002716A0;
        goto LABEL_127;
      }

      if (v136 == 1)
      {
        v59 = &off_100271688;
LABEL_127:
        v60 = self;
        goto LABEL_128;
      }

LABEL_126:
      v59 = &off_100271310;
      goto LABEL_127;
    }

    if (v137 == 3)
    {
      [(WCM_PolicyManager *)self setWifiAgcCoexModeLevel:&off_1002716A0];
      goto LABEL_126;
    }

    if (v137 == 2)
    {
      [(WCM_PolicyManager *)self setWifiAgcCoexModeLevel:&off_100271688];
      v60 = self;
      v59 = &off_100271688;
LABEL_128:
      [(WCM_PolicyManager *)v60 setBtAgcCoexModeEnable:v59];
      goto LABEL_129;
    }

LABEL_68:
    [(WCM_PolicyManager *)self setBtAgcCoexModeEnable:&off_100271310];
    [(WCM_PolicyManager *)self setWifiAgcCoexModeLevel:&off_100271310];
LABEL_129:
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WifiBtAgcCoexMode"]&& [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState])
    {
      [WCM_Logging logLevel:4 message:@"1st place self.wifiAgcCoexModeLevel is %d", [(NSNumber *)[(WCM_PolicyManager *)self wifiAgcCoexModeLevel] integerValue]];
      [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] setWifiAgcCoexMode:[(WCM_PolicyManager *)self wifiAgcCoexModeLevel]];
    }

    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiAWDWCI2CoexBitmap"]&& [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState])
    {
      [(WCM_PolicyManager *)self refreshWiFiWCI2Bitmap];
    }

    if (![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"ProtectWiFiRanging"])
    {
      goto LABEL_145;
    }

    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiWCI2BitmapV2Enabled"])
    {
      if (([(NSMutableArray *)[(WCM_PolicyManager *)self wifiChannelsToEnableWCI2V2] containsObject:&off_100271700]& 1) == 0)
      {
LABEL_138:
        v87 = 0;
LABEL_141:
        if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState])
        {
          [(WCM_CellularController *)v4 ulCenterFreq];
          if (v88 != 0.0)
          {
            [(WCM_CellularController *)v4 ulBandwidth];
            if (v89 != 0.0)
            {
              [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateCellularFrequencyConfig:[(WCM_PolicyManager *)self cellularController] withWiFiRangingDesenseFlag:v87];
            }
          }
        }

LABEL_145:
        v90 = [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiOCLSupport"];
        v91 = [(WCM_PolicyManager *)self activeCoexFeatures];
        if (v90)
        {
          v92 = [(NSSet *)v91 containsObject:@"WiFiEnhCoexSupport"];
          v93 = [(WCM_PlatformManager *)v5 wcmWiFiCellCoexIssueTable];
          if (v92)
          {
            v94 = [(WCM_WiFiCellCoexIssueBandTable *)v93 wifiChannelsToDisableOCLWiFiEnhForCellBandInfoType:v14 cellDlLowFreq:v18 cellDlHighFreq:v22 cellUlLowFreq:v26 cellUlHighFreq:v30];
            [WCM_Logging logLevel:4 message:@"OCLDisable_WiFiEnh: wifiChannelEnhDict = %@", v94];
            -[WCM_PolicyManager setWifiChannelsToDisableOCL2G5G:](self, "setWifiChannelsToDisableOCL2G5G:", [v94 objectForKey:@"wifiChannels2Gand5G"]);
            -[WCM_PolicyManager setWifiChannelsToDisableOCLEnh:](self, "setWifiChannelsToDisableOCLEnh:", [v94 objectForKey:@"wifiChannelsEnh"]);
          }

          else
          {
            [(WCM_PolicyManager *)self setWifiChannelsToDisableOCL:[(WCM_WiFiCellCoexIssueBandTable *)v93 wifiChannelsToDisableOCLForCellBandInfoType:v14 cellDlLowFreq:v18 cellDlHighFreq:v22 cellUlLowFreq:v26 cellUlHighFreq:v30]];
          }

          if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiOCLSupportFix"])
          {
            if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
            {
              v95 = [NSMutableArray arrayWithArray:[(WCM_PolicyManager *)self wifiChannelsToDisableOCL2G5G]];
              [(NSMutableArray *)v95 removeObjectsInArray:v114];
              [(WCM_PolicyManager *)self setWifiChannelsToDisableOCL2G5G:v95];
              [WCM_Logging logLevel:5 message:@"OCLDisable_WiFiEnh: WiFi channels to disble OCL -- fixed version %@", [(WCM_PolicyManager *)self wifiChannelsToDisableOCL2G5G]];
            }

            else
            {
              v96 = [NSMutableArray arrayWithArray:[(WCM_PolicyManager *)self wifiChannelsToDisableOCL]];
              [(NSMutableArray *)v96 removeObjectsInArray:v114];
              [(WCM_PolicyManager *)self setWifiChannelsToDisableOCL:v96];
              [WCM_Logging logLevel:5 message:@"WiFi channels to disble OCL -- fixed version %@", [(WCM_PolicyManager *)self wifiChannelsToDisableOCL]];
            }
          }
        }

        else if ([(NSSet *)v91 containsObject:@"WiFiOCLSupportV2"])
        {
          [(WCM_PolicyManager *)self updateWifiOCLChannelList];
        }

        if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"BTUseC0B1AntennaConfig"])
        {
          [(WCM_PolicyManager *)self setBtPreferredChannelMap:[(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v5 wcmWiFiCellCoexIssueTable] btPreferredChannelMapForCellBandInfoType:v14 cellDlLowFreq:0 cellDlHighFreq:v18 cellUlLowFreq:v22 cellUlHighFreq:v26 gpsRadioActive:v30]];
          [(WCM_PolicyManager *)self setBtPreferredChannelMapOnGpsRadioActive:[(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v5 wcmWiFiCellCoexIssueTable] btPreferredChannelMapForCellBandInfoType:v14 cellDlLowFreq:1 cellDlHighFreq:v18 cellUlLowFreq:v22 cellUlHighFreq:v26 gpsRadioActive:v30]];
          if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"hpcellularstatemonitorsupport"])
          {
            [(WCM_PolicyManager *)self setBtPreferredChannelMapHPCellularActive:[(WCM_PlatformManager *)v5 wcmHPCellularBTAFHMapFixed]];
          }
        }

        else
        {
          if ([(WCM_PlatformManager *)v5 wcmBTMaxNumberOfChannelsToAvoidForCellOOB])
          {
            v97 = [(NSNumber *)[(WCM_PlatformManager *)v5 wcmBTMaxNumberOfChannelsToAvoidForCellOOB] intValue];
          }

          else
          {
            v97 = 0;
          }

          [(WCM_PolicyManager *)self setBtPreferredChannelMap:[(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v5 wcmWiFiCellCoexIssueTable] btPreferredChannelMapFromLegacyWiFiConfigForCellBandInfoType:v14 cellDlLowFreq:0 cellDlHighFreq:v97 cellUlLowFreq:v18 cellUlHighFreq:v22 gpsRadioActive:v26 maxChannelsToAvoidForCellOOB:v30]];
          [(WCM_PolicyManager *)self setBtPreferredChannelMapOnGpsRadioActive:[(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v5 wcmWiFiCellCoexIssueTable] btPreferredChannelMapFromLegacyWiFiConfigForCellBandInfoType:v14 cellDlLowFreq:1 cellDlHighFreq:v97 cellUlLowFreq:v18 cellUlHighFreq:v22 gpsRadioActive:v26 maxChannelsToAvoidForCellOOB:v30]];
        }

        v98 = objc_autoreleasePoolPush();
        if (_os_feature_enabled_impl() && [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"HFBTCoex"])
        {
          [WCM_Logging logLevel:3 message:@"HFAFHDebug_ Recaculate channel bitmap"];
          [(WCM_PolicyManager *)self setBtPreferred5GChannelMap:[(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v5 wcmWiFiCellCoexIssueTable] HFBTPreferredChannelMapForCellBandInfoType:v14 cellDlLowFreq:self->_gpsRadioActive cellDlHighFreq:v18 cellUlLowFreq:v22 cellUlHighFreq:v26 gpsRadioActive:v30]];
          [WCM_Logging logLevel:3 message:@"HFBTAntBlkDebug_ update ant blocking configs"];
          [(WCM_PolicyManager *)self setHFBTAntBlkEnableBands:[(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v5 wcmWiFiCellCoexIssueTable] HFBTAntBlockingBandsFromWiFiConfigForCellBandInfoType:v14 cellDlLowFreq:v18 cellDlHighFreq:v22 cellUlLowFreq:v26 cellUlHighFreq:v30]];
          [WCM_Logging logLevel:4 message:@"HFBTAntBlkDebug_ Updated enabled bands = %@", [(WCM_PolicyManager *)self HFBTAntBlkEnableBands]];
        }

        objc_autoreleasePoolPop(v98);
        v86 = v116;
        goto LABEL_166;
      }
    }

    else if (![(NSArray *)[(WCM_PolicyManager *)self wifiChannelsToEnableWCI2] containsObject:&off_100271700])
    {
      goto LABEL_138;
    }

    [WCM_Logging logLevel:3 message:@"Cellular UL frequency desenses WiFi ranging channel #6"];
    v87 = 1;
    v118 = 1;
    goto LABEL_141;
  }

  v110 = v3;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v39 = [(WCM_PlatformManager *)v5 wcmWiFiB7BlocklistChannels];
      v40 = [(WCM_PlatformManager *)v5 wcmWiFiB7WCI2EnabledChannels];
      v41 = [(WCM_PlatformManager *)v5 wcmBTB7AFHMap];
      goto LABEL_72;
    }

    if (v3 == 1)
    {
      v39 = [(WCM_PlatformManager *)v5 wcmWiFiB40ABlocklistChannels];
      v40 = [(WCM_PlatformManager *)v5 wcmWiFiB40AWCI2EnabledChannels];
      v41 = [(WCM_PlatformManager *)v5 wcmBTB40AAFHMap];
      goto LABEL_72;
    }

LABEL_123:
    v61 = [(WCM_PlatformManager *)v5 wcmBTAFHMapDefault];
    v39 = &off_100285E98;
    v40 = &off_100285EB0;
    goto LABEL_73;
  }

  if (v3 == 2)
  {
    v39 = [(WCM_PlatformManager *)v5 wcmWiFiB40BBlocklistChannels];
    v40 = [(WCM_PlatformManager *)v5 wcmWiFiB40BWCI2EnabledChannels];
    v41 = [(WCM_PlatformManager *)v5 wcmBTB40BAFHMap];
    goto LABEL_72;
  }

  if (v3 == 3)
  {
    v39 = [(WCM_PlatformManager *)v5 wcmWiFiB41A1BlocklistChannels];
    v40 = [(WCM_PlatformManager *)v5 wcmWiFiB41A1WCI2EnabledChannels];
    v41 = [(WCM_PlatformManager *)v5 wcmBTB41A1AFHMap];
    goto LABEL_72;
  }

  if (v3 != 4)
  {
    goto LABEL_123;
  }

  v39 = [(WCM_PlatformManager *)v5 wcmWiFiB41A2BlocklistChannels];
  v40 = [(WCM_PlatformManager *)v5 wcmWiFiB41A2WCI2EnabledChannels];
  v41 = [(WCM_PlatformManager *)v5 wcmBTB41A2AFHMap];
LABEL_72:
  v61 = v41;
LABEL_73:
  [WCM_Logging logLevel:3 message:@"BT AFH channel bitmap %@", v61];
  [(WCM_PolicyManager *)self setBtPreferredChannelMap:v61];
  [(WCM_PolicyManager *)self setBtPreferredChannelMapOnGpsRadioActive:v61];
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiWCI2BitmapV2Enabled"])
  {
    [(WCM_PolicyManager *)self setWifiChannelsToEnableWCI2V2:[NSMutableArray arrayWithArray:v40]];
  }

  else
  {
    [(WCM_PolicyManager *)self setWifiChannelsToEnableWCI2:v40];
  }

  v62 = +[NSMutableArray array];
  v63 = [(WCM_PolicyManager *)self legacyWiFiChannelsToAvoidForIMD3Cell];
  if ([v63 count])
  {
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v64 = [v63 countByEnumeratingWithState:&v131 objects:v141 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v132;
      do
      {
        for (i = 0; i != v65; i = i + 1)
        {
          if (*v132 != v66)
          {
            objc_enumerationMutation(v63);
          }

          v68 = *(*(&v131 + 1) + 8 * i);
          if (([v62 containsObject:v68] & 1) == 0)
          {
            [v62 addObject:v68];
          }
        }

        v65 = [v63 countByEnumeratingWithState:&v131 objects:v141 count:16];
      }

      while (v65);
    }

    [WCM_Logging logLevel:3 message:@"blocklist channels after combining channels for IMD3 Cell %@", v62];
  }

  v69 = [(WCM_PolicyManager *)self legacyWiFiChannelsToAvoidFor3FoWiFi];
  if ([v69 count])
  {
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v70 = [v69 countByEnumeratingWithState:&v127 objects:v140 count:16];
    if (v70)
    {
      v71 = v70;
      v72 = *v128;
      do
      {
        for (j = 0; j != v71; j = j + 1)
        {
          if (*v128 != v72)
          {
            objc_enumerationMutation(v69);
          }

          v74 = *(*(&v127 + 1) + 8 * j);
          if (([v62 containsObject:v74] & 1) == 0)
          {
            [v62 addObject:v74];
          }
        }

        v71 = [v69 countByEnumeratingWithState:&v127 objects:v140 count:16];
      }

      while (v71);
    }

    [WCM_Logging logLevel:4 message:@"blocklist channels after combining channels for 3Fo WiFi %@", v62];
  }

  [(WCM_PolicyManager *)self setLegacyWiFiBlocklistChannelsFor3FoWiFi:v69];
  v75 = [(WCM_PolicyManager *)self legacyWiFiChannelsToAvoidForIMD2GPS];
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v76 = [v75 countByEnumeratingWithState:&v123 objects:v139 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v124;
    do
    {
      for (k = 0; k != v77; k = k + 1)
      {
        if (*v124 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v80 = *(*(&v123 + 1) + 8 * k);
        if (([v62 containsObject:v80] & 1) == 0)
        {
          [v62 addObject:v80];
        }
      }

      v77 = [v75 countByEnumeratingWithState:&v123 objects:v139 count:16];
    }

    while (v77);
  }

  v9 = WRM_IPTelephonyController;
  [WCM_Logging logLevel:4 message:@"blocklist channels after combining channels for IMD2 GPS %@", v62];
  if (![(NSArray *)v39 isEqualToArray:&off_100285EC8])
  {
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v81 = [(NSArray *)v39 countByEnumeratingWithState:&v119 objects:v138 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v120;
      do
      {
        for (m = 0; m != v82; m = m + 1)
        {
          if (*v120 != v83)
          {
            objc_enumerationMutation(v39);
          }

          v85 = *(*(&v119 + 1) + 8 * m);
          if (([v62 containsObject:v85] & 1) == 0)
          {
            [v62 addObject:v85];
          }
        }

        v82 = [(NSArray *)v39 countByEnumeratingWithState:&v119 objects:v138 count:16];
      }

      while (v82);
    }

    v9 = WRM_IPTelephonyController;
    [WCM_Logging logLevel:4 message:@"blocklist channels after combined with wifiBlocklistChannelsForOOB: %@", v62];
  }

  v3 = v110;
  if (sub_100010258(v62))
  {
    [v62 removeObject:&off_100271778];
    [WCM_Logging logLevel:4 message:@"removed channel 11, now blocklist is %@", v62];
  }

  [v62 sortUsingComparator:&stru_100241A48];
  v86 = v116;
  if (![v62 count])
  {
    [v62 addObject:&off_100271310];
  }

  [WCM_Logging logLevel:5 message:@"WiFi channels to blocklist %@", v62];
  [(WCM_PolicyManager *)self setWifiChannelsToBlocklist:v62];
LABEL_166:
  objc_autoreleasePoolPop(v86);
  v99 = v118;
  if (v3 == 1)
  {
    v100 = [(WCM_PlatformManager *)v5 wcmCellularWCI2ModeRBThresholdHigh];
  }

  else
  {
    v100 = [(WCM_PlatformManager *)v5 wcmCellularWCI2ModeRBThresholdLow];
  }

  [(WCM_CellularController *)v4 updateRBThreshold:[(NSNumber *)v100 intValue]];
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"UseWCMAriDriver"])
  {
    [(WCM_PolicyManager *)self configureTimeSharingWifiChannels];
  }

  else
  {
    [(WCM_PolicyManager *)self configureForLTECDRXWiFiTimeSharing];
  }

  [WCM_Logging logLevel:4 message:@"configureAllWCI2 gets called with input (inCoexBand: %d)", v118 & 1];
  [(WCM_PolicyManager *)self configureAllWCI2:v118 & 1];
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"PencilCoexSupport"])
  {
    [(WCM_PolicyManager *)self updatePencilCoexActivationCondition];
    [(WCM_PolicyManager *)self handleWiFiBTCoexChange];
    [(WCM_PolicyManager *)self configureWifiAntennaSelectionForCoex];
    [(WCM_PolicyManager *)self configureBTAntennaSelection];
  }

  else
  {
    [(WCM_PolicyManager *)self configureWifiAntennaSelectionForCoex];
  }

  [(WCM_PolicyManager *)self updateCellTxPowerLimit];
  if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState])
  {
    if ([(WCM_PolicyManager *)self gpsRadioActive])
    {
      v101 = [(WCM_PolicyManager *)self btPreferredChannelMapOnGpsRadioActive];
    }

    else
    {
      v101 = [(WCM_PolicyManager *)self btPreferredChannelMap];
    }

    btPreferredChannelMapHPCellularActive = v101;
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"hpcellularstatemonitorsupport"]&& (_os_feature_enabled_impl() & 1) == 0)
    {
      if ([(WCM_PolicyManager *)self hpCellNeedMitigation])
      {
        btPreferredChannelMapHPCellularActive = self->_btPreferredChannelMapHPCellularActive;
      }

      [WCM_Logging logLevel:4 message:@"HPCellular (handleCellularNetworkUpdate): HPCellularActive = (%d), set BT AFH map to (%@).", [(WCM_PolicyManager *)self hpCellNeedMitigation], btPreferredChannelMapHPCellularActive];
    }

    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updatePreferredAFHMap:btPreferredChannelMapHPCellularActive];
    if (_os_feature_enabled_impl() && [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"HFBTCoex"])
    {
      v103 = [(WCM_PolicyManager *)self btPreferred5GChannelMap];
      [WCM_Logging logLevel:3 message:@"HFAFHDebug_ Update channel bitmap"];
      [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updatePreferredHFBTChannelMap:v103];
    }

    if (_os_feature_enabled_impl() && [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"HFBTCoex"])
    {
      [WCM_Logging logLevel:4 message:@"HFBTAntBlkDebug_ Current enabled bands = %@", [(WCM_PolicyManager *)self HFBTAntBlkEnableBands]];
      v104 = [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"HFBTConditionId"];
      v105 = [(WCM_PolicyManager *)self btController];
      v106 = [(WCM_PolicyManager *)self btAntBlockDuration];
      v117 = [-[NSDictionary objectForKeyedSubscript:](-[WCM_PolicyManager HFBTAntBlkEnableBands](self "HFBTAntBlkEnableBands")];
      v115 = [-[NSDictionary objectForKeyedSubscript:](-[WCM_PolicyManager HFBTAntBlkEnableBands](self "HFBTAntBlkEnableBands")];
      v113 = [-[NSDictionary objectForKeyedSubscript:](-[WCM_PolicyManager HFBTAntBlkEnableBands](self "HFBTAntBlkEnableBands")];
      v111 = [-[NSDictionary objectForKeyedSubscript:](-[WCM_PolicyManager HFBTAntBlkEnableBands](self "HFBTAntBlkEnableBands")];
      v107 = [-[NSDictionary objectForKeyedSubscript:](-[WCM_PolicyManager HFBTAntBlkEnableBands](self "HFBTAntBlkEnableBands")];
      v108 = [-[NSDictionary objectForKeyedSubscript:](-[WCM_PolicyManager HFBTAntBlkEnableBands](self "HFBTAntBlkEnableBands")];
      if (v104)
      {
        v9 = WRM_IPTelephonyController;
        v99 = v118;
        LOBYTE(v109) = v108;
        -[WCM_BTController updateHFBtAntennaRequestWithDuration:unii1Enabled:unii3Enabled:unii5aEnabled:unii5bEnabled:unii5cEnabled:unii5dEnabled:unii1ConditionId:unii3ConditionId:unii5aConditionId:unii5bConditionId:unii5cConditionId:unii5dConditionId:](v105, "updateHFBtAntennaRequestWithDuration:unii1Enabled:unii3Enabled:unii5aEnabled:unii5bEnabled:unii5cEnabled:unii5dEnabled:unii1ConditionId:unii3ConditionId:unii5aConditionId:unii5bConditionId:unii5cConditionId:unii5dConditionId:", v106, v117, v115, v113, v111, v107, v109, [&off_100271730 unsignedIntValue], objc_msgSend(&off_100271730, "unsignedIntValue"), objc_msgSend(&off_100271748, "unsignedIntValue"), objc_msgSend(&off_100271748, "unsignedIntValue"), objc_msgSend(&off_100271748, "unsignedIntValue"), objc_msgSend(&off_100271748, "unsignedIntValue"));
      }

      else
      {
        LOBYTE(v109) = v108;
        [(WCM_BTController *)v105 updateHFBtAntennaRequestWithDuration:v106 unii1Enabled:v117 unii3Enabled:v115 unii5aEnabled:v113 unii5bEnabled:v111 unii5cEnabled:v107 unii5dEnabled:v109];
      }
    }

    if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] getBTState]== 2)
    {
      [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updatePreferredRole:[(WCM_PolicyManager *)self btPreferredRole]];
    }

    if ((([(WCM_PolicyManager *)self cellularWCI2CoexPolicyBitmap]!= 0) & v99) == 1)
    {
      [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateMWSFrameConfig:v4];
    }

    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateMWSChannelParameters:v4];
    if ((v99 & 1) == 0)
    {
      [&v9[98] logLevel:4 message:{@"ZeroFreqDebug: For non-coex scenario (including RRC idle), WRM pass actual frequences instead of zeros to BT, inCoexBand= %d", 0}];
    }

    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WifiBtAgcCoexMode"])
    {
      [&v9[98] logLevel:4 message:{@"CrashDebug_ 1st place self.btAgcCoexModeEnable is %ld", -[NSNumber integerValue](-[WCM_PolicyManager btAgcCoexModeEnable](self, "btAgcCoexModeEnable"), "integerValue")}];
      [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateCoexRxGainMode:[(WCM_PolicyManager *)self btAgcCoexModeEnable]];
    }
  }

  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WifiGen9rFemConfig"])
  {
    [(WCM_PolicyManager *)self evaluateGen9rFemConfig];
  }

  [&v9[98] logLevel:2 message:{@"handleCellularNetworkUpdate: WiFi PowerState(%u)", -[WCM_WiFiController powerState](-[WCM_PolicyManager wifiController](self, "wifiController"), "powerState")}];
  if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState])
  {
    [(WCM_PolicyManager *)self handleWiFiConfigChange];
  }

  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WLAN25ASupport"])
  {
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"Wlan25aAccessoryCnvCoTxSupport"])
    {
      [&v9[98] logLevel:2 message:@"updateCellularPencilCoex due to CellConfig change"];
      [(WCM_PolicyManager *)self updateCellularPencilCoex_TriggeredByPowerOnEvent:0];
    }

    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateClockAlignmentEnable:[(WCM_CellularController *)[(WCM_PolicyManager *)self cellularController] btClkAlgnFlag] BTPowerOnEvent:0];
  }

  [(WCM_PolicyManager *)self handleFTCall];
  [(WCM_PolicyManager *)self updateCoexMonitorState:v3];
}

- (int)cellularCoexBand
{
  v3 = [(WCM_PolicyManager *)self cellularController];
  [(WCM_CellularController *)v3 ulCenterFreq];
  v5 = v4;
  [(WCM_CellularController *)v3 ulBandwidth];
  v7 = v6;
  [(WCM_CellularController *)v3 dlCenterFreq];
  v9 = v8;
  [(WCM_CellularController *)v3 dlBandwidth];
  v11 = v10;
  LODWORD(v3) = [(WCM_CellularController *)v3 tddBand];
  v12 = [(WCM_PolicyManager *)self platformManager];
  if (v3)
  {
    if ([(WCM_PlatformManager *)v12 isBand40ACoexActiveForULFreq:v5 ulBW:v7 dlFreq:v9 dlBW:v11])
    {
      return 1;
    }

    if ([(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] isBand40BCoexActiveForULFreq:v5 ulBW:v7 dlFreq:v9 dlBW:v11])
    {
      return 2;
    }

    if ([(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] isBand41A1CoexActiveForULFreq:v5 ulBW:v7 dlFreq:v9 dlBW:v11])
    {
      return 3;
    }

    if ([(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] isBand41A2CoexActiveForULFreq:v5 ulBW:v7 dlFreq:v9 dlBW:v11])
    {
      return 4;
    }
  }

  else if ([(WCM_PlatformManager *)v12 isBand7CoexActiveForULFreq:v5 ulBW:v7 dlFreq:v9 dlBW:v11])
  {
    return 0;
  }

  if (![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"BB_POLICY_CONFIG_SUPPORT"]&& ![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"Bb20PolicyConversion"]&& ![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"LegacyNonCoexBandBitmapFix"])
  {
    return 7;
  }

  if ([(WCM_PolicyManager *)self wcmCellularCoexBand])
  {
    return 6;
  }

  return 7;
}

- (void)updatePHSWifiChannels
{
  v3 = [(WCM_PolicyManager *)self cellularController];
  v4 = [(WCM_PolicyManager *)self platformManager];
  v5 = [(WCM_CellularController *)v3 bandInfoType];
  v6 = [(WCM_CellularController *)v3 getActiveULCAConfig];
  [(WCM_CellularController *)v3 dlCenterFreq];
  v8 = v7;
  [(WCM_CellularController *)v3 dlBandwidth];
  v10 = v8 - v9 * 0.5;
  [(WCM_CellularController *)v3 dlCenterFreq];
  v12 = v11;
  [(WCM_CellularController *)v3 dlBandwidth];
  v14 = v12 + v13 * 0.5;
  [(WCM_CellularController *)v3 ulCenterFreq];
  v16 = v15;
  [(WCM_CellularController *)v3 ulBandwidth];
  v18 = v17;
  [(WCM_CellularController *)v3 ulCenterFreq];
  v20 = v19;
  [(WCM_CellularController *)v3 ulBandwidth];
  v22 = v21;
  [(WCM_CellularController *)v3 ulCenterFreq];
  if (v23 == 0.0)
  {
    [(WCM_CellularController *)v3 dlCenterFreq];
    if (v24 != 0.0)
    {
      if ([(WCM_CellularController *)v3 cellBandInfo])
      {
        if (v5 == 64)
        {
          [(WCM_CellularController *)v3 dlCenterFreq];
          v27 = v49;
          v28 = [(WCM_CellularController *)v3 cellBandInfo];
          v29 = &unk_100196030;
        }

        else if (v5 == 8)
        {
          [(WCM_CellularController *)v3 dlCenterFreq];
          v27 = v48;
          v28 = [(WCM_CellularController *)v3 cellBandInfo];
          v29 = &unk_100197A98;
        }

        else
        {
          v25 = 0.0;
          if (v5 != 1)
          {
            goto LABEL_26;
          }

          [(WCM_CellularController *)v3 dlCenterFreq];
          v27 = v26;
          v28 = [(WCM_CellularController *)v3 cellBandInfo];
          v29 = &unk_100196CB0;
        }

        v25 = v27 - v29[5 * v28 + 4];
LABEL_26:
        [(WCM_CellularController *)v3 dlCenterFreq];
        [WCM_Logging logLevel:4 message:@"PDHLSV2: RRC Idle state projectedUlCenterFreq %1f, dlCenterFreq %1f, band %d", *&v25, v50, [(WCM_CellularController *)v3 cellBandInfo]];
        if (v25 > 0.0)
        {
          [(WCM_CellularController *)v3 dlBandwidth];
          v52 = v25 - v51 * 0.5;
          [(WCM_CellularController *)v3 dlBandwidth];
          v54 = v25 + v53 * 0.5;
          v55 = [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiFVGHzPDHLS"];
          v56 = [(WCM_PlatformManager *)v4 wcmWiFiCellCoexIssueTable];
          if (v55)
          {
            [(WCM_PolicyManager *)self setWifiChannelsToBlocklist:[(WCM_WiFiCellCoexIssueBandTable *)v56 wifiPHSChannelsToBlocklistV2ForCellBandInfoType:v5 cellDlLowFreq:v10 cellDlHighFreq:v14 cellUlLowFreq:v52 cellUlHighFreq:v54]];
            [WCM_Logging logLevel:4 message:@"PDHLSV2: wifi PHS channels blocklist RRC Idle state %@", [(WCM_PolicyManager *)self wifiChannelsToBlocklist]];
          }

          else
          {
            [(WCM_PolicyManager *)self setWifiChannelsToBlocklist:[(WCM_WiFiCellCoexIssueBandTable *)v56 wifiPHSChannelsToBlocklistForCellBandInfoType:v5 cellDlLowFreq:v10 cellDlHighFreq:v14 cellUlLowFreq:v52 cellUlHighFreq:v54]];
            [WCM_Logging logLevel:4 message:@"wifi PHS channels blocklist RRC Idle state %@", [(WCM_PolicyManager *)self wifiChannelsToBlocklist]];
          }
        }

        return;
      }
    }
  }

  v30 = v16 - v18 * 0.5;
  v31 = v20 + v22 * 0.5;
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiFVGHzPDHLS"])
  {
    var8 = v6->var6.var8;
    var2 = v6->var6.var2;
    v34 = v6->var6.var3 * 0.5;
    v35 = var2 - v34;
    v36 = var2 + v34;
    var0 = v6->var6.var0;
    v38 = v6->var6.var1 * 0.5;
    v39 = var0 - v38;
    v40 = var0 + v38;
    v41 = +[NSMutableArray array];
    v42 = [(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v4 wcmWiFiCellCoexIssueTable] wifiPHSChannelsToBlocklistForCellBandInfoType:v5 cellDlLowFreq:v10 cellDlHighFreq:v14 cellUlLowFreq:v30 cellUlHighFreq:v31];
    if ([v42 count])
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v43 = [v42 countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v58;
        do
        {
          for (i = 0; i != v44; i = i + 1)
          {
            if (*v58 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v57 + 1) + 8 * i);
            if (([v41 containsObject:v47] & 1) == 0)
            {
              [v41 addObject:v47];
            }
          }

          v44 = [v42 countByEnumeratingWithState:&v57 objects:v61 count:16];
        }

        while (v44);
      }

      [WCM_Logging logLevel:4 message:@"PDHLSV2: channel blocklist after combining channels for CC1 %@", v41];
    }

    [(WCM_PolicyManager *)self combineWifiChannelList:v41 withChannelList:[(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v4 wcmWiFiCellCoexIssueTable] wifiPHSChannelsToBlocklistV2ForCellBandInfoType:var8 cellDlLowFreq:v35 cellDlHighFreq:v36 cellUlLowFreq:v39 cellUlHighFreq:v40]];
    [WCM_Logging logLevel:4 message:@"PDHLSV2: channel blocklist after combining channels for CC2 %@", v41];
    [(WCM_PolicyManager *)self setWifiChannelsToBlocklist:v41];
  }

  else
  {
    [(WCM_PolicyManager *)self setWifiChannelsToBlocklist:[(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v4 wcmWiFiCellCoexIssueTable] wifiPHSChannelsToBlocklistForCellBandInfoType:v5 cellDlLowFreq:v10 cellDlHighFreq:v14 cellUlLowFreq:v30 cellUlHighFreq:v31]];
    [WCM_Logging logLevel:4 message:@"PHS wifi channel blocklist %@", [(WCM_PolicyManager *)self wifiChannelsToBlocklist]];
  }
}

- (void)configureWiFiChannelsForConditionalMitigation
{
  v3 = [(WCM_PolicyManager *)self cellularController];
  v4 = [(WCM_PolicyManager *)self platformManager];
  v5 = [(WCM_CellularController *)v3 getActiveULCAConfig];
  v32 = 0;
  v31 = 0;
  [(WCM_CellularController *)v3 bandInfoType];
  [(WCM_CellularController *)v3 dlCenterFreq];
  [(WCM_CellularController *)v3 dlBandwidth];
  [(WCM_CellularController *)v3 dlCenterFreq];
  [(WCM_CellularController *)v3 dlBandwidth];
  [(WCM_CellularController *)v3 ulCenterFreq];
  [(WCM_CellularController *)v3 ulBandwidth];
  [(WCM_CellularController *)v3 ulCenterFreq];
  [(WCM_CellularController *)v3 ulBandwidth];
  [(NSMutableArray *)[(WCM_PolicyManager *)self wifi2GHzChannelsToEnableType7MSGCombined] removeAllObjects];
  [(NSMutableArray *)[(WCM_PolicyManager *)self wifi5GHzChannelsToEnableType7MSGCombined] removeAllObjects];
  [(NSMutableArray *)[(WCM_PolicyManager *)self wifiEnhChannelsToEnableType7MSG] removeAllObjects];
  if (v5)
  {
    [WCM_Logging logLevel:2 message:@"update WiFi conditional mitigation channel list: total valid cellular carrier = %d", v5->var1];
    if (v5->var1)
    {
      v6 = 0;
      v27 = 99;
      v28 = 99;
      v7 = @"Conditional Mitigation: carrier[%d], ulLowFrq = %fMHz, ulHighFreq = %fMHz";
      v8 = @"Conditional Mitigation: ulcaPriority2G = %d, ulcaPriority5G = %d, ulcaPriority6G = %d";
      v9 = v5;
      v26 = 99;
      v10 = @"Conditional Mitigation: Wrong wifi channel list: %@";
      v29 = v5;
      v30 = v4;
      while (1)
      {
        var2 = v9->var0[0].var2;
        v12 = v9->var0[0].var3 * 0.5;
        v13 = var2 - v12;
        v14 = var2 + v12;
        v15 = v9->var0[0].var1 * 0.5;
        v16 = v9->var0[0].var0 - v15;
        v17 = v9->var0[0].var0 + v15;
        var8 = v9->var0[0].var8;
        [WCM_Logging logLevel:4 message:v7, v6, *&v16, *&v17];
        v19 = [(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v4 wcmWiFiCellCoexIssueTable] wifiChannelsToEnableConditionalMitigationForCellBandInfoType:var8 cellDlLowFreq:&v32 + 1 cellDlHighFreq:&v32 cellUlLowFreq:&v31 cellUlHighFreq:v13 ulcaPriority2G:v14 ulcaPriority5G:v16 ulcaPriorityEnh:v17];
        [WCM_Logging logLevel:4 message:v8, HIBYTE(v32), v32, v31];
        if (v19)
        {
          if ([v19 count] == 3)
          {
            break;
          }
        }

        [WCM_Logging logLevel:0 message:v10, v19];
LABEL_27:
        v9 = (v9 + 72);
        if (++v6 >= v5->var1)
        {
          goto LABEL_28;
        }
      }

      v20 = v10;
      v21 = v8;
      v22 = v7;
      v23 = [v19 objectAtIndex:0];
      v24 = [v19 objectAtIndex:1];
      v25 = [v19 objectAtIndex:2];
      if (v23 && [v23 count] && (HIBYTE(v32) < v28 || !-[NSMutableArray count](-[WCM_PolicyManager wifi2GHzChannelsToEnableType7MSGCombined](self, "wifi2GHzChannelsToEnableType7MSGCombined"), "count")))
      {
        [(NSMutableArray *)[(WCM_PolicyManager *)self wifi2GHzChannelsToEnableType7MSGCombined] removeAllObjects];
        [(NSMutableArray *)[(WCM_PolicyManager *)self wifi2GHzChannelsToEnableType7MSGCombined] addObjectsFromArray:v23];
        v28 = HIBYTE(v32);
      }

      if (v24)
      {
        v10 = v20;
        if ([v24 count])
        {
          v5 = v29;
          if (v32 < v27 || ![(NSMutableArray *)[(WCM_PolicyManager *)self wifi5GHzChannelsToEnableType7MSGCombined] count])
          {
            [(NSMutableArray *)[(WCM_PolicyManager *)self wifi5GHzChannelsToEnableType7MSGCombined] removeAllObjects];
            [(NSMutableArray *)[(WCM_PolicyManager *)self wifi5GHzChannelsToEnableType7MSGCombined] addObjectsFromArray:v24];
            v27 = v32;
          }

LABEL_19:
          if (v25)
          {
            v7 = v22;
            if ([v25 count])
            {
              v8 = v21;
              if (v31 < v26 || ![(NSMutableArray *)[(WCM_PolicyManager *)self wifiEnhChannelsToEnableType7MSG] count])
              {
                [(NSMutableArray *)[(WCM_PolicyManager *)self wifiEnhChannelsToEnableType7MSG] removeAllObjects];
                [(NSMutableArray *)[(WCM_PolicyManager *)self wifiEnhChannelsToEnableType7MSG] addObjectsFromArray:v25];
                v26 = v31;
              }

              goto LABEL_26;
            }
          }

          else
          {
            v7 = v22;
          }

          v8 = v21;
LABEL_26:
          v4 = v30;
          goto LABEL_27;
        }
      }

      else
      {
        v10 = v20;
      }

      v5 = v29;
      goto LABEL_19;
    }
  }

LABEL_28:
  if (![(NSMutableArray *)[(WCM_PolicyManager *)self wifi2GHzChannelsToEnableType7MSGCombined] count])
  {
    [(NSMutableArray *)[(WCM_PolicyManager *)self wifi2GHzChannelsToEnableType7MSGCombined] addObject:&off_100271310];
  }

  if (![(NSMutableArray *)[(WCM_PolicyManager *)self wifi5GHzChannelsToEnableType7MSGCombined] count])
  {
    [(NSMutableArray *)[(WCM_PolicyManager *)self wifi5GHzChannelsToEnableType7MSGCombined] addObject:&off_100271310];
  }

  if (![(NSMutableArray *)[(WCM_PolicyManager *)self wifiEnhChannelsToEnableType7MSG] count])
  {
    [(NSMutableArray *)[(WCM_PolicyManager *)self wifiEnhChannelsToEnableType7MSG] addObject:&off_100271310];
  }

  [WCM_Logging logLevel:4 message:@"Conditional Mitigation: 2G wifi combined channels: %@", [(WCM_PolicyManager *)self wifi2GHzChannelsToEnableType7MSGCombined]];
  [WCM_Logging logLevel:4 message:@"Conditional Mitigation: 5G wifi combined channels: %@", [(WCM_PolicyManager *)self wifi5GHzChannelsToEnableType7MSGCombined]];
  [WCM_Logging logLevel:4 message:@"Conditional Mitigation: 6G wifi combined channels: %@", [(WCM_PolicyManager *)self wifiEnhChannelsToEnableType7MSG]];
  if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState])
  {
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"BB25ASuppot"])
    {
      [(WCM_PolicyManager *)self updateWiFiChannelForConditionalMitigation];
    }

    else if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
    {
      [(WCM_PolicyManager *)self handleCallLQMStateChangeType7WiFiEnh:1];
    }

    else
    {
      [(WCM_PolicyManager *)self handleCallLQMStateChangeType7:1];
    }
  }
}

- (void)refreshWiFiWCI2Bitmap
{
  v3 = [(WCM_PolicyManager *)self wifiController];
  if (![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WlanConditionId"])
  {
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiWCI2BitmapV2Enabled"])
    {
      if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
      {
        v4 = [(WCM_PolicyManager *)self wifiChannelsToEnableWCI2Gand5G];
        [(WCM_PolicyManager *)self wifiChannelsToEnableWCI2WiFiEnh];

        [(WCM_WiFiController *)v3 updateChannelsToEnableWCI2WiFiEnh:v4 WiFiEnhChannels:?];
      }

      else
      {
        v6 = [(WCM_PolicyManager *)self wifiChannelsToEnableWCI2V2];

        [(WCM_WiFiController *)v3 updateChannelsToEnableWCI2V2:v6];
      }
    }

    else
    {
      v5 = [(WCM_PolicyManager *)self wifiChannelsToEnableWCI2];

      [(WCM_WiFiController *)v3 updateChannelsToEnableWCI2:v5];
    }
  }
}

- (void)configureForLTECDRXWiFiTimeSharing
{
  if (![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"LTECDRXWiFiTimeSharing"])
  {
    return;
  }

  if ([(WCM_PolicyManager *)self cellularCoexBand]== 2)
  {
    [WCM_Logging logLevel:4 message:@"Cellular/WiFi TimeSharing:  triggered by WRM_B40B_COEX"];
    [(WCM_PolicyManager *)self setCellularWCI2CoexPolicyBitmap:[(WCM_PolicyManager *)self cellularWCI2CoexPolicyBitmap]| 0x1030];
    v3 = [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"LTEWiFiTimeSharingBand40bCh13"];
    v4 = &off_100285FB8;
    v5 = &off_100285FA0;
  }

  else
  {
    if ([(WCM_PolicyManager *)self cellularCoexBand]!= 3 && [(WCM_PolicyManager *)self cellularCoexBand]!= 4 || ![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"LTEWiFiTimeSharingBand41"]&& ![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"LTEWiFiTimeSharingBand41Ch1113"])
    {
      [(WCM_PolicyManager *)self setCellularWCI2CoexPolicyBitmap:[(WCM_PolicyManager *)self cellularWCI2CoexPolicyBitmap]& ([(NSNumber *)[(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wcmCellularWCI2ModePolicy] unsignedLongValue]| 0xFFFFFFFFFFFFEFCFLL)];
      v7 = 0;
      v6 = &off_100286000;
      goto LABEL_14;
    }

    [WCM_Logging logLevel:4 message:@"Cellular/WiFi TimeSharing:  triggered by WRM_B41A1+A2_Coex"];
    [(WCM_PolicyManager *)self setCellularWCI2CoexPolicyBitmap:[(WCM_PolicyManager *)self cellularWCI2CoexPolicyBitmap]| 0x1030];
    v3 = [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"LTEWiFiTimeSharingBand41Ch1113"];
    v4 = &off_100285FE8;
    v5 = &off_100285FD0;
  }

  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  [(WCM_PolicyManager *)self cellularCoexBand];
  v7 = 1;
LABEL_14:
  if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState])
  {
    [WCM_Logging logLevel:4 message:@"Cellular/WiFi TimeSharing:  Configure WiFi channel for TimeSharing: %@", v6];
    [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateChannelsForTimeSharingMode:v6];
    [(WCM_PolicyManager *)self configureWCI2BitmapForTimeSharingWifiChannels:v6];
  }

  if (!v7)
  {
    v8 = 0;
    v10 = 0;
LABEL_25:
    if (![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"UseWCMAriDriver"]&& ((v7 ^ 1) & 1) == 0 && ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"Bb20PolicyConversion"]|| [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"BB_POLICY_CONFIG_SUPPORT"]))
    {
      v11 = [(WCM_PolicyManager *)self cellularController];

      [(WCM_CellularController *)v11 configureCellularTimeShareConfigReqParamsWithCenterFreq:v8 bandwidth:v10];
    }

    return;
  }

  if ([(WCM_PolicyManager *)self cellularCoexBand]== 2)
  {
    v8 = [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] getBand40BUlCenterFreq];
    v9 = [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] getBand40BUlBw];
LABEL_24:
    v10 = v9;
    [WCM_Logging logLevel:4 message:@"Cellular/WiFi TimeSharing: Enabled for freq %llu and bw %llu", v8, v9];
    goto LABEL_25;
  }

  if ([(WCM_PolicyManager *)self cellularCoexBand]== 3)
  {
    v8 = [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] getBand41A1UlCenterFreq];
    v9 = [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] getBand41A1UlBw];
    goto LABEL_24;
  }

  if ([(WCM_PolicyManager *)self cellularCoexBand]== 4)
  {
    v8 = [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] getBand41A2UlCenterFreq];
    v9 = [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] getBand41A2UlBw];
    goto LABEL_24;
  }

  [WCM_Logging logLevel:0 message:@"We should never reach here. No matching coex band to enable time sharing"];
}

- (void)evaluateGen9rFemConfig
{
  v2 = [(WCM_PolicyManager *)self cellularController];
  if (v2)
  {
    v3 = v2;
    v4 = [(WCM_CellularController *)v2 getActiveULCAConfig];
    if (v4)
    {
      v5 = v4;
      [(WCM_CellularController *)v3 bandInfoType];
      if (v5->var1)
      {
        v6 = 0;
        v67 = 1;
        v68 = 1;
        v69 = v5;
        while (1)
        {
          v7 = &v5->var0[v6];
          var1 = v7->var1;
          var2 = v7->var2;
          v10 = v7->var0 - var1 * 0.5;
          v11 = v7->var0 + var1 * 0.5;
          v12 = v7->var3 * 0.5;
          v13 = var2 - v12;
          v14 = var2 + v12;
          var8 = v7->var8;
          [WCM_Logging logLevel:4 message:@"evaluateGen9rFemConfig, cellBandInfoType = %d ulCFreq %f ulBw %f", var8, *&v7->var0, *&var1];
          if (var8 == 64)
          {
            break;
          }

          if (var8 == 1)
          {
            v16 = [(WCM_PolicyManager *)self getLTErFemFrequencyRanges:1];
            v83 = 0u;
            v84 = 0u;
            v85 = 0u;
            v86 = 0u;
            v17 = [v16 countByEnumeratingWithState:&v83 objects:v90 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v84;
              while (2)
              {
                for (i = 0; i != v18; i = i + 1)
                {
                  if (*v84 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v83 + 1) + 8 * i);
                  [objc_msgSend(v21 objectForKey:{@"frequency_lower", "floatValue"}];
                  v23 = v22;
                  [objc_msgSend(v21 objectForKey:{@"frequency_upper", "floatValue"}];
                  [WCM_Logging logLevel:4 message:@"evaluateGen9rFemConfig wifi 2g %f %f %f %f", *&v10, *&v11, *&v23, v24];
                  [objc_msgSend(v21 objectForKey:{@"frequency_lower", "floatValue"}];
                  if (v10 < v25 || ([objc_msgSend(v21 objectForKey:{@"frequency_upper", "floatValue"}], v10 > v26))
                  {
                    [objc_msgSend(v21 objectForKey:{@"frequency_lower", "floatValue"}];
                    if (v11 < v27)
                    {
                      continue;
                    }

                    [objc_msgSend(v21 objectForKey:{@"frequency_upper", "floatValue"}];
                    if (v11 > v28)
                    {
                      continue;
                    }
                  }

                  v68 = 0;
                  goto LABEL_32;
                }

                v18 = [v16 countByEnumeratingWithState:&v83 objects:v90 count:16];
                if (v18)
                {
                  continue;
                }

                break;
              }
            }

LABEL_32:

            v42 = [(WCM_PolicyManager *)self getLTErFemFrequencyRanges:0];
            v79 = 0u;
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            v43 = [v42 countByEnumeratingWithState:&v79 objects:v89 count:16];
            if (v43)
            {
              v44 = v43;
              v45 = *v80;
LABEL_34:
              v46 = 0;
              while (1)
              {
                if (*v80 != v45)
                {
                  objc_enumerationMutation(v42);
                }

                v47 = *(*(&v79 + 1) + 8 * v46);
                [objc_msgSend(v47 objectForKey:{@"frequency_lower", "floatValue"}];
                v49 = v48;
                [objc_msgSend(v47 objectForKey:{@"frequency_upper", "floatValue"}];
                [WCM_Logging logLevel:4 message:@"evaluateGen9rFemConfig wifi 5g %f %f %f %f", *&v13, *&v14, *&v49, v50];
                [objc_msgSend(v47 objectForKey:{@"frequency_lower", "floatValue"}];
                if (v13 >= v51)
                {
                  [objc_msgSend(v47 objectForKey:{@"frequency_upper", "floatValue"}];
                  if (v13 <= v52)
                  {
                    goto LABEL_57;
                  }
                }

                [objc_msgSend(v47 objectForKey:{@"frequency_lower", "floatValue"}];
                if (v14 >= v53)
                {
                  [objc_msgSend(v47 objectForKey:{@"frequency_upper", "floatValue"}];
                  if (v14 <= v54)
                  {
                    goto LABEL_57;
                  }
                }

                if (v44 == ++v46)
                {
                  v44 = [v42 countByEnumeratingWithState:&v79 objects:v89 count:16];
                  if (v44)
                  {
                    goto LABEL_34;
                  }

                  goto LABEL_58;
                }
              }
            }

            goto LABEL_58;
          }

LABEL_59:
          if (++v6 >= v5->var1)
          {
            goto LABEL_62;
          }
        }

        v29 = [(WCM_PolicyManager *)self getNRrFemFrequencyRanges:1];
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v30 = [v29 countByEnumeratingWithState:&v75 objects:v88 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v76;
          while (2)
          {
            for (j = 0; j != v31; j = j + 1)
            {
              if (*v76 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v75 + 1) + 8 * j);
              [objc_msgSend(v34 objectForKey:{@"frequency_lower", "floatValue"}];
              v36 = v35;
              [objc_msgSend(v34 objectForKey:{@"frequency_upper", "floatValue"}];
              [WCM_Logging logLevel:4 message:@"evaluateGen9rFemConfig wifi 2g %f %f %f %f", *&v10, *&v11, *&v36, v37];
              [objc_msgSend(v34 objectForKey:{@"frequency_lower", "floatValue"}];
              if (v10 < v38 || ([objc_msgSend(v34 objectForKey:{@"frequency_upper", "floatValue"}], v10 > v39))
              {
                [objc_msgSend(v34 objectForKey:{@"frequency_lower", "floatValue"}];
                if (v11 < v40)
                {
                  continue;
                }

                [objc_msgSend(v34 objectForKey:{@"frequency_upper", "floatValue"}];
                if (v11 > v41)
                {
                  continue;
                }
              }

              v68 = 0;
              goto LABEL_45;
            }

            v31 = [v29 countByEnumeratingWithState:&v75 objects:v88 count:16];
            if (v31)
            {
              continue;
            }

            break;
          }
        }

LABEL_45:

        v42 = [(WCM_PolicyManager *)self getNRrFemFrequencyRanges:0];
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v55 = [v42 countByEnumeratingWithState:&v71 objects:v87 count:16];
        if (v55)
        {
          v56 = v55;
          v57 = *v72;
LABEL_47:
          v58 = 0;
          while (1)
          {
            if (*v72 != v57)
            {
              objc_enumerationMutation(v42);
            }

            v59 = *(*(&v71 + 1) + 8 * v58);
            [objc_msgSend(v59 objectForKey:{@"frequency_lower", "floatValue"}];
            v61 = v60;
            [objc_msgSend(v59 objectForKey:{@"frequency_upper", "floatValue"}];
            [WCM_Logging logLevel:4 message:@"evaluateGen9rFemConfig wifi 5g %f %f %f %f", *&v13, *&v14, *&v61, v62];
            [objc_msgSend(v59 objectForKey:{@"frequency_lower", "floatValue"}];
            if (v13 >= v63)
            {
              [objc_msgSend(v59 objectForKey:{@"frequency_upper", "floatValue"}];
              if (v13 <= v64)
              {
                break;
              }
            }

            [objc_msgSend(v59 objectForKey:{@"frequency_lower", "floatValue"}];
            if (v14 >= v65)
            {
              [objc_msgSend(v59 objectForKey:{@"frequency_upper", "floatValue"}];
              if (v14 <= v66)
              {
                break;
              }
            }

            if (v56 == ++v58)
            {
              v56 = [v42 countByEnumeratingWithState:&v71 objects:v87 count:16];
              if (v56)
              {
                goto LABEL_47;
              }

              goto LABEL_58;
            }
          }

LABEL_57:
          v67 = 0;
        }

LABEL_58:

        v5 = v69;
        goto LABEL_59;
      }
    }

    v67 = 1;
    v68 = 1;
LABEL_62:
    [(WCM_PolicyManager *)self setWcmGen9rFemLpmMode2g:v68 & 1];
    [(WCM_PolicyManager *)self setWcmGen9rFemLpmMode5g:v67 & 1];
    [WCM_Logging logLevel:2 message:@"evaluateGen9rFemConfig 2g Flag %d, 5g Flag %d", [(WCM_PolicyManager *)self wcmGen9rFemLpmMode2g], [(WCM_PolicyManager *)self wcmGen9rFemLpmMode5g]];
  }
}

- (void)handleWiFiConfigChange
{
  v3 = [(WCM_PolicyManager *)self wifiController];
  v4 = [(WCM_PolicyManager *)self cellularController];
  v5 = [(WCM_WiFiController *)v3 wifiState];
  v6 = [(WCM_WiFiController *)v3 wifiChannel];
  if (v5 >= 4)
  {
    v7 = "INVALID_STATE!!!";
    if (v5 == 4)
    {
      v7 = "ASSOCIATED_6G";
    }
  }

  else
  {
    v7 = off_100241CB8[v5];
  }

  [WCM_Logging logLevel:4 message:@"handleWiFiConfigChange: wifiState(%s), wifiChannel(%u)", v7, v6];
  if (![(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wcmWiFiCellCoexIssueTable])
  {
    v9 = v5 == 2 && v6 >= 0xB && [(WCM_CellularController *)v4 isInCoexBand7LowerEdge]? [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wcmCellularWCI2ModeLTEMaxTxPowerLow]: [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wcmCellularWCI2ModeLTEMaxTxPowerHigh];
    [(WCM_CellularController *)v4 updateControllerTxPower:[(NSNumber *)v9 intValue]];
    if (v5 == 2 && v6 && [(WCM_PolicyManager *)self isWiFiChannel:v6 inChannelMap:[(WCM_PolicyManager *)self legacyWiFiBlocklistChannelsFor3FoWiFi]])
    {
      [(WCM_PolicyManager *)self setWifiRxPriThreshold:[(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wcmWiFiPriThresholdMed]];
      [WCM_Logging logLevel:4 message:@"WiFi associated on 3Fo Impacted channel %d", v6];
    }
  }

  [(WCM_PolicyManager *)self configureWiFiChannelMap];
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"PencilCoexSupport"])
  {
    [(WCM_PolicyManager *)self handleWiFiBTCoexChange];
  }

  [(WCM_PolicyManager *)self configureWifiAntennaSelectionForCoex];
  [(WCM_PolicyManager *)self updateCellTxPowerLimit];
  [(WCM_WiFiController *)v3 updateMWSFrameConfig:v4];
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"CellularNeedWiFiStatus"])
  {
    if ([(WCM_PolicyManager *)self audioBuiltInReceiver])
    {
      v8 = [(WCM_WiFiController *)v3 headTxPowerCapdBm];
    }

    else
    {
      v8 = [(WCM_WiFiController *)v3 bodyTxPowerCapdBm];
    }

    [(WCM_CellularController *)v4 updateWiFiStatusCenterFreq:[(WCM_WiFiController *)v3 channelCenterFreqMHz] bandwidth:[(WCM_WiFiController *)v3 channelBandwidthMHz] txPower:v8];
  }

  [(WCM_PolicyManager *)self updateCoexMonitorState:[(WCM_PolicyManager *)self cellularCoexBand]];
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:4 message:@" YYDebug_ DynamicBlockingEnh enabled"];
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"BB22_N79_DYNAMIC_ANTENNA_BLOCKING"])
    {
      [WCM_Logging logLevel:4 message:@"YYDebug_ BB22_N79_DYNAMIC_ANTENNA_BLOCKING is active"];
      if ([(WCM_PolicyManager *)self processDynamicAntennaBlocking])
      {
        [WCM_Logging logLevel:4 message:@"YYDebug_ reconfigure antenna blocking to idx 1 %d and idx 2 %d", self->_dynamicCellAntBlkEnableIdx1, self->_dynamicCellAntBlkEnableIdx2];
        [(WCM_MavAntennaPolicy *)[(WCM_PolicyManager *)self mavAntPolicy] reconfigureClientAntBlockingParamsWithCellAntBlkEnableIdx1:self->_dynamicCellAntBlkEnableIdx1 cellAntBlkEnableIdx2:self->_dynamicCellAntBlkEnableIdx2];
      }
    }
  }

  [(WCM_PolicyManager *)self updateWiFiCoexState];
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"CTSacDriverNeedWiFiFreq"])
  {
    [(WCM_PolicyManager *)self updateCTSacDriverWifiInfo];
  }

  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"CoexBBUnifiedSensorInfoSupport"])
  {
    [(WCM_CellularController *)[(WCM_PolicyManager *)self cellularController] sendBBCoexSensorMessage:1 band:v5 usecase:0];
  }

  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"SacPolicySupport"]&& ![(WCM_SacManager *)self->_sacManager isTestMode])
  {
    v10 = [(WCM_SacManager *)self->_sacManager getQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014284;
    block[3] = &unk_10023DC80;
    block[4] = self;
    block[5] = v3;
    dispatch_async(v10, block);
  }

  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WifiGen9rFemConfig"])
  {
    [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateGen9rFemConfiguration];
  }
}

- (void)configureWiFiChannelMap
{
  v3 = [(WCM_PolicyManager *)self platformManager];
  v4 = [(WCM_PolicyManager *)self wifiController];
  v5 = [(WCM_PolicyManager *)self cellularCoexBand];
  v6 = v5;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"DisablePhyRateBasedRxPriReq"])
      {
        goto LABEL_8;
      }

      v8 = [(WCM_PlatformManager *)v3 wcmWiFiPriThresholdHigh];
      goto LABEL_10;
    }

    if (v5 != 3 && v5 != 4)
    {
      goto LABEL_8;
    }

LABEL_7:
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"DisablePhyRateBasedRxPriReq"])
    {
      goto LABEL_8;
    }

    v8 = [(WCM_PlatformManager *)v3 wcmWiFiPriThresholdLow];
LABEL_10:
    v7 = v8;
    goto LABEL_11;
  }

  if (v5 <= 1)
  {
    goto LABEL_7;
  }

LABEL_8:
  v7 = &off_100271310;
LABEL_11:
  [(WCM_PolicyManager *)self setWifiRxPriThreshold:v7];
  [(WCM_WiFiController *)v4 updateChannelsToBlocklist:[(WCM_PolicyManager *)self wifiChannelsToBlocklist]];
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiOCLSupport"]|| [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiOCLSupportV2"])
  {
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
    {
      [(WCM_WiFiController *)v4 updateChannelsToDisableOCLWiFiEnh:[(WCM_PolicyManager *)self wifiChannelsToDisableOCL2G5G] WiFiEnhChannels:[(WCM_PolicyManager *)self wifiChannelsToDisableOCLEnh]];
    }

    else
    {
      [(WCM_WiFiController *)v4 updateChannelsToDisableOCL:[(WCM_PolicyManager *)self wifiChannelsToDisableOCL]];
    }
  }

  if (v6 == 7)
  {
    [(WCM_WiFiController *)v4 updateChannelsToEnableWCI2:&off_100285F70];
  }

  else if ([(WCM_PolicyManager *)self cellularWCI2CoexPolicyBitmap])
  {
    [(WCM_PolicyManager *)self refreshWiFiWCI2Bitmap];
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFi5GHzType7NR79AntBlocking"]|| [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiType7LTEMBAntBlocking"])
    {
      if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"Type72GWiFiSupport"])
      {
        [(WCM_PolicyManager *)self combineWifiChannelList:[(WCM_PolicyManager *)self wifi2GHzChannelsToEnableType7MSGCombined] withChannelList:[(WCM_PolicyManager *)self wifi2GHzLTEB7IMD3ChannelsEnableType7] inAllowedChannelSet:&off_100285F88];
      }

      if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
      {
        [(WCM_PolicyManager *)self handleCallLQMStateChangeType7WiFiEnh:1];
      }

      else
      {
        [(WCM_PolicyManager *)self handleCallLQMStateChangeType7:1];
      }
    }
  }

  if ([(WCM_PolicyManager *)self cellularWCI2CoexPolicyBitmap])
  {
    v9 = [(WCM_PolicyManager *)self wifiRxPriThreshold];

    [(WCM_WiFiController *)v4 updateRxPriorityThreshold:v9];
  }
}

- (BOOL)processDynamicAntennaBlocking
{
  if (([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] & 1) == 0)
  {
    [WCM_Logging logLevel:0 message:@"ERROR: This should never happen. processDynamicAntennaBlocking"];
    objc_exception_throw(NSInternalInconsistencyException);
  }

  [WCM_Logging logLevel:4 message:@"YYDebug_ processDynamicAntennaBlocking"];
  v3 = [(WCM_PolicyManager *)self wifiController];
  v4 = [(WCM_PolicyManager *)self cellularController];
  v5 = [(WCM_CellularController *)v4 getActiveULCAConfig];
  v6 = [(WCM_PolicyManager *)self platformManager];
  v7 = objc_autoreleasePoolPush();
  if (!v4)
  {
    goto LABEL_12;
  }

  [(WCM_CellularController *)v4 getActiveULCAConfig];
  if (!v5)
  {
    [WCM_Logging logLevel:0 message:@"YYDebug_ processDynamicAntennaBlocking activeULCAConfig->cellConfigNR79 is NULL"];
LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  var8 = v5->var7.var8;
  var2 = v5->var7.var2;
  v10 = v5->var7.var3 * 0.5;
  v11 = var2 - v10;
  v12 = var2 + v10;
  var0 = v5->var7.var0;
  v14 = v5->var7.var1 * 0.5;
  v15 = var0 - v14;
  v16 = var0 + v14;
  v17 = [(WCM_WiFiController *)v3 wifiChannel];
  [WCM_Logging logLevel:4 message:@"YYDebug_ processDynamicAntennaBlocking gets wifiChannel = %d, channelBandwidthMHz = %d, channelCenterFreqMHz = %d.", v17, [(WCM_WiFiController *)v3 channelBandwidthMHz], [(WCM_WiFiController *)v3 channelCenterFreqMHz]];
  [WCM_Logging logLevel:4 message:@"YYDebug_ processDynamicAntennaBlocking gets ccNR79 info dlLowFreq = %lf, dlHighFreq = %lf, ulLowFreq = %lf, ulHighFreq = %lf, nr79Found = %d.", *&v11, *&v12, *&v15, *&v16, v5->var7.var9];
  v24 = 0;
  v23 = 0;
  [(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v6 wcmWiFiCellCoexIssueTable] getCellDynamicAntBlockingIndex:var8 cellDlLowFreq:v17 cellDlHighFreq:&v24 cellUlLowFreq:&v23 + 1 cellUlHighFreq:&v23 wifiChannel:v11 pissueBandMatchAntIdx:v12 cellAntBlkEnableIdx1:v15 cellAntBlkEnableIdx2:v16];
  v18 = [(WCM_PolicyManager *)self dynamicAntBlkingBand];
  v19 = v18 != v24;
  if (v18 != v24)
  {
    [(WCM_PolicyManager *)self setDynamicAntBlkingBand:?];
  }

  v20 = [(WCM_PolicyManager *)self dynamicCellAntBlkEnableIdx1];
  if (v20 != HIBYTE(v23))
  {
    [(WCM_PolicyManager *)self setDynamicCellAntBlkEnableIdx1:?];
    v19 = 1;
  }

  v21 = [(WCM_PolicyManager *)self dynamicCellAntBlkEnableIdx2];
  if (v21 != v23)
  {
    [(WCM_PolicyManager *)self setDynamicCellAntBlkEnableIdx2:?];
    v19 = 1;
    v21 = v23;
  }

  [WCM_Logging logLevel:4 message:@"YYDebug_ processDynamicAntennaBlocking dynamicAntBlkingBand = %d, ant1 = %d, ant2 = %d", v24, HIBYTE(v23), v21];
LABEL_13:
  objc_autoreleasePoolPop(v7);
  return v19;
}

- (void)updateWiFiCoexState
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:4 message:@"In handleWiFiConfigChange call handleWiFiBTULOFDMAChange"];
    [(WCM_PolicyManager *)self handleWiFiBTULOFDMAChange];
  }

  if (([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] & 1) != 0 || (objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"WiFiBt5GProfile") & 1) != 0 || objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"WiFiBtExtProfile"))
  {
    [WCM_Logging logLevel:2 message:@"In updateWiFiCoexState call handleWiFiBTCoexChange"];
    [(WCM_PolicyManager *)self handleWiFiBTCoexChange];
  }

  v3 = [(WCM_PolicyManager *)self wifiController];

  [(WCM_WiFiController *)v3 handleWiFiResetFlag];
}

- (void)handleWiFiBTULOFDMAChange
{
  if (([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] & 1) == 0 && !objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"WiFiBtULOFDMADesense"))
  {
    return;
  }

  [WCM_Logging logLevel:2 message:@"Handle WiFi BT UL_OFDMA Coex change"];
  if (![(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState])
  {
    byte_1002B818C = 0;
    return;
  }

  v3 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState];
  v4 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] didWiFiDeviceReset];
  if (v3 >= 4)
  {
    v5 = "INVALID_STATE!!!";
    if (v3 == 4)
    {
      v5 = "ASSOCIATED_6G";
    }
  }

  else
  {
    v5 = off_100241CB8[v3];
  }

  [WCM_Logging logLevel:2 message:@"WiFiState(%s)", v5];
  [WCM_Logging logLevel:2 message:@"WiFiReset(%d)", v4];
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    if (v3 == 2)
    {
      if (![(WCM_BTController *)[(WCM_PolicyManager *)self btController] getAny2GHzBTDevicesConnected]|| ![(WCM_BTController *)[(WCM_PolicyManager *)self btController] isBtAntennaDesensed])
      {
        goto LABEL_20;
      }

LABEL_19:
      v6 = 1;
      goto LABEL_21;
    }

LABEL_17:
    if (v3 - 3 > 1 || ![(WCM_BTController *)[(WCM_PolicyManager *)self btController] getAny5GHzBTDevicesConnected])
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v3 != 2)
  {
    goto LABEL_17;
  }

  if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] getAny2GHzBTDevicesConnected])
  {
    goto LABEL_19;
  }

LABEL_20:
  v6 = 0;
LABEL_21:
  if (byte_1002B818C != v6 || v4)
  {
    [WCM_Logging logLevel:2 message:@"WiFi/BT UL OFDMA disable state change prev (%d) current (%d) wifiReset (%d)", byte_1002B818C, v6, v4];
    byte_1002B818C = v6;
    v7 = [(WCM_PolicyManager *)self wifiController];

    [(WCM_WiFiController *)v7 updateWiFiBTULOFDMAstate:v6];
  }
}

- (void)handleFTCall
{
  v3 = [(WCM_PolicyManager *)self cellularCoexBand];
  [(WCM_PolicyManager *)self cellularController];
  [WCM_Logging logLevel:3 message:@"Facetime update coexBand(%d)", v3];
  v4 = "FT off";
  if ([(WCM_PolicyManager *)self ftController]&& [(WCM_FTController *)[(WCM_PolicyManager *)self ftController] getFTState])
  {
    v4 = "FT on";
  }

  v5 = "BT off";
  if ([(WCM_PolicyManager *)self btController])
  {
    v6 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] getBTState];
    v7 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] audioType];
    v8 = "BT on, not HFP";
    if (v7 == 3)
    {
      v8 = "BT on, HFP";
    }

    if (v6)
    {
      v5 = v8;
    }
  }

  if (![(WCM_PolicyManager *)self wifiController])
  {
    goto LABEL_13;
  }

  v9 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState];
  v10 = "WiFi on, associated";
  if (v9 == 1)
  {
    v10 = "WiFi on, not associated";
  }

  if (!v9)
  {
LABEL_13:
    v10 = "WiFi off";
  }

  [WCM_Logging logLevel:5 message:@"Current radio states are %s, %s, %s", v5, v10, v4];
  [(WCM_PolicyManager *)self updateCoexMonitorState:v3];
  [(WCM_PolicyManager *)self updateBTStateChangeToCellular];
  if ([(WCM_PolicyManager *)self isInHpSession])
  {

    [(WCM_PolicyManager *)self updateHPCellularMetric];
  }
}

- (void)updateBTStateChangeToCellular
{
  if (![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"CoexBBUnifiedSensorInfoSupport"])
  {
    return;
  }

  if (![(WCM_PolicyManager *)self btController]|| ![(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState])
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_20;
  }

  if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] getNum2GHzAclA2DPDevices])
  {
    v3 = 4;
  }

  else if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] numeSCODevice])
  {
    v3 = 2;
  }

  else if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] numSCODevice])
  {
    v3 = 1;
  }

  else if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] numLEADevice])
  {
    v3 = 5;
  }

  else
  {
    v3 = 0;
  }

  if (![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"UseWCMAriDriver"])
  {
    v5 = 0;
    goto LABEL_18;
  }

  if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] num2GHzAoSBiAudioDevice])
  {
    v5 = 0;
    v6 = 3;
    v4 = 2;
    v3 = 7;
    goto LABEL_20;
  }

  if (![(WCM_BTController *)[(WCM_PolicyManager *)self btController] num2GHzAoSUniAudioDevice])
  {
    if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] num5GHzAoSBiAudioDevice])
    {
      v6 = 3;
      v5 = 7;
      goto LABEL_19;
    }

    if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] num5GHzAoSUniAudioDevice])
    {
      v5 = 6;
    }

    else
    {
      v5 = 0;
    }

LABEL_18:
    v6 = 3;
LABEL_19:
    v4 = 2;
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 3;
  v4 = 2;
  v3 = 6;
LABEL_20:
  [(WCM_CellularController *)[(WCM_PolicyManager *)self cellularController] sendBBCoexSensorMessage:2 band:v4 usecase:v3];
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"UseWCMAriDriver"])
  {
    v7 = [(WCM_PolicyManager *)self cellularController];

    [(WCM_CellularController *)v7 sendBBCoexSensorMessage:4 band:v6 usecase:v5];
  }
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = [a1 singleton];

  return v3;
}

- (WCM_PolicyManager)init
{
  v38.receiver = self;
  v38.super_class = WCM_PolicyManager;
  v2 = [(WCM_PolicyManager *)&v38 init];
  if (v2)
  {
    *(v2 + 11) = objc_alloc_init(WCM_PlatformManager);
    *(v2 + 13) = objc_alloc_init(WCM_HPCellularStateMonitor);
    if (!*(v2 + 11))
    {
      goto LABEL_10;
    }

    *(v2 + 1) = dispatch_queue_create("com.apple.WirelessRadioManager.CoreLocation", 0);
    v2[16] = [*(v2 + 11) coexSupported];
    v2[17] = [*(v2 + 11) iRATSupported];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"WCM_PolicyManager: platformId %d coexSupported %d iRATSupported %d", [*(v2 + 11) wrmPlatformId], v2[16], v2[17]);
    *(v2 + 26) = +[NSSet setWithSet:](NSSet, "setWithSet:", [*(v2 + 11) wcmCoexFeatures]);
    *(v2 + 27) = [objc_msgSend(*(v2 + 11) "wcmCellularWCI2ModePolicy")];
    *(v2 + 28) = [*(v2 + 11) wcmBTAFHMapDefault];
    *(v2 + 29) = [*(v2 + 11) wcmBTAFHMapDefault];
    *(v2 + 30) = [*(v2 + 11) wcmHPCellularBTAFHMapFixed];
    if (_os_feature_enabled_impl() && [objc_msgSend(v2 "activeCoexFeatures")])
    {
      *(v2 + 31) = [*(v2 + 11) wcmHFBTChannelMapDefault];
      *(v2 + 33) = [objc_msgSend(*(v2 + 11) "wcmBTAntBlockDuration")];
      *(v2 + 32) = [*(v2 + 11) wcmBTAntBlockEnableBandsDefault];
    }

    if ([*(v2 + 26) containsObject:@"MedtronicSupport"])
    {
      v3 = +[WCM_ExternalAccessory create];
      *(v2 + 23) = v3;
      if (!v3)
      {
LABEL_10:

        return 0;
      }
    }

    *(v2 + 12) = [objc_msgSend(*(v2 + 11) "wcmBTPreferredRole")];
    *(v2 + 34) = &off_100285CD0;
    *(v2 + 35) = &off_100285CE8;
    v4 = [NSMutableArray arrayWithArray:&off_100285D00];
    *(v2 + 36) = v4;
    v5 = v4;
    v6 = [NSMutableArray arrayWithArray:&off_100285D18];
    *(v2 + 37) = v6;
    v7 = v6;
    v8 = [NSMutableArray arrayWithArray:&off_100285D30];
    *(v2 + 38) = v8;
    v9 = v8;
    v10 = [NSMutableArray arrayWithArray:&off_100285D48];
    *(v2 + 39) = v10;
    v11 = v10;
    v12 = [NSMutableArray arrayWithArray:&off_100285D60];
    *(v2 + 41) = v12;
    v13 = v12;
    v14 = [NSMutableArray arrayWithArray:&off_100285D78];
    *(v2 + 42) = v14;
    v15 = v14;
    v16 = [NSMutableArray arrayWithArray:&off_100285D90];
    *(v2 + 43) = v16;
    v17 = v16;
    v18 = [NSMutableArray arrayWithArray:&off_100285DA8];
    *(v2 + 40) = v18;
    v19 = v18;
    *(v2 + 54) = objc_alloc_init(NSMutableArray);
    *(v2 + 46) = &off_100285DC0;
    v20 = [NSMutableArray arrayWithArray:&off_100285DD8];
    *(v2 + 47) = v20;
    v21 = v20;
    v22 = [NSMutableArray arrayWithArray:&off_100285DF0];
    *(v2 + 48) = v22;
    v23 = v22;
    v24 = [NSMutableArray arrayWithArray:&off_100285E08];
    *(v2 + 44) = v24;
    v25 = v24;
    v26 = [NSMutableArray arrayWithArray:&off_100285E20];
    *(v2 + 45) = v26;
    v27 = v26;
    *(v2 + 49) = &off_100271310;
    *(v2 + 57) = &off_100271310;
    v28 = &off_100271310;
    *(v2 + 20) = 0;
    *(v2 + 58) = v28;
    *(v2 + 59) = 0;
    *(v2 + 18) = 0;
    *(v2 + 10) = 25600;
    v2[23] = 0;
    *(v2 + 27) = 0;
    *(v2 + 25) = 0;
    *(v2 + 13) = 0;
    *(v2 + 8) = 0;
    *(v2 + 55) = 0;
    *(v2 + 31) = 0;
    v29 = [*(v2 + 26) containsObject:@"CellularRC1PolicyManager"];
    v30 = [*(v2 + 11) wrmPlatformId];
    if (v29)
    {
      [WCM_Logging logLevel:2 message:@"Initialize WCM_CellularRc1PolicyManager on PlatformId(%d)...", v30];
      v31 = objc_alloc_init(WCM_CellularRc1PolicyManager);
      *(v2 + 10) = v31;
      [(WCM_CellularRc1PolicyManager *)v31 setPlatformManager:*(v2 + 11)];
    }

    else
    {
      [WCM_Logging logLevel:2 message:@"WCM_CellularRc1PolicyManager not created on PlatformId(%d)...feature not enabled", v30];
      *(v2 + 10) = 0;
    }

    if ([*(v2 + 26) containsObject:@"UseWCMAriDriver"])
    {
      v32 = +[WCM_AriCoexCommandDriver singleton];
      if (v32)
      {
        v33 = v32;
        [v2 updateControllerSession:objc_opt_new() ofId:3];
        [v33 setCellularController:*(v2 + 12)];
      }
    }

    else
    {
      [WCM_Logging logLevel:2 message:@"USE_WCM_ARI_DRIVER feature not enabled.  _ariDriver=nil"];
    }

    if ([*(v2 + 26) containsObject:@"MavAntPolicyFramework"])
    {
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"Initialize WCM_MavAntennaPolicy on PlatformId(%d)...", [*(v2 + 11) wrmPlatformId]);
      v34 = objc_alloc_init(WCM_MavAntennaPolicy);
      *(v2 + 25) = v34;
      if (v34)
      {
        [WCM_Logging logLevel:2 message:@"Created WCM_MavAntennaPolicy instance successfully"];
        [*(v2 + 25) applyMavAntennaPolicyForPlatformId:objc_msgSend(*(v2 + 11) sku:{"wrmPlatformId"), objc_msgSend(*(v2 + 11), "wrmSku")}];
      }

      else
      {
        [WCM_Logging logLevel:0 message:@"Failed to create WCM_MavAntennaPolicy instance"];
      }
    }

    if (([*(v2 + 26) containsObject:@"IOKitCameraStateEvent"] & 1) != 0 || objc_msgSend(*(v2 + 26), "containsObject:", @"AccessoryStateEvent"))
    {
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"Initialize WCM_IOKitWrapper on PlatformId(%d)...", [*(v2 + 11) wrmPlatformId]);
      v35 = -[WCM_IOKitWrapper initWithPlatformId:]([WCM_IOKitWrapper alloc], "initWithPlatformId:", [*(v2 + 11) wrmPlatformId]);
      *(v2 + 60) = v35;
      [(WCM_IOKitWrapper *)v35 registerIOkitStateEvent];
    }

    else
    {
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"WCM_IOKitWrapper not created on PlatformId(%d)...feature not enabled", [*(v2 + 11) wrmPlatformId]);
      *(v2 + 60) = 0;
    }

    *(v2 + 24) = 0;
    if ([*(v2 + 26) containsObject:@"SacPolicySupport"])
    {
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"SAC Initialize WCM_SacManager on PlatformId(%d)...", [*(v2 + 11) wrmPlatformId]);
      *(v2 + 24) = -[WCM_SacManager initWithPlatformId:]([WCM_SacManager alloc], "initWithPlatformId:", [*(v2 + 11) wrmPlatformId]);
    }

    else
    {
      [WCM_Logging logLevel:2 message:@"SAC feature not enabled. _sacManager=nil"];
    }

    v2[37] = [v2 fetchWRMdebugPlistForceRTG];
    v36 = [v2 fetchWRMdebugPlistDisableLow5GRate];
    v2[38] = v36;
    if (v2[37] == 1)
    {
      [WCM_Logging logLevel:2 message:@"Forcing AWDL RTG Active with defaults write"];
      if ((v2[38] & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (!v36)
    {
      goto LABEL_32;
    }

    [WCM_Logging logLevel:2 message:@"Disabeling Low5GRate Policy with defaults write"];
  }

LABEL_32:
  [v2 setWifiAntselPolicyStatsArray:objc_alloc_init(NSMutableArray)];
  +[NSDate timeIntervalSinceReferenceDate];
  [v2 setPreviousStartTime:?];
  [v2 setLockObjectWifiAntselPolicyStats:objc_alloc_init(NSObject)];
  [v2 setPrevBandStates:objc_alloc_init(NSMutableDictionary)];
  [v2 setPrevULFrequencyUpdate:objc_alloc_init(NSMutableDictionary)];
  [v2 setPencilState:0];
  [v2 setWifi2GChanelBitmapForTimesharing:0];
  if ([objc_msgSend(v2 "activeCoexFeatures")])
  {
    *(v2 + 55) = objc_alloc_init(WCM_RadioStateIndicator);
  }

  return v2;
}

- (void)dealloc
{
  if ([(WCM_PolicyManager *)self sacManager])
  {
  }

  if ([(WCM_PolicyManager *)self mavAntPolicy])
  {
  }

  [(WCM_PolicyManager *)self stopHomeKitTimer];

  v3.receiver = self;
  v3.super_class = WCM_PolicyManager;
  [(WCM_PolicyManager *)&v3 dealloc];
}

- (void)audioRouteChanged
{
  if ([(WCM_PolicyManager *)self audioBuiltInReceiver])
  {
    [WCM_Logging logLevel:2 message:@"audioBuiltInReceiver is %s now", "false"];
    [(WCM_PolicyManager *)self setAudioBuiltInReceiver:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D9568;
    block[3] = &unk_10023DB28;
    block[4] = self;
    dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"audioBuiltInReceiver is already %s", "false"];
  }
}

- (BOOL)fetchWRMdebugPlistForceRTG
{
  v2 = CFPreferencesCopyAppValue(@"CoexDebug", @"com.apple.WirelessRadioManager.debug");
  if (v2)
  {
    v3 = v2;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      value = 0;
      if (CFDictionaryGetValueIfPresent(v3, @"ForceRTGActive", &value))
      {
        v5 = CFStringCompare(@"TRUE", value, 0) == kCFCompareEqualTo;
        v6 = "FALSE";
        if (v5)
        {
          v6 = "TRUE";
        }

        [WCM_Logging logLevel:3 message:@"In fetchWRMdebugPlistForceRTG: Reading value %s", v6];
        goto LABEL_11;
      }

      v7 = @"In fetchWRMdebugPlistForceRTG: Reading value FAILED";
    }

    else
    {
      v7 = @"In fetchWRMdebugPlistForceRTG: dict does not exist";
    }

    [WCM_Logging logLevel:3 message:v7];
    v5 = 0;
LABEL_11:
    CFRelease(v3);
    return v5;
  }

  [WCM_Logging logLevel:3 message:@"In fetchWRMdebugPlistForceRTG: dict does not exist"];
  return 0;
}

- (BOOL)fetchWRMdebugPlistDisableLow5GRate
{
  v2 = CFPreferencesCopyAppValue(@"CoexDebug", @"com.apple.WirelessRadioManager.debug");
  if (v2)
  {
    v3 = v2;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      value = 0;
      if (CFDictionaryGetValueIfPresent(v3, @"DisableLow5GRate", &value))
      {
        v5 = CFStringCompare(@"TRUE", value, 0) == kCFCompareEqualTo;
        v6 = "FALSE";
        if (v5)
        {
          v6 = "TRUE";
        }

        [WCM_Logging logLevel:3 message:@"In fetchWRMdebugPlistDisableLow5GRate: Reading value %s", v6];
        goto LABEL_11;
      }

      v7 = @"In fetchWRMdebugPlistDisableLow5GRate: Reading value FAILED";
    }

    else
    {
      v7 = @"In fetchWRMdebugPlistDisableLow5GRate: dict does not exist";
    }

    [WCM_Logging logLevel:3 message:v7];
    v5 = 0;
LABEL_11:
    CFRelease(v3);
    return v5;
  }

  [WCM_Logging logLevel:3 message:@"In fetchWRMdebugPlistDisableLow5GRate: dict does not exist"];
  return 0;
}

- (BOOL)isCellularOnGPSIMDBand
{
  v2 = [(WCM_PolicyManager *)self cellularController];
  [(WCM_CellularController *)v2 cachedULCenterFreq];
  result = 0;
  if (v3 != 0.0)
  {
    [(WCM_CellularController *)v2 cachedULCenterFreq];
    if (v4 >= 800.0)
    {
      [(WCM_CellularController *)v2 cachedULCenterFreq];
      if (v5 <= 915.0)
      {
        return 1;
      }
    }
  }

  return result;
}

- (BOOL)isCellularOnWiFi3FoBand
{
  v2 = [(WCM_PolicyManager *)self cellularController];
  [(WCM_CellularController *)v2 cachedULCenterFreq];
  result = 0;
  if (v3 != 0.0)
  {
    [(WCM_CellularController *)v2 cachedULCenterFreq];
    if (v4 >= 806.0)
    {
      [(WCM_CellularController *)v2 cachedULCenterFreq];
      if (v5 <= 901.0)
      {
        return 1;
      }
    }
  }

  return result;
}

- (BOOL)isCellularOnIMD3CellBand
{
  v2 = [(WCM_PolicyManager *)self cellularController];
  [(WCM_CellularController *)v2 cachedULCenterFreq];
  result = 0;
  if (v3 != 0.0 && ![(WCM_CellularController *)v2 tddBand])
  {
    [(WCM_CellularController *)v2 cachedULCenterFreq];
    if (v4 >= 2500.0)
    {
      [(WCM_CellularController *)v2 cachedULCenterFreq];
      if (v5 >= 2570.0)
      {
        return 1;
      }
    }
  }

  return result;
}

- (id)getControllerOfId:(int)a3
{
  if (a3 <= 28)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        return [(WCM_PolicyManager *)self cellularController];
      }

      if (a3 == 4)
      {
        return [(WCM_PolicyManager *)self btController];
      }
    }

    else
    {
      if (a3 == 1)
      {
        return [(WCM_PolicyManager *)self wifiController];
      }

      if (a3 == 2)
      {
        return [(WCM_PolicyManager *)self ftController];
      }
    }

    return 0;
  }

  if (a3 > 30)
  {
    switch(a3)
    {
      case 31:
        return [(WCM_PolicyManager *)self airplayController];
      case 38:
        return [(WCM_PolicyManager *)self p2pAwdlController];
      case 39:
        return [(WCM_PolicyManager *)self p2pNanController];
    }

    return 0;
  }

  if (a3 == 29)
  {
    return [(WCM_PolicyManager *)self rcu1Controller];
  }

  else
  {
    return [(WCM_PolicyManager *)self rcu2Controller];
  }
}

- (void)updateControllerState:(unint64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000DA4D8;
  v3[3] = &unk_10023DD88;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], v3);
}

- (void)handleSessionNotification:(unint64_t)a3
{
  [WCM_Logging logLevel:2 message:@"WCM_PolicyManager: handle event message(%llu)", a3];
  if (a3 > 518)
  {
    if (a3 > 1799)
    {
      if (a3 > 2701)
      {
        switch(a3)
        {
          case 0xA8EuLL:

            [(WCM_PolicyManager *)self handleWiFiP2PChange];
            break;
          case 0xAF0uLL:

            [(WCM_PolicyManager *)self handleCameraStateIndication];
            break;
          case 0xAF1uLL:

            [(WCM_PolicyManager *)self handlePencilStateIndication];
            break;
        }
      }

      else
      {
        switch(a3)
        {
          case 0x708uLL:

            [(WCM_PolicyManager *)self handleCCConnectionUpdate];
            break;
          case 0x76DuLL:

            [(WCM_PolicyManager *)self handleWiFiBTAirplayChange];
            break;
          case 0x898uLL:

            [(WCM_PolicyManager *)self handleWiFiBTCatsChange:0];
            break;
        }
      }
    }

    else if (a3 > 1199)
    {
      switch(a3)
      {
        case 0x4B0uLL:

          [(WCM_PolicyManager *)self handleMedtronicConnection];
          break;
        case 0x514uLL:

          [(WCM_PolicyManager *)self handleWiFiBTULOFDMAChange];
          break;
        case 0x57CuLL:

          [(WCM_PolicyManager *)self handleWiFiRCU2Change];
          break;
      }
    }

    else
    {
      switch(a3)
      {
        case 0x207uLL:

          [(WCM_PolicyManager *)self handleLeADVePAStateChange];
          break;
        case 0x3E8uLL:

          [(WCM_PolicyManager *)self handleWiFiBTCoexChange];
          break;
        case 0x44CuLL:

          [(WCM_PolicyManager *)self handleWiFiRCU1Change];
          break;
      }
    }
  }

  else if (a3 > 299)
  {
    if (a3 > 505)
    {
      switch(a3)
      {
        case 0x1FAuLL:

          [(WCM_PolicyManager *)self handleBTPowerStateChange];
          break;
        case 0x202uLL:

          [(WCM_PolicyManager *)self handleBTScanConfigChange];
          break;
        case 0x206uLL:

          [(WCM_PolicyManager *)self handleBTLeDiscoveryScanStateChange];
          break;
      }
    }

    else
    {
      switch(a3)
      {
        case 0x12CuLL:

          [(WCM_PolicyManager *)self handleCellularNetworkUpdate];
          break;
        case 0x1F4uLL:

          [(WCM_PolicyManager *)self handleBTConnectionChange];
          break;
        case 0x1F5uLL:
          goto LABEL_33;
        default:
          return;
      }
    }
  }

  else
  {
    if (a3 <= 104)
    {
      switch(a3)
      {
        case 'd':

          [(WCM_PolicyManager *)self handleWiFiConfigChange];
          break;
        case 'g':

          [(WCM_PolicyManager *)self handleWiFiPowerStateChange];
          break;
        case 'h':

          [(WCM_PolicyManager *)self handleRCU2ContentionChange];
          break;
      }

      return;
    }

    switch(a3)
    {
      case 0x69uLL:

        [(WCM_PolicyManager *)self handleCallLQMStateChange];
        break;
      case 0x6CuLL:

        [(WCM_PolicyManager *)self handleBTLeConn];
        break;
      case 0xC8uLL:
LABEL_33:

        [(WCM_PolicyManager *)self handleFTCall];
        return;
      default:
        return;
    }
  }
}

- (void)handleControllerAvailability:(unint64_t)a3
{
  if (a3 < 0x2A && ((0x3EEEFFFFFFFuLL >> a3) & 1) != 0)
  {
    v5 = off_100241B68[a3];
  }

  else
  {
    v5 = "INVALID_PROC_ID!!!";
    if (a3 == 42)
    {
      v5 = "WRMSOS";
    }
  }

  [WCM_Logging logLevel:2 message:@"Handle controller availability for %s", v5];
  if (![(WCM_PolicyManager *)self cellularController])
  {
    [(WCM_PolicyManager *)self configureAllWCI2:0];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DAA80;
  block[3] = &unk_10023DD88;
  block[4] = self;
  block[5] = a3;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
  if (a3 == 2)
  {
    [(WCM_FTController *)[(WCM_PolicyManager *)self ftController] getFaceTimeCallConfig];
  }
}

- (void)combineWifiChannelList:(id)a3 withChannelList:(id)a4
{
  if (a3 && a4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [a4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(a4);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if (([a3 containsObject:v10] & 1) == 0)
          {
            [a3 addObject:v10];
          }
        }

        v7 = [a4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    if ([a3 containsObject:&off_100271310] && objc_msgSend(a3, "count") >= 2)
    {
      [a3 removeObject:&off_100271310];
    }

    if (![a3 count])
    {
      [a3 addObject:&off_100271310];
    }
  }
}

- (void)combineWifiChannelList:(id)a3 withChannelList:(id)a4 inAllowedChannelSet:(id)a5
{
  if (a3 && a4 && a5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [a4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(a4);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if (([a3 containsObject:v12] & 1) == 0 && objc_msgSend(a5, "containsObject:", v12))
          {
            [a3 addObject:v12];
          }
        }

        v9 = [a4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    if ([a3 containsObject:&off_100271310] && objc_msgSend(a3, "count") >= 2)
    {
      [a3 removeObject:&off_100271310];
    }

    if (![a3 count])
    {
      [a3 addObject:&off_100271310];
    }
  }

  else if (a3 && ![a3 count])
  {

    [a3 addObject:&off_100271310];
  }
}

- (void)updateWifiOCLChannelList
{
  [(WCM_PolicyManager *)self wifiController];
  v3 = [(WCM_PolicyManager *)self cellularController];
  v4 = [(WCM_PolicyManager *)self platformManager];
  v5 = [(WCM_CellularController *)v3 getActiveULCAConfig];
  v6 = [NSArray arrayWithObjects:&off_100271328, &off_100271340, &off_100271358, &off_100271370, &off_100271388, &off_1002713A0, &off_1002713B8, 0];
  v7 = [(WCM_CellularController *)v3 bandInfoType];
  [(WCM_CellularController *)v3 dlCenterFreq];
  v9 = v8;
  [(WCM_CellularController *)v3 dlBandwidth];
  v11 = v10;
  [(WCM_CellularController *)v3 dlCenterFreq];
  v13 = v12;
  [(WCM_CellularController *)v3 dlBandwidth];
  v15 = v14;
  [(WCM_CellularController *)v3 ulCenterFreq];
  v17 = v16;
  [(WCM_CellularController *)v3 ulBandwidth];
  v19 = v18;
  [(WCM_CellularController *)v3 ulCenterFreq];
  v21 = v20;
  [(WCM_CellularController *)v3 ulBandwidth];
  v23 = v22;
  v24 = objc_alloc_init(NSMutableArray);
  v25 = objc_alloc_init(NSMutableArray);
  v54 = objc_alloc_init(NSMutableArray);
  v26 = WRM_IPTelephonyController;
  if (v5)
  {
    [WCM_Logging logLevel:2 message:@"update WiFi OCL channel list: total valid cellular carrier = %d", v5->var1];
    if (v5->var1)
    {
      v27 = v25;
      v28 = v24;
      v53 = v6;
      v29 = 0;
      v30 = v5;
      do
      {
        var2 = v30->var0[0].var2;
        v32 = v30->var0[0].var3 * 0.5;
        v33 = var2 - v32;
        v34 = var2 + v32;
        v35 = v30->var0[0].var1 * 0.5;
        v36 = v30->var0[0].var0 - v35;
        v37 = v30->var0[0].var0 + v35;
        var8 = v30->var0[0].var8;
        [&v26[98] logLevel:4 message:{@"OCLDisable_WiFiEnh: carrier[%d], ulLowFrq = %fMHz, ulHighFreq = %fMHz, bandInfoType = %d", v29, *&v36, *&v37, var8}];
        v39 = v26;
        v40 = [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"];
        v41 = [(WCM_PlatformManager *)v4 wcmWiFiCellCoexIssueTable];
        if (v40)
        {
          v42 = [(WCM_WiFiCellCoexIssueBandTable *)v41 wifiChannelsToDisableOCLWiFiEnhForCellBandInfoType:var8 cellDlLowFreq:v33 cellDlHighFreq:v34 cellUlLowFreq:v36 cellUlHighFreq:v37];
          [&v39[98] logLevel:4 message:{@"OCLDisable_WiFiEnh: wifiChannelEnhDict = %@", v42}];
          -[WCM_PolicyManager combineWifiChannelList:withChannelList:](self, "combineWifiChannelList:withChannelList:", v28, [v42 objectForKey:@"wifiChannels2Gand5G"]);
          v43 = [v42 objectForKey:@"wifiChannelsEnh"];
          v44 = self;
          v45 = v27;
        }

        else
        {
          v43 = [(WCM_WiFiCellCoexIssueBandTable *)v41 wifiChannelsToDisableOCLForCellBandInfoType:var8 cellDlLowFreq:v33 cellDlHighFreq:v34 cellUlLowFreq:v36 cellUlHighFreq:v37];
          v44 = self;
          v45 = v54;
        }

        [(WCM_PolicyManager *)v44 combineWifiChannelList:v45 withChannelList:v43];
        v26 = v39;
        v30 = (v30 + 72);
        ++v29;
      }

      while (v29 < v5->var1);
      v6 = v53;
      v24 = v28;
      v25 = v27;
    }
  }

  else
  {
    v46 = [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"];
    v47 = [(WCM_PlatformManager *)v4 wcmWiFiCellCoexIssueTable];
    v48 = v9 - v11 * 0.5;
    v49 = v13 + v15 * 0.5;
    v50 = v17 - v19 * 0.5;
    v51 = v21 + v23 * 0.5;
    if (v46)
    {
      v52 = [(WCM_WiFiCellCoexIssueBandTable *)v47 wifiChannelsToDisableOCLWiFiEnhForCellBandInfoType:v7 cellDlLowFreq:v48 cellDlHighFreq:v49 cellUlLowFreq:v50 cellUlHighFreq:v51];
      [WCM_Logging logLevel:4 message:@"OCLDisable_WiFiEnh: wifiChannelEnhDict = %@", v52];
      v24 = [v52 objectForKey:@"wifiChannels2Gand5G"];
      v25 = [v52 objectForKey:@"wifiChannelsEnh"];
    }

    else
    {
      [(WCM_PolicyManager *)self combineWifiChannelList:v54 withChannelList:[(WCM_WiFiCellCoexIssueBandTable *)v47 wifiChannelsToDisableOCLForCellBandInfoType:v7 cellDlLowFreq:v48 cellDlHighFreq:v49 cellUlLowFreq:v50 cellUlHighFreq:v51]];
    }
  }

  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
  {
    [v24 removeObjectsInArray:v6];
    [(WCM_PolicyManager *)self setWifiChannelsToDisableOCL2G5G:v24];
    [(WCM_PolicyManager *)self setWifiChannelsToDisableOCLEnh:v25];
    [&v26[98] logLevel:5 message:{@"OCLDisable_WiFiEnh: WiFi channels to disble OCL -- fixed version %@", -[WCM_PolicyManager wifiChannelsToDisableOCL2G5G](self, "wifiChannelsToDisableOCL2G5G")}];
  }

  else
  {
    [v54 removeObjectsInArray:v6];
    [(WCM_PolicyManager *)self setWifiChannelsToDisableOCL:v54];
    [&v26[98] logLevel:5 message:{@"WiFi channels to disble OCL -- fixed version %@", -[WCM_PolicyManager wifiChannelsToDisableOCL](self, "wifiChannelsToDisableOCL")}];
  }
}

- (void)getPencilCoexCellRatBand:(char *)a3 band:(unsigned __int16 *)a4
{
  v6 = [(WCM_CellularController *)[(WCM_PolicyManager *)self cellularController] getActiveULCAConfig];
  v25 = a3;
  v26 = a4;
  *a3 = 0;
  *a4 = 0;
  if (v6)
  {
    v7 = v6;
    if (v6->var1)
    {
      v8 = 0;
      while (1)
      {
        v9 = &v7->var0[v8];
        var0 = v9->var0;
        var2 = v9->var2;
        var8 = v9->var8;
        if (var8 == 64)
        {
          break;
        }

        if (var8 == 1)
        {
          v13 = sub_10008E030(v9->var0, v9->var2);
LABEL_8:
          v14 = v13;
          if (v13)
          {
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v15 = [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wcmCellularAccessoryCoexBands];
            v16 = [(NSArray *)v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v29;
              while (2)
              {
                for (i = 0; i != v17; i = i + 1)
                {
                  if (*v29 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v28 + 1) + 8 * i);
                  v21 = [objc_msgSend(v20 objectAtIndex:{0), "integerValue"}];
                  v22 = var8 & [objc_msgSend(v20 objectAtIndex:{1), "integerValue"}];
                  if (v14 == v21 && v22 != 0)
                  {
                    *v26 = v14;
                    [WCM_Logging logLevel:2 message:@"updateCellularPencilCoex: Detected Coex CellBand:(%u), CellRAT:(%u), uplink:(%uMHz), downlink:(%uMHz)", v14, var8, var0, var2];
                    if (var8 == 1)
                    {
                      v24 = 1;
                    }

                    else
                    {
                      v24 = 2;
                    }

                    *v25 = v24;
                    goto LABEL_26;
                  }
                }

                v17 = [(NSArray *)v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }
          }
        }

LABEL_26:
        if (++v8 >= v7->var1)
        {
          return;
        }
      }

      v13 = sub_10008E098(v9->var0, v9->var2);
      goto LABEL_8;
    }
  }
}

- (void)updateCellularPencilCoex_TriggeredByPowerOnEvent:(BOOL)a3
{
  v5 = [(WCM_PolicyManager *)self pencilState];
  v6 = v5 != 0;
  v15 = 0;
  v14 = 0;
  [(WCM_PolicyManager *)self getPencilCoexCellRatBand:&v15 band:&v14];
  if (v15)
  {
    v7 = v14 != 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = 1;
    if (v15 == byte_1002B813C && v14 == word_1002B813A && byte_1002B8138 == v6)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = byte_1002B813D;
  }

  v10 = a3 | v9;
  [WCM_Logging logLevel:2 message:@"updateCellularPencilCoex: Coex CellBand:(%u), CellRAT:(%u), Accessory:(%u), Coex_Active:(%u), update_wifi_bt:(%u)", v14, v15, v5 != 0, v7, v10 & 1];
  byte_1002B8138 = v5 != 0;
  word_1002B813A = v14;
  byte_1002B813C = v15;
  byte_1002B813D = v7;
  if (v10)
  {
    v11 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState];
    if (v7)
    {
      if (v11)
      {
        self->_enablePencilCoexTDDProfile = 1;
        [(WCM_PolicyManager *)self handleWiFiBTCoexChange];
        v12 = [(WCM_PolicyManager *)self wifiController];
        [(WCM_WiFiController *)v12 updateAccessoryCoexEnable:1 AccessoryType:v6 CellRAT:v15 CellBand:v14];
      }

      if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState])
      {
        v13 = [(WCM_PolicyManager *)self btController];
        [(WCM_BTController *)v13 updateAccessoryCoex:v6 CellRAT:v15 CellBand:v14];
      }
    }

    else
    {
      if (v11)
      {
        self->_enablePencilCoexTDDProfile = 0;
        [(WCM_PolicyManager *)self handleWiFiBTCoexChange];
        [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateAccessoryCoexEnable:0 AccessoryType:0 CellRAT:0 CellBand:0];
      }

      if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState])
      {
        [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateAccessoryCoex:0 CellRAT:0 CellBand:0];
      }

      word_1002B813A = 0;
      byte_1002B813C = 0;
    }
  }
}

- (void)legacyType7MsgForWiFiChannels
{
  v3 = [(WCM_PolicyManager *)self cellularController];
  v4 = [(WCM_PolicyManager *)self platformManager];
  v5 = [(WCM_CellularController *)v3 getActiveULCAConfig];
  if (v5)
  {
    v6 = v5;
    v31 = 0;
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiType7LTEMBAntBlocking"])
    {
      var8 = v6->var6.var8;
      var2 = v6->var6.var2;
      v9 = v6->var6.var3 * 0.5;
      v10 = var2 - v9;
      v11 = var2 + v9;
      var0 = v6->var6.var0;
      v13 = v6->var6.var1 * 0.5;
      v14 = var0 - v13;
      v15 = var0 + v13;
      if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiType7LTEMBAntBlocking"])
      {
        [(WCM_PolicyManager *)self setWifiChannelsToEnableLTEMBType7:[(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v4 wcmWiFiCellCoexIssueTable] wifiChannelsToEnableLTEMBType7ForCellBandInfoType:var8 cellDlLowFreq:&v31 + 2 cellDlHighFreq:v10 cellUlLowFreq:v11 cellUlHighFreq:v14 pissueBandMatchAntIdx:v15]];
        [(WCM_PolicyManager *)self setType7CellAntBlkIdx:HIWORD(v31)];
        [WCM_Logging logLevel:0 message:@"LTEMB_Type7 matching band found and issueBandMatchLTEMBType7AntIdx = %d", HIWORD(v31)];
      }

      else
      {
        [(NSMutableArray *)[(WCM_PolicyManager *)self wifiChannelsToEnableLTEMBType7] addObject:&off_100271310];
      }

      if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
      {
        [(WCM_PolicyManager *)self setWifiEnhChannelsToEnableType7MSG:[(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v4 wcmWiFiCellCoexIssueTable] wifiChannelsToEnableType7WiFiEnhForCellBandInfoType:var8 cellDlLowFreq:&v31 cellDlHighFreq:v10 cellUlLowFreq:v11 cellUlHighFreq:v14 pissueBandMatchAntIdx:v15]];
        [(WCM_PolicyManager *)self setType7WiFiEnhCellAntBlkIdx:v31];
        [WCM_Logging logLevel:0 message:@"WiFiType7_WiFiEnh matching band found and issueBandMatchWiFiEnhType7AntIdx = %d", v31];
      }
    }

    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFi5GHzType7NR79AntBlocking"])
    {
      v16 = v6->var7.var2;
      v17 = v6->var7.var3 * 0.5;
      v18 = v16 - v17;
      v19 = v16 + v17;
      v20 = v6->var7.var0;
      v21 = v6->var7.var1 * 0.5;
      [(WCM_PolicyManager *)self setWifi5GHzChannelsToEnableType7MSG:[(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v4 wcmWiFiCellCoexIssueTable] wifi5GHzChannelsToEnableType7MSGForCellBandInfoType:v6->var7.var8 cellDlLowFreq:v18 cellDlHighFreq:v19 cellUlLowFreq:v20 - v21 cellUlHighFreq:v20 + v21]];
    }

    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFi5GHzType7NR79AntBlocking"]|| [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiType7LTEMBAntBlocking"])
    {
      [(NSMutableArray *)[(WCM_PolicyManager *)self wifi5GHzChannelsToEnableType7MSGCombined] removeAllObjects];
      [(WCM_PolicyManager *)self combineWifiChannelList:[(WCM_PolicyManager *)self wifi5GHzChannelsToEnableType7MSGCombined] withChannelList:[(WCM_PolicyManager *)self wifi5GHzChannelsToEnableType7MSG] inAllowedChannelSet:&off_100285E38];
      -[WCM_PolicyManager combineWifiChannelList:withChannelList:inAllowedChannelSet:](self, "combineWifiChannelList:withChannelList:inAllowedChannelSet:", -[WCM_PolicyManager wifi5GHzChannelsToEnableType7MSGCombined](self, "wifi5GHzChannelsToEnableType7MSGCombined"), [objc_opt_self() wifiChannelsToEnableLTEMBType7], &off_100285E50);
      [(NSMutableArray *)[(WCM_PolicyManager *)self wifi2GHzChannelsToEnableType7MSGCombined] removeAllObjects];
      -[WCM_PolicyManager combineWifiChannelList:withChannelList:inAllowedChannelSet:](self, "combineWifiChannelList:withChannelList:inAllowedChannelSet:", -[WCM_PolicyManager wifi2GHzChannelsToEnableType7MSGCombined](self, "wifi2GHzChannelsToEnableType7MSGCombined"), [objc_opt_self() wifiChannelsToEnableLTEMBType7], &off_100285E68);
    }

    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"Type72GWiFiSupport"])
    {
      v22 = v6->var8.var8;
      v23 = v6->var8.var2;
      v24 = v6->var8.var3 * 0.5;
      v25 = v23 - v24;
      v26 = v23 + v24;
      v27 = v6->var8.var0;
      v28 = v6->var8.var1 * 0.5;
      v29 = v27 - v28;
      v30 = v27 + v28;
      [WCM_Logging logLevel:4 message:@"TYPE7_2GWIFI_SUPPORT_: Band7 Cell info: BandType: bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf)", v22, *&v25, *&v26, v27 - v28, v27 + v28];
      [(WCM_PolicyManager *)self setWifi2GHzLTEB7IMD3ChannelsEnableType7:[(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v4 wcmWiFiCellCoexIssueTable] wifi2GHzLTEB7IMD3EnableType7ForCellBandInfoType:v22 cellDlLowFreq:v25 cellDlHighFreq:v26 cellUlLowFreq:v29 cellUlHighFreq:v30]];
      [WCM_Logging logLevel:4 message:@"TYPE7_2GWIFI_SUPPORT_: 2.4GHz Channels to enable Type7 MSG due to LTEB7 IMD issue = %@", [(WCM_PolicyManager *)self wifi2GHzLTEB7IMD3ChannelsEnableType7]];
    }

    if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState]&& ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFi5GHzType7NR79AntBlocking"]|| [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiType7LTEMBAntBlocking"]))
    {
      if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"Type72GWiFiSupport"])
      {
        [(WCM_PolicyManager *)self combineWifiChannelList:[(WCM_PolicyManager *)self wifi2GHzChannelsToEnableType7MSGCombined] withChannelList:[(WCM_PolicyManager *)self wifi2GHzLTEB7IMD3ChannelsEnableType7] inAllowedChannelSet:&off_100285E80];
      }

      if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"BB25ASuppot"])
      {
        [(WCM_PolicyManager *)self updateWiFiChannelForConditionalMitigation];
      }

      else if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
      {
        [(WCM_PolicyManager *)self handleCallLQMStateChangeType7WiFiEnh:1];
      }

      else
      {
        [(WCM_PolicyManager *)self handleCallLQMStateChangeType7:1];
      }
    }
  }
}

- (void)queryHPCellularInitialState
{
  v2 = [(WCM_PolicyManager *)self hpCellularMonitor];
  if (v2)
  {
    if ([(WCM_HPCellularStateMonitor *)v2 start])
    {
      v3 = @"HPCellular: WCM_HPCellularStateMonitor started.";
    }

    else
    {
      v3 = @"HPCellular: WCM_HPCellularStateMonitor start failed.";
    }

    [WCM_Logging logLevel:4 message:v3];
  }
}

- (void)updateHPCellularMetric
{
  [WCM_Logging logLevel:4 message:@"HPCellularCA: Update HPCellular Metric"];
  if ([(WCM_PolicyManager *)self btController])
  {
    v3 = [(NSMutableArray *)[(WCM_BTController *)[(WCM_PolicyManager *)self btController] allBTConnections] count];
    v4 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] getNum2GHzAclA2DPDevices];
    v5 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] numeSCODevice];
    v6 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] numSCODevice];
    v7 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] numHIDDevice];
    v8 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] numLEDevice];
    v9 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] numLEADevice];
    v10 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] numLLADevice];
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v3 = 0;
  }

  [+[WCM_HPCellular_CoreAnalyticsService singleton](WCM_HPCellular_CoreAnalyticsService "singleton")];
}

- (void)handleHPCellularSessionStart
{
  [WCM_Logging logLevel:4 message:@"HPCellularCA: Handle session start."];
  [+[WCM_HPCellular_CoreAnalyticsService singleton](WCM_HPCellular_CoreAnalyticsService "singleton")];

  [(WCM_PolicyManager *)self updateHPCellularMetric];
}

- (void)handleHPCellularSessionEnd
{
  [WCM_Logging logLevel:4 message:@"HPCellularCA: Handle session end."];
  [(WCM_PolicyManager *)self updateHPCellularMetric];
  v3 = +[WCM_HPCellular_CoreAnalyticsService singleton];

  [v3 submitHPCellularCoexStats];
}

- (void)updateWiFiChannelForConditionalMitigation
{
  v3 = [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"];
  v4 = [NSMutableArray arrayWithArray:[(WCM_PolicyManager *)self wifi2GHzChannelsToEnableType7MSGCombined]];
  if (v3)
  {
    [(WCM_PolicyManager *)self combineWifiChannelList:v4 withChannelList:[(WCM_PolicyManager *)self wifi5GHzChannelsToEnableType7MSGCombined]];
    v5 = [NSMutableArray arrayWithArray:[(WCM_PolicyManager *)self wifiEnhChannelsToEnableType7MSG]];
    v6 = [(WCM_PolicyManager *)self wifiController];

    [(WCM_WiFiController *)v6 updateChannelsToEnableType7MSGWiFiEnh:v4 WiFiEnhChannels:v5];
  }

  else
  {
    [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateChannelsToEnableType7MSG:[NSMutableArray arrayWithArray:[(WCM_PolicyManager *)self wifi5GHzChannelsToEnableType7MSGCombined]]];
    v7 = [(WCM_PolicyManager *)self wifiController];

    [(WCM_WiFiController *)v7 updateChannelsToEnableType7MSG2GWiFi:v4];
  }
}

- (void)handleBTConnectionChange
{
  v3 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] getBTState];
  [WCM_Logging logLevel:3 message:@"Handle BT connection change btState(%d)", v3];
  if (v3 == 2)
  {
    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updatePreferredRole:[(WCM_PolicyManager *)self btPreferredRole]];
  }

  [(WCM_PolicyManager *)self handleFTCall];
}

- (void)handleBTPowerStateChange
{
  v3 = WRM_IPTelephonyController;
  v4 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState];
  v5 = "off";
  if (v4)
  {
    v5 = "on";
  }

  [WCM_Logging logLevel:2 message:@"Updating policy for BT power %s", v5];
  v6 = [(WCM_PolicyManager *)self cellularCoexBand];
  if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState])
  {
    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateWCI2Mode:0];
    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateMWSSignalingConfig];
    if ([(WCM_PolicyManager *)self gpsRadioActive])
    {
      v7 = [(WCM_PolicyManager *)self btPreferredChannelMapOnGpsRadioActive];
    }

    else
    {
      v7 = [(WCM_PolicyManager *)self btPreferredChannelMap];
    }

    btPreferredChannelMapHPCellularActive = v7;
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"hpcellularstatemonitorsupport"]&& (_os_feature_enabled_impl() & 1) == 0)
    {
      if ([(WCM_PolicyManager *)self hpCellNeedMitigation])
      {
        btPreferredChannelMapHPCellularActive = self->_btPreferredChannelMapHPCellularActive;
      }

      [WCM_Logging logLevel:4 message:@"HPCellular (handleBTPowerStateChange): HPCellularActive = (%d), set BT AFH map to (%@).", [(WCM_PolicyManager *)self hpCellNeedMitigation], btPreferredChannelMapHPCellularActive];
    }

    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updatePreferredAFHMap:btPreferredChannelMapHPCellularActive];
    if (_os_feature_enabled_impl() && [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"HFBTCoex"])
    {
      v9 = [(WCM_PolicyManager *)self btPreferred5GChannelMap];
      [WCM_Logging logLevel:3 message:@"HFAFHDebug_ Update channel bitmap"];
      [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updatePreferredHFBTChannelMap:v9];
    }

    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"BLEActiveScanPwrLmtEnabled"])
    {
      if ((v6 & 0xFFFFFFFE) == 2)
      {
        v10 = 5;
      }

      else
      {
        v10 = 0;
      }

      v11 = [(WCM_PolicyManager *)self BLEActiveScanPwrLmtAssrInt];
      v12 = [(WCM_PolicyManager *)self BLEActiveScanPwrLmtAssrInt];
      if (v10 == v11)
      {
        [WCM_Logging logLevel:4 message:@"DLDebugBLEIntervalTooOften_ updateBLEActiveScanPwrLmtAssertionInterval is called by handleBTPowerStateChange. No Need to update with same value --- new interval (%lld), old interval (%lld)", v10, v12];
      }

      else
      {
        [WCM_Logging logLevel:4 message:@"DLDebugBLEIntervalTooOften_ updateBLEActiveScanPwrLmtAssertionInterval is called by handleBTPowerStateChange. Updating with new interval (%lld), old interval (%lld)", v10, v12];
        [(WCM_PolicyManager *)self setBLEActiveScanPwrLmtAssrInt:v10];
        [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateBLEActiveScanPwrLmtAssertionInterval:[(WCM_PolicyManager *)self BLEActiveScanPwrLmtAssrInt]];
      }
    }

    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updatePreferredRole:[(WCM_PolicyManager *)self btPreferredRole]];
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"PencilCoexSupport"])
    {
      [(WCM_PolicyManager *)self configureBTAntennaSelection];
    }

    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"Wlan25aAccessoryCnvCoTxSupport"])
    {
      [WCM_Logging logLevel:2 message:@"updateCellularPencilCoex due to BT power (%u)", [(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState]];
      [(WCM_PolicyManager *)self updateCellularPencilCoex_TriggeredByPowerOnEvent:1];
    }

    [(WCM_PolicyManager *)self updateCellTxPowerLimit];
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"LTEScanProtection"])
    {
      v13 = [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"LTEScanProtectionBTseparate"];
      v14 = [(WCM_PolicyManager *)self btController];
      v15 = [(WCM_PolicyManager *)self platformManager];
      if (v13)
      {
        v16 = [(WCM_PlatformManager *)v15 wcmCellularScanProtectionCellFrequenciesforBT];
      }

      else
      {
        v16 = [(WCM_PlatformManager *)v15 wcmCellularScanProtectionCellFrequencies];
      }

      [(WCM_BTController *)v14 updateMWSScanFrequencyTable:v16];
    }

    if (_os_feature_enabled_impl() && [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"HFBTCoex"])
    {
      [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateHFBtTxIndication:1];
      [WCM_Logging logLevel:4 message:@"HFBTAntBlkDebug_ Current enabled bands = %@", [(WCM_PolicyManager *)self HFBTAntBlkEnableBands]];
      v17 = [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"HFBTConditionId"];
      v18 = [(WCM_PolicyManager *)self btController];
      v19 = [(WCM_PolicyManager *)self btAntBlockDuration];
      v20 = [-[NSDictionary objectForKeyedSubscript:](-[WCM_PolicyManager HFBTAntBlkEnableBands](self "HFBTAntBlkEnableBands")];
      v21 = [-[NSDictionary objectForKeyedSubscript:](-[WCM_PolicyManager HFBTAntBlkEnableBands](self "HFBTAntBlkEnableBands")];
      v22 = [-[NSDictionary objectForKeyedSubscript:](-[WCM_PolicyManager HFBTAntBlkEnableBands](self "HFBTAntBlkEnableBands")];
      v40 = [-[NSDictionary objectForKeyedSubscript:](-[WCM_PolicyManager HFBTAntBlkEnableBands](self "HFBTAntBlkEnableBands")];
      v23 = [-[NSDictionary objectForKeyedSubscript:](-[WCM_PolicyManager HFBTAntBlkEnableBands](self "HFBTAntBlkEnableBands")];
      v24 = [-[NSDictionary objectForKeyedSubscript:](-[WCM_PolicyManager HFBTAntBlkEnableBands](self "HFBTAntBlkEnableBands")];
      v25 = v24;
      if (v17)
      {
        v39 = [&off_100271730 unsignedIntValue];
        v38 = v20;
        v37 = [&off_100271730 unsignedIntValue];
        v36 = v22;
        v26 = v18;
        v27 = [&off_100271748 unsignedIntValue];
        v28 = v21;
        v29 = [&off_100271748 unsignedIntValue];
        v30 = v19;
        v31 = [&off_100271748 unsignedIntValue];
        v32 = [&off_100271748 unsignedIntValue];
        LOBYTE(v35) = v25;
        v33 = v30;
        v3 = WRM_IPTelephonyController;
        [(WCM_BTController *)v26 updateHFBtAntennaRequestWithDuration:v33 unii1Enabled:v38 unii3Enabled:v28 unii5aEnabled:v36 unii5bEnabled:v40 unii5cEnabled:v23 unii5dEnabled:v35 unii1ConditionId:v39 unii3ConditionId:v37 unii5aConditionId:v27 unii5bConditionId:v29 unii5cConditionId:v31 unii5dConditionId:v32];
      }

      else
      {
        LOBYTE(v35) = v24;
        [(WCM_BTController *)v18 updateHFBtAntennaRequestWithDuration:v19 unii1Enabled:v20 unii3Enabled:v21 unii5aEnabled:v22 unii5bEnabled:v40 unii5cEnabled:v23 unii5dEnabled:v35];
      }
    }

    v34 = [(WCM_PolicyManager *)self cellularCoexBand];
    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateMWSChannelParameters:[(WCM_PolicyManager *)self cellularController]];
    if (v34 == 7)
    {
      [&v3[98] logLevel:4 message:{@"ZeroFreqDebug: For non-coex scenario (including RRC idle), WRM pass actual frequences instead of zeros to BT. ([self cellularCoexBand] != WRM_BNON_COEX) as a BOOL is %d.", -[WCM_PolicyManager cellularCoexBand](self, "cellularCoexBand") != 7}];
    }

    else
    {
      [(WCM_PolicyManager *)self configureAllWCI2:1];
      if ([(WCM_PolicyManager *)self cellularWCI2CoexPolicyBitmap])
      {
        [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateMWSFrameConfig:[(WCM_PolicyManager *)self cellularController]];
      }
    }

    [(WCM_PolicyManager *)self updateCoexMonitorState:[(WCM_PolicyManager *)self cellularCoexBand]];
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WifiBtAgcCoexMode"]&& [(WCM_PolicyManager *)self btAgcCoexModeEnable])
    {
      [&v3[98] logLevel:4 message:{@"CrashDebug_ 2nd place self.btAgcCoexModeEnable is %d", -[NSNumber integerValue](-[WCM_PolicyManager btAgcCoexModeEnable](self, "btAgcCoexModeEnable"), "integerValue")}];
      [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateCoexRxGainMode:[(WCM_PolicyManager *)self btAgcCoexModeEnable]];
    }

    [(WCM_PolicyManager *)self sendRCU2UpdateMessage];
    [(WCM_PolicyManager *)self initWiFiStatetoBT];
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WLAN25ASupport"])
    {
      [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateClockAlignmentEnable:[(WCM_CellularController *)[(WCM_PolicyManager *)self cellularController] btClkAlgnFlag] BTPowerOnEvent:1];
    }
  }

  [(WCM_PolicyManager *)self updateBTStateChangeToCellular];
  if ([(WCM_PolicyManager *)self isInHpSession])
  {

    [(WCM_PolicyManager *)self updateHPCellularMetric];
  }
}

- (void)initWiFiStatetoBT
{
  [(WCM_PolicyManager *)self handleWiFiBTCatsChange:0];
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] update5GHzHostAP:[(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] hostAP5GHzActive]];
    if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateUWB5GHzActive:[(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] mRCU15GHzInUse]];
    }

    forceRealTimeAWDL = self->_forceRealTimeAWDL;
    v4 = [(WCM_PolicyManager *)self btController];
    v5 = forceRealTimeAWDL || [(WCM_P2PAWDLController *)[(WCM_PolicyManager *)self p2pAwdlController] mRealTimeAwdlTrafficEnabled];
    [(WCM_BTController *)v4 updateAWDLRTGActive:v5];
    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateWiFiChannelInfo:[(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiChannel] bandwidth:[(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] channelBandwidthMHz] regBand:[(WCM_PolicyManager *)self parseCenterFreqtoUNIIBand:[(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] channelCenterFreqMHz]]];
    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateLowWiFi5GRates:0];

    [(WCM_PolicyManager *)self handleLow5GRate:0 forceReset:0];
  }
}

- (void)sendRCU2UpdateMessage
{
  [WCM_Logging logLevel:3 message:@" In sendRCU2UpdateMessage.. enter"];
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"RCU2Support"])
  {
    [WCM_Logging logLevel:3 message:@" BT power state change - Set RCU2 parameters"];
    [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] setMRCU2PowerOn:[(WCM_CtrXPCClient *)[(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] threadClient] threadCOEXStatus]];
    [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] setMRCU2ChannelNum:[(WCM_CtrXPCClient *)[(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] threadClient] getChannel]];
    [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] setMRCU2ChannelActivity:[(WCM_CtrXPCClient *)[(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] threadClient] getChannelActivity]];
    [WCM_Logging logLevel:0 message:@"WIFI/RCU2 - Setting values status = %d channelno =%d channel activity =%lld ", [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] mRCU2PowerOn], [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] mRCU2ChannelNum], [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] mRCU2ChannelActivity]];
    if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState])
    {
      [WCM_Logging logLevel:3 message:@" Setting AFH Map for RCU2 channel %d", [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] mRCU2ChannelNum]];
      [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updatePreferredAFHMapRCU2:[(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] mRCU2ChannelNum]];
    }

    else
    {
      [WCM_Logging logLevel:0 message:@"BT power state off - not sending afh map"];
    }

    v3 = [(WCM_PolicyManager *)self rcu2Controller];

    [(WCM_RCU2Controller *)v3 handleRCU2Connection];
  }
}

- (void)handleBTScanConfigChange
{
  v3 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] getBTState];
  v4 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] isCarPlaySessionInProgress];
  v5 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] getCarPlayScanRelaxReason];
  [WCM_Logging logLevel:3 message:@"handleBTScanConfigChange Handle BT radio state (%d)", v3];
  if (!v3 || v5)
  {
    [WCM_Logging logLevel:3 message:@"BT controller is off or Carplay is not a reason, didnt send Carplay scan param changes btState(%d) reason (%d)", v3, v5];
  }

  else
  {
    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateCarplayBTScanParams:v4 reason:0];
    [WCM_Logging logLevel:3 message:@"Sent message to BT controller about Carplay scan param changes carPlayState(%d) carPlayReason(%d)", v4, 0];
  }
}

- (void)handleRCU2ContentionChange
{
  v3 = [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] mRCU2PowerOn];
  v4 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] getLeastCongestedWifiParam];
  [WCM_Logging logLevel:3 message:@"handleRCU2ContentionChange Handle RC2 radio state (%d)", v3];
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    if (!v3)
    {
      [WCM_Logging logLevel:3 message:@"RC2 controller is off (%d)", v3];
      return;
    }

    -[WCM_RCU2Controller updateContentionFreeWiFiInfoToRC2:count:](-[WCM_PolicyManager rcu2Controller](self, "rcu2Controller"), "updateContentionFreeWiFiInfoToRC2:count:", [objc_msgSend(v4 objectAtIndex:{0), "unsignedIntValue"}], objc_msgSend(objc_msgSend(v4, "objectAtIndex:", 1), "unsignedIntValue"));
    v5 = @"Sent message to RC2 controller about least contested WiFi channel";
  }

  else
  {
    v5 = @"handleRCU2ContentionChange RCU2 feature not enabed";
  }

  [WCM_Logging logLevel:3 message:v5];
}

- (int)parseCenterFreqtoUNIIBand:(unsigned int)a3
{
  if (a3 - 1 < 0x9AF)
  {
    return 1;
  }

  if (a3 - 5150 < 0x65)
  {
    return 2;
  }

  if (a3 - 5250 < 0x65)
  {
    return 3;
  }

  if (a3 - 5470 < 0x100)
  {
    return 4;
  }

  if (a3 - 5725 < 0x65)
  {
    return 5;
  }

  if (a3 - 5850 < 0x4C)
  {
    return 6;
  }

  if (a3 - 5925 < 0x7E)
  {
    return 7;
  }

  if (a3 - 6051 < 0x7D)
  {
    return 8;
  }

  if (a3 - 6176 < 0x7D)
  {
    return 9;
  }

  if (a3 - 6301 < 0x7D)
  {
    return 10;
  }

  if (a3 - 6425 < 0x65)
  {
    return 11;
  }

  if (a3 - 6525 < 0x15F)
  {
    return 12;
  }

  if (a3 - 6875 >= 0xFB)
  {
    return 0;
  }

  return 13;
}

- (void)updateWiFiBTConnectionReport
{
  if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState])
  {
    v3[0] = @"2GAoSUni";
    v4[0] = [NSNumber numberWithUnsignedInteger:[(WCM_BTController *)[(WCM_PolicyManager *)self btController] num2GHzAoSUniAudioDevice]];
    v3[1] = @"2GAoSBi";
    v4[1] = [NSNumber numberWithUnsignedInteger:[(WCM_BTController *)[(WCM_PolicyManager *)self btController] num2GHzAoSBiAudioDevice]];
    v3[2] = @"5GAoSUni";
    v4[2] = [NSNumber numberWithUnsignedInteger:[(WCM_BTController *)[(WCM_PolicyManager *)self btController] num5GHzAoSUniAudioDevice]];
    v3[3] = @"5GAoSBi";
    v4[3] = [NSNumber numberWithUnsignedInteger:[(WCM_BTController *)[(WCM_PolicyManager *)self btController] num5GHzAoSBiAudioDevice]];
    v3[4] = @"ACL-A2DP";
    v4[4] = [NSNumber numberWithUnsignedInteger:[(WCM_BTController *)[(WCM_PolicyManager *)self btController] getNum2GHzAclA2DPDevices]];
    v3[5] = @"ESCO";
    v4[5] = [NSNumber numberWithUnsignedInteger:[(WCM_BTController *)[(WCM_PolicyManager *)self btController] numeSCODevice]+ [(WCM_BTController *)[(WCM_PolicyManager *)self btController] numSCODevice]];
    v3[6] = @"HID";
    v4[6] = [NSNumber numberWithUnsignedInteger:[(WCM_BTController *)[(WCM_PolicyManager *)self btController] numHIDDevice]];
    [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateWiFiBTConnectionReport:[NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:7]];
  }

  else
  {

    [WCM_Logging logLevel:2 message:@"WCM_PolicyManager WiFi Power Off - Not sending BTConnectionReport"];
  }
}

- (void)handleWiFiRCU1PowerOff
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    if ([(WCM_PolicyManager *)self rcu1Controller])
    {
      v3 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] getAny5GHzBTDevicesConnected];
      [(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] setMRCU1CurrentMode:0];
      [(WCM_R1Controller *)[(WCM_PolicyManager *)self rcu1Controller] sendRCU1Message:0 wifiBand:0 btPowerState:[(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState] btBand:v3 isForce:0];
      if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
      {
        v4 = [(WCM_PolicyManager *)self rcu1Controller];

        [(WCM_R1Controller *)v4 sendBlockEnhancedMms:0];
      }
    }
  }
}

- (void)handleWiFiRCU2PowerOff
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {

    [(WCM_PolicyManager *)self rcu2Controller];
  }
}

- (void)handleWiFiBTCatsChange:(BOOL)a3
{
  v3 = a3;
  v5 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState];
  v6 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] catsAppPriority];
  v7 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] catsAppBitmap];
  if (v3)
  {
    [WCM_Logging logLevel:2 message:@"handleWiFiBTCatsChange WiFi is turning off"];
    v6 = 0;
    v8 = 0;
    v5 = 0;
  }

  else
  {
    v8 = v7;
  }

  [WCM_Logging logLevel:2 message:@"handleWiFiBTCatsChange catsState(%d -> %d) bitmap(0x%x -> 0x%x) wifiState(%d -> %d)", byte_1002B8198, v6, qword_1002B81A0, v8, dword_1002B8194, v5];
  if (byte_1002B8198 != v6 || qword_1002B81A0 != v8 || dword_1002B8194 != v5)
  {
    if ((v5 - 1) > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = dword_1001992D0[(v5 - 1)];
    }

    if (v6 == 2)
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    [WCM_Logging logLevel:2 message:@"handleWiFiBTCatsChange updating cats state to BT"];
    [(WCM_PolicyManager *)self updateBTCatsState:v6 bitmap:v8 band:v9 desiredBtDc:v10];
    dword_1002B8194 = v5;
    byte_1002B8198 = v6;
    qword_1002B81A0 = v8;
  }
}

- (void)handleBTLeConn
{
  [WCM_Logging logLevel:2 message:@"handleBTLeConn updating state to WiFi"];
  if (![(WCM_PolicyManager *)self wifiController])
  {
    return;
  }

  v3 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState];
  v4 = [(WCM_PolicyManager *)self btController];
  v5 = &unk_1002B8000;
  v6 = &unk_1002B8000;
  if (!v4)
  {
    v15 = 0;
    v10 = 0;
    v8 = 0;
    v7 = 0;
    if (v3 != 2)
    {
LABEL_20:
      if ((byte_1002B81B4 & 1) == 0)
      {
        return;
      }

      v12 = 0;
      v13 = @"Set OFF due to WiFi NOT 2G and lastSent enable=1";
      goto LABEL_29;
    }

LABEL_27:
    if ((byte_1002B81B4 & 1) == 0)
    {
      return;
    }

    v12 = 0;
    v13 = @"Set OFF due to WiFi in 2G, current enable=0, and lastSent enable=1";
    v10 = v4;
    goto LABEL_29;
  }

  v7 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] getLeConnDutyCycle];
  v8 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] getLeConnDuration];
  v15 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] getLeConnReason];
  v9 = v7 - 1;
  if (v7 == 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = 30;
  }

  [WCM_Logging logLevel:2 message:@"LastSent: EN(%d) DC(%d) DUR(%d) Peak(%d)", byte_1002B81B4, dword_1002B81A8, dword_1002B81AC, dword_1002B81B0];
  if (v3 <= 1)
  {
    if (!v3)
    {
      v11 = "DISABLED";
      goto LABEL_19;
    }

    if (v3 == 1)
    {
      v11 = "ENABLED";
LABEL_19:
      [WCM_Logging logLevel:2 message:@"CurrState: wifi(%s) EN(%d) DC(%d) DUR(%d) Peak(%d) ", v11, v9 < 4, v7, v8, v10];
      v5 = &unk_1002B8000;
      v6 = &unk_1002B8000;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      v11 = "ASSOCIATED_5G";
      goto LABEL_19;
    }

LABEL_15:
    v11 = "INVALID_STATE!!!";
    if (v3 == 4)
    {
      v11 = "ASSOCIATED_6G";
    }

    goto LABEL_19;
  }

  [WCM_Logging logLevel:2 message:@"CurrState: wifi(%s) EN(%d) DC(%d) DUR(%d) Peak(%d) ", "ASSOCIATED_2G", v9 < 4, v7, v8, v10];
  if (v9 >= 4)
  {
    v4 = v10;
    v5 = &unk_1002B8000;
    v6 = &unk_1002B8000;
    goto LABEL_27;
  }

  v6 = &unk_1002B8000;
  v12 = 1;
  v13 = @"Set ON due to WiFi in 2G, current enable=1, and DC or DUR changed";
  v5 = &unk_1002B8000;
  if (dword_1002B81A8 != v7 || dword_1002B81AC != v8)
  {
LABEL_29:
    v14 = v6;
    [WCM_Logging logLevel:2 message:v13];
    [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateWiFiBTLeConnEnable:v12 andPeakOutageMs:v10 andDurationMs:v8 andDutyCycle:v7 andReason:v15];
    byte_1002B81B4 = v12;
    dword_1002B81B0 = v10;
    v5[107] = v8;
    v14[106] = v7;
  }
}

- (void)handleBTLeDiscoveryScanStateChange
{
  v3 = "Other";
  v4 = "stopped";
  if ([(WCM_PolicyManager *)self btController])
  {
    v5 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] getLeDiscoveryScanState];
    v6 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] getLeDiscoveryScanUseCase];
    v7 = v5 == 1;
    if (v7)
    {
      v4 = "started";
    }

    v8 = v6 == 1;
    if (v6 == 1)
    {
      v3 = "FindMyPencil";
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  [WCM_Logging logLevel:2 message:@"handleBTLeDiscoveryScanStateChange - Scan %s, Use Case %s", v4, v3];
  v9 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  if (v8 && v9)
  {
    self->_findMyPencilScanActive = v7;
  }

  [(WCM_PolicyManager *)self handleWiFiBTCoexChange];
}

- (void)handleWiFiBTAirplayChange
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v3 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState];
    v4 = [(WCM_AirplayController *)[(WCM_PolicyManager *)self airplayController] mAirplayIsCritical];
    [WCM_Logging logLevel:2 message:@"handleWiFiBTAirplayChange updating Airplay Critical to WiFi and BT"];
    v5 = v3 - 2 < 3;
    v6 = v4 & v5;
    if ((v4 & v5) != 0)
    {
      v7 = "on";
    }

    else
    {
      v7 = "off";
    }

    [WCM_Logging logLevel:4 message:@"Updating critical wifi state for AirPlay to %s", v7];
    [(WCM_PolicyManager *)self updateWiFiAirplayCriticalState:v6];

    [(WCM_PolicyManager *)self updateBTAirplayCriticalState:v6];
  }
}

- (void)handleWiFiP2PChange
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    forceRealTimeAWDL = self->_forceRealTimeAWDL;
    v4 = [(WCM_PolicyManager *)self btController];
    v5 = forceRealTimeAWDL || [(WCM_P2PAWDLController *)[(WCM_PolicyManager *)self p2pAwdlController] mRealTimeAwdlTrafficEnabled]|| [(WCM_P2PNANController *)[(WCM_PolicyManager *)self p2pNanController] mNanRealTimeEnabled];
    [(WCM_BTController *)v4 updateAWDLRTGActive:v5];
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v6 = [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] threadClient];
    v7 = [(WCM_P2PAWDLController *)[(WCM_PolicyManager *)self p2pAwdlController] mRealTimeAwdlTrafficEnabled]|| [(WCM_P2PNANController *)[(WCM_PolicyManager *)self p2pNanController] mNanRealTimeEnabled];

    [(WCM_CtrXPCClient *)v6 updateAWDLRealTimeMode:v7];
  }
}

- (void)updateWiFiRCU2CoexMode
{
  if ([(WCM_PolicyManager *)self wifiController]&& [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState])
  {
    v3 = [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] getRC2CoexMode];
    v4 = [(WCM_PolicyManager *)self wifiController];

    [(WCM_WiFiController *)v4 updateWiFiRCU2CoexMode:v3];
  }
}

- (void)updateWiFiRCU2PMProtectionMode
{
  if ([(WCM_PolicyManager *)self wifiController]&& [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState])
  {
    v3 = [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] getRC2PMProtectionMode];
    v4 = [(WCM_PolicyManager *)self wifiController];

    [(WCM_WiFiController *)v4 updateWiFiRCU2PMProtectionMode:v3];
  }
}

- (void)updateWiFiRCU2ULOFDMAStatus
{
  [WCM_Logging logLevel:2 message:@"Handle WiFi RC2 UL_OFDMA state change"];
  if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState])
  {
    v3 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState];
    v4 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] didWiFiDeviceReset];
    if (v3 >= 4)
    {
      v5 = "INVALID_STATE!!!";
      if (v3 == 4)
      {
        v5 = "ASSOCIATED_6G";
      }
    }

    else
    {
      v5 = off_100241CB8[v3];
    }

    [WCM_Logging logLevel:2 message:@"WiFiState(%s)", v5];
    [WCM_Logging logLevel:2 message:@"WiFiState : Power:(%d) ChannelNo:(%d)", [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] mRCU2PowerOn], [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] mRCU2ChannelNum]];
    v6 = v3 == 2;
    if (byte_1002B81B5 != v6 || v4)
    {
      v7 = v3 == 2;
      [WCM_Logging logLevel:2 message:@"WiFi/RCU2 UL OFDMA disable state change prev (%d) current (%d) wifiReset (%d)", byte_1002B81B5, v7, v4];
      byte_1002B81B5 = v6;
      v8 = [(WCM_PolicyManager *)self wifiController];

      [(WCM_WiFiController *)v8 updateWiFiRCU2ULOFDMAstate:v7];
    }
  }

  else
  {
    byte_1002B81B5 = 0;
  }
}

- (void)updateBTRCU2TimingArray
{
  if ([(WCM_PolicyManager *)self wifiController])
  {
    v3 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState];
  }

  else
  {
    v3 = 0;
  }

  if ([(WCM_PolicyManager *)self btController])
  {
    v4 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState];
  }

  else
  {
    v4 = 0;
  }

  if ([(WCM_PolicyManager *)self rcu2Controller])
  {
    v5 = [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] mRCU2PowerOn];
    if (v4)
    {
LABEL_9:
      v6 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] getNumberOfBTGameCtrlDev];
      [WCM_Logging logLevel:2 message:@"Getting RCU2 radio status %d total controllers >= 2 ? %d", v5, v6 > 1];
      if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] && !-[WCM_RCU2Controller mRCU2ChannelActivity](-[WCM_PolicyManager rcu2Controller](self, "rcu2Controller"), "mRCU2ChannelActivity"))
      {
        [WCM_Logging logLevel:2 message:@"Disabling RCU2 CTS2S"];
      }

      else
      {
        [WCM_Logging logLevel:2 message:@"Enabling RCU2 CTS2S"];
        if (v6 > 1 && v5 && (!v3 || [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState]!= 2))
        {
          v7 = [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] getRC2BTTimingParam];
          v8 = [v7 objectAtIndex:0];
          v9 = [v7 objectAtIndex:1];
          v10 = [v7 objectAtIndex:2];
LABEL_21:
          v11[0] = v10;
          v11[1] = v8;
          v11[2] = v9;
          [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateBTRCU2TimingArray:[NSArray arrayWithObjects:v11 count:3]];
          return;
        }
      }

      v8 = &off_100271310;
      v9 = &off_100271310;
      v10 = &off_100271310;
      goto LABEL_21;
    }
  }

  else
  {
    v5 = 0;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  [WCM_Logging logLevel:2 message:@"BT is OFF"];
}

- (void)updateWiFiRCU2TimingArray
{
  if ([(WCM_PolicyManager *)self wifiController])
  {
    v3 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState];
  }

  else
  {
    v3 = 0;
  }

  if ([(WCM_PolicyManager *)self btController])
  {
    v4 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState];
  }

  else
  {
    v4 = 0;
  }

  if ([(WCM_PolicyManager *)self rcu2Controller])
  {
    v5 = [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] mRCU2PowerOn];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(WCM_WiFiService *)[(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiService] getP2pRCU2CoexEventStatus];
  if (v4)
  {
    v7 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] getNumberOfBTGameCtrlDev]> 1;
  }

  else
  {
    v7 = 0;
  }

  if (v3)
  {
    [WCM_Logging logLevel:2 message:@"Channel activity %lld", [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] mRCU2ChannelActivity]];
    if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] && !-[WCM_RCU2Controller mRCU2ChannelActivity](-[WCM_PolicyManager rcu2Controller](self, "rcu2Controller"), "mRCU2ChannelActivity"))
    {
      [WCM_Logging logLevel:2 message:@"Disabling RCU2 CTS2S", v14];
    }

    else
    {
      [WCM_Logging logLevel:2 message:@"Enabling RCU2 CTS2S"];
      [WCM_Logging logLevel:2 message:@"P2pRCU2CoexEventInProgress(%d)", v6];
      if (v5 & v6)
      {
        [WCM_Logging logLevel:2 message:@"Disabling CTS2S due to P2pRCU2CoexEventInProgress(%d)", v6];
      }

      else if (v5)
      {
        v8 = [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] getRC2WiFiTimingParam];
        v9 = [v8 objectAtIndex:0];
        v10 = [v8 objectAtIndex:1];
        v11 = [v8 objectAtIndex:2];
        v12 = [v8 objectAtIndex:3];
        if (v7)
        {
          v13 = v12;
        }

        else
        {
          v13 = v11;
        }

        goto LABEL_27;
      }
    }

    v10 = &off_100271310;
    v9 = &off_100271310;
    v13 = &off_100271310;
LABEL_27:
    v15[0] = v13;
    v15[1] = v9;
    v15[2] = v10;
    [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateWiFiRCU2TimingArray:[NSArray arrayWithObjects:v15 count:3]];
    [WCM_Logging logLevel:2 message:@"Sent message to WiFi: RC2 grant params, updated GCs"];
    return;
  }

  [WCM_Logging logLevel:2 message:@"WiFi is OFF"];
}

- (void)updateWiFiRCU2CoexParams
{
  if ([(WCM_PolicyManager *)self wifiController]&& [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState])
  {
    if ([(WCM_PolicyManager *)self rcu2Controller]&& [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] mRCU2PowerOn])
    {
      v3 = [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] getRC2WiFiTimingParam];
      [WCM_Logging logLevel:2 message:@"updateWiFiRCU2CoexParams - not ignoring t3/t4 as channel activity is not 0"];
      v4 = [v3 objectAtIndex:0];
      v5 = [v3 objectAtIndex:1];
    }

    else
    {
      v5 = &off_100271310;
      v4 = &off_100271310;
    }

    v6[0] = [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] getRC2CoexMode];
    v6[1] = v4;
    v6[2] = v5;
    v6[3] = [NSNumber numberWithUnsignedInt:[(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] mRCU2ChannelNum]];
    [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] updateRCU2CoexParams:[NSArray arrayWithObjects:v6 count:4]];
  }
}

- (void)handleWiFiRCU2Change
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    if ([(WCM_PolicyManager *)self wifiController])
    {
      [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] didWiFiDeviceReset];
      v3 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState];
      [WCM_Logging logLevel:2 message:@"handleWiFiRCU2Change state change WiFi (%d) and RC2 (%d)", [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState], [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] mRCU2PowerOn]];
      if (v3)
      {
        [(WCM_PolicyManager *)self updateWiFiRCU2CoexParams];
        [(WCM_PolicyManager *)self updateWiFiRCU2CoexMode];
        [(WCM_PolicyManager *)self updateWiFiRCU2PMProtectionMode];

        [(WCM_PolicyManager *)self updateWiFiRCU2ULOFDMAStatus];
      }
    }

    else
    {
      [WCM_Logging logLevel:2 message:@"handleWiFiRCU2Change WiFi state change wifiReset (%d)", 0];
    }
  }
}

- (id)getLTErFemFrequencyRanges:(BOOL)a3
{
  v3 = a3;
  v4 = [(WCM_PolicyManager *)self platformManager];
  v5 = objc_alloc_init(NSMutableArray);
  if (v3)
  {
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(NSDictionary *)[(WCM_PlatformManager *)v4 wcmGen9rFemDefaultMode2gWiFiCellularbands] objectForKey:@"LTE"];
    v6 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = (&unk_100196CB0 + 40 * [*(*(&v28 + 1) + 8 * i) unsignedIntValue]);
          v11 = v10[2];
          v12 = v10[3];
          v35[0] = @"frequency_lower";
          v36[0] = [NSNumber numberWithDouble:v11];
          v35[1] = @"frequency_upper";
          v36[1] = [NSNumber numberWithDouble:v12];
          [v5 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v36, v35, 2)}];
        }

        v7 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obja = [(NSDictionary *)[(WCM_PlatformManager *)v4 wcmGen9rFemDefaultMode5gWiFiCellularbands] objectForKey:@"LTE"];
    v13 = [obja countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(obja);
          }

          v17 = (&unk_100196CB0 + 40 * [*(*(&v24 + 1) + 8 * j) unsignedIntValue]);
          v18 = v17[2];
          v19 = v17[3];
          v32[0] = @"frequency_lower";
          v20 = [NSNumber numberWithDouble:v18];
          v32[1] = @"frequency_upper";
          v33[0] = v20;
          v33[1] = [NSNumber numberWithDouble:v19];
          [v5 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v33, v32, 2)}];
        }

        v14 = [obja countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v14);
    }
  }

  return v5;
}

- (id)getNRrFemFrequencyRanges:(BOOL)a3
{
  v3 = a3;
  v4 = [(WCM_PolicyManager *)self platformManager];
  v5 = objc_alloc_init(NSMutableArray);
  if (v3)
  {
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(NSDictionary *)[(WCM_PlatformManager *)v4 wcmGen9rFemDefaultMode2gWiFiCellularbands] objectForKey:@"NR"];
    v6 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = (&unk_100196030 + 40 * [*(*(&v28 + 1) + 8 * i) unsignedIntValue]);
          v11 = v10[2];
          v12 = v10[3];
          v35[0] = @"frequency_lower";
          v36[0] = [NSNumber numberWithDouble:v11];
          v35[1] = @"frequency_upper";
          v36[1] = [NSNumber numberWithDouble:v12];
          [v5 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v36, v35, 2)}];
        }

        v7 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obja = [(NSDictionary *)[(WCM_PlatformManager *)v4 wcmGen9rFemDefaultMode5gWiFiCellularbands] objectForKey:@"NR"];
    v13 = [obja countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(obja);
          }

          v17 = (&unk_100196030 + 40 * [*(*(&v24 + 1) + 8 * j) unsignedIntValue]);
          v18 = v17[2];
          v19 = v17[3];
          v32[0] = @"frequency_lower";
          v20 = [NSNumber numberWithDouble:v18];
          v32[1] = @"frequency_upper";
          v33[0] = v20;
          v33[1] = [NSNumber numberWithDouble:v19];
          [v5 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v33, v32, 2)}];
        }

        v14 = [obja countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v14);
    }
  }

  return v5;
}

- (unsigned)getWifiAntennaBitmapForPencilCoexByPlatform
{
  if ([(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wrmPlatformId]== 174 || [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wrmPlatformId]== 172)
  {
    return 512;
  }

  if ([(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wrmPlatformId]== 162 || [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wrmPlatformId]== 164 || [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wrmPlatformId]== 166 || [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wrmPlatformId]== 168 || [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wrmPlatformId]== 170)
  {
    return 128;
  }

  return 0;
}

- (unsigned)getBtBlockedAntennaForPencilCoexByPlatform
{
  if ([(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wrmPlatformId]== 174 || [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wrmPlatformId]== 172)
  {
    return 14;
  }

  if ([(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wrmPlatformId]== 162 || [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wrmPlatformId]== 164 || [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wrmPlatformId]== 166 || [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wrmPlatformId]== 168 || [(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] wrmPlatformId]== 170)
  {
    return 13;
  }

  return 0;
}

- (void)updatePencilCoexActivationCondition
{
  [WCM_Logging logLevel:2 message:@"YYDebug_ check pencil coex activation condition"];
  v3 = [(WCM_PolicyManager *)self cellularController];
  if (![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"EnableULCA"])
  {
    goto LABEL_11;
  }

  [WCM_Logging logLevel:2 message:@"YYDebug_ ENABLED_UL_CA"];
  if (!v3 || (v4 = [(WCM_CellularController *)v3 getActiveULCAConfig]) == 0)
  {
    [WCM_Logging logLevel:0 message:@"YYDebug_ pencil coex Error: No ULCA config"];
    goto LABEL_11;
  }

  v5 = v4;
  if (!v4->var1)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v6 = 0;
  v7 = 0;
  p_var1 = &v4->var0[0].var1;
  do
  {
    v9 = *(p_var1 - 1);
    v10 = *p_var1 * 0.5;
    v11 = v9 - v10;
    v12 = v9 + v10;
    [WCM_Logging logLevel:2 message:@"YYDebug_ Carrier %d, UL (%f, %f)", v6, v9 - v10, v9 + v10];
    v13 = v12 >= 2305.0;
    if (v11 > 2315.0)
    {
      v13 = 0;
    }

    v7 |= v13;
    ++v6;
    p_var1 += 9;
  }

  while (v6 < v5->var1);
LABEL_12:
  [(WCM_CellularController *)v3 ulCenterFreq];
  if (v14 != 0.0)
  {
    [(WCM_CellularController *)v3 ulBandwidth];
    if (v15 != 0.0)
    {
      [(WCM_CellularController *)v3 ulCenterFreq];
      v17 = v16;
      [(WCM_CellularController *)v3 ulBandwidth];
      v19 = v18;
      [(WCM_CellularController *)v3 ulCenterFreq];
      v21 = v20;
      [(WCM_CellularController *)v3 ulBandwidth];
      v23 = v22;
      if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"EnableULCA"])
      {
        v24 = v17 - v19 * 0.5;
        v25 = v21 + v23 * 0.5;
      }

      else
      {
        [(WCM_CellularController *)v3 getCombinedUplinkFreqRange];
        v25 = v24 + v26;
      }

      v27 = v25 >= 2305.0;
      if (v24 > 2315.0)
      {
        v27 = 0;
      }

      v7 |= v27;
    }
  }

  if (self->_pencilCoexActive == (v7 & 1))
  {
    [WCM_Logging logLevel:2 message:@"YYDebug_ No need to update pencil coex activation condition. Current condition is %d", self->_pencilCoexActive];
  }

  else
  {
    self->_pencilCoexActive = v7 & 1;
    self->_enablePencilCoexTDDProfile = v7 & 1;
    [WCM_Logging logLevel:2 message:@"YYDebug_ Need to update pencil coex activation condition to %d", v7 & 1];
  }
}

- (void)getUpdatedWifiAntennaSelectionEnhConfigsWithbmWifiEnhAntTx000:(unsigned __int16 *)a3 bmWiFiEnhAntTx001:(unsigned __int16 *)a4 bmWiFiEnhAntTx010:(unsigned __int16 *)a5 bmWiFiEnhAntTx011:(unsigned __int16 *)a6 bmWiFiEnhAntTx100:(unsigned __int16 *)a7 bmWiFiEnhAntTx101:(unsigned __int16 *)a8 bmWiFiEnhAntTx110:(unsigned __int16 *)a9 bmWiFiEnhAntTx111:(unsigned __int16 *)a10 bmWiFiBand:(unsigned __int16 *)a11
{
  v17 = [(WCM_PolicyManager *)self platformManager];
  v18 = [(WCM_PolicyManager *)self cellularController];
  if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState]< 2)
  {
    goto LABEL_47;
  }

  [(WCM_CellularController *)v18 dlCenterFreq];
  if (v19 == 0.0)
  {
    goto LABEL_47;
  }

  [(WCM_CellularController *)v18 dlBandwidth];
  if (v20 == 0.0)
  {
    goto LABEL_47;
  }

  [(WCM_CellularController *)v18 ulCenterFreq];
  if (v21 == 0.0)
  {
    return;
  }

  [(WCM_CellularController *)v18 ulBandwidth];
  if (v22 == 0.0)
  {
    return;
  }

  v47 = [(WCM_CellularController *)v18 bandInfoType];
  [(WCM_CellularController *)v18 dlCenterFreq];
  v24 = v23;
  [(WCM_CellularController *)v18 dlBandwidth];
  v26 = v24 - v25 * 0.5;
  [(WCM_CellularController *)v18 dlCenterFreq];
  v28 = v27;
  [(WCM_CellularController *)v18 dlBandwidth];
  v30 = v28 + v29 * 0.5;
  [(WCM_CellularController *)v18 ulCenterFreq];
  v32 = v31;
  [(WCM_CellularController *)v18 ulBandwidth];
  v34 = v32 - v33 * 0.5;
  [(WCM_CellularController *)v18 ulCenterFreq];
  v36 = v35;
  [(WCM_CellularController *)v18 ulBandwidth];
  v38 = v36 + v37 * 0.5;
  [WCM_Logging logLevel:2 message:@"YYDebug_ configure wifi antenna selection with ul freq = (%f, %f) and dl freq = (%f, %f) ", *&v34, *&v38, *&v26, *&v30];
  if (![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"EnableULCA"])
  {
    [(WCM_CellularController *)v18 getCombinedUplinkFreqRange];
    v34 = v39;
    v38 = v39 + v40;
  }

  v49[0] = 0;
  if (![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
  {
    v43 = @"YYDebug_ updating wifi antenna selection for Enh without WiFiEnhCoexSupport";
LABEL_46:
    [WCM_Logging logLevel:0 message:v43];
    goto LABEL_47;
  }

  v41 = [(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v17 wcmWiFiCellCoexIssueTable] findWiFiAntennaOrCellTxPowerConstraintWiFiEnhCoexIssueByCellBandInfoType:v47 cellDlLowFreq:[(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiChannel] cellDlHighFreq:[(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] channelCenterFreqMHz] cellUlLowFreq:[(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] channelBandwidthMHz] cellUlHighFreq:[(WCM_PolicyManager *)self gpsRadioActive] wifiChannel:v49 + 1 wifiCenterFreq:v26 wifiBandwidth:v30 gpsRadioActive:v34 wifiAntennaConstraint:v38 cellTxPowerConstraint:v49];
  if (!v41 || HIBYTE(v49[0]) != 1)
  {
    goto LABEL_47;
  }

  v42 = v41;
  if (![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"AntennaSelectionV2Coex"]|| ![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
  {
    v43 = @"YYDebug_ unhandled antenna selection case in Enh antenna selection";
    goto LABEL_46;
  }

  if ([v42 wifiUlAntennaBitmapOnCellAntBitmap000])
  {
    [WCM_Logging logLevel:3 message:@"WiFiEnh_: apply WiFi UL antenna constraint for Cellular Antenna Bitmap 000"];
    *a3 |= ([v42 wifiUlAntennaBitmapOnCellAntBitmap000] << 6) | 0x800;
  }

  if ([v42 wifiUlAntennaBitmapOnCellAntBitmap001])
  {
    [WCM_Logging logLevel:3 message:@"WiFiEnh_: apply WiFi UL antenna constraint for Cellular Antenna bitmap 001"];
    *a4 |= ([v42 wifiUlAntennaBitmapOnCellAntBitmap001] << 6) | 0x800;
  }

  if ([v42 wifiUlAntennaBitmapOnCellAntBitmap010])
  {
    [WCM_Logging logLevel:3 message:@"WiFiEnh_: apply WiFi UL antenna constraint for Cellular Antenna bitmap 010"];
    *a5 |= ([v42 wifiUlAntennaBitmapOnCellAntBitmap010] << 6) | 0x800;
  }

  if ([v42 wifiUlAntennaBitmapOnCellAntBitmap011])
  {
    [WCM_Logging logLevel:3 message:@"WiFiEnh_: apply WiFi UL antenna constraint for Cellular Antenna bitmap 011"];
    *a6 |= ([v42 wifiUlAntennaBitmapOnCellAntBitmap011] << 6) | 0x800;
  }

  if ([v42 wifiUlAntennaBitmapOnCellAntBitmap100])
  {
    [WCM_Logging logLevel:3 message:@"WiFiEnh_: apply WiFi UL antenna constraint for Cellular Antenna bitmap 100"];
    *a7 |= ([v42 wifiUlAntennaBitmapOnCellAntBitmap100] << 6) | 0x800;
  }

  if ([v42 wifiUlAntennaBitmapOnCellAntBitmap101])
  {
    [WCM_Logging logLevel:3 message:@"WiFiEnh_: apply WiFi UL antenna constraint for Cellular Antenna bitmap 101"];
    *a8 |= ([v42 wifiUlAntennaBitmapOnCellAntBitmap101] << 6) | 0x800;
  }

  if ([v42 wifiUlAntennaBitmapOnCellAntBitmap110])
  {
    [WCM_Logging logLevel:3 message:@"WiFiEnh_: apply WiFi UL antenna constraint for Cellular Antenna bitmap 110"];
    *a9 |= ([v42 wifiUlAntennaBitmapOnCellAntBitmap110] << 6) | 0x800;
  }

  if ([v42 wifiUlAntennaBitmapOnCellAntBitmap111])
  {
    [WCM_Logging logLevel:3 message:@"WiFiEnh_: apply WiFi UL antenna constraint for Cellular Antenna bitmap 111"];
    *a10 |= ([v42 wifiUlAntennaBitmapOnCellAntBitmap111] << 6) | 0x800;
  }

  if ([v42 wifiDlAntennaBitmapOnCellAntBitmap000])
  {
    [WCM_Logging logLevel:3 message:@"WiFiEnh_: apply WiFi DL antenna constraint for Cellular Antenna Bitmap 000"];
    *a3 |= [v42 wifiDlAntennaBitmapOnCellAntBitmap000] | 0x20;
  }

  if ([v42 wifiDlAntennaBitmapOnCellAntBitmap001])
  {
    [WCM_Logging logLevel:3 message:@"WiFiEnh_: apply WiFi DL antenna constraint for Cellular Antenna bitmap 001"];
    *a4 |= [v42 wifiDlAntennaBitmapOnCellAntBitmap001] | 0x20;
  }

  if ([v42 wifiDlAntennaBitmapOnCellAntBitmap010])
  {
    [WCM_Logging logLevel:3 message:@"WiFiEnh_: apply WiFi DL antenna constraint for Cellular Antenna bitmap 010"];
    *a5 |= [v42 wifiDlAntennaBitmapOnCellAntBitmap010] | 0x20;
  }

  if ([v42 wifiDlAntennaBitmapOnCellAntBitmap011])
  {
    [WCM_Logging logLevel:3 message:@"WiFiEnh_: apply WiFi DL antenna constraint for Cellular Antenna bitmap 011"];
    *a6 |= [v42 wifiDlAntennaBitmapOnCellAntBitmap011] | 0x20;
  }

  if ([v42 wifiDlAntennaBitmapOnCellAntBitmap100])
  {
    [WCM_Logging logLevel:3 message:@"WiFiEnh_: apply WiFi DL antenna constraint for Cellular Antenna bitmap 100"];
    *a7 |= [v42 wifiDlAntennaBitmapOnCellAntBitmap100] | 0x20;
  }

  if ([v42 wifiDlAntennaBitmapOnCellAntBitmap101])
  {
    [WCM_Logging logLevel:3 message:@"WiFiEnh_: apply WiFi DL antenna constraint for Cellular Antenna bitmap 101"];
    *a8 |= [v42 wifiDlAntennaBitmapOnCellAntBitmap101] | 0x20;
  }

  if ([v42 wifiDlAntennaBitmapOnCellAntBitmap110])
  {
    [WCM_Logging logLevel:3 message:@"WiFiEnh_: apply WiFi DL antenna constraint for Cellular Antenna bitmap 110"];
    *a9 |= [v42 wifiDlAntennaBitmapOnCellAntBitmap110] | 0x20;
  }

  if ([v42 wifiDlAntennaBitmapOnCellAntBitmap111])
  {
    [WCM_Logging logLevel:3 message:@"WiFiEnh_: apply WiFi DL antenna constraint for Cellular Antenna bitmap 111"];
    *a10 |= [v42 wifiDlAntennaBitmapOnCellAntBitmap111] | 0x20;
  }

LABEL_47:
  *a11 = 0;
  if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState]== 2)
  {
    v44 = 1;
LABEL_53:
    *a11 = v44;
    goto LABEL_54;
  }

  if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState]== 3)
  {
    v44 = 2;
    goto LABEL_53;
  }

  if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState]== 4)
  {
    v44 = 3;
    goto LABEL_53;
  }

LABEL_54:
  if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState])
  {
    if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState]== 1)
    {
      v45 = "ENABLED";
    }

    else if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState]== 2)
    {
      v45 = "ASSOCIATED_2G";
    }

    else if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState]== 3)
    {
      v45 = "ASSOCIATED_5G";
    }

    else
    {
      v46 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState];
      v45 = "INVALID_STATE!!!";
      if (v46 == 4)
      {
        v45 = "ASSOCIATED_6G";
      }
    }
  }

  else
  {
    v45 = "DISABLED";
  }

  [WCM_Logging logLevel:1 message:@"WiFiEnh_: with WiFi State (%s), calculated bmWiFiBand %d bitmaps 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x", v45, *a11, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10];
}

- (void)updateWifiAntennaSelectionV1V2Configs
{
  v3 = [(WCM_PolicyManager *)self platformManager];
  v4 = [(WCM_PolicyManager *)self cellularController];
  if (![(WCM_PlatformManager *)v3 wcmWiFiCellCoexIssueTable])
  {
    return;
  }

  if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState]< 2)
  {
    goto LABEL_18;
  }

  [(WCM_CellularController *)v4 dlCenterFreq];
  if (v5 == 0.0)
  {
    goto LABEL_18;
  }

  [(WCM_CellularController *)v4 dlBandwidth];
  if (v6 == 0.0)
  {
    goto LABEL_18;
  }

  [(WCM_CellularController *)v4 ulCenterFreq];
  if (v7 == 0.0)
  {
    return;
  }

  [(WCM_CellularController *)v4 ulBandwidth];
  if (v8 == 0.0)
  {
    return;
  }

  v9 = [(WCM_CellularController *)v4 bandInfoType];
  [(WCM_CellularController *)v4 dlCenterFreq];
  v94 = v10;
  [(WCM_CellularController *)v4 dlBandwidth];
  v12 = v11;
  [(WCM_CellularController *)v4 dlCenterFreq];
  v14 = v13;
  [(WCM_CellularController *)v4 dlBandwidth];
  v16 = v15;
  [(WCM_CellularController *)v4 ulCenterFreq];
  v18 = v17;
  [(WCM_CellularController *)v4 ulBandwidth];
  v20 = v19;
  [(WCM_CellularController *)v4 ulCenterFreq];
  v22 = v21;
  [(WCM_CellularController *)v4 ulBandwidth];
  v24 = v23;
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"EnableULCA"])
  {
    v25 = v18 - v20 * 0.5;
    v26 = v22 + v24 * 0.5;
  }

  else
  {
    [(WCM_CellularController *)v4 getCombinedUplinkFreqRange];
    v25 = v27;
    v26 = v27 + v28;
  }

  v96 = 0;
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
  {
    v29 = @"YYDebug_ executing v1/v2 wifi antenna selection in WiFiEnh platforms";
    v30 = 0;
  }

  else
  {
    v31 = [(WCM_WiFiCellCoexIssueBandTable *)[(WCM_PlatformManager *)v3 wcmWiFiCellCoexIssueTable] findWiFiAntennaOrCellTxPowerConstraintCoexIssueByCellBandInfoType:v9 cellDlLowFreq:[(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiChannel] cellDlHighFreq:[(WCM_PolicyManager *)self gpsRadioActive] cellUlLowFreq:&v96 + 1 cellUlHighFreq:&v96 wifiChannel:v94 - v12 * 0.5 gpsRadioActive:v14 + v16 * 0.5 wifiAntennaConstraint:v25 cellTxPowerConstraint:v26];
    if (!v31 || HIBYTE(v96) != 1)
    {
      goto LABEL_18;
    }

    v32 = v31;
    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"AntennaSelectionCoex"])
    {
      if ([v32 wifiUlAntennaBitmapOnCellLAT])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi UL antenna constraint for Cellular primary antenna"];
        v33 = [v32 wifiUlAntennaBitmapOnCellLAT];
        v34 = (v33 << 7) | 0x2000;
        v35 = (v33 << 7) | 0xA000;
      }

      else
      {
        v34 = 0;
        v35 = 0x8000;
      }

      if ([v32 wifiUlAntennaBitmapOnCellUAT])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi UL antenna constraint for Cellular secondary antenna"];
        v53 = [v32 wifiUlAntennaBitmapOnCellUAT] << 7;
        v41 = v53 | 0x6000;
        v40 = v53 | 0xE000;
      }

      else
      {
        v41 = 0x4000;
        v40 = -16384;
      }

      if ([v32 wifiDlAntennaBitmapOnCellLAT])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi DL antenna constraint for Cellular primary antenna"];
        v54 = [v32 wifiDlAntennaBitmapOnCellLAT];
        v34 = v34 | v54 | 0x40;
        v35 |= v54 | 0x40;
      }

      if ([v32 wifiDlAntennaBitmapOnCellUAT])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi DL antenna constraint for Cellular secondary antenna"];
        v55 = [v32 wifiDlAntennaBitmapOnCellUAT];
        v36 = 0;
        v41 = v41 | v55 | 0x40;
        v40 |= v55 | 0x40;
      }

      else
      {
        v36 = 0;
      }

      v95 = -4096;
      v90 = -8192;
      v91 = -12288;
      v93 = -16384;
      v92 = -20480;
      v37 = -24576;
      v38 = -28672;
      v89 = 0x8000;
      v82 = 28672;
      v83 = 24576;
      LODWORD(v32) = 0x4000;
      LODWORD(v39) = 12288;
      v84 = 20480;
      v85 = 0x2000;
      v87 = 4096;
      goto LABEL_20;
    }

    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"AntennaSelectionV1_1Coex"])
    {
      if ([v32 wifiUlAntennaBitmapOnCellLAT])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi UL antenna constraint for Cellular primary antenna"];
        v51 = [v32 wifiUlAntennaBitmapOnCellLAT];
        v36 = (v51 << 6) | 0x800;
        v52 = (v51 << 6) | 0x8800;
      }

      else
      {
        v36 = 0;
        v52 = 0x8000;
      }

      if ([v32 wifiUlAntennaBitmapOnCellUAT])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi UL antenna constraint for Cellular secondary antenna"];
        v56 = [v32 wifiUlAntennaBitmapOnCellUAT];
        v57 = (v56 << 6) | 0x1800;
        v38 = (v56 << 6) | 0x9800;
      }

      else
      {
        v38 = -28672;
        v57 = 4096;
      }

      if ([v32 wifiDlAntennaBitmapOnCellLAT])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi DL antenna constraint for Cellular primary antenna"];
        v58 = [v32 wifiDlAntennaBitmapOnCellLAT] | 0x20;
        v36 |= v58;
        v52 |= v58;
      }

      v89 = v52;
      if ([v32 wifiDlAntennaBitmapOnCellUAT])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi DL antenna constraint for Cellular secondary antenna"];
        v59 = [v32 wifiDlAntennaBitmapOnCellUAT];
        v34 = 0;
        v87 = v57 | v59 | 0x20;
        v38 |= v59 | 0x20;
      }

      else
      {
        v87 = v57;
        v34 = 0;
      }

      v35 = 0x8000;
      v95 = -4096;
      v90 = -8192;
      v91 = -12288;
      v92 = -20480;
      v37 = -24576;
      v82 = 28672;
      v83 = 24576;
      LODWORD(v32) = 0x4000;
      LODWORD(v39) = 12288;
      v84 = 20480;
      v85 = 0x2000;
      v40 = -16384;
      v93 = -16384;
      goto LABEL_19;
    }

    if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"AntennaSelectionV2Coex"]&& ![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
    {
      if ([v32 wifiUlAntennaBitmapOnCellAntBitmap000])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi UL antenna constraint for Cellular Antenna Bitmap 000"];
        v60 = [v32 wifiUlAntennaBitmapOnCellAntBitmap000];
        v36 = (v60 << 6) | 0x800;
        v61 = (v60 << 6) | 0x8800;
      }

      else
      {
        v36 = 0;
        v61 = 0x8000;
      }

      v89 = v61;
      if ([v32 wifiUlAntennaBitmapOnCellAntBitmap001])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi UL antenna constraint for Cellular Antenna bitmap 001"];
        v62 = [v32 wifiUlAntennaBitmapOnCellAntBitmap001];
        v63 = (v62 << 6) | 0x1800;
        v38 = (v62 << 6) | 0x9800;
      }

      else
      {
        v38 = -28672;
        v63 = 4096;
      }

      if ([v32 wifiUlAntennaBitmapOnCellAntBitmap010])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi UL antenna constraint for Cellular Antenna bitmap 010"];
        v64 = [v32 wifiUlAntennaBitmapOnCellAntBitmap010];
        v85 = (v64 << 6) | 0x2800;
        v37 = (v64 << 6) | 0xA800;
      }

      else
      {
        v37 = -24576;
        v85 = 0x2000;
      }

      v87 = v63;
      if ([v32 wifiUlAntennaBitmapOnCellAntBitmap011])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi UL antenna constraint for Cellular Antenna bitmap 011"];
        v65 = [v32 wifiUlAntennaBitmapOnCellAntBitmap011];
        LODWORD(v39) = (v65 << 6) | 0x3800;
        v66 = (v65 << 6) | 0xB800;
      }

      else
      {
        v66 = -20480;
        LODWORD(v39) = 12288;
      }

      if ([v32 wifiUlAntennaBitmapOnCellAntBitmap100])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi UL antenna constraint for Cellular Antenna bitmap 100"];
        v67 = [v32 wifiUlAntennaBitmapOnCellAntBitmap100];
        v68 = v32;
        LODWORD(v32) = (v67 << 6) | 0x4800;
        v93 = (v67 << 6) | 0xC800;
      }

      else
      {
        v93 = -16384;
        v68 = v32;
        LODWORD(v32) = 0x4000;
      }

      if ([v68 wifiUlAntennaBitmapOnCellAntBitmap101])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi UL antenna constraint for Cellular Antenna bitmap 101"];
        v69 = [v68 wifiUlAntennaBitmapOnCellAntBitmap101];
        v84 = (v69 << 6) | 0x5800;
        v70 = (v69 << 6) | 0xD800;
      }

      else
      {
        v70 = -12288;
        v84 = 20480;
      }

      if ([v68 wifiUlAntennaBitmapOnCellAntBitmap110])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi UL antenna constraint for Cellular Antenna bitmap 110"];
        v71 = [v68 wifiUlAntennaBitmapOnCellAntBitmap110];
        v83 = (v71 << 6) | 0x6800;
        v72 = (v71 << 6) | 0xE800;
      }

      else
      {
        v72 = -8192;
        v83 = 24576;
      }

      if ([v68 wifiUlAntennaBitmapOnCellAntBitmap111])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi UL antenna constraint for Cellular Antenna bitmap 111"];
        v73 = [v68 wifiUlAntennaBitmapOnCellAntBitmap111];
        v82 = (v73 << 6) | 0x7800;
        v95 = (v73 << 6) | 0xF800;
      }

      else
      {
        v95 = -4096;
        v82 = 28672;
      }

      if ([v68 wifiDlAntennaBitmapOnCellAntBitmap000])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi DL antenna constraint for Cellular Antenna Bitmap 000"];
        v74 = [v68 wifiDlAntennaBitmapOnCellAntBitmap000] | 0x20;
        v36 |= v74;
        v89 |= v74;
      }

      if ([v68 wifiDlAntennaBitmapOnCellAntBitmap001])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi DL antenna constraint for Cellular Antenna bitmap 001"];
        v75 = [v68 wifiDlAntennaBitmapOnCellAntBitmap001] | 0x20;
        v87 |= v75;
        v38 |= v75;
      }

      if ([v68 wifiDlAntennaBitmapOnCellAntBitmap010])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi DL antenna constraint for Cellular Antenna bitmap 010"];
        v76 = [v68 wifiDlAntennaBitmapOnCellAntBitmap010] | 0x20;
        v85 |= v76;
        v37 |= v76;
      }

      if ([v68 wifiDlAntennaBitmapOnCellAntBitmap011])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi DL antenna constraint for Cellular Antenna bitmap 011"];
        v77 = [v68 wifiDlAntennaBitmapOnCellAntBitmap011] | 0x20;
        LODWORD(v39) = v39 | v77;
        v66 |= v77;
      }

      if ([v68 wifiDlAntennaBitmapOnCellAntBitmap100])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi DL antenna constraint for Cellular Antenna bitmap 100"];
        v78 = [v68 wifiDlAntennaBitmapOnCellAntBitmap100] | 0x20;
        LODWORD(v32) = v32 | v78;
        v93 |= v78;
      }

      if ([v68 wifiDlAntennaBitmapOnCellAntBitmap101])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi DL antenna constraint for Cellular Antenna bitmap 101"];
        v79 = [v68 wifiDlAntennaBitmapOnCellAntBitmap101] | 0x20;
        v84 |= v79;
        v70 |= v79;
      }

      if ([v68 wifiDlAntennaBitmapOnCellAntBitmap110])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi DL antenna constraint for Cellular Antenna bitmap 110"];
        v80 = [v68 wifiDlAntennaBitmapOnCellAntBitmap110] | 0x20;
        v83 |= v80;
        v72 |= v80;
      }

      v90 = v72;
      v91 = v70;
      v92 = v66;
      if ([v68 wifiDlAntennaBitmapOnCellAntBitmap111])
      {
        [WCM_Logging logLevel:3 message:@"apply WiFi DL antenna constraint for Cellular Antenna bitmap 111"];
        v81 = [v68 wifiDlAntennaBitmapOnCellAntBitmap111];
        v34 = 0;
        v82 |= v81 | 0x20;
        v95 |= v81 | 0x20;
      }

      else
      {
        v34 = 0;
      }

      v41 = 0x4000;
      v35 = 0x8000;
      v40 = -16384;
      goto LABEL_20;
    }

    v29 = @"YYDebug_ WiFi antenna selection is not supported";
    v30 = 2;
  }

  [WCM_Logging logLevel:v30 message:v29];
LABEL_18:
  v36 = 0;
  v34 = 0;
  v95 = -4096;
  v90 = -8192;
  v91 = -12288;
  v92 = -20480;
  v37 = -24576;
  v38 = -28672;
  v89 = 0x8000;
  v82 = 28672;
  v83 = 24576;
  LODWORD(v32) = 0x4000;
  LODWORD(v39) = 12288;
  v84 = 20480;
  v85 = 0x2000;
  v87 = 4096;
  v40 = -16384;
  v93 = -16384;
  v35 = 0x8000;
LABEL_19:
  v41 = 0x4000;
LABEL_20:
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"AntennaSelectionCoex"])
  {
    [WCM_Logging logLevel:3 message:@"Trying to update antenna selection bitmaps 0x%x 0x%x 0x%x 0x%x", v34, v41, v35, v40];
    v42 = [(WCM_PolicyManager *)self wifiController];
    v98[0] = [NSNumber numberWithUnsignedShort:v34];
    v98[1] = [NSNumber numberWithUnsignedShort:v41];
    v98[2] = [NSNumber numberWithUnsignedShort:v35];
    v98[3] = [NSNumber numberWithUnsignedShort:v40];
    [(WCM_WiFiController *)v42 updateAntennaSelection:[NSArray arrayWithObjects:v98 count:4]];
  }

  else if (([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"AntennaSelectionV2Coex"]|| [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"AntennaSelectionV1_1Coex"]) && ![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
  {
    if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState]== 2)
    {
      v95 = -4096;
      v90 = -8192;
      v91 = -12288;
      v93 = -16384;
      v92 = -20480;
      v37 = -24576;
      v38 = -28672;
      v89 = 0x8000;
    }

    v43 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState];
    if (v43 == 3)
    {
      v44 = 0;
    }

    else
    {
      v44 = v36;
    }

    if (v43 == 3)
    {
      v45 = 4096;
    }

    else
    {
      v45 = v87;
    }

    if (v43 == 3)
    {
      v46 = 0x2000;
    }

    else
    {
      v46 = v85;
    }

    if (v43 == 3)
    {
      v39 = 12288;
    }

    else
    {
      v39 = v39;
    }

    if (v43 == 3)
    {
      v32 = 0x4000;
    }

    else
    {
      v32 = v32;
    }

    if (v43 == 3)
    {
      v47 = 20480;
    }

    else
    {
      v47 = v84;
    }

    if (v43 == 3)
    {
      v48 = 24576;
    }

    else
    {
      v48 = v83;
    }

    if (v43 == 3)
    {
      v49 = 28672;
    }

    else
    {
      v49 = v82;
    }

    v86 = v48;
    v88 = v49;
    [WCM_Logging logLevel:1 message:@"Trying to update antenna selection V2 bitmaps 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x", v44, v45, v46, v39, v32, v47, v48, v49, v89, v38, v37, v92, v93, v91, v90, v95];
    v50 = [(WCM_PolicyManager *)self wifiController];
    v97[0] = [NSNumber numberWithUnsignedShort:v44];
    v97[1] = [NSNumber numberWithUnsignedShort:v45];
    v97[2] = [NSNumber numberWithUnsignedShort:v46];
    v97[3] = [NSNumber numberWithUnsignedShort:v39];
    v97[4] = [NSNumber numberWithUnsignedShort:v32];
    v97[5] = [NSNumber numberWithUnsignedShort:v47];
    v97[6] = [NSNumber numberWithUnsignedShort:v86];
    v97[7] = [NSNumber numberWithUnsignedShort:v88];
    v97[8] = [NSNumber numberWithUnsignedShort:v89];
    v97[9] = [NSNumber numberWithUnsignedShort:v38];
    v97[10] = [NSNumber numberWithUnsignedShort:v37];
    v97[11] = [NSNumber numberWithUnsignedShort:v92];
    v97[12] = [NSNumber numberWithUnsignedShort:v93];
    v97[13] = [NSNumber numberWithUnsignedShort:v91];
    v97[14] = [NSNumber numberWithUnsignedShort:v90];
    v97[15] = [NSNumber numberWithUnsignedShort:v95];
    [(WCM_WiFiController *)v50 updateAntennaSelectionV2:[NSArray arrayWithObjects:v97 count:16]];
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"YYDebug_ WiFi antenna selection is not supported"];
  }
}

- (void)configureBTAntennaSelection
{
  [WCM_Logging logLevel:2 message:@"BTAntennaSelection_ configureBTAntennaSelection: BT power state = %d, ", [(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState]];
  if (self->_pencilCoexActive)
  {
    v3 = [(WCM_PolicyManager *)self getBtBlockedAntennaForPencilCoexByPlatform];
    [WCM_Logging logLevel:2 message:@"BTAntennaSelection_ enable BT pencil coex mitigation config"];
    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updatePencilCoexAntennaSelectionPolicy:1 param1:v3 param2:v3];
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"BTAntennaSelection_ disable BT pencil coex mitigation config"];
    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updatePencilCoexAntennaSelectionPolicy:0 param1:0 param2:0];
    v3 = 0;
  }

  [WCM_Logging logLevel:2 message:@"BTAntennaSelection_ sending parameters to thread"];
  v4 = [(WCM_RCU2Controller *)[(WCM_PolicyManager *)self rcu2Controller] threadClient];

  [(WCM_CtrXPCClient *)v4 updateAntennaPreference:v3];
}

- (void)handleWiFiPowerStateChange
{
  v3 = [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState];
  v4 = "off";
  if (v3)
  {
    v4 = "on";
  }

  [WCM_Logging logLevel:5 message:@"WCM_PolicyManager: handleWiFiPowerStateChange - Updating policy for WiFi power %s", v4];
  v5 = [(WCM_PolicyManager *)self cellularController];
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"UseWCMAriDriver"])
  {
    [(WCM_PolicyManager *)self setWifi2GChanelBitmapForTimesharing:0];
    [(WCM_PolicyManager *)self configureTimeSharingWifiChannels];
  }

  else
  {
    [(WCM_PolicyManager *)self configureForLTECDRXWiFiTimeSharing];
  }

  if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState]|| [(WCM_BTController *)[(WCM_PolicyManager *)self btController] powerState])
  {
    [(WCM_CellularController *)v5 updateWCI2CoexPolicy:[(WCM_PolicyManager *)self cellularWCI2CoexPolicyBitmap]];
    [(WCM_PolicyManager *)self sendRCU2UpdateMessage];
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] && -[WCM_WiFiController powerState](-[WCM_PolicyManager wifiController](self, "wifiController"), "powerState"))
  {
    [WCM_Logging logLevel:4 message:@"2nd place self.wifiAgcCoexModeLevel is %d", [(NSNumber *)[(WCM_PolicyManager *)self wifiAgcCoexModeLevel] intValue]];
    [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] setWifiAgcCoexMode:[(WCM_PolicyManager *)self wifiAgcCoexModeLevel]];
  }

  if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState])
  {
    [(WCM_PolicyManager *)self updateWiFiBTConnectionReport];
  }

  else
  {
    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateWiFiChannelInfo:0 bandwidth:0 regBand:0];
  }

  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"Wlan25aAccessoryCnvCoTxSupport"]&& [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState])
  {
    [WCM_Logging logLevel:2 message:@"updateCellularPencilCoex due to WiFi power On"];
    [(WCM_PolicyManager *)self updateCellularPencilCoex_TriggeredByPowerOnEvent:1];
  }

  [(WCM_PolicyManager *)self handleWiFiConfigChange];
}

- (BOOL)isWiFiChannel:(int)a3 inChannelMap:(id)a4
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a4);
        }

        if ([*(*(&v11 + 1) + 8 * v9) intValue] == a3)
        {
          LOBYTE(v6) = 1;
          return v6;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v6 = [a4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (id)legacyWiFiChannelsToAvoidForIMD2GPS
{
  v3 = +[NSMutableArray array];
  if ([(WCM_PolicyManager *)self isCellularOnGPSIMDBand])
  {
    LODWORD(v4) = 0;
    do
    {
      v5 = [(WCM_PolicyManager *)self platformManager];
      [(WCM_CellularController *)[(WCM_PolicyManager *)self cellularController] cachedULCenterFreq];
      v7 = v6;
      [(WCM_CellularController *)[(WCM_PolicyManager *)self cellularController] cachedULBandwidth];
      if ([(WCM_PlatformManager *)v5 isIMD2ForFirstFreq:v7 firstBW:v8 secondFreq:(5 * v4 + 2412) secondBW:20.0 resultantFreq:1575.42 resultantBW:4.092])
      {
        v4 = (v4 + 1);
        [v3 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v4)}];
      }

      else
      {
        LODWORD(v4) = v4 + 1;
      }
    }

    while (v4 != 13);
  }

  [WCM_Logging logLevel:4 message:@"Block Listed Channels for IMD2 GPS: %@", v3];
  return v3;
}

- (id)legacyWiFiChannelsToAvoidFor3FoWiFi
{
  v3 = +[NSMutableArray array];
  if ([(WCM_PolicyManager *)self isCellularOnWiFi3FoBand])
  {
    LODWORD(v4) = 0;
    do
    {
      v5 = [(WCM_PolicyManager *)self platformManager];
      [(WCM_CellularController *)[(WCM_PolicyManager *)self cellularController] cachedULCenterFreq];
      v7 = v6;
      [(WCM_CellularController *)[(WCM_PolicyManager *)self cellularController] cachedULBandwidth];
      if ([(WCM_PlatformManager *)v5 is3FoForFreq:v7 bw:v8 resultantFreq:(5 * v4 + 2412) resultantBW:20.0])
      {
        v4 = (v4 + 1);
        [v3 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v4)}];
      }

      else
      {
        LODWORD(v4) = v4 + 1;
      }
    }

    while (v4 != 13);
  }

  [WCM_Logging logLevel:4 message:@"Block Listed Channels for 3Fo WiFi: %@", v3];
  return v3;
}

- (id)legacyWiFiChannelsToAvoidForIMD3Cell
{
  v3 = [(WCM_PolicyManager *)self cellularController];
  v4 = +[NSMutableArray array];
  if ([(WCM_PolicyManager *)self isCellularOnIMD3CellBand])
  {
    [(WCM_CellularController *)v3 cachedULCenterFreq];
    v6 = v5;
    [(WCM_CellularController *)v3 cachedULBandwidth];
    v8 = v7;
    [(WCM_CellularController *)v3 dlCenterFreq];
    v10 = v9;
    [(WCM_CellularController *)v3 dlBandwidth];
    v12 = v11;
    [WCM_Logging logLevel:4 message:@"Find Block Listed Channels for IMD3 Cell UlCenterFreq(%lf) UlBandwidth(%lf) DlCenterFreq(%lf) DlBandwidth(%lf)", *&v6, *&v8, *&v10, *&v11];
    LODWORD(v3) = 0;
    do
    {
      if ([(WCM_PlatformManager *)[(WCM_PolicyManager *)self platformManager] isIMD3ForFirstFreq:v6 firstBW:v8 secondFreq:(5 * v3 + 2412) secondBW:20.0 resultantFreq:v10 resultantBW:v12])
      {
        v3 = (v3 + 1);
        [v4 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v3)}];
      }

      else
      {
        LODWORD(v3) = v3 + 1;
      }
    }

    while (v3 != 13);
    if (sub_100010258(v4))
    {
      if (v6 >= 2550.0)
      {
        v13 = &off_100271688;
      }

      else
      {
        v13 = &off_100271778;
      }

      [v4 removeObject:v13];
      [WCM_Logging logLevel:4 message:@"removing channel %@ for UlCenterFreq %lf", v13, *&v6];
    }
  }

  [WCM_Logging logLevel:4 message:@"Block Listed Channels for IMD3 Cell: %@", v4];
  return v4;
}

- (void)configureWCI2BitmapForTimeSharingWifiChannels:(id)a3
{
  [WCM_Logging logLevel:4 message:@"configureWCI2BitmapForTimeSharingWifiChannels: %@", a3];
  if (a3 && ![(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WLAN25ASupport"]&& [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WlanConditionId"]&& [(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] powerState])
  {
    v5 = [NSMutableArray arrayWithArray:a3];
    v6 = [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"];
    v7 = [(WCM_PolicyManager *)self wifiController];
    v8 = v7;
    if (v6)
    {
      [(WCM_PolicyManager *)self wifiChannelsToEnableWCI2WiFiEnh];

      [(WCM_WiFiController *)v8 updateChannelsToEnableWCI2WiFiEnh:v5 WiFiEnhChannels:?];
    }

    else
    {

      [(WCM_WiFiController *)v7 updateChannelsToEnableWCI2V2:v5];
    }
  }
}

- (void)configureTimeSharingWifiChannels
{
  v2 = self;
  v3 = [(WCM_PolicyManager *)self platformManager];
  v4 = [(WCM_PolicyManager *)v2 cellularController];
  v5 = [(WCM_CellularController *)v4 getActiveULCAConfig];
  v6 = [(WCM_PlatformManager *)v3 wcmCellularTimesharingPolicy];
  if (!v5)
  {
    var1 = 0;
    goto LABEL_13;
  }

  var1 = v5->var1;
  if (!var1)
  {
LABEL_13:
    v20 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  p_var4 = &v5->var0[0].var4;
  v7 = 0.5;
  do
  {
    if (*p_var4)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(p_var4 + 8) == 1;
    }

    if (v14)
    {
      v15 = *(p_var4 - 2);
      v16 = *(p_var4 - 1) * 0.5;
      v9 = 1000 * (v15 - v16);
      v17 = (v15 + v16);
      v18 = *(p_var4 - 4);
      v19 = *(p_var4 - 3) * 0.5;
      v10 = 1000 * v17;
      v11 = 1000 * (v18 - v19);
      v12 = 1000 * (v18 + v19);
    }

    p_var4 += 9;
    --var1;
  }

  while (var1);
  v20 = v11 / 0x3E8uLL;
  var1 = v12 / 0x3E8uLL;
LABEL_14:
  [WCM_Logging logLevel:4 message:@"Cellular/WiFi TimeSharing: Configure wifi channels for LTE PCell dlFreqLow = %dMHz, dlFreqHigh = %dMHz, ulFreqLow = %dMHz, ulFreqHigh = %dMHz", v7, v9 / 0x3E8uLL, v10 / 0x3E8uLL, v20, var1];
  v21 = objc_alloc_init(NSMutableArray);
  if (!v6 || ![(NSArray *)v6 count])
  {
    v35 = @"Cellular/WiFi TimeSharing:  No TimeSharing policy, WiFi channel is not configured";
LABEL_45:
    [WCM_Logging logLevel:4 message:v35];
    goto LABEL_46;
  }

  if ([(WCM_CellularController *)v4 tddBand])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v22 = [(NSArray *)v6 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v39;
      v36 = v2;
      obj = v6;
      while (2)
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v39 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v38 + 1) + 8 * i);
          v27 = [objc_msgSend(v26 objectAtIndex:{0), "unsignedIntegerValue"}];
          v28 = [objc_msgSend(v26 objectAtIndex:{1), "unsignedIntegerValue"}];
          v29 = [objc_msgSend(v26 objectAtIndex:{2), "unsignedIntegerValue"}];
          v30 = [objc_msgSend(v26 objectAtIndex:{3), "unsignedIntegerValue"}];
          v31 = v30;
          if ((v9 < v27 || v9 >= v28) && (v10 <= v27 || v10 > v28))
          {
            continue;
          }

          if (v29 <= v30)
          {
            LODWORD(v34) = 0;
            do
            {
              [v21 addObject:{+[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", v29)}];
              v34 = (1 << v29++) | v34;
            }

            while (v29 <= v31);
          }

          else
          {
            v34 = 0;
          }

          [WCM_Logging logLevel:4 message:@"Cellular/WiFi TimeSharing:  TimeSharing enable = %d", 1];
          v2 = v36;
          goto LABEL_41;
        }

        v23 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        v2 = v36;
        if (v23)
        {
          continue;
        }

        break;
      }
    }
  }

  [WCM_Logging logLevel:4 message:@"Cellular/WiFi TimeSharing:  TimeSharing enable = %d", 0];
  [v21 addObject:{+[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", 0)}];
  v34 = 0;
LABEL_41:
  if ([(WCM_PolicyManager *)v2 wifi2GChanelBitmapForTimesharing]== v34 || ![(WCM_WiFiController *)[(WCM_PolicyManager *)v2 wifiController] powerState])
  {
    v35 = @"Cellular/WiFi TimeSharing:  No change of WiFi channel config for TimeSharing";
    goto LABEL_45;
  }

  [(WCM_PolicyManager *)v2 setWifi2GChanelBitmapForTimesharing:v34];
  [WCM_Logging logLevel:4 message:@"Cellular/WiFi TimeSharing:  Configure WiFi channel for TimeSharing: %@", v21];
  [(WCM_WiFiController *)[(WCM_PolicyManager *)v2 wifiController] updateChannelsForTimeSharingMode:v21];
  [(WCM_PolicyManager *)v2 configureWCI2BitmapForTimeSharingWifiChannels:v21];
LABEL_46:
}

- (void)handleMedtronicConnection
{
  [WCM_Logging logLevel:4 message:@"External : In handleMBTConnection; connection status = %d", [(WCM_ExternalAccessory *)self->_extAccessory eaConnection]];
  v3 = [(WCM_PolicyManager *)self wifiController];
  v4 = [(WCM_ExternalAccessory *)self->_extAccessory eaConnection];

  [(WCM_WiFiController *)v3 updateMedtronicState:v4];
}

- (void)handleCCConnectionUpdate
{
  [WCM_Logging logLevel:4 message:@"Sac Driver: handleCCConnectionUpdate"];
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"CTSacDriverNeedWiFiFreq"])
  {
    [(WCM_PolicyManager *)self setSacWifiFrequency:0];
    [(WCM_PolicyManager *)self updateCTSacDriverRemoveAllFrequenciesFromClient:1];
    [(WCM_PolicyManager *)self updateCTSacDriverWifiInfo];
  }

  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"CTSacDriverNeedGpsFreq"]|| [(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"AntennaTuningForGpsBB20"])
  {

    [(WCM_PolicyManager *)self updateGPSBandsInfo:0 CLUpdate:0];
  }
}

- (void)updateCTSacDriverWifiInfo
{
  v3 = [(WCM_PolicyManager *)self wifiController];
  v4 = [(WCM_WiFiController *)v3 wifiState];
  v5 = [(WCM_WiFiController *)v3 wifiChannel];
  v6 = [(WCM_WiFiController *)v3 reportedChannelCenterFreqMHz];
  v7 = objc_alloc_init(NSMutableArray);
  v13 = objc_alloc_init(NSMutableArray);
  [WCM_Logging logLevel:3 message:@"Sac Driver: updateCTSacDriverWifiInfo Wifi frequency details wifistate = %d channel = %d st.frequency = %d re.Frequency = %d recal.frequency = %d\n", v4, v5, self->_sacWifiFrequency, v6, [(WCM_WiFiController *)v3 channelCenterFreqMHz]];
  if ([(WCM_PolicyManager *)self sacWifiFrequency]!= v6)
  {
    if ([(WCM_PolicyManager *)self sacWifiFrequency])
    {
      v8 = [(WCM_PolicyManager *)self sacWifiFrequency];
      [(WCM_PolicyManager *)self setSacWifiFrequency:0];
      if (!v6)
      {
        v9 = 2;
        [WCM_Logging logLevel:3 message:@"Sac Driver: updateCTSacDriverWifiInfo-2 F.remove %d F.add %d Oper %d\n", v8, 0, 2];
        goto LABEL_11;
      }

      v9 = 3;
    }

    else
    {
      if (!v6)
      {
        [WCM_Logging logLevel:3 message:@"Sac Driver: updateCTSacDriverWifiInfo-2 F.remove %d F.add %d Oper %d\n", 0, 0, 0];
        goto LABEL_12;
      }

      v8 = 0;
      v9 = 1;
    }

    [v7 addObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v6)}];
    [v13 addObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", 20)}];
    [(WCM_PolicyManager *)self setSacWifiFrequency:v6];
    [WCM_Logging logLevel:3 message:@"Sac Driver: updateCTSacDriverWifiInfo-2 F.remove %d F.add %d Oper %d\n", v8, v6, v9];
LABEL_11:
    [(WCM_PolicyManager *)self updateCTSacDriver:v9 frequencyToAdd:v7 frequencyToAddBw:v13 frequencytoRemove:v8 client:1];
    goto LABEL_12;
  }

  [WCM_Logging logLevel:3 message:@"Sac Driver:_conditions did not match for initiating SAC access", v10, v11, v12];
LABEL_12:
  [v7 removeAllObjects];
  [v13 removeAllObjects];
}

- (void)updateCTSacDriverRemoveAllFromWifiClient
{
  if ([(WCM_PolicyManager *)self sacWifiFrequency])
  {
    [(WCM_PolicyManager *)self updateCTSacDriverRemoveAllFrequenciesFromClient:1];

    [(WCM_PolicyManager *)self setSacWifiFrequency:0];
  }
}

- (void)updateGpsbandsInfoForBBv2
{
  v2 = self;
  v3 = [(WCM_PolicyManager *)self cellularController];
  v4 = 4;
  [WCM_Logging logLevel:4 message:@"BB20: updateGpsbandsInfoForBBv2: Count =  %lu\n", [(NSMutableArray *)[(WCM_PolicyManager *)v2 gpsBandInfoList] count]];
  if ([(NSMutableArray *)[(WCM_PolicyManager *)v2 gpsBandInfoList] count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = [(WCM_PolicyManager *)v2 gpsBandInfoList];
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v24 = v2;
      v25 = v3;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = *v31;
      v27 = 4;
      v26 = 4;
      while (1)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          v28 = 0u;
          v29 = 0u;
          [v13 getValue:&v28];
          v14 = v28;
          [WCM_Logging logLevel:4 message:@"updateGpsbandsInfoForBBv2:gpsBandInfoList band = %u, bandUsePriority = %u\n", v28, DWORD2(v29)];
          if (v14 == 2)
          {
            v8 |= 2u;
            HIDWORD(v18) = DWORD2(v29) - 256;
            LODWORD(v18) = DWORD2(v29) - 256;
            v17 = v18 >> 8;
            if (v17 > 2)
            {
              if (v17 == 3)
              {
                v10 = 1;
                v19 = 3;
              }

              else
              {
                if (v17 != 7)
                {
LABEL_25:
                  v10 = 1;
                  continue;
                }

                v10 = 1;
                v19 = 5;
              }
            }

            else if (v17)
            {
              if (v17 != 1)
              {
                goto LABEL_25;
              }

              v10 = 1;
              v19 = 2;
            }

            else
            {
              v10 = 1;
              v19 = 1;
            }

            v27 = v19;
          }

          else
          {
            if (v14 != 1)
            {
              continue;
            }

            v8 |= 1u;
            HIDWORD(v16) = DWORD2(v29) - 256;
            LODWORD(v16) = DWORD2(v29) - 256;
            v15 = v16 >> 8;
            if (v15 > 2)
            {
              if (v15 == 3)
              {
LABEL_23:
                v9 = 1;
                v20 = 2;
                goto LABEL_24;
              }

              if (v15 == 7)
              {
                v9 = 1;
                v20 = 5;
LABEL_24:
                v26 = v20;
                continue;
              }
            }

            else if (v15)
            {
              if (v15 == 1)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v26 = 1;
            }

            v9 = 1;
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (!v7)
        {
          v21 = v9 & 1;
          v22 = v10 & 1;
          v2 = v24;
          v3 = v25;
          v23 = v26;
          v4 = v27;
          goto LABEL_37;
        }
      }
    }

    LOBYTE(v8) = 0;
    v21 = 0;
    v22 = 0;
    v4 = 4;
  }

  else
  {
    LOBYTE(v8) = 0;
    v21 = 0;
    v22 = 0;
  }

  v23 = 4;
LABEL_37:
  [WCM_Logging logLevel:1 message:@"updateGpsbandsInfoForBBv2: L1enabled = %d, L5Enabled = %d, l1Level = %llu, l5Level = %llu\n", v21, v22, v23, v4];
  if ([(NSSet *)[(WCM_PolicyManager *)v2 activeCoexFeatures] containsObject:@"CoexBBUnifiedSensorInfoSupport"])
  {
    if ([(NSSet *)[(WCM_PolicyManager *)v2 activeCoexFeatures] containsObject:@"UseWCMAriDriver"])
    {
      [(WCM_CellularController *)v3 sendBBCoexSensorMessage:0 band:v8 usecase:v4 & 0xF | (16 * v23)];
    }
  }
}

- (void)handleCallLQMStateChange
{
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WiFiEnhCoexSupport"])
  {

    [(WCM_PolicyManager *)self handleCallLQMStateChangeType7WiFiEnh:1];
  }

  else
  {

    [(WCM_PolicyManager *)self handleCallLQMStateChangeType7:1];
  }
}

- (void)updateLqmState:(int)a3 deviceRRCState:(unsigned __int8)a4 subscriptionSlot:(int64_t)a5
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E2708;
  block[3] = &unk_10023E0D0;
  v6 = a3;
  v7 = a4;
  block[4] = self;
  block[5] = a5;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
}

- (void)wrmCACoexSubmit_BTAFHIssue:(unsigned int)a3 issueType:(unsigned int)a4
{
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WATCH_COEX_COREANALYTICS_SUPPORT"])
  {
    [WCM_Logging logLevel:2 message:@"wrmCACoexSubmit_BTAFHIssue"];
    v6 = [NSString stringWithUTF8String:sub_10000BFB8(a3)];
    v7 = [NSString stringWithUTF8String:sub_10000BF80(a4)];
    v8 = +[WCM_CoreAnalyticsService singleton];
    if (v8)
    {
      v9 = [v8 mWatchCoexStats];

      [v9 updateCABTAFHIssue:v6 issueType:v7];
    }
  }
}

- (void)wrmCACoexSubmit_BTAFHMap:(id)a3
{
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"WATCH_COEX_COREANALYTICS_SUPPORT"])
  {
    [WCM_Logging logLevel:2 message:@"wrmCACoexSubmit_BTAFHMap"];
    if (a3)
    {
      v4 = +[WCM_CoreAnalyticsService singleton];
      if (v4)
      {
        v5 = [v4 mWatchCoexStats];

        [v5 updateCABTPreferredMap:a3];
      }
    }
  }
}

- (void)updateAntselPolicyStatsArray:(id)a3
{
  obj = [(WCM_PolicyManager *)self lockObjectWifiAntselPolicyStats];
  objc_sync_enter(obj);
  v15 = self;
  v5 = [NSArray arrayWithArray:[(WCM_PolicyManager *)self wifiAntselPolicyStatsArray]];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [objc_msgSend(v9 objectForKeyedSubscript:{@"IsCoexBand", obj), "BOOLValue"}];
        if (v10 == [objc_msgSend(a3 objectForKeyedSubscript:{@"IsCoexBand", "BOOLValue"}])
        {
          v11 = [objc_msgSend(v9 objectForKeyedSubscript:{@"HasAntConstraint", "BOOLValue"}];
          if (v11 == [objc_msgSend(a3 objectForKeyedSubscript:{@"HasAntConstraint", "BOOLValue"}] && objc_msgSend(objc_msgSend(v9, "objectForKeyedSubscript:", @"IssueBand"), "isEqualToString:", objc_msgSend(a3, "objectForKeyedSubscript:", @"IssueBand")) && objc_msgSend(objc_msgSend(v9, "objectForKeyedSubscript:", @"IssueType"), "isEqualToString:", objc_msgSend(a3, "objectForKeyedSubscript:", @"IssueType")))
          {
            v12 = [objc_msgSend(v9 objectForKeyedSubscript:{@"count", "integerValue"}];
            v13 = [NSMutableDictionary dictionaryWithDictionary:v9];
            [(NSMutableDictionary *)v13 setObject:[NSNumber forKeyedSubscript:"numberWithInteger:" numberWithInteger:?], @"count"];
            [(NSMutableArray *)[(WCM_PolicyManager *)v15 wifiAntselPolicyStatsArray] removeObject:v9];
            [(NSMutableArray *)[(WCM_PolicyManager *)v15 wifiAntselPolicyStatsArray] addObject:v13];
            goto LABEL_14;
          }
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  [(NSMutableArray *)[(WCM_PolicyManager *)v15 wifiAntselPolicyStatsArray] addObject:a3];
LABEL_14:
  objc_sync_exit(obj);
}

- (void)submitWifiAntselPolicyStats
{
  v7 = [(WCM_PolicyManager *)self lockObjectWifiAntselPolicyStats];
  objc_sync_enter(v7);
  [WCM_Logging logLevel:2 message:@"submitWifiAntselPolicyStats"];
  v3 = [NSArray arrayWithArray:[(WCM_PolicyManager *)self wifiAntselPolicyStatsArray]];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    obj = v3;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(obj);
        }

        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"Sending AntSelPolicyStates: issueBand %@, issueType %@, isCoexBand %@, hasAntConstraint %@ issuecount %@", [*(*(&v9 + 1) + 8 * i) objectForKeyedSubscript:@"IssueBand"], objc_msgSend(*(*(&v9 + 1) + 8 * i), "objectForKeyedSubscript:", @"IssueType"), objc_msgSend(*(*(&v9 + 1) + 8 * i), "objectForKeyedSubscript:", @"IsCoexBand"), objc_msgSend(*(*(&v9 + 1) + 8 * i), "objectForKeyedSubscript:", @"HasAntConstraint"), objc_msgSend(*(*(&v9 + 1) + 8 * i), "objectForKeyedSubscript:", @"count"));
        AnalyticsSendEventLazy();
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [(NSMutableArray *)[(WCM_PolicyManager *)self wifiAntselPolicyStatsArray] removeAllObjects];
  objc_sync_exit(v7);
}

- (void)handleBTCoexWiFiStateEvent:(int)a3 wifiChannel:(unsigned int)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E3608;
  block[3] = &unk_10023DD00;
  v5 = a3;
  v6 = a4;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
}

- (void)handleLow5GRate:(BOOL)a3 forceReset:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (![objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] || self->_forceDisableLow5GRate)
  {
    return;
  }

  if (v4)
  {
    byte_1002B81B8 = 0;
    v7 = [(WCM_PolicyManager *)self btController];

    [(WCM_BTController *)v7 updateLowWiFi5GRates:0];
    return;
  }

  if (v5)
  {
    [WCM_Logging logLevel:2 message:@"PolicyManager: WiFi 5G rates dropped, moved any AoS to 2G"];
    v8 = 1;
    if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] getAny5GHzBTDevicesConnected])
    {
      byte_1002B81B8 = 1;
    }

    goto LABEL_15;
  }

  if (![(WCM_BTController *)[(WCM_PolicyManager *)self btController] getAnyAoSLinkActive])
  {
    goto LABEL_14;
  }

  if ([(WCM_WiFiController *)[(WCM_PolicyManager *)self wifiController] wifiState]<= 2)
  {
    [WCM_Logging logLevel:2 message:@"PolicyManager: WiFi 5G is not connected, allow AoS in 5GHz"];
LABEL_14:
    v8 = 0;
    byte_1002B81B8 = 0;
    goto LABEL_15;
  }

  if ([(WCM_BTController *)[(WCM_PolicyManager *)self btController] getAny5GHzBTDevicesConnected]|| byte_1002B81B8 != 1)
  {
    [WCM_Logging logLevel:3 message:@"PolicyManager: rates are high and no prior issue with this AoS session - allow 5GHz TDD"];
    v8 = 0;
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"PolicyManager: WiFi 5G rates recovered, keep AoS in 2G"];
    v8 = 1;
  }

LABEL_15:
  if (byte_1002B81B7 != v8)
  {
    [(WCM_BTController *)[(WCM_PolicyManager *)self btController] updateLowWiFi5GRates:v8];
    byte_1002B81B7 = v8;
  }
}

- (void)handleBTCoexConnectedDevicesEvent_numA2DP:(unint64_t)a3 numLLA:(unint64_t)a4 numHID:(unint64_t)a5 numSCO:(unint64_t)a6 numeSCO:(unint64_t)a7 numLE:(unint64_t)a8 numLEA:(unint64_t)a9
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E3938;
  block[3] = &unk_100241A88;
  block[4] = a3;
  block[5] = a4;
  block[6] = a5;
  block[7] = a6;
  block[8] = a7;
  block[9] = a8;
  block[10] = a9;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
}

- (void)handleBTCoexStatsEvent_tddCnt:(unsigned int)a3 hybridCnt:(unsigned int)a4 btDurMs:(unsigned int)a5 totDurMs:(unsigned int)a6 parallelCnt:(unsigned int)a7 btDurAirMs:(unsigned int)a8 wlrssiCoex:(char)a9 btrssiCoex:(char)a10
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E3A88;
  block[3] = &unk_100241AB0;
  block[4] = self;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
}

- (void)handleCameraStateIndication
{
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"UseWCMAriDriver"])
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v3, "kWCMCellularSetCameraState", self->_cameraState);
    [(WCM_CellularController *)[(WCM_PolicyManager *)self cellularController] sendMessage:1234 withArgs:v3];

    xpc_release(v3);
  }

  else
  {

    [(WCM_PolicyManager *)self handleMavCameraStateIndication];
  }
}

- (void)handleMavCameraStateIndication
{
  [WCM_Logging logLevel:2 message:@"PolicyManager handle camera state indication, new camera state = 0x%X", self->_cameraState];
  cameraState = self->_cameraState;
  if ([(WCM_IOKitWrapper *)self->_iokitWrapper isFrontCameraSupported])
  {
    [(WCM_CellularController *)[(WCM_PolicyManager *)self cellularController] sendBBCameraState:41 state:(cameraState >> 3) & 1];
  }

  if ([(WCM_IOKitWrapper *)self->_iokitWrapper isFaceIdSupported])
  {
    [(WCM_CellularController *)[(WCM_PolicyManager *)self cellularController] sendBBCameraState:40 state:cameraState & 1];
  }

  if ([(WCM_IOKitWrapper *)self->_iokitWrapper isBackTeleCameraSupported])
  {
    [(WCM_CellularController *)[(WCM_PolicyManager *)self cellularController] sendBBCameraState:44 state:(cameraState >> 6) & 1];
  }

  if ([(WCM_IOKitWrapper *)self->_iokitWrapper isBackSuperWideCameraSupported])
  {
    v4 = [(WCM_PolicyManager *)self cellularController];

    [(WCM_CellularController *)v4 sendBBCameraState:43 state:(cameraState >> 9) & 1];
  }
}

- (void)handlePencilStateIndication
{
  [WCM_Logging logLevel:2 message:@"YYDebug_ PolicyManager handle pencil state indication, new pencil state = %d", self->_pencilState];
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"Wlan25aAccessoryCnvCoTxSupport"])
  {

    [(WCM_PolicyManager *)self updateCellularPencilCoex_TriggeredByPowerOnEvent:0];
  }
}

- (void)startHomeKitTimer
{
  [WCM_Logging logLevel:2 message:@"startHomeKitTimer"];
  v2 = +[WCM_UCMClientManager WCM_UCMClientManagerSingleton];

  [v2 startHomeKitTimer:300.0];
}

- (void)stopHomeKitTimer
{
  [WCM_Logging logLevel:2 message:@"stopHomeKitTimer"];
  v2 = +[WCM_UCMClientManager WCM_UCMClientManagerSingleton];

  [v2 stopHomeKitTimer];
}

- (void)sendNRFrequencyBandUpdateForMic:(double)a3 dlHighFreq:(double)a4 ulLowFreq:(double)a5 ulHighFreq:(double)a6
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v24 = sub_1000E4150;
    v25 = &unk_100241AD0;
    v26 = a3;
    v27 = a4;
    v28 = a5;
    v29 = a6;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v17 = sub_1000E41B4;
    v18 = &unk_100241AD0;
    v19 = a3;
    v20 = a4;
    v21 = a5;
    v22 = a6;
    v30[0] = @"kWRMNR41FreuquencyUpdate";
    v11 = 2496.0;
    if (a3 < 2496.0 || a4 > 2690.0)
    {
      v11 = 2496.0;
      if (a5 >= 2496.0)
      {
        v11 = 2690.0;
        v13 = a6 <= 2690.0;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 1;
    }

    v31[0] = [NSNumber numberWithBool:v13, v11, 2690.0];
    v30[1] = @"kWRMNR7xFreuquencyUpdate";
    if ((v24)(v23, 77))
    {
      v14 = 1;
    }

    else
    {
      v14 = (v24)(v23, 79);
    }

    v31[1] = [NSNumber numberWithInt:v14];
    v30[2] = @"kWRMLTE40FreuquencyUpdate";
    v31[2] = [NSNumber numberWithBool:(v17)(v16, 40)];
    v30[3] = @"kWRMLTE41FreuquencyUpdate";
    v31[3] = [NSNumber numberWithBool:(v17)(v16, 41)];
    v30[4] = @"kWRMLTE42FreuquencyUpdate";
    v31[4] = [NSNumber numberWithBool:(v17)(v16, 42)];
    v30[5] = @"kWRMLTE48FreuquencyUpdate";
    v31[5] = [NSNumber numberWithBool:(v17)(v16, 48)];
    v15 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:6];
    if (![(NSDictionary *)v15 isEqualToDictionary:[(WCM_PolicyManager *)self prevBandStates]])
    {
      [+[WCM_UCMClientManager WCM_UCMClientManagerSingleton](WCM_UCMClientManager "WCM_UCMClientManagerSingleton")];

      [(WCM_PolicyManager *)self setPrevBandStates:[(NSDictionary *)v15 mutableCopy]];
    }
  }
}

- (void)sendULFrequencyUpdates:(int64_t)a3 ulCenterFreq:(double)a4 ulBandwidth:(double)a5
{
  v10[0] = @"BandInfoType";
  v11[0] = [NSNumber numberWithLongLong:a3];
  v10[1] = @"ULCenterFrequency";
  v11[1] = [NSNumber numberWithDouble:a4];
  v10[2] = @"ULBandwidth";
  v11[2] = [NSNumber numberWithDouble:a5];
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
  if (v8)
  {
    v9 = v8;
    if (![(WCM_PolicyManager *)self prevULFrequencyUpdate]|| ![(NSDictionary *)v9 isEqualToDictionary:[(WCM_PolicyManager *)self prevULFrequencyUpdate]])
    {
      [+[WCM_UCMClientManager WCM_UCMClientManagerSingleton](WCM_UCMClientManager "WCM_UCMClientManagerSingleton")];

      [(WCM_PolicyManager *)self setPrevULFrequencyUpdate:[(NSDictionary *)v9 copy]];
    }
  }
}

- (void)handleLeADVePAStateChange
{
  if ([(NSSet *)[(WCM_PolicyManager *)self activeCoexFeatures] containsObject:@"COEX_AWARE_CELL_SAR_BUDGET"]&& [(WCM_PolicyManager *)self wcmRadioStateIndicator])
  {
    v3 = [(WCM_PolicyManager *)self wcmRadioStateIndicator];
    v4 = [(WCM_BTController *)[(WCM_PolicyManager *)self btController] leADVePAState];

    [(WCM_RadioStateIndicator *)v3 updateBTLeADVePAStateChange:v4];
  }
}

@end