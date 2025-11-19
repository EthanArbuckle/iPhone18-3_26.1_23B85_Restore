@interface WCM_WiFiServiceIOS
- (BOOL)isAssociated;
- (BOOL)isWiFiNetworkCaptive;
- (BOOL)isWiFiPrimaryInterface;
- (BOOL)setWiFiBTCoexProfile:(id)a3 atIndex:(int64_t)a4;
- (BOOL)setWiFiBTExtCoexProfile:(id)a3 atIndex:(int64_t)a4;
- (WCM_WiFiServiceIOS)init;
- (id)getLeastCongestedWifiParam;
- (int)getPhyMode;
- (int)sendMessage:(void *)a3 withValue:(void *)a4;
- (void)checkWiFiState;
- (void)dealloc;
- (void)disableLQMUpdate;
- (void)disableWiFi;
- (void)enableLQMUpdate;
- (void)notifyWiFiStateChange:(BOOL)a3;
- (void)performScan:(id)a3;
- (void)processWifiDeviceExtendedLinkEvent:(__CFDictionary *)a3;
- (void)registerWiFiCallbacks;
- (void)setAggregatedConditionIdConfig:(id)a3;
- (void)setAntennaCellPolicy:(id)a3;
- (void)setAntennaSelection:(id)a3;
- (void)setAntennaSelectionV2:(id)a3;
- (void)setAntennaSelectionWiFiEnh:(id)a3;
- (void)setBTConnectionReport:(id)a3;
- (void)setCellularFrequencyConfig:(id)a3;
- (void)setChannelConfigurationForConditionId:(unsigned int)a3 enable2G:(BOOL)a4 enable5G:(BOOL)a5 enable6G:(BOOL)a6 wifi_channel_lower:(unsigned int)a7 wifi_channel_upper:(unsigned int)a8;
- (void)setChannelsForCellularScanProtectionWiFiEnh:(id)a3 wiFiEnhChannels:(id)a4 indexArrayForScanThrottling:(id)a5;
- (void)setChannelsForCellularScanProtectionWithMode:(id)a3 indexArrayForScanThrottling:(id)a4;
- (void)setChannelsForTimeSharingMode:(id)a3;
- (void)setChannelsToBlocklist:(id)a3;
- (void)setChannelsToDisableOCL:(id)a3;
- (void)setChannelsToDisableOCLWiFiEnh:(id)a3 WiFiEnhChannels:(id)a4;
- (void)setChannelsToEnableAssocProtectionModeWiFiEnh;
- (void)setChannelsToEnableType7MSG2GWiFi:(id)a3;
- (void)setChannelsToEnableType7MSG:(id)a3;
- (void)setChannelsToEnableType7MSGWiFiEnh:(id)a3 WiFiEnhChannels:(id)a4;
- (void)setChannelsToEnableWCI2:(id)a3;
- (void)setChannelsToEnableWCI2V2:(id)a3;
- (void)setChannelsToEnableWCI2WiFiEnh:(id)a3 WiFiEnhChannels:(id)a4;
- (void)setChannelsToEnablerFemModeWiFiEnh:(BOOL)a3 enable5G:(BOOL)a4 enable6G:(BOOL)a5;
- (void)setCoexParams:(const char *)a3 withValue:(id)a4;
- (void)setEnableAgcCoexMode:(id)a3;
- (void)setEnableEnvelopeIndicationFor2G:(id)a3;
- (void)setEnvelopeIndicationTimerFor2G:(id)a3;
- (void)setLAACoexConfigEnableTxInd;
- (void)setLAACoexConfigScanThrottleMask:(id)a3;
- (void)setLAACoexConfigWci2TxDurationThreshold:(id)a3;
- (void)setLAACoexConfigWifiDwellTime:(id)a3;
- (void)setMWSChannelParameters:(id)a3;
- (void)setMWSFrameConfig:(id)a3;
- (void)setMWSSignalingConfig:(id)a3;
- (void)setMaxDurationForCellularScanProtection:(id)a3;
- (void)setMedtronicState:(int)a3;
- (void)setRCU2CoexParams:(id)a3;
- (void)setRxAntennaPreference:(id)a3;
- (void)setRxPriorityThreshold:(id)a3;
- (void)setRxProtectAutoModeParamWeight:(id)a3 andThresh:(id)a4;
- (void)setRxProtectMode:(id)a3;
- (void)setScanJoinRxProtectDuration:(id)a3;
- (void)setTxAntennaPreference:(id)a3;
- (void)setTxOnIndication:(id)a3;
- (void)setWiFiBTCoexActiveProfileFor2G:(int64_t)a3 and5G:(int64_t)a4;
- (void)setWiFiBTULOFDMAstate:(BOOL)a3;
- (void)setWiFiCallingState:(BOOL)a3;
- (void)setWiFiDevice:(__WiFiDeviceClient *)a3;
- (void)setWiFiRCU1ModeChanged:(BOOL)a3 andChannelChanged:(BOOL)a4 andMode:(id)a5 andChannel:(id)a6;
- (void)setWiFiRCU1ULOFDMAstate:(BOOL)a3;
- (void)setWiFiRCU2CoexMode:(id)a3;
- (void)setWiFiRCU2PMProtectionMode:(id)a3;
- (void)setWiFiRCU2TimingArray:(id)a3;
- (void)setWiFiRCU2ULOFDMAstate:(BOOL)a3;
- (void)setWifiBTA2DPLLAStatus:(int)a3;
- (void)setWifiBTA2DPStatus:(int)a3;
- (void)setWifiBTeSCOHidStatus:(int)a3 andUseCase:(int)a4;
- (void)setWifiBTeSCOStatus:(int)a3;
- (void)unregisterWiFiCallbacks;
@end

