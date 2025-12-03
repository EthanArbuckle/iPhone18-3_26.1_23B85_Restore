@interface WRM_IceClientDriver
- (WRM_IceClientDriver)init;
- (id).cxx_construct;
- (void)IBICallPsBandwidthEstimationIndHandle:(char *)handle size:(unsigned int)size;
- (void)IBICallPsWrmSdmLocationDBFetchInfoIndCbHandle:(char *)handle size:(unsigned int)size;
- (void)IBICallPsWrmSdmLocationDBInfoRegIndCbHandle:(char *)handle size:(unsigned int)size;
- (void)IBINetRadioSignalIndCbHandle:(char *)handle size:(unsigned int)size;
- (void)clientStarted;
- (void)notifyAVStatus:(int64_t)status :(unsigned __int8)a4 :(unsigned __int16)a5;
- (void)notifyBBCallState:(int64_t)state :(unsigned __int8)a4 :(unsigned __int8)a5 :(unsigned __int8)a6 :(unsigned __int8)a7;
- (void)notifyBBLockState:(int64_t)state :(unsigned __int8)a4;
- (void)notifyFTDupelicationState:(int64_t)state :(unsigned __int8)a4;
- (void)notifyStreamingEBHState:(int64_t)state :(unsigned __int8)a4;
- (void)querySdmLocationDBInfoReg:(int64_t)reg;
- (void)sendWrmSdmLocationDbInfo:(int64_t)info dbAvailable:(BOOL)available mcc:(unsigned int)mcc mnc:(unsigned int)mnc cellId:(unint64_t)id;
- (void)setBBSAState:(int64_t)state :(BOOL)a4 :(unsigned __int8)a5;
- (void)setHandlerLocationDbInfo;
- (void)setWrmSdmLocationDbPushOneEntryForCellType:(int64_t)type cellType:(int)cellType anchorCellBandwidth:(unsigned int)bandwidth mmWavePresent:(BOOL)present downlinkThroughput:(unsigned int)throughput sampleCount:(unsigned int)count deploymentCount:(unsigned int)deploymentCount;
- (void)startBandwidthEstimation:(int64_t)estimation;
- (void)stopBandwidthEstimation:(int64_t)estimation;
@end

@implementation WRM_IceClientDriver

- (WRM_IceClientDriver)init
{
  v7.receiver = self;
  v7.super_class = WRM_IceClientDriver;
  v2 = [(WRM_IceClientDriver *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.WRM_IceClientDriver", v3);
    fObj = v2->mQueue.fObj.fObj;
    v2->mQueue.fObj.fObj = v4;

    sub_100062200();
  }

  return 0;
}

- (void)clientStarted
{
  [WCM_Logging logLevel:22 message:@"ICE Client started"];
  *self->mLastIsSaDisabled = 0;
  ptr = self->mIceClient.__ptr_;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005DDEC;
  v12[3] = &unk_10023D9E8;
  v12[4] = self;
  sub_1000E4C5C(ptr, 494960640, v12);
  v4 = self->mIceClient.__ptr_;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005DDFC;
  v11[3] = &unk_10023D9E8;
  v11[4] = self;
  sub_1000E4C5C(v4, 629276672, v11);
  v5 = self->mIceClient.__ptr_;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005DE0C;
  v10[3] = &unk_10023D9E8;
  v10[4] = self;
  sub_1000E4C5C(v5, 227573760, v10);
  v6 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];
  v7 = v6;
  if (v6)
  {
    if ([v6 isSisSupportedOnICE])
    {
      [WCM_Logging logLevel:22 message:@"ICE Client startBandwidthEstimation"];
      [(WRM_IceClientDriver *)self startBandwidthEstimation:1];
      [(WRM_IceClientDriver *)self startBandwidthEstimation:2];
    }

    else
    {
      [WCM_Logging logLevel:22 message:@"ICE Client NOT startBandwidthEstimation"];
    }
  }

  v8 = +[WRM_BWEvalManager WRM_BWEvalManagerSingleton];
  v9 = v8;
  if (v8)
  {
    [v8 resetStreamingState:0];
  }

  [(WRM_IceClientDriver *)self setHandlerLocationDbInfo];
  self->mClientStarted = 1;
}

