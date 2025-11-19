@interface AriCoexUnitTest
- (AriCoexUnitTest)init;
- (id)createXpcMsg_AntBitmap;
- (id)createXpcMsg_AntennaTunerConfig:(unint64_t)a3 State:(unint64_t)a4 UseCase:(unint64_t)a5;
- (id)createXpcMsg_CamAntBlockingConfig;
- (id)createXpcMsg_CameraStateConfig;
- (id)createXpcMsg_LAAConfig;
- (id)createXpcMsg_MiscConfig;
- (id)createXpcMsg_RC1Config;
- (id)createXpcMsg_ScanFreq;
- (id)createXpcMsg_SetAllCC;
- (id)createXpcMsg_SetCC1;
- (id)createXpcMsg_SetCC2;
- (id)createXpcMsg_SpmiFeature_TxBlanking_PwrLmt;
- (id)createXpcMsg_TimeShareConfig;
- (id)createXpcMsg_TxActivityConfig;
- (id)createXpcMsg_UwbAntBlockingConfig;
- (id)createXpcMsg_WiFiAntBlockingConfig;
- (id)sendMessage:(unint64_t)a3 withArgs:(id)a4 withExtraKey:(const char *)a5 andExtraValue:(id)a6;
- (void)reloadAriDriverSettingsFromPreferences;
- (void)setAriDriverSettingsToPreferences:(BOOL)a3;
@end

@implementation AriCoexUnitTest

- (void)reloadAriDriverSettingsFromPreferences
{
  v3 = CFPreferencesCopyAppValue(@"AriDebug", @"com.apple.WirelessRadioManager.debug");
  if (v3)
  {
    v4 = v3;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v4))
    {
      value = 0;
      if (CFDictionaryGetValueIfPresent(v4, @"AriTestMode", &value) && (v6 = CFStringGetTypeID(), v6 == CFGetTypeID(value)))
      {
        v7 = CFStringCompare(@"TRUE", value, 0) == kCFCompareEqualTo;
        v8 = v7;
        v9 = "FALSE";
        if (v7)
        {
          v9 = "TRUE";
        }

        [WCM_Logging logLevel:3 message:@"ARI Test Mode read from preference %s", v9];
      }

      else
      {
        [WCM_Logging logLevel:3 message:@"ARI Driver setting(UnitTest mode) not found"];
        v8 = 0;
      }

      if (CFDictionaryGetValueIfPresent(v4, @"DisableCoexAri", &value))
      {
        v11 = CFStringGetTypeID();
        if (v11 == CFGetTypeID(value))
        {
          v7 = CFStringCompare(@"TRUE", value, 0) == kCFCompareEqualTo;
          v10 = v7;
          v12 = "FALSE";
          if (v7)
          {
            v12 = "TRUE";
          }

          [WCM_Logging logLevel:3 message:@"Disable Coex ARI flag read from preference %s", v12];
          goto LABEL_18;
        }
      }

      [WCM_Logging logLevel:3 message:@"ARI Driver setting(Disable Coex ARI) not found"];
    }

    else
    {
      [WCM_Logging logLevel:3 message:@"AriDebug not Found"];
      v8 = 0;
    }

    v10 = 1;
LABEL_18:
    CFRelease(v4);
    goto LABEL_19;
  }

  [WCM_Logging logLevel:3 message:@"AriDebug not Found"];
  v8 = 0;
  v10 = 1;
LABEL_19:
  self->mUnitTest = v8;
  self->mDisableCoexARI = v10;
  [WCM_Logging logLevel:3 message:@"ARI Driver current preference setting: UnitTest=%d, DisableCoexARI=%d", v8, v10];
}