@implementation WCM_WiFiServiceIOS

- (int)getPhyMode
{
  if (!self->mWifiDevice)
  {
    v10 = @"WiFiS: device not attached";
    v11 = 0;
LABEL_21:
    [WCM_Logging logLevel:v11 message:v10];
    return 0;
  }

  v2 = WiFiDeviceClientCopyCurrentNetwork();
  if (!v2)
  {
    v10 = @"WiFiS: not associated to network";
    v11 = 2;
    goto LABEL_21;
  }

  v3 = v2;
  PhyMode = WiFiNetworkGetPhyMode();
  [WCM_Logging logLevel:2 message:@"WiFiNetworkGetPhyMode is 0x%x", PhyMode];
  if ((PhyMode & 4) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = (PhyMode & 0x22) != 0;
  }

  if ((PhyMode & 0x48) != 0)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  if ((PhyMode & 0x10) != 0)
  {
    v7 = 4;
  }

  else
  {
    v7 = v6;
  }

  if ((PhyMode & 0x80) != 0)
  {
    v8 = 5;
  }

  else
  {
    v8 = v7;
  }

  if ((PhyMode & 0x100) != 0)
  {
    v9 = 6;
  }

  else
  {
    v9 = v8;
  }

  CFRelease(v3);
  return v9;
}