- (void)startBandwidthEstimation:(int64_t)estimation
{
  AriSdk::ARI_IBICallPsStartBandwidthEstimationReq_SDK::ARI_IBICallPsStartBandwidthEstimationReq_SDK(v5);
  v4 = sub_100087E60(estimation);
  sub_10001B2B0();
}

- (void)stopBandwidthEstimation:(int64_t)estimation
{
  AriSdk::ARI_IBICallPsStopBandwidthEstimationReq_SDK::ARI_IBICallPsStopBandwidthEstimationReq_SDK(v5);
  v4 = sub_100087E60(estimation);
  sub_10001B2B0();
}

- (void)notifyBBLockState:(int64_t)state :(unsigned __int8)a4
{
  v4 = a4;
  AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK::ARI_IBICallPsWrmSdmInfoReq_V2_SDK(v6);
  v5 = v4;
  sub_10001B2B0();
}

- (void)notifyBBCallState:(int64_t)state :(unsigned __int8)a4 :(unsigned __int8)a5 :(unsigned __int8)a6 :(unsigned __int8)a7
{
  AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK::ARI_IBICallPsWrmSdmInfoReq_V2_SDK(v9);
  v7 = 0;
  v8 = 0;
  sub_10001BA2C();
}

- (void)notifyAVStatus:(int64_t)status :(unsigned __int8)a4 :(unsigned __int16)a5
{
  AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK::ARI_IBICallPsWrmSdmInfoReq_V2_SDK(v7);
  v5 = 0;
  v6 = 0;
  sub_10005E688();
}

- (void)notifyFTDupelicationState:(int64_t)state :(unsigned __int8)a4
{
  v4 = a4;
  AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK::ARI_IBICallPsWrmSdmInfoReq_V2_SDK(v6);
  v5 = v4;
  sub_10001B2B0();
}

- (void)notifyStreamingEBHState:(int64_t)state :(unsigned __int8)a4
{
  v4 = a4;
  AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK::ARI_IBICallPsWrmSdmInfoReq_V2_SDK(v6);
  v5 = v4;
  sub_10001B2B0();
}

- (void)setBBSAState:(int64_t)state :(BOOL)a4 :(unsigned __int8)a5
{
  if (*(&self->mLocationDbInfo.sadcCellInfoList.__cap_ + state + 7) != a4)
  {
    *(&self->mLocationDbInfo.sadcCellInfoList.__cap_ + state + 7) = a4;
    AriSdk::ARI_IBICallPsWrmSAInfoReq_SDK::ARI_IBICallPsWrmSAInfoReq_SDK(v7);
    v6 = sub_100087E60(state);
    sub_10001B2B0();
  }
}