- (void)setAriDriverSettingsToPreferences:(BOOL)a3
{
  v3 = "FALSE";
  if (a3)
  {
    v3 = "TRUE";
  }

  values = [NSString stringWithFormat:@"%s", v3];
  keys = @"AriTestMode";
  v4 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v4)
  {
    v5 = v4;
    CFPreferencesSetAppValue(@"AriDebug", v4, @"com.apple.WirelessRadioManager.debug");
    CFRelease(v5);
  }

  if (!CFPreferencesAppSynchronize(@"com.apple.WirelessRadioManager.debug"))
  {
    [WCM_Logging logLevel:3 message:@"%s: Failed to sync the preferences.", "[AriCoexUnitTest setAriDriverSettingsToPreferences:]"];
  }
}

- (AriCoexUnitTest)init
{
  v4.receiver = self;
  v4.super_class = AriCoexUnitTest;
  v2 = [(AriCoexUnitTest *)&v4 init];
  v2->mAntBlockPolicy = 0;
  v2->mAntBlockPolicy = [[WCM_AntBlockPowerLimitPolicy alloc] initWithPlatformId:23];
  [(AriCoexUnitTest *)v2 reloadAriDriverSettingsFromPreferences];
  return v2;
}

- (id)sendMessage:(unint64_t)a3 withArgs:(id)a4 withExtraKey:(const char *)a5 andExtraValue:(id)a6
{
  keys[0] = "kMessageId";
  keys[1] = "kMessageArgs";
  keys[2] = a5;
  values[0] = xpc_uint64_create(a3);
  values[1] = a4;
  values[2] = a6;
  v9 = xpc_dictionary_create(keys, values, 3uLL);
  [WCM_Logging logLevel:3 message:@"ARI Driver UnitTest: Create messageId(%lld): %@", a3, v9];
  return v9;
}

- (id)createXpcMsg_LAAConfig
{
  result = xpc_dictionary_create(0, 0, 0);
  if (result)
  {
    v4 = result;
    xpc_dictionary_set_BOOL(result, "WCMCellularSetLAAConfig_CoexEnable", 1);
    xpc_dictionary_set_uint64(v4, "WCMCellularSetLAAConfig_ProtectCQIPeriod", 0x64uLL);
    xpc_dictionary_set_uint64(v4, "WCMCellularSetLAAConfig_ThresholdIn", 0x14uLL);
    xpc_dictionary_set_uint64(v4, "WCMCellularSetLAAConfig_ThresholdOut", 0xAuLL);
    xpc_dictionary_set_uint64(v4, "WCMCellularSetLAAConfig_DeactTimer", 0x1F4uLL);
    xpc_dictionary_set_uint64(v4, "WCMCellularSetLAAConfig_DeactStopTimer", 0x1F4uLL);
    v5 = xpc_uint64_create(0);

    return [(AriCoexUnitTest *)self sendMessage:1211 withArgs:v4 withExtraKey:"kSubId" andExtraValue:v5];
  }

  return result;
}

- (id)createXpcMsg_RC1Config
{
  v3 = xpc_uint64_create(0);
  result = xpc_dictionary_create(0, 0, 0);
  if (result)
  {
    v5 = result;
    xpc_dictionary_set_uint64(result, "WCMCellularSetLAAConfig_UwbRangingDuration", 0x9C40uLL);
    xpc_dictionary_set_uint64(v5, "WCMCellularSetLAAConfig_UwbNarrowBandDuration", 0xC350uLL);
    xpc_dictionary_set_uint64(v5, "kWCMCellularSetLaaGpioThrottleReq_Enabled", 1uLL);
    xpc_dictionary_set_uint64(v5, "kWCMCellularSetLaaGpioThrottleReq_Periodicity", 0x64uLL);

    return [(AriCoexUnitTest *)self sendMessage:1213 withArgs:v5 withExtraKey:"kSubId" andExtraValue:v3];
  }

  return result;
}