- (BOOL)isWiFiNetworkCaptive
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009204;
  v4[3] = &unk_10023DDB0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(&_dispatch_main_q, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isWiFiPrimaryInterface
{
  v3 = [-[NWPathEvaluator path](self->mWiFiPathEvaluator "path")];
  v4 = v3;
  [WCM_Logging logLevel:19 message:@"isWiFiPrimaryInterface %d, path: %x", v3, self->mWiFiPathEvaluator];
  return v4;
}

- (WCM_WiFiServiceIOS)init
{
  v5.receiver = self;
  v5.super_class = WCM_WiFiServiceIOS;
  v2 = [(WCM_WiFiService *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->mWifiDevice = 0;
    v2->mWifiManager = 0;
    v2->mLQMRecevied = 0;
    v2->mAWDLInProgress = 0;
    v2->mP2pRCU2CoexEventInProgress = 0;
    v2->mCarPlaySessionInProgress = 0;
    v2->mCarPlayBTScanRelaxReason = 4;
    v2->mLeastCongestedChannel = 0;
    v2->mLeastCongestedChannelCount = 0;
    v2->mWiFiDeviceReset = 0;
    v2->mWifiDevicePowerState = 0;
    v2->mWiFiLinkUP = 0;
    v2->mWiFiPathEvaluator = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:0];
    v3->mWifiBand = 0;
    v3->mBandwidthMHz = 0;
    v3->mCurrentSSID = 0;
  }

  return v3;
}

- (void)dealloc
{
  mWiFiPathEvaluator = self->mWiFiPathEvaluator;
  if (mWiFiPathEvaluator)
  {

    self->mWiFiPathEvaluator = 0;
  }

  v4.receiver = self;
  v4.super_class = WCM_WiFiServiceIOS;
  [(WCM_WiFiService *)&v4 dealloc];
}

- (void)registerWiFiCallbacks
{
  if (self->mWifiManager)
  {
    [WCM_Logging logLevel:0 message:@"WiFiS: mWifiManager was not releaed previously"];
    mWifiManager = self->mWifiManager;
    CFRunLoopGetMain();
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(self->mWifiManager);
  }

  v4 = WiFiManagerClientCreate();
  self->mWifiManager = v4;
  if (v4)
  {
    CFRunLoopGetMain();
    WiFiManagerClientScheduleWithRunLoop();
    v5 = self->mWifiManager;
    WiFiManagerClientRegisterWowStateChangedCallback();
    v6 = self->mWifiManager;
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    v7 = self->mWifiManager;
    v8 = WiFiManagerClientCopyDevices();
    if (v8)
    {
      v9 = v8;
      if (CFArrayGetCount(v8))
      {
        [(WCM_WiFiServiceIOS *)self setWiFiDevice:CFArrayGetValueAtIndex(v9, 0)];
      }

      else
      {
        self->mWifiDevicePowerState = 0;
        [WCM_Logging logLevel:0 message:@"WiFiS: there is no device attached"];
      }

      CFRelease(v9);
    }

    else
    {
      self->mWifiDevicePowerState = 0;
      [WCM_Logging logLevel:0 message:@"WiFiS: there is no device attached"];
    }

    if (self->mWifiDevice)
    {
      v10 = WiFiDeviceClientCopyCurrentNetwork();
      if (v10)
      {
        v11 = v10;
        if (WiFiNetworkGetProperty() || WiFiNetworkGetProperty() || WiFiNetworkGetProperty())
        {
          self->mCurrentSSID = [WiFiNetworkGetProperty() copy];
        }

        CFRelease(v11);
      }
    }
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WiFiS: failed to create WiFi manager client"];
  }
}

- (void)unregisterWiFiCallbacks
{
  if (self->mWifiDevice)
  {
    [WCM_Logging logLevel:2 message:@"WiFiS: unregister device callbacks and release the device"];
    mWifiDevice = self->mWifiDevice;
    WiFiDeviceClientRegisterDeviceAvailableCallback();
    v4 = self->mWifiDevice;
    WiFiDeviceClientRegisterExtendedLinkCallback();
    v5 = self->mWifiDevice;
    WiFiDeviceClientRegisterHostApStateChangedCallback();
    v6 = self->mWifiDevice;
    WiFiDeviceClientRegisterLQMCallback();
    v7 = self->mWifiDevice;
    WiFiDeviceClientRegisterWeightAvgLQMCallback();
    v8 = self->mWifiDevice;
    WiFiDeviceClientRegisterBTCoexStatsCallback();
    v9 = self->mWifiDevice;
    WiFiDeviceClientRegisterBssidChangeCallback();
    v10 = self->mWifiDevice;
    WiFiDeviceClientRegisterCatsUpdateCallback();
    v11 = self->mWifiDevice;
    WiFiDeviceClientRegisterBTScanIntervalRelaxCallback();
    v12 = self->mWifiDevice;
    WiFiDeviceClientRegisterScanUpdateCallback();
    v13 = self->mWifiDevice;
    WiFiDeviceClientRegisterResumeScanCallback();
    v14 = self->mWifiDevice;
    WiFiDeviceClientRegisterBgScanSuspendResumeCallback();
    v15 = self->mWifiDevice;
    WiFiDeviceClientRegisterUCMEventCallback();
    CFRelease(self->mWifiDevice);
    self->mWifiDevice = 0;
    self->super.m_lqmRefCount = 0;
    self->mLQMRecevied = 0;
  }

  if (self->mWifiManager)
  {
    [WCM_Logging logLevel:2 message:@"WiFiS: unregister manager callbacks and release the manager"];
    mWifiManager = self->mWifiManager;
    WiFiManagerClientRegisterWowStateChangedCallback();
    v17 = self->mWifiManager;
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    v18 = self->mWifiManager;
    CFRunLoopGetMain();
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(self->mWifiManager);
    self->mWifiManager = 0;
  }
}

- (BOOL)isAssociated
{
  if (self->mWifiDevice)
  {
    v2 = WiFiDeviceClientCopyCurrentNetwork();
    if (v2)
    {
      CFRelease(v2);
      return 1;
    }

    v4 = @"WiFiS: not associated to network";
    v5 = 2;
  }

  else
  {
    v4 = @"WiFiS: device not attached";
    v5 = 0;
  }

  [WCM_Logging logLevel:v5 message:v4];
  return 0;
}

- (int)sendMessage:(void *)a3 withValue:(void *)a4
{
  mWifiDevice = self->mWifiDevice;
  if (mWifiDevice)
  {
    CFRetain(mWifiDevice);
  }

  if ([+[WCM_PolicyManager singleton](WCM_PolicyManager singleton])
  {
    if (self->mWifiDevice)
    {
      if (self->mWifiDevicePowerState)
      {
        [WCM_Logging logLevel:2 message:@"WiFiS: send WiFi message (%@)", a3];
        v7 = self->mWifiDevice;
        v8 = WiFiDeviceClientSetCoexParameters();
        goto LABEL_12;
      }

      v9 = @"WiFiS: not send message as device power off";
    }

    else
    {
      v9 = @"WiFiS: not send message as device not attached";
    }

    v10 = 2;
  }

  else
  {
    v9 = @"WiFiS: not send message as LTE Coex is not enabled";
    v10 = 1;
  }

  [WCM_Logging logLevel:v10 message:v9];
  v8 = -3902;
LABEL_12:
  v11 = self->mWifiDevice;
  if (v11)
  {
    CFRelease(v11);
  }

  return v8;
}

- (void)setChannelsToBlocklist:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F299C;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsToEnableWCI2:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F2B94;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsToEnableWCI2V2:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F2D8C;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsToEnableWCI2WiFiEnh:(id)a3 WiFiEnhChannels:(id)a4
{
  v7 = a3;
  v8 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F3288;
  block[3] = &unk_10023E058;
  block[4] = a3;
  block[5] = a4;
  block[6] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setChannelsToEnableType7MSG:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F3C1C;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsToEnableType7MSG2GWiFi:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F405C;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsToEnableType7MSGWiFiEnh:(id)a3 WiFiEnhChannels:(id)a4
{
  v7 = a3;
  v8 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F4294;
  block[3] = &unk_10023E058;
  block[4] = a3;
  block[5] = a4;
  block[6] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setChannelsToDisableOCL:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F4C28;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsToDisableOCLWiFiEnh:(id)a3 WiFiEnhChannels:(id)a4
{
  v7 = a3;
  v8 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F4E54;
  block[3] = &unk_10023E058;
  block[4] = a3;
  block[5] = a4;
  block[6] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setRxPriorityThreshold:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F57E8;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setMWSChannelParameters:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F58DC;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setMWSFrameConfig:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F59D0;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setMWSSignalingConfig:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F5ADC;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setRxAntennaPreference:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F5BE8;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setTxAntennaPreference:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F5CE4;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setAntennaCellPolicy:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F5DE0;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setAntennaSelection:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F5EDC;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setAntennaSelectionV2:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F5FD0;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setAntennaSelectionWiFiEnh:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F60C4;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsForCellularScanProtectionWithMode:(id)a3 indexArrayForScanThrottling:(id)a4
{
  v7 = a3;
  v8 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F61EC;
  block[3] = &unk_10023E058;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setChannelsForCellularScanProtectionWiFiEnh:(id)a3 wiFiEnhChannels:(id)a4 indexArrayForScanThrottling:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F6C0C;
  v12[3] = &unk_1002421B0;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = self;
  dispatch_async(&_dispatch_main_q, v12);
}

- (void)setChannelConfigurationForConditionId:(unsigned int)a3 enable2G:(BOOL)a4 enable5G:(BOOL)a5 enable6G:(BOOL)a6 wifi_channel_lower:(unsigned int)a7 wifi_channel_upper:(unsigned int)a8
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F8EAC;
  block[3] = &unk_1002421D8;
  block[4] = self;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v9 = a3;
  v10 = a7;
  v11 = a8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setAggregatedConditionIdConfig:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F8FB8;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsToEnablerFemModeWiFiEnh:(BOOL)a3 enable5G:(BOOL)a4 enable6G:(BOOL)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F92F8;
  v5[3] = &unk_100242200;
  v6 = a3;
  v7 = a4;
  v8 = a5;
  v5[4] = self;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)setChannelsToEnableAssocProtectionModeWiFiEnh
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F986C;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setMaxDurationForCellularScanProtection:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F9DDC;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setChannelsForTimeSharingMode:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F9ED0;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setRxProtectMode:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FA02C;
    v6[3] = &unk_10023DC80;
    v6[4] = a3;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setRxProtectAutoModeParamWeight:(id)a3 andThresh:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      v7 = a3;
      v8 = a4;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000FA140;
      block[3] = &unk_10023E058;
      block[4] = a3;
      block[5] = a4;
      block[6] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)setTxOnIndication:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FA29C;
    v6[3] = &unk_10023DC80;
    v6[4] = a3;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setScanJoinRxProtectDuration:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000FA390;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setCellularFrequencyConfig:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FA4A4;
    v6[3] = &unk_10023DC80;
    v6[4] = a3;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setEnableEnvelopeIndicationFor2G:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FA5A0;
    v6[3] = &unk_10023DC80;
    v6[4] = a3;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setEnvelopeIndicationTimerFor2G:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FA69C;
    v6[3] = &unk_10023DC80;
    v6[4] = a3;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setEnableAgcCoexMode:(id)a3
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000FA790;
  v6[3] = &unk_10023DC80;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)setLAACoexConfigEnableTxInd
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FA870;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setLAACoexConfigWci2TxDurationThreshold:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FA98C;
    v6[3] = &unk_10023DC80;
    v6[4] = a3;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setLAACoexConfigScanThrottleMask:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FAA88;
    v6[3] = &unk_10023DC80;
    v6[4] = a3;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setLAACoexConfigWifiDwellTime:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FAB84;
    v6[3] = &unk_10023DC80;
    v6[4] = a3;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setWiFiBTULOFDMAstate:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FAF64;
  v3[3] = &unk_10023E008;
  v4 = a3;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)setWiFiRCU1ULOFDMAstate:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FB05C;
  v3[3] = &unk_10023E008;
  v4 = a3;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)setWiFiRCU2ULOFDMAstate:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FB154;
  v3[3] = &unk_10023E008;
  v4 = a3;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)setWiFiRCU1ModeChanged:(BOOL)a3 andChannelChanged:(BOOL)a4 andMode:(id)a5 andChannel:(id)a6
{
  if (a5)
  {
    if (a6)
    {
      v11 = a5;
      v12 = a6;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000FB294;
      v13[3] = &unk_100242228;
      v14 = a3;
      v15 = a4;
      v13[4] = a5;
      v13[5] = a6;
      v13[6] = self;
      dispatch_async(&_dispatch_main_q, v13);
    }
  }
}

