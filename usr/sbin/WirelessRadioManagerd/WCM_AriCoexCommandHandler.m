@interface WCM_AriCoexCommandHandler
- (BOOL)cacheEvent:(id)a3;
- (BOOL)cacheTunerTransparentMessage:(id)a3;
- (WCM_AriCoexCommandHandler)init;
- (id).cxx_construct;
- (id)assembleCellularConfigXpcMsg:(t_s_UtaIdcCellConfig *)a3;
- (id)assembleDesenseCellularConfigXpcMsgwithDownlinkFreq:(IBIAccServingDLFreqBandwidthInfo *)a3 DownlinkFreqExt:(IBIAccServingDLFreqBandwidthInfo_ext *)a4 UlFreq:(IBIAccServingULFreqBandwidthInfo *)a5 UplinkFreqExt:(IBIAccServingULFreqBandwidthInfo_ext *)a6 SearchFreq:(IBIAccSearchFreqBandwidthInfo *)a7 HoppingFreq:(IBIAccHoppingFreqBandwidthInfo *)a8 NeighborFreq:(IBIAccNeighborFreqBandwidthInfo *)a9 RPLMNFreq:(IBIAccRPLMNFreqBandwidthInfo *)a10;
- (id)createMessageWithMsgId:(unint64_t)a3 withArgs:(id)a4 withSubId:(id)a5;
- (int)convertInternalCallType:(unint64_t)a3;
- (int)convertInternalCoexTech:(unint64_t)a3;
- (unint64_t)getSubIdFromInternalCoexTech:(unint64_t)a3;
- (void)UtaIdcCellConfigEventIndHandle:(char *)a3 size:(unsigned int)a4;
- (void)appendDesenseFreqToXpcArray:(id)a3 DesenseFreq:(IBIAccFreqBandwidthInfo *)a4 Size:(unsigned int)a5;
- (void)clientStarted;
- (void)configureAccReportMode;
- (void)connectBaseband;
- (void)convertToAriType_BtState:(unint64_t)a3 userCase:(unint64_t)a4 AriState:(unint64_t *)a5 AriUseCase:(unint64_t *)a6;
- (void)convertToAriType_FigaroState:(unint64_t)a3 userCase:(unint64_t)a4 AriState:(unint64_t *)a5 AriUseCase:(unint64_t *)a6;
- (void)convertToAriType_GnssState:(unint64_t)a3 userCase:(unint64_t)a4 AriState:(unint64_t *)a5 AriUseCase:(unint64_t *)a6;
- (void)convertToAriType_UwbState:(unint64_t)a3 userCase:(unint64_t)a4 AriState:(unint64_t *)a5 AriUseCase:(unint64_t *)a6;
- (void)convertToAriType_WiFiState:(unint64_t)a3 userCase:(unint64_t)a4 AriState:(unint64_t *)a5 AriUseCase:(unint64_t *)a6;
- (void)desenseCellConfigEventIndHandle:(char *)a3 size:(unsigned int)a4;
- (void)fetchLegacyRatFrequency:(t_s_UtaIdcLegacyRatCarrierInfoSet *)a3 freqInfoXpc:(id)a4;
- (void)fetchLteNrFrequency:(t_s_UtaIdcLteNrCarrierInfoSet *)a3 freqInfoXpc:(id)a4 carrierIdXpc:(id)a5;
- (void)fetchLtePccFrequency:(t_s_UtaIdcLteNrCarrierInfoSet *)a3 pccUplinkFreq:(int64_t *)a4 pccUplinkBw:(double *)a5 pccDownlinkFreq:(int64_t *)a6 pccDownlinkBw:(double *)a7;
- (void)getCellularLaaMeasInfo:(id)a3 SubId:(unsigned int)a4;
- (void)getCellularNetworkConfig:(id)a3 SubId:(unsigned int)a4;
- (void)handleCoexManagerEvent:(id)a3;
- (void)handleEvent:(id)a3;
- (void)handleGnssImdAntBlockPowerLimitConfig:(id)a3;
- (void)printGnssImdConfig:(t_s_UtaIdcCellImdGnssMitigationPolicyConfig *)a3;
- (void)replayCachedEvent;
- (void)sendMessage:(unint64_t)a3 withArgs:(id)a4 withSubId:(unint64_t)a5;
- (void)setAntennaBlockingPolicyForPlatformId:(unint64_t)a3 activeSubId:(unint64_t)a4 AntBlockPowerLimitPlist:(id)a5;
- (void)setCoexOSFeatureFlag;
- (void)setCoexPlatformFeatureFlag;
- (void)setDefaultEvent;
- (void)setDefaultMiscConfig;
- (void)setE85AntBlockingPowerLimitingConfig:(id)a3 SubId:(unsigned int)a4;
- (void)updateBasebandPowerState;
@end

@implementation WCM_AriCoexCommandHandler

- (void)connectBaseband
{
  [WCM_Logging logLevel:3 message:@"ICE Client to be started"];
  ptr = self->mIceClient.__ptr_;

  sub_1000E4B74(ptr);
}

- (void)setCoexOSFeatureFlag
{
  self->coexOSFeatureGroupEnabled[0] = 1;
  coexOSFeatureGroupEnabled = self->coexOSFeatureGroupEnabled;
  *&self->coexOSFeatureGroupEnabled[1] = 0;
  v4 = &self->coexOSFeatureGroupEnabled[1];
  *&self->coexOSFeatureGroupEnabled[6] = 0;
  if (_os_feature_enabled_impl())
  {
    *v4 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[2] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[3] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[4] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[5] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[6] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[7] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[9] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[8] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[10] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[11] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[12] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[13] = 1;
  }

  for (i = 0; i != 14; ++i)
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI Driver:  coexOSFeatureGroupEnabled[%u] = %d\n", i, coexOSFeatureGroupEnabled[i]];
  }
}

- (void)setCoexPlatformFeatureFlag
{
  v3 = +[WCM_PolicyManager singleton];
  *&self->coexPlatformFeatureGroupEnabled[1] = 0;
  self->coexPlatformFeatureGroupEnabled[0] = 1;
  *&self->coexPlatformFeatureGroupEnabled[6] = 0;
  v31 = v3;
  v4 = [v3 activeCoexFeatures];
  v5 = [v4 containsObject:@"CoexFeatureGroupTimeSharingSupport"];

  if (v5)
  {
    self->coexPlatformFeatureGroupEnabled[1] = 1;
  }

  v6 = [v31 activeCoexFeatures];
  v7 = [v6 containsObject:@"CoexFeatureGroupRxActivityProtectSupport"];

  if (v7)
  {
    self->coexPlatformFeatureGroupEnabled[2] = 1;
  }

  v8 = [v31 activeCoexFeatures];
  v9 = [v8 containsObject:@"CoexFeatureGroupCameraSupport"];

  if (v9)
  {
    self->coexPlatformFeatureGroupEnabled[3] = 1;
  }

  v10 = [v31 activeCoexFeatures];
  v11 = [v10 containsObject:@"CoexFeatureGroupConditionalMitigationSupport"];

  if (v11)
  {
    self->coexPlatformFeatureGroupEnabled[4] = 1;
  }

  v12 = [v31 activeCoexFeatures];
  v13 = [v12 containsObject:@"CoexFeatureGroupBtClockAlignmentSupport"];

  if (v13)
  {
    self->coexPlatformFeatureGroupEnabled[5] = 1;
  }

  v14 = [v31 activeCoexFeatures];
  v15 = [v14 containsObject:@"CoexFeatureGroupHpCellularSupport"];

  if (v15)
  {
    self->coexPlatformFeatureGroupEnabled[6] = 1;
  }

  v16 = [v31 activeCoexFeatures];
  v17 = [v16 containsObject:@"CoexFeatureGroupUwbSupport"];

  if (v17)
  {
    self->coexPlatformFeatureGroupEnabled[7] = 1;
  }

  v18 = [v31 activeCoexFeatures];
  v19 = [v18 containsObject:@"CoexFeatureGroupNfcSupport"];

  if (v19)
  {
    self->coexPlatformFeatureGroupEnabled[9] = 1;
  }

  v20 = [v31 activeCoexFeatures];
  v21 = [v20 containsObject:@"CoexFeatureGroupUsbCSupport"];

  if (v21)
  {
    self->coexPlatformFeatureGroupEnabled[8] = 1;
  }

  v22 = [v31 activeCoexFeatures];
  v23 = [v22 containsObject:@"CoexFeatureGroupGnssImdSupport"];

  if (v23)
  {
    self->coexPlatformFeatureGroupEnabled[10] = 1;
  }

  v24 = [v31 activeCoexFeatures];
  v25 = [v24 containsObject:@"CoexFeatureGroupAntTunerSupport"];

  if (v25)
  {
    self->coexPlatformFeatureGroupEnabled[11] = 1;
  }

  v26 = [v31 activeCoexFeatures];
  v27 = [v26 containsObject:@"CoexFeatureGroupStateIndSupport"];

  if (v27)
  {
    self->coexPlatformFeatureGroupEnabled[12] = 1;
  }

  v28 = [v31 activeCoexFeatures];
  v29 = [v28 containsObject:@"CoexFeatureGroupSFBMSupport"];

  if (v29)
  {
    self->coexPlatformFeatureGroupEnabled[13] = 1;
  }

  for (i = 0; i != 14; ++i)
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI Driver:  coexPlatformFeatureGroupEnabled[%u] = %d\n", i, self->coexPlatformFeatureGroupEnabled[i]];
  }
}

