@interface WCM_CellularController
- ($F24F406B2B787EFB06265DBA3D28CBD5)getCombinedUplinkFreqRange;
- (BOOL)clkAlgnTDDFreqCheck;
- (BOOL)isInCoexBand7LowerEdge;
- (NSString)description;
- (WCM_CellularController)init;
- (unint64_t)getCoexTechForPolicy:(unint64_t)a3;
- (unint64_t)subSelector;
- (unint64_t)updateFrameSyncBit:(unint64_t)a3;
- (unint64_t)updateGPSStateBit:(unint64_t)a3;
- (unint64_t)updatePolicyForBB20:(unint64_t)a3;
- (void)ConstructAntennaMapXpcMsg:(id)a3 AntPhyIdxDict:(id)a4 AntSpmiIdxDict:(id)a5;
- (void)baseBandProtectionTimerHandler:(id)a3;
- (void)configureCellularTimeShareConfigReqParamsWithCenterFreq:(unint64_t)a3 bandwidth:(unint64_t)a4;
- (void)dealloc;
- (void)disableCellularTimeShareConfigReqSubId:(unint64_t)a3;
- (void)fastChargingHandler:(BOOL)a3;
- (void)fastChargingHystersisTimerHandler:(id)a3;
- (void)handleDesenseNetworkConfig:(id)a3;
- (void)handleMessage:(id)a3;
- (void)handleNetworkConfig:(id)a3;
- (void)handleNetworkConfig_bb20:(id)a3;
- (void)handleNetworkConfig_legacy:(id)a3;
- (void)handlePowerState:(BOOL)a3;
- (void)handleThresholdEvent:(id)a3;
- (void)handleTxPower:(id)a3;
- (void)sacExtractDesenseFreq:(id)a3 message:(id)a4;
- (void)sacHandleDesenseNetworkConfig:(id)a3;
- (void)sendMessage:(unint64_t)a3 withArgs:(id)a4;
- (void)sendMessage:(unint64_t)a3 withArgs:(id)a4 withExtraKey:(const char *)a5 andExtraValue:(id)a6;
- (void)sendMessageToAriDriver:(unint64_t)a3 withArgs:(id)a4 withExtraKey:(const char *)a5 andExtraValue:(id)a6;
- (void)sendMessageToMipcDriver:(unint64_t)a3 withArgs:(id)a4 withExtraKey:(const char *)a5 andExtraValue:(id)a6;
- (void)setAllCriticalCarriers;
- (void)setAllPolicies;
- (void)setAntBlockingParams;
- (void)setClientAntBlockingParams;
- (void)setClientAntBlockingParams22;
- (void)setCriticalCarrier:(unint64_t)a3 forCarrierId:(unint64_t)a4 forTech:(unint64_t)a5;
- (void)setEnhancedScanFrequencyTableWithBand:(id)a3 RATs:(id)a4 Frequency:(id)a5;
- (void)setNetworkConfigOfInterest;
- (void)setRC1Duration:(unint64_t)a3;
- (void)setScanFrequencyBandFilter:(id)a3;
- (void)setTxAntMapInHouseBB25A;
- (void)setWci2TxAntMap;
- (void)setWci2TxAntMapBB21;
- (void)setWci2TxAntMapBB22;
- (void)submitAWDMetricsforNetworkConfiguration;
- (void)updateBBRC1Params:(BOOL)a3 channel:(unint64_t)a4 duration:(unint64_t)a5 priority:(unsigned int)a6;
- (void)updateControllerTxPower:(int64_t)a3;
- (void)updateWCI2CoexPolicy:(unint64_t)a3;
- (void)updateWCI2TxPower:(int64_t)a3;
- (void)updateWiFiStatusCenterFreq:(unint64_t)a3 bandwidth:(unint64_t)a4 txPower:(unint64_t)a5;
@end

@implementation WCM_CellularController

- (void)setAllPolicies
{
  v3 = +[WCM_PolicyManager singleton];
  v4 = [v3 platformManager];
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = [(WCM_CellularController *)self wci2CoexPolicyBitmap];
  v7 = [v4 wcmCellularWCI2PlatformPolicyBitmap];
  if (((v7 | v6) & 0x1000) != 0)
  {
    v8 = (v7 | v6) & 0xFFFFFFFFFFFFFFEFLL;
  }

  else
  {
    v8 = v7 | v6;
  }

  if (([objc_msgSend(v3 "activeCoexFeatures")] & 1) != 0 || objc_msgSend(objc_msgSend(v3, "activeCoexFeatures"), "containsObject:", @"BB_POLICY_CONFIG_SUPPORT"))
  {
    v8 = [(WCM_CellularController *)self updatePolicyForBB20:v8];
    if ([objc_msgSend(v3 "activeCoexFeatures")])
    {
      [WCM_Logging logLevel:2 message:@"BB21: Turning off TX ACTIVE policy in BB21 platforms"];
      v8 &= ~2uLL;
    }
  }

  [WCM_Logging logLevel:1 message:@"clkAlgnTDDFreqCheck: The final wci2CoexPolicyBitmap from WRM to CommCentr is wci2CoexPolicyBitmap= 0x%llx.", v8];
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_Policy", v8);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_PowerThreshold", [objc_msgSend(v4 "wcmCellularWCI2ModePowerThreshold")]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_RB_Threshold", [(WCM_CellularController *)self rbThreshold]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_LTE_TxDenialThreshold", [objc_msgSend(v4 "wcmCellularWCI2ModeLTETxDenial")]);
  xpc_dictionary_set_int64(v5, "kWCMCellularSetWCI2Mode_MaxAllowedFrameDenials", [objc_msgSend(v4 "wcmCellularWCI2ModeMaxAllowedFrameDenials")]);
  xpc_dictionary_set_int64(v5, "kWCMCellularSetWCI2Mode_FrameDenialWindow", [objc_msgSend(v4 "wcmCellularWCI2ModeFrameDenialWindow")]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_APTTable", [objc_msgSend(v4 "wcmCellularWCI2ModeAPTTable")]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_ControllerTxPowerLimit", [(WCM_CellularController *)self controllerTxPowerLimit]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_WCI2PowerLimit", [(WCM_CellularController *)self wci2TxPowerLimit]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_LinkPathLossThreshold", [objc_msgSend(v4 "wcmCellularWCI2ModeLinkPathLossThreshold")]);
  [objc_msgSend(v4 "wcmCellularWCI2ModeRBFilerAlpha")];
  xpc_dictionary_set_double(v5, "kWCMCellularSetWCI2Mode_RBFilterAlpha", v9);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_FilterRBThreshold", [(WCM_CellularController *)self rbThreshold]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_ControllerTxPowerLimitTO", [objc_msgSend(v4 "wcmCellularWCI2ModeControllerTxPowerLimitTO")]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_WCI2PowerLimitTO", [objc_msgSend(v4 "wcmCellularWCI2ModeWCI2PowerLimitTO")]);
  xpc_dictionary_set_int64(v5, "kWCMCellularSetWCI2Mode_TxPowerThresholdForAdvTxNotice", [objc_msgSend(v4 "wcmCellularWCI2ModeTxPowerThresholdAdvTx")]);
  xpc_dictionary_set_int64(v5, "kWCMCellularSetWCI2Mode_RbThresholdForAdvTxNotice", [(WCM_CellularController *)self rbThreshold]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_Controller_RB_Threshold", [objc_msgSend(v4 "wcmCellularWCI2ModeControllerLTERBThreshold")]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_Harq_nack_ratio_Threshold", [objc_msgSend(v4 "wcmCellularWCI2ModeLTEHarqnackratioThreshold")]);
  xpc_dictionary_set_BOOL(v5, "kWCMCellularSetWCI2Mode_Controller_PowerLimiting_Enable", [objc_msgSend(v4 "wcmCellularWCI2ModeControllerLTEPowerLimitingEnable")]);
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"ULCA setAllPolicies-1-ULCA critical bitmap %d", [v3 wcmCellularWCI2Mode_Ext_critical_ul_ca_bitmap]);
  if (([objc_msgSend(v3 "activeCoexFeatures")] & 1) != 0 || objc_msgSend(objc_msgSend(v3, "activeCoexFeatures"), "containsObject:", @"BB_POLICY_CONFIG_SUPPORT"))
  {
    [(WCM_CellularController *)self setAllCriticalCarriers];
    xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_CoexTech", -[WCM_CellularController getCoexTechForPolicy:](self, "getCoexTechForPolicy:", [v3 wcmCellular_CC1_Tech]));
    xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_NGC_TxDenialThresholdSlots", [objc_msgSend(v4 "wcmCellularWCI2ModeLTETxDenial")]);
    xpc_dictionary_set_int64(v5, "kWCMCellularSetWCI2Mode_NGC_MaxAllowedSlotDenials", [objc_msgSend(v4 "wcmCellularWCI2ModeMaxAllowedFrameDenials")]);
    xpc_dictionary_set_int64(v5, "kWCMCellularSetWCI2Mode_NGC_SlotsDenialWindow", [objc_msgSend(v4 "wcmCellularWCI2ModeFrameDenialWindow")]);
  }

  else
  {
    xpc_dictionary_set_BOOL(v5, "kWCMCellularSetWCI2Mode_Ext_enabled", [v3 wcmCellularWCI2Mode_Ext_Enable]);
    xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_Ext_critical_ul_ca_bitmap", [v3 wcmCellularWCI2Mode_Ext_critical_ul_ca_bitmap]);
  }

  [(WCM_CellularController *)self sendMessage:1205 withArgs:v5];

  xpc_release(v5);
}

- (void)setAllCriticalCarriers
{
  v3 = +[WCM_PolicyManager singleton];
  v4 = -[WCM_CellularController getCoexTechForPolicy:](self, "getCoexTechForPolicy:", [v3 wcmCellular_CC1_Tech]);
  v5 = -[WCM_CellularController getCoexTechForPolicy:](self, "getCoexTechForPolicy:", [v3 wcmCellular_CC2_Tech]);
  v6 = [(WCM_CellularController *)self getActiveULCAConfig];
  v7 = [(WCM_CellularController *)self activeSubId];
  if ([v3 wcmCellularCCSetToBB])
  {

    [WCM_Logging logLevel:4 message:@"setAllCriticalCarriers: Critical carriers update done!"];
    return;
  }

  [WCM_Logging logLevel:4 message:@"setAllCriticalCarriers: Start to set critical carriers"];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"setAllCriticalCarriers: previous CC1CarrierId = %llu, new CC1CarrierId = %llu", -[WCM_CellularController CC1CarrierId](self, "CC1CarrierId"), [v3 wcmCellularWCI2Mode_Ext_critical_ul_ca_bitmap]);
  [WCM_Logging logLevel:4 message:@"setAllCriticalCarriers: previous CC1Tech = %llu, new CC1Tech = %llu", [(WCM_CellularController *)self CC1Tech], v4];
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  if (v6)
  {
    v8 = &v6->var0[v6->var2];
    var0 = v8->var0;
    var1 = v8->var1;
    var2 = v8->var2;
    var3 = v8->var3;
    v33 = *&v8->var4;
    v34 = *&v8->var6;
    v35 = *&v8->var8;
    v13 = &v6->var0[v6->var3];
    v14 = v13->var0;
    v15 = v13->var1;
    v16 = v13->var2;
    v17 = v13->var3;
    v32 = *&v13->var8;
    v30 = *&v13->var4;
    v31 = *&v13->var6;
  }

  else
  {
    var0 = 0.0;
    var1 = 0.0;
    var2 = 0.0;
    var3 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
  }

  v18 = &unk_1002B7F00 + 72 * v7;
  v19 = *v18;
  [WCM_Logging logLevel:4 message:@"setAllCriticalCarriers: previous CC1Freq UL/DL = %f/%f, new CC1Freq UL/DL = %f/%f", *v18, *(v18 + 2), *&var0, *&var2];
  v20 = [(WCM_CellularController *)self CC1CarrierId];
  v21 = v20 != [v3 wcmCellularWCI2Mode_Ext_critical_ul_ca_bitmap] || -[WCM_CellularController CC1Tech](self, "CC1Tech") != v4;
  if ([objc_msgSend(v3 "activeCoexFeatures")])
  {
    if (*(v18 + 2) == var2 && *(v18 + 3) == var3 && *v18 == var0)
    {
      if (var2 != 0.0 && *(v18 + 1) != var1)
      {
        goto LABEL_16;
      }
    }

    else if (var2 != 0.0)
    {
LABEL_16:
      *v18 = var0;
      *(v18 + 1) = var1;
      *(v18 + 2) = var2;
      *(v18 + 3) = var3;
      *(v18 + 2) = v33;
      *(v18 + 3) = v34;
      *(v18 + 8) = v35;
LABEL_18:
      -[WCM_CellularController setCriticalCarrier:forCarrierId:forTech:](self, "setCriticalCarrier:forCarrierId:forTech:", 1217, [v3 wcmCellularWCI2Mode_Ext_critical_ul_ca_bitmap], v4);
      -[WCM_CellularController setCC1CarrierId:](self, "setCC1CarrierId:", [v3 wcmCellularWCI2Mode_Ext_critical_ul_ca_bitmap]);
      [(WCM_CellularController *)self setCC1Tech:v4];
      v22 = 1;
      goto LABEL_23;
    }

    *v18 = var0;
    *(v18 + 1) = var1;
    *(v18 + 2) = var2;
    *(v18 + 3) = var3;
    *(v18 + 2) = v33;
    *(v18 + 3) = v34;
    *(v18 + 8) = v35;
    if (v21)
    {
      goto LABEL_18;
    }
  }

  else if (v21)
  {
    goto LABEL_18;
  }

  [WCM_Logging logLevel:4 message:@"setAllCriticalCarriers: no change in CC1, skip CC1 update"];
  v22 = 0;
LABEL_23:
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"setAllCriticalCarriers: previous CC2CarrierId = %llu, new CC2CarrierId = %llu", -[WCM_CellularController CC2CarrierId](self, "CC2CarrierId"), [v3 wcmCellularWCI2Mode_CC2]);
  [WCM_Logging logLevel:4 message:@"setAllCriticalCarriers: previous CC2Tech = %llu, new CC2Tech = %llu", [(WCM_CellularController *)self CC2Tech], v5];
  v23 = &unk_1002B7F90 + 72 * v7;
  v24 = *v23;
  [WCM_Logging logLevel:4 message:@"setAllCriticalCarriers: previous CC2Freq UL/DL = %f/%f, new CC2Freq UL/DL = %f/%f", *v23, *(v23 + 2), *&v14, *&v16];
  v25 = [(WCM_CellularController *)self CC2CarrierId];
  v26 = v25 != [v3 wcmCellularWCI2Mode_CC2] || -[WCM_CellularController CC2Tech](self, "CC2Tech") != v5;
  if ([objc_msgSend(v3 "activeCoexFeatures")])
  {
    if ((*(v23 + 2) != v16 || *(v23 + 3) != v17 || *v23 != v14 || *(v23 + 1) != v15) && v16 != 0.0)
    {
      *v23 = v14;
      *(v23 + 1) = v15;
      *(v23 + 2) = v16;
      *(v23 + 3) = v17;
      *(v23 + 2) = v30;
      *(v23 + 3) = v31;
      *(v23 + 8) = v32;
LABEL_34:
      -[WCM_CellularController setCriticalCarrier:forCarrierId:forTech:](self, "setCriticalCarrier:forCarrierId:forTech:", 1218, [v3 wcmCellularWCI2Mode_CC2], v5);
      -[WCM_CellularController setCC2CarrierId:](self, "setCC2CarrierId:", [v3 wcmCellularWCI2Mode_CC2]);
      [(WCM_CellularController *)self setCC2Tech:v5];
      v27 = 1;
      goto LABEL_37;
    }

    *v23 = v14;
    *(v23 + 1) = v15;
    *(v23 + 2) = v16;
    *(v23 + 3) = v17;
    *(v23 + 2) = v30;
    *(v23 + 3) = v31;
    *(v23 + 8) = v32;
    if (v26)
    {
      goto LABEL_34;
    }
  }

  else if (v26)
  {
    goto LABEL_34;
  }

  [WCM_Logging logLevel:4 message:@"setAllCriticalCarriers: no change in CC2, skip CC2 update"];
  v27 = 0;
LABEL_37:
  v28 = [objc_msgSend(v3 "activeCoexFeatures")];
  if ((v22 | v27) == 1 && v28)
  {
    v29 = xpc_dictionary_create(0, 0, 0);
    [(WCM_CellularController *)self sendMessage:1235 withArgs:v29];
    xpc_release(v29);
  }

  [v3 setWcmCellularCCSetToBB:1];
}

- (unint64_t)subSelector
{
  v3 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  if (v3)
  {
    v4 = [v3 getUserDataPreferredSlot];
    [WCM_Logging logLevel:2 message:@"BB20 subSelector  active sub %d ", v4];
  }

  else
  {
    v4 = 1;
  }

  v5 = *(&self->_cellularInstance0.frameOffset + 4);
  v6 = *(&self->_cellularInstance1.frameOffset + 4);
  v10 = 0x100010000000101;
  if (v4 == 1)
  {
    v7 = (&v10 + 4);
  }

  else
  {
    if (v4 != 2)
    {
      v8 = 0;
      goto LABEL_10;
    }

    v7 = &v10;
  }

  v8 = *(v7 + 2 * (v5 != 0.0) + (v6 != 0.0));
LABEL_10:
  [WCM_Logging logLevel:2 message:@"BB20 subSelector rrc states Sub0=%d Sub1=%d, selected sub %llu", v5 != 0.0, v6 != 0.0, v8, v10];
  return v8;
}

- (void)submitAWDMetricsforNetworkConfiguration
{
  v3 = 20;
  if ([(WCM_CellularController *)self activeSubId])
  {
    v3 = 2764;
  }

  v4 = +[WRM_MetricsService getSingleton];
  v5 = v4;
  if (v4)
  {
    [v4 initLTECoexMetrics];
  }

  v6 = [v5 getLTECoexMetrics];
  if (v6)
  {
    v7 = (self + v3);
    v8 = (v6 + 20);
    *(v6 + 24) = 0u;
    v6[20] = 0;
    *(v6 + 40) = 0u;
    if (LODWORD(v7[153].f64[0]) >= 2)
    {
      v11 = BYTE4(v7[168].f64[0]);
      *v8 = v11;
      v15.val[1] = vmovn_s64(vcvtq_u64_f64(v7[10]));
      v15.val[0] = vmovn_s64(vcvtq_u64_f64(v7[9]));
      v9 = (v6 + 24);
      vst2_f32(v9, v15);
      if (v11 == 1)
      {
        v12 = (v7 + 72 * SHIDWORD(v7[153].f64[0]) + 144);
        v16.val[1] = vmovn_s64(vcvtq_u64_f64(v12[1]));
        v16.val[0] = vmovn_s64(vcvtq_u64_f64(*v12));
        v10 = (v6 + 40);
        vst2_f32(v10, v16);
      }
    }

    if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      v13 = +[WCM_PolicyManager singleton];
      LODWORD(v14) = *(v8 + 8);
      [v13 wRMCACoexSubmit_ULCACoexStates:*v8 ULCAPrimaryCarrierULFreq:*(v8 + 1) ULCAPrimaryCarrierDLFreq:*(v8 + 2) ULCAPrimaryCarrierULBW:*(v8 + 3) ULCAPrimaryCarrierDLBW:*(v8 + 4) ULCACriticalCarrierULFreq:*(v8 + 5) ULCACriticalCarrierDLFreq:*(v8 + 3) ULCACriticalCarrierULBW:v14 ULCACriticalCarrierDLBW:?];
    }
  }
}