- (void)setWiFiRCU2CoexMode:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FB578;
    v6[3] = &unk_10023DC80;
    v6[4] = a3;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setWiFiRCU2PMProtectionMode:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FB674;
    v6[3] = &unk_10023DC80;
    v6[4] = a3;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setWiFiRCU2TimingArray:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FB770;
    v6[3] = &unk_10023DC80;
    v6[4] = a3;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setWifiBTeSCOStatus:(int)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FB898;
  v3[3] = &unk_10023DBA0;
  v4 = a3;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)setWifiBTeSCOHidStatus:(int)a3 andUseCase:(int)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000FB98C;
  v4[3] = &unk_10023DD88;
  v5 = a3;
  v6 = a4;
  v4[4] = self;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)setWifiBTA2DPStatus:(int)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FBADC;
  v3[3] = &unk_10023DBA0;
  v4 = a3;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)setWifiBTA2DPLLAStatus:(int)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FBBD0;
  v3[3] = &unk_10023DBA0;
  v4 = a3;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)setBTConnectionReport:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FBCDC;
    v6[3] = &unk_10023DC80;
    v6[4] = a3;
    v6[5] = self;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)setRCU2CoexParams:(id)a3
{
  if (a3)
  {
    v5 = a3;
    if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000FBF0C;
      v6[3] = &unk_10023DC80;
      v6[4] = a3;
      v6[5] = self;
      dispatch_async(&_dispatch_main_q, v6);
    }
  }
}