- (void)IBINetRadioSignalIndCbHandle:(char *)handle size:(unsigned int)size
{
  AriSdk::ARI_IBINetRadioSignalIndCb_SDK::ARI_IBINetRadioSignalIndCb_SDK(v15, handle, size);
  if (ice::isARIResponseValid(v15, 0x25820000, v4))
  {
    v5 = AriSdk::ARI_IBINetRadioSignalIndCb_SDK::unpack(v15);
    if (v5)
    {
      [WCM_Logging logLevel:22 message:@"Failed to unpack IBINetRadioSignalIndCb: %s (%u)", asString(), v5];
    }

    else
    {
      v6 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
      v7 = sub_1000524EC(*v16);
      [WCM_Logging logLevel:22 message:@"ICE IBINetRadioSignalIndCbHandle nInstance = %s", sub_100087E6C(v7)];
      [WCM_Logging logLevel:22 message:@"ICE IBINetRadioSignalIndCbHandle scell_rat = %s", sub_100087E90(*v17)];
      v8 = sub_1000524EC(*v16);
      v9 = *v17;
      v10 = sub_100088250(v15);
      v11 = sub_100088298(v15);
      if ((v10 & 0x100) != 0)
      {
        v12 = sub_1000882E0(v9);
        [WCM_Logging logLevel:22 message:@"ICE IBINetRadioSignalIndCbHandle %s = %fdBm", v12, sub_100088304(v10, v9)];
      }

      if ((v11 & 0x100) != 0)
      {
        v13 = sub_1000883A4(v9);
        [WCM_Logging logLevel:22 message:@"ICE IBINetRadioSignalIndCbHandle %s = %fdB", v13, sub_1000883C8(v11, v9)];
      }

      v14 = v10 & 0x100;
      if (v9 == 2)
      {
        if ((v14 & v11) != 0)
        {
          [v6 setServingCellRSCP:v8 forSim:{sub_100088304(v10, 2)}];
          [v6 setServingCellECIO:v8 forSim:{sub_1000883C8(v11, 2)}];
        }
      }

      else if (v9 == 8)
      {
        if ((v14 & v11) != 0)
        {
          [v6 setServingCellRSRP:v8 forSim:{sub_100088304(v10, 8)}];
          [v6 setNrRSRP:v8 forSim:{sub_100088304(v10, 8)}];
          [v6 setServingCellRSRQ:v8 forSim:{sub_1000883C8(v11, 8)}];
          [v6 setNrRSRQ:v8 forSim:{sub_1000883C8(v11, 8)}];
          [v6 evaluateCbrsInDualSimMode:0];
        }

        if (v18)
        {
          [WCM_Logging logLevel:22 message:@"ICE IBINetRadioSignalIndCbHandle NR cell_id = %llu, narfcn=%u, pci=%u, cell_grp_id=%u, sinr=%f", *(v18 + 60), *(v18 + 52), *(v18 + 56), *(v18 + 58), sub_1000881F4(*(v18 + 68))];
          [v6 setNrSNR:v8 forSim:sub_1000881F4(*(v18 + 68))];
        }
      }

      else if (v9 == 3 && (v14 & v11) != 0)
      {
        [v6 setServingCellRSRP:v8 forSim:{sub_100088304(v10, 3)}];
        [v6 setServingCellRSRQ:v8 forSim:{sub_1000883C8(v11, 3)}];
        [v6 evaluateCbrsInDualSimMode:0];
      }
    }
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"ICE ERROR: Invalid IBINetRadioSignalIndCbHandle received"];
  }

  AriSdk::ARI_IBINetRadioSignalIndCb_SDK::~ARI_IBINetRadioSignalIndCb_SDK(v15);
}