- (BOOL)clkAlgnTDDFreqCheck
{
  v3 = [(WCM_CellularController *)self tddBand];
  if (v3)
  {
    [(WCM_CellularController *)self ulCenterFreqWiFiVictim];
    v5 = v4;
    [(WCM_CellularController *)self ulBandwidthWiFiVictim];
    v7 = v6;
    [(WCM_CellularController *)self ulCenterFreqCellVictim];
    v9 = v8;
    [(WCM_CellularController *)self ulBandwidthCellVictim];
    v11 = v10;
    [(WCM_CellularController *)self ulCenterFreq];
    v13 = v12;
    [(WCM_CellularController *)self ulBandwidth];
    [WCM_Logging logLevel:4 message:@"clkAlgnTDDFreqCheck: ulCenterFreqWiFiVictim=%f, ulBandwidthWiFiVictim=%f, ulCenterFreqCellVictim=%f, ulBandwidthCellVictim=%f, ulCenterFreq=%f, ulBandwidth=%f.", v5, v7, v9, v11, v13, v14];
    [(WCM_CellularController *)self ulCenterFreqWiFiVictim];
    v16 = v15;
    [(WCM_CellularController *)self ulBandwidthWiFiVictim];
    if (v16 + v17 * 0.5 <= 2370.0 || ([(WCM_CellularController *)self ulCenterFreqWiFiVictim], v19 = v18, [(WCM_CellularController *)self ulBandwidthWiFiVictim], v19 + v20 * -0.5 >= 2400.0))
    {
      [(WCM_CellularController *)self ulCenterFreqWiFiVictim];
      v33 = v32;
      [(WCM_CellularController *)self ulBandwidthWiFiVictim];
      if (v33 + v34 * 0.5 <= 2496.0 || ([(WCM_CellularController *)self ulCenterFreqWiFiVictim], v36 = v35, [(WCM_CellularController *)self ulBandwidthWiFiVictim], v36 + v37 * -0.5 >= 2506.0))
      {
        [WCM_Logging logLevel:4 message:@"clkAlgnTDDFreqCheck: Neither B40b nor B41A1. Return False."];
        LOBYTE(v3) = 0;
        return v3;
      }

      [(WCM_CellularController *)self ulCenterFreqWiFiVictim];
      v39 = v38;
      [(WCM_CellularController *)self ulBandwidthWiFiVictim];
      v41 = v40;
      [(WCM_CellularController *)self ulCenterFreqCellVictim];
      v43 = v42;
      [(WCM_CellularController *)self ulBandwidthCellVictim];
      v45 = v44;
      [(WCM_CellularController *)self ulCenterFreq];
      v47 = v46;
      [(WCM_CellularController *)self ulBandwidth];
      [WCM_Logging logLevel:4 message:@"clkAlgnTDDFreqCheck: ulCenterFreqWiFiVictim=%f, ulBandwidthWiFiVictim=%f, ulCenterFreqCellVictim=%f, ulBandwidthCellVictim=%f, ulCenterFreq=%f, ulBandwidth=%f, Band41a1 (2496 - 2506)MHz identified.", v39, v41, v43, v45, v47, v48];
    }

    else
    {
      [(WCM_CellularController *)self ulCenterFreqWiFiVictim];
      v22 = v21;
      [(WCM_CellularController *)self ulBandwidthWiFiVictim];
      v24 = v23;
      [(WCM_CellularController *)self ulCenterFreqCellVictim];
      v26 = v25;
      [(WCM_CellularController *)self ulBandwidthCellVictim];
      v28 = v27;
      [(WCM_CellularController *)self ulCenterFreq];
      v30 = v29;
      [(WCM_CellularController *)self ulBandwidth];
      [WCM_Logging logLevel:4 message:@"clkAlgnTDDFreqCheck: ulCenterFreqWiFiVictim=%f, ulBandwidthWiFiVictim=%f, ulCenterFreqCellVictim=%f, ulBandwidthCellVictim=%f, ulCenterFreq=%f, ulBandwidth=%f, Band40b (2370 - 2400)MHz identified.", v22, v24, v26, v28, v30, v31];
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

- (WCM_CellularController)init
{
  v5.receiver = self;
  v5.super_class = WCM_CellularController;
  v2 = [(WCM_Controller *)&v5 init];
  v3 = v2;
  if (v2)
  {
    bzero(&v2->super.mProcessId + 1, 0xAB8uLL);
    bzero(&v3->_cellularInstance0.cellBandInfo + 1, 0xAB8uLL);
    HIDWORD(v3->_cellularInstance0.cachedULBandwidth) = 127;
    HIDWORD(v3->_cellularInstance1.cachedULBandwidth) = 127;
    *(&v3->_wifiTxPowerdBm + 4) = (&v3->super.mProcessId + 1);
    *(&v3->_cellularInstance1.cellBandInfo + 1) = -1;
    v3->_sensorInfo.band[0] = -1;
  }

  v3->_sensorInfo.usecase[2] = 1;
  v3->_sensorInfo.usecase[3] = 1;
  v3->_sensorInfo.usecase[4] = 0;
  [(WCM_CellularController *)v3 setFastChargingHystersisTimer:0];
  [(WCM_CellularController *)v3 setBaseBandEnabledProtectionTimer:0];
  return v3;
}

- (void)dealloc
{
  if ([(WCM_CellularController *)self fastChargingHystersisTimer])
  {
    [(NSTimer *)[(WCM_CellularController *)self fastChargingHystersisTimer] invalidate];
    [(WCM_CellularController *)self setFastChargingHystersisTimer:0];
  }

  if ([(WCM_CellularController *)self baseBandEnabledProtectionTimer])
  {
    [(NSTimer *)[(WCM_CellularController *)self baseBandEnabledProtectionTimer] invalidate];
    [(WCM_CellularController *)self setBaseBandEnabledProtectionTimer:0];
  }

  v3.receiver = self;
  v3.super_class = WCM_CellularController;
  [(WCM_Controller *)&v3 dealloc];
}

- (NSString)description
{
  v2 = *(&self->_cellularInstance0.dlBandwidth + 4);
  v3 = *(&self->_cellularInstance1.dlCPConfig + 4);
  return [NSString stringWithFormat:@"WCM_CellularController cellularConfig0<UL(freq=%lf bw=%lf) UL2(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf) DL2(freq=%lf bw=%lf) TDD ULDLConfig=%lld, SFF=%lld ULCP=%lld DLCP=%lld FrameOffset=%lld> cellularConfig1<UL(freq=%lf bw=%lf) UL2(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf) DL2(freq=%lf bw=%lf) TDD ULDLConfig=%lld, SFF=%lld ULCP=%lld DLCP=%lld FrameOffset=%lld> activeSubid(%lld)", *(&self->_cellularInstance0.frameOffset + 4), *(&self->_cellularInstance0.ulCenterFreq + 4), *(&self->_cellularInstance0.dlBandwidth + 4), *(&self->_cellularInstance0.ulCenterFreq2 + 4), *(&self->_cellularInstance0.ulBandwidth + 4), *(&self->_cellularInstance0.dlCenterFreq + 4), *(&self->_cellularInstance0.ulBandwidth2 + 4), *(&self->_cellularInstance0.dlCenterFreq2 + 4), *(&self->_cellularInstance0.dlBandwidth2 + 4), *(&self->_cellularInstance0.tddULDLConfig + 4), *(&self->super.mProcessId + 1), *(&self->_cellularInstance0.ulCPConfig + 4), *(&self->_cellularInstance0.dlCPConfig + 4), *(&self->_cellularInstance1.frameOffset + 4), *(&self->_cellularInstance1.ulCenterFreq + 4), *(&self->_cellularInstance1.dlBandwidth + 4), *(&self->_cellularInstance1.ulCenterFreq2 + 4), *(&self->_cellularInstance1.ulBandwidth + 4), *(&self->_cellularInstance1.dlCenterFreq + 4), *(&self->_cellularInstance1.ulBandwidth2 + 4), *(&self->_cellularInstance1.dlCenterFreq2 + 4), *(&self->_cellularInstance1.dlBandwidth2 + 4), *(&self->_cellularInstance1.tddULDLConfig + 4), *(&self->_cellularInstance0.cellBandInfo + 1), *(&self->_cellularInstance1.ulCPConfig + 4), v3, *(&self->_activeConfig + 4)];
}

- (void)sendMessageToMipcDriver:(unint64_t)a3 withArgs:(id)a4 withExtraKey:(const char *)a5 andExtraValue:(id)a6
{
  *keys = *off_1002413F0;
  v12 = "kSubId";
  values[0] = xpc_uint64_create(a3);
  values[1] = a4;
  values[2] = a6;
  v9 = xpc_dictionary_create(keys, values, 3uLL);
  [WCM_Logging logLevel:3 message:@"Sending messageId(%lld) to WCM_MipcCoexCommandDriver %@", a3, v9];
  xpc_release(values[0]);
  xpc_release(v9);
}

- (void)sendMessageToAriDriver:(unint64_t)a3 withArgs:(id)a4 withExtraKey:(const char *)a5 andExtraValue:(id)a6
{
  *keys = *off_1002413F0;
  v13 = "kSubId";
  values[0] = xpc_uint64_create(a3);
  values[1] = a4;
  values[2] = a6;
  v9 = xpc_dictionary_create(keys, values, 3uLL);
  [WCM_Logging logLevel:3 message:@"Sending messageId(%lld) to WCM_AriCoexCommandDriver %@", a3, v9];
  v10 = +[WCM_AriCoexCommandDriver singleton];
  if (v10)
  {
    [v10 handleEvent:v9];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Sending messageId to WCM_AriCoexCommandDriver failed. ARI Coex Driver does not exist"];
  }

  xpc_release(values[0]);
  xpc_release(v9);
}

- (void)sendMessage:(unint64_t)a3 withArgs:(id)a4
{
  v7 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v8 = xpc_uint64_create([(WCM_CellularController *)self activeSubId]);
  if (v7)
  {
    [(WCM_CellularController *)self sendMessageToAriDriver:a3 withArgs:a4 withExtraKey:"kSubId" andExtraValue:v8];
  }

  else
  {
    [(WCM_CellularController *)self sendMessage:a3 withArgs:a4 withExtraKey:"kSubId" andExtraValue:v8];
  }

  xpc_release(v8);
}

- (void)sendMessage:(unint64_t)a3 withArgs:(id)a4 withExtraKey:(const char *)a5 andExtraValue:(id)a6
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {

    [(WCM_CellularController *)self sendMessageToAriDriver:a3 withArgs:a4 withExtraKey:"kSubId" andExtraValue:a6];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WCM_CellularController;
    [(WCM_Controller *)&v11 sendMessage:a3 withArgs:a4 withExtraKey:a5 andExtraValue:a6];
  }
}

- (void)handlePowerState:(BOOL)a3
{
  if (a3)
  {
    v4 = +[WCM_PolicyManager singleton];
    v5 = [v4 platformManager];
    -[WCM_CellularController setWci2TxPowerLimit:](self, "setWci2TxPowerLimit:", [objc_msgSend(v5 "wcmCellularWCI2ModeLTEMaxTxPowerLow")]);
    -[WCM_CellularController setControllerTxPowerLimit:](self, "setControllerTxPowerLimit:", [objc_msgSend(v5 "wcmCellularWCI2ModeLTEMaxTxPowerHigh")]);
    -[WCM_CellularController setRbThreshold:](self, "setRbThreshold:", [objc_msgSend(v5 "wcmCellularWCI2ModeRBThresholdHigh")]);
    [WCM_Logging logLevel:4 message:@"DLDebug_ updateGPSStateBit function called by handlePowerState with input policy as zero."];
    [(WCM_CellularController *)self setWci2CoexPolicyBitmap:[(WCM_CellularController *)self updateGPSStateBit:0]];
    [(WCM_CellularController *)self setLteCDRXWiFiTDD:0];
    [(WCM_CellularController *)self setWifiCenterFreqMHz:0];
    [(WCM_CellularController *)self setWifiBandwidthMHz:0];
    [(WCM_CellularController *)self setWifiTxPowerdBm:0];
    [(WCM_CellularController *)self setWatchAntPrefBand:7];
    [(WCM_CellularController *)self setWatchAntPref:0];
    [(WCM_CellularController *)self setRc1priority:8];
    [(WCM_CellularController *)self setRc1duration:0];
    [(WCM_CellularController *)self setCC1CarrierId:0];
    [(WCM_CellularController *)self setCC2CarrierId:0];
    [(WCM_CellularController *)self setCC1Tech:0];
    [(WCM_CellularController *)self setCC2Tech:0];
    [(WCM_CellularController *)self setAllPolicies];
    [(WCM_CellularController *)self setNetworkConfigOfInterest];
    if ([objc_msgSend(v4 "activeCoexFeatures")])
    {
      if ([v5 wcmCellularScanProtectionCellBands] && objc_msgSend(objc_msgSend(v5, "wcmCellularScanProtectionCellBands"), "count"))
      {
        -[WCM_CellularController setEnhancedScanFrequencyTableWithBand:RATs:Frequency:](self, "setEnhancedScanFrequencyTableWithBand:RATs:Frequency:", [v5 wcmCellularScanProtectionCellBands], objc_msgSend(v5, "wcmCellularScanProtectionCellRats"), objc_msgSend(v5, "wcmCellularScanProtectionCellFrequencies"));
      }

      else
      {
        -[WCM_CellularController setScanFrequencyBandFilter:](self, "setScanFrequencyBandFilter:", [v5 wcmCellularScanProtectionCellFrequencies]);
      }
    }

    if ([objc_msgSend(v4 "activeCoexFeatures")])
    {
      if ([objc_msgSend(v4 "activeCoexFeatures")] && (v7 = objc_msgSend(v4, "rcu1Controller")) != 0)
      {
        -[WCM_CellularController updateBBRC1Params:channel:duration:priority:](self, "updateBBRC1Params:channel:duration:priority:", [v7 mRCU1PowerOn], objc_msgSend(v7, "mRCU1ChannelNum"), objc_msgSend(v7, "mRCU1OnDuration"), objc_msgSend(v7, "mRCU1UseCaseNum"));
      }

      else
      {
        [(WCM_CellularController *)self setLAACoexConfig:4];
      }
    }

    if ([objc_msgSend(v4 "activeCoexFeatures")])
    {
      v8 = [v4 wifiController];
      if (v8)
      {
        v9 = v8;
        if ([v4 audioBuiltInReceiver])
        {
          v10 = [v9 headTxPowerCapdBm];
        }

        else
        {
          v10 = [v9 bodyTxPowerCapdBm];
        }

        -[WCM_CellularController updateWiFiStatusCenterFreq:bandwidth:txPower:](self, "updateWiFiStatusCenterFreq:bandwidth:txPower:", [v9 channelCenterFreqMHz], objc_msgSend(v9, "channelBandwidthMHz"), v10);
      }
    }

    [(WCM_CellularController *)self sendMessage:1200 withArgs:0];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    if (([objc_msgSend(v4 "activeCoexFeatures")] & 1) != 0 || objc_msgSend(objc_msgSend(v4, "activeCoexFeatures"), "containsObject:", @"BB_POLICY_CONFIG_SUPPORT"))
    {
      if ([objc_msgSend(v4 "activeCoexFeatures")])
      {
        [(WCM_CellularController *)self setWci2TxAntMapBB22];
      }

      else if ([objc_msgSend(v4 "activeCoexFeatures")])
      {
        [(WCM_CellularController *)self setWci2TxAntMapBB21];
      }

      else if ([objc_msgSend(v4 "activeCoexFeatures")])
      {
        [(WCM_CellularController *)self setTxAntMapInHouseBB25A];
      }

      else
      {
        [(WCM_CellularController *)self setWci2TxAntMap];
      }

      if ([objc_msgSend(v4 "activeCoexFeatures")])
      {
        [(WCM_CellularController *)self setClientAntBlockingParams];
      }

      else if ([objc_msgSend(v4 "activeCoexFeatures")])
      {
        [(WCM_CellularController *)self setClientAntBlockingParams22];
      }

      else if ([objc_msgSend(v4 "activeCoexFeatures")])
      {
        [WCM_Logging logLevel:4 message:@"Handle cellular Power State: Calling mavAntPolicy sendMavConfigItems"]);
        [objc_msgSend(v4 "mavAntPolicy")];
      }

      else
      {
        [(WCM_CellularController *)self setAntBlockingParams];
      }
    }

    if ([objc_msgSend(v4 "activeCoexFeatures")])
    {
      v11 = 0;
      v12 = &self->_cellularInstance1.cellBandInfo + 1;
      do
      {
        v13 = *(v12 + v11);
        if (*(v12 + v11) && v13 != 255)
        {
          v14 = *(v12 + v11 + 5);
          *(v12 + v11) = -1;
          [(WCM_CellularController *)self sendBBCoexSensorMessage:v11 band:v13 usecase:v14];
        }

        ++v11;
      }

      while (v11 != 5);
    }

    if ([objc_msgSend(v4 "activeCoexFeatures")])
    {
      v15 = +[WCM_AriCoexCommandDriver singleton];
      if (v15)
      {
        v16 = v15;
        v17 = [v5 wrmPlatformId];
        v18 = [v5 wrmPlatformAntBlockPowerLimitPlistFile];
        [WCM_Logging logLevel:3 message:@"Handle Power State: Configure antenna blocking policy for platformId(%llu)", v17];
        [v16 setAntennaBlockingPolicyForPlatformId:v17 activeSubId:-[WCM_CellularController activeSubId](self AntBlockPowerLimitPlist:{"activeSubId"), v18}];
      }

      else
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"Handle Power State: Configure antenna blocking policy for platformId(%u) failed, ARI Driver is NULL", [v5 wrmPlatformId]);
      }
    }

    if ([v4 cellularRc1PolicyManager])
    {
      [objc_msgSend(v4 "cellularRc1PolicyManager")];
    }

    if ([objc_msgSend(v4 "activeCoexFeatures")])
    {
      [WCM_Logging logLevel:4 message:@"HPCellular: Calling queryHPCellularInitialState after BB power on"];

      [v4 queryHPCellularInitialState];
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"CellularController: BB power off"];
    v6 = +[WCM_PolicyManager singleton];
    if (([objc_msgSend(v6 "activeCoexFeatures")] & 1) != 0 || objc_msgSend(objc_msgSend(v6, "activeCoexFeatures"), "containsObject:", @"UseWCMMipcDriver"))
    {
      bzero(&self->super.mProcessId + 1, 0xAB8uLL);

      bzero(&self->_cellularInstance0.cellBandInfo + 1, 0xAB8uLL);
    }
  }
}

- (void)handleMessage:(id)a3
{
  uint64 = xpc_dictionary_get_uint64(a3, "kMessageId");
  if (uint64 <= 303)
  {
    if (uint64 > 301)
    {
      if (uint64 != 302)
      {

        [(WCM_CellularController *)self handleThresholdEvent:a3];
        return;
      }

      v6 = @"Just ignore WCMCellularLinkQuality for now";
LABEL_24:

      [WCM_Logging logLevel:3 message:v6];
      return;
    }

    if (uint64 == 300)
    {
LABEL_20:

      [(WCM_CellularController *)self handleNetworkConfig:a3];
      return;
    }

    if (uint64 == 301)
    {

      [(WCM_CellularController *)self handleTxPower:a3];
      return;
    }

LABEL_36:
    [WCM_Logging logLevel:0 message:@"Cellular Controller dropping message %llu", uint64];
    return;
  }

  if (uint64 <= 387)
  {
    if (uint64 == 304)
    {
      [WCM_Logging logLevel:0 message:@"BB Reset & Now Ready - Reset Coex Policies"];

      [(WCM_CellularController *)self handlePowerState:1];
      return;
    }

    if (uint64 == 305)
    {
      v6 = @"Just ignore WCMCellularScanFreqBandFilter for now";
      goto LABEL_24;
    }

    goto LABEL_36;
  }

  switch(uint64)
  {
    case 388:
      [WCM_Logging logLevel:3 message:@"FCharging Handle config message WCMCellularBBStateIndication"];

      [(WCM_CellularController *)self handleDesenseBBStateIndication:a3];
      break;
    case 399:
      [WCM_Logging logLevel:3 message:@"FCharging Handle config message WCMCellular_DesenseNetworkConfiguration"];

      [(WCM_CellularController *)self handleDesenseNetworkConfig:a3];
      break;
    case 2600:
      goto LABEL_20;
    default:
      goto LABEL_36;
  }
}

- (void)setCriticalCarrier:(unint64_t)a3 forCarrierId:(unint64_t)a4 forTech:(unint64_t)a5
{
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = +[WCM_PolicyManager singleton];
  xpc_dictionary_set_BOOL(v9, "kWCMCellularSetCC_Enable", [v10 wcmCellularWCI2Mode_Ext_Enable]);
  xpc_dictionary_set_uint64(v9, "kWCMCellularSetCC_CoexTech", a5);
  xpc_dictionary_set_uint64(v9, "kWCMCellularSetCC_CarrierId", a4);
  if ([objc_msgSend(v10 "activeCoexFeatures")])
  {
    v11 = [(WCM_CellularController *)self activeSubId];
    v12 = &OBJC_IVAR___WCM_CellularController__cellularInstance1;
    if (!v11)
    {
      v12 = &OBJC_IVAR___WCM_CellularController__cellularInstance0;
    }

    v13 = &self->_cellularInstance0.cachedULBandwidth + *v12;
    v14 = 32;
    while (*(v13 + 8) != a4)
    {
      v13 += 72;
      if (!--v14)
      {
        v15 = 0.0;
        v16 = 0.0;
        v17 = 0.0;
        v18 = 0.0;
        goto LABEL_16;
      }
    }

    if (![objc_msgSend(v10 "activeCoexFeatures")])
    {
      goto LABEL_15;
    }

    v19 = [objc_msgSend(v10 "wifiController")];
    v20 = [objc_msgSend(v10 "wifiController")];
    if (a3 == 1217)
    {
      v21 = 40;
    }

    else
    {
      if (a3 != 1218)
      {
        goto LABEL_15;
      }

      v21 = 48;
    }

    v22 = *&v13[v21];
    v25 = 0.0;
    v26 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    if (v22)
    {
      [v22 cellFreqRangeWithIssueForCellDlLowFreq:&v25 cellDlHighFreq:&v23 cellUlLowFreq:*(v13 + 2) - *(v13 + 3) * 0.5 cellUlHighFreq:*(v13 + 2) + *(v13 + 3) * 0.5 wifiLowFreq:*v13 - *(v13 + 1) * 0.5 wifiHighFreq:*v13 + *(v13 + 1) * 0.5 cellTxIssueRange:(v19 - (v20 >> 1)) cellRxIssueRange:(v19 + (v20 >> 1))];
      v17 = v26;
      v18 = v25 + v26 * 0.5;
      v15 = v24;
      v16 = v23 + v24 * 0.5;
      [WCM_Logging logLevel:3 message:@"Critical carrier with partial frequency range: input critical carrier DL[%f, %f]MHz, UL[%f, %f]MHz", *(v13 + 2), *(v13 + 3), *v13, *(v13 + 1)];
      [WCM_Logging logLevel:3 message:@"Critical carrier with partial frequency range: input WiFi frequency [%u, %u]MHz", v19, v20];
      [WCM_Logging logLevel:3 message:@"Critical carrier with partial frequency range: output critical carrier DL[%f, %f]MHz, UL[%f, %f]MHz", *&v16, *&v15, *&v18, *&v17];
LABEL_16:
      xpc_dictionary_set_double(v9, "kWCMCellularSetCC_UplinkCenterFrequency", v18);
      xpc_dictionary_set_double(v9, "kWCMCellularSetCC_UplinkBandwidth", v17);
      xpc_dictionary_set_double(v9, "kWCMCellularSetCC_DownlinkCenterFrequency", v16);
      xpc_dictionary_set_double(v9, "kWCMCellularSetCC_DownlinkBandwidth", v15);
      goto LABEL_17;
    }

LABEL_15:
    v18 = *v13;
    v17 = *(v13 + 1);
    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    goto LABEL_16;
  }

LABEL_17:
  [(WCM_CellularController *)self sendMessage:a3 withArgs:v9];
  xpc_release(v9);
}