- (void)enableLQMUpdate
{
  [WCM_Logging logLevel:26 message:@"WiFiS: enableLQMUpdate. %d", self->super.m_lqmRefCount];
  if (self->super.m_lqmRefCount)
  {
    [WCM_Logging logLevel:26 message:@"WiFiS: not registering to WiFi manager because LQM is already registered.\n"];
    ++self->super.m_lqmRefCount;
  }

  else
  {
    if (self->mWifiDevice)
    {
      WiFiDeviceClientRegisterLQMCallback();
      mWifiDevice = self->mWifiDevice;
      WiFiDeviceClientRegisterWeightAvgLQMCallback();
      self->super.m_lqmRefCount = 1;
      [WCM_Logging logLevel:26 message:@"WiFiS: Client: WiFiDeviceClientRegisterLQMCallback.ref count %d", 1];
      v4 = self->mWifiDevice;
    }

    else
    {
      v4 = 0;
    }

    v5 = "YES";
    if (!v4)
    {
      v5 = "NO";
    }

    [WCM_Logging logLevel:19 message:@"WiFiS: Register Wifi LQM. result=%s mWiFiDevice=%p context=%p", v5, v4, self];
  }
}

- (void)disableLQMUpdate
{
  [WCM_Logging logLevel:26 message:@"WiFiS: disableLQMUpdate. %d", self->super.m_lqmRefCount];
  m_lqmRefCount = self->super.m_lqmRefCount;
  v4 = __OFSUB__(m_lqmRefCount--, 1);
  self->super.m_lqmRefCount = m_lqmRefCount;
  if ((m_lqmRefCount < 0) ^ v4 | (m_lqmRefCount == 0))
  {
    if (self->mWifiDevice)
    {
      WiFiDeviceClientRegisterLQMCallback();
      mWifiDevice = self->mWifiDevice;
      WiFiDeviceClientRegisterWeightAvgLQMCallback();
      self->super.m_lqmRefCount = 0;
      [WCM_Logging logLevel:26 message:@"WiFiS: Client: WiFiDeviceClientRegisterLQMCallback.ref count %d", 0];
      v6 = self->mWifiDevice;
    }

    else
    {
      v6 = 0;
    }

    v7 = "YES";
    if (!v6)
    {
      v7 = "NO";
    }

    [WCM_Logging logLevel:19 message:@"WiFiS: Unregister Wifi LQM. result=%s mWiFiDevice=%p context=%p", v7, v6, self];
  }

  else
  {

    [WCM_Logging logLevel:26 message:@"WiFiS: Not de-registering LQM from WiFi Manager becuase reference count is non zero"];
  }
}