- (void)IBICallPsBandwidthEstimationIndHandle:(char *)handle size:(unsigned int)size
{
  AriSdk::ARI_IBICallPsBandwidthEstimationInd_SDK::ARI_IBICallPsBandwidthEstimationInd_SDK(v56, handle, size);
  if ((ice::isARIResponseValid(v56, 0xD908000, v5) & 1) == 0)
  {
    [WCM_Logging logLevel:22 message:@"ICE ERROR: Invalid IBICallPsBandwidthEstimationInd received"];
    goto LABEL_50;
  }

  [WCM_Logging logLevel:22 message:@"ICE IBICallPsBandwidthEstimationInd received"];
  v6 = AriSdk::ARI_IBICallPsBandwidthEstimationInd_SDK::unpack(v56);
  if (v6)
  {
    [WCM_Logging logLevel:22 message:@"Failed to unpack IBICallPsBandwidthEstimationInd: %s (%u)", asString(), v6];
    goto LABEL_50;
  }

  v55 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];
  v7 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  v54 = v7;
  v8 = sub_1000524EC(*v57);
  [WCM_Logging logLevel:22 message:@"ICE IBICallPsBandwidthEstimationInd nInstance = %s", sub_100087E6C(v8)];
  if (v58)
  {
    v10 = *v58;
    v9 = *(v58 + 4);
    v52 = *(v58 + 8);
    v50 = *(v58 + 12);
    v11 = *(v58 + 16);
    v12 = *(v58 + 20);
    v13 = *(v58 + 24);
    v14 = *(v58 + 28);
    v15 = sub_100087E90(*v58);
    [WCM_Logging logLevel:22 message:@"ICE IBICallPsBandwidthEstimationInd serv_cell_info_t2.primary_nb_rat=%s, primary_gNb_freq_range=%d, secondary_nb_rat=%s, secondary_gNb_freq_range =%d, mcc=%u, mnc=%u, tac=%u, cell_id=%lu", v15, v9, sub_100087E90(v52), v50, v11, v12, v13, v14];
    if (sub_1000524EC(*v57) == 1)
    {
      mSlotOneCellID = self->mSlotOneCellID;
      p_mSlotOneCellID = &self->mSlotOneCellID;
      v16 = mSlotOneCellID;
    }

    else
    {
      if (sub_1000524EC(*v57) != 2)
      {
        goto LABEL_12;
      }

      mSlotTwoCellID = self->mSlotTwoCellID;
      p_mSlotOneCellID = &self->mSlotTwoCellID;
      v16 = mSlotTwoCellID;
    }

    if (v16 != v14)
    {
      *p_mSlotOneCellID = v14;
      v22 = [NSString stringWithFormat:@"%u.%u.%u.%llu", v11, v12, v13, v14];
      v23 = [NSString stringWithFormat:@"%u.%u", v11, v12];
      v7 = v54;
      v24 = sub_1000524EC(*v57);
      [WCM_Logging logLevel:22 message:@"%s GCI: %@, Prefix: %@", sub_100087E6C(v24), v22, v23];
      [v54 updateGlobalCellID:*v57 gci:v22 cellprefix:{objc_msgSend(v23, "length")}];

      v19 = 1;
      goto LABEL_14;
    }

LABEL_12:
    v19 = 0;
    v7 = v54;
LABEL_14:
    if (v10 == 8)
    {
      v20 = 0;
      v25 = 3;
      v26 = 1;
    }

    else
    {
      v26 = 0;
      v20 = 1;
      if (v10 == 3)
      {
        v25 = 0;
        if (v52 == 8)
        {
          v20 = 0;
          v26 = (v50 - 1) < 2;
          if ((v50 - 1) >= 2)
          {
            v25 = 0;
          }

          else
          {
            v25 = v50;
          }
        }
      }

      else
      {
        v25 = 0;
      }
    }

    v27 = sub_1000524EC(*v57);
    [WCM_Logging logLevel:22 message:@"%s Cell Changed %d, nrCellType: %d", sub_100087E6C(v27), v19, v25];
    if ((v19 | v26) == 1)
    {
      [WCM_Logging logLevel:22 message:@"Callling updateCurrentRatInfo"];
      [v7 updateCurrentRatInfo:sub_1000524EC(*v57) currentNRCell:v25];
      [v55 evaluateWiFiVersusCell];
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_25;
  }

  v19 = 0;
  v20 = 1;
LABEL_25:
  if (v59)
  {
    v28 = *v59;
    v29 = v59[1];
    [WCM_Logging logLevel:22 message:@"ICE IBICallPsBandwidthEstimationInd configured_max_bw_t3.uplink_throughput=%u, downlink_throughput=%u", v28, v29];
    [v7 updateConfiguredMaxBW:sub_1000524EC(*v57) dlbw:v29 ulbw:v28];
  }

  if (v60)
  {
    v30 = *v60;
    v31 = v60[4];
    v32 = v60[5];
    v33 = v60[6];
    [WCM_Logging logLevel:22 message:@"ICE IBICallPsBandwidthEstimationInd downlink_bw_estimation_t4.allowed_rate=%ukbps, confidence_level=%u, split_lte_percent=%u, split_5g_percent=%u", v30, v31, v32, v33];
    [v7 updateDownlinkEstimatedBW:sub_1000524EC(*v57) bw:v30 conf:v31 lte:v32 nr:v33];
    [v55 forceActiveModeEval:1];
    [v55 evaluateWiFiVersusCell];
    [v55 forceActiveModeEval:0];
  }

  if (v61)
  {
    v34 = *v61;
    v35 = *(v61 + 4);
    v36 = *(v61 + 5);
    [WCM_Logging logLevel:22 message:@"ICE IBICallPsBandwidthEstimationInd uplink_bw_estimation_t5.allowed_rate=%ukbps, confidence_level=%u, queue_size=%u", v34, v35, v36];
    [v7 updateUplinkEstimatedBW:sub_1000524EC(*v57) bw:v34 conf:v35 queue:v36];
    [v55 forceActiveModeEval:1];
    [v55 evaluateWiFiVersusCell];
    [v55 forceActiveModeEval:0];
  }

  if (v62)
  {
    v37 = v62[1];
    v38 = *(v62 + 4);
    v39 = *(v62 + 6);
    v48 = v62[13];
    v49 = v62[12];
    v47 = *(v62 + 2);
    [WCM_Logging logLevel:22 message:@"ICE IBICallPsBandwidthEstimationInd connected_state_summary_t6.max_ue_rank=%u, max_network_mimo_layer=%u, max_scheduled_mimo_layer=%u, max_dl_modulation=%u, max_ul_modulation=%u, total_dl_mimo_layers=%u, total_num_cc=%u, aggregated_dl_bw=%umHz, aggregated_ul_bw=%umHz, nr5g_neighbor_cell=%u, rsrp=%ddBm, log_sinr_10xDb=%u", *v62, v37, v62[2], *(v62 + 1), v47, v49, v48, v38, *(v62 + 5), v39, *(v62 + 7), v62[32]];
    getWRMCellOutrankWifiBWThreshold = [v7 getWRMCellOutrankWifiBWThreshold];
    v51 = v20;
    switch(v39)
    {
      case 2u:
        v41 = 0;
        v42 = 3;
        v43 = 1;
        v40 = 1;
        break;
      case 3u:
        v40 = 0;
        v41 = 0;
        v43 = 1;
        v42 = 1;
        break;
      case 4u:
        v40 = 0;
        v41 = 0;
        v42 = 2;
        v43 = 1;
        break;
      default:
        v43 = 0;
        v40 = 0;
        v42 = 0;
        v41 = 1;
        break;
    }

    v44 = sub_1000524EC(*v57);
    [WCM_Logging logLevel:22 message:@"%s Cell Changed %d, nrCellType: %d", sub_100087E6C(v44), v19, v42];
    if ((v19 | v43) == 1)
    {
      [WCM_Logging logLevel:22 message:@"Calling updateConnectedStateSummary"];
      [v54 updateConnectedStateSummary:sub_1000524EC(*v57) neighberNRCell:v42 highrateIndicator:v38 >= getWRMCellOutrankWifiBWThreshold];
      [v55 evaluateWiFiVersusCell];
    }

    if ((v19 | v40 | v41) == 1)
    {
      [WCM_Logging logLevel:22 message:@"Calling updateHighRateLikely"];
      [v54 updateHighRateLikely:sub_1000524EC(*v57) highrateIndicator:v38 >= getWRMCellOutrankWifiBWThreshold];
    }

    v45 = +[WRM_BWEvalManager WRM_BWEvalManagerSingleton];
    v46 = v45;
    v7 = v54;
    if (v51)
    {
      [v45 updateQSHMetrics:v48 :v38 :v49 :v37];
      [v54 updateLTEBandwidth:sub_1000524EC(*v57) LTEBW:v38];
    }

    else
    {
      [v45 updateNRQSHMetrics:v38 :v37 :v47];
    }
  }

  if (v63)
  {
    [WCM_Logging logLevel:22 message:@"ICE IBICallPsBandwidthEstimationInd rlgs_info_t7.congested = %d", *v63];
    [v55 evaluateWiFiVersusCell];
  }

LABEL_50:
  AriSdk::ARI_IBICallPsBandwidthEstimationInd_SDK::~ARI_IBICallPsBandwidthEstimationInd_SDK(v56);
}