- (unint64_t)getCoexTechForPolicy:(unint64_t)a3
{
  if (a3 <= 7)
  {
    if (a3 == 1)
    {
      if ([(WCM_CellularController *)self activeSubId])
      {
        return 9;
      }

      else
      {
        return 0;
      }
    }

    if (a3 == 2)
    {
      return 1;
    }

    if (a3 != 4)
    {
      return 0;
    }

    v4 = [(WCM_CellularController *)self activeSubId]== 0;
    v5 = 6;
    v6 = 2;
LABEL_21:
    if (v4)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  if (a3 > 31)
  {
    if (a3 != 32)
    {
      if (a3 == 64)
      {
        if ([(WCM_CellularController *)self activeSubId])
        {
          return 11;
        }

        else
        {
          return 10;
        }
      }

      return 0;
    }

    v4 = [(WCM_CellularController *)self activeSubId]== 0;
    v5 = 8;
    v6 = 5;
    goto LABEL_21;
  }

  if (a3 != 8)
  {
    if (a3 == 16)
    {
      return 4;
    }

    return 0;
  }

  return 3;
}

- (unint64_t)updatePolicyForBB20:(unint64_t)a3
{
  v3 = a3 & 0xFFFFFFFFFFFFEFCFLL | 0x30;
  if ((a3 & 0x1000) == 0)
  {
    v3 = a3;
  }

  if ((a3 & 0x200) != 0)
  {
    v3 &= 0xFFFFFFFFFFFFEDFFLL;
  }

  if ((a3 & 0x4000) != 0)
  {
    v3 &= 0xFFFFFFFFFFFFAFFFLL;
  }

  if ((a3 & 0x10000) != 0)
  {
    v3 &= 0xFFFFFFFFFFFEEFFFLL;
  }

  if ((a3 & 0x4000) != 0)
  {
    v3 &= ~0x4000uLL;
  }

  if ((a3 & 0x8000) != 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFF7FFFLL;
  }

  else
  {
    v4 = v3;
  }

  [WCM_Logging logLevel:2 message:@"BB20 Policy updated for bb20 0x%llx", v4];
  return v4;
}

- (void)updateWCI2CoexPolicy:(unint64_t)a3
{
  [WCM_Logging logLevel:4 message:@"updateWCI2CoexPolicy: updateGPSStateBit with input policy wci2CoexPolicyBitmap : 0x%llx.", a3];
  v5 = [(WCM_CellularController *)self updateGPSStateBit:a3];
  [WCM_Logging logLevel:4 message:@"updateWCI2CoexPolicy: updateFrameSyncBit with input policy wci2CoexPolicyBitmapGPSUpdated: 0x%llx.", v5];
  v6 = [(WCM_CellularController *)self updateFrameSyncBit:v5];
  if ([(WCM_CellularController *)self wci2CoexPolicyBitmap]!= v6)
  {
    [WCM_Logging logLevel:3 message:@"updateWCI2CoexPolicy: Updating WCI2 Policy from 0x%llx to 0x%llx", [(WCM_CellularController *)self wci2CoexPolicyBitmap], v6];
    [(WCM_CellularController *)self setWci2CoexPolicyBitmap:v6];
    [(WCM_CellularController *)self setAllPolicies];
  }

  [(WCM_CellularController *)self setAllCriticalCarriers];
}

- (unint64_t)updateFrameSyncBit:(unint64_t)a3
{
  v5 = +[WCM_PolicyManager singleton];
  v6 = a3 & 1;
  [WCM_Logging logLevel:4 message:@"clkAlgnTDDFreqCheck: before updateFrameSyncBit, wci2CoexPolicyBitmap=0x%llx, FrameSyncBit=%lld", a3, v6];
  if ([objc_msgSend(v5 "activeCoexFeatures")])
  {
    v7 = [(WCM_CellularController *)self btClkAlgnFlag];
    v6 = v7;
    a3 = a3 & 0xFFFFFFFFFFFFFFFELL | v7;
    [WCM_Logging logLevel:4 message:@"clkAlgnTDDFreqCheck: clkAlgnEnableFlag is %d.", v7];
  }

  [WCM_Logging logLevel:4 message:@"clkAlgnTDDFreqCheck: after updateFrameSyncBit, wci2CoexPolicyBitmap=0x%llx, FrameSyncBit=%lld", a3, v6];
  return a3;
}

- (unint64_t)updateGPSStateBit:(unint64_t)a3
{
  [WCM_Logging logLevel:3 message:@"DLDebug_ GPS State Always Set Feature --- updateGPSStateBit function called."];
  v5 = +[WCM_PolicyManager singleton];
  if ([objc_msgSend(v5 "activeCoexFeatures")] && objc_msgSend(objc_msgSend(v5, "activeCoexFeatures"), "containsObject:", @"AlwaysSetGPSState"))
  {
    v6 = [v5 gpsRadioActive];
    v7 = [(WCM_CellularController *)self wci2CoexPolicyBitmap];
    if (v6)
    {
      a3 |= 0x8000uLL;
      [WCM_Logging logLevel:3 message:@"DLDebug_ GPS State Always Set Feature --- GPS Active with old bitmap 0x%llx, new bitmap 0x%llx", v7, a3];
    }

    else
    {
      a3 &= ~0x8000uLL;
      [WCM_Logging logLevel:3 message:@"DLDebug_ GPS State Always Set Feature --- GPS inactive with old bitmap 0x%llx, new bitmap 0x%llx", v7, a3];
    }
  }

  else if ([objc_msgSend(v5 "activeCoexFeatures")] && objc_msgSend(v5, "gpsRadioActive"))
  {
    a3 |= 0x8000uLL;
  }

  return a3;
}

- (void)updateWCI2TxPower:(int64_t)a3
{
  v5 = xpc_dictionary_create(0, 0, 0);
  if ([(WCM_CellularController *)self wci2TxPowerLimit]!= a3)
  {
    [WCM_Logging logLevel:3 message:@"Updating WCI2 Power limit to %lld", a3];
    [(WCM_CellularController *)self setWci2TxPowerLimit:a3];
    [(WCM_CellularController *)self setAllPolicies];
  }

  xpc_release(v5);
}

- (void)updateControllerTxPower:(int64_t)a3
{
  if ([(WCM_CellularController *)self controllerTxPowerLimit]!= a3)
  {
    [WCM_Logging logLevel:3 message:@"Updating Controller Power limit to %lld", a3];
    [(WCM_CellularController *)self setControllerTxPowerLimit:a3];

    [(WCM_CellularController *)self setAllPolicies];
  }
}

- (void)updateWiFiStatusCenterFreq:(unint64_t)a3 bandwidth:(unint64_t)a4 txPower:(unint64_t)a5
{
  if ([(WCM_CellularController *)self wifiCenterFreqMHz]== a3 && [(WCM_CellularController *)self wifiBandwidthMHz]== a4 && [(WCM_CellularController *)self wifiTxPowerdBm]== a5)
  {
    [WCM_Logging logLevel:3 message:@"Already set to centerFreqMhz(%ld) bandwidthMHz(%ld) txPowerdBm(%ld)", a3, a4, a5];
  }

  else
  {
    [WCM_Logging logLevel:5 message:@"Updating WiFi Status centerFreqMHz(%ld -> %ld) bandwidthMHz(%ld -> %ld) txPowerdBm(%ld -> %ld)", [(WCM_CellularController *)self wifiCenterFreqMHz], a3, [(WCM_CellularController *)self wifiBandwidthMHz], a4, [(WCM_CellularController *)self wifiTxPowerdBm], a5];
    [(WCM_CellularController *)self setWifiCenterFreqMHz:a3];
    [(WCM_CellularController *)self setWifiBandwidthMHz:a4];
    [(WCM_CellularController *)self setWifiTxPowerdBm:a5];
    if (!(a4 | a3 | a5))
    {
      [WCM_Logging logLevel:3 message:@"DLDebug_ CellularController is getting all 0s for WiFi Freq info."];
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v9, "WCMCellularSetWiFiStatus_CenterFrequency", a3);
    xpc_dictionary_set_uint64(v9, "WCMCellularSetWiFiStatus_ChannelBandwidth", a4);
    xpc_dictionary_set_uint64(v9, "WCMCellularSetWiFiStatus_TxPower", a5);
    [(WCM_CellularController *)self sendMessage:1210 withArgs:v9];

    xpc_release(v9);
  }
}

- (void)updateBBRC1Params:(BOOL)a3 channel:(unint64_t)a4 duration:(unint64_t)a5 priority:(unsigned int)a6
{
  v7 = a4 == 5;
  if (!v7 || !a3)
  {
    a5 = 0;
  }

  if (v7 && a3)
  {
    v9 = a6;
  }

  else
  {
    v9 = 8;
  }

  if ([(WCM_CellularController *)self rc1duration]== a5)
  {
    [WCM_Logging logLevel:3 message:@"Already set rc1 duration to (%ld)", a5];
  }

  else
  {
    v10 = a5 | 0x10000;
    if (v9 != 8)
    {
      v10 = a5;
    }

    if ((v9 & 2) != 0)
    {
      v11 = a5 | 0x3200000;
    }

    else
    {
      v11 = v10;
    }

    [(WCM_CellularController *)self setRC1Duration:v11];
  }

  if ([(WCM_CellularController *)self rc1priority]== v9)
  {
    [WCM_Logging logLevel:3 message:@"Already set LAA Params to rc1priority to  (%ld)", v9];
  }

  else
  {

    [(WCM_CellularController *)self setLAACoexConfig:v9];
  }
}

- (void)fastChargingHandler:(BOOL)a3
{
  v3 = a3;
  v5 = &self->super.mProcessId + 1;
  v6 = *(&self->_cellularInstance0.ulBandwidth + 4);
  if (v6 > 0.0 && ([WCM_Logging logLevel:5 message:@"FCharging :- SUB%ld: Network Config UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf)  TDD ULDLConfig=%lld, SFF=%lld ULCP=%lld DLCP=%lld FrameOffset=%lld", 0, *(v5 + 3), *(v5 + 4), *&v6, *(v5 + 6), *(v5 + 11), *(v5 + 12), *v5, *(v5 + 1), *(v5 + 2)], v7 = *(v5 + 6) * 0.5, *(v5 + 5) + v7 <= 960.0))
  {
    [WCM_Logging logLevel:0 message:@"FCharging RRC state connected subid:%d -  [%d - frequency %lf, bandwidth %lf] ", 0, *(v5 + 5), *&v7];
    [WCM_Logging logLevel:0 message:@"FCharging Low band detected"];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(&self->_cellularInstance1.ulBandwidth + 4);
  if (v9 > 0.0)
  {
    [WCM_Logging logLevel:5 message:@"FCharging :- SUB%ld: Network Config UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf)  TDD ULDLConfig=%lld, SFF=%lld ULCP=%lld DLCP=%lld FrameOffset=%lld", 1, *(&self->_cellularInstance1.frameOffset + 4), *(&self->_cellularInstance1.ulCenterFreq + 4), *&v9, *(&self->_cellularInstance1.dlCenterFreq + 4), *(&self->_cellularInstance1.dlBandwidth2 + 4), *(&self->_cellularInstance1.tddULDLConfig + 4), *(&self->_cellularInstance0.cellBandInfo + 1), *(&self->_cellularInstance1.ulCPConfig + 4), *(&self->_cellularInstance1.dlCPConfig + 4)];
    v10 = *(&self->_cellularInstance1.dlCenterFreq + 4) * 0.5;
    if (*(&self->_cellularInstance1.ulBandwidth + 4) + v10 <= 960.0)
    {
      [WCM_Logging logLevel:0 message:@"FCharging RRC state connected subid:%d -  [%lf - frequency %lf, bandwidth %lf] ", &index, *(&self->_cellularInstance1.ulBandwidth + 4), *&v10];
      [WCM_Logging logLevel:0 message:@"FCharging Low band detected"];
      v11 = &self->_sensorInfo.usecase[2];
      self->_sensorInfo.usecase[2] = 1;
      goto LABEL_15;
    }
  }

  v11 = &self->_sensorInfo.usecase[2];
  self->_sensorInfo.usecase[2] = 1;
  if (v8)
  {
LABEL_15:
    v13 = @"FChargingCADebug_ FCharging connected in low band";
    goto LABEL_16;
  }

  v12 = v6 > 0.0 || !v3;
  if (v12 || v9 > 0.0)
  {
    goto LABEL_17;
  }

  v13 = @"FChargingCADebug_ FCharging Not attached but Low band detected in frequenies";
LABEL_16:
  [WCM_Logging logLevel:3 message:v13];
  *v11 = 0;
  self->_lteCDRXWiFiTDD = 1;
LABEL_17:
  [WCM_Logging logLevel:0 message:@"FCharging Call API to decide to start timer and set the charger value %d", *v11];

  [(WCM_CellularController *)self fastChargingStateChangeHandler];
}

- (void)fastChargingHystersisTimerHandler:(id)a3
{
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"FChargingCADebug_ FCharging:fastChargingHystersisTimerHandler - Expired %@", +[NSThread currentThread]);
  [(WCM_CellularController *)self setFastChargingHystersisTimer:0];
  v4 = self->_sensorInfo.usecase[2];

  [(WCM_CellularController *)self IOKIT_FastCharging_Iface_call:v4];
}

- (void)baseBandProtectionTimerHandler:(id)a3
{
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"FCharging - baseBandProtectionTimerHandler - Expired Thread Id %@", +[NSThread currentThread]);
  [(WCM_CellularController *)self setBaseBandEnabledProtectionTimer:0];

  [(WCM_CellularController *)self fastChargingStateChangeHandler];
}

- (void)sacExtractDesenseFreq:(id)a3 message:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      count = xpc_array_get_count(a4);
      if (count >= 1)
      {
        v7 = count;
        for (i = 0; i != v7; ++i)
        {
          value = xpc_array_get_value(a4, i);
          uint64 = xpc_dictionary_get_uint64(value, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq");
          int64 = xpc_dictionary_get_int64(value, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth");
          [WCM_Logging logLevel:3 message:@"   SAC Index %d - frequency %lld - bandwidth %lld ", i, uint64, int64];
          v12 = [[FreqRangeInfo alloc] initWithFreq:uint64 Bw:int64];
          [a3 addObject:v12];
        }
      }
    }
  }
}

- (void)sacHandleDesenseNetworkConfig:(id)a3
{
  v5 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  uint64 = xpc_dictionary_get_uint64(a3, "kSubId");
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v8 = [v5 isTestMode];
  if (v8)
  {
LABEL_9:
    if ([v5 isTestMode])
    {
      v9 = @" SAC Manager is in FrequencyTool Test mode, ignoring desense network config message";
LABEL_12:

      [WCM_Logging logLevel:3 message:v9];
      return;
    }

LABEL_11:
    v9 = @" SAC Manager is not enabled, ignoring desense network config message";
    goto LABEL_12;
  }

  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (!value)
  {
    v9 = @"SAC - nwConfig is NULL return";
    goto LABEL_12;
  }

  v11 = value;
  [WCM_Logging logLevel:3 message:@"SAC - total count is %d", xpc_dictionary_get_count(value)];
  v12 = xpc_dictionary_get_value(v11, "kWCMCellular_DesenseFreqReport_UplinkFrequency");
  if (v12)
  {
    v13 = @"SAC kWCMCellular_DesenseFreqReport_UplinkFrequency found, set subId=%d to active";
  }

  else
  {
    v13 = @"SAC kWCMCellular_DesenseFreqReport_UplinkFrequency is NULL, set subId=%d to inactive";
  }

  [v5 sacSetCellularSubActiveState:v12 != 0 onSubId:uint64];
  [WCM_Logging logLevel:3 message:v13, uint64];
  v14 = xpc_dictionary_get_value(v11, "kWCMCellular_DesenseFreqReport_DownlinkFrequency");
  if (v14)
  {
    v15 = v14;
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_DownlinkFrequency - total count is %d", xpc_array_get_count(v14)];
    v16 = objc_alloc_init(NSMutableArray);
    [(WCM_CellularController *)self sacExtractDesenseFreq:v16 message:v15];
    [v5 sacUpdateCellularDownlinkFreqInfo:v16 onSubId:uint64];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_DownlinkFrequency is NULL"];
  }

  v17 = xpc_dictionary_get_value(v11, "kWCMCellular_DesenseFreqReport_SearchFrequency");
  if (v17)
  {
    v18 = v17;
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_SearchFrequency - total count is %d", xpc_array_get_count(v17)];
    v19 = objc_alloc_init(NSMutableArray);
    [(WCM_CellularController *)self sacExtractDesenseFreq:v19 message:v18];
    [v5 sacUpdateCellularSearchFreqInfo:v19 onSubId:uint64];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_SearchFrequency is NULL"];
  }

  v20 = xpc_dictionary_get_value(v11, "kWCMCellular_DesenseFreqReport_HoppingFrequency");
  if (v20)
  {
    v21 = v20;
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_HoppingFrequency - total count is %d", xpc_array_get_count(v20)];
    v22 = objc_alloc_init(NSMutableArray);
    [(WCM_CellularController *)self sacExtractDesenseFreq:v22 message:v21];
    [v5 sacUpdateCellularHoppingFreqInfo:v22 onSubId:uint64];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_HoppingFrequency is NULL"];
  }

  v23 = xpc_dictionary_get_value(v11, "kWCMCellular_DesenseFreqReport_NeighborFrequency");
  if (v23)
  {
    v24 = v23;
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_NeighborFrequency - total count is %d", xpc_array_get_count(v23)];
    v25 = objc_alloc_init(NSMutableArray);
    [(WCM_CellularController *)self sacExtractDesenseFreq:v25 message:v24];
    [v5 sacUpdateCellularNeighborFreqInfo:v25 onSubId:uint64];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_NeighborFrequency  is NULL"];
  }

  v26 = xpc_dictionary_get_value(v11, "kWCMCellular_DesenseFreqReport_RplmnFrequency");
  if (v26)
  {
    v27 = v26;
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_RplmnFrequency - total count is %d", xpc_array_get_count(v26)];
    v28 = objc_alloc_init(NSMutableArray);
    [(WCM_CellularController *)self sacExtractDesenseFreq:v28 message:v27];
    [v5 sacUpdateCellularRPLMNFreqInfo:v28 onSubId:uint64];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_RplmnFrequency  is NULL"];
  }

  [v5 sacReportCellularVictimFreqListOnTargetSac:1 action:1];
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {

    [v5 sacReportCellularVictimFreqListOnTargetSac:2 action:1];
  }
}