- (void)setWiFiDevice:(__WiFiDeviceClient *)a3
{
  if (a3)
  {
    if (self->mWifiDevice)
    {
      [WCM_Logging logLevel:2 message:@"WiFiS: unregister device callbacks and release the existing device"];
      mWifiDevice = self->mWifiDevice;
      WiFiDeviceClientRegisterDeviceAvailableCallback();
      v7 = self->mWifiDevice;
      WiFiDeviceClientRegisterExtendedLinkCallback();
      v8 = self->mWifiDevice;
      WiFiDeviceClientRegisterHostApStateChangedCallback();
      v9 = self->mWifiDevice;
      WiFiDeviceClientRegisterLQMCallback();
      v10 = self->mWifiDevice;
      WiFiDeviceClientRegisterCatsUpdateCallback();
      v11 = self->mWifiDevice;
      WiFiDeviceClientRegisterBTScanIntervalRelaxCallback();
      v12 = self->mWifiDevice;
      WiFiDeviceClientRegisterScanUpdateCallback();
      v13 = self->mWifiDevice;
      WiFiDeviceClientRegisterResumeScanCallback();
      v14 = self->mWifiDevice;
      WiFiDeviceClientRegisterBgScanSuspendResumeCallback();
      v15 = self->mWifiDevice;
      WiFiDeviceClientRegisterWeightAvgLQMCallback();
      v16 = self->mWifiDevice;
      WiFiDeviceClientRegisterBTCoexStatsCallback();
      v17 = self->mWifiDevice;
      WiFiDeviceClientRegisterUCMEventCallback();
      CFRelease(self->mWifiDevice);
      self->mWifiDevice = 0;
    }

    self->mWifiDevice = CFRetain(a3);
    Power = WiFiDeviceClientGetPower();
    self->mWifiDevicePowerState = Power != 0;
    v19 = "off";
    if (Power)
    {
      v19 = "on";
    }

    [WCM_Logging logLevel:5 message:@"WiFiS: device power %s", v19];
    [(WCM_WiFiDelegate *)self->super.mDelegate updatePowerState:self->mWifiDevicePowerState];
    if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
      [(WCM_WiFiDelegate *)self->super.mDelegate updateTxPowerCapForHead:14 forBody:14];
    }

    if (self->mWifiDevicePowerState)
    {
      [(WCM_WiFiServiceIOS *)self checkWiFiState];
    }

    [WCM_Logging logLevel:2 message:@"WiFiS: register device callbacks"];
    v20 = self->mWifiDevice;
    WiFiDeviceClientRegisterDeviceAvailableCallback();
    v21 = self->mWifiDevice;
    WiFiDeviceClientRegisterExtendedLinkCallback();
    v22 = self->mWifiDevice;
    WiFiDeviceClientRegisterHostApStateChangedCallback();
    v23 = self->mWifiDevice;
    WiFiDeviceClientRegisterBssidChangeCallback();
    v24 = self->mWifiDevice;
    WiFiDeviceClientRegisterCatsUpdateCallback();
    v25 = self->mWifiDevice;
    WiFiDeviceClientRegisterBTScanIntervalRelaxCallback();
    v26 = self->mWifiDevice;
    WiFiDeviceClientRegisterScanUpdateCallback();
    v27 = self->mWifiDevice;
    WiFiDeviceClientRegisterResumeScanCallback();
    v28 = self->mWifiDevice;
    WiFiDeviceClientRegisterBgScanSuspendResumeCallback();
    v29 = self->mWifiDevice;
    WiFiDeviceClientRegisterLQMCallback();
    v30 = self->mWifiDevice;
    WiFiDeviceClientRegisterWeightAvgLQMCallback();
    ++self->super.m_lqmRefCount;
    if ([+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      if ([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
      {
        self->super.m_lqmRefCount = 0;
        [(WCM_WiFiServiceIOS *)self enableLQMUpdate];
      }

      if ([+[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton](WRM_IDSLinkEvalManager "WRM_IDSLinkEvalManagerSingleton")])
      {
        [(WCM_WiFiServiceIOS *)self enableLQMUpdate];
      }

      if ([+[WRM_BWEvalManager WRM_BWEvalManagerSingleton](WRM_BWEvalManager "WRM_BWEvalManagerSingleton")])
      {
        [(WCM_WiFiServiceIOS *)self enableLQMUpdate];
      }

      if ([+[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton](WRM_FT_HandoverManager "WRM:"needWiFiLQM" FT:?HandoverManagerSingleton")])
      {
        [(WCM_WiFiServiceIOS *)self enableLQMUpdate];
      }
    }

    v31 = self->mWifiDevice;
    WiFiDeviceClientRegisterBTCoexStatsCallback();
    v32 = self->mWifiDevice;

    WiFiDeviceClientRegisterUCMEventCallback();
  }

  else
  {

    [WCM_Logging logLevel:2 message:@"WiFiS: setWiFiDevice: device is NULL"];
  }
}

- (void)processWifiDeviceExtendedLinkEvent:(__CFDictionary *)a3
{
  value_7 = 0;
  if (a3)
  {
    v5 = CFDictionaryGetValue(a3, @"LINK_CHANGED_IS_LINKDOWN");
    CFNumberGetValue(v5, kCFNumberCharType, &value_7);
    if (value_7)
    {
      LOBYTE(value) = 0;
      LODWORD(keys[0]) = 0;
      LODWORD(values) = 0;
      v6 = CFDictionaryGetValue(a3, @"LINKDOWN_IS_INVOL");
      CFNumberGetValue(v6, kCFNumberCharType, &value);
      v7 = CFDictionaryGetValue(a3, @"LINKDOWN_REASON_CODE");
      CFNumberGetValue(v7, kCFNumberSInt32Type, keys);
      v8 = CFDictionaryGetValue(a3, @"LINKDOWN_SUBREASON_CODE");
      CFNumberGetValue(v8, kCFNumberSInt32Type, &values);
      [WCM_Logging logLevel:5 message:@"WiFiS: WiFi linkdown: Invol=%d, Reason=%d, Subreason=%d", value, LODWORD(keys[0]), values];
      mDelegate = self->super.mDelegate;
      if (mDelegate)
      {
        v10 = LODWORD(keys[0]) == 5;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        [(WCM_WiFiDelegate *)mDelegate handleWiFiLinkDown:?];
      }
    }

    else
    {
      [(WCM_WiFiServiceIOS *)self checkWiFiState];
    }
  }

  if ([+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    if (value_7)
    {
      [WCM_Logging logLevel:18 message:@"WiFiS: send WiFi linkdown status to iRAT managers"];
      v11 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v11, "kWRM_WiFi_LINK_STATUS", value_7);
      *keys = *off_100242280;
      values = xpc_uint64_create(0x67uLL);
      v28 = v11;
      v12 = xpc_dictionary_create(keys, &values, 2uLL);
      [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
      [+[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton](WRM_IDSLinkEvalManager "WRM_IDSLinkEvalManagerSingleton")];
      [+[WRM_BWEvalManager WRM_BWEvalManagerSingleton](WRM_BWEvalManager "WRM_BWEvalManagerSingleton")];
      [+[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton](WRM_FT_HandoverManager "WRM:"updateControllerState:" FT:v12HandoverManagerSingleton")];
      self->mWiFiLinkUP = 0;
      xpc_release(values);
      xpc_release(v12);
      xpc_release(v11);
      return;
    }

    value = 0;
    if (self->mWifiDevice)
    {
      v13 = WiFiDeviceClientCopyCurrentNetwork();
      if (v13)
      {
        v14 = v13;
        NetworkChannel = WiFiGetNetworkChannel();
        CFNumberGetValue(NetworkChannel, kCFNumberIntType, &value);
        if (WiFiNetworkGetProperty() || WiFiNetworkGetProperty() || WiFiNetworkGetProperty())
        {
          if (WiFiNetworkGetProperty())
          {
            if (WiFiNetworkGetProperty())
            {
              CFNumberGetValue(NetworkChannel, kCFNumberIntType, &value);
            }

            Property = WiFiNetworkGetProperty();
            if (Property)
            {
              v17 = Property;
              mCurrentSSID = self->mCurrentSSID;
              if (mCurrentSSID)
              {
              }

              self->mCurrentSSID = [v17 copy];
              goto LABEL_25;
            }

            [WCM_Logging logLevel:0 message:@"WiFiS: WiFi network has invalid SSID"];
          }

LABEL_37:
          CFRelease(v14);
          return;
        }

        v17 = 0;
LABEL_25:
        valuePtr = 0xFFFFFDA8FFFFFDA8;
        v19 = WiFiNetworkGetProperty();
        if (v19)
        {
          CFNumberGetValue(v19, kCFNumberIntType, &valuePtr + 4);
        }

        v20 = WiFiNetworkGetProperty();
        if (v20)
        {
          CFNumberGetValue(v20, kCFNumberIntType, &valuePtr);
        }

        if ((valuePtr & 0x8000000000000000) == 0)
        {
          valuePtr = 0xFFFFFDA8FFFFFDA8;
        }

        self->mWiFiLinkUP = 1;
        [WCM_Logging logLevel:3 message:@"WiFiS: send WiFi linkup status to Handover Manager"];
        v21 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_int64(v21, "kWRM_WiFi_LINK_STATUS", 0);
        xpc_dictionary_set_int64(v21, "kWRM_CONNECTED_CHANNEL_ID", value);
        xpc_dictionary_set_int64(v21, "kWRMM_WiFi_SNR", valuePtr);
        xpc_dictionary_set_int64(v21, "kWRMM_WiFi_RSSI", SHIDWORD(valuePtr));
        if (v17)
        {
          xpc_dictionary_set_string(v21, "kWRM_CONNECTED_AP_SSID", [v17 UTF8String]);
        }

        v22 = WiFiNetworkGetProperty();
        if (v22)
        {
          xpc_dictionary_set_string(v21, "kWRM_CONNECTED_AP_BSSID", [v22 UTF8String]);
        }

        *keys = *off_100242280;
        values = xpc_uint64_create(0x67uLL);
        v28 = v21;
        v23 = xpc_dictionary_create(keys, &values, 2uLL);
        [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
        [+[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton](WRM_IDSLinkEvalManager "WRM_IDSLinkEvalManagerSingleton")];
        xpc_release(values);
        xpc_release(v23);
        xpc_release(v21);
        goto LABEL_37;
      }
    }
  }
}

- (void)notifyWiFiStateChange:(BOOL)a3
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, "kWRM_is5G", a3);
  *keys = *off_100242280;
  object[0] = xpc_uint64_create(0x6DuLL);
  object[1] = v4;
  v5 = xpc_dictionary_create(keys, object, 2uLL);
  [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  xpc_release(object[0]);
  xpc_release(v5);
  xpc_release(v4);
}

- (void)checkWiFiState
{
  valuePtr = 0;
  if (self->mWifiDevice)
  {
    v3 = WiFiDeviceClientCopyCurrentNetwork();
    if (v3)
    {
      v4 = v3;
      Channel = WiFiNetworkGetChannel();
      if (!Channel || ((CFNumberGetValue(Channel, kCFNumberIntType, &valuePtr), (OperatingBand = WiFiNetworkGetOperatingBand()) != 0) ? (v7 = valuePtr == 0) : (v7 = 1), v7))
      {
        ChannelWidthInMHz = 0;
        v9 = 0;
      }

      else
      {
        v11 = OperatingBand;
        ChannelWidthInMHz = WiFiNetworkGetChannelWidthInMHz();
        if (v11 == 2)
        {
          v12 = 3;
        }

        else
        {
          v12 = 4;
        }

        if (v11 == 1)
        {
          v12 = 2;
        }

        self->mWifiBand = v12;
        if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
        {
          v13 = sub_10008F0C8(valuePtr, ChannelWidthInMHz, self->mWifiBand);
        }

        else
        {
          v13 = sub_10008F030(valuePtr);
        }

        v9 = v13;
        self->mBandwidthMHz = ChannelWidthInMHz;
      }

      if (self->super.mDelegate)
      {
        [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
        [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
        [(WCM_WiFiDelegate *)self->super.mDelegate updateWiFiState:self->mWifiBand channel:valuePtr centerFreq:v9 bandwidth:ChannelWidthInMHz hostAp:0];
      }

      CFRelease(v4);
    }

    else
    {
      [WCM_Logging logLevel:0 message:@"WiFiS: not associated to network"];
      v10 = +[WCM_PolicyManager singleton];

      [v10 updateWiFiRadioState:1];
    }
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WiFiS: device not attached"];
  }
}

- (void)performScan:(id)a3
{
  if (self->mWifiDevice)
  {
    +[NSMutableArray array];
    CFRunLoopGetCurrent();
    +[NSMutableDictionary dictionary];
    mWifiDevice = self->mWifiDevice;
    v5 = WiFiDeviceClientScanAsync();
    if (CFRunLoopRunInMode(NSDefaultRunLoopMode, 120.0, 0) == kCFRunLoopRunTimedOut)
    {
      [WCM_Logging logLevel:0 message:@"%s WiFiS: Runloop timed out", "[WCM_WiFiServiceIOS performScan:]"];
    }

    if (v5)
    {
      [WCM_Logging logLevel:0 message:@"WiFiS: Async Scan returned error %d %d", v5, 0];
    }
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"%s WiFiS: device not attached", "[WCM_WiFiServiceIOS performScan:]", v6];
  }
}

- (id)getLeastCongestedWifiParam
{
  [WCM_Logging logLevel:0 message:@"WCM_WiFiService getLeastCongestedWifiParam"];
  v3 = +[NSMutableArray array];
  [v3 addObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", self->mLeastCongestedChannel)}];
  [v3 addObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", self->mLeastCongestedChannelCount)}];
  return v3;
}

- (void)setWiFiCallingState:(BOOL)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FDF14;
  block[3] = &unk_10023E008;
  block[4] = self;
  v5 = a3;
  dispatch_async(&_dispatch_main_q, block);
  [WCM_Logging logLevel:19 message:@"setWiFiCallingState called, mWifiManager: %x", self->mWifiManager];
}

- (void)disableWiFi
{
  if (self->mWifiDevice)
  {
    v3 = WiFiDeviceClientCopyCurrentNetwork();
    if (v3)
    {
      v4 = v3;
      [WCM_Logging logLevel:19 message:@"DisableWiFi %@", WiFiNetworkGetSSID()];
      mWifiManager = self->mWifiManager;
      WiFiManagerClientTemporarilyDisableNetwork();
      CFRelease(v4);
      v6 = self->mWifiManager;
      if (WiFiManagerClientGetDevice())
      {
        mWifiDevice = self->mWifiDevice;
        v8 = WiFiDeviceClientDisassociate();
        if (v8)
        {
          [WCM_Logging logLevel:19 message:@"WiFiDeviceClientDisassociate failed: %d", v8];
        }
      }

      return;
    }

    v9 = @"returning from disableWiFi, network is NULL";
  }

  else
  {
    v9 = @"returning from disableWiFi, mWiFiDevice is NULL";
  }

  [WCM_Logging logLevel:19 message:v9];
}

- (void)setMedtronicState:(int)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FE0D0;
  v3[3] = &unk_10023DBA0;
  v4 = a3;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (BOOL)setWiFiBTCoexProfile:(id)a3 atIndex:(int64_t)a4
{
  v7 = [NSMutableDictionary dictionaryWithDictionary:?];
  [(NSMutableDictionary *)v7 setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:a4], @"UCM_PROFILE_INDEX"];
  v8 = [(WCM_WiFiServiceIOS *)self sendMessage:&off_100272258 withValue:v7];
  if (v8)
  {
    [WCM_Logging logLevel:0 message:@"WiFiS: failed to download profile to index %d with error(%s)\n%@", a4, Apple80211ErrToStr(), a3];
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"WiFiS: succeed to download profile to index %d\n%@", a4, v7, v10];
  }

  return v8 == 0;
}

- (void)setWiFiBTCoexActiveProfileFor2G:(int64_t)a3 and5G:(int64_t)a4
{
  v5 = a3 | (a4 << 16);
  [WCM_Logging logLevel:2 message:@"WiFiS: Set Active Profile index2G(%ld) and index5G(%ld)", a3, a4];
  v6 = [NSNumber numberWithUnsignedInt:v5];

  [(WCM_WiFiServiceIOS *)self sendMessage:&off_100272270 withValue:v6];
}

- (BOOL)setWiFiBTExtCoexProfile:(id)a3 atIndex:(int64_t)a4
{
  v7 = [NSMutableDictionary dictionaryWithDictionary:?];
  [(NSMutableDictionary *)v7 setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:a4], @"UCM_EXT_PROFILE_INDEX"];
  v8 = [(WCM_WiFiServiceIOS *)self sendMessage:&off_100272288 withValue:v7];
  if (v8)
  {
    [WCM_Logging logLevel:0 message:@"WiFiS: failed to download extended profile to index %ld with error(%s)\n%@", a4, Apple80211ErrToStr(), a3];
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"WiFiS: succeed to download extended profile to index %ld\n%@", a4, v7, v10];
  }

  return v8 == 0;
}

- (void)setCoexParams:(const char *)a3 withValue:(id)a4
{
  [WCM_Logging logLevel:2 message:@"%s: %s", "[WCM_WiFiServiceIOS setCoexParams:withValue:]", a3];
  v7 = CFStringCreateWithCString(0, a3, 0x8000100u);

  [(WCM_WiFiServiceIOS *)self sendMessage:v7 withValue:a4];
}

@end