- (void)IBICallPsWrmSdmLocationDBFetchInfoIndCbHandle:(char *)handle size:(unsigned int)size
{
  AriSdk::ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK::ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK(v11, handle, size);
  if (ice::isARIResponseValid(v11, 0xDA58000, v4))
  {
    [WCM_Logging logLevel:22 message:@"ICE IBICallPsWrmSdmLocationDBFetchInfoIndCb received"];
    v5 = AriSdk::ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK::unpack(v11);
    if (v5)
    {
      [WCM_Logging logLevel:22 message:@"Failed to unpack IBICallPsWrmSdmLocationDBFetchInfoIndCb: %s (%u)", asString(), v5];
    }

    else
    {
      v6 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
      v7 = sub_1000524EC(*v12);
      v8 = *v13;
      v9 = v13[1];
      v10 = *v14;
      [WCM_Logging logLevel:22 message:@"ICE IBICallPsWrmSdmLocationDBFetchInfoIndCbHandle  nInstance=%s mcc=%u, mnc=%u, cell_id=%llu", sub_100087E6C(v7), v8, v9, *v14];
      [v6 fetchWrmSdmLocationDbInfoWithMcc:v8 Mnc:v9 CellId:v10 ForSim:v7];
    }
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"ICE ERROR: Invalid IBICallPsWrmSdmLocationDBFetchInfoIndCb received"];
  }

  AriSdk::ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK::~ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK(v11);
}