- (void)handleDesenseNetworkConfig:(id)a3
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C1F68;
    block[3] = &unk_10023DC80;
    block[4] = self;
    block[5] = a3;
    dispatch_async([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")], block);
  }

  if (![objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v13 = @" FCharging controller not enabled ignoring config message";
LABEL_12:
    [WCM_Logging logLevel:3 message:v13];
    return;
  }

  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (!value)
  {
    v13 = @"FCharging - nwConfig is NULL return";
    goto LABEL_12;
  }

  v6 = value;
  v50 = self;
  [WCM_Logging logLevel:3 message:@"FCharging - total count is %ld", xpc_dictionary_get_count(value)];
  v7 = xpc_dictionary_get_value(v6, "kWCMCellular_DesenseFreqReport_UplinkFrequency");
  if (v7)
  {
    v8 = v7;
    count = xpc_array_get_count(v7);
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_UplinkFrequency - total count is %ld", count];
    if (count >= 1)
    {
      v10 = count + 1;
      do
      {
        v11 = xpc_array_get_value(v8, v10 - 2);
        uint64 = xpc_dictionary_get_uint64(v11, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq");
        [WCM_Logging logLevel:3 message:@"FCharging Index %ld - frequency %lld - bandwidth %lld ", v10 - 2, uint64, xpc_dictionary_get_int64(v11, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth")];
        --v10;
      }

      while (v10 > 1);
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_UplinkFrequency - nwConfig is NULL"];
  }

  v14 = xpc_dictionary_get_value(v6, "kWCMCellular_DesenseFreqReport_SearchFrequency");
  if (v14)
  {
    v15 = v14;
    v16 = xpc_array_get_count(v14);
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_SearchFrequency - total count is %ld", v16];
    if (v16 >= 1)
    {
      v17 = 0;
      v18 = v16 + 1;
      do
      {
        v19 = xpc_array_get_value(v15, v18 - 2);
        v20 = xpc_dictionary_get_uint64(v19, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq");
        int64 = xpc_dictionary_get_int64(v19, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth");
        [WCM_Logging logLevel:3 message:@"FCharging Index %ld - frequency %lld - bandwidth %lld ", v18 - 2, v20, int64];
        if (v20 / 1000000.0 + int64 / 1000000.0 * 0.5 <= 960.0)
        {
          [WCM_Logging logLevel:0 message:@"FCharging Low band Index %ld - frequency %lld - bandwidth %lld ", v18 - 2, v20, int64];
          [WCM_Logging logLevel:0 message:@"FCharging Low band detected"];
          v17 = 1;
        }

        --v18;
      }

      while (v18 > 1);
      goto LABEL_23;
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_SearchFrequency - nwConfig is NULL"];
  }

  v17 = 0;
LABEL_23:
  v22 = xpc_dictionary_get_value(v6, "kWCMCellular_DesenseFreqReport_HoppingFrequency");
  if (v22)
  {
    v23 = v22;
    v24 = xpc_array_get_count(v22);
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_HoppingFrequency - total count is %ld", v24];
    if (v24 >= 1)
    {
      v25 = v24 + 1;
      do
      {
        v26 = xpc_array_get_value(v23, v25 - 2);
        v27 = xpc_dictionary_get_uint64(v26, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq");
        v28 = xpc_dictionary_get_int64(v26, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth");
        [WCM_Logging logLevel:3 message:@"FCharging %ld - frequency %lld - bandwidth %lld ", v25 - 2, v27, v28];
        if (v27 / 1000000.0 + v28 / 1000000.0 * 0.5 <= 960.0)
        {
          [WCM_Logging logLevel:0 message:@"FCharging Low band Index %ld - frequency %lld - bandwidth %lld ", v25 - 2, v27, v28];
          [WCM_Logging logLevel:0 message:@"FCharging Low band detected"];
          v17 = 1;
        }

        --v25;
      }

      while (v25 > 1);
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_HoppingFrequency - nwConfig is NULL"];
  }

  v29 = xpc_dictionary_get_value(v6, "kWCMCellular_DesenseFreqReport_NeighborFrequency");
  if (v29)
  {
    v30 = v29;
    v31 = xpc_array_get_count(v29);
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_NeighborFrequency - total count is %ld", v31];
    if (v31 >= 1)
    {
      v32 = v31 + 1;
      do
      {
        v33 = xpc_array_get_value(v30, v32 - 2);
        v34 = xpc_dictionary_get_uint64(v33, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq");
        v35 = xpc_dictionary_get_int64(v33, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth");
        [WCM_Logging logLevel:3 message:@"FCharging Index %ld - frequency %lld - bandwidth %lld ", v32 - 2, v34, v35];
        if (v34 / 1000000.0 + v35 / 1000000.0 * 0.5 <= 960.0)
        {
          [WCM_Logging logLevel:0 message:@"FCharging Low band Index %ld - frequency %lld - bandwidth %lld ", v32 - 2, v34, v35];
          [WCM_Logging logLevel:0 message:@"FCharging Low band detected"];
          v17 = 1;
        }

        --v32;
      }

      while (v32 > 1);
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_NeighborFrequency - nwConfig is NULL"];
  }

  v36 = xpc_dictionary_get_value(v6, "kWCMCellular_DesenseFreqReport_RplmnFrequency");
  if (v36)
  {
    v37 = v36;
    v38 = xpc_array_get_count(v36);
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_RplmnFrequency - total count is %ld", v38];
    if (v38 >= 1)
    {
      v39 = v38 + 1;
      do
      {
        v40 = xpc_array_get_value(v37, v39 - 2);
        v41 = xpc_dictionary_get_uint64(v40, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq");
        v42 = xpc_dictionary_get_int64(v40, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth");
        [WCM_Logging logLevel:3 message:@"FCharging Index %ld - frequency %lld - bandwidth %lld ", v39 - 2, v41, v42];
        if (v41 / 1000000.0 + v42 / 1000000.0 * 0.5 <= 960.0)
        {
          [WCM_Logging logLevel:0 message:@"FCharging Low band Index %ld - frequency %lld - bandwidth %lld ", v39 - 2, v41, v42];
          [WCM_Logging logLevel:0 message:@"FCharging Low band detected"];
          v17 = 1;
        }

        --v39;
      }

      while (v39 > 1);
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_RplmnFrequency - nwConfig is NULL"];
  }

  v43 = xpc_dictionary_get_value(v6, "kWCMCellular_DesenseFreqReport_DownlinkFrequency");
  if (v43)
  {
    v44 = v43;
    v45 = xpc_array_get_count(v43);
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_DownlinkFrequency - total count is %ld", v45];
    if (v45 >= 1)
    {
      v46 = v45 + 1;
      do
      {
        v47 = xpc_array_get_value(v44, v46 - 2);
        v48 = xpc_dictionary_get_uint64(v47, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq");
        v49 = xpc_dictionary_get_int64(v47, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth");
        [WCM_Logging logLevel:3 message:@"FCharging Index %ld - frequency %lld - bandwidth %lld ", v46 - 2, v48, v49];
        [WCM_Logging logLevel:3 message:@"FCharging Frequency Upper bound  %lf ", v48 / 1000000.0 + v49 / 1000000.0 * 0.5];
        if (v48 / 1000000.0 + v49 / 1000000.0 * 0.5 <= 960.0)
        {
          [WCM_Logging logLevel:0 message:@"FCharging Low band Index %ld - frequency %lld - bandwidth %lld ", v46 - 2, v48, v49];
          [WCM_Logging logLevel:0 message:@"FCharging Low band detected"];
          v17 = 1;
        }

        --v46;
      }

      while (v46 > 1);
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_DownlinkFrequency - nwConfig is NULL"];
  }

  v50->_sensorInfo.usecase[4] = v17 & 1;
  [(WCM_CellularController *)v50 fastChargingHandler:?];
}

- (void)handleNetworkConfig:(id)a3
{
  [WCM_Logging logLevel:3 message:@"WCM_CellularController handleNetworkConfig message %@", a3];
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [(WCM_CellularController *)self handleNetworkConfig_bb20:a3];
  }

  else
  {
    [(WCM_CellularController *)self handleNetworkConfig_legacy:a3];
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:3 message:@" FCharging handleNetworkConfig Message recieved. low band in report %d", self->_sensorInfo.usecase[4]];
    v5 = self->_sensorInfo.usecase[4];

    [(WCM_CellularController *)self fastChargingHandler:v5];
  }
}

- (void)handleNetworkConfig_legacy:(id)a3
{
  [WCM_Logging logLevel:3 message:@"handleNetworkConfig_legacy"];
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (!value)
  {
    return;
  }

  v6 = value;
  v107 = +[WCM_PolicyManager singleton];
  v7 = &self->super.mProcessId + 1;
  if ([(WCM_CellularController *)self activeSubId])
  {
    v7 = (&self->_cellularInstance0.cellBandInfo + 1);
  }

  v8 = *(v7 + 3);
  v9 = *(v7 + 5);
  v101 = *(v7 + 4);
  v102 = *(v7 + 6);
  v11 = *(v7 + 7);
  v10 = *(v7 + 8);
  v12 = *(v7 + 9);
  v99 = v10;
  v100 = *(v7 + 10);
  v13 = [(WCM_CellularController *)self activeSubId];
  v97 = *(v7 + 11);
  v98 = v13;
  uint64 = xpc_dictionary_get_uint64(a3, "kSubId");
  if (!xpc_dictionary_get_count(v6))
  {
    [WCM_Logging logLevel:3 message:@"SUB%llu: goes out of interested frequency bands", uint64];
  }

  v15 = &self->super.mProcessId + 1;
  if (uint64)
  {
    v15 = (&self->_cellularInstance0.cellBandInfo + 1);
  }

  *(v15 + 12) = 0;
  *(v15 + 1) = 0u;
  *(v15 + 5) = 0u;
  *(v15 + 4) = 0u;
  v113 = (v15 + 16);
  *(v15 + 3) = 0u;
  *(v15 + 2) = 0u;
  *(v15 + 3) = xpc_dictionary_get_int64(v6, "kWCMCellularNetworkConfiguration_ULBandInfo_CenterFreq");
  v114 = (v15 + 6);
  *(v15 + 4) = xpc_dictionary_get_double(v6, "kWCMCellularNetworkConfiguration_ULBandInfo_BandWidth");
  *(v15 + 5) = xpc_dictionary_get_int64(v6, "kWCMCellularNetworkConfiguration_DLBandInfo_CenterFreq");
  *(v15 + 6) = xpc_dictionary_get_double(v6, "kWCMCellularNetworkConfiguration_DLBandInfo_BandWidth");
  *(v15 + 11) = xpc_dictionary_get_int64(v6, "kWCMCellularNetworkConfiguration_TTDUL_DL");
  *(v15 + 12) = xpc_dictionary_get_int64(v6, "kWCMCellularNetworkConfiguration_SubFrameFormat");
  *(v15 + 2) = xpc_dictionary_get_int64(v6, "kWCMCellularNetworkConfiguration_FrameOffset");
  v112 = (v15 + 10);
  *(v15 + 52) = 0;
  v16 = +[WRM_MetricsService getSingleton];
  v17 = v16;
  if (v16)
  {
    [v16 initLTECoexMetrics];
  }

  v18 = [v17 getLTECoexMetrics];
  v106 = v18;
  if (v18)
  {
    v18[20] = 0;
    *(v18 + 24) = 0u;
    *(v18 + 40) = 0u;
  }

  v104 = (v18 + 20);
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    *(v15 + 306) = 1;
    v19 = *(v15 + 10);
    *(v15 + 9) = *(v15 + 6);
    *(v15 + 10) = v19;
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"ULCA handleNetworkConfig-1-ULCA critical bitmap %llu", [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")]);
    if (*(v15 + 5) != 0.0)
    {
      [WCM_Logging logLevel:2 message:@"SUB%llu:  ULCA Logging -  case kWCMCellularNetworkConfiguration_ULBandInfo_CenterFreq UL-(freq=%lf bw=%lf)  DL(freq=%lf, bw=%lf) ", uint64, *(v15 + 18), *(v15 + 19), *(v15 + 20), *(v15 + 21)];
    }
  }

  else
  {
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"ULCA handleNetworkConfig-2-ULCA critical bitmap %llu", [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")], v85, v88, v90, v92);
  }

  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1000C2D68;
  applier[3] = &unk_100241418;
  applier[4] = uint64;
  applier[5] = v15;
  xpc_dictionary_apply(v6, applier);
  v20 = xpc_dictionary_get_value(v6, "kWCMCellularNetworkConfiguration_LTEBandInformationSet");
  v108 = uint64;
  v109 = self;
  v103 = &self->super.mProcessId + 1;
  xdict = v6;
  if (v20)
  {
    v21 = v20;
    v22 = 1;
    goto LABEL_30;
  }

  v23 = xpc_dictionary_get_value(v6, "kWCMCellularNetworkConfiguration_TDSCDMABandInformationSet");
  if (v23)
  {
    v21 = v23;
    v22 = 2;
    goto LABEL_30;
  }

  v24 = xpc_dictionary_get_value(v6, "kWCMCellularNetworkConfiguration_GSMBandInformationSet");
  if (v24)
  {
    v21 = v24;
    v22 = 4;
    goto LABEL_30;
  }

  v25 = xpc_dictionary_get_value(v6, "kWCMCellularNetworkConfiguration_ONEXBandInformationSet");
  if (v25)
  {
    v21 = v25;
    v22 = 8;
    goto LABEL_30;
  }

  v26 = xpc_dictionary_get_value(v6, "kWCMCellularNetworkConfiguration_HDRBandInformationSet");
  if (v26)
  {
    v21 = v26;
    v22 = 16;
    goto LABEL_30;
  }

  v27 = xpc_dictionary_get_value(v6, "kWCMCellularNetworkConfiguration_WCDMABandInformationSet");
  if (v27)
  {
    v21 = v27;
    v22 = 32;
    goto LABEL_30;
  }

  v28 = xpc_dictionary_get_value(v6, "kWCMCellularNetworkConfiguration_NGCBandInformationSet");
  if (v28)
  {
    v21 = v28;
    v22 = 64;
LABEL_30:
    v15[32] = v22;
    count = xpc_array_get_count(v21);
    if (count >= 1)
    {
      v30 = 0;
      v31 = 0;
      v111 = 0;
      v32 = 0;
      v110 = v15 + 36;
      v33 = count + 1;
      while (1)
      {
        v34 = xpc_array_get_value(v21, v33 - 2);
        if (!v34)
        {
          goto LABEL_54;
        }

        v35 = v34;
        v36 = xpc_dictionary_get_uint64(v34, "kWCMCellularNetworkConfiguration_BandInfoSet_DirectionMask");
        int64 = xpc_dictionary_get_int64(v35, "kWCMCellularNetworkConfiguration_BandInfoSet_CenterFreq");
        v38 = xpc_dictionary_get_double(v35, "kWCMCellularNetworkConfiguration_BandInfoSet_Bandwidth");
        v39 = v38;
        v40 = "unknown";
        if (v36 == 2)
        {
          v40 = "downlink";
        }

        if (v36 == 1)
        {
          v40 = "uplink";
        }

        [WCM_Logging logLevel:5 message:@"directionMask(%lld:%s) centerFreq(%lld) bandwidth(%lf)", v36, v40, int64, *&v38];
        if (int64 < 1)
        {
          goto LABEL_54;
        }

        if (v36 == 1)
        {
          break;
        }

        if (v36 != 2)
        {
          goto LABEL_54;
        }

        v46 = int64 / 1000.0;
        v47 = v39 / 1000000.0;
        v48 = (v15 + 10);
        if (v111)
        {
          v48 = (v15 + 18);
        }

        v49 = (v15 + 20);
        if ((v111 & 1) == 0)
        {
          v49 = (v15 + 12);
        }

        *v48 = v46;
        *v49 = v47;
        if (![objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
        {
          v111 = 1;
LABEL_54:
          v52 = v31;
          goto LABEL_55;
        }

        v50 = &v110[18 * v31];
        *(v50 + 2) = v46;
        *(v50 + 3) = v47;
        v51 = &v110[18 * v30];
        v52 = (v31 + 1);
        *v51 = 0;
        *(v51 + 1) = 0;
        v111 = 1;
        v30 = v31;
LABEL_55:
        --v33;
        v31 = v52;
        if (v33 <= 1)
        {
          goto LABEL_59;
        }
      }

      v41 = int64 / 1000.0;
      v42 = v39 / 1000000.0;
      v43 = (v15 + 6);
      if (v32)
      {
        v43 = (v15 + 14);
      }

      v44 = (v15 + 16);
      if ((v32 & 1) == 0)
      {
        v44 = (v15 + 8);
      }

      *v43 = v41;
      *v44 = v42;
      if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
      {
        v45 = &v110[18 * v30];
        *v45 = v41;
        v45[1] = v42;
        ++v30;
      }

      v32 = 1;
      goto LABEL_54;
    }

    goto LABEL_58;
  }

  v15[32] = 127;
  [WCM_Logging logLevel:4 message:@"SUB%llu: unknown band info set", uint64];
LABEL_58:
  LODWORD(v52) = 0;
LABEL_59:
  if (*(v15 + 104) == 1)
  {
    v53 = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_ULCPConfig");
    v54 = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_DLCPConfig");
    v56 = v108;
    v55 = v109;
    p_cache = (AntBlockPowerLimitPolicyClient + 16);
    if (*v114 != 0.0)
    {
      v58 = v54;
      [WCM_Logging logLevel:5 message:@"SUB%llu: RRC-connected cell notification ULCP(%lld -> %lld) DLCP(%lld -> %lld)", *v114, v108, *v15, v53, *(v15 + 1), v54];
      if (v53 != 255)
      {
        *v15 = v53;
      }

      if (v58 != 255)
      {
        *(v15 + 1) = v58;
      }
    }
  }

  else
  {
    *v15 = 0;
    *(v15 + 1) = 0;
    v56 = v108;
    v55 = v109;
    p_cache = AntBlockPowerLimitPolicyClient.cache;
  }

  v59 = *(v15 + 3);
  v60 = *(v15 + 4);
  *(v15 + 338) = v59;
  *(v15 + 339) = v60;
  v61 = *(v15 + 5);
  v62 = *(v15 + 6);
  *(v15 + 340) = v61;
  *(v15 + 341) = v62;
  [WCM_Logging logLevel:5 message:@"SUB%llu: Network Config UL(freq=%lf bw=%lf) UL2(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf) DL2(freq=%lf bw=%lf) TDD ULDLConfig=%lld, SFF=%lld ULCP=%lld DLCP=%lld FrameOffset=%lld", v56, v59, v60, *(v15 + 7), *(v15 + 8), v61, v62, *(v15 + 9), *(v15 + 10), *(v15 + 11), *(v15 + 12), *v15, *(v15 + 1), *(v15 + 2)];
  v63 = v15 + 36;
  if ([objc_msgSend(objc_msgSend(p_cache + 273 "singleton")])
  {
    v15[612] = v52;
    v15[613] = 0;
    *(v15 + 2692) = 0;
    v64 = *(v15 + 10);
    *(v15 + 9) = *(v15 + 6);
    *(v15 + 10) = v64;
    v65 = *(v15 + 7);
    if (v65 != 0.0)
    {
      v66 = *v113;
      if (*v113 != 0.0)
      {
        *(v15 + 58) = *(v15 + 18);
        *(v15 + 27) = v65;
        *(v15 + 28) = v66;
      }
    }

    [WCM_Logging logLevel:4 message:@"-------- ULCA Logging   ----------"];
    [WCM_Logging logLevel:4 message:@"-------- ULCA Config   ----------"];
    [WCM_Logging logLevel:4 message:@"Total valid entries =%d", v15[612]];
    if (v15[612])
    {
      v67 = 0;
      v68 = v15 + 42;
      do
      {
        [WCM_Logging logLevel:4 message:@"Entry index %zu ..UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf)", v67++, *(v68 - 3), *(v68 - 2), *(v68 - 1), *v68];
        v68 += 9;
      }

      while (v67 < v15[612]);
    }

    v69 = *v114;
    if (*v114 <= 0.0)
    {
      [(WCM_CellularController *)v55 setActiveConfig:v103, v69];
      v70 = 0;
    }

    else
    {
      [(WCM_CellularController *)v55 setActiveConfig:v15, v69];
      v70 = v56;
    }

    [(WCM_CellularController *)v55 setActiveSubId:v70];
    [v107 evaluateULCARestrictions];
    v75 = &v63[18 * v15[613]];
    v77 = *v75;
    v76 = v75[1];
    *(v15 + 10) = v76;
    *(v15 + 6) = v77;
    if (v106)
    {
      if (v15[612] >= 2)
      {
        v78 = *(v15 + 2692);
        *v104 = v78;
        v79 = (v104 + 4);
        v117.val[1] = vmovn_s64(vcvtq_u64_f64(*(v15 + 10)));
        v117.val[0] = vmovn_s64(vcvtq_u64_f64(*(v15 + 9)));
        vst2_f32(v79, v117);
        if (v78 == 1)
        {
          v116.val[0] = vmovn_s64(vcvtq_u64_f64(v77));
          v116.val[1] = vmovn_s64(vcvtq_u64_f64(v76));
          v80 = (v104 + 20);
          vst2_f32(v80, v116);
        }
      }

      if ([objc_msgSend(objc_msgSend(p_cache + 273 "singleton")])
      {
        LODWORD(v86) = *(v104 + 8);
        [v107 wRMCACoexSubmit_ULCACoexStates:*v104 ULCAPrimaryCarrierULFreq:*(v104 + 1) ULCAPrimaryCarrierDLFreq:*(v104 + 2) ULCAPrimaryCarrierULBW:*(v104 + 3) ULCAPrimaryCarrierDLBW:*(v104 + 4) ULCACriticalCarrierULFreq:*(v104 + 5) ULCACriticalCarrierDLFreq:*(v104 + 3) ULCACriticalCarrierULBW:v86 ULCACriticalCarrierDLBW:?];
      }
    }

    [WCM_Logging logLevel:4 message:@"-------- ULCA After coex valuation   ----------"];
    [WCM_Logging logLevel:4 message:@"-------- ULCA After coex valuation   ----------"];
    [WCM_Logging logLevel:4 message:@"Critical carrier =%d", v15[613]];
    v81 = &v63[18 * v15[613]];
    [WCM_Logging logLevel:4 message:@"Critical Carrier UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf)", *v81, *(v81 + 1), *(v81 + 2), *(v81 + 3)];
    [WCM_Logging logLevel:5 message:@"ULCA Final Frequencies for COEX consideration :- SUB%llu: Network Config UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf)  TDD ULDLConfig=%lld, SFF=%lld ULCP=%lld DLCP=%lld FrameOffset=%lld", v56, *(v15 + 3), *(v15 + 4), *(v15 + 5), *(v15 + 6), *(v15 + 11), *(v15 + 12), *v15, *(v15 + 1), *(v15 + 2)];
    [WCM_Logging logLevel:4 message:@"-------- ULCA Logging END  ----------"];
    [objc_msgSend(p_cache + 273 "singleton")];
    [objc_msgSend(p_cache + 273 "singleton")];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"ULCA handleNetworkConfig-3-ULCA critical bitmap %llu", [objc_msgSend(p_cache + 273 "singleton")], v87, v89, v91, v93, v94, v95, v96);
  }

  else
  {
    v71 = &v63[18 * v15[613]];
    v72 = &v63[18 * v15[614]];
    v73 = *(v15 + 10);
    *(v71 + 1) = v73;
    *(v72 + 1) = v73;
    v74 = *(v15 + 6);
    *v71 = v74;
    *v72 = v74;
    [WCM_Logging logLevel:4 message:@"Non-ULCA devices: Expected all to be PCC: Cell Victim Critical Carrier UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf), WiFi Victim Critical Carrier UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf)", *v71, *(v71 + 1), *(v71 + 2), *(v71 + 3), v74, v73];
  }

  if (*v112 == 0.0 || v9 != 0.0 && *v112 != v9)
  {
    *(v15 + 14) = 0;
    *(v15 + 15) = 0;
  }

  v82 = *v114;
  if (*v114 != 0.0)
  {
    v83 = *(v15 + 4);
    *(v15 + 14) = v82;
    *(v15 + 15) = v83;
    [(WCM_CellularController *)v55 setActiveConfig:v15];
    [(WCM_CellularController *)v55 setActiveSubId:v56];
  }

  if ([objc_msgSend(objc_msgSend(p_cache + 273 singleton] && (objc_msgSend(objc_msgSend(objc_msgSend(p_cache + 273, "singleton"), "activeCoexFeatures"), "containsObject:", @"EnableULCA") & 1) == 0)
  {
    if (v9 == *v112 && v8 == *v114 && v12 == *(v15 + 9) && v11 == *(v15 + 7) && v102 == *(v15 + 6) && v101 == *(v15 + 4) && v100 == *(v15 + 10) && v99 == *v113 && v98 == [(WCM_CellularController *)v55 activeSubId:*v113]&& v97 == *(v15 + 11))
    {
      [WCM_Logging logLevel:2 message:@"NW Config Parameters are the same, hence ignoring the network config command"];
      return;
    }

    [WCM_Logging logLevel:2 message:@"NW Config Parameters are NOT the same, hence handling the network config command"];
  }

  if ([objc_msgSend(objc_msgSend(p_cache + 273 "singleton")])
  {
    v84 = [(WCM_CellularController *)v55 clkAlgnTDDFreqCheck];
    *(v15 + 105) = v84;
    [WCM_Logging logLevel:4 message:@"clkAlgnTDDFreqCheck: After sorting over all cells, setting cellularConfig->btClkAlgnFlag = %d", v84];
  }

  [objc_msgSend(p_cache + 273 "singleton")];
}

- (void)handleTxPower:(id)a3
{
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value)
  {
    v4 = value;
    int64 = xpc_dictionary_get_int64(value, "kWCMCellularTxPower_Level");
    [WCM_Logging logLevel:4 message:@"Tx Power level(%lld) response(%lld)", int64, xpc_dictionary_get_int64(v4, "kWCMCellularTxPower_Response")];
  }
}

- (void)handleThresholdEvent:(id)a3
{
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value)
  {
    v5 = value;
    int64 = xpc_dictionary_get_int64(value, "kWCMCellularThresholdReached_EventType");
    [WCM_Logging logLevel:4 message:@"Threshold Event type(%lld) data(%lld)", int64, xpc_dictionary_get_int64(v5, "kWCMCellularThresholdReached_EventData")];
    if (int64 == 1)
    {
      [WCM_Logging logLevel:3 message:@"Reset frame denial related parameters"];

      [(WCM_CellularController *)self setAllPolicies];
    }
  }
}

- (BOOL)isInCoexBand7LowerEdge
{
  v3 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [(WCM_CellularController *)self ulCenterFreq];
  if (v4 == 0.0 || ([(WCM_CellularController *)self ulBandwidth], v5 == 0.0))
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    [(WCM_CellularController *)self ulCenterFreq];
    v7 = v6;
    [(WCM_CellularController *)self ulBandwidth];
    v9 = v8;
    [(WCM_CellularController *)self dlCenterFreq];
    v11 = v10;
    [(WCM_CellularController *)self dlBandwidth];
    v13 = [v3 isBand7CoexActiveForULFreq:v7 ulBW:v9 dlFreq:v11 dlBW:v12];
    if (v13)
    {
      [WCM_Logging logLevel:4 message:@"In CoexBand7LowerEdge"];
      LOBYTE(v13) = 1;
    }
  }

  return v13;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)getCombinedUplinkFreqRange
{
  [(WCM_CellularController *)self ulCenterFreq2];
  if (v3 == 0.0 || ([(WCM_CellularController *)self ulBandwidth2], v4 == 0.0))
  {
    [(WCM_CellularController *)self cachedULCenterFreq];
    v24 = v23;
    [(WCM_CellularController *)self cachedULBandwidth];
    v11 = v24 - v25 * 0.5;
    [(WCM_CellularController *)self cachedULCenterFreq];
    v27 = v26;
    [(WCM_CellularController *)self cachedULBandwidth];
    v29 = v27 + v28 * 0.5;
  }

  else
  {
    [(WCM_CellularController *)self cachedULCenterFreq];
    v6 = v5;
    [(WCM_CellularController *)self ulCenterFreq2];
    if (v6 >= v7)
    {
      [(WCM_CellularController *)self ulCenterFreq2];
      v31 = v30;
      [(WCM_CellularController *)self ulBandwidth2];
      v11 = v31 - v32 * 0.5;
      [(WCM_CellularController *)self ulCenterFreq2];
      v34 = v33;
      [(WCM_CellularController *)self ulBandwidth2];
      v15 = v34 + v35 * 0.5;
      [(WCM_CellularController *)self cachedULCenterFreq];
      v37 = v36;
      [(WCM_CellularController *)self cachedULBandwidth];
      v19 = v37 - v38 * 0.5;
      [(WCM_CellularController *)self cachedULCenterFreq];
      v21 = v39;
      [(WCM_CellularController *)self cachedULBandwidth];
    }

    else
    {
      [(WCM_CellularController *)self cachedULCenterFreq];
      v9 = v8;
      [(WCM_CellularController *)self cachedULBandwidth];
      v11 = v9 - v10 * 0.5;
      [(WCM_CellularController *)self cachedULCenterFreq];
      v13 = v12;
      [(WCM_CellularController *)self cachedULBandwidth];
      v15 = v13 + v14 * 0.5;
      [(WCM_CellularController *)self ulCenterFreq2];
      v17 = v16;
      [(WCM_CellularController *)self ulBandwidth2];
      v19 = v17 - v18 * 0.5;
      [(WCM_CellularController *)self ulCenterFreq2];
      v21 = v20;
      [(WCM_CellularController *)self ulBandwidth2];
    }

    v29 = v21 + v22 * 0.5;
    v40 = v19 - v15;
    if (v19 - v15 < 0.0)
    {
      v40 = -(v19 - v15);
    }

    if (v40 > 0.01)
    {
      [WCM_Logging logLevel:0 message:@"***********************************************************************************************"];
      [WCM_Logging logLevel:0 message:@"* PCC UL and SCC UL are not contiguous!!! However, go ahead by making a envelop frequency range"];
      [(WCM_CellularController *)self cachedULCenterFreq];
      v42 = v41;
      [(WCM_CellularController *)self cachedULBandwidth];
      [WCM_Logging logLevel:0 message:@"*   PCC: cachedULCenterFreq(%lf) cachedULBandwidth(%lf)", v42, v43];
      [(WCM_CellularController *)self ulCenterFreq2];
      v45 = v44;
      [(WCM_CellularController *)self ulBandwidth2];
      [WCM_Logging logLevel:0 message:@"*   SCC: ulCenterFreq2(%lf) ulBandwidth2(%lf)", v45, v46];
      [WCM_Logging logLevel:0 message:@"***********************************************************************************************"];
    }
  }

  v47 = v29 - v11;
  v48 = v11;
  result.var1 = v47;
  result.var0 = v48;
  return result;
}

- (void)setNetworkConfigOfInterest
{
  *keys = *&off_100241438;
  v60 = *&off_100241448;
  v61 = off_100241458;
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:3 message:@"Setting network config of interest to whole band"];
    values = xpc_int64_create(((452.5 + 3800.0) * 0.5));
    v54 = xpc_int64_create((3800.0 - 452.5));
    v55 = xpc_int64_create(((462.5 + 3800.0) * 0.5));
    v56 = xpc_int64_create((3800.0 - 462.5));
    v57 = xpc_int64_create(3);
    objects = xpc_dictionary_create(keys, &values, 5uLL);
    v3 = xpc_array_create(&objects, 1uLL);
    [(WCM_CellularController *)self sendMessage:1202 withArgs:v3];
    for (i = 0; i != 40; i += 8)
    {
      xpc_release(*(&values + i));
    }

    xpc_release(objects);
    v5 = v3;
LABEL_5:
    xpc_release(v5);
    return;
  }

  if (![objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      v6 = xpc_array_create(0, 0);
      values = xpc_int64_create(857);
      v54 = xpc_int64_create(115);
      v55 = xpc_int64_create(875);
      v56 = xpc_int64_create(169);
      v57 = xpc_int64_create(3);
      v58 = 0;
      v7 = xpc_dictionary_create(keys, &values, 5uLL);
      xpc_array_append_value(v6, v7);
      for (j = 0; j != 21; ++j)
      {
        v9 = byte_100199178[j];
        [WCM_Logging logLevel:3 message:@"Setting network config of interest to band-a %d", byte_100199178[j]];
        v10 = (&unk_100196CB0 + 40 * v9);
        v11 = v10[2];
        v12 = v10[3] - v11;
        objects = xpc_int64_create((v11 + v12 * 0.5));
        v48 = xpc_int64_create(v12);
        v13 = v10[1] - *v10;
        v49 = xpc_int64_create((*v10 + v13 * 0.5));
        v50 = xpc_int64_create(v13);
        v51 = xpc_int64_create(3);
        v52 = 0;
        v14 = xpc_dictionary_create(keys, &objects, 5uLL);
        xpc_array_append_value(v6, v14);
      }

      for (k = 0; k != 4; ++k)
      {
        v16 = aMno[k];
        [WCM_Logging logLevel:3 message:@"Setting network config of interest to band-b %d", aMno[k]];
        v17 = (&unk_100196030 + 40 * v16);
        v18 = v17[2];
        v19 = v17[3] - v18;
        objects = xpc_int64_create((v18 + v19 * 0.5));
        v48 = xpc_int64_create(v19);
        v20 = v17[1] - *v17;
        v49 = xpc_int64_create((*v17 + v20 * 0.5));
        v50 = xpc_int64_create(v20);
        v51 = xpc_int64_create(3);
        v52 = 0;
        v21 = xpc_dictionary_create(keys, &objects, 5uLL);
        xpc_array_append_value(v6, v21);
      }

      v22 = xpc_uint64_create(0);
      v23 = xpc_uint64_create(1uLL);
      [(WCM_CellularController *)self sendMessage:1202 withArgs:v6 withExtraKey:"kSubId" andExtraValue:v22];
      [(WCM_CellularController *)self sendMessage:1202 withArgs:v6 withExtraKey:"kSubId" andExtraValue:v23];
      [WCM_Logging logLevel:3 message:@"Setting network config of interest to band2 %d", xpc_array_get_count(v6)];
      if (xpc_array_get_count(v6))
      {
        v24 = 0;
        do
        {
          value = xpc_array_get_value(v6, v24);
          xpc_release(value);
          ++v24;
        }

        while (xpc_array_get_count(v6) > v24);
      }

      xpc_release(v6);
      xpc_release(v22);
      v5 = v23;
    }

    else
    {
      [WCM_Logging logLevel:3 message:@"Setting network config of interest to band 7"];
      v46[0] = xpc_int64_create(((2570.0 - 2500.0) * 0.5 + 2500.0));
      v46[1] = xpc_int64_create((2570.0 - 2500.0));
      v46[2] = xpc_int64_create(((2690.0 - 2620.0) * 0.5 + 2620.0));
      v46[3] = xpc_int64_create((2690.0 - 2620.0));
      v46[4] = xpc_int64_create(3);
      object = xpc_dictionary_create(keys, v46, 5uLL);
      v26 = xpc_array_create(&object, 1uLL);
      [WCM_Logging logLevel:3 message:@"Setting network config of interest to band 40"];
      values = xpc_int64_create(((2400.0 - 2300.0) * 0.5 + 2300.0));
      v54 = xpc_int64_create((2400.0 - 2300.0));
      v55 = xpc_int64_create(((2400.0 - 2300.0) * 0.5 + 2300.0));
      v56 = xpc_int64_create((2400.0 - 2300.0));
      v57 = xpc_int64_create(3);
      v58 = 0;
      v37 = xpc_dictionary_create(keys, &values, 5uLL);
      xpc_array_append_value(v26, v37);
      [WCM_Logging logLevel:3 message:@"Setting network config of interest to band 41A"];
      objects = xpc_int64_create(2522);
      v48 = xpc_int64_create(55);
      v49 = xpc_int64_create(2522);
      v50 = xpc_int64_create(55);
      v51 = xpc_int64_create(3);
      v52 = 0;
      v36 = xpc_dictionary_create(keys, &objects, 5uLL);
      xpc_array_append_value(v26, v36);
      v45[0] = xpc_int64_create(857);
      v45[1] = xpc_int64_create(115);
      v45[2] = xpc_int64_create(875);
      v45[3] = xpc_int64_create(169);
      v45[4] = xpc_int64_create(3);
      v45[5] = 0;
      v27 = xpc_dictionary_create(keys, v45, 5uLL);
      if (([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] & 1) != 0 || objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"AntennaSelectionV2Coex"))
      {
        [WCM_Logging logLevel:3 message:@"Setting network config of interest to combined range for band 5, 8, 18, 19, 20, 26, 27 and bc10"];
        xpc_array_append_value(v26, v27);
      }

      v35 = v27;
      v44[0] = xpc_int64_create(((1980.0 - 1920.0) * 0.5 + 1920.0));
      v44[1] = xpc_int64_create((1980.0 - 1920.0));
      v44[2] = xpc_int64_create(((2170.0 - 2110.0) * 0.5 + 2110.0));
      v44[3] = xpc_int64_create((2170.0 - 2110.0));
      v44[4] = xpc_int64_create(3);
      v44[5] = 0;
      v28 = xpc_dictionary_create(keys, v44, 5uLL);
      v43[0] = xpc_int64_create(((1785.0 - 1710.0) * 0.5 + 1710.0));
      v43[1] = xpc_int64_create((1785.0 - 1710.0));
      v43[2] = xpc_int64_create(((1880.0 - 1805.0) * 0.5 + 1805.0));
      v43[3] = xpc_int64_create((1880.0 - 1805.0));
      v43[4] = xpc_int64_create(3);
      v43[5] = 0;
      v29 = xpc_dictionary_create(keys, v43, 5uLL);
      v42[0] = xpc_int64_create(((1755.0 - 1710.0) * 0.5 + 1710.0));
      v42[1] = xpc_int64_create((1755.0 - 1710.0));
      v42[2] = xpc_int64_create(((2155.0 - 2110.0) * 0.5 + 2110.0));
      v42[3] = xpc_int64_create((2155.0 - 2110.0));
      v42[4] = xpc_int64_create(3);
      v42[5] = 0;
      v30 = xpc_dictionary_create(keys, v42, 5uLL);
      v41[0] = xpc_int64_create(((1915.0 - 1850.0) * 0.5 + 1850.0));
      v41[1] = xpc_int64_create((1915.0 - 1850.0));
      v41[2] = xpc_int64_create(((1995.0 - 1930.0) * 0.5 + 1930.0));
      v41[3] = xpc_int64_create((1995.0 - 1930.0));
      v41[4] = xpc_int64_create(3);
      v41[5] = 0;
      v31 = xpc_dictionary_create(keys, v41, 5uLL);
      v40[0] = xpc_int64_create(((2025.0 - 2010.0) * 0.5 + 2010.0));
      v40[1] = xpc_int64_create((2025.0 - 2010.0));
      v40[2] = xpc_int64_create(((2025.0 - 2010.0) * 0.5 + 2010.0));
      v40[3] = xpc_int64_create((2025.0 - 2010.0));
      v40[4] = xpc_int64_create(3);
      v40[5] = 0;
      v32 = xpc_dictionary_create(keys, v40, 5uLL);
      v39[0] = xpc_int64_create(((1920.0 - 1880.0) * 0.5 + 1880.0));
      v39[1] = xpc_int64_create((1920.0 - 1880.0));
      v39[2] = xpc_int64_create(((1920.0 - 1880.0) * 0.5 + 1880.0));
      v39[3] = xpc_int64_create((1920.0 - 1880.0));
      v39[4] = xpc_int64_create(3);
      v39[5] = 0;
      v33 = xpc_dictionary_create(keys, v39, 5uLL);
      if (([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] & 1) != 0 || (objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"AntennaSelectionV2Coex") & 1) != 0 || objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"WiFiOCLSupport"))
      {
        [WCM_Logging logLevel:3 message:@"Setting network config of interest to band 1, 3, 4, 25, 34"];
        xpc_array_append_value(v26, v28);
        xpc_array_append_value(v26, v29);
        xpc_array_append_value(v26, v30);
        xpc_array_append_value(v26, v31);
        xpc_array_append_value(v26, v32);
        xpc_array_append_value(v26, v33);
      }

      [(WCM_CellularController *)self sendMessage:1202 withArgs:v26];
      for (m = 0; m != 5; ++m)
      {
        xpc_release(v46[m]);
        xpc_release(*(&values + m * 8));
        xpc_release(*(&objects + m * 8));
        xpc_release(v45[m]);
        xpc_release(v44[m]);
        xpc_release(v43[m]);
        xpc_release(v42[m]);
        xpc_release(v41[m]);
        xpc_release(v40[m]);
        xpc_release(v39[m]);
      }

      xpc_release(object);
      xpc_release(v37);
      xpc_release(v36);
      xpc_release(v35);
      xpc_release(v28);
      xpc_release(v29);
      xpc_release(v30);
      xpc_release(v31);
      xpc_release(v32);
      xpc_release(v33);
      v5 = v26;
    }

    goto LABEL_5;
  }

  [WCM_Logging logLevel:3 message:@"Setting network config of interest to all bands"];
}

- (void)setEnhancedScanFrequencyTableWithBand:(id)a3 RATs:(id)a4 Frequency:(id)a5
{
  v7 = xpc_array_create(0, 0);
  *keys = *off_100241468;
  v29 = *off_100241478;
  v8 = [a3 count];
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    while (1)
    {
      v11 = [a5 objectAtIndex:v10];
      v12 = [a3 objectAtIndex:v10];
      v13 = [a4 objectAtIndex:v10];
      if ([v11 count] != 2)
      {
        break;
      }

      v14 = v7;
      v15 = [objc_msgSend(v11 objectAtIndex:{1), "integerValue"}];
      v16 = v15 - [objc_msgSend(v11 objectAtIndex:{0), "integerValue"}];
      v17 = [objc_msgSend(v11 objectAtIndex:{0), "integerValue"}] + (v16 >> 1);
      v18 = [v12 integerValue];
      v19 = [v13 integerValue];
      values[0] = xpc_int64_create(v17);
      v20 = v16;
      v7 = v14;
      values[1] = xpc_int64_create(v20);
      values[2] = xpc_uint64_create(v18);
      values[3] = xpc_uint64_create(v19);
      v21 = xpc_dictionary_create(keys, values, 4uLL);
      xpc_array_append_value(v14, v21);
      for (i = 0; i != 4; ++i)
      {
        xpc_release(values[i]);
      }

      xpc_release(v21);
      if (++v10 == v9)
      {
        goto LABEL_9;
      }
    }

    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 0, @"Invalid scan Freq len: %d", [v11 count]);
  }

LABEL_9:
  v23 = xpc_uint64_create(0);
  [(WCM_CellularController *)self sendMessage:1208 withArgs:v7 withExtraKey:"kSubId" andExtraValue:v23];
  xpc_release(v23);
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v24 = xpc_uint64_create(1uLL);
    [(WCM_CellularController *)self sendMessage:1208 withArgs:v7 withExtraKey:"kSubId" andExtraValue:v24];
    xpc_release(v24);
  }

  xpc_release(v7);
}

- (void)setScanFrequencyBandFilter:(id)a3
{
  v5 = xpc_array_create(0, 0);
  *keys = *off_100241488;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 count] != 2)
        {
          +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 0, @"Invalid scan Freq len: %d", [v10 count]);
          goto LABEL_11;
        }

        v11 = [objc_msgSend(v10 objectAtIndex:{1), "integerValue"}];
        v12 = v11 - [objc_msgSend(v10 objectAtIndex:{0), "integerValue"}];
        values = xpc_int64_create([objc_msgSend(v10 objectAtIndex:{0), "integerValue"}] + (v12 >> 1));
        object = xpc_int64_create(v12);
        v13 = xpc_dictionary_create(keys, &values, 2uLL);
        xpc_array_append_value(v5, v13);
        xpc_release(values);
        xpc_release(object);
        xpc_release(v13);
      }

      v7 = [a3 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v14 = xpc_uint64_create(0);
  [(WCM_CellularController *)self sendMessage:1208 withArgs:v5 withExtraKey:"kSubId" andExtraValue:v14];
  xpc_release(v14);
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v15 = xpc_uint64_create(1uLL);
    [(WCM_CellularController *)self sendMessage:1208 withArgs:v5 withExtraKey:"kSubId" andExtraValue:v15];
    xpc_release(v15);
  }

  xpc_release(v5);
}

- (void)setRC1Duration:(unint64_t)a3
{
  v5 = +[WCM_PolicyManager singleton];
  [WCM_Logging logLevel:3 message:@"Setting RC1 duration in BB %d", a3];
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = xpc_uint64_create(0);
  if (([objc_msgSend(v5 "activeCoexFeatures")] & 1) == 0 && !objc_msgSend(objc_msgSend(v5, "activeCoexFeatures"), "containsObject:", @"BB_POLICY_CONFIG_SUPPORT"))
  {
    v10 = "kWCMCellularRC1Duration";
    v11 = v6;
    v12 = a3;
    goto LABEL_10;
  }

  if ([objc_msgSend(v5 "activeCoexFeatures")])
  {
    [WCM_Logging logLevel:3 message:@"LAA to RCU1 Throttling disabled"];
  }

  else
  {
    v8 = WORD1(a3);
    if (WORD1(a3) != 1)
    {
      v9 = 1;
      goto LABEL_9;
    }
  }

  v9 = 0;
  v8 = 1;
LABEL_9:
  xpc_dictionary_set_uint64(v6, "kWCMCellularSetLaaGpioThrottleReq_Enabled", v9);
  v12 = v8;
  v10 = "kWCMCellularSetLaaGpioThrottleReq_Periodicity";
  v11 = v6;
LABEL_10:
  xpc_dictionary_set_uint64(v11, v10, v12);
  if ([objc_msgSend(v5 "activeCoexFeatures")])
  {
    xpc_dictionary_set_uint64(v6, "WCMCellularSetLAAConfig_UwbRangingDuration", a3);
    xpc_dictionary_set_uint64(v6, "WCMCellularSetLAAConfig_UwbNarrowBandDuration", 0);
  }

  [(WCM_CellularController *)self sendMessage:1213 withArgs:v6 withExtraKey:"kSubId" andExtraValue:v7];
  [(WCM_CellularController *)self setRc1duration:a3];
  xpc_release(v7);

  xpc_release(v6);
}

- (void)configureCellularTimeShareConfigReqParamsWithCenterFreq:(unint64_t)a3 bandwidth:(unint64_t)a4
{
  [(WCM_CellularController *)self configureCellularTimeShareConfigReqParamsWithCenterFreq:a3 instance:0 bandwidth:a4];

  [(WCM_CellularController *)self configureCellularTimeShareConfigReqParamsWithCenterFreq:a3 instance:9 bandwidth:a4];
}

- (void)disableCellularTimeShareConfigReqSubId:(unint64_t)a3
{
  [WCM_Logging logLevel:4 message:@"Disable time share config req params to cellular modem SubId %llu", a3];
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetTimeShareConfig_Enable", 0);
  xpc_dictionary_set_uint64(v5, "kWCMCellularTimeShareConfig_CoexTech", 0);
  xpc_dictionary_set_uint64(v5, "kWCMCellularTimeShareConfig_CallType", 2uLL);
  xpc_dictionary_set_uint64(v5, "kWCMCellularTimeShareConfig_LongDrxCycle", 0);
  xpc_dictionary_set_uint64(v5, "kWCMCellularTimeShareConfig_ShortDrxCycle", 0);
  xpc_dictionary_set_uint64(v5, "kWCMCellularTImeShareConfig_SleepWakeDurScale", 0);
  v6 = xpc_array_create(0, 0);
  values = xpc_int64_create(0);
  object = xpc_int64_create(0);
  *keys = *off_100241498;
  v7 = xpc_dictionary_create(keys, &values, 2uLL);
  xpc_array_append_value(v6, v7);
  xpc_dictionary_set_value(v5, "kWCMCellularTImeShareConfig_BandInformationSet", v6);
  v8 = xpc_uint64_create(a3);
  [(WCM_CellularController *)self sendMessage:1214 withArgs:v5 withExtraKey:"kSubId" andExtraValue:v8];
  xpc_release(values);
  xpc_release(object);
  xpc_release(v7);
  xpc_release(v6);
  xpc_release(v8);
  xpc_release(v5);
}

- (void)setAntBlockingParams
{
  v2 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v3 = xpc_dictionary_create(0, 0, 0);
  [WCM_Logging logLevel:4 message:@"BB20:Updating antenna blocking params to cellular modem"];
  v4 = xpc_array_create(0, 0);
  v5 = xpc_array_create(0, 0);
  v6 = xpc_uint64_create(0xCAuLL);
  if (v2 <= 0xB && ((1 << v2) & 0xD00) != 0)
  {
    xpc_array_append_value(v5, v6);
  }

  v54 = xpc_uint64_create(0xC8uLL);
  xpc_array_append_value(v5, v54);
  v8 = xpc_uint64_create(0xC9uLL);
  if ((v2 | 4) == 0xC)
  {
    xpc_array_append_value(v5, v8);
  }

  v9 = xpc_uint64_create(0xA1uLL);
  if (v2 == 12)
  {
    xpc_array_append_value(v5, v9);
  }

  v51 = v9;
  v10 = xpc_dictionary_create(0, 0, 0);
  v46 = v5;
  xpc_dictionary_set_value(v10, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v5);
  xpc_dictionary_set_uint64(v10, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 8uLL);
  object = v10;
  xpc_array_append_value(v4, v10);
  v11 = xpc_array_create(0, 0);
  v12 = v11;
  v60 = v4;
  v61 = v3;
  if (v2 == 11)
  {
    xpc_array_append_value(v11, v8);
    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v13, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v12);
    xpc_dictionary_set_uint64(v13, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 9uLL);
    v49 = v13;
    xpc_array_append_value(v4, v13);
  }

  else
  {
    v49 = xpc_dictionary_create(0, 0, 0);
  }

  v14 = xpc_array_create(0, 0);
  v15 = xpc_uint64_create(0xA0uLL);
  v16 = xpc_uint64_create(0xBFuLL);
  v52 = v12;
  v47 = v16;
  v48 = v15;
  if (v2 == 11)
  {
    v17 = v16;
    xpc_array_append_value(v14, v15);
    xpc_array_append_value(v14, v17);
    v18 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v18, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v14);
    xpc_dictionary_set_uint64(v18, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 2uLL);
    v45 = v18;
    xpc_array_append_value(v60, v18);
  }

  else
  {
    v45 = xpc_dictionary_create(0, 0, 0);
  }

  v53 = v8;
  v55 = v6;
  v19 = xpc_array_create(0, 0);
  v20 = xpc_uint64_create(0xB6uLL);
  v21 = xpc_uint64_create(0x79uLL);
  v22 = xpc_uint64_create(0x90uLL);
  v23 = xpc_uint64_create(0x7AuLL);
  v24 = xpc_uint64_create(0x7BuLL);
  v25 = xpc_uint64_create(0x9EuLL);
  v26 = v61;
  v50 = v14;
  v58 = v21;
  v59 = v20;
  v57 = v22;
  if (v2 == 8)
  {
    xpc_array_append_value(v19, v20);
    xpc_array_append_value(v19, v21);
    xpc_array_append_value(v19, v22);
    xpc_array_append_value(v19, v23);
    xpc_array_append_value(v19, v24);
    xpc_array_append_value(v19, v25);
    v27 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v27, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v19);
    xpc_dictionary_set_uint64(v27, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 1uLL);
    v28 = v60;
    xpc_array_append_value(v60, v27);
    v43 = xpc_array_create(0, 0);
    v29 = xpc_dictionary_create(0, 0, 0);
    v42 = xpc_array_create(0, 0);
    xpc_uint64_create(0x7EuLL);
    v30 = xpc_dictionary_create(0, 0, 0);
    v31 = v46;
  }

  else
  {
    v41 = xpc_dictionary_create(0, 0, 0);
    v32 = xpc_array_create(0, 0);
    v28 = v60;
    v31 = v46;
    v43 = v32;
    if ((v2 & 0xFFFFFFFE) == 0xA)
    {
      v33 = v32;
      xpc_array_append_value(v32, v20);
      xpc_array_append_value(v33, v58);
      xpc_array_append_value(v33, v57);
      v34 = v25;
      xpc_array_append_value(v33, v25);
      v35 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_value(v35, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v33);
      xpc_dictionary_set_uint64(v35, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 3uLL);
      v40 = v35;
      xpc_array_append_value(v60, v35);
    }

    else
    {
      v40 = xpc_dictionary_create(0, 0, 0);
      v34 = v25;
    }

    v36 = xpc_array_create(0, 0);
    v37 = xpc_uint64_create(0x7EuLL);
    v38 = v2 - 148;
    if (v2 - 148 <= 4 && v2 != 150)
    {
      xpc_array_append_value(v36, v37);
    }

    v39 = xpc_dictionary_create(0, 0, 0);
    v30 = v39;
    v42 = v36;
    if (v38 > 4)
    {
      v26 = v61;
      v25 = v34;
    }

    else
    {
      if (v38 != 2)
      {
        xpc_dictionary_set_value(v39, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v36);
        xpc_dictionary_set_uint64(v30, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 3uLL);
        xpc_array_append_value(v60, v30);
      }

      v26 = v61;
    }

    v29 = v40;
    v27 = v41;
  }

  xpc_dictionary_set_value(v26, "kWCMCellularSetAntBlocking_BandInformationSet", v28);
  [(WCM_CellularController *)self sendMessage:1216 withArgs:v26];
  xpc_release(object);
  xpc_release(v27);
  xpc_release(v29);
  xpc_release(v49);
  xpc_release(v45);
  xpc_release(v30);
  xpc_release(v55);
  xpc_release(v53);
  xpc_release(v54);
  xpc_release(v51);
  xpc_release(v48);
  xpc_release(v47);
  xpc_release(v59);
  xpc_release(v58);
  xpc_release(v57);
  xpc_release(v23);
  xpc_release(v24);
  xpc_release(v25);
  xpc_release(v31);
  xpc_release(v19);
  xpc_release(v43);
  xpc_release(v52);
  xpc_release(v50);
  xpc_release(v42);
  xpc_release(v28);

  xpc_release(v26);
}

- (void)setClientAntBlockingParams22
{
  v2 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v66 = xpc_dictionary_create(0, 0, 0);
  [WCM_Logging logLevel:4 message:@"BB21:Updating WIFI antenna blocking params to cellular modem"];
  v3 = xpc_array_create(0, 0);
  v4 = xpc_dictionary_create(0, 0, 0);
  v64 = xpc_uint64_create(0);
  xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_ClientId", v64);
  v62 = xpc_BOOL_create(0);
  xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_BlockVoice", v62);
  v61 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_TimeMultiplier", v61);
  v5 = xpc_array_create(0, 0);
  v6 = xpc_array_create(0, 0);
  v7 = xpc_uint64_create(0xCAuLL);
  if (v2 - 19 >= 4)
  {
    object = xpc_dictionary_create(0, 0, 0);
  }

  else
  {
    xpc_array_append_value(v6, v7);
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v8, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v6);
    xpc_dictionary_set_uint64(v8, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 8uLL);
    object = v8;
    xpc_array_append_value(v5, v8);
  }

  v9 = xpc_array_create(0, 0);
  v59 = v6;
  v55 = v9;
  v10 = v3;
  if (v2 - 21 >= 2)
  {
    v54 = xpc_dictionary_create(0, 0, 0);
  }

  else
  {
    v11 = v9;
    xpc_array_append_value(v9, v7);
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v12, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v11);
    xpc_dictionary_set_uint64(v12, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 9uLL);
    v54 = v12;
    xpc_array_append_value(v5, v12);
  }

  v13 = xpc_array_create(0, 0);
  v14 = xpc_uint64_create(0xBFuLL);
  v15 = xpc_uint64_create(0xA0uLL);
  v53 = v13;
  if (v2 - 19 >= 4)
  {
    v50 = xpc_dictionary_create(0, 0, 0);
  }

  else
  {
    xpc_array_append_value(v13, v14);
    xpc_array_append_value(v13, v15);
    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v16, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v13);
    xpc_dictionary_set_uint64(v16, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 4uLL);
    v50 = v16;
    xpc_array_append_value(v5, v16);
  }

  v51 = v15;
  v52 = v14;
  v71 = xpc_array_create(0, 0);
  if (v2 - 154 <= 4 && v2 != 156)
  {
    xpc_array_append_value(v71, v7);
  }

  v70 = xpc_dictionary_create(0, 0, 0);
  v17 = v10;
  if (v2 - 154 <= 4 && v2 != 156)
  {
    xpc_dictionary_set_value(v70, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v71);
    xpc_dictionary_set_uint64(v70, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 3uLL);
    xpc_array_append_value(v5, v70);
  }

  v60 = v5;
  xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_BandInformationSet", v5);
  xpc_array_append_value(v10, v4);
  [WCM_Logging logLevel:4 message:@"BB21:Updating RC1 antenna blocking params to cellular modem"];
  v18 = xpc_dictionary_create(0, 0, 0);
  v49 = xpc_uint64_create(1uLL);
  xpc_dictionary_set_value(v18, "kWCMCellularSetAntBlocking_ClientId", v49);
  v48 = xpc_BOOL_create(1);
  xpc_dictionary_set_value(v18, "kWCMCellularSetAntBlocking_BlockVoice", v48);
  v47 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v18, "kWCMCellularSetAntBlocking_TimeMultiplier", v47);
  v19 = xpc_array_create(0, 0);
  v20 = xpc_array_create(0, 0);
  v21 = xpc_uint64_create(0xBFuLL);
  v69 = xpc_uint64_create(0xA0uLL);
  v68 = xpc_dictionary_create(0, 0, 0);
  if (v2 - 20 <= 2)
  {
    xpc_array_append_value(v20, v69);
    xpc_array_append_value(v20, v21);
    xpc_dictionary_set_value(v68, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v20);
    xpc_dictionary_set_uint64(v68, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 2uLL);
    xpc_array_append_value(v19, v68);
  }

  v44 = v21;
  v45 = v20;
  v57 = v7;
  v65 = v4;
  v22 = xpc_array_create(0, 0);
  v23 = xpc_uint64_create(0xC9uLL);
  v24 = xpc_dictionary_create(0, 0, 0);
  v58 = v2;
  if (v2 == 22)
  {
    xpc_array_append_value(v22, v23);
    xpc_dictionary_set_value(v24, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v22);
    xpc_dictionary_set_uint64(v24, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 4uLL);
    xpc_array_append_value(v19, v24);
  }

  v41 = v24;
  v42 = v23;
  v43 = v22;
  v46 = v19;
  xpc_dictionary_set_value(v18, "kWCMCellularSetAntBlocking_BandInformationSet", v19);
  xpc_array_append_value(v17, v18);
  [WCM_Logging logLevel:4 message:@"BB21:Updating FC1 antenna blocking params to cellular modem"];
  v25 = xpc_dictionary_create(0, 0, 0);
  v40 = xpc_uint64_create(2uLL);
  xpc_dictionary_set_value(v25, "kWCMCellularSetAntBlocking_ClientId", v40);
  v39 = xpc_BOOL_create(1);
  xpc_dictionary_set_value(v25, "kWCMCellularSetAntBlocking_BlockVoice", v39);
  v38 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v25, "kWCMCellularSetAntBlocking_TimeMultiplier", v38);
  v26 = v17;
  xpc_array_append_value(v17, v25);
  [WCM_Logging logLevel:4 message:@"BB22:Updating FC2 antenna blocking params to cellular modem"];
  v27 = xpc_dictionary_create(0, 0, 0);
  v37 = xpc_uint64_create(3uLL);
  xpc_dictionary_set_value(v27, "kWCMCellularSetAntBlocking_ClientId", v37);
  v36 = xpc_BOOL_create(1);
  xpc_dictionary_set_value(v27, "kWCMCellularSetAntBlocking_BlockVoice", v36);
  v35 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v27, "kWCMCellularSetAntBlocking_TimeMultiplier", v35);
  v28 = xpc_array_create(0, 0);
  v29 = xpc_array_create(0, 0);
  v30 = xpc_uint64_create(0xA0uLL);
  v31 = xpc_uint64_create(0xBFuLL);
  v67 = xpc_uint64_create(0x9DuLL);
  v32 = xpc_dictionary_create(0, 0, 0);
  v33 = v30;
  v34 = v31;
  if (v58 != 19)
  {
    if (v58 != 22)
    {
      goto LABEL_24;
    }

    xpc_array_append_value(v29, v30);
    v33 = v31;
    v34 = v67;
  }

  xpc_array_append_value(v29, v33);
  xpc_array_append_value(v29, v34);
  xpc_dictionary_set_value(v32, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v29);
  xpc_dictionary_set_uint64(v32, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 2uLL);
  xpc_array_append_value(v28, v32);
LABEL_24:
  xpc_dictionary_set_value(v27, "kWCMCellularSetAntBlocking_BandInformationSet", v28);
  xpc_array_append_value(v26, v27);
  xpc_dictionary_set_value(v66, "kWCMCellularSetAntBlocking_ClientInformationSet", v26);
  [(WCM_CellularController *)self sendMessage:1221 withArgs:v66];
  xpc_release(object);
  xpc_release(v57);
  xpc_release(v59);
  xpc_release(v54);
  xpc_release(v55);
  xpc_release(v50);
  xpc_release(v52);
  xpc_release(v51);
  xpc_release(v53);
  xpc_release(v70);
  xpc_release(v71);
  xpc_release(v60);
  xpc_release(v65);
  xpc_release(v64);
  xpc_release(v62);
  xpc_release(v61);
  xpc_release(v41);
  xpc_release(v68);
  xpc_release(v42);
  xpc_release(v44);
  xpc_release(v69);
  xpc_release(v43);
  xpc_release(v45);
  xpc_release(v46);
  xpc_release(v18);
  xpc_release(v49);
  xpc_release(v48);
  xpc_release(v47);
  xpc_release(v25);
  xpc_release(v40);
  xpc_release(v39);
  xpc_release(v38);
  xpc_release(v32);
  xpc_release(v30);
  xpc_release(v31);
  xpc_release(v67);
  xpc_release(v29);
  xpc_release(v28);
  xpc_release(v27);
  xpc_release(v37);
  xpc_release(v36);
  xpc_release(v35);
  xpc_release(v66);

  xpc_release(v26);
}

- (void)setClientAntBlockingParams
{
  v2 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v3 = xpc_dictionary_create(0, 0, 0);
  [WCM_Logging logLevel:4 message:@"BB21:Updating WIFI antenna blocking params to cellular modem"];
  xarray = xpc_array_create(0, 0);
  v4 = xpc_dictionary_create(0, 0, 0);
  v98 = xpc_uint64_create(0);
  xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_ClientId", v98);
  v97 = xpc_BOOL_create(0);
  xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_BlockVoice", v97);
  v96 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_TimeMultiplier", v96);
  v5 = xpc_array_create(0, 0);
  v6 = xpc_array_create(0, 0);
  v7 = xpc_uint64_create(0xCAuLL);
  v8 = v2 - 13;
  v93 = v6;
  v110 = v7;
  if (v2 - 13 >= 4)
  {
    object = xpc_dictionary_create(0, 0, 0);
  }

  else
  {
    xpc_array_append_value(v6, v7);
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v9, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v6);
    xpc_dictionary_set_uint64(v9, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 8uLL);
    object = v9;
    xpc_array_append_value(v5, v9);
  }

  v10 = xpc_array_create(0, 0);
  v11 = xpc_uint64_create(0x78uLL);
  v12 = xpc_uint64_create(0x79uLL);
  v13 = xpc_uint64_create(0x7AuLL);
  v88 = xpc_uint64_create(0x90uLL);
  v14 = xpc_uint64_create(0x9EuLL);
  v116 = v10;
  v91 = v11;
  v87 = v14;
  if (v2 == 14)
  {
    v15 = v14;
    xpc_array_append_value(v10, v11);
    xpc_array_append_value(v10, v12);
    v16 = v15;
LABEL_7:
    xpc_array_append_value(v10, v16);
    v17 = xpc_dictionary_create(0, 0, 0);
LABEL_8:
    xpc_dictionary_set_value(v17, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v10);
    xpc_dictionary_set_uint64(v17, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 3uLL);
    xpc_array_append_value(v5, v17);
    goto LABEL_9;
  }

  v16 = v13;
  if ((v2 | 2) == 0xF)
  {
    goto LABEL_7;
  }

  v17 = xpc_dictionary_create(0, 0, 0);
  if (v8 <= 3)
  {
    goto LABEL_8;
  }

LABEL_9:
  v18 = xpc_array_create(0, 0);
  v19 = xpc_uint64_create(0x9FuLL);
  v100 = v3;
  v90 = v12;
  v83 = v19;
  if (v2 == 144)
  {
    v20 = 0;
    v21 = v19;
    goto LABEL_13;
  }

  if (v2 == 127)
  {
    v20 = 1;
    v21 = v110;
LABEL_13:
    xpc_array_append_value(v18, v21);
    v22 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v22, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v18);
    xpc_dictionary_set_uint64(v22, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 6uLL);
    v82 = v22;
    xpc_array_append_value(v5, v22);
    v23 = xpc_array_create(0, 0);
    v77 = 0;
    goto LABEL_14;
  }

  v82 = xpc_dictionary_create(0, 0, 0);
  v42 = xpc_array_create(0, 0);
  v23 = v42;
  if (v2 == 146)
  {
    xpc_array_append_value(v42, v110);
    v20 = 0;
    v77 = 1;
  }

  else
  {
    v77 = 0;
    v20 = 0;
  }