- (WCM_AriCoexCommandHandler)init
{
  v12.receiver = self;
  v12.super_class = WCM_AriCoexCommandHandler;
  v2 = [(WCM_AriCoexCommandHandler *)&v12 init];
  [WCM_Logging logLevel:3 message:@"Coex ARI driver: Init the WCM_AriCoexCommandHandler"];
  if (v2)
  {
    mCellularController = v2->mCellularController;
    v2->mCellularController = 0;

    mAntBlockPolicy = v2->mAntBlockPolicy;
    v2->mAntBlockPolicy = 0;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create("com.apple.WRM_IceClientDriver.CoexManager", v5);
    fObj = v2->mIceClientQueue.fObj.fObj;
    v2->mIceClientQueue.fObj.fObj = v6;

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v9 = dispatch_queue_create("com.apple.CoexManager.AriDriver", v8);
    mQueue = v2->mQueue;
    v2->mQueue = v9;

    sub_100026C68();
  }

  return 0;
}

- (void)clientStarted
{
  [WCM_Logging logLevel:3 message:@"Coex ARI Driver:  ICE Client started\n"];
  [(WCM_AriCoexCommandHandler *)self setCoexPlatformFeatureFlag];
  [(WCM_AriCoexCommandHandler *)self setSpmiFeature:0 SubId:0];
  [(WCM_AriCoexCommandHandler *)self setSpmiFeature:0 SubId:1];
  [(WCM_AriCoexCommandHandler *)self setDefaultEvent];
  ptr = self->mIceClient.__ptr_;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100019C44;
  v6[3] = &unk_10023D9E8;
  v6[4] = self;
  sub_1000E4C5C(ptr, 1233321984, v6);
  v4 = self->mIceClient.__ptr_;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019C54;
  v5[3] = &unk_10023D9E8;
  v5[4] = self;
  sub_1000E4C5C(v4, 630194176, v5);
  [(WCM_AriCoexCommandHandler *)self configureAccReportMode];
  [(WCM_AriCoexCommandHandler *)self setDefaultMiscConfig];
  self->basebandPowerOn = 1;
  [WCM_Logging logLevel:3 message:@"Coex ARI Driver: ARI is enabled, update BB power state\n"];
  [(WCM_AriCoexCommandHandler *)self updateBasebandPowerState];
  [(WCM_AriCoexCommandHandler *)self replayCachedEvent];
}

- (void)setDefaultMiscConfig
{
  [(WCM_AriCoexCommandHandler *)self setCellularMiscConfigToSubId:0 uwbInactThre_ms:100 cellOnTimer_ms:5000];

  [(WCM_AriCoexCommandHandler *)self setCellularMiscConfigToSubId:1 uwbInactThre_ms:100 cellOnTimer_ms:5000];
}

- (id)createMessageWithMsgId:(unint64_t)a3 withArgs:(id)a4 withSubId:(id)a5
{
  v7 = a4;
  v8 = a5;
  *keys = *off_10023DA08;
  v16 = "kSubId";
  values[0] = xpc_uint64_create(a3);
  v9 = v7;
  values[1] = v9;
  v10 = v8;
  values[2] = v10;
  v11 = xpc_dictionary_create(keys, values, 3uLL);
  for (i = 2; i != -1; --i)
  {
  }

  return v11;
}

- (BOOL)cacheTunerTransparentMessage:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_value(v4, "kMessageArgs");
  v6 = xpc_dictionary_get_value(v5, "kWCMCellularTransparentMessageInformationSet");
  v7 = v6;
  if (v6 && xpc_array_get_count(v6))
  {
    v8 = xpc_array_get_value(v7, 0);
    v9 = v8;
    if (!v8)
    {
      v15 = 0;
LABEL_21:

      goto LABEL_22;
    }

    uint64 = xpc_dictionary_get_uint64(v8, "kWCMCellularTransparentMessage_Type");
    v11 = xpc_dictionary_get_value(v9, "kWCMCellularTransparentMessage_ByteList");
    count = xpc_array_get_count(v11);
    if (count == 2)
    {
      v13 = xpc_array_get_uint64(v11, 0);
      v14 = xpc_array_get_uint64(v11, 1uLL);
      v15 = 0;
      if (uint64 <= 1)
      {
        if (!uint64)
        {
          p_mTunerStateGNSS_State = &self->mTunerStateGNSS_State;
          p_mTunerStateGNSS_UseCase = &self->mTunerStateGNSS_UseCase;
          v18 = @"Coex ARI Driver:  cache GNSS state = %llu, useCase = %llu ";
          goto LABEL_19;
        }

        if (uint64 == 1)
        {
          p_mTunerStateGNSS_State = &self->mTunerStateWifi_State;
          p_mTunerStateGNSS_UseCase = &self->mTunerStateWifi_UseCase;
          v18 = @"Coex ARI Driver:  cache WiFi state = %llu, useCase = %llu ";
          goto LABEL_19;
        }
      }

      else
      {
        switch(uint64)
        {
          case 2:
            p_mTunerStateGNSS_State = &self->mTunerStateBT_State;
            p_mTunerStateGNSS_UseCase = &self->mTunerStateBT_UseCase;
            v18 = @"Coex ARI Driver:  cache BT state = %llu, useCase = %llu ";
            goto LABEL_19;
          case 3:
            p_mTunerStateGNSS_State = &self->mTunerStateUWB_State;
            p_mTunerStateGNSS_UseCase = &self->mTunerStateUWB_UseCase;
            v18 = @"Coex ARI Driver:  cache UWB state = %llu, useCase = %llu ";
            goto LABEL_19;
          case 4:
            p_mTunerStateGNSS_State = &self->mTunerStateHFBT_State;
            p_mTunerStateGNSS_UseCase = &self->mTunerStateHFBT_UseCase;
            v18 = @"Coex ARI Driver:  cache HFBT state = %llu, useCase = %llu ";
LABEL_19:
            *p_mTunerStateGNSS_State = v13;
            *p_mTunerStateGNSS_UseCase = v14;
            [WCM_Logging logLevel:2 message:v18, v13, v14];
            v15 = 1;
            break;
        }
      }
    }

    else
    {
      [WCM_Logging logLevel:0 message:@"Coex ARI Driver: Sensor %llu has wrong data size (%llu). Expect size = 2", uint64, count];
      v15 = 0;
    }

    goto LABEL_21;
  }

  v15 = 0;
LABEL_22:

  return v15;
}