- (void)IBICallPsWrmSdmLocationDBInfoRegIndCbHandle:(char *)handle size:(unsigned int)size
{
  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK::ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK(v9, handle, size);
  if (ice::isARIResponseValid(v9, 0xDA50000, v4))
  {
    [WCM_Logging logLevel:22 message:@"ICE IBICallPsWrmSdmLocationDBInfoRegIndCb received"];
    v5 = AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK::unpack(v9);
    if (v5)
    {
      [WCM_Logging logLevel:22 message:@"Failed to unpack IBICallPsWrmSdmLocationDBInfoRegIndCb: %s (%u)", asString(), v5];
    }

    else
    {
      v6 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
      v7 = sub_1000524EC(*v10);
      v8 = *v11;
      [WCM_Logging logLevel:22 message:@"ICE IBICallPsWrmSdmLocationDBInfoRegIndCbHandle  locationDbRequired=%d", sub_100087E6C(v7), *v11 != 0];
      [v6 updateWrmSdmLocationDbInfoRegister:v8 != 0 forSim:v7];
    }
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"ICE ERROR: Invalid IBICallPsWrmSdmLocationDBInfoRegIndCb received"];
  }

  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK(v9);
}

- (void)setHandlerLocationDbInfo
{
  ptr = self->mIceClient.__ptr_;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005FC90;
  v8[3] = &unk_10023D9E8;
  v8[4] = self;
  sub_1000E4C5C(ptr, 228917248, v8);
  v4 = self->mIceClient.__ptr_;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005FCA0;
  v7[3] = &unk_10023D9E8;
  v7[4] = self;
  sub_1000E4C5C(v4, 228950016, v7);
  v5 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];
  v6 = v5;
  if (v5)
  {
    if ([v5 isSisSupportedOnICE])
    {
      [WCM_Logging logLevel:22 message:@"ICE Client querySdmLocationDBInfoReg"];
      [(WRM_IceClientDriver *)self querySdmLocationDBInfoReg:1];
      [(WRM_IceClientDriver *)self querySdmLocationDBInfoReg:2];
    }

    else
    {
      [WCM_Logging logLevel:22 message:@"ICE Client NOT querySdmLocationDBInfoReg as SIS not supported."];
    }
  }
}

- (void)querySdmLocationDBInfoReg:(int64_t)reg
{
  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegReq_SDK::ARI_IBICallPsWrmSdmLocationDBInfoRegReq_SDK(v5);
  v4 = sub_100087E60(reg);
  sub_10001B2B0();
}

- (void)setWrmSdmLocationDbPushOneEntryForCellType:(int64_t)type cellType:(int)cellType anchorCellBandwidth:(unsigned int)bandwidth mmWavePresent:(BOOL)present downlinkThroughput:(unsigned int)throughput sampleCount:(unsigned int)count deploymentCount:(unsigned int)deploymentCount
{
  v16 = sub_10005FF98(&self->mQueue.fObj.fObj);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005FFA0;
  block[3] = &unk_10023EF48;
  throughputCopy = throughput;
  countCopy = count;
  deploymentCountCopy = deploymentCount;
  bandwidthCopy = bandwidth;
  presentCopy = present;
  cellTypeCopy = cellType;
  block[4] = self;
  block[5] = type;
  dispatch_async(v16, block);
}

- (void)sendWrmSdmLocationDbInfo:(int64_t)info dbAvailable:(BOOL)available mcc:(unsigned int)mcc mnc:(unsigned int)mnc cellId:(unint64_t)id
{
  v13 = sub_10005FF98(&self->mQueue.fObj.fObj);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000604CC;
  block[3] = &unk_10023EFA0;
  availableCopy = available;
  mccCopy = mcc;
  mncCopy = mnc;
  block[4] = self;
  block[5] = id;
  block[6] = info;
  dispatch_async(v13, block);
}

- (id).cxx_construct
{
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  return self;
}

@end