LABEL_14:
  v109 = xpc_uint64_create(0xA8uLL);
  v108 = xpc_uint64_create(0xB8uLL);
  v107 = xpc_uint64_create(0xC2uLL);
  if (v20)
  {
    xpc_array_append_value(v23, v13);
    xpc_array_append_value(v23, v109);
    xpc_array_append_value(v23, v108);
    xpc_array_append_value(v23, v107);
  }

  v84 = v18;
  v89 = v13;
  v112 = xpc_dictionary_create(0, 0, 0);
  if (v2 == 146 || v2 == 127)
  {
    xpc_dictionary_set_value(v112, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v23);
    xpc_dictionary_set_uint64(v112, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 4uLL);
    xpc_array_append_value(v5, v112);
  }

  v24 = xpc_array_create(0, 0);
  v25 = xpc_uint64_create(0xA0uLL);
  v26 = xpc_uint64_create(0xBFuLL);
  v78 = v26;
  v79 = v25;
  if (v20)
  {
    v27 = v26;
    xpc_array_append_value(v24, v25);
    xpc_array_append_value(v24, v27);
    v28 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v28, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v24);
    xpc_dictionary_set_uint64(v28, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 3uLL);
    v73 = v28;
    xpc_array_append_value(v5, v28);
  }

  else
  {
    v73 = xpc_dictionary_create(0, 0, 0);
  }

  v80 = v24;
  v29 = v17;
  if (v8 < 4 || v2 - 127 <= 0x13 && ((1 << (v2 - 127)) & 0xA0001) != 0)
  {
    xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_BandInformationSet", v5);
  }

  xpc_array_append_value(xarray, v4);
  [WCM_Logging logLevel:4 message:@"BB21:Updating RC1 antenna blocking params to cellular modem"];
  v30 = xpc_dictionary_create(0, 0, 0);
  v75 = xpc_uint64_create(1uLL);
  xpc_dictionary_set_value(v30, "kWCMCellularSetAntBlocking_ClientId", v75);
  v74 = xpc_BOOL_create(1);
  xpc_dictionary_set_value(v30, "kWCMCellularSetAntBlocking_BlockVoice", v74);
  v72 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v30, "kWCMCellularSetAntBlocking_TimeMultiplier", v72);
  v117 = xpc_array_create(0, 0);
  v106 = xpc_array_create(0, 0);
  v105 = xpc_uint64_create(0xCAuLL);
  v104 = xpc_dictionary_create(0, 0, 0);
  if (v8 <= 3)
  {
    xpc_array_append_value(v106, v105);
    v29 = v17;
    xpc_dictionary_set_value(v104, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v106);
    xpc_dictionary_set_uint64(v104, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 8uLL);
    xpc_array_append_value(v117, v104);
  }

  v85 = v29;
  v81 = v23;
  v31 = xpc_array_create(0, 0);
  v32 = xpc_uint64_create(0xBFuLL);
  v102 = xpc_uint64_create(0xA0uLL);
  v111 = xpc_dictionary_create(0, 0, 0);
  v70 = v32;
  if (v8 <= 2 && (xpc_array_append_value(v31, v32), v2 == 13))
  {
    v33 = v4;
    xpc_array_append_value(v31, v102);
  }

  else
  {
    v33 = v4;
    if ((v2 & 0xFFFFFFFE) != 0xE)
    {
      goto LABEL_33;
    }
  }

  xpc_dictionary_set_value(v111, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v31);
  xpc_dictionary_set_uint64(v111, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 2uLL);
  xpc_array_append_value(v117, v111);