- (BOOL)cacheEvent:(id)a3
{
  v4 = a3;
  uint64 = xpc_dictionary_get_uint64(v4, "kMessageId");
  if (uint64 == 1223)
  {
    v6 = [(WCM_AriCoexCommandHandler *)self cacheTunerTransparentMessage:v4];
  }

  else if (uint64 == 1234)
  {
    self->mCameraState = xpc_dictionary_get_uint64(v4, "kWCMCellularSetCameraState");
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)replayCachedEvent
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A15C;
  block[3] = &unk_10023D9C0;
  block[4] = self;
  dispatch_async(mQueue, block);
}

- (void)handleEvent:(id)a3
{
  v4 = a3;
  uint64 = xpc_dictionary_get_uint64(v4, "kMessageId");
  v6 = [(WCM_AriCoexCommandHandler *)self cacheEvent:v4];
  if (self->basebandPowerOn)
  {
    v7 = xpc_copy(v4);
    mQueue = self->mQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001A3C4;
    block[3] = &unk_10023D980;
    block[4] = self;
    v12 = v7;
    v9 = v7;
    dispatch_async(mQueue, block);
  }

  else
  {
    if (v6)
    {
      v10 = @"Coex ARI Driver:  ICE client is not ready yet, XPC message(%llu) is cached";
    }

    else
    {
      v10 = @"Coex ARI Driver:  ICE client is not ready yet, XPC message(%llu) is discarded";
    }

    [WCM_Logging logLevel:0 message:v10, uint64];
  }
}

