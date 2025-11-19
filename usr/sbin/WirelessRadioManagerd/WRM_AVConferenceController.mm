@interface WRM_AVConferenceController
- (WRM_AVConferenceController)init;
- (void)configureFaceTimeRTPMetricsReporting;
- (void)configureRTPMetricsReporting;
- (void)dealloc;
- (void)handleFaceTimeRTPMetrics:(id)a3;
- (void)handleMessage:(id)a3;
- (void)handlePeriodicRTPMetrics:(id)a3;
- (void)handleRTPEvent:(id)a3;
- (void)handleTelephonyRTPMetrics:(id)a3;
- (void)resetCumulativeRTPMetrics;
- (void)resetPeriodicRTPStats;
- (void)resetRTPMetrics;
@end

@implementation WRM_AVConferenceController

- (WRM_AVConferenceController)init
{
  v3.receiver = self;
  v3.super_class = WRM_AVConferenceController;
  return [(WCM_Controller *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WRM_AVConferenceController;
  [(WCM_Controller *)&v2 dealloc];
}

- (void)handleMessage:(id)a3
{
  uint64 = xpc_dictionary_get_uint64(a3, "kMessageId");
  if (!uint64)
  {
    uint64 = xpc_dictionary_get_int64(a3, "kMessageId");
    if (!uint64)
    {
      [WCM_Logging logLevel:23 message:@"Received AVConference Message  message-id: %lld", 0];
      return;
    }

    [WCM_Logging logLevel:17 message:@"Got a message with a INT64 instead of a UINT64. Please file a radar in Purple Radio Manager"];
  }

  [WCM_Logging logLevel:23 message:@"Received AVConference Message  message-id: %lld", uint64];
  if (uint64 == 201)
  {

    [(WRM_AVConferenceController *)self handleRTPEvent:a3];
  }

  else if (uint64 == 202)
  {

    [(WRM_AVConferenceController *)self handlePeriodicRTPMetrics:a3];
  }
}

- (void)resetPeriodicRTPStats
{
  [(WRM_AVConferenceController *)self setTotalErasures:0];
  [(WRM_AVConferenceController *)self setTotalPlayBacks:0];
  [(WRM_AVConferenceController *)self setTotalPlayBacksInSpeech:0];
  [(WRM_AVConferenceController *)self setErasuresInSpeech:0];
  [(WRM_AVConferenceController *)self setErasuresInSilence:0];
  [(WRM_AVConferenceController *)self setTotalPacketsReceived:0];
  [(WRM_AVConferenceController *)self setSpeechPacketsReceived:0];
  [(WRM_AVConferenceController *)self setSidPacketsReceived:0];
  [(WRM_AVConferenceController *)self setSilencePlayed:0];
  [(WRM_AVConferenceController *)self setPeriodicRtt:0];
  [(WRM_AVConferenceController *)self setFrameCountSinceRttReported:0];
  [(WRM_AVConferenceController *)self setTxPacketsCount:0];
  [(WRM_AVConferenceController *)self setFrameCountCountSinceTxPacketLossReported:0];
  [(WRM_AVConferenceController *)self setRxJitter:0];
  [(WRM_AVConferenceController *)self setTxJitter:0];
  [(WRM_AVConferenceController *)self setFrameCountSinceTxJitterUpdated:0];
  [(WRM_AVConferenceController *)self setNominalJitterBufferQueueSize:0];
  [(WRM_AVConferenceController *)self setTargetJitterBufferQueueSize:0];
  [(WRM_AVConferenceController *)self setTimeStampRTPMetrics:0];
  [(WRM_AVConferenceController *)self setPrimaryVideoPacketLossRate:0.0];
  [(WRM_AVConferenceController *)self setPrimaryAudioPacketLossRate:0.0];
  [(WRM_AVConferenceController *)self setTotalVideoPacketLossRate:0.0];
  [(WRM_AVConferenceController *)self setTotalAudioPacketLossRate:0.0];
  [(WRM_AVConferenceController *)self setPoorConnectionDetected:0];
  [(WRM_AVConferenceController *)self setMediaStallDetected:0];
  [(WRM_AVConferenceController *)self setDeltaVideoErasure:0.0];

  [(WRM_AVConferenceController *)self setTotalVideoErasure:0.0];
}

- (void)resetRTPMetrics
{
  [(WRM_AVConferenceController *)self setCallType:0];
  [(WRM_AVConferenceController *)self setRxPktLoss:0];
  [(WRM_AVConferenceController *)self setRxSpeechPktLoss:0];
  [(WRM_AVConferenceController *)self setRtt:0];
  [(WRM_AVConferenceController *)self setPrimaryVideoPacketLossRate:0.0];
  [(WRM_AVConferenceController *)self setPrimaryAudioPacketLossRate:0.0];
  [(WRM_AVConferenceController *)self setTotalVideoPacketLossRate:0.0];
  [(WRM_AVConferenceController *)self setTotalAudioPacketLossRate:0.0];
  [(WRM_AVConferenceController *)self setPoorConnectionDetected:0];
  [(WRM_AVConferenceController *)self setMediaStallDetected:0];

  [(WRM_AVConferenceController *)self setDeltaVideoErasure:0.0];
}

- (void)resetCumulativeRTPMetrics
{
  [(WRM_AVConferenceController *)self setCumRxPktLoss:0];
  [(WRM_AVConferenceController *)self setAvgRxPktLoss:0];
  [(WRM_AVConferenceController *)self setMovAvgRxPktLoss:0.0];
  [(WRM_AVConferenceController *)self setMovAvgIdleRxPktLoss:0.0];
  [(WRM_AVConferenceController *)self setMovAvgNominalJitterBufferDelay:0];
  [(WRM_AVConferenceController *)self setCumulativeNominalJitterBufferDelay:0];
  [(WRM_AVConferenceController *)self setAveragedNominalJitterBufferDelay:0];

  [(WRM_AVConferenceController *)self setRxRtpMetricsSampleCount:0];
}

- (void)configureRTPMetricsReporting
{
  [WCM_Logging logLevel:23 message:@"Configuring AVConference RTP metrics report"];
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3)
  {
    v4 = v3;
    [(WRM_AVConferenceController *)self setCallIdPrimaryLatteCall:0];
    [(WRM_AVConferenceController *)self setRtpMetricsReportingStarted:0];
    [(WRM_AVConferenceController *)self setIsActiveClientFaceTime:0];
    xpc_dictionary_set_uint64(v4, "kWRMAVConferenceMetricsConfig_PeriodicReportInterval", [objc_msgSend(+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")]);
    [(WCM_Controller *)self sendMessage:1102 withArgs:v4];

    xpc_release(v4);
  }
}

- (void)configureFaceTimeRTPMetricsReporting
{
  [WCM_Logging logLevel:23 message:@"Configuring AVConference RTP metrics report"];
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3)
  {
    v4 = v3;
    [(WRM_AVConferenceController *)self setCallIdPrimaryLatteCall:0];
    [(WRM_AVConferenceController *)self setRtpMetricsReportingStarted:0];
    [(WRM_AVConferenceController *)self setIsActiveClientFaceTime:1];
    v5 = [+[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton](WRM_FT_HandoverManager "WRM:"getiRATClientFromList:" FT:7HandoverManagerSingleton")];
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_uint64(v4, "kWRMAVConferenceMetricsConfig_PeriodicReportInterval", [objc_msgSend(+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")]);
      [v6 sendMessage:1102 withArgs:v4];
    }

    else
    {
      [WCM_Logging logLevel:29 message:@"Not sending FaceTimeCalling  metrics Configure request, FaceTimeCalling client not registered"];
    }

    xpc_release(v4);
  }
}

- (void)handleTelephonyRTPMetrics:(id)a3
{
  [WCM_Logging logLevel:23 message:@"Received message from AVConference client, params are %@", a3];
  [(WRM_AVConferenceController *)self setRxRtpMetricsSampleCount:[(WRM_AVConferenceController *)self rxRtpMetricsSampleCount]+ 1];
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (!value)
  {
    v8 = @"Unable to extract content of IMG message, nothing to report";
    goto LABEL_6;
  }

  v6 = value;
  uint64 = xpc_dictionary_get_uint64(value, "kWRMAVConferencePeriodicReport_CallID");
  if ([(WRM_AVConferenceController *)self rtpMetricsReportingStarted])
  {
    if (uint64 != [(WRM_AVConferenceController *)self callIdPrimaryLatteCall])
    {
      v8 = @"handleTelephonyRTPMetrics: discard WIFI RTP metrics call id not matching";
LABEL_6:

      [WCM_Logging logLevel:23 message:v8];
      return;
    }
  }

  else
  {
    [(WRM_AVConferenceController *)self setCallIdPrimaryLatteCall:uint64];
    [(WRM_AVConferenceController *)self setRtpMetricsReportingStarted:1];
  }

  v9 = xpc_dictionary_get_uint64(v6, "kWRMAVConferencePeriodicReport_ErasuresInSpeech");
  v10 = v9 - [(WRM_AVConferenceController *)self erasuresInSpeech];
  [(WRM_AVConferenceController *)self setErasuresInSpeech:v9];
  v11 = xpc_dictionary_get_uint64(v6, "kWRMAVConferencePeriodicReport_TotalPlaybacks");
  v12 = v11 - [(WRM_AVConferenceController *)self totalPlayBacks];
  [(WRM_AVConferenceController *)self setTotalPlayBacks:v11];
  [(WRM_AVConferenceController *)self setRxSpeechPktLoss:(v10 * 100.0 / v12)];
  if (xpc_dictionary_get_value(v6, "kWRMAVConferencePeriodicReport_LinkType") && !xpc_dictionary_get_uint64(v6, "kWRMAVConferencePeriodicReport_LinkType"))
  {
    [WCM_Logging logLevel:23 message:@"handleTelephonyRTPMetrics: Cellular RTP metrics"];
    [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    [(WRM_AVConferenceController *)self resetRTPMetrics];
    v25 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];

    dispatch_async(v25, &stru_10023E978);
  }

  else
  {
    v13 = xpc_dictionary_get_uint64(v6, "kWRMAVConferencePeriodicReport_TotalErasures");
    v29 = v13 - [(WRM_AVConferenceController *)self totalErasures];
    [(WRM_AVConferenceController *)self setTotalErasures:v13];
    v14 = xpc_dictionary_get_uint64(v6, "kWRMMAVConferencePeriodicReport_SIDPacketsReceived");
    v28 = v14 - [(WRM_AVConferenceController *)self sidPacketsReceived];
    [(WRM_AVConferenceController *)self setSidPacketsReceived:v14];
    v15 = (-7 * v28 + v29) & ~((-7 * v28 + v29) >> 63);
    v27 = v10;
    v16 = (v15 * 100.0 / v12);
    [(WRM_AVConferenceController *)self setRxPktLoss:v16];
    [(WRM_AVConferenceController *)self setCumRxPktLoss:[(WRM_AVConferenceController *)self cumRxPktLoss]+ v16];
    v17 = [(WRM_AVConferenceController *)self cumRxPktLoss];
    v26 = v12;
    v18 = (v17 / ([(WRM_AVConferenceController *)self rxRtpMetricsSampleCount]+ 0.000001));
    [(WRM_AVConferenceController *)self setAvgRxPktLoss:v18];
    [WCM_Logging logLevel:23 message:@"Rx periodic Average RTP packet loss=%lld", v18];
    [(WRM_AVConferenceController *)self movAvgRxPktLoss];
    v20 = ([(WRM_AVConferenceController *)self rxSpeechPktLoss]+ v19 * 19.0) / 20.0;
    [(WRM_AVConferenceController *)self setMovAvgRxPktLoss:v20];
    [(WRM_AVConferenceController *)self movAvgIdleRxPktLoss];
    [(WRM_AVConferenceController *)self setMovAvgIdleRxPktLoss:([(WRM_AVConferenceController *)self rxPktLoss]+ v21 * 19.0) / 20.0];
    [WCM_Logging logLevel:23 message:@"Rx periodic RTP metrics, Total Erasure=%lld, Total SID=%lld Total Played=%lld", v13, v14, v11];
    [(WRM_AVConferenceController *)self movAvgRxPktLoss];
    [WCM_Logging logLevel:23 message:@"Delta Erasure=%lld, Delta SID=%lld, RxPktLoss=%lld, Mov Avg=%f, Delta Erasure in Speech=%lld, Delta Played=%lld Per Pkt=%lld, MovAvg total:%f", v29, v28, v15, *&v20, v27, v26, v16, v22];
    v23 = xpc_dictionary_get_uint64(v6, "kWRMAVConferencePeriodicReport_NominalJitterBufferQueueSize");
    [(WRM_AVConferenceController *)self setNominalJitterBufferDelay:v23];
    [(WRM_AVConferenceController *)self setMovAvgNominalJitterBufferDelay:(v23 + 19 * [(WRM_AVConferenceController *)self movAvgNominalJitterBufferDelay]) / 0x14];
    [(WRM_AVConferenceController *)self setCumulativeNominalJitterBufferDelay:[(WRM_AVConferenceController *)self cumulativeNominalJitterBufferDelay]+ v23];
    [(WRM_AVConferenceController *)self setAveragedNominalJitterBufferDelay:([(WRM_AVConferenceController *)self cumulativeNominalJitterBufferDelay]/ ([(WRM_AVConferenceController *)self rxRtpMetricsSampleCount]+ 0.000001))];
    v24 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

    [v24 updateControllerState:a3];
  }
}

- (void)handleFaceTimeRTPMetrics:(id)a3
{
  v5 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  [WCM_Logging logLevel:23 message:@"Received message from AVConference client, params are %@", a3];
  [(WRM_AVConferenceController *)self setRxRtpMetricsSampleCount:[(WRM_AVConferenceController *)self rxRtpMetricsSampleCount]+ 1];
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (!value)
  {
    [(WRM_AVConferenceController *)self setDeltaVideoErasure:0.0];
    v8 = @"Unable to extract content of IMG message, nothing to report";
    goto LABEL_5;
  }

  v7 = value;
  if (xpc_dictionary_get_uint64(value, "kWRMAVConferencePeriodicReport_VideoPause"))
  {
    v8 = @"handleFaceTimeRTPMetrics: discard RTP metrics, video Paused";
LABEL_5:

    [WCM_Logging logLevel:23 message:v8];
    return;
  }

  if (xpc_dictionary_get_value(v7, "kWRMAVConferencePeriodicReport_LinkType"))
  {
    v9 = xpc_dictionary_get_uint64(v7, "kWRMAVConferencePeriodicReport_LinkType") == 0;
  }

  else
  {
    v9 = 0;
  }

  uint64 = xpc_dictionary_get_uint64(v7, "kWRMAVConferencePeriodicReport_CallID");
  if ([(WRM_AVConferenceController *)self rtpMetricsReportingStarted])
  {
    if (uint64 != [(WRM_AVConferenceController *)self callIdPrimaryLatteCall])
    {
      v8 = @"handleFaceTimeRTPMetrics: discard WIFI RTP metrics call id not matching";
      goto LABEL_5;
    }
  }

  else
  {
    [(WRM_AVConferenceController *)self setCallIdPrimaryLatteCall:uint64];
    [(WRM_AVConferenceController *)self setRtpMetricsReportingStarted:1];
  }

  v64 = v9;
  [(WRM_AVConferenceController *)self setCallType:xpc_dictionary_get_uint64(v7, "kWRMAVConferencePeriodicReport_CallType")];
  [(WRM_AVConferenceController *)self setReportedBandwitdh:xpc_dictionary_get_uint64(v7, "kWRMAVConferencePeriodicReport_BWEstimation")];
  [(WRM_AVConferenceController *)self setTargetBitRate:xpc_dictionary_get_uint64(v7, "kWRMAVConferencePeriodicReport_TargetBitRate")];
  [(WRM_AVConferenceController *)self setOneWayDealy:xpc_dictionary_get_uint64(v7, "kWRMAVConferencePeriodicReport_OneWayRelativeDelay")];
  [(WRM_AVConferenceController *)self setAdaptationPaceketLoss:xpc_dictionary_get_uint64(v7, "kWRMAVConferencePeriodicReport_AdaptationPacketLoss")];
  v11 = xpc_dictionary_get_uint64(v7, "PriVidRxCnt");
  v12 = [(WRM_AVConferenceController *)self primaryVideoPacketReceived];
  [(WRM_AVConferenceController *)self setPrimaryVideoPacketReceived:v11];
  v13 = xpc_dictionary_get_uint64(v7, "TotVidRxExpCnt");
  v14 = [(WRM_AVConferenceController *)self videoPacketExpected];
  [(WRM_AVConferenceController *)self setVideoPacketExpected:v13];
  v15 = [(WRM_AVConferenceController *)self callType];
  v16 = 0.0;
  v17 = 0.0;
  if (v15 == 2 && v13 != v14 && v11 != v12)
  {
    v17 = 1.0 - (v11 - v12) / ((v13 - v14) + 0.000001);
    *&v17 = v17;
  }

  [(WRM_AVConferenceController *)self setPrimaryVideoPacketLossRate:v17];
  v18 = xpc_dictionary_get_uint64(v7, "PriAudRxCnt");
  v19 = [(WRM_AVConferenceController *)self primaryAudioPacketReceived];
  [(WRM_AVConferenceController *)self setPrimaryAudioPacketReceived:v18];
  v20 = xpc_dictionary_get_uint64(v7, "TotAudRxExpCnt");
  v21 = v20 - [(WRM_AVConferenceController *)self audioPacketExpected];
  [(WRM_AVConferenceController *)self setAudioPacketExpected:v20];
  if (v18 != v19)
  {
    v22 = 1.0 - (v18 - v19) / (v21 + 0.000001);
    v16 = v22;
  }

  *&v22 = v16;
  [(WRM_AVConferenceController *)self setPrimaryAudioPacketLossRate:v22];
  v23 = xpc_dictionary_get_uint64(v7, "TotVidRxCnt");
  v24 = [(WRM_AVConferenceController *)self totalVideoPacketReceived];
  [(WRM_AVConferenceController *)self setTotalVideoPacketReceived:v23];
  v25 = [(WRM_AVConferenceController *)self callType];
  v26 = 0.0;
  v27 = 0.0;
  if (v25 == 2 && v13 != v14 && v23 != v24)
  {
    v27 = 1.0 - (v23 - v24) / ((v13 - v14) + 0.000001);
    *&v27 = v27;
  }

  [(WRM_AVConferenceController *)self setTotalVideoPacketLossRate:v27];
  v28 = xpc_dictionary_get_uint64(v7, "TotAudRxCnt");
  v29 = [(WRM_AVConferenceController *)self totalAudioPacketReceived];
  [(WRM_AVConferenceController *)self setTotalAudioPacketReceived:v28];
  if (v28 != v29)
  {
    v30 = 1.0 - (v28 - v29) / (v21 + 0.000001);
    v26 = v30;
  }

  *&v30 = v26;
  [(WRM_AVConferenceController *)self setTotalAudioPacketLossRate:v30];
  if (xpc_dictionary_get_value(v7, "VidErasure"))
  {
    [(WRM_AVConferenceController *)self setVideoErasureSupported:1];
    v31 = xpc_dictionary_get_uint64(v7, "VidErasure");
    [(WRM_AVConferenceController *)self totalVideoErasure];
    *&v33 = v31 - v32;
    [(WRM_AVConferenceController *)self setDeltaVideoErasure:v33];
    [(WRM_AVConferenceController *)self deltaVideoErasure];
    if (*&v34 > 10000.0)
    {
      [(WRM_AVConferenceController *)self setDeltaVideoErasure:0.0];
    }

    *&v34 = v31;
    [(WRM_AVConferenceController *)self setTotalVideoErasure:v34];
  }

  else
  {
    [(WRM_AVConferenceController *)self setVideoErasureSupported:0];
  }

  [(WRM_AVConferenceController *)self primaryVideoPacketLossRate];
  v36 = v35;
  [(WRM_AVConferenceController *)self primaryAudioPacketLossRate];
  v38 = v37;
  [(WRM_AVConferenceController *)self totalAudioPacketLossRate];
  v40 = v39;
  [(WRM_AVConferenceController *)self totalVideoPacketLossRate];
  v42 = v41;
  [(WRM_AVConferenceController *)self deltaVideoErasure];
  [WCM_Logging logLevel:23 message:@"Primary Video packet loss rate: %f, primary Audio packet loss rate: %f, total audio packet loss rate: %f, total video packet loss rate: %f, video erasure: %f", *&v36, *&v38, *&v40, *&v42, v43];
  if (!v64)
  {
    v44 = xpc_dictionary_get_uint64(v7, "kWRMAVConferencePeriodicReport_ErasuresInSpeech");
    v61 = v44 - [(WRM_AVConferenceController *)self erasuresInSpeech];
    [(WRM_AVConferenceController *)self setErasuresInSpeech:v44];
    v45 = xpc_dictionary_get_uint64(v7, "kWRMAVConferencePeriodicReport_TotalPlaybacks");
    v62 = v45 - [(WRM_AVConferenceController *)self totalPlayBacks];
    [(WRM_AVConferenceController *)self setTotalPlayBacks:v45];
    v46 = xpc_dictionary_get_uint64(v7, "kWRMAVConferencePeriodicReport_TotalErasures");
    v65 = v46 - [(WRM_AVConferenceController *)self totalErasures];
    [(WRM_AVConferenceController *)self setTotalErasures:v46];
    v47 = xpc_dictionary_get_uint64(v7, "kWRMMAVConferencePeriodicReport_SIDPacketsReceived");
    v63 = v47 - [(WRM_AVConferenceController *)self sidPacketsReceived];
    [(WRM_AVConferenceController *)self setSidPacketsReceived:v47];
    v48 = (-7 * v63 + v65) & ~((-7 * v63 + v65) >> 63);
    v49 = (v48 * 100.0 / v62);
    [(WRM_AVConferenceController *)self setRxPktLoss:v49];
    [(WRM_AVConferenceController *)self setRxSpeechPktLoss:(v61 * 100.0 / v62)];
    [(WRM_AVConferenceController *)self setCumRxPktLoss:[(WRM_AVConferenceController *)self cumRxPktLoss]+ v49];
    v50 = [(WRM_AVConferenceController *)self cumRxPktLoss];
    v51 = (v50 / ([(WRM_AVConferenceController *)self rxRtpMetricsSampleCount]+ 0.000001));
    [(WRM_AVConferenceController *)self setAvgRxPktLoss:v51];
    [WCM_Logging logLevel:23 message:@"Rx periodic Average RTP packet loss=%lld", v51];
    v52 = ([v5 faceTimeMovingAverageWindow] - 1);
    [(WRM_AVConferenceController *)self movAvgRxPktLoss];
    v54 = [(WRM_AVConferenceController *)self rxSpeechPktLoss]+ v52 * v53;
    v55 = v54 / [v5 faceTimeMovingAverageWindow];
    [(WRM_AVConferenceController *)self setMovAvgRxPktLoss:v55];
    [(WRM_AVConferenceController *)self movAvgIdleRxPktLoss];
    [(WRM_AVConferenceController *)self setMovAvgIdleRxPktLoss:([(WRM_AVConferenceController *)self rxPktLoss]+ v56 * 19.0) / 20.0];
    [WCM_Logging logLevel:23 message:@"Rx periodic RTP metrics, Total Erasure=%lld, Total SID=%lld Total Played=%lld", v46, v47, v45];
    [(WRM_AVConferenceController *)self movAvgRxPktLoss];
    [WCM_Logging logLevel:23 message:@"Delta Erasure=%lld, Delta SID=%lld, RxPktLoss=%lld, Mov Avg=%f, Delta Erasure in Speech=%lld, Delta Played=%lld Per Pkt=%lld, MovAvg total:%f", v65, v63, v48, *&v55, v61, v62, v49, v57];
    v58 = xpc_dictionary_get_uint64(v7, "kWRMAVConferencePeriodicReport_NominalJitterBufferQueueSize");
    [(WRM_AVConferenceController *)self setNominalJitterBufferDelay:v58];
    [(WRM_AVConferenceController *)self setMovAvgNominalJitterBufferDelay:(v58 + 19 * [(WRM_AVConferenceController *)self movAvgNominalJitterBufferDelay]) / 0x14];
    [(WRM_AVConferenceController *)self setCumulativeNominalJitterBufferDelay:[(WRM_AVConferenceController *)self cumulativeNominalJitterBufferDelay]+ v58];
    v59 = [(WRM_AVConferenceController *)self cumulativeNominalJitterBufferDelay];
    v60 = (v59 / ([(WRM_AVConferenceController *)self rxRtpMetricsSampleCount]+ 0.000001));

    [(WRM_AVConferenceController *)self setAveragedNominalJitterBufferDelay:v60];
  }
}

- (void)handleRTPEvent:(id)a3
{
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value)
  {
    v5 = value;
    [(WRM_AVConferenceController *)self setPoorConnectionDetected:xpc_dictionary_get_uint64(value, "AnyPoorCon") != 0];
    v6 = xpc_dictionary_get_uint64(v5, "IsMedStall") != 0;

    [(WRM_AVConferenceController *)self setMediaStallDetected:v6];
  }
}

- (void)handlePeriodicRTPMetrics:(id)a3
{
  if ([(WRM_AVConferenceController *)self isActiveClientFaceTime])
  {

    [(WRM_AVConferenceController *)self handleFaceTimeRTPMetrics:a3];
  }

  else
  {

    [(WRM_AVConferenceController *)self handleTelephonyRTPMetrics:a3];
  }
}

@end