LABEL_33:
  v34 = xpc_array_create(0, 0);
  v35 = xpc_uint64_create(0xC9uLL);
  v36 = xpc_dictionary_create(0, 0, 0);
  v94 = v5;
  v68 = v35;
  v66 = v36;
  if (v2 == 14)
  {
    v37 = 1;
    v38 = v36;
    xpc_array_append_value(v34, v35);
    xpc_dictionary_set_value(v38, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v34);
    xpc_dictionary_set_uint64(v38, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 4uLL);
    xpc_array_append_value(v117, v38);
LABEL_36:
    xpc_dictionary_set_value(v30, "kWCMCellularSetAntBlocking_BandInformationSet", v117);
    goto LABEL_37;
  }

  v37 = v2 - 13;
  if (v8 <= 3)
  {
    goto LABEL_36;
  }

LABEL_37:
  xpc_array_append_value(xarray, v30);
  [WCM_Logging logLevel:4 message:@"BB21:Updating FC1 antenna blocking params to cellular modem"];
  v39 = xpc_dictionary_create(0, 0, 0);
  v67 = xpc_uint64_create(2uLL);
  xpc_dictionary_set_value(v39, "kWCMCellularSetAntBlocking_ClientId", v67);
  v65 = xpc_BOOL_create(1);
  xpc_dictionary_set_value(v39, "kWCMCellularSetAntBlocking_BlockVoice", v65);
  v64 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v39, "kWCMCellularSetAntBlocking_TimeMultiplier", v64);
  v40 = xpc_array_create(0, 0);
  v41 = xpc_array_create(0, 0);
  v115 = xpc_uint64_create(0xCAuLL);
  v113 = xpc_uint64_create(0xC8uLL);
  v101 = xpc_uint64_create(0xC9uLL);
  v114 = xpc_dictionary_create(0, 0, 0);
  if (v37 < 2)
  {
    goto LABEL_40;
  }

  if (v2 == 15)
  {
    goto LABEL_41;
  }

  if (v2 == 16)
  {
LABEL_40:
    xpc_array_append_value(v41, v115);
    xpc_array_append_value(v41, v113);
    if (v2 != 15)
    {
LABEL_48:
      xpc_dictionary_set_value(v114, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v41);
      xpc_dictionary_set_uint64(v114, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 8uLL);
      xpc_array_append_value(v40, v114);
      xpc_dictionary_set_value(v39, "kWCMCellularSetAntBlocking_BandInformationSet", v40);
      xpc_array_append_value(xarray, v39);
      goto LABEL_49;
    }

LABEL_41:
    xpc_array_append_value(v41, v115);
    goto LABEL_48;
  }

  if (v2 - 19 <= 1)
  {
    xpc_array_append_value(v41, v115);
    xpc_array_append_value(v41, v113);
    xpc_array_append_value(v41, v101);
  }

  if (v2 <= 0x14 && ((1 << v2) & 0x190000) != 0)
  {
    goto LABEL_48;
  }

LABEL_49:
  v62 = v41;
  v63 = v40;
  v69 = v34;
  v71 = v31;
  v76 = v30;
  v99 = v33;
  [WCM_Logging logLevel:4 message:@"BB21:Updating FC2 antenna blocking params to cellular modem"];
  v43 = xpc_dictionary_create(0, 0, 0);
  v61 = xpc_uint64_create(3uLL);
  xpc_dictionary_set_value(v43, "kWCMCellularSetAntBlocking_ClientId", v61);
  v60 = xpc_BOOL_create(1);
  xpc_dictionary_set_value(v43, "kWCMCellularSetAntBlocking_BlockVoice", v60);
  v59 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v43, "kWCMCellularSetAntBlocking_TimeMultiplier", v59);
  v44 = xpc_array_create(0, 0);
  v45 = xpc_array_create(0, 0);
  v46 = xpc_uint64_create(0xA0uLL);
  v47 = xpc_uint64_create(0xBFuLL);
  v48 = xpc_dictionary_create(0, 0, 0);
  if (v2 == 20 || v2 == 13)
  {
    xpc_array_append_value(v45, v46);
    xpc_array_append_value(v45, v47);
    xpc_dictionary_set_value(v48, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v45);
    xpc_dictionary_set_uint64(v48, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 2uLL);
    xpc_array_append_value(v44, v48);
    xpc_dictionary_set_value(v43, "kWCMCellularSetAntBlocking_BandInformationSet", v44);
    xpc_array_append_value(xarray, v43);
  }

  v57 = v47;
  v58 = v44;
  [WCM_Logging logLevel:4 message:@"BB21:Updating JPN REG CLIENT antenna blocking params to cellular modem"];
  v49 = xpc_dictionary_create(0, 0, 0);
  v56 = xpc_uint64_create(2uLL);
  xpc_dictionary_set_value(v49, "kWCMCellularSetAntBlocking_ClientId", v56);
  v55 = xpc_BOOL_create(0);
  xpc_dictionary_set_value(v49, "kWCMCellularSetAntBlocking_BlockVoice", v55);
  v54 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v49, "kWCMCellularSetAntBlocking_TimeMultiplier", v54);
  v50 = xpc_array_create(0, 0);
  v51 = xpc_array_create(0, 0);
  v52 = xpc_uint64_create(0xC8uLL);
  v103 = xpc_uint64_create(0xC9uLL);
  v53 = xpc_dictionary_create(0, 0, 0);
  if (v77)
  {
    xpc_array_append_value(v51, v52);
    xpc_array_append_value(v51, v103);
    xpc_dictionary_set_value(v53, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v51);
    xpc_dictionary_set_uint64(v53, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 6uLL);
    xpc_array_append_value(v50, v53);
    xpc_dictionary_set_value(v49, "kWCMCellularSetAntBlocking_BandInformationSet", v50);
    xpc_array_append_value(xarray, v49);
  }

  xpc_dictionary_set_value(v100, "kWCMCellularSetAntBlocking_ClientInformationSet", xarray);
  [(WCM_CellularController *)self sendMessage:1221 withArgs:v100];
  xpc_release(object);
  xpc_release(v110);
  xpc_release(v93);
  xpc_release(v94);
  xpc_release(v85);
  xpc_release(v91);
  xpc_release(v90);
  xpc_release(v89);
  xpc_release(v88);
  xpc_release(v87);
  xpc_release(v116);
  xpc_release(v82);
  xpc_release(v83);
  xpc_release(v84);
  xpc_release(v112);
  xpc_release(v81);
  xpc_release(v73);
  xpc_release(v79);
  xpc_release(v78);
  xpc_release(v80);
  xpc_release(v109);
  xpc_release(v108);
  xpc_release(v107);
  xpc_release(v99);
  xpc_release(v98);
  xpc_release(v97);
  xpc_release(v96);
  xpc_release(v104);
  xpc_release(v111);
  xpc_release(v66);
  xpc_release(v105);
  xpc_release(v70);
  xpc_release(v68);
  xpc_release(v102);
  xpc_release(v106);
  xpc_release(v71);
  xpc_release(v69);
  xpc_release(v117);
  xpc_release(v76);
  xpc_release(v75);
  xpc_release(v74);
  xpc_release(v72);
  xpc_release(v114);
  xpc_release(v115);
  xpc_release(v113);
  xpc_release(v101);
  xpc_release(v62);
  xpc_release(v63);
  xpc_release(v39);
  xpc_release(v67);
  xpc_release(v65);
  xpc_release(v64);
  xpc_release(v48);
  xpc_release(v57);
  xpc_release(v46);
  xpc_release(v45);
  xpc_release(v58);
  xpc_release(v43);
  xpc_release(v61);
  xpc_release(v60);
  xpc_release(v59);
  xpc_release(v53);
  xpc_release(v52);
  xpc_release(v103);
  xpc_release(v51);
  xpc_release(v50);
  xpc_release(v49);
  xpc_release(v56);
  xpc_release(v55);
  xpc_release(v54);
  xpc_release(v100);

  xpc_release(xarray);
}