- (void)setAntennaBlockingPolicyForPlatformId:(unint64_t)a3 activeSubId:(unint64_t)a4 AntBlockPowerLimitPlist:(id)a5
{
  v8 = a5;
  [WCM_Logging logLevel:2 message:@"Initialize WCM_AntBlockPowerLimitPolicy on PlatformId(%llu)...", a3];
  v9 = [[WCM_AntBlockPowerLimitPolicy alloc] initWithPlatformId:a3 AntBlockPowerLimitPlist:v8];
  mAntBlockPolicy = self->mAntBlockPolicy;
  self->mAntBlockPolicy = v9;

  v11 = self->mAntBlockPolicy;
  if (!v11)
  {
    goto LABEL_35;
  }

  v29 = v8;
  v32 = [(WCM_AntBlockPowerLimitPolicy *)v11 getAntBlockConfigXpcMsgOnClient:0];
  v31 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:1];
  value = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:2];
  v35 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:3];
  v34 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:8];
  v30 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:4];
  v33 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:5];
  v12 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:6];
  v13 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:9];
  v14 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:10];
  v15 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:11];
  v16 = xpc_uint64_create(a4);
  v17 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigGnssImdClient];
  if (v32)
  {
    v18 = [(WCM_AriCoexCommandHandler *)self createMessageWithMsgId:1225 withArgs:v32 withSubId:v16];
    [(WCM_AriCoexCommandHandler *)self handleEvent:v18];
  }

  if (v31)
  {
    v19 = [(WCM_AriCoexCommandHandler *)self createMessageWithMsgId:1226 withArgs:v31 withSubId:v16];
    [(WCM_AriCoexCommandHandler *)self handleEvent:v19];
  }

  if (value || v35 || v34 || v33 || v30)
  {
    v20 = xpc_dictionary_create(0, 0, 0);
    v21 = v20;
    if (value)
    {
      xpc_dictionary_set_value(v20, "kWCMCellularSetAntBlocking_FrontCameraPolicy", value);
    }

    if (v35)
    {
      xpc_dictionary_set_value(v21, "kWCMCellularSetAntBlocking_FaceIdCameraPolicy", v35);
    }

    if (v30)
    {
      xpc_dictionary_set_value(v21, "kWCMCellularSetAntBlocking_RearUltraWideCameraPolicy", v30);
    }

    if (v34)
    {
      xpc_dictionary_set_value(v21, "kWCMCellularSetAntBlocking_RearWideCameraPolicy", v34);
    }

    if (v33)
    {
      xpc_dictionary_set_value(v21, "kWCMCellularSetAntBlocking_RearTeleCameraPolicy", v33);
    }

    if (v21)
    {
      v22 = [(WCM_AriCoexCommandHandler *)self createMessageWithMsgId:1227 withArgs:v21 withSubId:v16];
      [(WCM_AriCoexCommandHandler *)self handleEvent:v22];

      v23 = v21;
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  v23 = 0;
  if (v12)
  {
LABEL_25:
    v24 = [(WCM_AriCoexCommandHandler *)self createMessageWithMsgId:1228 withArgs:v12 withSubId:v16];
    [(WCM_AriCoexCommandHandler *)self handleEvent:v24];
  }

LABEL_26:
  if (v17)
  {
    mQueue = self->mQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001A990;
    block[3] = &unk_10023D980;
    block[4] = self;
    v38 = v17;
    dispatch_async(mQueue, block);
  }

  if (v13)
  {
    v26 = [(WCM_AriCoexCommandHandler *)self createMessageWithMsgId:1229 withArgs:v13 withSubId:v16];
    [(WCM_AriCoexCommandHandler *)self handleEvent:v26];
  }

  if (v14)
  {
    v27 = [(WCM_AriCoexCommandHandler *)self createMessageWithMsgId:1214 withArgs:v14 withSubId:v16];
    [(WCM_AriCoexCommandHandler *)self handleEvent:v27];
  }

  if (v15)
  {
    v28 = [(WCM_AriCoexCommandHandler *)self createMessageWithMsgId:1215 withArgs:v15 withSubId:v16];
    [(WCM_AriCoexCommandHandler *)self handleEvent:v28];
  }

  v8 = v29;
LABEL_35:
}

- (void)handleCoexManagerEvent:(id)a3
{
  xdict = a3;
  [WCM_Logging logLevel:3 message:@"Coex ARI Driver: Handling XPC Event : %@", xdict];
  uint64 = xpc_dictionary_get_uint64(xdict, "kMessageId");
  if (uint64)
  {
    v5 = xpc_dictionary_get_uint64(xdict, "kSubId");
    v6 = xpc_dictionary_get_value(xdict, "kMessageArgs");
    switch(uint64)
    {
      case 0x4B0uLL:
        [(WCM_AriCoexCommandHandler *)self getCellularNetworkConfig:v6 SubId:v5];
        break;
      case 0x4B5uLL:
        [(WCM_AriCoexCommandHandler *)self setSpmiFeature:v6 SubId:v5];
        break;
      case 0x4B8uLL:
        [(WCM_AriCoexCommandHandler *)self setScanFreq:v6 SubId:v5];
        break;
      case 0x4BEuLL:
        [(WCM_AriCoexCommandHandler *)self setTimesharingConfig:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self setTimesharingConfig:v6 SubId:1];
        break;
      case 0x4BFuLL:
        [(WCM_AriCoexCommandHandler *)self setCellularAntBitmap:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self setCellularAntBitmap:v6 SubId:1];
        break;
      case 0x4C1uLL:
        [(WCM_AriCoexCommandHandler *)self setCC1Config:v6 SubId:v5];
        break;
      case 0x4C2uLL:
        [(WCM_AriCoexCommandHandler *)self setCC2Config:v6 SubId:v5];
        break;
      case 0x4C7uLL:
        [(WCM_AriCoexCommandHandler *)self handleTransparentMessage:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self handleTransparentMessage:v6 SubId:1];
        break;
      case 0x4C9uLL:
        [(WCM_AriCoexCommandHandler *)self setCnvAntBlockingPowerLimitingConfig:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self setCnvAntBlockingPowerLimitingConfig:v6 SubId:1];
        break;
      case 0x4CAuLL:
        [(WCM_AriCoexCommandHandler *)self setUwbAntBlockingPowerLimitingConfig:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self setUwbAntBlockingPowerLimitingConfig:v6 SubId:1];
        break;
      case 0x4CBuLL:
        [(WCM_AriCoexCommandHandler *)self setCamAntBlockingPowerLimitingConfig:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self setCamAntBlockingPowerLimitingConfig:v6 SubId:1];
        break;
      case 0x4CCuLL:
        [(WCM_AriCoexCommandHandler *)self setE85AntBlockingPowerLimitingConfig:v6 SubId:v5];
        break;
      case 0x4CDuLL:
        [(WCM_AriCoexCommandHandler *)self setSFBMAntBlockingPowerLimitingConfig:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self setSFBMAntBlockingPowerLimitingConfig:v6 SubId:1];
        break;
      case 0x4CEuLL:
        break;
      case 0x4CFuLL:
        [(WCM_AriCoexCommandHandler *)self setCellularMiscConfig:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self setCellularMiscConfig:v6 SubId:1];
        break;
      case 0x4D0uLL:
        [(WCM_AriCoexCommandHandler *)self setCellularTxActivityConfig:v6 SubId:v5];
        break;
      case 0x4D1uLL:
        [(WCM_AriCoexCommandHandler *)self getCellularLaaMeasInfo:v6 SubId:v5];
        break;
      case 0x4D2uLL:
        [(WCM_AriCoexCommandHandler *)self setCameraState:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self setCameraState:v6 SubId:1];
        break;
      case 0x4D3uLL:
        [(WCM_AriCoexCommandHandler *)self setAllCCConfig:v6 SubId:v5];
        break;
      default:
        [WCM_Logging logLevel:0 message:@"Coex ARI driver does not support message %llu", uint64];
        break;
    }
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Coex ARI Driver:  XPC miss key of message id"];
  }
}

- (int)convertInternalCallType:(unint64_t)a3
{
  if (a3 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int)convertInternalCoexTech:(unint64_t)a3
{
  if (a3 > 0xB)
  {
    return 127;
  }

  else
  {
    return dword_100195714[a3];
  }
}

- (unint64_t)getSubIdFromInternalCoexTech:(unint64_t)a3
{
  if (a3 - 6 > 5)
  {
    return 0;
  }

  else
  {
    return qword_100195748[a3 - 6];
  }
}

- (void)sendMessage:(unint64_t)a3 withArgs:(id)a4 withSubId:(unint64_t)a5
{
  v8 = a4;
  v9 = xpc_uint64_create(a5);
  *keys = *off_10023DA08;
  v18 = "kSubId";
  values = xpc_uint64_create(a3);
  v10 = v8;
  v15 = v10;
  v11 = v9;
  v16 = v11;
  v12 = xpc_dictionary_create(keys, &values, 3uLL);
  if (self->mCellularController)
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI Driver: Sending messageId(%lld) to Coex Manager", a3, values, v15];
    [(WCM_CellularController *)self->mCellularController handleMessage:v12];
  }

  for (i = 16; i != -8; i -= 8)
  {
  }
}

- (void)setDefaultEvent
{
  v4 = 0x100000001;
  AriSdk::ARI_UtaIdcConfigEventReq_SDK::ARI_UtaIdcConfigEventReq_SDK(v3);
  v2 = 0;
  sub_10001B2B0();
}

- (void)convertToAriType_WiFiState:(unint64_t)a3 userCase:(unint64_t)a4 AriState:(unint64_t *)a5 AriUseCase:(unint64_t *)a6
{
  if (a5)
  {
    if (a3 - 1 >= 4)
    {
      v6 = 0;
    }

    else
    {
      v6 = a3;
    }

    *a5 = v6;
  }

  if (a6)
  {
    *a6 = 0;
  }
}

- (void)convertToAriType_BtState:(unint64_t)a3 userCase:(unint64_t)a4 AriState:(unint64_t *)a5 AriUseCase:(unint64_t *)a6
{
  if (a4 == 5)
  {
    v6 = 5;
  }

  else
  {
    v6 = 0;
  }

  if (a4 == 4)
  {
    v6 = 4;
  }

  if (a4 - 6 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 4 * (a3 == 2);
  }

  if (a4 == 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (a4 == 2)
  {
    v8 = 2;
  }

  if (a4 == 1)
  {
    v8 = 1;
  }

  if (a4 <= 3)
  {
    v7 = v8;
  }

  if (a5)
  {
    *a5 = a3 == 2;
  }

  if (a6)
  {
    *a6 = v7;
  }
}

- (void)convertToAriType_FigaroState:(unint64_t)a3 userCase:(unint64_t)a4 AriState:(unint64_t *)a5 AriUseCase:(unint64_t *)a6
{
  v6 = (a4 & 0xFFFFFFFFFFFFFFFELL) == 6 && a3 == 3;
  v7 = 3;
  if (!v6)
  {
    v7 = 0;
  }

  if (a5)
  {
    *a5 = a3 == 3;
  }

  if (a6)
  {
    *a6 = v7;
  }
}

- (void)convertToAriType_GnssState:(unint64_t)a3 userCase:(unint64_t)a4 AriState:(unint64_t *)a5 AriUseCase:(unint64_t *)a6
{
  v6 = a4 & 0xF;
  if (a3 - 1 >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3;
  }

  if ((a4 & 0xF) <= 2)
  {
    if (v6 == 1)
    {
      goto LABEL_14;
    }

    if (v6 == 2)
    {
      v6 = 2;
      goto LABEL_14;
    }
  }

  else
  {
    switch(v6)
    {
      case 3:
        v6 = 3;
        goto LABEL_14;
      case 4:
        goto LABEL_14;
      case 5:
        v6 = 65541;
        goto LABEL_14;
    }
  }

  v6 = 4;
LABEL_14:
  v8 = a4 >> 4;
  v9 = v6 | 0x10100;
  v10 = v6 | 0x200;
  if (v8 == 1)
  {
    v6 |= 0x100uLL;
  }

  if (v8 == 2)
  {
    v6 = v10;
  }

  if (v8 == 5)
  {
    v6 = v9;
  }

  if (a5)
  {
    *a5 = v7;
  }

  if (a6)
  {
    *a6 = v6;
  }
}

- (void)convertToAriType_UwbState:(unint64_t)a3 userCase:(unint64_t)a4 AriState:(unint64_t *)a5 AriUseCase:(unint64_t *)a6
{
  if (a5)
  {
    v6 = a3 == 5;
    if (a3 == 9)
    {
      v6 = 2;
    }

    *a5 = v6;
  }

  if (a6)
  {
    *a6 = 0;
  }
}

- (void)updateBasebandPowerState
{
  v3 = xpc_dictionary_create(0, 0, 0);
  [WCM_AriCoexCommandHandler sendMessage:"sendMessage:withArgs:withSubId:" withArgs:304 withSubId:?];
}

- (void)getCellularLaaMeasInfo:(id)a3 SubId:(unsigned int)a4
{
  AriSdk::ARI_UtaIdcGetLaaMeasInfoReq_SDK::ARI_UtaIdcGetLaaMeasInfoReq_SDK(v6);
  v5 = a4;
  sub_10001B2B0();
}

- (void)setE85AntBlockingPowerLimitingConfig:(id)a3 SubId:(unsigned int)a4
{
  v4 = a3;
  uint64 = xpc_dictionary_get_uint64(v4, "kWCMCellularSetAntBlocking_LQMThreshold");
  v6 = xpc_dictionary_get_BOOL(v4, "kWCMCellularSetAntBlocking_DenyProtectVoice");
  v7 = xpc_dictionary_get_uint64(v4, "kWCMCellularSetAntBlocking_MitigationTimer");
  [WCM_Logging logLevel:3 message:@"Coex ARI driver: Set USB-C Antenna Blk Policy, lqmThreshold = %llu", uint64];
  [WCM_Logging logLevel:3 message:@"Coex ARI driver: Set USB-C Antenna Blk Policy, denyVoiceProtect = %d, mitigationTimer = %llu", v6, v7];
  if ([(WCM_AriCoexCommandHandler *)self LQMEnumCheck:uint64])
  {
    v24 = v4;
    v8 = xpc_dictionary_get_value(v4, "kWCMCellularSetAntBlocking_PolicySet");
    v9 = v8;
    if (v8)
    {
      count = xpc_array_get_count(v8);
      v11 = 32;
      if (count < 0x20)
      {
        v11 = count;
      }

      v26 = v11;
    }

    else
    {
      v26 = 0;
    }

    for (i = 0; i != 1024; i += 32)
    {
      v13 = &v29[i + 84];
      *v13 = 0;
      *(v13 + 5) = 3;
      *(v13 + 2) = 0;
      *(v13 + 7) = 0;
    }

    v30[252] = v6;
    v30[253] = uint64;
    v30[254] = v7;
    if (!v26)
    {
LABEL_14:
      AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK(v29);
      sub_10001B2B0();
    }

    v14 = 0;
    v15 = v30;
    v25 = v9;
    while (1)
    {
      v16 = xpc_array_get_value(v9, v14);
      v28 = xpc_dictionary_get_BOOL(v16, "kWCMCellularSetAntBlocking_Policy_Enable");
      v17 = xpc_dictionary_get_uint64(v16, "kWCMCellularSetAntBlocking_Policy_CellularAntBitmap");
      int64 = xpc_dictionary_get_int64(v16, "kWCMCellularSetAntBlocking_Policy_CellularPowerCap");
      v19 = xpc_dictionary_get_uint64(v16, "kWCMCellularSetAntBlocking_Policy_MitigationType");
      v20 = xpc_dictionary_get_uint64(v16, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_CoexTech");
      v21 = xpc_dictionary_get_uint64(v16, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_CenterFreq");
      v22 = xpc_dictionary_get_uint64(v16, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_Bandwidth");
      v23 = xpc_dictionary_get_uint64(v16, "kWCMCellularSetAntBlocking_Policy_UsbRate");
      [WCM_Logging logLevel:3 message:@"Coex ARI driver: Set USB-C Antenna Blk Policy -- policy[%lu]: enable = %d, cellularAntBitmap = %llu, cellularTxPowerCap = %llu, mitigationType = %llu", v14, v28, v17, int64, v19];
      [WCM_Logging logLevel:3 message:@"Coex ARI driver: Set USB-C Antenna Blk Policy -- policy[%lu]: cellularCoexTech = %llu, frequency = %lluKHz, BW = %lluKHz, USB_rate_bitmap = %llu", v14, v20, v21, v22, v23];
      if (![(WCM_AriCoexCommandHandler *)self mitigationTypeEnumCheck:v19])
      {
        break;
      }

      *(v15 - 4) = v28;
      *(v15 - 6) = v20;
      *(v15 - 2) = v21;
      *(v15 - 1) = v22;
      *v15 = v17;
      v15[1] = v19;
      v15[2] = int64;
      v15[3] = v23;

      ++v14;
      v15 += 8;
      v9 = v25;
      if (v26 == v14)
      {
        goto LABEL_14;
      }
    }

    [WCM_Logging logLevel:0 message:@"Coex ARI driver: Set USB-C Antenna Blk Policy, invalid mitigationType=%llu, API UtaIdcSetCnvAntBlockPwrLmtConfigReq failed", v19];

    v4 = v24;
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Coex ARI driver: Set USB-C Antenna Blk Policy, invalid lqmThreshold=%llu, API UtaIdcSetCnvAntBlockPwrLmtConfigReq failed", uint64];
  }
}

- (void)fetchLtePccFrequency:(t_s_UtaIdcLteNrCarrierInfoSet *)a3 pccUplinkFreq:(int64_t *)a4 pccUplinkBw:(double *)a5 pccDownlinkFreq:(int64_t *)a6 pccDownlinkBw:(double *)a7
{
  if (a3 && a4 && a6 && a7 && a3->var0)
  {
    v7 = 0;
    v8 = 0;
    v9 = a3->var0 - 1;
    p_var3 = &a3->var1[0].var3;
    do
    {
      v11 = v9;
      v13 = *(p_var3 - 3);
      v12 = *(p_var3 - 2);
      v14 = *(p_var3 - 1);
      v15 = *p_var3;
      if (v13)
      {
        v16 = 0;
      }

      else
      {
        v16 = (*p_var3 & 0xFFFFFFFE) == 2;
      }

      if (v16)
      {
        *a6 = v12 / 0x3E8uLL;
        *a7 = v14 / 1000.0;
        v8 = 1;
      }

      v17 = v15 & 0xFFFFFFFD;
      if (v13)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17 == 1;
      }

      if (v18)
      {
        *a4 = v12 / 0x3E8uLL;
        *a5 = v14 / 1000.0;
        v7 = 1;
      }

      if (v7 & v8)
      {
        break;
      }

      p_var3 += 4;
      v9 = v11 - 1;
    }

    while (v11);
  }
}

- (void)fetchLteNrFrequency:(t_s_UtaIdcLteNrCarrierInfoSet *)a3 freqInfoXpc:(id)a4 carrierIdXpc:(id)a5
{
  xarray = a4;
  v7 = a5;
  if (a3 && xarray && v7 && a3->var0)
  {
    v8 = 0;
    p_var3 = &a3->var1[0].var3;
    do
    {
      v10 = *(p_var3 - 3);
      v11 = *(p_var3 - 2);
      v12 = *p_var3;
      v13 = 1000 * *(p_var3 - 1);
      if ((*p_var3 & 0xFFFFFFFE) == 2)
      {
        v14 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v14, "kWCMCellularNetworkConfiguration_BandInfoSet_DirectionMask", 2uLL);
        xpc_dictionary_set_int64(v14, "kWCMCellularNetworkConfiguration_BandInfoSet_CenterFreq", v11);
        xpc_dictionary_set_double(v14, "kWCMCellularNetworkConfiguration_BandInfoSet_Bandwidth", v13);
        xpc_array_append_value(xarray, v14);

        v15 = xpc_int64_create(v10);
        xpc_array_append_value(v7, v15);
      }

      if ((v12 & 0xFFFFFFFD) == 1)
      {
        v16 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v16, "kWCMCellularNetworkConfiguration_BandInfoSet_DirectionMask", 1uLL);
        xpc_dictionary_set_int64(v16, "kWCMCellularNetworkConfiguration_BandInfoSet_CenterFreq", v11);
        xpc_dictionary_set_double(v16, "kWCMCellularNetworkConfiguration_BandInfoSet_Bandwidth", v13);
        xpc_array_append_value(xarray, v16);

        v17 = xpc_int64_create(v10);
        xpc_array_append_value(v7, v17);
      }

      p_var3 += 4;
      ++v8;
    }

    while (v8 < a3->var0);
  }
}

- (void)fetchLegacyRatFrequency:(t_s_UtaIdcLegacyRatCarrierInfoSet *)a3 freqInfoXpc:(id)a4
{
  xarray = a4;
  if (a3 && xarray && a3->var0)
  {
    v5 = 0;
    p_var3 = &a3->var1[0].var3;
    do
    {
      v7 = *(p_var3 - 2);
      v8 = 1000 * *(p_var3 - 1);
      v9 = *p_var3;
      if ((*p_var3 & 0xFFFFFFFE) == 2)
      {
        v10 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v10, "kWCMCellularNetworkConfiguration_BandInfoSet_DirectionMask", 2uLL);
        xpc_dictionary_set_int64(v10, "kWCMCellularNetworkConfiguration_BandInfoSet_CenterFreq", v7);
        xpc_dictionary_set_double(v10, "kWCMCellularNetworkConfiguration_BandInfoSet_Bandwidth", v8);
        xpc_array_append_value(xarray, v10);
      }

      if ((v9 & 0xFFFFFFFD) == 1)
      {
        v11 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v11, "kWCMCellularNetworkConfiguration_BandInfoSet_DirectionMask", 1uLL);
        xpc_dictionary_set_int64(v11, "kWCMCellularNetworkConfiguration_BandInfoSet_CenterFreq", v7);
        xpc_dictionary_set_double(v11, "kWCMCellularNetworkConfiguration_BandInfoSet_Bandwidth", v8);
        xpc_array_append_value(xarray, v11);
      }

      p_var3 += 4;
      ++v5;
    }

    while (v5 < a3->var0);
  }
}