- (id)createXpcMsg_ScanFreq
{
  v3 = xpc_array_create(0, 0);
  *keys = *off_10023F840;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [&off_1002859D0 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(&off_1002859D0);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 count] == 2)
        {
          v9 = [objc_msgSend(v8 objectAtIndex:{1), "integerValue"}];
          v10 = v9 - [objc_msgSend(v8 objectAtIndex:{0), "integerValue"}];
          values[0] = xpc_int64_create([objc_msgSend(v8 objectAtIndex:{0), "integerValue"}] + (v10 >> 1));
          values[1] = xpc_int64_create(v10);
          v11 = xpc_dictionary_create(keys, values, 2uLL);
          xpc_array_append_value(v3, v11);
        }
      }

      v5 = [&off_1002859D0 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v5);
  }

  return [(AriCoexUnitTest *)self sendMessage:1208 withArgs:v3 withExtraKey:"kSubId" andExtraValue:xpc_uint64_create(0)];
}

- (id)createXpcMsg_SpmiFeature_TxBlanking_PwrLmt
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetWCI2Mode_Policy", 0x8FDAuLL);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetWCI2Mode_PowerThreshold", 0x12uLL);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetWCI2Mode_RB_Threshold", 0x25uLL);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetWCI2Mode_LTE_TxDenialThreshold", 7uLL);
  xpc_dictionary_set_int64(v3, "kWCMCellularSetWCI2Mode_MaxAllowedFrameDenials", 25);
  xpc_dictionary_set_int64(v3, "kWCMCellularSetWCI2Mode_FrameDenialWindow", 200);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetWCI2Mode_APTTable", 0);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetWCI2Mode_ControllerTxPowerLimit", 0x1EuLL);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetWCI2Mode_WCI2PowerLimit", 0x13uLL);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetWCI2Mode_LinkPathLossThreshold", 0x6BuLL);
  xpc_dictionary_set_double(v3, "kWCMCellularSetWCI2Mode_RBFilterAlpha", 0.05);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetWCI2Mode_FilterRBThreshold", 0x25uLL);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetWCI2Mode_ControllerTxPowerLimitTO", 0);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetWCI2Mode_WCI2PowerLimitTO", 0x96uLL);
  xpc_dictionary_set_int64(v3, "kWCMCellularSetWCI2Mode_TxPowerThresholdForAdvTxNotice", 19);
  xpc_dictionary_set_int64(v3, "kWCMCellularSetWCI2Mode_RbThresholdForAdvTxNotice", 37);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetWCI2Mode_Controller_RB_Threshold", 0);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetWCI2Mode_Harq_nack_ratio_Threshold", 0);
  xpc_dictionary_set_BOOL(v3, "kWCMCellularSetWCI2Mode_Controller_PowerLimiting_Enable", 0);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetWCI2Mode_CoexTech", 9uLL);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetWCI2Mode_NGC_TxDenialThresholdSlots", 7uLL);
  xpc_dictionary_set_int64(v3, "kWCMCellularSetWCI2Mode_NGC_MaxAllowedSlotDenials", 25);
  xpc_dictionary_set_int64(v3, "kWCMCellularSetWCI2Mode_NGC_SlotsDenialWindow", 200);
  v4 = xpc_uint64_create(0);

  return [(AriCoexUnitTest *)self sendMessage:1205 withArgs:v3 withExtraKey:"kSubId" andExtraValue:v4];
}

- (id)createXpcMsg_SetAllCC
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = xpc_uint64_create(0);

  return [(AriCoexUnitTest *)self sendMessage:1235 withArgs:v3 withExtraKey:"kSubId" andExtraValue:v4];
}

- (id)createXpcMsg_SetCC1
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, "kWCMCellularSetCC_Enable", 1);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetCC_CoexTech", 1uLL);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetCC_CarrierId", 0);
  xpc_dictionary_set_double(v3, "kWCMCellularSetCC_UplinkCenterFrequency", 2560.0);
  xpc_dictionary_set_double(v3, "kWCMCellularSetCC_UplinkBandwidth", 10.0);
  xpc_dictionary_set_double(v3, "kWCMCellularSetCC_DownlinkCenterFrequency", 2630.0);
  xpc_dictionary_set_double(v3, "kWCMCellularSetCC_DownlinkBandwidth", 10.0);
  v4 = xpc_uint64_create(0);

  return [(AriCoexUnitTest *)self sendMessage:1217 withArgs:v3 withExtraKey:"kSubId" andExtraValue:v4];
}