- (void)setWci2TxAntMap
{
  v3 = xpc_array_create(0, 0);
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = +[WCM_PolicyManager singleton];
  [WCM_Logging logLevel:4 message:@"BB20:Updating antenna map params to cellular modem"];
  xpc_dictionary_set_uint64(v4, "kWCMCellularSetWCI2TxAntMap_Enable", 1uLL);
  xpc_dictionary_set_uint64(v4, "kWCMCellularSetWCI2TxAntMap_DefaultIdx", 0);
  if ([objc_msgSend(v5 "activeCoexFeatures")])
  {
    [WCM_Logging logLevel:4 message:@"Enable type7 mmWave TX on bit"];
    xpc_dictionary_set_uint64(v4, "kWCMCellularSetWCI2Type7FRTwoTxEnable", 1uLL);
    for (i = 0; i != 10; ++i)
    {
      v7 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v7, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", i);
      v8 = i - 5 < 2;
      if (i == 4)
      {
        v8 = 0;
      }

      if ((i & 0xE) == 2)
      {
        v9 = 3;
      }

      else
      {
        v9 = v8;
      }

      if (i == 1)
      {
        v10 = 2;
      }

      else
      {
        v10 = v9;
      }

      xpc_dictionary_set_uint64(v7, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v10);
      xpc_array_append_value(v3, v7);
    }
  }

  else
  {
    for (j = -3; j != 7; ++j)
    {
      v12 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v12, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", j + 3);
      v13 = (j + 3);
      if ((j + 3) <= 6)
      {
        v14 = 0;
      }

      else
      {
        v14 = j;
      }

      if (v13 == 6)
      {
        v14 = 1;
      }

      if (v13 == 5)
      {
        v15 = 2;
      }

      else
      {
        v15 = v14;
      }

      if ((j + 2) >= 4)
      {
        v16 = v15;
      }

      else
      {
        v16 = j + 2;
      }

      xpc_dictionary_set_uint64(v12, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v16);
      xpc_array_append_value(v3, v12);
    }
  }

  xpc_dictionary_set_value(v4, "kWCMCellularSetWCI2TxAntMap_InformationSet", v3);
  [(WCM_CellularController *)self sendMessage:1215 withArgs:v4];
  if (xpc_array_get_count(v3))
  {
    v17 = 0;
    do
    {
      value = xpc_array_get_value(v3, v17);
      xpc_release(value);
      ++v17;
    }

    while (v17 < xpc_array_get_count(v3));
  }

  xpc_release(v3);

  xpc_release(v4);
}

- (void)setWci2TxAntMapBB21
{
  v3 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v4 = xpc_array_create(0, 0);
  v5 = xpc_dictionary_create(0, 0, 0);
  [WCM_Logging logLevel:4 message:@"BB21WCI2AntDebug_:Updating antenna map params to cellular modem"];
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2TxAntMap_Enable", 1uLL);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2TxAntMap_DefaultIdx", 0);
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:4 message:@"BB21WCI2AntDebug_: Enable ARBuffer mmW TX on bit"];
    xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Type7FRTwoTxEnable", 1uLL);
  }

  v38 = self;
  if (v3 == 146)
  {
    v53[0] = @"Ant-1a";
    v54[0] = [NSNumber numberWithInt:1];
    v53[1] = @"Ant-1b";
    v54[1] = [NSNumber numberWithInt:2];
    v53[2] = @"Ant-2a";
    v54[2] = [NSNumber numberWithInt:3];
    v53[3] = @"Ant-2b";
    v54[3] = [NSNumber numberWithInt:4];
    v53[4] = @"Ant-3a";
    v54[4] = [NSNumber numberWithInt:5];
    v53[5] = @"Ant-3b";
    v54[5] = [NSNumber numberWithInt:6];
    v53[6] = @"Ant-4";
    v54[6] = [NSNumber numberWithInt:7];
    v12 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:7];
    v51[0] = @"Ant-1a";
    v52[0] = [NSNumber numberWithInt:0];
    v51[1] = @"Ant-1b";
    v52[1] = [NSNumber numberWithInt:1];
    v51[2] = @"Ant-2a";
    v52[2] = [NSNumber numberWithInt:2];
    v51[3] = @"Ant-2b";
    v52[3] = [NSNumber numberWithInt:3];
    v51[4] = @"Ant-3a";
    v52[4] = [NSNumber numberWithInt:4];
    v51[5] = @"Ant-3b";
    v52[5] = [NSNumber numberWithInt:5];
    v51[6] = @"Ant-4";
    v52[6] = [NSNumber numberWithInt:6];
    v13 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:7];
    for (i = 0; i != 10; ++i)
    {
      v15 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v15, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", i);
      v16 = [(NSDictionary *)v12 allKeysForObject:[NSNumber numberWithInt:i]];
      if ([(NSArray *)v16 count])
      {
        v17 = [-[NSDictionary objectForKey:](v13 objectForKey:{-[NSArray objectAtIndexedSubscript:](v16, "objectAtIndexedSubscript:", 0)), "intValue"}];
      }

      else
      {
        v17 = 0;
      }

      xpc_dictionary_set_uint64(v15, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v17);
      xpc_array_append_value(v4, v15);
    }
  }

  else if (v3 == 144)
  {
    v57[0] = @"Ant-1a";
    v58[0] = [NSNumber numberWithInt:1];
    v57[1] = @"Ant-1b";
    v58[1] = [NSNumber numberWithInt:2];
    v57[2] = @"Ant-2";
    v58[2] = [NSNumber numberWithInt:3];
    v57[3] = @"Ant-3a";
    v58[3] = [NSNumber numberWithInt:4];
    v57[4] = @"Ant-3b";
    v58[4] = [NSNumber numberWithInt:5];
    v57[5] = @"Ant-4";
    v58[5] = [NSNumber numberWithInt:6];
    v57[6] = @"Ant-5T";
    v58[6] = [NSNumber numberWithInt:7];
    v6 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:7];
    v55[0] = @"Ant-1a";
    v56[0] = [NSNumber numberWithInt:0];
    v55[1] = @"Ant-1b";
    v56[1] = [NSNumber numberWithInt:1];
    v55[2] = @"Ant-2";
    v56[2] = [NSNumber numberWithInt:2];
    v55[3] = @"Ant-3a";
    v56[3] = [NSNumber numberWithInt:3];
    v55[4] = @"Ant-3b";
    v56[4] = [NSNumber numberWithInt:4];
    v55[5] = @"Ant-4";
    v56[5] = [NSNumber numberWithInt:5];
    v55[6] = @"Ant-5T";
    v56[6] = [NSNumber numberWithInt:6];
    v7 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:7];
    for (j = 0; j != 10; ++j)
    {
      v9 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v9, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", j);
      v10 = [(NSDictionary *)v6 allKeysForObject:[NSNumber numberWithInt:j]];
      if ([(NSArray *)v10 count])
      {
        v11 = [-[NSDictionary objectForKey:](v7 objectForKey:{-[NSArray objectAtIndexedSubscript:](v10, "objectAtIndexedSubscript:", 0)), "intValue"}];
      }

      else
      {
        v11 = 0;
      }

      xpc_dictionary_set_uint64(v9, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v11);
      xpc_array_append_value(v4, v9);
    }
  }

  else if (v3 - 13 > 3)
  {
    if (v3 == 127)
    {
      v41[0] = @"Ant-1a";
      v42[0] = [NSNumber numberWithInt:7];
      v41[1] = @"Ant-1b";
      v42[1] = [NSNumber numberWithInt:4];
      v41[2] = @"Ant-2a";
      v42[2] = [NSNumber numberWithInt:8];
      v41[3] = @"Ant-2b";
      v42[3] = [NSNumber numberWithInt:2];
      v41[4] = @"Ant-3a";
      v42[4] = [NSNumber numberWithInt:3];
      v41[5] = @"Ant-3b";
      v42[5] = [NSNumber numberWithInt:6];
      v41[6] = @"Ant-4";
      v42[6] = [NSNumber numberWithInt:1];
      v30 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:7];
      v39[0] = @"Ant-1a";
      v40[0] = [NSNumber numberWithInt:0];
      v39[1] = @"Ant-1b";
      v40[1] = [NSNumber numberWithInt:1];
      v39[2] = @"Ant-2a";
      v40[2] = [NSNumber numberWithInt:2];
      v39[3] = @"Ant-2b";
      v40[3] = [NSNumber numberWithInt:3];
      v39[4] = @"Ant-3a";
      v40[4] = [NSNumber numberWithInt:4];
      v39[5] = @"Ant-3b";
      v40[5] = [NSNumber numberWithInt:5];
      v39[6] = @"Ant-4";
      v40[6] = [NSNumber numberWithInt:6];
      v31 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:7];
      for (k = 0; k != 10; ++k)
      {
        v33 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v33, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", k);
        v34 = [(NSDictionary *)v30 allKeysForObject:[NSNumber numberWithInt:k]];
        if ([(NSArray *)v34 count])
        {
          v35 = [-[NSDictionary objectForKey:](v31 objectForKey:{-[NSArray objectAtIndexedSubscript:](v34, "objectAtIndexedSubscript:", 0)), "intValue"}];
        }

        else
        {
          v35 = 0;
        }

        xpc_dictionary_set_uint64(v33, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v35);
        xpc_array_append_value(v4, v33);
      }
    }

    else if (v3 == 18)
    {
      v45[0] = @"Ant-1";
      v46[0] = [NSNumber numberWithInt:1];
      v45[1] = @"Ant-2";
      v46[1] = [NSNumber numberWithInt:2];
      v45[2] = @"Ant-3";
      v46[2] = [NSNumber numberWithInt:3];
      v45[3] = @"Ant-4";
      v46[3] = [NSNumber numberWithInt:4];
      v45[4] = @"Ant-6";
      v46[4] = [NSNumber numberWithInt:6];
      v24 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:5];
      v43[0] = @"Ant-1";
      v44[0] = [NSNumber numberWithInt:0];
      v43[1] = @"Ant-2";
      v44[1] = [NSNumber numberWithInt:1];
      v43[2] = @"Ant-3";
      v44[2] = [NSNumber numberWithInt:2];
      v43[3] = @"Ant-4";
      v44[3] = [NSNumber numberWithInt:3];
      v43[4] = @"Ant-6";
      v44[4] = [NSNumber numberWithInt:4];
      v25 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:5];
      for (m = 0; m != 10; ++m)
      {
        v27 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v27, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", m);
        v28 = [(NSDictionary *)v24 allKeysForObject:[NSNumber numberWithInt:m]];
        if ([(NSArray *)v28 count])
        {
          v29 = [-[NSDictionary objectForKey:](v25 objectForKey:{-[NSArray objectAtIndexedSubscript:](v28, "objectAtIndexedSubscript:", 0)), "intValue"}];
        }

        else
        {
          v29 = 0;
        }

        xpc_dictionary_set_uint64(v27, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v29);
        xpc_array_append_value(v4, v27);
      }
    }

    else
    {
      [WCM_Logging logLevel:1 message:@"BB21: platformID not defined to configure CellTxAntIdx over the bus"];
    }
  }

  else
  {
    v49[0] = @"Ant-1";
    v50[0] = [NSNumber numberWithInt:1];
    v49[1] = @"Ant-2";
    v50[1] = [NSNumber numberWithInt:2];
    v49[2] = @"Ant-3";
    v50[2] = [NSNumber numberWithInt:3];
    v49[3] = @"Ant-4";
    v50[3] = [NSNumber numberWithInt:4];
    v49[4] = @"Ant-7";
    v50[4] = [NSNumber numberWithInt:7];
    v49[5] = @"Ant-8";
    v50[5] = [NSNumber numberWithInt:8];
    v49[6] = @"Ant-9";
    v50[6] = [NSNumber numberWithInt:9];
    v18 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:7];
    v47[0] = @"Ant-1";
    v48[0] = [NSNumber numberWithInt:0];
    v47[1] = @"Ant-2";
    v48[1] = [NSNumber numberWithInt:2];
    v47[2] = @"Ant-3";
    v48[2] = [NSNumber numberWithInt:4];
    v47[3] = @"Ant-4";
    v48[3] = [NSNumber numberWithInt:6];
    v47[4] = @"Ant-7";
    v48[4] = [NSNumber numberWithInt:0];
    v47[5] = @"Ant-8";
    v48[5] = [NSNumber numberWithInt:2];
    v47[6] = @"Ant-9";
    v48[6] = [NSNumber numberWithInt:4];
    v19 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:7];
    for (n = 0; n != 10; ++n)
    {
      v21 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v21, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", n);
      v22 = [(NSDictionary *)v18 allKeysForObject:[NSNumber numberWithInt:n]];
      if ([(NSArray *)v22 count])
      {
        v23 = [-[NSDictionary objectForKey:](v19 objectForKey:{-[NSArray objectAtIndexedSubscript:](v22, "objectAtIndexedSubscript:", 0)), "intValue"}];
      }

      else
      {
        v23 = 0;
      }

      xpc_dictionary_set_uint64(v21, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v23);
      xpc_array_append_value(v4, v21);
    }
  }

  xpc_dictionary_set_value(v5, "kWCMCellularSetWCI2TxAntMap_InformationSet", v4);
  [(WCM_CellularController *)v38 sendMessage:1215 withArgs:v5];
  if (xpc_array_get_count(v4))
  {
    v36 = 0;
    do
    {
      value = xpc_array_get_value(v4, v36);
      xpc_release(value);
      ++v36;
    }

    while (v36 < xpc_array_get_count(v4));
  }

  xpc_release(v4);
  xpc_release(v5);
}

- (void)ConstructAntennaMapXpcMsg:(id)a3 AntPhyIdxDict:(id)a4 AntSpmiIdxDict:(id)a5
{
  if (a3 && a4 && a5)
  {
    for (i = 0; i != 10; ++i)
    {
      v9 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v9, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", i);
      v10 = [a4 allKeysForObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", i)}];
      if ([v10 count])
      {
        v11 = [objc_msgSend(a5 objectForKey:{objc_msgSend(v10, "objectAtIndexedSubscript:", 0)), "intValue"}];
      }

      else
      {
        v11 = 0;
      }

      xpc_dictionary_set_uint64(v9, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v11);
      xpc_array_append_value(a3, v9);
    }
  }
}

- (void)setWci2TxAntMapBB22
{
  v2 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v3 = xpc_array_create(0, 0);
  v4 = xpc_dictionary_create(0, 0, 0);
  [WCM_Logging logLevel:4 message:@"BB22AntMapping_:Updating antenna map params to cellular modem"];
  xpc_dictionary_set_uint64(v4, "kWCMCellularSetWCI2TxAntMap_Enable", 1uLL);
  xpc_dictionary_set_uint64(v4, "kWCMCellularSetWCI2TxAntMap_DefaultIdx", 0);
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:4 message:@"BB22WCI2AntDebug_: Enable ARBuffer mmW TX on bit"];
    xpc_dictionary_set_uint64(v4, "kWCMCellularSetWCI2Type7FRTwoTxEnable", 1uLL);
  }

  xdict = v4;
  if (v2 <= 153)
  {
    if (v2 <= 0x3D && ((1 << v2) & 0x3FFC000000780000) != 0)
    {
      v47[0] = @"Ant-1";
      v48[0] = [NSNumber numberWithInt:1];
      v47[1] = @"Ant-2";
      v48[1] = [NSNumber numberWithInt:2];
      v47[2] = @"Ant-3";
      v48[2] = [NSNumber numberWithInt:3];
      v47[3] = @"Ant-4";
      v48[3] = [NSNumber numberWithInt:4];
      v47[4] = @"Ant-7";
      v48[4] = [NSNumber numberWithInt:7];
      v47[5] = @"Ant-8";
      v48[5] = [NSNumber numberWithInt:8];
      v47[6] = @"Ant-9";
      v48[6] = [NSNumber numberWithInt:9];
      v5 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:7];
      v45[0] = @"Ant-1";
      v46[0] = [NSNumber numberWithInt:0];
      v45[1] = @"Ant-2";
      v46[1] = [NSNumber numberWithInt:2];
      v45[2] = @"Ant-3";
      v46[2] = [NSNumber numberWithInt:4];
      v45[3] = @"Ant-4";
      v46[3] = [NSNumber numberWithInt:6];
      v45[4] = @"Ant-7";
      v46[4] = [NSNumber numberWithInt:0];
      v45[5] = @"Ant-8";
      v46[5] = [NSNumber numberWithInt:2];
      v45[6] = @"Ant-9";
      v46[6] = [NSNumber numberWithInt:4];
      v6 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:7];
      for (i = 0; i != 10; ++i)
      {
        v8 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v8, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", i);
        v9 = [(NSDictionary *)v5 allKeysForObject:[NSNumber numberWithInt:i]];
        if ([(NSArray *)v9 count])
        {
          v10 = [-[NSDictionary objectForKey:](v6 objectForKey:{-[NSArray objectAtIndexedSubscript:](v9, "objectAtIndexedSubscript:", 0)), "intValue"}];
        }

        else
        {
          v10 = 0;
        }

        xpc_dictionary_set_uint64(v8, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v10);
        xpc_array_append_value(v3, v8);
      }

      goto LABEL_35;
    }

    goto LABEL_39;
  }

  if (v2 > 163)
  {
    if (v2 <= 167)
    {
      if (v2 != 164)
      {
        if (v2 != 166)
        {
          goto LABEL_39;
        }

        v35[0] = @"Ant-1a";
        v36[0] = [NSNumber numberWithInt:6];
        v35[1] = @"Ant-1b";
        v36[1] = [NSNumber numberWithInt:4];
        v35[2] = @"Ant-2";
        v36[2] = [NSNumber numberWithInt:2];
        v35[3] = @"Ant-3a";
        v36[3] = [NSNumber numberWithInt:5];
        v35[4] = @"Ant-3b";
        v36[4] = [NSNumber numberWithInt:3];
        v35[5] = @"Ant-4";
        v36[5] = [NSNumber numberWithInt:1];
        v35[6] = @"Ant-5T";
        v36[6] = [NSNumber numberWithInt:7];
        v17 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:7];
        v33[0] = @"Ant-1a";
        v34[0] = [NSNumber numberWithInt:0];
        v33[1] = @"Ant-1b";
        v34[1] = [NSNumber numberWithInt:1];
        v33[2] = @"Ant-2";
        v34[2] = [NSNumber numberWithInt:2];
        v33[3] = @"Ant-3a";
        v34[3] = [NSNumber numberWithInt:3];
        v33[4] = @"Ant-3b";
        v34[4] = [NSNumber numberWithInt:4];
        v33[5] = @"Ant-4";
        v34[5] = [NSNumber numberWithInt:5];
        v18 = v34;
        v19 = v33;
LABEL_30:
        v20 = 6;
        goto LABEL_34;
      }
    }

    else
    {
      if (v2 == 168)
      {
LABEL_32:
        v43[0] = @"Ant-1a";
        v44[0] = [NSNumber numberWithInt:7, v4];
        v43[1] = @"Ant-1b";
        v44[1] = [NSNumber numberWithInt:4];
        v43[2] = @"Ant-2a";
        v44[2] = [NSNumber numberWithInt:6];
        v43[3] = @"Ant-2b";
        v44[3] = [NSNumber numberWithInt:2];
        v43[4] = @"Ant-3a";
        v44[4] = [NSNumber numberWithInt:3];
        v43[5] = @"Ant-3b";
        v44[5] = [NSNumber numberWithInt:5];
        v43[6] = @"Ant-4";
        v44[6] = [NSNumber numberWithInt:1];
        v17 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:7];
        v41[0] = @"Ant-1a";
        v42[0] = [NSNumber numberWithInt:0];
        v41[1] = @"Ant-1b";
        v42[1] = [NSNumber numberWithInt:1];
        v41[2] = @"Ant-2a";
        v42[2] = [NSNumber numberWithInt:2];
        v41[3] = @"Ant-2b";
        v42[3] = [NSNumber numberWithInt:3];
        v41[4] = @"Ant-3a";
        v42[4] = [NSNumber numberWithInt:4];
        v41[5] = @"Ant-3b";
        v42[5] = [NSNumber numberWithInt:5];
        v41[6] = @"Ant-4";
        v42[6] = [NSNumber numberWithInt:6];
        v18 = v42;
        v19 = v41;
        goto LABEL_33;
      }

      if (v2 != 170)
      {
        if (v2 == 180)
        {
          v31[0] = @"Ant-1a";
          v32[0] = [NSNumber numberWithInt:7];
          v31[1] = @"Ant-1b";
          v32[1] = [NSNumber numberWithInt:4];
          v31[2] = @"Ant-2a";
          v32[2] = [NSNumber numberWithInt:6];
          v31[3] = @"Ant-2b";
          v32[3] = [NSNumber numberWithInt:2];
          v31[4] = @"Ant-3a";
          v32[4] = [NSNumber numberWithInt:3];
          v31[5] = @"Ant-3b";
          v32[5] = [NSNumber numberWithInt:5];
          v31[6] = @"Ant-4";
          v32[6] = [NSNumber numberWithInt:1];
          v17 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:7];
          v29[0] = @"Ant-1a";
          v30[0] = [NSNumber numberWithInt:0];
          v29[1] = @"Ant-1b";
          v30[1] = [NSNumber numberWithInt:1];
          v29[2] = @"Ant-2a";
          v30[2] = [NSNumber numberWithInt:2];
          v29[3] = @"Ant-2b";
          v30[3] = [NSNumber numberWithInt:3];
          v29[4] = @"Ant-3a";
          v30[4] = [NSNumber numberWithInt:4];
          v29[5] = @"Ant-3b";
          v30[5] = [NSNumber numberWithInt:5];
          v29[6] = @"Ant-4";
          v30[6] = [NSNumber numberWithInt:6];
          v18 = v30;
          v19 = v29;
LABEL_33:
          v20 = 7;
          goto LABEL_34;
        }

        goto LABEL_39;
      }
    }

    v39[0] = @"Ant-1a";
    v40[0] = [NSNumber numberWithInt:7, v4];
    v39[1] = @"Ant-1b";
    v40[1] = [NSNumber numberWithInt:4];
    v39[2] = @"Ant-2";
    v40[2] = [NSNumber numberWithInt:2];
    v39[3] = @"Ant-3a";
    v40[3] = [NSNumber numberWithInt:6];
    v39[4] = @"Ant-3b";
    v40[4] = [NSNumber numberWithInt:3];
    v39[5] = @"Ant-4";
    v40[5] = [NSNumber numberWithInt:1];
    v17 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:6];
    v37[0] = @"Ant-1a";
    v38[0] = [NSNumber numberWithInt:0];
    v37[1] = @"Ant-1b";
    v38[1] = [NSNumber numberWithInt:1];
    v37[2] = @"Ant-2";
    v38[2] = [NSNumber numberWithInt:2];
    v37[3] = @"Ant-3a";
    v38[3] = [NSNumber numberWithInt:3];
    v37[4] = @"Ant-3b";
    v38[4] = [NSNumber numberWithInt:4];
    v37[5] = @"Ant-4";
    v38[5] = [NSNumber numberWithInt:5];
    v18 = v38;
    v19 = v37;
    goto LABEL_30;
  }

  if ((v2 - 154) >= 2 && (v2 - 157) >= 2)
  {
    if (v2 == 162)
    {
      goto LABEL_32;
    }

LABEL_39:
    if ((v2 & 0xFFFFFFFD) != 0xAC)
    {
      [WCM_Logging logLevel:1 message:@"BB22: platformID not defined to configure CellTxAntIdx over the bus"];
      goto LABEL_35;
    }

    v27[0] = @"Ant-1";
    v28[0] = [NSNumber numberWithInt:2];
    v27[1] = @"Ant-2b";
    v28[1] = [NSNumber numberWithInt:4];
    v27[2] = @"Ant-3";
    v28[2] = [NSNumber numberWithInt:1];
    v27[3] = @"Ant-4b";
    v28[3] = [NSNumber numberWithInt:3];
    v17 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:4];
    v25[0] = @"Ant-1";
    v26[0] = [NSNumber numberWithInt:4];
    v25[1] = @"Ant-2b";
    v26[1] = [NSNumber numberWithInt:6];
    v25[2] = @"Ant-3";
    v26[2] = [NSNumber numberWithInt:0];
    v25[3] = @"Ant-4b";
    v26[3] = [NSNumber numberWithInt:2];
    v18 = v26;
    v19 = v25;
    v20 = 4;