- (id)assembleCellularConfigXpcMsg:(t_s_UtaIdcCellConfig *)a3
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_ULBandInfo_CenterFreq", 0);
  xpc_dictionary_set_double(v5, "kWCMCellularNetworkConfiguration_ULBandInfo_BandWidth", 0.0);
  xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_DLBandInfo_CenterFreq", 0);
  xpc_dictionary_set_double(v5, "kWCMCellularNetworkConfiguration_DLBandInfo_BandWidth", 0.0);
  var0 = a3->var3.var0;
  if (var0 != 240)
  {
    xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_TTDUL_DL", var0);
    xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_SubFrameFormat", a3->var3.var1);
    xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_FrameOffset", 0);
    xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_ULCPConfig", a3->var3.var2);
    xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_DLCPConfig", a3->var3.var3);
    [WCM_Logging logLevel:3 message:@"Coex ARI driver: UtaIdcCellConfigEventIndCb DlUl_config=%u\n", a3->var3.var0];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver: UtaIdcCellConfigEventIndCb special_sub_frame=%u\n", a3->var3.var1];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver: UtaIdcCellConfigEventIndCb uplink_cyclic_prefix=%u\n", a3->var3.var2];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver: UtaIdcCellConfigEventIndCb downlink_cyclic_prefix=%u\n", a3->var3.var3];
  }

  if (a3->var2.var0)
  {
    v18 = 0;
    value = 0;
    v16 = 0.0;
    v17 = 0.0;
    [(WCM_AriCoexCommandHandler *)self fetchLtePccFrequency:&a3->var2 pccUplinkFreq:&value pccUplinkBw:&v17 pccDownlinkFreq:&v18 pccDownlinkBw:&v16];
    xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_ULBandInfo_CenterFreq", value);
    xpc_dictionary_set_double(v5, "kWCMCellularNetworkConfiguration_ULBandInfo_BandWidth", v17);
    xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_DLBandInfo_CenterFreq", v18);
    xpc_dictionary_set_double(v5, "kWCMCellularNetworkConfiguration_DLBandInfo_BandWidth", v16);
    v7 = xpc_array_create(0, 0);
    v8 = xpc_array_create(0, 0);
    [(WCM_AriCoexCommandHandler *)self fetchLteNrFrequency:&a3->var2 freqInfoXpc:v7 carrierIdXpc:v8];
    xpc_dictionary_set_value(v5, "kWCMCellularNetworkConfiguration_LTEBandInformationSet", v7);
    xpc_dictionary_set_value(v5, "kWCMCellularNetworkConfiguration_LTECarrierInformationSet", v8);
  }

  if (a3->var4.var0)
  {
    v9 = xpc_array_create(0, 0);
    v10 = xpc_array_create(0, 0);
    [(WCM_AriCoexCommandHandler *)self fetchLteNrFrequency:&a3->var4 freqInfoXpc:v9 carrierIdXpc:v10];
    xpc_dictionary_set_value(v5, "kWCMCellularNetworkConfiguration_NGCBandInformationSet", v9);
    xpc_dictionary_set_value(v5, "kWCMCellularNetworkConfiguration_NGCCarrierInformationSet", v10);
  }

  if (a3->var0.var0)
  {
    v11 = xpc_array_create(0, 0);
    [(WCM_AriCoexCommandHandler *)self fetchLegacyRatFrequency:a3 freqInfoXpc:v11];
    xpc_dictionary_set_value(v5, "kWCMCellularNetworkConfiguration_GSMBandInformationSet", v11);
  }

  v13 = a3->var1.var0;
  p_var1 = &a3->var1;
  if (v13)
  {
    v14 = xpc_array_create(0, 0);
    [(WCM_AriCoexCommandHandler *)self fetchLegacyRatFrequency:p_var1 freqInfoXpc:v14];
    xpc_dictionary_set_value(v5, "kWCMCellularNetworkConfiguration_WCDMABandInformationSet", v14);
  }

  return v5;
}