- (id)createXpcMsg_SetCC2
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, "kWCMCellularSetCC_Enable", 1);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetCC_CoexTech", 0x40uLL);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetCC_CarrierId", 0);
  xpc_dictionary_set_double(v3, "kWCMCellularSetCC_UplinkCenterFrequency", 2570.0);
  xpc_dictionary_set_double(v3, "kWCMCellularSetCC_UplinkBandwidth", 10.0);
  xpc_dictionary_set_double(v3, "kWCMCellularSetCC_DownlinkCenterFrequency", 2640.0);
  xpc_dictionary_set_double(v3, "kWCMCellularSetCC_DownlinkBandwidth", 10.0);
  v4 = xpc_uint64_create(0);

  return [(AriCoexUnitTest *)self sendMessage:1218 withArgs:v3 withExtraKey:"kSubId" andExtraValue:v4];
}

- (id)createXpcMsg_TimeShareConfig
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetTimeShareConfig_Enable", 1uLL);
  xpc_dictionary_set_uint64(v3, "kWCMCellularTimeShareConfig_CoexTech", 1uLL);
  xpc_dictionary_set_uint64(v3, "kWCMCellularTimeShareConfig_CallType", 2uLL);
  xpc_dictionary_set_uint64(v3, "kWCMCellularTimeShareConfig_LongDrxCycle", 0x28uLL);
  xpc_dictionary_set_uint64(v3, "kWCMCellularTimeShareConfig_ShortDrxCycle", 0);
  xpc_dictionary_set_uint64(v3, "kWCMCellularTImeShareConfig_SleepWakeDurScale", 5uLL);
  v4 = xpc_array_create(0, 0);
  values[0] = xpc_int64_create(7);
  values[1] = xpc_int64_create(10);
  v7 = *off_10023F850;
  v5 = xpc_dictionary_create(&v7, values, 2uLL);
  xpc_array_append_value(v4, v5);
  xpc_dictionary_set_value(v3, "kWCMCellularTImeShareConfig_BandInformationSet", v4);
  return [(AriCoexUnitTest *)self sendMessage:1214 withArgs:v3 withExtraKey:"kSubId" andExtraValue:xpc_uint64_create(0)];
}

- (id)createXpcMsg_WiFiAntBlockingConfig
{
  mAntBlockPolicy = self->mAntBlockPolicy;
  if (!mAntBlockPolicy)
  {
    return 0;
  }

  v4 = [(WCM_AntBlockPowerLimitPolicy *)mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:0];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = xpc_uint64_create(0);

  return [(AriCoexUnitTest *)self sendMessage:1225 withArgs:v5 withExtraKey:"kSubId" andExtraValue:v6];
}

- (id)createXpcMsg_UwbAntBlockingConfig
{
  mAntBlockPolicy = self->mAntBlockPolicy;
  if (!mAntBlockPolicy)
  {
    return 0;
  }

  v4 = [(WCM_AntBlockPowerLimitPolicy *)mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:1];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = xpc_uint64_create(0);

  return [(AriCoexUnitTest *)self sendMessage:1226 withArgs:v5 withExtraKey:"kSubId" andExtraValue:v6];
}