LABEL_34:
    [(WCM_CellularController *)self ConstructAntennaMapXpcMsg:v3 AntPhyIdxDict:v17 AntSpmiIdxDict:[NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:v20, xdict]];
    goto LABEL_35;
  }

  v51[0] = @"Ant-1";
  v52[0] = [NSNumber numberWithInt:2, v4];
  v51[1] = @"Ant-2a";
  v52[1] = [NSNumber numberWithInt:7];
  v51[2] = @"Ant-2b";
  v52[2] = [NSNumber numberWithInt:4];
  v51[3] = @"Ant-3";
  v52[3] = [NSNumber numberWithInt:1];
  v51[4] = @"Ant-4a";
  v52[4] = [NSNumber numberWithInt:5];
  v51[5] = @"Ant-4b";
  v52[5] = [NSNumber numberWithInt:3];
  v11 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:6];
  v49[0] = @"Ant-1";
  v50[0] = [NSNumber numberWithInt:4];
  v49[1] = @"Ant-2a";
  v50[1] = [NSNumber numberWithInt:6];
  v49[2] = @"Ant-2b";
  v50[2] = [NSNumber numberWithInt:6];
  v49[3] = @"Ant-3";
  v50[3] = [NSNumber numberWithInt:0];
  v49[4] = @"Ant-4a";
  v50[4] = [NSNumber numberWithInt:2];
  v49[5] = @"Ant-4b";
  v50[5] = [NSNumber numberWithInt:2];
  v12 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:6];
  for (j = 0; j != 10; ++j)
  {
    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v14, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", j);
    v15 = [(NSDictionary *)v11 allKeysForObject:[NSNumber numberWithInt:j]];
    if ([(NSArray *)v15 count])
    {
      v16 = [-[NSDictionary objectForKey:](v12 objectForKey:{-[NSArray objectAtIndexedSubscript:](v15, "objectAtIndexedSubscript:", 0)), "intValue"}];
    }

    else
    {
      v16 = 0;
    }

    xpc_dictionary_set_uint64(v14, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v16);
    xpc_array_append_value(v3, v14);
  }

LABEL_35:
  xpc_dictionary_set_value(xdict, "kWCMCellularSetWCI2TxAntMap_InformationSet", v3);
  [(WCM_CellularController *)self sendMessage:1215 withArgs:xdict];
  if (xpc_array_get_count(v3))
  {
    v21 = 0;
    do
    {
      value = xpc_array_get_value(v3, v21);
      xpc_release(value);
      ++v21;
    }

    while (v21 < xpc_array_get_count(v3));
  }

  xpc_release(v3);
  xpc_release(xdict);
}

- (void)setTxAntMapInHouseBB25A
{
  v3 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v4 = xpc_array_create(0, 0);
  v5 = xpc_dictionary_create(0, 0, 0);
  [WCM_Logging logLevel:4 message:@"BB25A AntMapping_1:Updating antenna map params to cellular modem"];
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2TxAntMap_Enable", 1uLL);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2TxAntMap_DefaultIdx", 0);
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:4 message:@"BB22WCI2AntDebug_: Enable ARBuffer mmW TX on bit"];
    xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Type7FRTwoTxEnable", 1uLL);
  }

  if (v3 == 24)
  {
    v11[0] = @"Ant-1";
    v12[0] = [NSNumber numberWithInt:1];
    v11[1] = @"Ant-2";
    v12[1] = [NSNumber numberWithInt:2];
    v11[2] = @"Ant-3";
    v12[2] = [NSNumber numberWithInt:3];
    v11[3] = @"Ant-4";
    v12[3] = [NSNumber numberWithInt:4];
    v11[4] = @"Ant-7";
    v12[4] = [NSNumber numberWithInt:7];
    v11[5] = @"Ant-8";
    v12[5] = [NSNumber numberWithInt:8];
    v11[6] = @"Ant-9";
    v12[6] = [NSNumber numberWithInt:9];
    v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:7];
    v10[0] = [NSNumber numberWithInt:0, @"Ant-1"];
    v9[1] = @"Ant-2";
    v10[1] = [NSNumber numberWithInt:2];
    v9[2] = @"Ant-3";
    v10[2] = [NSNumber numberWithInt:4];
    v9[3] = @"Ant-4";
    v10[3] = [NSNumber numberWithInt:6];
    v9[4] = @"Ant-7";
    v10[4] = [NSNumber numberWithInt:0];
    v9[5] = @"Ant-8";
    v10[5] = [NSNumber numberWithInt:2];
    v9[6] = @"Ant-9";
    v10[6] = [NSNumber numberWithInt:4];
    [(WCM_CellularController *)self ConstructAntennaMapXpcMsg:v4 AntPhyIdxDict:v6 AntSpmiIdxDict:[NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:7]];
    xpc_dictionary_set_value(v5, "kWCMCellularSetWCI2TxAntMap_InformationSet", v4);
    [(WCM_CellularController *)self sendMessage:1215 withArgs:v5];
  }

  else
  {
    xpc_dictionary_set_value(v5, "kWCMCellularSetWCI2TxAntMap_InformationSet", v4);
    [WCM_Logging logLevel:1 message:@"BB25A: platformID not defined to configure CellTxAntIdx over the bus"];
  }

  if (xpc_array_get_count(v4))
  {
    v7 = 0;
    do
    {
      value = xpc_array_get_value(v4, v7);
      xpc_release(value);
      ++v7;
    }

    while (v7 < xpc_array_get_count(v4));
  }

  xpc_release(v4);
  xpc_release(v5);
}

- (void)handleNetworkConfig_bb20:(id)a3
{
  v107[0] = &off_100271238;
  v107[1] = &off_100271250;
  v108[0] = @"LTE";
  v108[1] = @"TDSCDMA";
  v107[2] = &off_100271268;
  v107[3] = &off_100271280;
  v108[2] = @"GSM";
  v108[3] = @"CDMA";
  v107[4] = &off_100271298;
  v107[5] = &off_1002712B0;
  v108[4] = @"HDR";
  v108[5] = @"WCDMA";
  v107[6] = &off_1002712C8;
  v107[7] = &off_1002712E0;
  v108[6] = @"NR5G";
  v108[7] = @"UNKNOWN";
  v107[8] = &off_1002712F8;
  v108[8] = @"UNKNOWN";
  v5 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:9];
  v6 = WRM_IPTelephonyController;
  [WCM_Logging logLevel:3 message:@"handleNetworkConfig_bb20"];
  xdict = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (!xdict)
  {
    return;
  }

  v87 = +[WCM_PolicyManager singleton];
  v7 = &self->super.mProcessId + 1;
  if ([(WCM_CellularController *)self activeSubId])
  {
    v7 = (&self->_cellularInstance0.cellBandInfo + 1);
  }

  v8 = *(v7 + 3);
  v9 = *(v7 + 5);
  v10 = *(v7 + 6);
  v11 = *(v7 + 7);
  v82 = *(v7 + 8);
  v13 = *(v7 + 9);
  v12 = *(v7 + 10);
  v83 = v12;
  v84 = *(v7 + 4);
  v14 = [(WCM_CellularController *)self activeSubId];
  v80 = *(v7 + 11);
  v81 = v14;
  uint64 = xpc_dictionary_get_uint64(a3, "kSubId");
  v86 = &self->super.mProcessId + 1;
  v104 = &self->super.mProcessId + 1;
  if (uint64)
  {
    v104 = (&self->_cellularInstance0.cellBandInfo + 1);
  }

  v88 = self;
  bzero(v104, 0xAB8uLL);
  *(v104 + 12) = 0;
  *(v104 + 1) = 0u;
  *(v104 + 5) = 0u;
  *(v104 + 4) = 0u;
  *(v104 + 3) = 0u;
  *(v104 + 2) = 0u;
  *(v104 + 3) = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_ULBandInfo_CenterFreq");
  *(v104 + 4) = xpc_dictionary_get_double(xdict, "kWCMCellularNetworkConfiguration_ULBandInfo_BandWidth");
  *(v104 + 5) = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_DLBandInfo_CenterFreq");
  *(v104 + 6) = xpc_dictionary_get_double(xdict, "kWCMCellularNetworkConfiguration_DLBandInfo_BandWidth");
  *(v104 + 11) = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_TTDUL_DL");
  *(v104 + 12) = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_SubFrameFormat");
  *(v104 + 2) = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_FrameOffset");
  *(v104 + 52) = 0;
  v90 = (v104 + 6);
  *(v104 + 9) = *(v104 + 6);
  v16 = v104 + 36;
  *(v104 + 306) = 1;
  *(v104 + 10) = *(v104 + 10);
  v104[44] = *(v104 + 17);
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1000CA054;
  applier[3] = &unk_1002414A8;
  applier[4] = v104;
  xpc_dictionary_apply(xdict, applier);
  if (!xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_LTEBandInformationSet"))
  {
    if (xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCBandInformationSet"))
    {
      value = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCBandInformationSet");
      v104[32] = 64;
      v96 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCBandInformationSet");
      v97 = 0;
      v18 = 0;
      goto LABEL_24;
    }

    v19 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_TDSCDMABandInformationSet");
    if (v19)
    {
      value = v19;
      v18 = 0;
      v96 = 0;
      v97 = 0;
      v20 = 2;
    }

    else
    {
      v21 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_GSMBandInformationSet");
      if (v21)
      {
        value = v21;
        v18 = 0;
        v96 = 0;
        v97 = 0;
        v20 = 4;
      }

      else
      {
        v22 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_ONEXBandInformationSet");
        if (v22)
        {
          value = v22;
          v18 = 0;
          v96 = 0;
          v97 = 0;
          v20 = 8;
        }

        else
        {
          v23 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_HDRBandInformationSet");
          if (v23)
          {
            value = v23;
            v18 = 0;
            v96 = 0;
            v97 = 0;
            v20 = 16;
          }

          else
          {
            value = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_WCDMABandInformationSet");
            if (!value)
            {
              v104[32] = 127;
              [WCM_Logging logLevel:4 message:@"SUB%llu: Band Info parsing second pass result -- unknown band info set", uint64];
              v18 = 0;
              v97 = 0;
              goto LABEL_12;
            }

            v18 = 0;
            v96 = 0;
            v97 = 0;
            v20 = 32;
          }
        }
      }
    }

    v104[32] = v20;
    goto LABEL_24;
  }

  value = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_LTEBandInformationSet");
  if (!xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCBandInformationSet"))
  {
    v104[32] = 1;
    v97 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_LTEBandInformationSet");
    v18 = 0;
LABEL_12:
    v96 = 0;
    goto LABEL_24;
  }

  value = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCBandInformationSet");
  v18 = 1;
  v104[32] = 1;
  v97 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_LTEBandInformationSet");
  v96 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCBandInformationSet");
LABEL_24:
  v24 = v104[32];
  if (v24 == 1 || v24 == 64)
  {
    if (!v18)
    {
      if (v24 == 1 && xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_LTECarrierInformationSet"))
      {
        xarray = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_LTECarrierInformationSet");
      }

      else
      {
        xarray = 0;
      }

      if (v104[32] == 64 && xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCCarrierInformationSet"))
      {
        xarray = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCCarrierInformationSet");
      }

      v100 = 0;
      if (!value)
      {
        goto LABEL_105;
      }

      if (!xarray)
      {
        goto LABEL_105;
      }

      count = xpc_array_get_count(xarray);
      v26 = xpc_array_get_count(value);
      v100 = 0;
      if (v26 != count || !v26 || !count)
      {
        goto LABEL_105;
      }

      v91 = 0;
      v92 = 0;
      goto LABEL_61;
    }

    goto LABEL_31;
  }

  if (v18)
  {
LABEL_31:
    [WCM_Logging logLevel:4 message:@"BB20 bandinfotype is ENDC"];
    if (xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_LTECarrierInformationSet"))
    {
      v92 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_LTECarrierInformationSet");
    }

    else
    {
      v92 = 0;
    }

    if (xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCCarrierInformationSet"))
    {
      v91 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCCarrierInformationSet");
    }

    else
    {
      v91 = 0;
    }

    v100 = 0;
    if (!v92)
    {
      goto LABEL_105;
    }

    if (!v91)
    {
      goto LABEL_105;
    }

    if (!v97)
    {
      goto LABEL_105;
    }

    if (!v96)
    {
      goto LABEL_105;
    }

    v27 = xpc_array_get_count(v92);
    v28 = xpc_array_get_count(v91);
    v29 = xpc_array_get_count(v97);
    v30 = xpc_array_get_count(v96);
    v100 = 0;
    if (v30 != v28 || v29 != v27 || !v29 || !v27 || !v30 || !v28)
    {
      goto LABEL_105;
    }

    goto LABEL_60;
  }

  if (v24 != 127)
  {
    v91 = 0;
    v92 = 0;
LABEL_60:
    xarray = 0;
LABEL_61:
    v31 = xpc_array_get_count(value);
    if ((v18 & [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")]) == 1)
    {
      v32 = xpc_array_get_count(v97);
      v31 = xpc_array_get_count(v96) + v32;
      v98 = v32;
    }

    else
    {
      v98 = 0;
    }

    v103 = v31;
    if (v31)
    {
      v101 = 0;
      v100 = 0;
      v33 = 0;
      v94 = 0;
      v105 = 0;
      v85 = 0;
      v89 = 0;
      v102 = uint64;
      v99 = value;
      while (1)
      {
        if (v18)
        {
          if (v33 >= v98)
          {
            int64 = xpc_array_get_int64(v91, v33 - v98);
            v35 = xpc_array_get_value(v96, v33 - v98);
            v39 = v101;
            if ((v94 & 1) == 0)
            {
              v39 = v100;
            }

            v101 = v39;
            v36 = 64;
            v94 = 1;
          }

          else
          {
            int64 = xpc_array_get_int64(v92, v33);
            v35 = xpc_array_get_value(v97, v33);
            v36 = 1;
          }

          v105 = int64;
          if (!v35)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v36 = v104[32];
          v35 = xpc_array_get_value(value, v33);
          v37 = v104[32];
          if (v37 == 64 || v37 == 1)
          {
            v105 = xpc_array_get_int64(xarray, v33);
          }

          if (!v35)
          {
            goto LABEL_102;
          }
        }

        v40 = v18;
        v41 = v6;
        v42 = v5;
        v43 = xpc_dictionary_get_uint64(v35, "kWCMCellularNetworkConfiguration_BandInfoSet_DirectionMask");
        v44 = xpc_dictionary_get_int64(v35, "kWCMCellularNetworkConfiguration_BandInfoSet_CenterFreq");
        v45 = xpc_dictionary_get_double(v35, "kWCMCellularNetworkConfiguration_BandInfoSet_Bandwidth");
        v46 = "unknown";
        if (v43 == 2)
        {
          v46 = "downlink";
        }

        if (v43 == 1)
        {
          v47 = "uplink";
        }

        else
        {
          v47 = v46;
        }

        v48 = v41 + 98;
        v49 = v42;
        [(__objc2_class *)v48 logLevel:5 message:@"handleNetworkConfig: index(%ld) directionMask(%llu:%s) centerFreq(%lld) bandwidth(%lf) carrierId(%d) bandInfoType(%@) ", v33, v43, v47, v44, *&v45, v105, [(NSDictionary *)v42 objectForKeyedSubscript:[NSNumber numberWithUnsignedInt:v36]]];
        if (v44 < 1)
        {
          v6 = WRM_IPTelephonyController;
          v5 = v42;
          v18 = v40;
        }

        else
        {
          v18 = v40;
          if (v43 != 1)
          {
            value = v99;
            if (v43 == 2)
            {
              v55 = v44 / 1000.0;
              v56 = v45 / 1000000.0;
              v57 = (v104 + 10);
              if (v85)
              {
                v57 = (v104 + 18);
              }

              v58 = (v104 + 20);
              if ((v85 & 1) == 0)
              {
                v58 = (v104 + 12);
              }

              *v57 = v55;
              *v58 = v56;
              v59 = &v16[18 * v100];
              *(v59 + 2) = v55;
              *(v59 + 3) = v56;
              v59[16] = v36;
              v59[8] = v105;
              v100 = (v100 + 1);
              v85 = 1;
            }

            v6 = WRM_IPTelephonyController;
            v5 = v49;
            goto LABEL_102;
          }

          v50 = v44 / 1000.0;
          v51 = v45 / 1000000.0;
          v52 = (v104 + 6);
          if (v89)
          {
            v52 = (v104 + 14);
          }

          v53 = (v104 + 16);
          if ((v89 & 1) == 0)
          {
            v53 = (v104 + 8);
          }

          *v52 = v50;
          *v53 = v51;
          v54 = &v16[18 * v101];
          *v54 = v50;
          *(v54 + 1) = v51;
          v54[16] = v36;
          v54[8] = v105;
          ++v101;
          v89 = 1;
          v6 = WRM_IPTelephonyController;
          v5 = v49;
        }

        value = v99;
LABEL_102:
        ++v33;
        uint64 = v102;
        if (v103 == v33)
        {
          goto LABEL_105;
        }
      }
    }
  }

  v100 = 0;
LABEL_105:
  if (*(v104 + 104) == 1)
  {
    v60 = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_ULCPConfig");
    v61 = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_DLCPConfig");
    v62 = *v90;
    v63 = v88;
    if (*v90 != 0.0)
    {
      if (v60 != 255)
      {
        *v104 = v60;
      }

      if (v61 != 255)
      {
        *(v104 + 1) = v61;
      }
    }
  }

  else
  {
    *v104 = 0;
    *(v104 + 1) = 0;
    v62 = *(v104 + 3);
    v63 = v88;
  }

  *(v104 + 338) = v62;
  v64 = *(v104 + 4);
  v65 = *(v104 + 5);
  *(v104 + 339) = v64;
  *(v104 + 340) = v65;
  v66 = *(v104 + 6);
  *(v104 + 341) = v66;
  if (v18)
  {
    [&v6[98] logLevel:5 message:{@"handleNetworkConfig: SUB%lld: ENDC Network Config LTE PCC UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf) ", uint64, *&v62, v64, v65, v66, v79}];
  }

  else
  {
    [&v6[98] logLevel:5 message:{@"handleNetworkConfig: SUB%lld: %@ Network Config PCC UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf) ", uint64, -[NSDictionary objectForKeyedSubscript:](v5, "objectForKeyedSubscript:", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v104[32])), *(v104 + 3), *(v104 + 4), *(v104 + 5), *(v104 + 6)}];
  }

  [&v6[98] logLevel:5 message:@"handleNetworkConfig: SUB%lld: cellularConfig->bandInfoType = %d "], uint64, v104[32]);
  if (((v104[32] != 1) & ~v18) == 0)
  {
    [&v6[98] logLevel:5 message:{@"handleNetworkConfig: SUB%lld: TDD ULDLConfig=%lld, SFF=%lld ULCP=%lld DLCP=%lld FrameOffset=%lld", uint64, *(v104 + 11), *(v104 + 12), *v104, *(v104 + 1), *(v104 + 2)}];
  }

  *(v104 + 306) = v100;
  *(v104 + 2692) = 0;
  [&v6[98] logLevel:5 message:{@"handleNetworkConfig: SUB%lld: LTE/NR total valid entries =%d", uint64, v100}];
  if (v104[612])
  {
    v67 = 0;
    do
    {
      [&v6[98] logLevel:5 message:{@"handleNetworkConfig: SUB%lld: Entry index %ld ..UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf), carrierid(%d), bandInfoType(%@)", uint64, v67++, *v16, *(v16 + 1), *(v16 + 2), *(v16 + 3), v16[8], -[NSDictionary objectForKeyedSubscript:](v5, "objectForKeyedSubscript:", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v16[16]))}];
      v16 += 18;
    }

    while (v67 < v104[612]);
  }

  [(WCM_CellularController *)v63 setActiveSubId:[(WCM_CellularController *)v63 subSelector]];
  v68 = v86;
  if ([(WCM_CellularController *)v63 activeSubId])
  {
    v68 = (&v63->_cellularInstance0.cellBandInfo + 1);
  }

  [(WCM_CellularController *)v63 setActiveConfig:v68];
  [v87 evaluateULCARestrictions];
  v69 = v68 + 36;
  v70 = &v68[18 * v68[613] + 36];
  v71 = *v70;
  *(v68 + 10) = *(v70 + 16);
  *(v68 + 6) = v71;
  v68[32] = *(v70 + 64);
  v72 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  v73 = [(WCM_CellularController *)v63 activeSubId];
  if (v73)
  {
    v74 = 2 * (v73 == 1);
  }

  else
  {
    v74 = 1;
  }

  v68[684] = [v72 getBandInfoOnSlot:v74];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [(WCM_CellularController *)v63 submitAWDMetricsforNetworkConfiguration];
  v75 = *(v68 + 5);
  if (v75 == 0.0 || v9 != 0.0 && v75 != v9)
  {
    *(v68 + 14) = 0;
    *(v68 + 15) = 0;
  }

  v76 = *(v68 + 3);
  if (v76 != 0.0)
  {
    v77 = *(v68 + 4);
    *(v68 + 14) = v76;
    *(v68 + 15) = v77;
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] && (objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"EnableULCA") & 1) == 0)
  {
    if (v9 == *(v68 + 5) && v8 == *(v68 + 3) && v13 == *(v68 + 9) && v11 == *(v68 + 7) && v10 == *(v68 + 6) && v84 == *(v68 + 4) && v83 == *(v68 + 10) && v82 == *(v68 + 8) && v81 == [(WCM_CellularController *)v63 activeSubId]&& v80 == *(v68 + 11))
    {
      [&v6[98] logLevel:2 message:{@"handleNeteorkConfig: NW Config Parameters are the same, hence ignoring the network config command"}];
      return;
    }

    [&v6[98] logLevel:2 message:{@"handleNeteorkConfig: NW Config Parameters are NOT the same, hence handling the network config command"}];
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v78 = [(WCM_CellularController *)v63 clkAlgnTDDFreqCheck];
    *(v68 + 105) = v78;
    [&v6[98] logLevel:4 message:{@"handleNeteorkConfig: clkAlgnTDDFreqCheck: BT Clock Alignment enable = %d", v78}];
  }

  if ([objc_msgSend(v87 "activeCoexFeatures")])
  {
    [&v6[98] logLevel:3 message:{@"handleNeteorkConfig: Receive update of Cell Config, update critical carrier, wcmCellularCCSetToBB = %d", objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "wcmCellularCCSetToBB")}];
    [(WCM_CellularController *)v63 setAllCriticalCarriers];
  }

  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
}

@end