- (void)getCellularNetworkConfig:(id)a3 SubId:(unsigned int)a4
{
  AriSdk::ARI_UtaIdcGetCellConfigReq_SDK::ARI_UtaIdcGetCellConfigReq_SDK(v6);
  v5 = a4;
  sub_10001B2B0();
}

- (void)UtaIdcCellConfigEventIndHandle:(char *)a3 size:(unsigned int)a4
{
  AriSdk::ARI_UtaIdcCellConfigEventIndCb_SDK::ARI_UtaIdcCellConfigEventIndCb_SDK(v10, a3, a4);
  if (ice::isARIResponseValid(v10, 0x49830000, v5))
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver: UtaIdcCellConfigEventIndCb received\n"];
    v6 = AriSdk::ARI_UtaIdcCellConfigEventIndCb_SDK::unpack(v10);
    if (v6)
    {
      [WCM_Logging logLevel:3 message:@"Coex ARI driver: Failed to unpack UtaIdcCellConfigEventIndCb: %s (%u)", asString(), v6];
    }

    else
    {
      v7 = v12;
      v8 = *v11;
      [WCM_Logging logLevel:3 message:@"Coex ARI driver: UtaIdcCellConfigEventIndCb SubId=%u\n", v8];
      v9 = [(WCM_AriCoexCommandHandler *)self assembleCellularConfigXpcMsg:v7];
      [(WCM_AriCoexCommandHandler *)self sendMessage:300 withArgs:v9 withSubId:v8];
    }
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Coex ARI driver ERROR: Invalid UtaIdcCellConfigEventIndCb received\n"];
  }

  AriSdk::ARI_UtaIdcCellConfigEventIndCb_SDK::~ARI_UtaIdcCellConfigEventIndCb_SDK(v10);
}

- (void)configureAccReportMode
{
  v4 = 1;
  AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK::ARI_IBIMsAccCurrentFreqInfoReq_SDK(v3);
  v2 = 0;
  sub_10001B2B0();
}