- (id)createXpcMsg_CamAntBlockingConfig
{
  mAntBlockPolicy = self->mAntBlockPolicy;
  if (!mAntBlockPolicy)
  {
    return 0;
  }

  v4 = [(WCM_AntBlockPowerLimitPolicy *)mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:2];
  v5 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:3];
  if (!(v4 | v5))
  {
    return 0;
  }

  v6 = v5;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (v4)
  {
    xpc_dictionary_set_value(v7, "kWCMCellularSetAntBlocking_FrontCameraPolicy", v4);
  }

  if (v6)
  {
    xpc_dictionary_set_value(v8, "kWCMCellularSetAntBlocking_FaceIdCameraPolicy", v6);
  }

  if (!v8)
  {
    return 0;
  }

  v9 = xpc_uint64_create(0);

  return [(AriCoexUnitTest *)self sendMessage:1227 withArgs:v8 withExtraKey:"kSubId" andExtraValue:v9];
}

- (id)createXpcMsg_AntBitmap
{
  v3 = xpc_array_create(0, 0);
  v4 = xpc_dictionary_create(0, 0, 0);
  [WCM_Logging logLevel:4 message:@"BB22AntMapping_:Updating antenna map params to cellular modem"];
  xpc_dictionary_set_uint64(v4, "kWCMCellularSetWCI2TxAntMap_Enable", 1uLL);
  xpc_dictionary_set_uint64(v4, "kWCMCellularSetWCI2TxAntMap_DefaultIdx", 0);
  xpc_dictionary_set_uint64(v4, "kWCMCellularSetWCI2Type7FRTwoTxEnable", 1uLL);
  for (i = 0; i != 10; ++i)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", i);
    xpc_dictionary_set_uint64(v6, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", [objc_msgSend(&off_1002859E8 objectAtIndex:{i), "intValue"}]);
    xpc_array_append_value(v3, v6);
  }

  xpc_dictionary_set_value(v4, "kWCMCellularSetWCI2TxAntMap_InformationSet", v3);
  v7 = xpc_uint64_create(0);

  return [(AriCoexUnitTest *)self sendMessage:1215 withArgs:v4 withExtraKey:"kSubId" andExtraValue:v7];
}

- (id)createXpcMsg_MiscConfig
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetMiscConfig_UwbInactivityDurationThreshold", 0x96uLL);
  v4 = xpc_uint64_create(0);

  return [(AriCoexUnitTest *)self sendMessage:1231 withArgs:v3 withExtraKey:"kSubId" andExtraValue:v4];
}

- (id)createXpcMsg_TxActivityConfig
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "kWCMCellularSetTxActivityConfig_TxEnvPowerThreshold", 320);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetTxActivityConfig_TxEnvMinDuration", 0x14uLL);
  xpc_dictionary_set_BOOL(v3, "kWCMCellularSetTxActivityConfig_TxStatsEnable", 1);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetTxActivityConfig_TxStatsCadence", 0x12CuLL);
  v4 = xpc_uint64_create(0);

  return [(AriCoexUnitTest *)self sendMessage:1232 withArgs:v3 withExtraKey:"kSubId" andExtraValue:v4];
}

- (id)createXpcMsg_CameraStateConfig
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetCameraState", 9uLL);
  v4 = xpc_uint64_create(0);

  return [(AriCoexUnitTest *)self sendMessage:1234 withArgs:v3 withExtraKey:"kSubId" andExtraValue:v4];
}

- (id)createXpcMsg_AntennaTunerConfig:(unint64_t)a3 State:(unint64_t)a4 UseCase:(unint64_t)a5
{
  v8 = xpc_uint64_create(a4);
  v9 = xpc_uint64_create(a5);
  v10 = xpc_array_create(0, 0);
  xpc_array_append_value(v10, v8);
  xpc_array_append_value(v10, v9);
  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v11, "kWCMCellularTransparentMessage_ByteList", v10);
  xpc_dictionary_set_uint64(v11, "kWCMCellularTransparentMessage_Type", a3);
  v12 = xpc_array_create(0, 0);
  xpc_array_append_value(v12, v11);
  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v13, "kWCMCellularTransparentMessageInformationSet", v12);
  v14 = xpc_uint64_create(0);

  return [(AriCoexUnitTest *)self sendMessage:1223 withArgs:v13 withExtraKey:"kSubId" andExtraValue:v14];
}

@end