- (void)appendDesenseFreqToXpcArray:(id)a3 DesenseFreq:(IBIAccFreqBandwidthInfo *)a4 Size:(unsigned int)a5
{
  xarray = a3;
  if (xarray && a4 && a5)
  {
    v7 = 0;
    p_var1 = &a4->var1;
    do
    {
      v9 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v9, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq", *(p_var1 - 1));
      xpc_dictionary_set_int64(v9, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth", *p_var1);
      [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb, freq[%u]=(freq:%llu, bw:%u)Hz \n", v7, *(p_var1 - 1), *p_var1];
      xpc_array_append_value(xarray, v9);

      ++v7;
      p_var1 += 3;
    }

    while (a5 != v7);
  }
}

- (id)assembleDesenseCellularConfigXpcMsgwithDownlinkFreq:(IBIAccServingDLFreqBandwidthInfo *)a3 DownlinkFreqExt:(IBIAccServingDLFreqBandwidthInfo_ext *)a4 UlFreq:(IBIAccServingULFreqBandwidthInfo *)a5 UplinkFreqExt:(IBIAccServingULFreqBandwidthInfo_ext *)a6 SearchFreq:(IBIAccSearchFreqBandwidthInfo *)a7 HoppingFreq:(IBIAccHoppingFreqBandwidthInfo *)a8 NeighborFreq:(IBIAccNeighborFreqBandwidthInfo *)a9 RPLMNFreq:(IBIAccRPLMNFreqBandwidthInfo *)a10
{
  v15 = xpc_dictionary_create(0, 0, 0);
  if (a3->var0)
  {
    v16 = xpc_array_create(0, 0);
    if (a3->var0 >= 4u)
    {
      var0 = 4;
    }

    else
    {
      var0 = a3->var0;
    }

    [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb Downlink Freq num = %u\n", var0];
    [(WCM_AriCoexCommandHandler *)self appendDesenseFreqToXpcArray:v16 DesenseFreq:&a3->var0 + 4 Size:var0];
    if (a4->var0)
    {
      if (a4->var0 >= 0xAu)
      {
        v18 = 10;
      }

      else
      {
        v18 = a4->var0;
      }

      [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb Downlink Freq Ext num = %u\n", v18];
      [(WCM_AriCoexCommandHandler *)self appendDesenseFreqToXpcArray:v16 DesenseFreq:&a4->var0 + 4 Size:v18];
    }

    xpc_dictionary_set_value(v15, "kWCMCellular_DesenseFreqReport_DownlinkFrequency", v16);
  }

  if (a5->var0)
  {
    v19 = xpc_array_create(0, 0);
    if (a5->var0 >= 2u)
    {
      v20 = 2;
    }

    else
    {
      v20 = a5->var0;
    }

    [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb Uplink Freq num = %u\n", v20];
    [(WCM_AriCoexCommandHandler *)self appendDesenseFreqToXpcArray:v19 DesenseFreq:&a5->var0 + 4 Size:v20];
    if (a6->var0)
    {
      if (a6->var0 >= 0xAu)
      {
        v21 = 10;
      }

      else
      {
        v21 = a6->var0;
      }

      [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb Uplink Freq Ext num = %u\n", v21];
      [(WCM_AriCoexCommandHandler *)self appendDesenseFreqToXpcArray:v19 DesenseFreq:&a6->var0 + 4 Size:v21];
    }

    xpc_dictionary_set_value(v15, "kWCMCellular_DesenseFreqReport_UplinkFrequency", v19);
  }

  if (a7->var0)
  {
    v22 = xpc_array_create(0, 0);
    if (a7->var0 >= 0x14u)
    {
      v23 = 20;
    }

    else
    {
      v23 = a7->var0;
    }

    [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb Search Freq num = %u\n", v23];
    [(WCM_AriCoexCommandHandler *)self appendDesenseFreqToXpcArray:v22 DesenseFreq:&a7->var0 + 4 Size:v23];
    xpc_dictionary_set_value(v15, "kWCMCellular_DesenseFreqReport_SearchFrequency", v22);
  }

  if (a9->var0)
  {
    v24 = xpc_array_create(0, 0);
    if (a9->var0 >= 0x64u)
    {
      v25 = 100;
    }

    else
    {
      v25 = a9->var0;
    }

    [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb Neighbor Freq num = %u\n", v25];
    [(WCM_AriCoexCommandHandler *)self appendDesenseFreqToXpcArray:v24 DesenseFreq:&a9->var0 + 4 Size:v25];
    xpc_dictionary_set_value(v15, "kWCMCellular_DesenseFreqReport_NeighborFrequency", v24);
  }

  if (a8->var0)
  {
    v26 = xpc_array_create(0, 0);
    if (a8->var0 >= 0x40u)
    {
      v27 = 64;
    }

    else
    {
      v27 = a8->var0;
    }

    [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb GSM Hopping Freq num = %u\n", v27];
    [(WCM_AriCoexCommandHandler *)self appendDesenseFreqToXpcArray:v26 DesenseFreq:&a8->var0 + 4 Size:v27];
    xpc_dictionary_set_value(v15, "kWCMCellular_DesenseFreqReport_HoppingFrequency", v26);
  }

  if (a10->var0)
  {
    v28 = xpc_array_create(0, 0);
    if (a10->var0 >= 0x46u)
    {
      v29 = 70;
    }

    else
    {
      v29 = a10->var0;
    }

    [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb RPLMN Freq num = %u\n", v29];
    [(WCM_AriCoexCommandHandler *)self appendDesenseFreqToXpcArray:v28 DesenseFreq:&a10->var0 + 4 Size:v29];
    xpc_dictionary_set_value(v15, "kWCMCellular_DesenseFreqReport_RplmnFrequency", v28);
  }

  return v15;
}

- (void)desenseCellConfigEventIndHandle:(char *)a3 size:(unsigned int)a4
{
  AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK(v9, a3, a4);
  if (ice::isARIResponseValid(v9, 0x25900000, v5))
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb received\n"];
    v6 = AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK::unpack(v9);
    if (v6)
    {
      [WCM_Logging logLevel:3 message:@"Coex ARI driver: Failed to unpack IBIMsAccCurrentFreqInfoIndCb: %s (%u)", asString(), v6];
    }

    else
    {
      v7 = *v10;
      [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb SubId=%u\n", v7];
      v8 = [(WCM_AriCoexCommandHandler *)self assembleDesenseCellularConfigXpcMsgwithDownlinkFreq:v11 DownlinkFreqExt:v17 UlFreq:v12 UplinkFreqExt:v18 SearchFreq:v13 HoppingFreq:v14 NeighborFreq:v15 RPLMNFreq:v16];
      [(WCM_AriCoexCommandHandler *)self sendMessage:399 withArgs:v8 withSubId:v7];
    }
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Coex ARI driver ERROR: Invalid IBIMsAccCurrentFreqInfoIndCb received\n"];
  }

  AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK::~ARI_IBIMsAccCurrentFreqInfoIndCb_SDK(v9);
}

- (void)printGnssImdConfig:(t_s_UtaIdcCellImdGnssMitigationPolicyConfig *)a3
{
  if (a3)
  {
    v3 = a3;
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, protect_low_priority_background_gnss=%d, deny_voice_call_protection=%d", a3->var1, a3->var2];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, mitigation_timer_ms=%u, lqm_threshold=%d", v3->var3, v3->var4];
    v4 = 0;
    v15 = v3;
    do
    {
      v5 = &v3->var0[v4];
      if (v5->var0 == 1)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, policy[%d]: imd_type=%u, gnss_L5_preferred_tuner_allowed=%d, parallel_mitigation_allowed=%d", v4, v5->var3, v5->var5, v5->var6];
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, policy[%d]: gnss_victim_center_freq_khz=%u, gnss_victim_bandwidth_khz=%u", v4, v5->var4.var0, v5->var4.var1];
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, policy[%d]: aggressor1: tech_bitmap=%u, center_freq_khz=%u, bandwidth_khz=%u", v4, v5->var1.var0.var0, v5->var1.var0.var1.var0, v5->var1.var0.var1.var1];
        v6 = 0;
        v7 = 1;
        do
        {
          v8 = v7;
          v9 = &v5->var1.var1[v6];
          if (*v9 == 1)
          {
            [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, policy[%d]: aggressor1_policy[%d]: cellular_aggressor_antenna_bitmap=%u", v4, v6, *(v9 + 1)];
            [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, policy[%d]: aggressor1_policy[%d]: cellular_tx_power_cap=%d, mitigation_type=%u", v4, v6, *(v9 + 2), *(v9 + 3)];
          }

          v7 = 0;
          v6 = 1;
        }

        while ((v8 & 1) != 0);
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, policy[%d]: aggressor2: tech_bitmap=%u, center_freq_khz=%u, bandwidth_khz=%u", v4, v5->var2.var0.var0, v5->var2.var0.var1.var0, v5->var2.var0.var1.var1];
        v10 = 0;
        var1 = v5->var2.var1;
        v12 = 1;
        v3 = v15;
        do
        {
          v13 = v12;
          v14 = &var1[16 * v10];
          if (*v14 == 1)
          {
            [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, policy[%d]: aggressor2_policy[%d]: cellular_aggressor_antenna_bitmap=%u", v4, v10, *(v14 + 1)];
            [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, policy[%d]: aggressor2_policy[%d]: cellular_tx_power_cap=%d, mitigation_type=%u", v4, v10, *(v14 + 2), *(v14 + 3)];
          }

          v12 = 0;
          v10 = 1;
        }

        while ((v13 & 1) != 0);
      }

      ++v4;
    }

    while (v4 != 32);
  }
}

- (void)handleGnssImdAntBlockPowerLimitConfig:(id)a3
{
  v108 = __chkstk_darwin(self, a2, a3);
  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = 0;
    v110 = 0;
    v114 = 0;
    do
    {
      v7 = &v111[v6];
      *v7 = 0;
      *(v7 + 13) = 0;
      *(v7 + 4) = 0;
      *(v7 + 15) = 0;
      *(v7 + 28) = 3;
      *(v7 + 11) = 3;
      *(v7 + 9) = 3;
      v6 += 112;
      *(v7 + 11) = 3;
    }

    while (v6 != 3584);
    v113[878] = [v4 mProtectGnssLowPriority];
    v113[879] = [v5 mDenyVoiceProtect];
    v113[880] = [v5 mMitigationTimer_ms];
    if ([v108 LQMEnumCheck:{objc_msgSend(v5, "mLqmThreshold")}])
    {
      v114 = [v5 mLqmThreshold];
      v8 = [v5 mPolicy];
      v9 = [v8 count];

      if (v9 < 0x21)
      {
        if (!v9)
        {
LABEL_26:
          [v108 printGnssImdConfig:v111];
          AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK::ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK(v109);
          sub_10001B2B0();
        }
      }

      else
      {
        [WCM_Logging logLevel:0 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, too many policies (%llu)", v9];
        LODWORD(v9) = 32;
      }

      v102 = v9;
      v10 = 0;
      v104 = v113;
      v105 = &v112;
      while (1)
      {
        v11 = [v5 mPolicy];
        v12 = [v11 objectAtIndexedSubscript:v10];
        v13 = [v108 ImdTypeEnumCheck:{objc_msgSend(v12, "mImdType")}];

        if ((v13 & 1) == 0)
        {
          break;
        }

        v14 = &v111[112 * v10];
        *v14 = 1;
        v15 = [v5 mPolicy];
        v16 = [v15 objectAtIndexedSubscript:v10];
        *(v14 + 23) = [v16 mImdType];

        v17 = [v5 mPolicy];
        v18 = [v17 objectAtIndexedSubscript:v10];
        *(v14 + 26) = [v18 mGnssL5TunerAllowed];

        v19 = [v5 mPolicy];
        v20 = [v19 objectAtIndexedSubscript:v10];
        *(v14 + 27) = [v20 mParallelMitigationAllowed];

        v21 = [v5 mPolicy];
        v22 = [v21 objectAtIndexedSubscript:v10];
        *(v14 + 24) = [v22 mGnssVictimFreq_KHz];

        v23 = [v5 mPolicy];
        v24 = [v23 objectAtIndexedSubscript:v10];
        *(v14 + 25) = [v24 mGnssVictimBw_KHz];

        v25 = [v5 mPolicy];
        v26 = [v25 objectAtIndexedSubscript:v10];
        v27 = [v26 mCellAggressor1];
        v28 = [v27 mBandPolicy];
        v29 = [v28 count];

        v30 = [v5 mPolicy];
        v31 = [v30 objectAtIndexedSubscript:v10];
        v32 = [v31 mCellAggressor2];
        v33 = [v32 mBandPolicy];
        v34 = [v33 count];

        v35 = 2;
        if (v29 >= 2)
        {
          v36 = 2;
        }

        else
        {
          v36 = v29;
        }

        v103 = v34;
        if (v34 < 2)
        {
          v35 = v34;
        }

        v106 = v35;
        v107 = v36;
        v37 = [v5 mPolicy];
        v38 = [v37 objectAtIndexedSubscript:v10];
        v39 = [v38 mCellAggressor1];
        *(v14 + 2) = [v39 mCellularCoexTech];

        v40 = [v5 mPolicy];
        v41 = [v40 objectAtIndexedSubscript:v10];
        v42 = [v41 mCellAggressor1];
        *(v14 + 2) = [v42 mCellularFrequencyKHz];

        v43 = [v5 mPolicy];
        v44 = [v43 objectAtIndexedSubscript:v10];
        v45 = [v44 mCellAggressor1];
        *(v14 + 3) = [v45 mCellularBandwidthKHz];

        v46 = [v5 mPolicy];
        v47 = [v46 objectAtIndexedSubscript:v10];
        v48 = [v47 mCellAggressor2];
        *(v14 + 24) = [v48 mCellularCoexTech];

        v49 = [v5 mPolicy];
        v50 = [v49 objectAtIndexedSubscript:v10];
        v51 = [v50 mCellAggressor2];
        *(v14 + 13) = [v51 mCellularFrequencyKHz];

        v52 = [v5 mPolicy];
        v53 = [v52 objectAtIndexedSubscript:v10];
        v54 = [v53 mCellAggressor2];
        *(v14 + 14) = [v54 mCellularBandwidthKHz];

        if (v29)
        {
          v55 = 0;
          v56 = v105;
          do
          {
            v57 = [v5 mPolicy];
            v58 = [v57 objectAtIndexedSubscript:v10];
            v59 = [v58 mCellAggressor1];
            v60 = [v59 mBandPolicy];
            v61 = [v60 objectAtIndexedSubscript:v55];
            v62 = [v61 mMitigationType];

            if (([v108 mitigationTypeEnumCheck:v62] & 1) == 0)
            {
              goto LABEL_27;
            }

            *(v56 - 3) = 1;
            v63 = [v5 mPolicy];
            v64 = [v63 objectAtIndexedSubscript:v10];
            v65 = [v64 mCellAggressor1];
            v66 = [v65 mBandPolicy];
            v67 = [v66 objectAtIndexedSubscript:v55];
            *(v56 - 2) = [v67 mCellularAntBitmap];

            v68 = [v5 mPolicy];
            v69 = [v68 objectAtIndexedSubscript:v10];
            v70 = [v69 mCellAggressor1];
            v71 = [v70 mBandPolicy];
            v72 = [v71 objectAtIndexedSubscript:v55];
            *(v56 - 1) = [v72 mCellularTxPowerCap];

            v73 = [v5 mPolicy];
            v74 = [v73 objectAtIndexedSubscript:v10];
            v75 = [v74 mCellAggressor1];
            v76 = [v75 mBandPolicy];
            v77 = [v76 objectAtIndexedSubscript:v55];
            *v56 = [v77 mMitigationType];
            v56 += 4;
          }

          while (++v55 < v107);
        }

        if (v103)
        {
          v78 = 0;
          v79 = v104;
          while (1)
          {
            v80 = [v5 mPolicy];
            v81 = [v80 objectAtIndexedSubscript:v10];
            v82 = [v81 mCellAggressor2];
            v83 = [v82 mBandPolicy];
            v84 = [v83 objectAtIndexedSubscript:v78];
            v62 = [v84 mMitigationType];

            if (([v108 mitigationTypeEnumCheck:v62] & 1) == 0)
            {
              break;
            }

            *(v79 - 3) = 1;
            v85 = [v5 mPolicy];
            v86 = [v85 objectAtIndexedSubscript:v10];
            v87 = [v86 mCellAggressor2];
            v88 = [v87 mBandPolicy];
            v89 = [v88 objectAtIndexedSubscript:v78];
            *(v79 - 2) = [v89 mCellularAntBitmap];

            v90 = [v5 mPolicy];
            v91 = [v90 objectAtIndexedSubscript:v10];
            v92 = [v91 mCellAggressor2];
            v93 = [v92 mBandPolicy];
            v94 = [v93 objectAtIndexedSubscript:v78];
            *(v79 - 1) = [v94 mCellularTxPowerCap];

            v95 = [v5 mPolicy];
            v96 = [v95 objectAtIndexedSubscript:v10];
            v97 = [v96 mCellAggressor2];
            v98 = [v97 mBandPolicy];
            v99 = [v98 objectAtIndexedSubscript:v78];
            *v79 = [v99 mMitigationType];
            v79 += 4;

            if (++v78 >= v106)
            {
              goto LABEL_25;
            }
          }

LABEL_27:
          [WCM_Logging logLevel:0 message:@"Coex ARI driver: Set GNSS IMD Antenna Blk Policy, invalid mitigationType=%u, API UtaIdcSetCellImdGnssMitigationConfigReq failed", v62];
          goto LABEL_30;
        }

LABEL_25:
        v10 = (v10 + 1);
        v104 += 28;
        v105 += 28;
        if (v10 >= v102)
        {
          goto LABEL_26;
        }
      }

      v100 = [v5 mPolicy];
      v101 = [v100 objectAtIndexedSubscript:v10];
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 0, @"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, invalid imdType=%u, API UtaIdcSetCellImdGnssMitigationConfigReq failed", [v101 mImdType]);
    }

    else
    {
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 0, @"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, invalid lqmThreshold=%u, API UtaIdcSetCellImdGnssMitigationConfigReq failed", [v5 mLqmThreshold]);
    }
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Coex ARI driver ERROR: Invalid AntBlockPowerLimitPolicyClientGnssImd received\n"];
  }

LABEL_30:
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 4) = 0;
  return self;
}

@end