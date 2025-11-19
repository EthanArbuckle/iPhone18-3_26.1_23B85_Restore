void sub_10001C99C(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v52 = a1;
  v49 = a2;
  v50 = a3;
  v8 = a4;
  context = objc_autoreleasePoolPush();
  v54 = v8;
  v53 = sub_10001E74C(v8);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v9 = [v8 objectForKeyedSubscript:v53];
  v10 = [v9 allKeys];

  v11 = [v10 countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v11)
  {
    v12 = *v64;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v64 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v63 + 1) + 8 * v13);
      if ([v14 containsString:@"Interface en"])
      {
        if ([v14 containsString:@"Peer 00:00:00:00:00:00"])
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v10 countByEnumeratingWithState:&v63 objects:v71 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v22 = v14;

    if (!v22)
    {
      goto LABEL_11;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v23 = [v54 objectForKeyedSubscript:v53];
    v24 = [v23 objectForKeyedSubscript:v22];
    v25 = [v24 allKeys];

    v26 = [v25 countByEnumeratingWithState:&v59 objects:v70 count:16];
    if (v26)
    {
      v27 = *v60;
LABEL_24:
      v28 = 0;
      while (1)
      {
        if (*v60 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v59 + 1) + 8 * v28);
        if ([v29 containsString:@"Link quality monitor measurements"])
        {
          break;
        }

        if (v26 == ++v28)
        {
          v26 = [v25 countByEnumeratingWithState:&v59 objects:v70 count:16];
          if (v26)
          {
            goto LABEL_24;
          }

          goto LABEL_30;
        }
      }

      v30 = v29;

      if (!v30)
      {

        objc_autoreleasePoolPop(context);
        goto LABEL_48;
      }

      sub_100035F68(v54, v52, @"WFAAWDLQM_cCA", v53, v22, v30, @"CCA (%) excluding own traffic");
      v31 = v54;
      v32 = v52;
      v33 = v53;
      v18 = v22;
      v34 = v30;
      v35 = objc_autoreleasePoolPush();
      v36 = sub_1000351BC(v31, v33, v18, v34, @"RSSI (dB)");
      if (v36)
      {
        IntegerValue = IOReportSimpleGetIntegerValue();
        v38 = [v32 fieldForKey:@"WFAAWDLQM_rSSI"];
        [v38 setInt64Value:IntegerValue];

        CFRelease(v36);
      }

      else
      {
        v47 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447490;
          v73 = "_Bool fillInt64FieldFromSimple(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
          v74 = 1024;
          v75 = 245;
          v76 = 2112;
          v77 = v33;
          v78 = 2112;
          v79 = v18;
          v80 = 2112;
          v81 = v34;
          v82 = 2112;
          v83 = @"RSSI (dB)";
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find %@ %@ %@ %@", buf, 0x3Au);
        }
      }

      objc_autoreleasePoolPop(v35);

      sub_100035F68(v31, v32, @"WFAAWDLQM_txPhyRate", v33, v18, v34, @"Avg Tx Phy Rate (Mbps)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_rxPhyRate", v33, v18, v34, @"Avg Rx Phy Rate (Mbps)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_txAMPDUDensity", v33, v18, v34, @"Mode Tx AMPDU Density");
      sub_100035F68(v31, v32, @"WFAAWDLQM_measurementDurMS", v33, v18, v34, @"Time since last measurement (ms)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_concurrentIntDurMS", v33, v18, v34, @"Concurrent interfaces active duration (ms)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_tVPMActiveDurationMS", v33, v18, v34, @"TVPM active duration (ms)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_phyTxActivityDurMS", v33, v18, v34, @"Actual Tx activity duration (ms)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_phyRxActivityDurMS", v33, v18, v34, @"Actual Rx activity duration (ms)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_txSubBytes", v33, v18, v34, @"Submitted Tx bytes");
      sub_100035F68(v31, v32, @"WFAAWDLQM_txCompBytes", v33, v18, v34, @"Successfully completed Tx bytes");
      sub_100035F68(v31, v32, @"WFAAWDLQM_txDelayBytes", v33, v18, v34, @"Delayed Tx bytes from last measurement");
      sub_100035F68(v31, v32, @"WFAAWDLQM_offChanDurMS", v33, v18, v34, @"Off channel duration (ms)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_txSubPkts", v33, v18, v34, @"Submitted Tx packet count");
      sub_100035F68(v31, v32, @"WFAAWDLQM_txCompPkts", v33, v18, v34, @"Successfully completed Tx packet (host reported) count");
      sub_100035F68(v31, v32, @"WFAAWDLQM_maxQueueFullDurMS", v33, v18, v34, @"Max Tx queue full duration (ms) across all AC's");
      sub_100035F68(v31, v32, @"WFAAWDLQM_avgTxLatencyMS", v33, v18, v34, @"Average Tx latency (ms)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_bTAntennaDurMS", v33, v18, v34, @"BT antenna shared duration (ms)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_outputThroughput", v33, v18, v34, @"Tx output throughput from WiFi chipset (Mbps)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_inputThroughput", v33, v18, v34, @"Tx input throughput from NW stack (Mbps)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_expectedThroughput", v33, v18, v34, @"Tx expected throughput for given channel conditions (Mbps)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_delayedThroughput", v33, v18, v34, @"Tx delayed throughput from last measurement period (Mbps)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_availWLANDurMS", v33, v18, v34, @"Available duration for WLAN activity (ms)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_availWLANTxDurMS", v33, v18, v34, @"Available duration for WLAN Tx activity (ms)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_availWLANRxDurMS", v33, v18, v34, @"Available duration for WLAN Rx activity (ms)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_txRetries", v33, v18, v34, @"Tx retry count");
      sub_100035F68(v31, v32, @"WFAAWDLQM_txFails", v33, v18, v34, @"Tx failure count");
      sub_100035F68(v31, v32, @"WFAAWDLQM_txFrames", v33, v18, v34, @"Tx packet (FW reported) count");
      sub_100035F68(v31, v32, @"WFAAWDLQM_rxOvflErrs", v33, v18, v34, @"Rx overflow errors");
      sub_100035F68(v31, v32, @"WFAAWDLQM_rxFCSErrs", v33, v18, v34, @"Rx FCS errors");
      sub_100035F68(v31, v32, @"WFAAWDLQM_rxPLCPErrs", v33, v18, v34, @"Rx PLCP errors");
      sub_100035F68(v31, v32, @"WFAAWDLQM_rxCRSErrs", v33, v18, v34, @"Rx CRS glitches");
      sub_100035F68(v31, v32, @"WFAAWDLQM_rxDupErrs", v33, v18, v34, @"Rx duplicate errors");
      sub_100035F68(v31, v32, @"WFAAWDLQM_rxReplayErrs", v33, v18, v34, @"Rx replay errors");
      sub_100035F68(v31, v32, @"WFAAWDLQM_rxDecryErrs", v33, v18, v34, @"Rx decrypt errors");
      sub_100035F68(v31, v32, @"WFAAWDLQM_rxRetries", v33, v18, v34, @"Rx retry count");
      sub_100035F68(v31, v32, @"WFAAWDLQM_rxGoodPlcps", v33, v18, v34, @"Rx good PLCP count");
      sub_100035F68(v31, v32, @"WFAAWDLQM_rxFrames", v33, v18, v34, @"Rx packet (FW reported) count");
      sub_100035F68(v31, v32, @"WFAAWDLQM_sNR", v33, v18, v34, @"SNR");
      sub_100035F68(v31, v32, @"WFAAWDLQM_txExpectedAMPDUDensity", v33, v18, v34, @"Expected Tx AMPDU density");
      sub_100035F68(v31, v32, @"WFAAWDLQM_rC1CoexDurationMS", v33, v18, v34, @"RC1 coex durations (ms)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_rC2CoexDurationMS", v33, v18, v34, @"RC2 coex durations (ms)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_lTECoexDurationMS", v33, v18, v34, @"LTE coex durations (ms)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_rxThroughput", v33, v18, v34, @"Rx throughput (Mbps)");
      sub_100035F68(v31, v32, @"WFAAWDLQM_aPTxDataStall", v33, v18, v34, @"AP Tx data stall");
      sub_100035F68(v31, v32, @"WFAAWDLQM_rxAmpduTxBaMismatch", v33, v18, v34, @"Rx AMPDU TxBA mismatch");
      sub_100035F68(v31, v32, @"WFAAWDLQM_symptomsFails", v33, v18, v34, @"Symptoms fails");
      sub_100035F68(v31, v32, @"WFAAWDLQM_is2GBand", v33, v18, v34, @"Is 2G band");
      sub_100035F68(v31, v32, @"WFAAWDLQM_isFGTraffic", v33, v18, v34, @"Is FG traffic");
      sub_100035F68(v31, v32, @"WFAAWDLQM_baselineThroughput", v33, v18, v34, @"Throughput test baseline");
      sub_100035F68(v31, v32, @"WFAAWDLQM_testThroughput", v33, v18, v34, @"Throughput test result");
      sub_100035F68(v31, v32, @"WFAAWDLQM_infraDutyCycle", v33, v18, v34, @"Infra duty cycle");
      sub_100035F68(v31, v32, @"WFAAWDLQM_lastScanReason", v33, v18, v34, @"Last scan reason");
      sub_100035F68(v31, v32, @"WFAAWDLQM_accessPointOUI", v33, v18, v34, @"AP MAC address");
      sub_100035F68(v31, v32, @"WFAAWDLQM_timeSinceLastRecovery", v33, v18, v34, @"Time since last recovery");

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v39 = [v31 objectForKeyedSubscript:v33];
      v40 = [v39 objectForKeyedSubscript:v18];
      v41 = [v40 allKeys];

      v42 = [v41 countByEnumeratingWithState:&v55 objects:v69 count:16];
      if (!v42)
      {
LABEL_42:

LABEL_43:
        v15 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v73 = "void slowWiFiDiagnosticsCounterSample(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
          v74 = 1024;
          v75 = 3093;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup with contains Link quality monitor measurements", buf, 0x12u);
        }

        goto LABEL_14;
      }

      v43 = *v56;
LABEL_36:
      v44 = 0;
      while (1)
      {
        if (*v56 != v43)
        {
          objc_enumerationMutation(v41);
        }

        v45 = *(*(&v55 + 1) + 8 * v44);
        if ([v45 containsString:@"Link quality monitor states"])
        {
          break;
        }

        if (v42 == ++v44)
        {
          v42 = [v41 countByEnumeratingWithState:&v55 objects:v69 count:16];
          if (v42)
          {
            goto LABEL_36;
          }

          goto LABEL_42;
        }
      }

      v46 = v45;

      if (!v46)
      {
        goto LABEL_43;
      }

      sub_100039190(v31, v32, @"WFAAWDLQM_txOutputBelowExpectedTrue", v33, v18, v46, @"Tx output throughput is below expected throughput", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_txOutputBelowExpectedFalse", v33, v18, v46, @"Tx output throughput is below expected throughput", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_txOutputBelowInputTrue", v33, v18, v46, @"Tx output throughput is below input throughput", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_txOutputBelowInputFalse", v33, v18, v46, @"Tx output throughput is below input throughput", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_txLowFrameCountTrue", v33, v18, v46, @"Tx frame count is too low for LQM analysis", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_txLowFrameCountFalse", v33, v18, v46, @"Tx frame count is too low for LQM analysis", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_rxLowFrameCountTrue", v33, v18, v46, @"Rx frame count is too low for LQM analysis", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_rxLowFrameCountFalse", v33, v18, v46, @"Rx frame count is too low for LQM analysis", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highTxLatencyTrue", v33, v18, v46, @"Tx latency is too high", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highTxLatencyFalse", v33, v18, v46, @"Tx latency is too high", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_lowTxPhyRateTrue", v33, v18, v46, @"Tx phy rate is below expectation", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_lowTxPhyRateFalse", v33, v18, v46, @"Tx phy rate is below expectation", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highTxPerTrue", v33, v18, v46, @"Tx PER is too high", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highTxPerFalse", v33, v18, v46, @"Tx PER is too high", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highTxRetriesTrue", v33, v18, v46, @"Tx retries are too high", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highTxRetriesFalse", v33, v18, v46, @"Tx retries are too high", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_txQueueFullTrue", v33, v18, v46, @"Atleast one tx queue is mostly full", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_txQueueFullFalse", v33, v18, v46, @"Atleast one tx queue is mostly full", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_lowTxAMPDUDensityTrue", v33, v18, v46, @"Tx AMPDU density is too low", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_lowTxAMPDUDensityFalse", v33, v18, v46, @"Tx AMPDU density is too low", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highRxRetriesTrue", v33, v18, v46, @"Rx retries are too high", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highRxRetriesFalse", v33, v18, v46, @"Rx retries are too high", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highRxPhyPERTrue", v33, v18, v46, @"Rx PHY PER is too high", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highRxPhyPERFalse", v33, v18, v46, @"Rx PHY PER is too high", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highRxFCSErrsTrue", v33, v18, v46, @"Rx FCS errors are too high", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highRxFCSErrsFalse", v33, v18, v46, @"Rx FCS errors are too high", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highRxOverflowsTrue", v33, v18, v46, @"Rx overflows are too high", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highRxOverflowsFalse", v33, v18, v46, @"Rx overflows are too high", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highRxDupsTrue", v33, v18, v46, @"Rx duplicates are too high", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highRxDupsFalse", v33, v18, v46, @"Rx duplicates are too high", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highRxReplaysTrue", v33, v18, v46, @"Rx replays are too high", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highRxReplaysFalse", v33, v18, v46, @"Rx replays are too high", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highRxDecryptErrsTrue", v33, v18, v46, @"Rx decrypt errors are too high", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highRxDecryptErrsFalse", v33, v18, v46, @"Rx decrypt errors are too high", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highRxDataPERTrue", v33, v18, v46, @"Rx data PER is too high", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_highRxDataPERFalse", v33, v18, v46, @"Rx data PER is too high", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_lowAvailWLANDurTrue", v33, v18, v46, @"Available WLAN duration is too low", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_lowAvailWLANDurFalse", v33, v18, v46, @"Available WLAN duration is too low", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_lowAvailWLANTxDurTrue", v33, v18, v46, @"Available WLAN Tx duration is too low", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_lowAvailWLANTxDurFalse", v33, v18, v46, @"Available WLAN Tx duration is too low", @"FALSE");
      sub_100039190(v31, v32, @"WFAAWDLQM_lowAvailWLANRxDurTrue", v33, v18, v46, @"Available WLAN Rx duration is too low", @"TRUE");
      sub_100039190(v31, v32, @"WFAAWDLQM_lowAvailWLANRxDurFalse", v33, v18, v46, @"Available WLAN Rx duration is too low", @"FALSE");

      objc_autoreleasePoolPop(context);
    }

    else
    {
LABEL_30:

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
LABEL_10:

LABEL_11:
    v15 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v54 objectForKeyedSubscript:v53];
      v17 = [v16 allKeys];
      *buf = 136446722;
      v73 = "void slowWiFiDiagnosticsCounterSample(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
      v74 = 1024;
      v75 = 3013;
      v76 = 2112;
      v77 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find group Interface en0 Peer 00:... we have %@", buf, 0x1Cu);
    }

    v18 = 0;
LABEL_14:

    objc_autoreleasePoolPop(context);
    v19 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v73 = "void slowWiFiDiagnosticsCounterSample(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
      v74 = 1024;
      v75 = 3166;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:Mandatory IOReporter TxOutputBelowExpected is missing", buf, 0x12u);
    }

    if (!*a5)
    {
      v67 = NSLocalizedFailureReasonErrorKey;
      v68 = @"WAErrorCodeTxOutputBelowExpectedMissing";
      v20 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      *a5 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9029 userInfo:v20];
    }

    v21 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v73 = "void slowWiFiDiagnosticsCounterSample(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
      v74 = 1024;
      v75 = 3170;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", buf, 0x12u);
    }
  }

LABEL_48:
}

void sub_10001E198(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v51 = a2;
  v43 = a3;
  v44 = a4;
  objc_initWeak(&location, a5);
  v48 = a7;
  v39 = a8;
  v41 = a9;
  v47 = objc_loadWeakRetained(&location);
  v42 = sub_10001E74C(v44);
  context = objc_autoreleasePoolPush();
  v14 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "nwPeerActivityIteratorblock", "", buf, 2u);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v15 = [v44 objectForKeyedSubscript:v42];
  obj = [v15 allKeys];

  v16 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (!v16)
  {

    v52 = 0;
LABEL_26:
    v35 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [v44 objectForKeyedSubscript:v42];
      v37 = [v36 allKeys];
      *buf = 136446722;
      v64 = "nwPeerActivityIteratorblock_block_invoke_2";
      v65 = 1024;
      v66 = 2765;
      v67 = 2112;
      v68 = v37;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find any nan0 peers %@", buf, 0x1Cu);
    }

    goto LABEL_29;
  }

  v17 = 0;
  v52 = 0;
  v49 = *v59;
  do
  {
    v50 = v16;
    for (i = 0; i != v50; i = i + 1)
    {
      if (*v59 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v58 + 1) + 8 * i);
      if ([v19 containsString:@"Interface nan0 Peer "])
      {
        v20 = [v19 substringFromIndex:{objc_msgSend(@"Interface nan0 Peer ", "length")}];
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v21 = [v51 fieldForKey:@"NWPA_peerStats"];
        v22 = [v21 repeatableValues];

        v23 = [v22 countByEnumeratingWithState:&v54 objects:v69 count:16];
        if (v23)
        {
          v24 = *v55;
LABEL_11:
          v25 = 0;
          while (1)
          {
            if (*v55 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v54 + 1) + 8 * v25);
            v27 = [v26 fieldForKey:@"NWAPS_hashID"];
            v28 = [v27 stringValue];
            v29 = [v20 isEqualToString:v28];

            if (v29)
            {
              break;
            }

            if (v23 == ++v25)
            {
              v23 = [v22 countByEnumeratingWithState:&v54 objects:v69 count:16];
              if (v23)
              {
                goto LABEL_11;
              }

              goto LABEL_17;
            }
          }

          v30 = v26;

          if (v30)
          {
            goto LABEL_20;
          }
        }

        else
        {
LABEL_17:
        }

        v30 = [v47 getNewMessageForKey:@"NWAPS" groupType:a6 forProcessWithToken:v48];
        v31 = [v30 fieldForKey:@"NWAPS_role"];
        [v31 setInt32Value:3];

        v32 = [v30 fieldForKey:@"NWAPS_hashID"];
        [v32 setStringValue:v20];

        v33 = [v51 fieldForKey:@"NWPA_peerStats"];
        [v33 addRepeatableSubMessageValue:v30];

LABEL_20:
        v53 = v52;
        sub_10001E980(v51, v30, v47, a6, v48, v43, v44, @"nan0", v20, &v53);
        v34 = v53;

        v17 = 1;
        v52 = v34;
      }
    }

    v16 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
  }

  while (v16);

  if (!v17)
  {
    goto LABEL_26;
  }

LABEL_29:
  v38 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v38))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "nwPeerActivityIteratorblock", "", buf, 2u);
  }

  objc_autoreleasePoolPop(context);
  v41[2](v41, v51, v52);

  objc_destroyWeak(&location);
}

id sub_10001E74C(void *a1)
{
  v1 = a1;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = [v1 allKeys];
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    v18 = *v24;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        if (([v7 containsString:@"WLAN"] & 1) != 0 || objc_msgSend(v7, "containsString:", @"IO80211ReporterProxy"))
        {
          v17 = v7;
LABEL_20:

          v14 = v7;
          goto LABEL_21;
        }

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v8 = [v1 objectForKeyedSubscript:v7];
        v9 = [v8 allKeys];

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v20;
          while (2)
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(v9);
              }

              if ([*(*(&v19 + 1) + 8 * j) containsString:@"WLAN"])
              {
                v15 = v7;

                goto LABEL_20;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v5 = v18;
      }

      v4 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
  v7 = v2;
LABEL_21:

  return v14;
}

void sub_10001E980(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v157 = a1;
  v16 = a2;
  objc_initWeak(&location, a3);
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v158 = a9;
  v21 = [NSString stringWithFormat:@"Interface %@ Peer %@", v20, v158];
  v163 = [NSString stringWithFormat:@"Interface %@", v20];
  v159 = v20;
  v161 = [NSString stringWithFormat:@"Interface %@ Chip", v20];
  val = objc_loadWeakRetained(&location);
  v175 = v16;
  objc_initWeak(&v195, val);
  v22 = v21;
  v166 = v17;
  v160 = v18;
  v174 = v19;
  v180 = +[NSMutableDictionary dictionary];
  v164 = objc_loadWeakRetained(&v195);
  v23 = sub_10001E74C(v174);
  v24 = v22;
  v167 = v23;
  v25 = [v174 objectForKeyedSubscript:v23];
  v26 = [v25 objectForKeyedSubscript:v24];
  v173 = v24;
  LODWORD(v24) = v26 == 0;

  if (v24)
  {
    v27 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [v174 objectForKeyedSubscript:v23];
      v29 = [v28 allKeys];
      *buf = 136446978;
      v205 = "void populateNWActivityPerACCompletions(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
      v206 = 1024;
      v207 = 622;
      v208 = 2112;
      v209 = v173;
      v210 = 2112;
      v211 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find group %@, we have %@", buf, 0x26u);
    }
  }

  v30 = [v174 objectForKeyedSubscript:v167];
  v31 = [v30 objectForKeyedSubscript:v173];
  v32 = v31 == 0;

  if (!v32)
  {
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v33 = [v174 objectForKeyedSubscript:v167];
    v34 = [v33 objectForKeyedSubscript:v173];
    v169 = [v34 allKeys];

    v35 = v169;
    v36 = [v169 countByEnumeratingWithState:&v191 objects:buf count:16];
    if (!v36)
    {
      goto LABEL_47;
    }

    v168 = *v192;
    while (1)
    {
      v37 = 0;
      v171 = v36;
      do
      {
        if (*v192 != v168)
        {
          objc_enumerationMutation(v35);
        }

        v178 = v37;
        v38 = *(*(&v191 + 1) + 8 * v37);
        context = objc_autoreleasePoolPush();
        if ([v38 isEqualToString:@"DataPath BE"] & 1) != 0 || (objc_msgSend(v38, "isEqualToString:", @"DataPath BK") & 1) != 0 || (objc_msgSend(v38, "isEqualToString:", @"DataPath VO") & 1) != 0 || (objc_msgSend(v38, "isEqualToString:", @"DataPath VI"))
        {
          v189 = 0u;
          v190 = 0u;
          v187 = 0u;
          v188 = 0u;
          v39 = [v175 fieldForKey:@"NWAPS_acCompletions"];
          v40 = [v39 repeatableValues];

          v41 = [v40 countByEnumeratingWithState:&v187 objects:v203 count:16];
          if (v41)
          {
            v42 = 0;
            v43 = *v188;
            do
            {
              for (i = 0; i != v41; i = i + 1)
              {
                if (*v188 != v43)
                {
                  objc_enumerationMutation(v40);
                }

                v45 = *(*(&v187 + 1) + 8 * i);
                if ([v38 containsString:@"DataPath BE"])
                {
                  v46 = [v45 fieldForKey:@"NWAPACTC_ac"];
                  v47 = [v46 int32Value] == 3;

                  if (v47)
                  {
                    goto LABEL_28;
                  }
                }

                if ([v38 containsString:@"DataPath BK"])
                {
                  v48 = [v45 fieldForKey:@"NWAPACTC_ac"];
                  v49 = [v48 int32Value] == 2;

                  if (v49)
                  {
                    goto LABEL_28;
                  }
                }

                if ([v38 containsString:@"DataPath VO"])
                {
                  v50 = [v45 fieldForKey:@"NWAPACTC_ac"];
                  v51 = [v50 int32Value] == 4;

                  if (v51)
                  {
                    goto LABEL_28;
                  }
                }

                if ([v38 containsString:@"DataPath VI"])
                {
                  v52 = [v45 fieldForKey:@"NWAPACTC_ac"];
                  v53 = [v52 int32Value] == 5;

                  if (v53)
                  {
LABEL_28:
                    [v180 setObject:v45 forKeyedSubscript:v38];
                    v42 = 1;
                  }
                }
              }

              v41 = [v40 countByEnumeratingWithState:&v187 objects:v203 count:16];
            }

            while (v41);

            if (v42)
            {
              goto LABEL_44;
            }
          }

          else
          {
          }

          v54 = [v164 getNewMessageForKey:@"NWAPACTC" groupType:a4 forProcessWithToken:v166];
          v55 = [v54 copy];
          [v180 setObject:v55 forKeyedSubscript:v38];

          if ([v38 containsString:@"DataPath BE"])
          {
            v56 = [v180 objectForKeyedSubscript:v38];
            v57 = [v56 fieldForKey:@"NWAPACTC_ac"];
            [v57 setInt32Value:3];
            goto LABEL_42;
          }

          if ([v38 containsString:@"DataPath BK"])
          {
            v56 = [v180 objectForKeyedSubscript:v38];
            v57 = [v56 fieldForKey:@"NWAPACTC_ac"];
            [v57 setInt32Value:2];
            goto LABEL_42;
          }

          if ([v38 containsString:@"DataPath VO"])
          {
            v56 = [v180 objectForKeyedSubscript:v38];
            v57 = [v56 fieldForKey:@"NWAPACTC_ac"];
            [v57 setInt32Value:4];
            goto LABEL_42;
          }

          if ([v38 containsString:@"DataPath VI"])
          {
            v56 = [v180 objectForKeyedSubscript:v38];
            v57 = [v56 fieldForKey:@"NWAPACTC_ac"];
            [v57 setInt32Value:5];
LABEL_42:
          }

          v58 = [v175 fieldForKey:@"NWAPS_acCompletions"];
          v59 = [v180 objectForKeyedSubscript:v38];
          [v58 addRepeatableSubMessageValue:v59];

LABEL_44:
          v60 = [v180 objectForKeyedSubscript:v38];
          sub_10003453C(v174, v60, @"NWAPACTC_success", v167, v173, v38, @"Total Successfull Completions");
          sub_10003453C(v174, v60, @"NWAPACTC_durSinceLastSuccessfulComp", v167, v173, v38, @"Duration Since Last Successful Completion");
          sub_10003453C(v174, v60, @"NWAPACTC_failedComp", v167, v173, v38, @"Total Failed Completions");
          sub_10003453C(v174, v60, @"NWAPACTC_durSinceLastFailedComp", v167, v173, v38, @"Duration Since Last Failed Completion");
          sub_10003453C(v174, v60, @"NWAPACTC_expiredComp", v167, v173, v38, @"Expired Completions");
          sub_10003453C(v174, v60, @"NWAPACTC_noAckComp", v167, v173, v38, @"NoACK Completions");
          sub_10003453C(v174, v60, @"NWAPACTC_otherErrComp", v167, v173, v38, @"OtherErr Completions");
          sub_10003453C(v174, v60, @"NWAPACTC_durSinceLastEnqueue", v167, v173, v38, @"Duration Since Last Enqueue");
          sub_10003453C(v174, v60, @"NWAPACTC_qeuedPackets", v167, v173, v38, @"Queued Packets Waiting For Completion");
          sub_10003453C(v174, v60, @"NWAPACTC_sinceLastEnqueueHowManyFailed", v167, v173, v38, @"Since Last Enqueue How Many Failed Completions");
          sub_10003453C(v174, v60, @"NWAPACTC_sinceLastEnqueueHowManySuccess", v167, v173, v38, @"Since Last Enqueue How Many Successfull Completions");
          sub_10003453C(v174, v60, @"NWAPACTC_sinceLastSuccessHowManyFailed", v167, v173, v38, @"Since Last Success How Many Failed Completions");
          sub_10003453C(v174, v60, @"NWAPACTC_durSinceLastEnqueueAtLastCheck", v167, v173, v38, @"Duration Since Last Enqueue At Last Check");
          sub_10003453C(v174, v60, @"NWAPACTC_successfulCompletionsAtLastCheck", v167, v173, v38, @"Successfull Completions Since Last Check");
          sub_10003453C(v174, v60, @"NWAPACTC_failedCompletionsAtLastCheck", v167, v173, v38, @"Failed Completions Since Last Check");
          sub_10003453C(v174, v60, @"NWAPACTC_dpsNotifications", v167, v173, v38, @"Data Path Stuck Notifications");
        }

        objc_autoreleasePoolPop(context);
        v35 = v169;
        v37 = v178 + 1;
      }

      while ((v178 + 1) != v171);
      v36 = [v169 countByEnumeratingWithState:&v191 objects:buf count:16];
      if (!v36)
      {
        goto LABEL_47;
      }
    }
  }

  v154 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
  {
    v155 = [v174 objectForKeyedSubscript:v167];
    v156 = [v155 allKeys];
    *buf = 136446722;
    v205 = "void populateNWActivityPerACCompletions(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
    v206 = 1024;
    v207 = 625;
    v208 = 2112;
    v209 = v156;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find group, we have %@", buf, 0x1Cu);
  }

  v35 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v205 = "void populateNWActivityPerACCompletions(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
    v206 = 1024;
    v207 = 706;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", buf, 0x12u);
  }

LABEL_47:

  objc_destroyWeak(&v195);
  v61 = [v175 fieldForKey:@"NWAPS_completions"];
  v62 = [v61 subMessageValue];

  v63 = sub_10001E74C(v174);
  v64 = [v174 objectForKeyedSubscript:v63];
  v65 = [v64 objectForKeyedSubscript:v173];
  v66 = [v65 objectForKeyedSubscript:@"TxCompletion Latency"];
  v67 = [v66 objectForKeyedSubscript:@"Completion Latency Be"];
  if (!v67)
  {
    v67 = [v174 objectForKeyedSubscript:v63];
    v68 = [v67 objectForKeyedSubscript:v173];
    v69 = [v68 objectForKeyedSubscript:@"TxCompletion Latency"];
    v70 = [v69 objectForKeyedSubscript:@"Completion Latency Bk"];
    if (!v70)
    {
      v70 = [v174 objectForKeyedSubscript:v63];
      v181 = [v70 objectForKeyedSubscript:v173];
      v179 = [v181 objectForKeyedSubscript:@"TxCompletion Latency"];
      v71 = [v179 objectForKeyedSubscript:@"Completion Latency Vo"];
      if (!v71)
      {
        contexta = [v174 objectForKeyedSubscript:v63];
        v172 = [contexta objectForKeyedSubscript:v173];
        v152 = [v172 objectForKeyedSubscript:@"TxCompletion Latency"];
        v153 = [v152 objectForKeyedSubscript:@"Completion Latency Vi"];
        v170 = v153 == 0;

        if (v170)
        {
          goto LABEL_70;
        }

        goto LABEL_53;
      }
    }
  }

LABEL_53:
  v72 = [v174 objectForKeyedSubscript:v63];
  v73 = [v72 objectForKeyedSubscript:v173];
  v74 = [v73 objectForKeyedSubscript:@"TxCompletion Latency"];
  v75 = [v74 objectForKeyedSubscript:@"Completion Latency Be"];

  if (v75)
  {
    sub_10003611C(v174, v175, val, a4, v166, @"NWAPS_txLatencyBEs", v63, v173, @"Completion Latency Be");
  }

  v76 = [v174 objectForKeyedSubscript:v63];
  v77 = [v76 objectForKeyedSubscript:v173];
  v78 = [v77 objectForKeyedSubscript:@"TxCompletion Latency"];
  v79 = [v78 objectForKeyedSubscript:@"Completion Latency Bk"];

  if (v79)
  {
    sub_10003611C(v174, v175, val, a4, v166, @"NWAPS_txLatencyBKs", v63, v173, @"Completion Latency Bk");
  }

  v80 = [v174 objectForKeyedSubscript:v63];
  v81 = [v80 objectForKeyedSubscript:v173];
  v82 = [v81 objectForKeyedSubscript:@"TxCompletion Latency"];
  v83 = [v82 objectForKeyedSubscript:@"Completion Latency Vo"];

  if (v83)
  {
    sub_10003611C(v174, v175, val, a4, v166, @"NWAPS_txLatencyVOs", v63, v173, @"Completion Latency Vo");
  }

  v84 = [v174 objectForKeyedSubscript:v63];
  v85 = [v84 objectForKeyedSubscript:v173];
  v86 = [v85 objectForKeyedSubscript:@"TxCompletion Latency"];
  v87 = [v86 objectForKeyedSubscript:@"Completion Latency Vi"];

  if (v87)
  {
    sub_10003611C(v174, v175, val, a4, v166, @"NWAPS_txLatencyVIs", v63, v173, @"Completion Latency Vi");
  }

  sub_10003453C(v174, v62, @"NWATC_success", v63, v173, @"Completions", @"Success");
  sub_10003453C(v174, v62, @"NWATC_expired", v63, v173, @"Completions", @"Expired");
  sub_10003453C(v174, v62, @"NWATC_nobuf", v63, v173, @"Completions", @"No Buffers");
  sub_10003453C(v174, v62, @"NWATC_noack", v63, v173, @"Completions", @"No ACK");
  sub_10003453C(v174, v62, @"NWATC_txfailure", v63, v173, @"Completions", @"Tx Failure");
  sub_10003453C(v174, v62, @"NWATC_noresources", v63, v173, @"Completions", @"No Resources");
  sub_10003453C(v174, v62, @"NWATC_ioerror", v63, v173, @"Completions", @"IO Error");
  sub_10003453C(v174, v62, @"NWATC_mbfree", v63, v173, @"Completions", @"MB Free");
  sub_10003453C(v174, v62, @"NWATC_mbfree", v63, v173, @"Completions", @"MB Free");
  sub_10003453C(v174, v62, @"NWATC_chipmodeerror", v63, v173, @"Completions", @"Chip Mode Error");
  sub_10003453C(v174, v62, @"NWATC_noremotepeer", v63, v173, @"Completions", @"No Remote Peer");
  sub_10003453C(v174, v62, @"NWATC_internalerror", v63, v173, @"Completions", @"Internal Error");
  v88 = [v174 objectForKeyedSubscript:v63];
  v89 = [v88 objectForKeyedSubscript:v173];
  v90 = [v89 objectForKeyedSubscript:@"RSSI"];
  v91 = [v90 objectForKeyedSubscript:@"Core 0 RSSI value"];

  if (v91)
  {
    sub_100038F68(v174, v175, @"NWAPS_rssiValue0", v63, v173, @"RSSI", @"Core 0 RSSI value");
  }

  v92 = [v174 objectForKeyedSubscript:v63];
  v93 = [v92 objectForKeyedSubscript:v173];
  v94 = [v93 objectForKeyedSubscript:@"RSSI"];
  v95 = [v94 objectForKeyedSubscript:@"Core 1 RSSI value"];

  if (v95)
  {
    sub_100038F68(v174, v175, @"NWAPS_rssiValue1", v63, v173, @"RSSI", @"Core 1 RSSI value");
  }

  if ([v159 isEqualToString:@"nan0"])
  {
    v96 = [v174 objectForKeyedSubscript:v63];
    v97 = [v96 objectForKeyedSubscript:v173];
    v98 = [v97 objectForKeyedSubscript:@"RSSI State"];
    v99 = [v98 objectForKeyedSubscript:@"RSSI State"];

    if (v99)
    {
      sub_10003474C(v174, v175, val, a4, v166, @"NWAPS_rssis", v63, v173, @"RSSI State", @"RSSI State");
    }

    v100 = [v174 objectForKeyedSubscript:v63];
    v101 = [v100 objectForKeyedSubscript:v173];
    v102 = [v101 objectForKeyedSubscript:@"RSSI"];
    v103 = [v102 objectForKeyedSubscript:@"RSSI value"];

    if (v103)
    {
      sub_100038F68(v174, v175, @"NWAPS_rssiValue", v63, v173, @"RSSI", @"RSSI value");
    }
  }

LABEL_70:
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v104 = [v174 objectForKeyedSubscript:v63];
  v105 = [v104 allKeys];

  v106 = [v105 countByEnumeratingWithState:&v182 objects:v202 count:16];
  if (v106)
  {
    v107 = *v183;
LABEL_72:
    v108 = 0;
    while (1)
    {
      if (*v183 != v107)
      {
        objc_enumerationMutation(v105);
      }

      v109 = *(*(&v182 + 1) + 8 * v108);
      if ([v109 isEqualToString:v163])
      {
        break;
      }

      if (v106 == ++v108)
      {
        v106 = [v105 countByEnumeratingWithState:&v182 objects:v202 count:16];
        if (v106)
        {
          goto LABEL_72;
        }

        goto LABEL_78;
      }
    }

    v110 = v109;

    if (!v110)
    {
      goto LABEL_101;
    }

    if ((sub_10003474C(v174, v175, val, a4, v166, @"NWAPS_ccas", v63, v163, @"Average CCA State", @"Interface Average CCA State") & 1) == 0)
    {
      v111 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v205 = "void populateNWActivityPeerStats(WAMessageAWD * _Nullable __strong, WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
        v206 = 1024;
        v207 = 794;
        _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "%{public}s::%d:Mandatory IOReporter Interface Average CCA State is missing", buf, 0x12u);
      }

      if (!*a10)
      {
        v200 = NSLocalizedFailureReasonErrorKey;
        v201 = @"WAErrorCodeCCAMissing";
        v112 = [NSDictionary dictionaryWithObjects:&v201 forKeys:&v200 count:1];
        *a10 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9021 userInfo:v112];
      }
    }

    sub_10003474C(v174, v175, val, a4, v166, @"NWAPS_snrs", v63, v163, @"LQM SNR State", @"LQM SNR State");
    if ((sub_10003474C(v174, v175, val, a4, v166, @"NWAPS_rssis", v63, v163, @"LQM RSSI State", @"LQM RSSI State") & 1) == 0)
    {
      v113 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v205 = "void populateNWActivityPeerStats(WAMessageAWD * _Nullable __strong, WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
        v206 = 1024;
        v207 = 802;
        _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_ERROR, "%{public}s::%d:Mandatory IOReporter LQM RSSI State is missing", buf, 0x12u);
      }

      if (!*a10)
      {
        v198 = NSLocalizedFailureReasonErrorKey;
        v199 = @"WAErrorCodeRSSIMissing";
        v114 = [NSDictionary dictionaryWithObjects:&v199 forKeys:&v198 count:1];
        *a10 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9022 userInfo:v114];
      }
    }

    sub_100034C04(v174, v175, val, a4, v166, 0, @"NWAPS_packets", v63, v163, @"Data Packets", @"Rx Packets");
    sub_100034C04(v174, v175, val, a4, v166, 3u, @"NWAPS_packets", v63, v163, @"Data Packets", @"BE Tx Packets");
    sub_100034C04(v174, v175, val, a4, v166, 2u, @"NWAPS_packets", v63, v163, @"Data Packets", @"BK Tx Packets");
    sub_100034C04(v174, v175, val, a4, v166, 5u, @"NWAPS_packets", v63, v163, @"Data Packets", @"VI Tx Packets");
    sub_100034C04(v174, v175, val, a4, v166, 4u, @"NWAPS_packets", v63, v163, @"Data Packets", @"VO Tx Packets");
    sub_100034C04(v174, v175, val, a4, v166, 1u, @"NWAPS_packets", v63, v163, @"Data Packets", @"Tx Packets");
    sub_100038F68(v174, v175, @"NWAPS_snrValue", v63, v163, @"LQM SNR", @"LQM SNR value");
    sub_10003453C(v174, v175, @"NWAPS_ccaValue", v63, v163, @"Average CCA", @"Interface Avgerage CCA");
    v115 = [v174 objectForKeyedSubscript:v63];
    v116 = [v115 objectForKeyedSubscript:v163];
    v117 = [v116 objectForKeyedSubscript:@"Noise Floor"];
    v118 = [v117 objectForKeyedSubscript:@"Noise Floor Value"];

    if (v118)
    {
      sub_100038F68(v174, v175, @"NWAPS_nfValue", v63, v163, @"Noise Floor", @"Noise Floor Value");
    }

    v119 = [v174 objectForKeyedSubscript:v63];
    v120 = [v119 objectForKeyedSubscript:v163];
    v121 = [v120 objectForKeyedSubscript:@"OFDM Desense"];
    v122 = [v121 objectForKeyedSubscript:@"OFDM Desense Value"];

    if (v122)
    {
      sub_10003453C(v174, v175, @"NWAPS_ofdmDesense", v63, v163, @"OFDM Desense", @"OFDM Desense Value");
    }

    v123 = [v174 objectForKeyedSubscript:v63];
    v124 = [v123 objectForKeyedSubscript:v163];
    v125 = [v124 objectForKeyedSubscript:@"IBSS CCA"];
    v126 = [v125 objectForKeyedSubscript:@"Interface IBSS CCA"];

    if (v126)
    {
      sub_10003453C(v174, v175, @"NWAPS_ibssCCA", v63, v163, @"IBSS CCA", @"Interface IBSS CCA");
      sub_10003453C(v174, v175, @"NWAPS_obssCCA", v63, v163, @"OBSS CCA", @"Interface OBSS CCA");
      sub_10003453C(v174, v175, @"NWAPS_interferenceCCA", v63, v163, @"Interference CCA", @"Interface Interference CCA");
    }

    sub_10003453C(v174, v175, @"NWAPS_qbssCCA", v63, v163, @"QBSS Values", @"Channel Utilization");
    sub_10003453C(v174, v175, @"NWAPS_qbssSTACount", v63, v163, @"QBSS Values", @"Station Count");
    if (!sub_100038F68(v174, v175, @"NWAPS_rssiValue", v63, v163, @"LQM RSSI", @"LQM RSSI value"))
    {
      v127 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v205 = "void populateNWActivityPeerStats(WAMessageAWD * _Nullable __strong, WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
        v206 = 1024;
        v207 = 835;
        _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, "%{public}s::%d:Mandatory IOReporter LQM RSSI value is missing", buf, 0x12u);
      }

      if (!*a10)
      {
        v196 = NSLocalizedFailureReasonErrorKey;
        v197 = @"WAErrorCodeRSSIMissing";
        v128 = [NSDictionary dictionaryWithObjects:&v197 forKeys:&v196 count:1];
        *a10 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9022 userInfo:v128];
        goto LABEL_104;
      }
    }
  }

  else
  {
LABEL_78:

LABEL_101:
    v128 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
    {
      v129 = [v174 objectForKeyedSubscript:v63];
      v130 = [v129 allKeys];
      *buf = 136446978;
      v205 = "void populateNWActivityPeerStats(WAMessageAWD * _Nullable __strong, WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
      v206 = 1024;
      v207 = 785;
      v208 = 2112;
      v209 = v163;
      v210 = 2112;
      v211 = v130;
      _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Failed to find group fullInterfaceString %@, we have %@", buf, 0x26u);
    }

    v110 = 0;
LABEL_104:
  }

  v131 = [v174 objectForKeyedSubscript:v63];
  v132 = [v131 objectForKeyedSubscript:v161];
  v133 = v132 == 0;

  if (v133)
  {
    v134 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
    {
      v135 = [v174 objectForKeyedSubscript:v63];
      v136 = [v135 allKeys];
      *buf = 136446978;
      v205 = "void populateNWActivityPeerStats(WAMessageAWD * _Nullable __strong, WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
      v206 = 1024;
      v207 = 843;
      v208 = 2112;
      v209 = v163;
      v210 = 2112;
      v211 = v136;
      _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Failed to find group fullInterfaceChipString %@, we have %@", buf, 0x26u);
    }
  }

  v137 = [v174 objectForKeyedSubscript:v63];
  v138 = [v137 objectForKeyedSubscript:v161];
  v139 = v138 == 0;

  if (!v139)
  {
    v140 = [v174 objectForKeyedSubscript:v63];
    v141 = [v140 objectForKeyedSubscript:v161];
    v142 = [v141 objectForKeyedSubscript:@"Rx Data Byte Counters"];

    if (v142)
    {
      sub_100034C04(v174, v175, val, a4, v166, 6u, @"NWAPS_bytes", v63, v161, @"Rx Data Byte Counters", @"SU MPDU Bytes");
      sub_100034C04(v174, v175, val, a4, v166, 8u, @"NWAPS_bytes", v63, v161, @"Rx Data Byte Counters", @"OFDMA MPDU Bytes");
      sub_100034C04(v174, v175, val, a4, v166, 0xAu, @"NWAPS_bytes", v63, v161, @"Rx Data Byte Counters", @"MU MIMO MPDU Bytes");
    }

    v143 = [v174 objectForKeyedSubscript:v63];
    v144 = [v143 objectForKeyedSubscript:v161];
    v145 = [v144 objectForKeyedSubscript:@"Tx Data Byte Counters"];

    if (v145)
    {
      sub_100034C04(v174, v175, val, a4, v166, 7u, @"NWAPS_bytes", v63, v161, @"Tx Data Byte Counters", @"SU MPDU Bytes");
      sub_100034C04(v174, v175, val, a4, v166, 9u, @"NWAPS_bytes", v63, v161, @"Tx Data Byte Counters", @"OFDMA MPDU Bytes");
    }

    v146 = [v174 objectForKeyedSubscript:v63];
    v147 = [v146 objectForKeyedSubscript:v161];
    v148 = [v147 objectForKeyedSubscript:@"Rx Data Frame Counters"];

    if (v148)
    {
      sub_100034F98(v174, v175, val, a4, v166, 6, @"NWAPS_packets", v63, v161, @"Rx Data Frame Counters", @"SU MPDU Data");
      sub_100034F98(v174, v175, val, a4, v166, 8, @"NWAPS_packets", v63, v161, @"Rx Data Frame Counters", @"MU MIMO MPDU Data");
      sub_100034F98(v174, v175, val, a4, v166, 10, @"NWAPS_packets", v63, v161, @"Rx Data Frame Counters", @"OFDMA MPDU Data");
    }

    v149 = [v174 objectForKeyedSubscript:v63];
    v150 = [v149 objectForKeyedSubscript:v161];
    v151 = [v150 objectForKeyedSubscript:@"Tx Data Frame Counters"];

    if (v151)
    {
      sub_100034F98(v174, v175, val, a4, v166, 7, @"NWAPS_packets", v63, v161, @"Tx Data Frame Counters", @"SU MPDU Data");
      sub_100034F98(v174, v175, val, a4, v166, 9, @"NWAPS_packets", v63, v161, @"Tx Data Frame Counters", @"OFDMA MPDU Data");
    }
  }

  objc_destroyWeak(&location);
}

void sub_100020A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id location)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a42);
  _Unwind_Resume(a1);
}

void sub_100020A80(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  objc_initWeak(&location, a5);
  v17 = a7;
  v29 = a8;
  v18 = a9;
  v19 = objc_loadWeakRetained(&location);
  v20 = [v14 fieldForKey:@"DPSCS_controllerStats"];
  v21 = [v20 subMessageValue];

  v32 = 0;
  sub_100017F44(v21, v19, a6, v17, v15, v16, &v32);
  v28 = v21;
  v22 = v15;
  v23 = v32;
  v24 = [v14 fieldForKey:@"DPSCS_peerStats"];
  v25 = [v24 subMessageValue];

  v26 = [v25 fieldForKey:@"NWAPS_hashID"];
  [v26 setStringValue:@"00:00:00:00:00:00"];

  v31 = v23;
  sub_10001E980(v14, v25, v19, a6, v17, v22, v16, v29, @"00:00:00:00:00:00", &v31);
  v27 = v31;

  v18[2](v18, v14, v27);
  objc_destroyWeak(&location);
}

void sub_100020C80(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  objc_initWeak(&location, a5);
  v17 = a7;
  v120 = a8;
  v119 = a9;
  v117 = objc_loadWeakRetained(&location);
  v18 = [NSString stringWithFormat:@"Interface %@ Peer 00:00:00:00:00:00", v120];
  v19 = v14;
  v20 = v18;
  v21 = v17;
  v22 = v15;
  v23 = v16;
  v24 = sub_10001E74C(v23);
  v25 = [v23 objectForKeyedSubscript:v24];
  v26 = [v25 objectForKeyedSubscript:v20];
  v27 = [v26 objectForKeyedSubscript:@"TxCompletion Snapshot BE"];

  if (v27)
  {
    v28 = [v19 fieldForKey:@"DPSS_txCompletionSnapshotBE"];
    v29 = [v28 subMessageValue];

    sub_10003453C(v23, v29, @"DPSPACTCS_success", v24, v20, @"TxCompletion Snapshot BE", @"Success");
    sub_10003453C(v23, v29, @"DPSPACTCS_dropped", v24, v20, @"TxCompletion Snapshot BE", @"Miscellaneous Drops");
    sub_10003453C(v23, v29, @"DPSPACTCS_noBuf", v24, v20, @"TxCompletion Snapshot BE", @"NoBuff");
    sub_10003453C(v23, v29, @"DPSPACTCS_noResources", v24, v20, @"TxCompletion Snapshot BE", @"NoResources");
    sub_10003453C(v23, v29, @"DPSPACTCS_noAck", v24, v20, @"TxCompletion Snapshot BE", @"NoAck");
    sub_10003453C(v23, v29, @"DPSPACTCS_chipModeError", v24, v20, @"TxCompletion Snapshot BE", @"ChipModeError");
    sub_10003453C(v23, v29, @"DPSPACTCS_expired", v24, v20, @"TxCompletion Snapshot BE", @"Expired");
    sub_10003453C(v23, v29, @"DPSPACTCS_txFailure", v24, v20, @"TxCompletion Snapshot BE", @"TxFailure");
    sub_10003453C(v23, v29, @"DPSPACTCS_firmwareFreePacket", v24, v20, @"TxCompletion Snapshot BE", @"FirmwareFreePacket");
    sub_10003453C(v23, v29, @"DPSPACTCS_maxRetries", v24, v20, @"TxCompletion Snapshot BE", @"MaxRetries");
    sub_10003453C(v23, v29, @"DPSPACTCS_forceLifetimeExp", v24, v20, @"TxCompletion Snapshot BE", @"ForceLifetimeExpired");

    v30 = 1;
  }

  else
  {
    v30 = 0;
  }

  v31 = [v23 objectForKeyedSubscript:v24];
  v32 = [v31 objectForKeyedSubscript:v20];
  v33 = [v32 objectForKeyedSubscript:@"TxCompletion Snapshot BK"];

  if (v33)
  {
    v34 = [v19 fieldForKey:@"DPSS_txCompletionSnapshotBK"];
    v35 = [v34 subMessageValue];

    sub_10003453C(v23, v35, @"DPSPACTCS_success", v24, v20, @"TxCompletion Snapshot BK", @"Success");
    sub_10003453C(v23, v35, @"DPSPACTCS_dropped", v24, v20, @"TxCompletion Snapshot BK", @"Miscellaneous Drops");
    sub_10003453C(v23, v35, @"DPSPACTCS_noBuf", v24, v20, @"TxCompletion Snapshot BK", @"NoBuff");
    sub_10003453C(v23, v35, @"DPSPACTCS_noResources", v24, v20, @"TxCompletion Snapshot BK", @"NoResources");
    sub_10003453C(v23, v35, @"DPSPACTCS_noAck", v24, v20, @"TxCompletion Snapshot BK", @"NoAck");
    sub_10003453C(v23, v35, @"DPSPACTCS_chipModeError", v24, v20, @"TxCompletion Snapshot BK", @"ChipModeError");
    sub_10003453C(v23, v35, @"DPSPACTCS_expired", v24, v20, @"TxCompletion Snapshot BK", @"Expired");
    sub_10003453C(v23, v35, @"DPSPACTCS_txFailure", v24, v20, @"TxCompletion Snapshot BK", @"TxFailure");
    sub_10003453C(v23, v35, @"DPSPACTCS_firmwareFreePacket", v24, v20, @"TxCompletion Snapshot BK", @"FirmwareFreePacket");
    sub_10003453C(v23, v35, @"DPSPACTCS_maxRetries", v24, v20, @"TxCompletion Snapshot BK", @"MaxRetries");
    sub_10003453C(v23, v35, @"DPSPACTCS_forceLifetimeExp", v24, v20, @"TxCompletion Snapshot BK", @"ForceLifetimeExpired");

    v30 = 1;
  }

  v36 = [v23 objectForKeyedSubscript:v24];
  v37 = [v36 objectForKeyedSubscript:v20];
  v38 = [v37 objectForKeyedSubscript:@"TxCompletion Snapshot VO"];

  if (v38)
  {
    v39 = [v19 fieldForKey:@"DPSS_txCompletionSnapshotVO"];
    v40 = [v39 subMessageValue];

    sub_10003453C(v23, v40, @"DPSPACTCS_success", v24, v20, @"TxCompletion Snapshot VO", @"Success");
    sub_10003453C(v23, v40, @"DPSPACTCS_dropped", v24, v20, @"TxCompletion Snapshot VO", @"Miscellaneous Drops");
    sub_10003453C(v23, v40, @"DPSPACTCS_noBuf", v24, v20, @"TxCompletion Snapshot VO", @"NoBuff");
    sub_10003453C(v23, v40, @"DPSPACTCS_noResources", v24, v20, @"TxCompletion Snapshot VO", @"NoResources");
    sub_10003453C(v23, v40, @"DPSPACTCS_noAck", v24, v20, @"TxCompletion Snapshot VO", @"NoAck");
    sub_10003453C(v23, v40, @"DPSPACTCS_chipModeError", v24, v20, @"TxCompletion Snapshot VO", @"ChipModeError");
    sub_10003453C(v23, v40, @"DPSPACTCS_expired", v24, v20, @"TxCompletion Snapshot VO", @"Expired");
    sub_10003453C(v23, v40, @"DPSPACTCS_txFailure", v24, v20, @"TxCompletion Snapshot VO", @"TxFailure");
    sub_10003453C(v23, v40, @"DPSPACTCS_firmwareFreePacket", v24, v20, @"TxCompletion Snapshot VO", @"FirmwareFreePacket");
    sub_10003453C(v23, v40, @"DPSPACTCS_maxRetries", v24, v20, @"TxCompletion Snapshot VO", @"MaxRetries");
    sub_10003453C(v23, v40, @"DPSPACTCS_forceLifetimeExp", v24, v20, @"TxCompletion Snapshot VO", @"ForceLifetimeExpired");

    v30 = 1;
  }

  v41 = [v23 objectForKeyedSubscript:v24];
  v42 = [v41 objectForKeyedSubscript:v20];
  v43 = [v42 objectForKeyedSubscript:@"TxCompletion Snapshot VI"];

  if (v43)
  {
    v44 = [v19 fieldForKey:@"DPSS_txCompletionSnapshotVI"];
    v45 = [v44 subMessageValue];

    sub_10003453C(v23, v45, @"DPSPACTCS_success", v24, v20, @"TxCompletion Snapshot VI", @"Success");
    sub_10003453C(v23, v45, @"DPSPACTCS_dropped", v24, v20, @"TxCompletion Snapshot VI", @"Miscellaneous Drops");
    sub_10003453C(v23, v45, @"DPSPACTCS_noBuf", v24, v20, @"TxCompletion Snapshot VI", @"NoBuff");
    sub_10003453C(v23, v45, @"DPSPACTCS_noResources", v24, v20, @"TxCompletion Snapshot VI", @"NoResources");
    sub_10003453C(v23, v45, @"DPSPACTCS_noAck", v24, v20, @"TxCompletion Snapshot VI", @"NoAck");
    sub_10003453C(v23, v45, @"DPSPACTCS_chipModeError", v24, v20, @"TxCompletion Snapshot VI", @"ChipModeError");
    sub_10003453C(v23, v45, @"DPSPACTCS_expired", v24, v20, @"TxCompletion Snapshot VI", @"Expired");
    sub_10003453C(v23, v45, @"DPSPACTCS_txFailure", v24, v20, @"TxCompletion Snapshot VI", @"TxFailure");
    sub_10003453C(v23, v45, @"DPSPACTCS_firmwareFreePacket", v24, v20, @"TxCompletion Snapshot VI", @"FirmwareFreePacket");
    sub_10003453C(v23, v45, @"DPSPACTCS_maxRetries", v24, v20, @"TxCompletion Snapshot VI", @"MaxRetries");
    sub_10003453C(v23, v45, @"DPSPACTCS_forceLifetimeExp", v24, v20, @"TxCompletion Snapshot VI", @"ForceLifetimeExpired");
    v46 = 0;
LABEL_10:

    goto LABEL_13;
  }

  if (!v30)
  {
    v95 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "void populateDPSPerACTxCompletionSnapshot(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
      v124 = 1024;
      v125 = 2882;
      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "%{public}s::%d:Mandatory IOReporter TxCompletion Snapshot XX not found", buf, 0x12u);
    }

    v122 = NSLocalizedFailureReasonErrorKey;
    *buf = @"WAErrorCodeTxCompletionSnapshotMissing";
    v45 = [NSDictionary dictionaryWithObjects:buf forKeys:&v122 count:1];
    v46 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9033 userInfo:v45];
    v96 = v46;
    goto LABEL_10;
  }

  v46 = 0;
LABEL_13:

  v118 = v46;
  v47 = v19;
  v48 = v21;
  v49 = v22;
  v50 = v23;
  v51 = [v47 fieldForKey:@"DPSS_btSnapshot"];
  v52 = [v51 subMessageValue];

  v53 = sub_10001E74C(v50);
  v54 = [v50 objectForKeyedSubscript:v53];
  v55 = [v54 objectForKeyedSubscript:@"BT Coex"];
  v56 = v55 == 0;

  if (v56)
  {
    v97 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      v98 = [v50 objectForKeyedSubscript:v53];
      v99 = [v98 allKeys];
      *buf = 136446722;
      *&buf[4] = "void populateDPSBTCoexSnapshot(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
      v124 = 1024;
      v125 = 2902;
      v126 = 2112;
      v127 = v99;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find group, we have %@", buf, 0x1Cu);
    }
  }

  else
  {
    v57 = [v50 objectForKeyedSubscript:v53];
    v58 = [v57 objectForKeyedSubscript:@"BT Coex"];
    v59 = [v58 objectForKeyedSubscript:@"Coex Snapshot"];
    v60 = v59 == 0;

    if (!v60)
    {
      sub_10003453C(v50, v52, @"DPSBTS_duration", v53, @"BT Coex", @"Coex Snapshot", @"BTDuration(s)");
      sub_10003453C(v50, v52, @"DPSBTS_use", v53, @"BT Coex", @"Coex Snapshot", @"BTUse(%)");
      sub_100035F68(v50, v52, @"DPSBTS_ts", v53, @"BT Coex", @"Coex Snapshot", @"TS(ms)");
      goto LABEL_16;
    }

    v97 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      v106 = [v50 objectForKeyedSubscript:v53];
      v107 = [v106 objectForKeyedSubscript:@"BT Coex"];
      v114 = [v107 allKeys];
      *buf = 136446722;
      *&buf[4] = "void populateDPSBTCoexSnapshot(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
      v124 = 1024;
      v125 = 2904;
      v126 = 2112;
      v127 = v114;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup, we have %@", buf, 0x1Cu);
    }
  }

  v108 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "void populateDPSBTCoexSnapshot(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
    v124 = 1024;
    v125 = 2913;
    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", buf, 0x12u);
  }

LABEL_16:
  v61 = v47;
  v62 = v48;
  v63 = v49;
  v64 = v50;
  v65 = [v61 fieldForKey:@"DPSS_awdlSnapshot"];
  v66 = [v65 subMessageValue];

  v67 = sub_10001E74C(v64);
  v68 = [v64 objectForKeyedSubscript:v67];
  v69 = [v68 objectForKeyedSubscript:@"AWDL Metrics"];
  v70 = v69 == 0;

  if (v70)
  {
    v100 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      v101 = [v64 objectForKeyedSubscript:v67];
      v102 = [v101 allKeys];
      *buf = 136446722;
      *&buf[4] = "void populateDPSAWDLSnapshot(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
      v124 = 1024;
      v125 = 2927;
      v126 = 2112;
      v127 = v102;
      _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find group, we have %@", buf, 0x1Cu);
    }
  }

  else
  {
    v71 = [v64 objectForKeyedSubscript:v67];
    v72 = [v71 objectForKeyedSubscript:@"AWDL Metrics"];
    v73 = [v72 objectForKeyedSubscript:@"AWDL Snapshot"];
    v74 = v73 == 0;

    if (!v74)
    {
      sub_10003453C(v64, v66, @"DPSAWDLS_duration", v67, @"AWDL Metrics", @"AWDL Snapshot", @"AWDLDuration(s)");
      sub_10003453C(v64, v66, @"DPSAWDLS_use", v67, @"AWDL Metrics", @"AWDL Snapshot", @"AWDLUse(%)");
      sub_10003453C(v64, v66, @"DPSAWDLS_sdb", v67, @"AWDL Metrics", @"AWDL Snapshot", @"SDB");
      sub_100035F68(v64, v66, @"DPSAWDLS_ts", v67, @"AWDL Metrics", @"AWDL Snapshot", @"TS(ms)");
      goto LABEL_19;
    }

    v100 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      v109 = [v64 objectForKeyedSubscript:v67];
      v110 = [v109 objectForKeyedSubscript:@"AWDL Metrics"];
      v115 = [v110 allKeys];
      *buf = 136446722;
      *&buf[4] = "void populateDPSAWDLSnapshot(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
      v124 = 1024;
      v125 = 2929;
      v126 = 2112;
      v127 = v115;
      _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup, we have %@", buf, 0x1Cu);
    }
  }

  v111 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "void populateDPSAWDLSnapshot(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
    v124 = 1024;
    v125 = 2939;
    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", buf, 0x12u);
  }

LABEL_19:
  v75 = v61;
  v76 = v62;
  v77 = v63;
  v78 = v64;
  v79 = [v75 fieldForKey:@"DPSS_nanSnapshot"];
  v80 = [v79 subMessageValue];

  v81 = sub_10001E74C(v78);
  v82 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447234;
    *&buf[4] = "void populateDPSNANSnapshot(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
    v124 = 1024;
    v125 = 2953;
    v126 = 2112;
    v127 = v81;
    v128 = 2112;
    v129 = @"NAN Metrics";
    v130 = 2112;
    v131 = @"NAN Snapshot";
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:In populateDPSNANSnapshot driver:%@ group:%@ subgroup:%@", buf, 0x30u);
  }

  v83 = [v78 objectForKeyedSubscript:v81];
  v84 = [v83 objectForKeyedSubscript:@"NAN Metrics"];
  v85 = v84 == 0;

  if (v85)
  {
    v103 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      v104 = [v78 objectForKeyedSubscript:v81];
      v105 = [v104 allKeys];
      *buf = 136446722;
      *&buf[4] = "void populateDPSNANSnapshot(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
      v124 = 1024;
      v125 = 2954;
      v126 = 2112;
      v127 = v105;
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find group (NAN Metrics), we have %@", buf, 0x1Cu);
    }

    goto LABEL_48;
  }

  v86 = [v78 objectForKeyedSubscript:v81];
  v87 = [v86 objectForKeyedSubscript:@"NAN Metrics"];
  v88 = [v87 objectForKeyedSubscript:@"NAN Snapshot"];
  v89 = v88 == 0;

  if (v89)
  {
    v103 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      v112 = [v78 objectForKeyedSubscript:v81];
      v113 = [v112 objectForKeyedSubscript:@"NAN Metrics"];
      v116 = [v113 allKeys];
      *buf = 136446722;
      *&buf[4] = "void populateDPSNANSnapshot(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
      v124 = 1024;
      v125 = 2956;
      v126 = 2112;
      v127 = v116;
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup (NAN Snapshot), we have %@", buf, 0x1Cu);
    }

LABEL_48:

    v90 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 136446466;
    *&buf[4] = "void populateDPSNANSnapshot(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
    v124 = 1024;
    v125 = 2967;
    v91 = "%{public}s::%d:Failed in populateDPSNANSnapshot";
    v92 = v90;
    v93 = OS_LOG_TYPE_ERROR;
    v94 = 18;
    goto LABEL_25;
  }

  sub_10003453C(v78, v80, @"DPSNANS_duration", v81, @"NAN Metrics", @"NAN Snapshot", @"NANDuration(s)");
  sub_10003453C(v78, v80, @"DPSNANS_use", v81, @"NAN Metrics", @"NAN Snapshot", @"NANUse(%)");
  sub_10003453C(v78, v80, @"DPSNANS_sdb", v81, @"NAN Metrics", @"NAN Snapshot", @"SDB");
  sub_100035F68(v78, v80, @"DPSNANS_ts", v81, @"NAN Metrics", @"NAN Snapshot", @"TS(ms)");
  v90 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "void populateDPSNANSnapshot(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
    v124 = 1024;
    v125 = 2963;
    v126 = 2112;
    v127 = v80;
    v91 = "%{public}s::%d:Updated nanSnapshot: %@";
    v92 = v90;
    v93 = OS_LOG_TYPE_DEFAULT;
    v94 = 28;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v92, v93, v91, buf, v94);
  }

LABEL_26:

  v119[2](v119, v75, v118);
  objc_destroyWeak(&location);
}

void sub_1000223CC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  objc_initWeak(&location, a5);
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = objc_loadWeakRetained(&location);
  v22 = 0;
  sub_10001C99C(v14, v17, v15, v16, &v22);
  v21 = v22;

  v19[2](v19, v14, v21);
  objc_destroyWeak(&location);
}

void sub_1000224E4(id a1)
{
  v1 = qword_10010DD20;
  qword_10010DD20 = &off_1001030E8;
}

void sub_1000224FC(id a1)
{
  v1 = qword_10010DD08;
  qword_10010DD08 = &off_100103100;
}

void sub_100022514(id a1)
{
  v1 = qword_10010DD30;
  qword_10010DD30 = &off_100103118;
}

void sub_10002252C(id a1)
{
  v1 = qword_10010DD38;
  qword_10010DD38 = &off_100103130;
}

void sub_100022544(id a1)
{
  v1 = qword_10010DD28;
  qword_10010DD28 = &off_100103148;
}

void sub_10002255C(id a1)
{
  v1 = qword_10010DD40;
  qword_10010DD40 = &off_100103160;
}

void sub_100022574(id a1)
{
  v1 = qword_10010DD00;
  qword_10010DD00 = &off_100102C10;
}

void sub_100022FA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _freeIORCaches];
  v3 = WALogCategoryDefaultHandle();
  v4 = v3;
  v5 = *(a1 + 40);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v5, "IOR freeIORCaches", "", v6, 2u);
  }
}

void sub_100023734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v8 - 40));
  _Unwind_Resume(a1);
}

void sub_100023754(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = [WeakRetained _runIOLegendTest];
}

void sub_100023E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100023E34(va);
  _Unwind_Resume(a1);
}

void sub_100023E34(uint64_t a1)
{
  v2 = *(a1 + 56);
}

void sub_1000274B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if ((*(*(a1 + 32) + 11) & 1) == 0)
  {
    [WeakRetained _unpersistIORObjects];
  }

  [v3 _signalPotentialNewIORChannels];
  v4 = WALogCategoryDefaultHandle();
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "IOR signalPotentialNewIORChannels", "", v7, 2u);
  }
}

id sub_100029660(uint64_t a1)
{
  v2 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[WAIOReporterMessagePopulator _delayedInvocationForRescan]_block_invoke";
    v9 = 1024;
    v10 = 1491;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:New Phy Type in use - rescanning", &v7, 0x12u);
  }

  [WAUtil incrementValueForKey:@"Rescan Reason: New Phy Count" inMutableDict:*(*(a1 + 32) + 80) onQueue:*(*(a1 + 32) + 48)];
  [*(*(a1 + 32) + 80) removeObjectForKey:@"Rescan Reason: New Phy Date"];
  v3 = *(*(a1 + 32) + 80);
  v4 = +[NSDate now];
  [v3 setObject:v4 forKey:@"Rescan Reason: New Phy Date"];

  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[WAIOReporterMessagePopulator _delayedInvocationForRescan]_block_invoke";
    v9 = 1024;
    v10 = 1496;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Running _buildOrRescanToBuildChannelAvailabilityCaches:kWAIORIOReporterSearchUnfoundAndMutablePredicates", &v7, 0x12u);
  }

  [*(a1 + 32) _buildOrRescanToBuildChannelAvailabilityCaches:1];
  return [*(a1 + 32) _iorPreparedForSampling:0];
}

void sub_1000298DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if ((*(*(a1 + 32) + 11) & 1) == 0)
  {
    [WeakRetained _unpersistIORObjects];
  }

  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[WAIOReporterMessagePopulator scanPredicatesNotYetFoundAndMutable]_block_invoke";
    v7 = 1024;
    v8 = 1530;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Running _scanPredicatesWithMode:kWAIORIOReporterSearchUnfoundAndMutablePredicates", &v5, 0x12u);
  }

  [v3 _scanPredicatesWithMode:1];
}

void sub_10002CCB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if ((*(*(a1 + 32) + 11) & 1) == 0)
  {
    [WeakRetained _unpersistIORObjects];
  }

  [WAUtil incrementValueForKey:@"External: Determine Channels Calls" inMutableDict:v3[10] onQueue:v3[6]];
  [v3 _findChannelsAndBuildChannelCaches:1];
  v4 = WALogCategoryDefaultHandle();
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "IOR determineChannelsPerIORPopulatable", "", v7, 2u);
  }
}

void sub_10002D0E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if ((*(*(a1 + 32) + 11) & 1) == 0)
  {
    [WeakRetained _unpersistIORObjects];
  }

  [v3 _prepopulateMessage:*(a1 + 40) forProcess:*(a1 + 48) groupType:*(a1 + 72) andReply:*(a1 + 56) isResubscribe:0];
  v4 = WALogCategoryDefaultHandle();
  v5 = v4;
  v6 = *(a1 + 80);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "IOR prepopulateMessage", "", v7, 2u);
  }
}

void sub_10002EBF0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  v7 = *(v5 + 48);
  v8 = a3;
  v9 = a2;
  [WAUtil incrementValueForKey:@"IOR Population via Dict" inMutableDict:v6 onQueue:v7];
  v10 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR WAIORPopNWActivity Iterator", "", buf, 2u);
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v11))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR WAIORPopNWActivity Reply", "", v14, 2u);
  }

  (*(*(a1 + 48) + 16))();
  v12 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v12))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR WAIORPopNWActivity Reply", "", v13, 2u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10002ED88(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  v7 = *(v5 + 48);
  v8 = a3;
  v9 = a2;
  [WAUtil incrementValueForKey:@"IOR Population via Dict" inMutableDict:v6 onQueue:v7];
  v10 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR WAIORPopNWPeerActivity Iterator", "", buf, 2u);
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v11))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR WAIORPopNWPeerActivity Reply", "", v14, 2u);
  }

  (*(*(a1 + 48) + 16))();
  v12 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v12))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR WAIORPopNWPeerActivity Reply", "", v13, 2u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10002EF20(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = *(v5 + 80);
  v7 = *(v5 + 48);
  v8 = a3;
  v9 = a2;
  [WAUtil incrementValueForKey:@"IOR Population via Dict" inMutableDict:v6 onQueue:v7];
  (*(a1[6] + 16))();

  v10 = a1[5];

  dispatch_group_leave(v10);
}

void sub_10002EFC4(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = *(v5 + 80);
  v7 = *(v5 + 48);
  v8 = a3;
  v9 = a2;
  [WAUtil incrementValueForKey:@"IOR Population via Dict" inMutableDict:v6 onQueue:v7];
  (*(a1[6] + 16))();

  v10 = a1[5];

  dispatch_group_leave(v10);
}

void sub_10002F068(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  v7 = *(v5 + 48);
  v8 = a3;
  v9 = a2;
  [WAUtil incrementValueForKey:@"IOR Population via Dict" inMutableDict:v6 onQueue:v7];
  v10 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v10))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR WAIORPopSlowWiFiDiagnosticsCounterSample Iterator", "", v11, 2u);
  }

  (*(*(a1 + 48) + 16))();
  dispatch_group_leave(*(a1 + 40));
}

void sub_10002F15C(id a1)
{
  v1 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136446466;
    v4 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]_block_invoke";
    v5 = 1024;
    v6 = 2296;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Population done", &v3, 0x12u);
  }

  v2 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v2))
  {
    LOWORD(v3) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR PopulationGroup", "", &v3, 2u);
  }
}

void sub_10002F2BC(id a1)
{
  v3 = +[WAUtil wifianalyticsTmpDirectory];
  v1 = [v3 path];
  v2 = qword_10010DD80;
  qword_10010DD80 = v1;
}

void sub_10002F3B8(uint64_t a1)
{
  v2 = [*(a1 + 32) getTmpDir];

  if (v2)
  {
    v5 = [*(a1 + 32) getTmpDir];
    v3 = [NSString stringWithFormat:@"%@/ch.out", v5];
    v4 = qword_10010DD88;
    qword_10010DD88 = v3;
  }
}

void sub_10002F4F8(uint64_t a1)
{
  v2 = [*(a1 + 32) getTmpDir];

  if (v2)
  {
    v5 = [*(a1 + 32) getTmpDir];
    v3 = [NSString stringWithFormat:@"%@/unavail.out", v5];
    v4 = qword_10010DD90;
    qword_10010DD90 = v3;
  }
}

void sub_10002F638(uint64_t a1)
{
  v2 = [*(a1 + 32) getTmpDir];

  if (v2)
  {
    v5 = [*(a1 + 32) getTmpDir];
    v3 = [NSString stringWithFormat:@"%@/usage.out", v5];
    v4 = qword_10010DD98;
    qword_10010DD98 = v3;
  }
}

void sub_10002FDE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFailNextCreateOrUpdateSample:1];
}

void sub_100030364(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained unpersistIORObjects];
}

void sub_1000313B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _persistIORObjects:*(a1 + 40)];
}

id sub_1000328AC(uint64_t a1)
{
  v2 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[WAIOReporterMessagePopulator _delayedInvocationForPersist]_block_invoke";
    v6 = 1024;
    v7 = 2775;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Performing scheduled persist", &v4, 0x12u);
  }

  result = [*(a1 + 32) _persistIORObjects:0];
  *(*(a1 + 32) + 9) = 0;
  return result;
}

void sub_100033A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v8 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_100033A94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100033AAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _getCachedUsage];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100033CE4(uint64_t a1)
{
  v2 = [*(a1 + 32) getPerPeerPopulator];
  [v2 updateTrackedPeers:*(a1 + 40) predicates:qword_10010DD08];
}

void sub_100033E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100033E98(uint64_t a1, uint64_t a2)
{
  v4 = IOReportChannelGetDriverName();
  v5 = IOReportChannelGetGroup();
  v6 = IOReportChannelGetSubGroup();
  v7 = IOReportChannelGetChannelName();
  v8 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v4];
  if (!v8)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    [*(*(*(a1 + 32) + 8) + 40) setValue:v9 forKey:v4];
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [v8 objectForKeyedSubscript:v5];
  if (!v10)
  {
LABEL_14:
    v11 = objc_alloc_init(NSMutableDictionary);
    [v9 setValue:v11 forKey:v5];
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [v10 objectForKeyedSubscript:v6];
  if (!v12)
  {
LABEL_15:
    v13 = objc_alloc_init(NSMutableDictionary);
    [v11 setValue:v13 forKey:v6];
    goto LABEL_16;
  }

  v13 = v12;
  v14 = [v12 objectForKeyedSubscript:v7];
  if (!v14)
  {
LABEL_16:
    [v13 setValue:a2 forKey:v7];
    goto LABEL_12;
  }

  v15 = v14;
  v16 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v20 = 136446722;
    v21 = "[WAIOReporterMessagePopulator _createStructuredIOReportDictionary:]_block_invoke";
    v22 = 1024;
    v23 = 3041;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:Existing subgroupDict %@", &v20, 0x1Cu);
  }

  v17 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = 136446722;
    v21 = "[WAIOReporterMessagePopulator _createStructuredIOReportDictionary:]_block_invoke";
    v22 = 1024;
    v23 = 3042;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:Existing channelDict %@", &v20, 0x1Cu);
  }

  v18 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v20 = 136447746;
    v21 = "[WAIOReporterMessagePopulator _createStructuredIOReportDictionary:]_block_invoke";
    v22 = 1024;
    v23 = 3043;
    v24 = 2112;
    v25 = v4;
    v26 = 2112;
    v27 = v5;
    v28 = 2112;
    v29 = v6;
    v30 = 2112;
    v31 = v7;
    v32 = 2112;
    v33 = a2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:how is there already a channel here? %@ %@ %@ %@ %@", &v20, 0x44u);
  }

LABEL_12:
  return 0;
}

void sub_10003453C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = objc_autoreleasePoolPush();
  v21 = sub_1000351BC(v13, v16, v17, v18, v19);
  if (v21)
  {
    v22 = v21;
    IntegerValue = IOReportSimpleGetIntegerValue();
    [v14 fieldForKey:v15];
    v33 = v19;
    v24 = v18;
    v25 = v17;
    v26 = v16;
    v27 = v15;
    v28 = v14;
    v29 = v20;
    v31 = v30 = v13;
    [v31 setUint32Value:IntegerValue];

    v13 = v30;
    v20 = v29;
    v14 = v28;
    v15 = v27;
    v16 = v26;
    v17 = v25;
    v18 = v24;
    v19 = v33;
    CFRelease(v22);
  }

  else
  {
    v32 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136447490;
      v35 = "_Bool fillUInt32FieldFromSimple(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
      v36 = 1024;
      v37 = 265;
      v38 = 2112;
      v39 = v16;
      v40 = 2112;
      v41 = v17;
      v42 = 2112;
      v43 = v18;
      v44 = 2112;
      v45 = v19;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find %@ %@ %@ %@", buf, 0x3Au);
    }
  }

  objc_autoreleasePoolPop(v20);
}

uint64_t sub_10003474C(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v38 = a1;
  v46 = a2;
  objc_initWeak(&location, a3);
  v44 = a5;
  v45 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a9;
  v42 = a10;
  val = objc_loadWeakRetained(&location);
  cf = sub_1000351BC(v38, v39, v40, v41, v42);
  if (cf)
  {
    v53 = 0;
    v16 = 0;
    while (v53 < IOReportStateGetCount())
    {
      context = objc_autoreleasePoolPush();
      v17 = IOReportStateGetNameForIndex();
      IOReportStateGetResidency();
      IOReportChannelGetUnit();
      IOReportScaleValue();
      v19 = v18;
      v51 = v46;
      objc_initWeak(&v59, val);
      v49 = v44;
      v20 = v17;
      v21 = v45;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v50 = v21;
      v22 = [v51 fieldForKey:?];
      v23 = [v22 repeatableValues];

      v24 = [v23 countByEnumeratingWithState:&v55 objects:buf count:16];
      if (v24)
      {
        v25 = *v56;
        while (2)
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v56 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v55 + 1) + 8 * i);
            v28 = [v27 fieldForKey:@"NWASB_state"];
            v29 = [v28 stringValue];
            v30 = [v29 isEqualToString:v20];

            if (v30)
            {
              v33 = v27;
              goto LABEL_14;
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v55 objects:buf count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      v31 = objc_loadWeakRetained(&v59);
      v32 = [v31 getNewMessageForKey:@"NWASB" groupType:a4 forProcessWithToken:v49];
      v33 = [v32 copy];

      v23 = [v51 fieldForKey:v50];
      [v23 addRepeatableSubMessageValue:v33];
LABEL_14:

      v34 = [v33 fieldForKey:@"NWASB_residentTime"];
      [v34 setUint64Value:v19];

      v35 = [v33 fieldForKey:@"NWASB_state"];
      [v35 setStringValue:v20];

      objc_destroyWeak(&v59);
      objc_autoreleasePoolPop(context);
      ++v53;
      v16 = 1;
    }

    CFRelease(cf);
  }

  else
  {
    v37 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136447490;
      v61 = "_Bool fillStatesFromState(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
      v62 = 1024;
      v63 = 402;
      v64 = 2112;
      v65 = v39;
      v66 = 2112;
      v67 = v40;
      v68 = 2112;
      v69 = v41;
      v70 = 2112;
      v71 = v42;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find %@ %@ %@ %@", buf, 0x3Au);
    }

    v16 = 0;
  }

  objc_destroyWeak(&location);
  return v16 & 1;
}

void sub_100034C04(void *a1, void *a2, void *a3, uint64_t a4, void *a5, unsigned int a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v36 = a1;
  v34 = a2;
  objc_initWeak(&location, a3);
  v35 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  context = objc_autoreleasePoolPush();
  v21 = sub_1000351BC(v36, v17, v18, v19, v20);
  if (v21)
  {
    IntegerValue = IOReportSimpleGetIntegerValue();
    v23 = v16;
    v24 = v20;
    v25 = [v23 characterAtIndex:{objc_msgSend(v23, "length") - 1}];
    if (v25 == [v24 characterAtIndex:{objc_msgSend(v24, "length") - 1}])
    {

      v26 = objc_loadWeakRetained(&location);
      sub_100035CF8(v34, v26, a4, v35, IntegerValue, a6, v23);
      goto LABEL_9;
    }

    v27 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v39 = "_Bool sanityCheckBetweenFieldAndChannelName(NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
      v40 = 1024;
      v41 = 124;
      v42 = 2112;
      v43 = v23;
      v44 = 2112;
      v45 = v24;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s::%d:Potential field / channel mismatch for %@ and %@", buf, 0x26u);
    }

    v26 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136447746;
      v39 = "_Bool fillNWTrafficStatsFromSimple(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, WiFiAnalyticsAWDWiFiNWActivityTcategory, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
      v40 = 1024;
      v41 = 313;
      v42 = 2112;
      v43 = v23;
      v44 = 2112;
      v45 = v17;
      v46 = 2112;
      v47 = v18;
      v48 = 2112;
      v49 = v19;
      v50 = 2112;
      v51 = v24;
      v28 = "%{public}s::%d:Sanity Failed field-channel mismatch %@ %@ %@ %@ %@";
      v29 = v26;
      v30 = 68;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
    }
  }

  else
  {
    v26 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136447490;
      v39 = "_Bool fillNWTrafficStatsFromSimple(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, WiFiAnalyticsAWDWiFiNWActivityTcategory, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
      v40 = 1024;
      v41 = 309;
      v42 = 2112;
      v43 = v17;
      v44 = 2112;
      v45 = v18;
      v46 = 2112;
      v47 = v19;
      v48 = 2112;
      v49 = v20;
      v28 = "%{public}s::%d:Failed to find %@ %@ %@ %@";
      v29 = v26;
      v30 = 58;
      goto LABEL_8;
    }
  }

LABEL_9:

  objc_autoreleasePoolPop(context);
  if (v21)
  {
    CFRelease(v21);
  }

  objc_destroyWeak(&location);
}

void sub_100034F98(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v29 = a1;
  v27 = a2;
  objc_initWeak(&location, a3);
  v28 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = sub_1000351BC(v29, v19, v20, v21, v22);
  if (v23)
  {
    IntegerValue = IOReportSimpleGetIntegerValue();
    v25 = objc_loadWeakRetained(&location);
    sub_100035CF8(v27, v25, a4, v28, IntegerValue, a6, v18);

    CFRelease(v23);
  }

  else
  {
    v26 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136447490;
      v32 = "_Bool fillNWTrafficStatsFromSimpleNoCheck(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, WiFiAnalyticsAWDWiFiNWActivityTcategory, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
      v33 = 1024;
      v34 = 332;
      v35 = 2112;
      v36 = v19;
      v37 = 2112;
      v38 = v20;
      v39 = 2112;
      v40 = v21;
      v41 = 2112;
      v42 = v22;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find %@ %@ %@ %@", buf, 0x3Au);
    }
  }

  objc_destroyWeak(&location);
}

void *sub_1000351BC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = v9;
  v14 = v12;
  v15 = a5;
  v16 = [v13 objectForKeyedSubscript:v10];
  v17 = [v16 objectForKeyedSubscript:v11];
  v18 = [v17 objectForKeyedSubscript:v14];
  v87 = v15;
  v19 = [v18 objectForKeyedSubscript:v15];

  if (!v19)
  {
    goto LABEL_59;
  }

  v20 = [v13 objectForKeyedSubscript:v10];

  if (!v20)
  {
    v32 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v33 = [v13 allKeys];
      *buf = 136446978;
      v106 = "IOReportChannelRef  _Nullable getChRefFrom(NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
      v107 = 1024;
      v108 = 60;
      v109 = 2112;
      v110 = v10;
      v111 = 2112;
      v112 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Looking for driver %@, choices are %@", buf, 0x26u);
    }

    goto LABEL_53;
  }

  v21 = [v13 objectForKeyedSubscript:v10];
  v22 = [v21 objectForKeyedSubscript:v11];

  v91 = v10;
  v92 = v14;
  if (!v22)
  {
    v34 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = [v13 objectForKeyedSubscript:v10];
      v36 = [v35 allKeys];
      *buf = 136446978;
      v106 = "IOReportChannelRef  _Nullable getChRefFrom(NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
      v107 = 1024;
      v108 = 62;
      v109 = 2112;
      v110 = v11;
      v111 = 2112;
      v112 = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Looking for group %@, choices are %@", buf, 0x26u);
    }

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v37 = [v13 objectForKeyedSubscript:v10];
    v32 = [v37 allKeys];

    v38 = [v32 countByEnumeratingWithState:&v101 objects:v117 count:16];
    if (!v38)
    {
      goto LABEL_53;
    }

    v39 = v38;
    v89 = v13;
    v40 = v32;
    v41 = *v102;
    v31 = v87;
    while (2)
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v102 != v41)
        {
          objc_enumerationMutation(v40);
        }

        v43 = *(*(&v101 + 1) + 8 * i);
        if ([v43 containsString:v11])
        {
          v44 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v106 = "IOReportChannelRef  _Nullable getChRefFrom(NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
            v107 = 1024;
            v108 = 65;
            v109 = 2112;
            v110 = v43;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Found match with contains %@", buf, 0x1Cu);
          }

          v45 = [v89 objectForKeyedSubscript:v10];
          v46 = [v45 objectForKeyedSubscript:v43];
          v47 = [v46 objectForKeyedSubscript:v14];
          v19 = [v47 objectForKeyedSubscript:v87];

          v14 = v92;
          v10 = v91;
          if (!v19)
          {
            v32 = v40;
            goto LABEL_62;
          }
        }
      }

      v39 = [v40 countByEnumeratingWithState:&v101 objects:v117 count:16];
      if (v39)
      {
        continue;
      }

      break;
    }

    v32 = v40;
LABEL_50:
    v13 = v89;
    goto LABEL_51;
  }

  [v13 objectForKeyedSubscript:v10];
  v24 = v23 = v14;
  v25 = [v24 objectForKeyedSubscript:v11];
  v26 = [v25 objectForKeyedSubscript:v23];

  if (!v26)
  {
    v48 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      v49 = [v13 objectForKeyedSubscript:v10];
      v50 = [v49 objectForKeyedSubscript:v11];
      v51 = [v50 allKeys];
      *buf = 136446978;
      v106 = "IOReportChannelRef  _Nullable getChRefFrom(NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
      v107 = 1024;
      v108 = 71;
      v109 = 2112;
      v110 = v92;
      v111 = 2112;
      v112 = v51;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Looking for subgroup %@, choices are %@", buf, 0x26u);
    }

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v52 = [v13 objectForKeyedSubscript:v10];
    v53 = [v52 objectForKeyedSubscript:v11];
    v32 = [v53 allKeys];

    v54 = [v32 countByEnumeratingWithState:&v97 objects:v116 count:16];
    if (!v54)
    {
LABEL_52:
      v14 = v92;
LABEL_53:
      v31 = v87;

      goto LABEL_54;
    }

    v55 = v54;
    v90 = v11;
    v56 = v13;
    v57 = v32;
    v58 = *v98;
    v14 = v92;
    v31 = v87;
    while (2)
    {
      for (j = 0; j != v55; j = j + 1)
      {
        if (*v98 != v58)
        {
          objc_enumerationMutation(v57);
        }

        v60 = *(*(&v97 + 1) + 8 * j);
        if ([v60 containsString:v14])
        {
          v61 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v106 = "IOReportChannelRef  _Nullable getChRefFrom(NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
            v107 = 1024;
            v108 = 74;
            v109 = 2112;
            v110 = v60;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Found match with contains %@", buf, 0x1Cu);
          }

          v62 = [v56 objectForKeyedSubscript:v10];
          v63 = [v62 objectForKeyedSubscript:v90];
          v64 = [v63 objectForKeyedSubscript:v60];
          v19 = [v64 objectForKeyedSubscript:v87];

          v10 = v91;
          v14 = v92;
          if (!v19)
          {
            v32 = v57;
            v13 = v56;
            v11 = v90;
            goto LABEL_64;
          }
        }
      }

      v55 = [v57 countByEnumeratingWithState:&v97 objects:v116 count:16];
      if (v55)
      {
        continue;
      }

      break;
    }

    v32 = v57;
    v13 = v56;
    v11 = v90;
LABEL_51:

    goto LABEL_54;
  }

  v27 = [v13 objectForKeyedSubscript:v10];
  v28 = [v27 objectForKeyedSubscript:v11];
  v29 = [v28 objectForKeyedSubscript:v23];
  v30 = [v29 objectForKeyedSubscript:v87];

  if (v30)
  {
    v14 = v92;
    v31 = v87;
LABEL_54:
    if (objc_opt_respondsToSelector())
    {
      v19 = CFRetain(v19);
      goto LABEL_60;
    }

    v84 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
    {
      *buf = 136447234;
      v106 = "IOReportChannelRef  _Nullable getChRefFrom(NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
      v107 = 1024;
      v108 = 102;
      v109 = 2112;
      v110 = v11;
      v111 = 2112;
      v112 = v14;
      v113 = 2112;
      v114 = v87;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "%{public}s::%d:Potentially stale IOReporter legend data for %@ %@ %@", buf, 0x30u);
    }

    v19 = [NSMutableDictionary dictionaryWithDictionary:v19];
LABEL_59:
    v31 = v87;
    goto LABEL_60;
  }

  v65 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    v66 = [v13 objectForKeyedSubscript:v10];
    v67 = [v66 objectForKeyedSubscript:v11];
    v68 = [v67 objectForKeyedSubscript:v92];
    v69 = [v68 allKeys];
    *buf = 136446978;
    v106 = "IOReportChannelRef  _Nullable getChRefFrom(NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
    v107 = 1024;
    v108 = 80;
    v109 = 2112;
    v110 = v87;
    v111 = 2112;
    v112 = v69;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Looking for channel %@, choices are %@", buf, 0x26u);

    v10 = v91;
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v70 = [v13 objectForKeyedSubscript:v10];
  v71 = [v70 objectForKeyedSubscript:v11];
  v72 = [v71 objectForKeyedSubscript:v92];
  v32 = [v72 allKeys];

  v73 = [v32 countByEnumeratingWithState:&v93 objects:v115 count:16];
  if (!v73)
  {
    goto LABEL_52;
  }

  v75 = v73;
  v89 = v13;
  v76 = *v94;
  *&v74 = 136446722;
  v86 = v74;
  v14 = v92;
  v31 = v87;
LABEL_41:
  v77 = 0;
  v88 = v75;
  while (1)
  {
    if (*v94 != v76)
    {
      objc_enumerationMutation(v32);
    }

    v78 = *(*(&v93 + 1) + 8 * v77);
    if ([v78 containsString:{v31, v86}])
    {
      v79 = v32;
      v80 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        *buf = v86;
        v106 = "IOReportChannelRef  _Nullable getChRefFrom(NSDictionary * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
        v107 = 1024;
        v108 = 83;
        v109 = 2112;
        v110 = v78;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Found match with contains %@", buf, 0x1Cu);
      }

      v81 = [v89 objectForKeyedSubscript:v10];
      v82 = [v81 objectForKeyedSubscript:v11];
      v14 = v92;
      v83 = [v82 objectForKeyedSubscript:v92];
      v19 = [v83 objectForKeyedSubscript:v78];

      v10 = v91;
      v32 = v79;
      v31 = v87;
      v75 = v88;
      if (!v19)
      {
        break;
      }
    }

    if (v75 == ++v77)
    {
      v75 = [v32 countByEnumeratingWithState:&v93 objects:v115 count:16];
      if (v75)
      {
        goto LABEL_41;
      }

      goto LABEL_50;
    }
  }

LABEL_62:
  v13 = v89;
LABEL_64:

  v19 = 0;
LABEL_60:

  return v19;
}

void sub_100035CF8(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v25 = a3;
  v28 = a1;
  objc_initWeak(&location, a2);
  v27 = a4;
  v11 = a7;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = [v28 fieldForKey:v11];
  v13 = [v12 repeatableValues];

  v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v14)
  {
    v15 = *v30;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        v18 = [v17 fieldForKey:{@"NWAT_traffic", v25}];
        v19 = [v18 int32Value] == a6;

        if (v19)
        {
          v22 = v17;
          goto LABEL_11;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v20 = objc_loadWeakRetained(&location);
  v21 = [v20 getNewMessageForKey:@"NWAT" groupType:v25 forProcessWithToken:v27];
  v22 = [v21 copy];

  v13 = [v28 fieldForKey:v11];
  [v13 addRepeatableSubMessageValue:v22];
LABEL_11:

  v23 = [v22 fieldForKey:@"NWAT_traffic"];
  [v23 setInt32Value:a6];

  v24 = [v22 fieldForKey:@"NWAT_value"];
  [v24 setUint64Value:a5];

  objc_destroyWeak(&location);
}

void sub_100035F68(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = sub_1000351BC(a1, v15, v16, v17, v18);
  if (v19)
  {
    v20 = v19;
    IntegerValue = IOReportSimpleGetIntegerValue();
    v22 = [v13 fieldForKey:v14];
    [v22 setUint64Value:IntegerValue];

    CFRelease(v20);
  }

  else
  {
    v23 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = 136447490;
      v25 = "_Bool fillUInt64FieldFromSimple(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
      v26 = 1024;
      v27 = 135;
      v28 = 2112;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v17;
      v34 = 2112;
      v35 = v18;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find %@ %@ %@ %@", &v24, 0x3Au);
    }
  }
}

void sub_10003611C(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v24 = a1;
  v29 = a2;
  objc_initWeak(&location, a3);
  v28 = a5;
  v30 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v16 = objc_loadWeakRetained(&location);
  v17 = sub_1000351BC(v24, v25, v26, @"TxCompletion Latency", v27);
  if (v17)
  {
    UnitLabel = IOReportChannelGetUnitLabel();
    for (i = 0; i < IOReportHistogramGetBucketCount(); ++i)
    {
      v20 = objc_autoreleasePoolPush();
      IOReportHistogramGetBucketBounds();
      BucketHits = IOReportHistogramGetBucketHits();
      v22 = [NSString stringWithFormat:@"%lld - %lld %@", 0, 0, UnitLabel];
      sub_1000363D0(v29, v16, a4, v28, v22, BucketHits, v30);

      objc_autoreleasePoolPop(v20);
    }

    CFRelease(v17);
  }

  else
  {
    v23 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136447490;
      v33 = "_Bool fillHistogramFromHistogram(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
      v34 = 1024;
      v35 = 427;
      v36 = 2112;
      v37 = v25;
      v38 = 2112;
      v39 = v26;
      v40 = 2112;
      v41 = @"TxCompletion Latency";
      v42 = 2112;
      v43 = v27;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find %@ %@ %@ %@", buf, 0x3Au);
    }
  }

  objc_destroyWeak(&location);
}

void sub_1000363D0(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v30 = a1;
  objc_initWeak(&location, a2);
  v28 = a4;
  v11 = a5;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v29 = a7;
  v12 = [v30 fieldForKey:?];
  v13 = [v12 repeatableValues];

  v14 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v14)
  {
    v15 = *v32;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        v18 = [v17 fieldForKey:@"NWAHB_bin"];
        v19 = [v18 stringValue];
        v20 = [v19 isEqualToString:v11];

        if (v20)
        {
          v23 = v17;
          goto LABEL_11;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v21 = objc_loadWeakRetained(&location);
  v22 = [v21 getNewMessageForKey:@"NWAHB" groupType:a3 forProcessWithToken:v28];
  v23 = [v22 copy];

  v13 = [v30 fieldForKey:v29];
  [v13 addRepeatableSubMessageValue:v23];
LABEL_11:

  v24 = [v23 fieldForKey:@"NWAHB_hits"];
  [v24 setUint64Value:a6];

  v25 = [v23 fieldForKey:@"NWAHB_bin"];
  [v25 setStringValue:v11];

  objc_destroyWeak(&location);
}

void sub_10003665C(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a1;
  v132 = a2;
  v133 = a3;
  v9 = a4;
  v131 = v8;
  v10 = [v8 fieldForKey:@"NWACS_aggregateMetrics"];
  v11 = [v10 subMessageValue];

  v12 = [v11 fieldForKey:@"NWAAM_kRxDataErrors"];
  [v12 setUint64Value:0];

  v13 = [v11 fieldForKey:@"NWAAM_kRxFrames"];
  [v13 setUint64Value:0];

  v14 = [v11 fieldForKey:@"NWAAM_kRxRetryBitSet"];
  [v14 setUint64Value:0];

  v15 = [v11 fieldForKey:@"NWAAM_kMACRxDataFrameMatchingRA"];
  [v15 setUint64Value:0];

  v16 = [v11 fieldForKey:@"NWAAM_kMACRxDataFrameOtherRA"];
  [v16 setUint64Value:0];

  v17 = [v11 fieldForKey:@"NWAAM_kMACRxControlFrameMatchingRA"];
  [v17 setUint32Value:0];

  v18 = [v11 fieldForKey:@"NWAAM_kMACRxControlFrameOtherRA"];
  [v18 setUint32Value:0];

  v19 = [v11 fieldForKey:@"NWAAM_kRxGoodPLCP"];
  [v19 setUint64Value:0];

  v20 = [v11 fieldForKey:@"NWAAM_kRxBadPLCP"];
  [v20 setUint64Value:0];

  v21 = [v11 fieldForKey:@"NWAAM_kRxBadFCS"];
  [v21 setUint64Value:0];

  v22 = [v11 fieldForKey:@"NWAAM_kTxFrames"];
  [v22 setUint64Value:0];

  v23 = [v11 fieldForKey:@"NWAAM_kTxRetransmission"];
  [v23 setUint64Value:0];

  v24 = [v11 fieldForKey:@"NWAAM_kdot11RetryCount"];
  [v24 setUint64Value:0];

  v25 = [v11 fieldForKey:@"NWAAM_kdot11MultipleRetryCount"];
  [v25 setUint64Value:0];

  v26 = [v11 fieldForKey:@"NWAAM_kdot11RTSSuccessCount"];
  [v26 setUint64Value:0];

  v27 = [v11 fieldForKey:@"NWAAM_kdot11RTSFailureCount"];
  [v27 setUint64Value:0];

  v28 = [v11 fieldForKey:@"NWAAM_kCtlTxRTS"];
  [v28 setUint64Value:0];

  v29 = [v11 fieldForKey:@"NWAAM_kRxCRCGlitch"];
  [v29 setUint64Value:0];

  v30 = [v11 fieldForKey:@"NWAAM_kMACRxUnicastCTStoMAC"];
  [v30 setUint64Value:0];

  v31 = [v11 fieldForKey:@"NWAAM_kMACRxUnicastCTStoOther"];
  [v31 setUint64Value:0];

  v32 = [v11 fieldForKey:@"NWAAM_kMACRxUnicastRTStoMAC"];
  [v32 setUint64Value:0];

  v33 = [v11 fieldForKey:@"NWAAM_kMACRxUnicastRTStoOther"];
  [v33 setUint64Value:0];

  v34 = [v11 fieldForKey:@"NWAAM_kCtlTxCTS"];
  [v34 setUint64Value:0];

  v35 = [v11 fieldForKey:@"NWAAM_kRxBadOther"];
  [v35 setUint64Value:0];

  v36 = sub_10001E74C(v9);
  v136 = 0;
  v37 = 0;
  v134 = qword_10010DD18 == 4;
  v38 = 1;
  do
  {
    v39 = v38;
    v40 = [[NSString alloc] initWithFormat:@"Slice %lu", v37];
    v41 = [v9 objectForKeyedSubscript:v36];
    v42 = [v41 objectForKeyedSubscript:v40];

    if (!v42)
    {
      goto LABEL_8;
    }

    v43 = [v9 objectForKeyedSubscript:v36];
    v44 = [v43 objectForKeyedSubscript:v40];
    v45 = [v44 objectForKeyedSubscript:@"Rx Counters"];

    if (!v45)
    {
      v94 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        v95 = [v9 objectForKeyedSubscript:v36];
        v96 = [v95 objectForKeyedSubscript:v40];
        v97 = [v96 allKeys];
        *buf = 136446978;
        v140 = "void populateNWActivityAggregateMetrics(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
        v141 = 1024;
        v142 = 1908;
        v143 = 2112;
        *v144 = @"Rx Counters";
        *&v144[8] = 2112;
        v145 = v97;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup %@, we have %@", buf, 0x26u);
      }

      LOBYTE(v66) = v136;
      LOBYTE(v88) = v136;
      LOBYTE(v130) = v136;
      goto LABEL_46;
    }

    sub_1000380A4(v9, v11, @"NWAAM_kRxDataErrors", v36, v40, @"Rx Counters", @"Rx Data Errors");
    sub_1000380A4(v9, v11, @"NWAAM_kRxFrames", v36, v40, @"Rx Counters", @"Rx Data Frames");
    sub_1000380A4(v9, v11, @"NWAAM_kRxRetryBitSet", v36, v40, @"Rx Counters", @"Rx Retry bit set");
    v46 = [v9 objectForKeyedSubscript:v36];
    v47 = [v46 objectForKeyedSubscript:v40];
    v48 = [v47 objectForKeyedSubscript:@"Rx Error Counters"];

    if (!v48)
    {
      v94 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        v98 = [v9 objectForKeyedSubscript:v36];
        v99 = [v98 objectForKeyedSubscript:v40];
        v100 = [v99 allKeys];
        *buf = 136446978;
        v140 = "void populateNWActivityAggregateMetrics(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
        v141 = 1024;
        v142 = 1915;
        v143 = 2112;
        *v144 = @"Rx Error Counters";
        *&v144[8] = 2112;
        v145 = v100;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup %@, we have %@", buf, 0x26u);
      }

      LOBYTE(v66) = 1;
      LOBYTE(v88) = v136;
      LOBYTE(v130) = v136;
      goto LABEL_46;
    }

    sub_1000380A4(v9, v11, @"NWAAM_kRxGoodPLCP", v36, v40, @"Rx Error Counters", @"Rx Good PLCP");
    sub_1000380A4(v9, v11, @"NWAAM_kRxBadPLCP", v36, v40, @"Rx Error Counters", @"Rx Bad PLCP");
    sub_1000380A4(v9, v11, @"NWAAM_kRxBadFCS", v36, v40, @"Rx Error Counters", @"Rx Bad FCS");
    sub_1000380A4(v9, v11, @"NWAAM_kRxCRCGlitch", v36, v40, @"Rx Error Counters", @"Rx CRC Glitch");
    sub_1000380A4(v9, v11, @"NWAAM_kRxBadOther", v36, v40, @"Rx Error Counters", @"Any Other Rx Errors");
    v49 = [v9 objectForKeyedSubscript:v36];
    v50 = [v49 objectForKeyedSubscript:v40];
    v51 = [v50 objectForKeyedSubscript:@"Tx Counters"];

    if (!v51)
    {
      v94 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        v101 = [v9 objectForKeyedSubscript:v36];
        v102 = [v101 objectForKeyedSubscript:v40];
        v103 = [v102 allKeys];
        *buf = 136446978;
        v140 = "void populateNWActivityAggregateMetrics(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
        v141 = 1024;
        v142 = 1924;
        v143 = 2112;
        *v144 = @"Tx Counters";
        *&v144[8] = 2112;
        v145 = v103;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup %@, we have %@", buf, 0x26u);
      }

      LOBYTE(v130) = 1;
      LOBYTE(v88) = v136;
      goto LABEL_45;
    }

    sub_1000380A4(v9, v11, @"NWAAM_kTxFrames", v36, v40, @"Tx Counters", @"Tx Data Frames");
    sub_1000380A4(v9, v11, @"NWAAM_kTxRetransmission", v36, v40, @"Tx Counters", @"Tx Retransmissions");
    v52 = [v9 objectForKeyedSubscript:v36];
    v53 = [v52 objectForKeyedSubscript:v40];
    v54 = [v53 objectForKeyedSubscript:@"dot11 MIB Counters"];

    if (!v54)
    {
      v94 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        v104 = [v9 objectForKeyedSubscript:v36];
        v105 = [v104 objectForKeyedSubscript:v40];
        v106 = [v105 allKeys];
        *buf = 136446978;
        v140 = "void populateNWActivityAggregateMetrics(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
        v141 = 1024;
        v142 = 1930;
        v143 = 2112;
        *v144 = @"dot11 MIB Counters";
        *&v144[8] = 2112;
        v145 = v106;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup %@, we have %@", buf, 0x26u);
      }

      LOBYTE(v88) = 1;
      LOBYTE(v130) = 1;
LABEL_45:
      LOBYTE(v66) = 1;
LABEL_46:

      LOBYTE(v135) = v134;
      goto LABEL_51;
    }

    sub_1000380A4(v9, v11, @"NWAAM_kdot11MultipleRetryCount", v36, v40, @"dot11 MIB Counters", @"MSDU successfully transmits >= 1 attempt");
    sub_1000380A4(v9, v11, @"NWAAM_kdot11RetryCount", v36, v40, @"dot11 MIB Counters", @"MSDU successfully transmits > 1 attempt");
    sub_1000380A4(v9, v11, @"NWAAM_kdot11RTSSuccessCount", v36, v40, @"dot11 MIB Counters", @"CTS Rxd in response to RTS");
    sub_1000380A4(v9, v11, @"NWAAM_kdot11RTSFailureCount", v36, v40, @"dot11 MIB Counters", @"CTS not Rxd in response to RTS");
    v136 = 1;
LABEL_8:

    v38 = 0;
    v37 = 1;
  }

  while ((v39 & 1) != 0);
  v55 = 0;
  v56 = 1;
  v135 = v134;
  do
  {
    v57 = v56;
    v40 = [[NSString alloc] initWithFormat:@"Slice Frames: slice  %lu", v55];
    v58 = [v9 objectForKeyedSubscript:v36];
    v59 = [v58 objectForKeyedSubscript:v40];

    if (v59)
    {
      v60 = [v9 objectForKeyedSubscript:v36];
      v61 = [v60 objectForKeyedSubscript:v40];
      v62 = [v61 objectForKeyedSubscript:@"Tx Control Frame Counters"];

      if (!v62)
      {
        v107 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          v108 = [v9 objectForKeyedSubscript:v36];
          v109 = [v108 objectForKeyedSubscript:v40];
          v110 = [v109 allKeys];
          *buf = 136446978;
          v140 = "void populateNWActivityAggregateMetrics(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
          v141 = 1024;
          v142 = 1945;
          v143 = 2112;
          *v144 = @"Tx Control Frame Counters";
          *&v144[8] = 2112;
          v145 = v110;
          _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup %@, we have %@", buf, 0x26u);
        }

        goto LABEL_50;
      }

      sub_1000380A4(v9, v11, @"NWAAM_kCtlTxRTS", v36, v40, @"Tx Control Frame Counters", @"Tx RTS");
      v135 = 1;
    }

    v56 = 0;
    v55 = 1;
  }

  while ((v57 & 1) != 0);
  v63 = [v9 objectForKeyedSubscript:v36];
  v64 = [v63 objectForKeyedSubscript:@"Chip Frames"];
  v65 = [v64 objectForKeyedSubscript:@"Tx Control Frame Counters"];

  if (v65)
  {
    sub_100035F68(v9, v11, @"NWAAM_kCtlTxCTS", v36, @"Chip Frames", @"Tx Control Frame Counters", @"Tx CTS");
    v134 = 1;
  }

  v66 = v136;
  if ((v136 & 1) == 0)
  {
    v67 = [v9 objectForKeyedSubscript:v36];
    v68 = [v67 objectForKeyedSubscript:@"Chip Frames"];
    v69 = [v68 objectForKeyedSubscript:@"Tx Control Frame Counters"];

    if (v69)
    {
      sub_100035F68(v9, v11, @"NWAAM_kCtlTxRTS", v36, @"Chip Frames", @"Tx Control Frame Counters", @"Tx RTS");
      v135 = 1;
    }

    v70 = [v9 objectForKeyedSubscript:v36];
    v71 = [v70 objectForKeyedSubscript:@"Chip"];

    if (v71)
    {
      v72 = [v9 objectForKeyedSubscript:v36];
      v73 = [v72 objectForKeyedSubscript:@"Chip"];
      v74 = [v73 objectForKeyedSubscript:@"Rx Counters"];

      if (v74)
      {
        sub_100035F68(v9, v11, @"NWAAM_kRxDataErrors", v36, @"Chip", @"Rx Counters", @"Rx Data Errors");
        sub_100035F68(v9, v11, @"NWAAM_kRxFrames", v36, @"Chip", @"Rx Counters", @"Rx Data Frames");
        sub_100035F68(v9, v11, @"NWAAM_kRxRetryBitSet", v36, @"Chip", @"Rx Counters", @"Rx Retry bit set");
        v75 = [v9 objectForKeyedSubscript:v36];
        v76 = [v75 objectForKeyedSubscript:@"Chip"];
        v77 = [v76 objectForKeyedSubscript:@"Rx Error Counters"];

        if (v77)
        {
          sub_100035F68(v9, v11, @"NWAAM_kRxGoodPLCP", v36, @"Chip", @"Rx Error Counters", @"Rx Good PLCP");
          sub_100035F68(v9, v11, @"NWAAM_kRxBadPLCP", v36, @"Chip", @"Rx Error Counters", @"Rx Bad PLCP");
          sub_100035F68(v9, v11, @"NWAAM_kRxBadFCS", v36, @"Chip", @"Rx Error Counters", @"Rx Bad FCS");
          sub_100035F68(v9, v11, @"NWAAM_kRxCRCGlitch", v36, @"Chip", @"Rx Error Counters", @"Rx CRC Glitch");
          v78 = [v9 objectForKeyedSubscript:v36];
          v79 = [v78 objectForKeyedSubscript:@"Chip"];
          v80 = [v79 objectForKeyedSubscript:@"Rx Error Counters"];
          v81 = [v80 objectForKeyedSubscript:@"Any Other Rx Errors"];

          if (v81)
          {
            sub_100035F68(v9, v11, @"NWAAM_kRxBadOther", v36, @"Chip", @"Rx Error Counters", @"Any Other Rx Errors");
          }

          v82 = [v9 objectForKeyedSubscript:v36];
          v83 = [v82 objectForKeyedSubscript:@"Chip"];
          v84 = [v83 objectForKeyedSubscript:@"Tx Counters"];

          if (v84)
          {
            sub_1000380A4(v9, v11, @"NWAAM_kTxFrames", v36, @"Chip", @"Tx Counters", @"Tx Data Frames");
            sub_1000380A4(v9, v11, @"NWAAM_kTxRetransmission", v36, @"Chip", @"Tx Counters", @"Tx Retransmissions");
            v85 = [v9 objectForKeyedSubscript:v36];
            v86 = [v85 objectForKeyedSubscript:@"Chip"];
            v87 = [v86 objectForKeyedSubscript:@"dot11 MIB Counters"];

            if (v87)
            {
              sub_1000380A4(v9, v11, @"NWAAM_kdot11MultipleRetryCount", v36, @"Chip", @"dot11 MIB Counters", @"MSDU successfully transmits >= 1 attempt");
              sub_1000380A4(v9, v11, @"NWAAM_kdot11RetryCount", v36, @"Chip", @"dot11 MIB Counters", @"MSDU successfully transmits > 1 attempt");
              sub_1000380A4(v9, v11, @"NWAAM_kdot11RTSSuccessCount", v36, @"Chip", @"dot11 MIB Counters", @"CTS Rxd in response to RTS");
              sub_1000380A4(v9, v11, @"NWAAM_kdot11RTSFailureCount", v36, @"Chip", @"dot11 MIB Counters", @"CTS not Rxd in response to RTS");
              v136 = 1;
              v88 = 1;
              v130 = 1;
              v66 = 1;
              goto LABEL_29;
            }

            v40 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v126 = [v9 objectForKeyedSubscript:v36];
              v127 = [v126 objectForKeyedSubscript:@"Chip"];
              v128 = [v127 allKeys];
              *buf = 136446978;
              v140 = "void populateNWActivityAggregateMetrics(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
              v141 = 1024;
              v142 = 1986;
              v143 = 2112;
              *v144 = @"dot11 MIB Counters";
              *&v144[8] = 2112;
              v145 = v128;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup %@, we have %@", buf, 0x26u);
            }

            LOBYTE(v88) = 1;
            LOBYTE(v130) = 1;
          }

          else
          {
            v40 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v123 = [v9 objectForKeyedSubscript:v36];
              v124 = [v123 objectForKeyedSubscript:@"Chip"];
              v125 = [v124 allKeys];
              *buf = 136446978;
              v140 = "void populateNWActivityAggregateMetrics(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
              v141 = 1024;
              v142 = 1980;
              v143 = 2112;
              *v144 = @"Tx Counters";
              *&v144[8] = 2112;
              v145 = v125;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup %@, we have %@", buf, 0x26u);
            }

            LOBYTE(v130) = 1;
            LOBYTE(v88) = v136;
          }

          LOBYTE(v66) = 1;
        }

        else
        {
          v40 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v120 = [v9 objectForKeyedSubscript:v36];
            v121 = [v120 objectForKeyedSubscript:@"Chip"];
            v122 = [v121 allKeys];
            *buf = 136446978;
            v140 = "void populateNWActivityAggregateMetrics(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
            v141 = 1024;
            v142 = 1969;
            v143 = 2112;
            *v144 = @"Rx Error Counters";
            *&v144[8] = 2112;
            v145 = v122;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup %@, we have %@", buf, 0x26u);
          }

          LOBYTE(v66) = 1;
          LOBYTE(v88) = v136;
          LOBYTE(v130) = v136;
        }

LABEL_51:

        LODWORD(v90) = 0;
        goto LABEL_52;
      }

      v40 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v117 = [v9 objectForKeyedSubscript:v36];
        v118 = [v117 objectForKeyedSubscript:@"Chip"];
        v119 = [v118 allKeys];
        *buf = 136446978;
        v140 = "void populateNWActivityAggregateMetrics(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
        v141 = 1024;
        v142 = 1962;
        v143 = 2112;
        *v144 = @"Rx Counters";
        *&v144[8] = 2112;
        v145 = v119;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup %@, we have %@", buf, 0x26u);
      }

LABEL_50:
      LOBYTE(v66) = v136;
      LOBYTE(v88) = v136;
      LOBYTE(v130) = v136;
      goto LABEL_51;
    }

    v66 = v136;
  }

  v88 = v66;
  v130 = v66;
LABEL_29:
  v89 = [v9 objectForKeyedSubscript:v36];
  v90 = [v89 objectForKeyedSubscript:@"Chip"];

  if (!v90)
  {
    goto LABEL_52;
  }

  v91 = [v9 objectForKeyedSubscript:v36];
  v92 = [v91 objectForKeyedSubscript:@"Chip"];
  v93 = [v92 objectForKeyedSubscript:@"Rx MAC Counters"];

  if (!v93)
  {
    v40 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v114 = [v9 objectForKeyedSubscript:v36];
      v115 = [v114 objectForKeyedSubscript:@"Chip"];
      v116 = [v115 allKeys];
      *buf = 136446978;
      v140 = "void populateNWActivityAggregateMetrics(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
      v141 = 1024;
      v142 = 1996;
      v143 = 2112;
      *v144 = @"Rx MAC Counters";
      *&v144[8] = 2112;
      v145 = v116;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find subgroup %@, we have %@", buf, 0x26u);
    }

    goto LABEL_51;
  }

  sub_100035F68(v9, v11, @"NWAAM_kMACRxDataFrameMatchingRA", v36, @"Chip", @"Rx MAC Counters", @"Rx Data Frame matching RA");
  sub_100035F68(v9, v11, @"NWAAM_kMACRxDataFrameOtherRA", v36, @"Chip", @"Rx MAC Counters", @"Rx Data Frame other RA");
  sub_10003453C(v9, v11, @"NWAAM_kMACRxControlFrameMatchingRA", v36, @"Chip", @"Rx MAC Counters", @"Rx Control Frame matching RA");
  sub_10003453C(v9, v11, @"NWAAM_kMACRxControlFrameOtherRA", v36, @"Chip", @"Rx MAC Counters", @"Rx Control Frame other RA");
  sub_100035F68(v9, v11, @"NWAAM_kMACRxUnicastCTStoMAC", v36, @"Chip", @"Rx MAC Counters", @"Rx CTS to MAC");
  sub_100035F68(v9, v11, @"NWAAM_kMACRxUnicastCTStoOther", v36, @"Chip", @"Rx MAC Counters", @"Rx CTS to Other");
  sub_100035F68(v9, v11, @"NWAAM_kMACRxUnicastRTStoMAC", v36, @"Chip", @"Rx MAC Counters", @"Rx RTS to MAC");
  sub_100035F68(v9, v11, @"NWAAM_kMACRxUnicastRTStoOther", v36, @"Chip", @"Rx MAC Counters", @"Rx RTS to Other");
  if (v66 & v130 & v88 & v136 & v134 & v135)
  {
    goto LABEL_59;
  }

  LODWORD(v90) = 1;
LABEL_52:
  v111 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
  {
    *buf = 136448258;
    v140 = "void populateNWActivityAggregateMetrics(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
    v141 = 1024;
    v142 = 2014;
    v143 = 1024;
    *v144 = v66 & 1;
    *&v144[4] = 1024;
    *&v144[6] = v130 & 1;
    LOWORD(v145) = 1024;
    *(&v145 + 2) = v90;
    HIWORD(v145) = 1024;
    v146 = v88 & 1;
    v147 = 1024;
    v148 = v136 & 1;
    v149 = 1024;
    v150 = v134;
    v151 = 1024;
    v152 = v135 & 1;
    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "%{public}s::%d:hasRxCounters %d hasRxErrorCounters %d hasRxMAC %d hasTxCounters %d hasdot11 %d hasTxCTS %d hasTxRTS %d", buf, 0x3Cu);
  }

  if (!*a5)
  {
    v137 = NSLocalizedFailureReasonErrorKey;
    v138 = @"WAErrorCodeTxRxFrameCountersMissing";
    v112 = [NSDictionary dictionaryWithObjects:&v138 forKeys:&v137 count:1];
    *a5 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9023 userInfo:v112];
  }

  v113 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v140 = "void populateNWActivityAggregateMetrics(WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSDictionary * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)";
    v141 = 1024;
    v142 = 2019;
    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed ", buf, 0x12u);
  }

LABEL_59:
}

void sub_1000380A4(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = sub_1000351BC(a1, v15, v16, v17, v18);
  if (v19)
  {
    v20 = v19;
    IntegerValue = IOReportSimpleGetIntegerValue();
    v22 = [v13 fieldForKey:v14];
    v23 = [v13 fieldForKey:v14];
    [v22 setUint64Value:{objc_msgSend(v23, "uint64Value") + IntegerValue}];

    CFRelease(v20);
  }

  else
  {
    v24 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = 136447490;
      v26 = "_Bool addUInt64FieldFromSimple(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
      v27 = 1024;
      v28 = 153;
      v29 = 2112;
      v30 = v15;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      v35 = 2112;
      v36 = v18;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find %@ %@ %@ %@", &v25, 0x3Au);
    }
  }
}

void sub_100038278(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, unsigned __int8 a9)
{
  v45 = a1;
  v44 = a2;
  v16 = a3;
  v17 = a4;
  v18 = v16;
  v19 = v17;
  v20 = a5;
  v21 = v19;
  v22 = v20;
  v46 = a6;
  v23 = 0;
  v24 = 0;
  v42 = (a9 ^ 1u) + a8;
  v43 = a7;
  v41 = v22;
  while (1)
  {
    v25 = v23;
    v26 = objc_autoreleasePoolPush();
    v23 = [[NSString alloc] initWithFormat:@"%@ %lu", v43, v24];

    v27 = [v45 objectForKeyedSubscript:v21];
    v28 = [v27 objectForKeyedSubscript:v22];
    v29 = [v28 objectForKeyedSubscript:v46];
    v30 = [v29 objectForKeyedSubscript:v23];

    if (v30)
    {
      break;
    }

LABEL_13:
    objc_autoreleasePoolPop(v26);
    if (v42 == ++v24)
    {
      goto LABEL_14;
    }
  }

  v31 = sub_1000351BC(v45, v21, v22, v46, v23);
  if (v31)
  {
    v32 = v31;
    IntegerValue = IOReportSimpleGetIntegerValue();
    v34 = [v44 fieldForKey:v18];
    v35 = [v34 repeatableValues];

    v36 = [v35 count];
    if (a9)
    {
      if (!v36)
      {
        v37 = [v44 fieldForKey:v18];
        [v37 addRepeatableUInt64Value:0];

        v38 = v44;
        v22 = v41;
LABEL_11:
        v39 = [v38 fieldForKey:v18];
        [v39 addRepeatableUInt64Value:IntegerValue];
        goto LABEL_12;
      }
    }

    else if (!v36)
    {
LABEL_10:
      v38 = v44;
      goto LABEL_11;
    }

    if ([v35 count] > v24)
    {
      v39 = [[NSNumber alloc] initWithUnsignedLongLong:IntegerValue];
      [v35 replaceObjectAtIndex:v24 withObject:v39];
LABEL_12:

      CFRelease(v32);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v40 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    *buf = 136447490;
    v48 = "_Bool fillUInt64ArrayFromAllKeysSimple(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSUInteger, _Bool)";
    v49 = 1024;
    v50 = 460;
    v51 = 2112;
    v52 = v21;
    v53 = 2112;
    v54 = v22;
    v55 = 2112;
    v56 = v46;
    v57 = 2112;
    v58 = v23;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find %@ %@ %@ %@", buf, 0x3Au);
  }

  objc_autoreleasePoolPop(v26);
LABEL_14:
}

void sub_1000385DC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a1;
  v14 = sub_1000351BC(v13, v11, @"Slice 0", @"OMI Counters", v12);
  v15 = sub_1000351BC(v13, v11, @"Slice 1", @"OMI Counters", v12);

  if (v14)
  {
    if (v15)
    {
      IntegerValue = IOReportSimpleGetIntegerValue();
      v17 = IOReportSimpleGetIntegerValue();
      v18 = [v9 fieldForKey:v10];
      [v18 setUint32Value:(v17 + IntegerValue)];
    }

    else
    {
      v20 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = 136447490;
        v22 = "_Bool sum2GroupsUInt32FieldFromSimple(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
        v23 = 1024;
        v24 = 191;
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = @"Slice 1";
        v29 = 2112;
        v30 = @"OMI Counters";
        v31 = 2112;
        v32 = v12;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find %@ %@ %@ %@", &v21, 0x3Au);
      }
    }

    CFRelease(v14);
    if (v15)
    {
LABEL_5:
      CFRelease(v15);
    }
  }

  else
  {
    v19 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = 136447490;
      v22 = "_Bool sum2GroupsUInt32FieldFromSimple(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
      v23 = 1024;
      v24 = 190;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = @"Slice 0";
      v29 = 2112;
      v30 = @"OMI Counters";
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find %@ %@ %@ %@", &v21, 0x3Au);
    }

    if (v15)
    {
      goto LABEL_5;
    }
  }
}

void sub_100038864(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v58 = a1;
  v54 = a2;
  objc_initWeak(&location, a3);
  v56 = a5;
  v55 = a6;
  v14 = a7;
  v15 = a8;
  v57 = objc_loadWeakRetained(&location);
  v16 = [v58 objectForKeyedSubscript:v14];
  v17 = [v16 objectForKeyedSubscript:@"Slice 0"];
  v18 = v17 == 0;

  if (v18)
  {
    v48 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 136446978;
    v65 = "_Bool sum2GroupsHistogramFieldFromAllKeysSimple(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
    v66 = 1024;
    v67 = 211;
    v68 = 2112;
    v69 = v14;
    v70 = 2112;
    v71 = @"Slice 0";
    v49 = "%{public}s::%d:Failed to find %@ %@";
    goto LABEL_34;
  }

  v19 = [v58 objectForKeyedSubscript:v14];
  v20 = [v19 objectForKeyedSubscript:@"Slice 0"];
  v21 = [v20 objectForKeyedSubscript:v15];
  v22 = v21 == 0;

  if (v22)
  {
    v48 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 136447234;
    v65 = "_Bool sum2GroupsHistogramFieldFromAllKeysSimple(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
    v66 = 1024;
    v67 = 212;
    v68 = 2112;
    v69 = v14;
    v70 = 2112;
    v71 = @"Slice 0";
    v72 = 2112;
    v73 = v15;
    v49 = "%{public}s::%d:Failed to find %@ %@ %@";
    goto LABEL_37;
  }

  v23 = [v58 objectForKeyedSubscript:v14];
  v24 = [v23 objectForKeyedSubscript:@"Slice 1"];
  v25 = v24 == 0;

  if (v25)
  {
    v48 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 136446978;
    v65 = "_Bool sum2GroupsHistogramFieldFromAllKeysSimple(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
    v66 = 1024;
    v67 = 213;
    v68 = 2112;
    v69 = v14;
    v70 = 2112;
    v71 = @"Slice 1";
    v49 = "%{public}s::%d:Failed to find %@ %@";
LABEL_34:
    v50 = v48;
    v51 = 38;
LABEL_38:
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, v49, buf, v51);
    goto LABEL_27;
  }

  v26 = [v58 objectForKeyedSubscript:v14];
  v27 = [v26 objectForKeyedSubscript:@"Slice 1"];
  v28 = [v27 objectForKeyedSubscript:v15];
  v29 = v28 == 0;

  if (v29)
  {
    v48 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 136447234;
    v65 = "_Bool sum2GroupsHistogramFieldFromAllKeysSimple(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
    v66 = 1024;
    v67 = 214;
    v68 = 2112;
    v69 = v14;
    v70 = 2112;
    v71 = @"Slice 1";
    v72 = 2112;
    v73 = v15;
    v49 = "%{public}s::%d:Failed to find %@ %@ %@";
LABEL_37:
    v50 = v48;
    v51 = 48;
    goto LABEL_38;
  }

  v30 = [v58 objectForKeyedSubscript:v14];
  v31 = [v30 objectForKeyedSubscript:@"Slice 0"];
  v32 = [v31 objectForKeyedSubscript:v15];
  v33 = [v32 allKeys];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v33;
  v34 = [obj countByEnumeratingWithState:&v59 objects:v76 count:16];
  if (!v34)
  {
    goto LABEL_26;
  }

  v35 = *v60;
  do
  {
    v36 = 0;
    do
    {
      if (*v60 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v37 = *(*(&v59 + 1) + 8 * v36);
      v38 = objc_autoreleasePoolPush();
      v39 = sub_1000351BC(v58, v14, @"Slice 0", v15, v37);
      v40 = sub_1000351BC(v58, v14, @"Slice 1", v15, v37);
      v41 = v40;
      if (v39)
      {
        if (v40)
        {
          IntegerValue = IOReportSimpleGetIntegerValue();
          v43 = IOReportSimpleGetIntegerValue();
          sub_1000363D0(v54, v57, a4, v56, v37, v43 + IntegerValue, v55);
          CFRelease(v39);
          CFRelease(v41);
          v44 = 1;
          goto LABEL_13;
        }

        v46 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447490;
          v65 = "_Bool sum2GroupsHistogramFieldFromAllKeysSimple(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
          v66 = 1024;
          v67 = 224;
          v68 = 2112;
          v69 = v14;
          v70 = 2112;
          v71 = @"Slice 1";
          v72 = 2112;
          v73 = v15;
          v74 = 2112;
          v75 = v37;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find %@ %@ %@ %@", buf, 0x3Au);
        }

        v41 = v39;
      }

      else
      {
        v45 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447490;
          v65 = "_Bool sum2GroupsHistogramFieldFromAllKeysSimple(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, __weak id<WAIOReporterPopulatorMessageDelegate> _Nullable, WAGroupType, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
          v66 = 1024;
          v67 = 223;
          v68 = 2112;
          v69 = v14;
          v70 = 2112;
          v71 = @"Slice 0";
          v72 = 2112;
          v73 = v15;
          v74 = 2112;
          v75 = v37;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find %@ %@ %@ %@", buf, 0x3Au);
        }

        if (!v41)
        {
          goto LABEL_24;
        }
      }

      CFRelease(v41);
LABEL_24:
      v44 = 0;
LABEL_13:
      objc_autoreleasePoolPop(v38);
      if (!v44)
      {
        goto LABEL_26;
      }

      v36 = v36 + 1;
    }

    while (v34 != v36);
    v47 = [obj countByEnumeratingWithState:&v59 objects:v76 count:16];
    v34 = v47;
  }

  while (v47);
LABEL_26:

  v48 = obj;
LABEL_27:

  objc_destroyWeak(&location);
}

BOOL sub_100038F68(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = objc_autoreleasePoolPush();
  v21 = sub_1000351BC(v13, v16, v17, v18, v19);
  if (v21)
  {
    IntegerValue = IOReportSimpleGetIntegerValue();
    [v14 fieldForKey:v15];
    cf = v21;
    v23 = v19;
    v24 = v18;
    v25 = v17;
    v26 = v16;
    v27 = v15;
    v28 = v14;
    v29 = v20;
    v31 = v30 = v13;
    [v31 setInt32Value:IntegerValue];

    v13 = v30;
    v20 = v29;
    v14 = v28;
    v15 = v27;
    v16 = v26;
    v17 = v25;
    v18 = v24;
    v19 = v23;
    v21 = cf;
    CFRelease(cf);
  }

  else
  {
    v33 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136447490;
      v36 = "_Bool fillInt32FieldFromSimple(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
      v37 = 1024;
      v38 = 286;
      v39 = 2112;
      v40 = v16;
      v41 = 2112;
      v42 = v17;
      v43 = 2112;
      v44 = v18;
      v45 = 2112;
      v46 = v19;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find %@ %@ %@ %@", buf, 0x3Au);
    }
  }

  objc_autoreleasePoolPop(v20);

  return v21 != 0;
}

void sub_100039190(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = sub_1000351BC(a1, v17, v18, v19, v20);
  if (v22)
  {
    v23 = v22;
    v33 = v20;
    v34 = v19;
    v35 = v18;
    v24 = v17;
    Count = IOReportStateGetCount();
    if (Count >= 1)
    {
      v26 = Count;
      for (i = 0; i != v26; ++i)
      {
        v28 = IOReportStateGetNameForIndex();
        if ([v28 containsString:v21])
        {
          IOReportStateGetResidency();
          IOReportChannelGetUnit();
          IOReportScaleValue();
          v30 = v29;
          v31 = [v15 fieldForKey:v16];
          [v31 setUint64Value:v30];
        }
      }
    }

    CFRelease(v23);
    v17 = v24;
    v19 = v34;
    v18 = v35;
    v20 = v33;
  }

  else
  {
    v32 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136447490;
      v37 = "_Bool fillUInt64FieldFromState(NSDictionary * _Nonnull __strong, WAMessageAWD * _Nullable __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong, NSString * _Nonnull __strong)";
      v38 = 1024;
      v39 = 351;
      v40 = 2112;
      v41 = v17;
      v42 = 2112;
      v43 = v18;
      v44 = 2112;
      v45 = v19;
      v46 = 2112;
      v47 = v20;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find %@ %@ %@ %@", buf, 0x3Au);
    }
  }
}

void sub_10003A3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_10003A5A4(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (v3 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003A5D8()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10003A62C(exception);
}

std::logic_error *sub_10003A62C(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "basic_string");
  return result;
}

uint64_t sub_10003A668(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10003A5C8();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

id sub_10003AC00()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10010DDC0;
  v7 = qword_10010DDC0;
  if (!qword_10010DDC0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10003BB64;
    v3[3] = &unk_1000EDA60;
    v3[4] = &v4;
    sub_10003BB64(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10003ACC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10003ACF4(id a1)
{
  v1 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[WABackgroundTaskManager registerTasks]_block_invoke_2";
    v7 = 1024;
    v8 = 62;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Calling processDeferredPriorityPoliciesWithReason by bgTaskManager", &v5, 0x12u);
  }

  v2 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
  v3 = [v2 processDeferredPriorityPoliciesWithReason:@"WABackgroundTaskManager"];

  return v3;
}

BOOL sub_10003ADEC(id a1)
{
  v1 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[WABackgroundTaskManager registerTasks]_block_invoke_2";
    v7 = 1024;
    v8 = 75;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Calling processDeferredPoliciesWithReason by bgTaskManager", &v5, 0x12u);
  }

  v2 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
  v3 = [v2 processDeferredPoliciesWithReason:@"WABackgroundTaskManager"];

  return v3;
}

void sub_10003B9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003BA10(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v1 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446466;
    v3 = "[WABackgroundTaskManager _runBackgroundTask:withBlock:]_block_invoke";
    v4 = 1024;
    v5 = 160;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:BG task was expired", &v2, 0x12u);
  }
}

Class sub_10003BB64(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10010DDC8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10003BCB8;
    v4[4] = &unk_1000ED7E0;
    v4[5] = v4;
    v5 = off_1000EDA80;
    v6 = 0;
    qword_10010DDC8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10010DDC8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BGSystemTaskScheduler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_10010DDC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10003BCB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10010DDC8 = result;
  return result;
}

uint64_t sub_10003BDCC(uint64_t a1)
{
  qword_10010DDD0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_10003C03C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003C054(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _getInfraApple80211];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10003DD60(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10003E3A4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRecoveryType:*(a1 + 32)];
  [v3 setRecoveryReason:*(a1 + 40)];
  [v3 setApple80211Return:*(a1 + 48)];
}

void sub_10003E7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003E84C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003ED6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_10003F214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_100040F7C(_Unwind_Exception *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, ...)
{
  va_start(va, a11);

  sub_100041EAC(va);
  _Unwind_Resume(a1);
}

id sub_100040FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"IOReportChannels"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 objectAtIndexedSubscript:0];
        if ([v6 count] >= 2)
        {
          v8 = [v6 objectAtIndexedSubscript:2];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = [v8 isEqualToString:*(a1 + 32)];
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100041F64(id a1)
{
  qword_10010DE18 = objc_alloc_init(DatapathMetricStream);

  _objc_release_x1();
}

void sub_1000428F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100042920(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = [*(a1 + 32) megawifiprofile_diagnostic_metrics_enabled];
    v3 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446722;
      v7 = "[DatapathMetricStream observeValueForKeyPath:ofObject:change:context:]_block_invoke";
      v8 = 1024;
      v9 = 147;
      v10 = 1024;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Disabling and reenabling timer, to ensure new kMegaProfileDiagnosticMetricsPeriod_ms takes immediate effect, curr state %d, disabling", &v6, 0x18u);
    }

    [*(a1 + 32) setMegawifiprofile_diagnostic_metrics_enabled:0];
    [*(a1 + 32) updateTimerConfiguration];
    v4 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446722;
      v7 = "[DatapathMetricStream observeValueForKeyPath:ofObject:change:context:]_block_invoke";
      v8 = 1024;
      v9 = 152;
      v10 = 1024;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Applying previous state %d", &v6, 0x18u);
    }

    [*(a1 + 32) setMegawifiprofile_diagnostic_metrics_enabled:v2];
  }

  return [*(a1 + 32) updateTimerConfiguration];
}

void sub_100042D98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "[DatapathMetricStream fetchMetrics]_block_invoke";
      v26 = 1024;
      v27 = 202;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:DatapathMetricGetter get message error: %@", buf, 0x1Cu);
    }
  }

  else
  {
    v7 = v5;
    v8 = objc_autoreleasePoolPush();
    v9 = [*(a1 + 32) pbConverter];
    v10 = [v9 instantiateAWDProtobufAndPopulateValues:v7];

    [*(a1 + 32) streamPBCodeable:v10 additionalDictionaryItems:0];
    v11 = [v10 data];
    v12 = [v11 length];

    if (v12 > 0x2800)
    {
      v21 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [v10 data];
        *buf = 136446722;
        v25 = "[DatapathMetricStream fetchMetrics]_block_invoke";
        v26 = 1024;
        v27 = 197;
        v28 = 2048;
        v29 = [v22 length];
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to cache lastPB - len %lu", buf, 0x1Cu);
      }
    }

    else
    {
      v13 = [*(a1 + 32) lastPBLock];
      [v13 lock];

      v14 = [*(a1 + 32) lastPB];
      v15 = [v14 mutableBytes];
      [v10 data];
      v16 = v23 = v8;
      v17 = [v16 bytes];
      v18 = [v10 data];
      memcpy(v15, v17, [v18 length]);

      v8 = v23;
      v19 = [v10 data];
      [*(a1 + 32) setLastPBLength:{objc_msgSend(v19, "length")}];

      v20 = [*(a1 + 32) lastPBLock];
      [v20 unlock];
    }

    objc_autoreleasePoolPop(v8);
  }
}

void sub_100044614(id a1)
{
  if (objc_opt_class())
  {
    qword_10010DE28 = objc_alloc_init(ManagedConfiguration);

    _objc_release_x1();
  }
}

id sub_10004514C(uint64_t a1)
{
  [*(a1 + 32) startMonitoring];
  v2 = *(a1 + 32);

  return [v2 MCSettingsDidChange:0];
}

id sub_1000455BC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "void __DarwinCenterChangeNotification(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)";
    v9 = 1024;
    v10 = 305;
    v11 = 2112;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:__DarwinCenterChangeNotification %@", &v7, 0x1Cu);
  }

  return [a2 profileChangedCallback:0];
}

void sub_10004569C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[ManagedConfiguration startMonitoring]_block_invoke";
    v10 = 1024;
    v11 = 278;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Woken up by notifyd.\n", &v8, 0x12u);
  }

  type = xpc_get_type(v2);
  if (&_xpc_type_error != &_xpc_type_dictionary && type == &_xpc_type_dictionary)
  {
    v6 = xpc_dictionary_get_value(v2, _xpc_event_key_name);
    v7 = v6;
    if (v6 && xpc_get_type(v6) == &_xpc_type_string)
    {
      xpc_string_get_string_ptr(v7);
    }
  }
}

void sub_100045850(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:@"/private/var/Managed Preferences/mobile/com.apple.wifianalyticsd.plist"];

  context = v2;
  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) setProfileLoaded:0];
    v5 = 0;
    v38 = 0;
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  v43 = 0;
  v5 = [NSData dataWithContentsOfFile:@"/private/var/Managed Preferences/mobile/com.apple.wifianalyticsd.plist" options:0 error:&v43];
  v6 = v43;
  v38 = v6;
  if (!v5)
  {
    v19 = v6;
    v20 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v19 underlyingErrors];
      *buf = 136446978;
      v45 = "[ManagedConfiguration profileChangedCallback:]_block_invoke";
      v46 = 1024;
      v47 = 328;
      v48 = 2112;
      v49 = @"/private/var/Managed Preferences/mobile/com.apple.wifianalyticsd.plist";
      v50 = 2112;
      v51 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Unable to open %@, error %@", buf, 0x26u);
    }

    [*(a1 + 32) setProfileLoaded:0];
    v5 = 0;
    goto LABEL_20;
  }

  [*(a1 + 32) setProfileLoaded:1];
  v7 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:0];
  if (!v7)
  {
LABEL_21:
    v18 = 0;
    v16 = 0;
    v36 = 0;
    v37 = 0;
    v10 = 0;
    goto LABEL_22;
  }

  v8 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v45 = "[ManagedConfiguration profileChangedCallback:]_block_invoke";
    v46 = 1024;
    v47 = 334;
    v48 = 2112;
    v49 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found dictionary %@", buf, 0x1Cu);
  }

  v9 = [(__CFString *)v7 valueForKey:@"megawifiprofile_diagnostic_metrics_enabled"];
  v10 = v9;
  if (v9)
  {
    [*(a1 + 32) setMegawifiprofile_diagnostic_metrics_enabled:{objc_msgSend(v9, "BOOLValue")}];
  }

  v11 = [(__CFString *)v7 valueForKey:@"megawifiprofile_diagnostic_metrics_period_ms"];
  v12 = v11;
  if (v11)
  {
    [*(a1 + 32) setMegawifiprofile_diagnostic_metrics_period_ms:{objc_msgSend(v11, "unsignedIntValue")}];
  }

  v13 = [(__CFString *)v7 valueForKey:@"coredata_diagnostic_metrics_enabled"];
  v14 = v13;
  if (v13)
  {
    [*(a1 + 32) setCoredata_diagnostic_metrics_enabled:{objc_msgSend(v13, "BOOLValue")}];
  }

  v36 = v14;
  v15 = [(__CFString *)v7 valueForKey:@"coredata_diagnostic_metrics_enabled"];
  v16 = v15;
  if (v15)
  {
    [*(a1 + 32) setMegawifiprofile_diagnostic_metrics_before_first_assoc:{objc_msgSend(v15, "BOOLValue")}];
  }

  v17 = [(__CFString *)v7 valueForKey:@"coredata_diagnostic_metrics_enabled"];
  v18 = v17;
  v37 = v12;
  if (v17)
  {
    [*(a1 + 32) setMegawifiprofile_diagnostic_metrics_while_unassoc:{objc_msgSend(v17, "BOOLValue")}];
  }

LABEL_22:
  v22 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v45 = "[ManagedConfiguration profileChangedCallback:]_block_invoke";
    v46 = 1024;
    v47 = 364;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Exiting", buf, 0x12u);
  }

  v23 = [v10 isEqualToNumber:&off_100102DD0];
  if (v23)
  {
    v24 = @"Mega Profile Installed";
  }

  else if ([v10 isEqualToNumber:&off_100102DE8])
  {
    v24 = @"No Logging Profile Installed";
  }

  else
  {
    v24 = @"No Profile";
  }

  v25 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
  v26 = +[NSDate now];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100045E88;
  v40[3] = &unk_1000EDC58;
  v41 = v24;
  v42 = v23;
  [v25 diagnosticEventAt:v26 with:v40];

  LODWORD(v25) = [*(a1 + 32) profileLoaded];
  v27 = WALogCategoryDefaultHandle();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  if (v25)
  {
    if (v28)
    {
      *buf = 136446722;
      v45 = "[ManagedConfiguration profileChangedCallback:]_block_invoke_2";
      v46 = 1024;
      v47 = 388;
      v48 = 2112;
      v49 = v7;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:We think profileLoaded, copying prefs %@", buf, 0x1Cu);
    }

    v29 = [(__CFString *)v7 copy];
    v30 = *(a1 + 32);
    v31 = *(v30 + 48);
    *(v30 + 48) = v29;
  }

  else
  {
    if (v28)
    {
      *buf = 136446466;
      v45 = "[ManagedConfiguration profileChangedCallback:]_block_invoke";
      v46 = 1024;
      v47 = 391;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:profileLoaded false, assigning defaults", buf, 0x12u);
    }

    v32 = *(a1 + 32);
    v33 = *(v32 + 48);
    *(v32 + 48) = 0;

    v34 = +[WAUtil isWiFiFragmentSamplingEnabled];
    if (v34)
    {
      v35 = 600000;
    }

    else
    {
      v35 = 5000;
    }

    [*(a1 + 32) setMegawifiprofile_diagnostic_metrics_period_ms:v35];
    [*(a1 + 32) setMegawifiprofile_diagnostic_metrics_enabled:v34];
    [*(a1 + 32) setCoredata_diagnostic_metrics_enabled:v34];
    [*(a1 + 32) setMegawifiprofile_diagnostic_metrics_before_first_assoc:0];
    [*(a1 + 32) setMegawifiprofile_diagnostic_metrics_while_unassoc:1];
  }

  objc_autoreleasePoolPop(context);
}

void sub_100045E88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setDesc:v3];
  [v4 setEnabled:*(a1 + 40)];
  [v4 setName:@"WiFi Profile State"];
}

void sub_100046ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100046EEC(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_10010DE38;
  v9 = off_10010DE38;
  if (!off_10010DE38)
  {
    v3 = sub_10004DD90();
    v7[3] = dlsym(v3, "WiFiManagerClientCreate");
    off_10010DE38 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v5 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(a1, 0);
}

uint64_t sub_100047004(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_10010DE48;
  v11 = off_10010DE48;
  if (!off_10010DE48)
  {
    v5 = sub_10004DD90();
    v9[3] = dlsym(v5, "WiFiManagerClientScheduleWithRunLoop");
    off_10010DE48 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    dlerror();
    v7 = abort_report_np();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  return v4(a1, a2, @"managerClient entering runloop mode");
}

uint64_t sub_100047128(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_10010DE50;
  v9 = off_10010DE50;
  if (!off_10010DE50)
  {
    v3 = sub_10004DD90();
    v7[3] = dlsym(v3, "WiFiManagerClientCopyDevices");
    off_10010DE50 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v5 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(a1);
}

uint64_t sub_10004723C(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_10010DE60;
  v11 = off_10010DE60;
  if (!off_10010DE60)
  {
    v5 = sub_10004DD90();
    v9[3] = dlsym(v5, "WiFiManagerClientUnscheduleFromRunLoop");
    off_10010DE60 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    dlerror();
    v7 = abort_report_np();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  return v4(a1, a2, @"managerClient exiting runloop mode");
}

void sub_100047994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10004DD40(uint64_t a1)
{
  v2 = sub_10004DD90();
  result = dlsym(v2, "WiFiManagerClientCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10010DE38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10004DD90()
{
  v3[0] = 0;
  if (!qword_10010DE40)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10004DEA0;
    v3[4] = &unk_1000ED7E0;
    v3[5] = v3;
    v4 = off_1000EDC78;
    v5 = 0;
    qword_10010DE40 = _sl_dlopen();
    v1 = v3[0];
    v0 = qword_10010DE40;
    if (qword_10010DE40)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return qword_10010DE40;
}

uint64_t sub_10004DEA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10010DE40 = result;
  return result;
}

void *sub_10004DF14(uint64_t a1)
{
  v2 = sub_10004DD90();
  result = dlsym(v2, "WiFiManagerClientScheduleWithRunLoop");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10010DE48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10004DF64(uint64_t a1)
{
  v2 = sub_10004DD90();
  result = dlsym(v2, "WiFiManagerClientCopyDevices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10010DE50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10004DFB4(uint64_t a1)
{
  v2 = sub_10004DD90();
  result = dlsym(v2, "WiFiDeviceClientGetAppState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10010DE58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10004E004(uint64_t a1)
{
  v2 = sub_10004DD90();
  result = dlsym(v2, "WiFiManagerClientUnscheduleFromRunLoop");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10010DE60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10004E054(uint64_t a1)
{
  v2 = sub_10004DD90();
  result = dlsym(v2, "WiFiDeviceClientCopyCurrentNetwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10010DE68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10004E0A4(uint64_t a1)
{
  v2 = sub_10004DD90();
  result = dlsym(v2, "WiFiNetworkIsPriorityNetworkWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10010DE70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CCSubmitLogToCrashTracer(const char *a1)
{
  if (!a1 || !sub_10004E420())
  {
    return 0;
  }

  v2 = CFUUIDCreate(kCFAllocatorDefault);
  v23 = CFUUIDCreateString(kCFAllocatorDefault, v2);
  CFRelease(v2);
  v22 = [NSString stringWithFormat:@"%s", a1];
  v3 = off_10010DE80;
  if (off_10010DE80 || (v3 = sub_10004E420(), (off_10010DE80 = v3) != 0))
  {
    v4 = v3(@"InverseDeviceID", 0);
    v5 = off_10010DE80;
    if (off_10010DE80)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = sub_10004E420();
  off_10010DE80 = v7;
  if (v7)
  {
    v5 = v7;
LABEL_11:
    v8 = v5(@"ProductType", 0);
    v9 = off_10010DE80;
    if (off_10010DE80)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v8 = 0;
LABEL_14:
  v10 = sub_10004E420();
  off_10010DE80 = v10;
  if (!v10)
  {
    v11 = 0;
    goto LABEL_17;
  }

  v9 = v10;
LABEL_16:
  v11 = v9(@"UniqueDeviceID", 0);
LABEL_17:
  v12 = objc_alloc_init(NSDateFormatter);
  [v12 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS Z"];
  v13 = [v12 stringFromDate:{+[NSDate date](NSDate, "date")}];
  v14 = _CFCopySystemVersionDictionary();
  v15 = [v14 objectForKeyedSubscript:_kCFSystemVersionProductVersionKey];
  v16 = [v14 objectForKeyedSubscript:_kCFSystemVersionProductNameKey];
  v17 = [v14 objectForKeyedSubscript:_kCFSystemVersionBuildVersionKey];
  v18 = @"???";
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = @"???";
  }

  if (v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = @"???";
  }

  if (v17)
  {
    v18 = v17;
  }

  [NSString stringWithFormat:@"%@\n%@\n", [NSString stringWithFormat:@"\nIncident Identifier:     %@\nCrashReporter Key:       %@\nHardware Model:          %@\nProcess:                 WiFi Firmware\nPath:                    NA\nIdentifier:              WiFi Firmware Trap\nVersion:                 NA\nCode Type:               ARM-32\nRole                     NA\nParent Process:          NA\nCoalition:               NA\n\n\nDate/Time:               %@\nLauch Time:              NA\nOS Version:              %@\nBaseband Version:        NA\nUDID:                    %@\nReport Version:          NA\n", v23, v4, v8, v13, [NSString stringWithFormat:@"%@ %@ (%@)", v19, v20, v18], v11], v22];
  v6 = OSAWriteLogForSubmission();
  if (v4)
  {
    CFRelease(v4);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v6;
}

void *sub_10004E420()
{
  result = qword_10010DE78;
  if (!qword_10010DE78)
  {
    v1 = getenv("DYLD_IMAGE_SUFFIX");
    if (!v1)
    {
      v2 = "/usr/lib/libMobileGestalt.dylib";
      goto LABEL_8;
    }

    strcpy(v3, "/usr/lib/libMobileGestalt.dylib");
    if (strlcat(v3, v1, 0x400uLL) >= 0x400)
    {
      return 0;
    }

    if ((stat(v3, &v4) & 0x80000000) == 0)
    {
      v2 = v3;
LABEL_8:
      result = dlopen(v2, 6);
      qword_10010DE78 = result;
      if (!result)
      {
        return result;
      }

      return dlsym(result, "MGCopyAnswer");
    }

    result = qword_10010DE78;
    if (!qword_10010DE78)
    {
      return result;
    }
  }

  return dlsym(result, "MGCopyAnswer");
}

id sub_10004E504(uint64_t a1, void *a2)
{
  v3 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [*(a1 + 32) UTF8String], objc_msgSend(*(a1 + 40), "length") + *(a1 + 48));

  return [a2 writeData:v3];
}

uint64_t CCSubmitBinaryToCrashTracer(uint64_t result)
{
  if (result)
  {
    return OSAWriteLogForSubmission();
  }

  return result;
}

id sub_10004E630(uint64_t a1, void *a2)
{
  v3 = [NSData dataWithBytes:*(a1 + 32) length:*(a1 + 40)];

  return [a2 writeData:v3];
}

uint64_t CCSubmitLqmMetricsTLVBlockToCrashTracer(uint64_t result)
{
  if (result)
  {
    return OSAWriteLogForSubmission();
  }

  return result;
}

id sub_10004E738(uint64_t a1, void *a2)
{
  v3 = [NSData dataWithBytes:*(a1 + 32) length:*(a1 + 40)];

  return [a2 writeData:v3];
}

void sub_1000510C8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v3 = off_10010DEA0;
  v21 = off_10010DEA0;
  if (!off_10010DEA0)
  {
    *buf = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10005135C;
    v16 = &unk_1000EDA60;
    v17 = &v18;
    v4 = sub_1000513AC();
    v19[3] = dlsym(v4, "CoreCaptureControlCreate");
    off_10010DEA0 = *(v17[1] + 24);
    v3 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v3)
  {
    goto LABEL_13;
  }

  v5 = v3(kCFAllocatorDefault);
  if (v5)
  {
    v6 = v5;
    v7 = [@"WiFi" UTF8String];
    v8 = [*(a1 + 32) UTF8String];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v9 = off_10010DEA8;
    v21 = off_10010DEA8;
    if (!off_10010DEA8)
    {
      *buf = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_100051530;
      v16 = &unk_1000EDA60;
      v17 = &v18;
      v10 = sub_1000513AC();
      v19[3] = dlsym(v10, "CoreCaptureControlCaptureWithComponentDirectory");
      off_10010DEA8 = *(v17[1] + 24);
      v9 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (v9)
    {
      v9(v6, v7, v8);
      CFRelease(v6);
      goto LABEL_12;
    }

LABEL_13:
    dlerror();
    v12 = abort_report_np();
    _Block_object_dispose(&v18, 8);
    _Unwind_Resume(v12);
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Failed to WACoreCaptureControlCreate", buf, 2u);
  }

LABEL_12:
  objc_autoreleasePoolPop(v2);
}

void *sub_10005135C(uint64_t a1)
{
  v2 = sub_1000513AC();
  result = dlsym(v2, "CoreCaptureControlCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10010DEA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000513AC()
{
  v3[0] = 0;
  if (!qword_10010DE98)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000514BC;
    v3[4] = &unk_1000ED7E0;
    v3[5] = v3;
    v4 = off_1000EDD88;
    v5 = 0;
    qword_10010DE98 = _sl_dlopen();
    v1 = v3[0];
    v0 = qword_10010DE98;
    if (qword_10010DE98)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return qword_10010DE98;
}

uint64_t sub_1000514BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10010DE98 = result;
  return result;
}

void *sub_100051530(uint64_t a1)
{
  v2 = sub_1000513AC();
  result = dlsym(v2, "CoreCaptureControlCaptureWithComponentDirectory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10010DEA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000539A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      v15 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136446466;
        v30 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]_block_invoke";
        v31 = 1024;
        v32 = 405;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WARecommendNoneNoWatchdogBudget", &v29, 0x12u);
      }

      goto LABEL_47;
    }

    if (a2 == 2)
    {
      [*(a1 + 32) addNumRecommendedWD];
      if ([*(*(a1 + 32) + 16) disable_dps_wd])
      {
        v15 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 136446466;
          v30 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]_block_invoke";
          v31 = 1024;
          v32 = 328;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WARecommendTrapWatchdog WARecommendNull disable_dps_wd", &v29, 0x12u);
        }

        goto LABEL_47;
      }

      [*(a1 + 32) medianCCA:*(a1 + 40)];
      v19 = v18;
      v20 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136446722;
        v30 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]_block_invoke";
        v31 = 1024;
        v32 = 334;
        v33 = 2048;
        v34[0] = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:floatCCA %f", &v29, 0x1Cu);
      }

      v21 = [*(*(a1 + 32) + 16) dps_wd_cca];
      v22 = *(a1 + 32);
      if (v19 < v21)
      {
        v23 = [v22 medianRSSI:*(a1 + 40)];
        if ([*(*(a1 + 32) + 16) slow_dps_rssi_bin_threshold] >= v23 && *(a1 + 56) == 3)
        {
          [*(a1 + 32) addNumSuppressedWD];
          v24 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [*(*(a1 + 32) + 16) slow_dps_rssi_bin_threshold];
            v29 = 136446978;
            v30 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]_block_invoke";
            v31 = 1024;
            v32 = 347;
            v33 = 1024;
            LODWORD(v34[0]) = v23;
            WORD2(v34[0]) = 2048;
            *(v34 + 6) = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:sDPS: aborting watchdog since rssiBin (%d) <=  limit (%lu) [<= -85]", &v29, 0x22u);
          }

          v15 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v29 = 136446466;
            v30 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]_block_invoke";
            v31 = 1024;
            v32 = 348;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WARecommendTrapWatchdog WARecommendNull dps_wd_rssi", &v29, 0x12u);
          }
        }

        else
        {
          if ([*(a1 + 32) canWDforDPS])
          {
            v11 = +[NSDate date];
            [*(*(a1 + 32) + 8) setObject:v11 forKey:@"dps_lastWD"];
            v27 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = *(*(a1 + 32) + 8);
              v29 = 136446722;
              v30 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]_block_invoke";
              v31 = 1024;
              v32 = 362;
              v33 = 2112;
              v34[0] = v28;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:dpsWDBudgetDict %@", &v29, 0x1Cu);
            }

            v14 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v29 = 136446722;
              v30 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]_block_invoke";
              v31 = 1024;
              v32 = 363;
              v33 = 2112;
              *&v34[0] = v5;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WARecommendTrapWatchdog classification: %@", &v29, 0x1Cu);
            }

            goto LABEL_54;
          }

          [*(a1 + 32) addNumSuppressedWD];
          v15 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v29 = 136446466;
            v30 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]_block_invoke";
            v31 = 1024;
            v32 = 355;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WARecommendTrapWatchdog WARecommendNoneNoWatchdogBudget canWDforDPS", &v29, 0x12u);
          }
        }

        goto LABEL_47;
      }

      [v22 addNumSuppressedWD];
      v26 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136446722;
        v30 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]_block_invoke";
        v31 = 1024;
        v32 = 338;
        v33 = 2048;
        v34[0] = v19;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:sDPS: aborting watchdog since cca > limit (%f)", &v29, 0x1Cu);
      }

      v15 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136446466;
        v30 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]_block_invoke";
        v31 = 1024;
        v32 = 339;
        v17 = "%{public}s::%d:WARecommendTrapWatchdog WARecommendNull dps_wd_cca";
        goto LABEL_46;
      }

LABEL_47:

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    if (!a2)
    {
      v15 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136446466;
        v30 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]_block_invoke";
        v31 = 1024;
        v32 = 399;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WARecommendNull", &v29, 0x12u);
      }

      goto LABEL_47;
    }

    if (a2 == 1)
    {
      [*(a1 + 32) addNumRecommendedCapture];
      [*(a1 + 32) medianCCA:*(a1 + 40)];
      v7 = v6;
      v8 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136446722;
        v30 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]_block_invoke";
        v31 = 1024;
        v32 = 373;
        v33 = 2048;
        v34[0] = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:floatCCA %f", &v29, 0x1Cu);
      }

      v9 = [*(*(a1 + 32) + 16) dps_wd_cca];
      v10 = *(a1 + 32);
      if (v7 < v9)
      {
        if ([v10 canCaptureforDPS])
        {
          v11 = +[NSDate date];
          [*(*(a1 + 32) + 8) setObject:v11 forKey:@"dps_lastCapture"];
          v12 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(*(a1 + 32) + 8);
            v29 = 136446722;
            v30 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]_block_invoke";
            v31 = 1024;
            v32 = 391;
            v33 = 2112;
            v34[0] = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:dpsWDBudgetDict %@", &v29, 0x1Cu);
          }

          v14 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v29 = 136446722;
            v30 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]_block_invoke";
            v31 = 1024;
            v32 = 392;
            v33 = 2112;
            *&v34[0] = v5;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WARecommendFullCapture classification %@", &v29, 0x1Cu);
          }

LABEL_54:

          (*(*(a1 + 48) + 16))();
          goto LABEL_48;
        }

        [*(a1 + 32) addNumSuppressedCapture];
        v15 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 136446466;
          v30 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]_block_invoke";
          v31 = 1024;
          v32 = 385;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WARecommendFullCapture WARecommendNull canWDforDPS", &v29, 0x12u);
        }

        goto LABEL_47;
      }

      [v10 addNumSuppressedCapture];
      v16 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136446722;
        v30 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]_block_invoke";
        v31 = 1024;
        v32 = 377;
        v33 = 2048;
        v34[0] = v7;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:sDPS: aborting FullCapture since cca > limit (%f)", &v29, 0x1Cu);
      }

      v15 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136446466;
        v30 = "[RecommendationEngine recommendActionFromData:driverType:andReply:]_block_invoke";
        v31 = 1024;
        v32 = 378;
        v17 = "%{public}s::%d:WARecommendFullCapture WARecommendNull dps_wd_cca";
LABEL_46:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v17, &v29, 0x12u);
        goto LABEL_47;
      }

      goto LABEL_47;
    }
  }

LABEL_48:
}

id sub_1000546FC(uint64_t a1)
{
  v2 = [*(a1 + 32) BOOLValue];
  v3 = *(a1 + 40);

  return [v3 _updateProfileStateDate:v2];
}

id sub_1000548E8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10010DEC0;
  v7 = qword_10010DEC0;
  if (!qword_10010DEC0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100085BEC;
    v3[3] = &unk_1000EDA60;
    v3[4] = &v4;
    sub_100085BEC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000549B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100054F74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100054F90(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained engineQ];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100055078;
  v9[3] = &unk_1000EDDD0;
  objc_copyWeak(v11, (a1 + 40));
  v11[1] = a2;
  v9[4] = *(a1 + 32);
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);

  objc_destroyWeak(v11);
}

void sub_100055078(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (*(a1 + 56) == 1)
  {
    [WeakRetained setIsAssociated:{objc_msgSend(WeakRetained, "isAssociated")}];
    v5 = *(a1 + 32);
    if (*(v5 + 51) & 1) != 0 || ([*(v5 + 640) megawifiprofile_diagnostic_metrics_while_unassoc])
    {
      goto LABEL_10;
    }

    v6 = [*(*(a1 + 32) + 640) megawifiprofile_diagnostic_metrics_before_first_assoc];
    v7 = v6;
    v8 = *(*(a1 + 32) + 50);
    if (v8 == 1 && (v6 & 1) == 0)
    {
      v9 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v19 = 136446978;
        v20 = "[WAEngine initDatapathMetricGetterAndFetcher]_block_invoke";
        v21 = 1024;
        v22 = 783;
        v23 = 1024;
        v24 = [v4 isAssociated];
        v25 = 1024;
        v26 = [v4 isAssociatedStateKnown];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}s::%d:initDatapathMetricGetterAndFetcher _isAssociated %d _isAssociatedStateKnown %d", &v19, 0x1Eu);
      }

LABEL_15:
      v15 = 0;
      goto LABEL_16;
    }

    if ((v8 == 0) | v6 & 1)
    {
LABEL_10:
      v10 = os_transaction_create();
      v11 = +[WAActivityManager sharedActivityManager];
      [v11 osTransactionCreate:"com.apple.wifianalytics.DatapathMetricStream" transaction:v10];

      v12 = WALogCategoryDefaultHandle();
      if (os_signpost_enabled(v12))
      {
        LOWORD(v19) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DatapathMetricGetter", "", &v19, 2u);
      }

      [WAUtil incrementValueForKey:@"Log: DatapathMetricStream Trigger" inMutableDict:v4[86] onQueue:v4[11]];
      [v4 _triggerQueryForNWActivity:*(a1 + 56) forProcessToken:@"DatapathMetricStream" andReply:*(a1 + 40)];
      v13 = WALogCategoryDefaultHandle();
      if (os_signpost_enabled(v13))
      {
        LOWORD(v19) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DatapathMetricGetter", "", &v19, 2u);
      }

      v14 = +[WAActivityManager sharedActivityManager];
      [v14 osTransactionComplete:v10];

      goto LABEL_15;
    }

    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136446978;
      v20 = "[WAEngine initDatapathMetricGetterAndFetcher]_block_invoke";
      v21 = 1024;
      v22 = 786;
      v23 = 1024;
      v24 = [v4 isAssociatedStateKnown];
      v25 = 1024;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Not running _triggerQueryForNWActivity due to _isAssociatedStateKnown %d shouldExecuteGetter %d", &v19, 0x1Eu);
    }

    v15 = 0;
  }

  else
  {
    v16 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136446466;
      v20 = "[WAEngine initDatapathMetricGetterAndFetcher]_block_invoke_2";
      v21 = 1024;
      v22 = 776;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Only replyStyle = 1 supported", &v19, 0x12u);
    }

    v27 = NSLocalizedFailureReasonErrorKey;
    v28 = @"WAErrorCodeNotRegistered";
    v17 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v17];
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))(v18, 0, v15);
  }

LABEL_16:

  objc_autoreleasePoolPop(v2);
}

id sub_100055A50(uint64_t a1)
{
  v2 = WALogCategoryInitPersistentLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[WAEngine createNighltyTimer]_block_invoke";
    v6 = 1024;
    v7 = 847;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Calling processWiFiAnalyticsFilesInTmpDir from _nightlyTimer", &v4, 0x12u);
  }

  return [*(a1 + 32) processWiFiAnalyticsFilesInTmpDir:1];
}

void sub_100055B18(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryInitPersistentLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[WAEngine createNighltyTimer]_block_invoke";
    v6 = 1024;
    v7 = 861;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Calling processWiFiAnalyticsFilesInTmpDir at init", &v4, 0x12u);
  }

  [*(a1 + 32) processWiFiAnalyticsFilesInTmpDir:1];
  objc_autoreleasePoolPop(v2);
}

void sub_100056790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak(&location);
  objc_destroyWeak((v34 - 192));
  objc_destroyWeak((v34 - 184));
  _Unwind_Resume(a1);
}

void sub_100056828(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [WeakRetained token];
    v6 = [WAUtil trimTokenForLogging:v5];
    v7 = 136447490;
    v8 = "[WAEngine xpcConnection:establishConnectionWithToken:andReply:]_block_invoke";
    v9 = 1024;
    v10 = 965;
    v11 = 2112;
    v12 = v6;
    v13 = 1024;
    v14 = [v3 processIdentifier];
    v15 = 1024;
    v16 = [v3 effectiveUserIdentifier];
    v17 = 1024;
    v18 = [v3 effectiveGroupIdentifier];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:XPC: INTERRUPTED XPC CONNECTION with token=%@ [pid=%d, euid=%d, egid=%d]", &v7, 0x2Eu);
  }
}

void sub_100056994(id *a1)
{
  v2 = [a1[4] engineQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056A64;
  block[3] = &unk_1000EDE48;
  objc_copyWeak(&v4, a1 + 5);
  objc_copyWeak(&v5, a1 + 6);
  objc_copyWeak(&v6, a1 + 7);
  dispatch_async(v2, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v4);
}

void sub_100056A64(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v4 = objc_loadWeakRetained(a1 + 5);
  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained token];
    v7 = [WAUtil trimTokenForLogging:v6];
    v13 = 136447490;
    v14 = "[WAEngine xpcConnection:establishConnectionWithToken:andReply:]_block_invoke_2";
    v15 = 1024;
    v16 = 973;
    v17 = 2112;
    v18 = v7;
    v19 = 1024;
    v20 = [v4 processIdentifier];
    v21 = 1024;
    v22 = [v4 effectiveUserIdentifier];
    v23 = 1024;
    v24 = [v4 effectiveGroupIdentifier];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:XPC: INVALIDATED XPC CONNECTION with token=%@ [pid=%d, euid=%d, egid=%d]", &v13, 0x2Eu);
  }

  [v4 setExportedObject:0];
  [v4 setInterruptionHandler:0];
  [v4 setInvalidationHandler:0];
  v8 = [WeakRetained token];

  if (v8)
  {
    v9 = objc_loadWeakRetained(a1 + 6);
    v10 = [WeakRetained token];
    [v9 freeAllocationsForProcessToken:v10];

    v11 = [v9 processTokenToXPCConnectionMap];
    v12 = [WeakRetained token];
    [v11 removeObjectForKey:v12];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100056C88(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WAUtil incrementValueForKey:@"Client: Establish Connection" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
  v4 = *(a1 + 40);
  v5 = [WeakRetained processTokenToXPCConnectionMap];
  [v5 setObject:v4 forKeyedSubscript:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_100056E68(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [*(a1 + 32) connection];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v4 processIdentifier], "-[WAEngine xpcConnection:submitMessage:groupType:andReply:]_block_invoke");

  [v5 UTF8String];
  v6 = os_transaction_create();
  v7 = +[WAActivityManager sharedActivityManager];
  [v7 osTransactionCreate:objc_msgSend(v5 transaction:{"UTF8String"), v6}];

  if ([WeakRetained submitterMapCheck:*(a1 + 32) group:*(a1 + 64)])
  {
    [WAUtil incrementValueForKey:@"Client: Submit Message" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
    v8 = *(a1 + 64);
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) token];
    v11 = [WeakRetained _submitMessage:v9 groupType:v8 forProcessToken:v10];
  }

  else
  {
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v19 = "[WAEngine xpcConnection:submitMessage:groupType:andReply:]_block_invoke";
      v20 = 1024;
      v21 = 1010;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:not registered, bailing", buf, 0x12u);
    }

    v16 = NSLocalizedFailureReasonErrorKey;
    v17 = @"WAErrorCodeNotRegistered";
    v15 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v15];
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v11);
  }

  v13 = +[WAActivityManager sharedActivityManager];
  [v13 osTransactionComplete:v6];

  objc_autoreleasePoolPop(v2);
}

void sub_100057218(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained submitterMapCheck:*(a1 + 32) group:*(a1 + 56)])
  {
    [WAUtil incrementValueForKey:@"Client: Get Message Model For Group" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
    v4 = [*(a1 + 32) token];
    v5 = *(a1 + 56);
    v10 = 0;
    v6 = [WeakRetained _getMessagesModelForProcessToken:v4 groupType:v5 andError:&v10];
    v7 = v10;
  }

  else
  {
    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v14 = "[WAEngine xpcConnection:getMessagesModelForGroupType:andReply:]_block_invoke";
      v15 = 1024;
      v16 = 1031;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:not registered, bailing", buf, 0x12u);
    }

    v11 = NSLocalizedFailureReasonErrorKey;
    v12 = @"WAErrorCodeNotRegistered";
    v4 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v7 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v4];
    v6 = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v7);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005751C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 56);
    v6 = [*(a1 + 32) token];
    v7 = [WAUtil trimTokenForLogging:v6];
    v46 = 136446978;
    v47 = "[WAEngine xpcConnection:registerMessageGroup:andReply:]_block_invoke";
    v48 = 1024;
    v49 = 1049;
    v50 = 2048;
    v51 = v5;
    v52 = 2112;
    v53 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Received request to register message group type: %ld for process: %@", &v46, 0x26u);
  }

  v8 = [*(a1 + 32) token];

  if (v8)
  {
    v9 = [WeakRetained submitterMap];
    v10 = [*(a1 + 32) token];
    v11 = [v9 objectForKeyedSubscript:v10];
    v12 = [NSNumber numberWithInteger:*(a1 + 56)];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (v13)
    {
      v30 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v32 = [*(a1 + 32) token];
      v33 = [WAUtil trimTokenForLogging:v32];
      v46 = 136446722;
      v47 = "[WAEngine xpcConnection:registerMessageGroup:andReply:]_block_invoke";
      v48 = 1024;
      v49 = 1051;
      v50 = 2112;
      v51 = v33;
      v34 = "%{public}s::%d:token is already registered (token: %@)";
      v35 = v30;
      v36 = OS_LOG_TYPE_DEFAULT;
      v37 = 28;
    }

    else
    {
      v14 = [WeakRetained processTokenToGroupTypeMap];
      v15 = [*(a1 + 32) token];
      v16 = [v14 objectForKeyedSubscript:v15];
      v17 = [NSNumber numberWithInteger:*(a1 + 56)];
      v18 = [v16 containsObject:v17];

      if (v18)
      {
        v30 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v45 = *(a1 + 56);
          v46 = 136446722;
          v47 = "[WAEngine xpcConnection:registerMessageGroup:andReply:]_block_invoke";
          v48 = 1024;
          v49 = 1052;
          v50 = 2048;
          v51 = v45;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: processTokenToGroupTypeMap seems to think this process token has already registered group type: %ld", &v46, 0x1Cu);
        }

        goto LABEL_11;
      }

      [WAUtil incrementValueForKey:@"Client: Register Message Group" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
      [WeakRetained _purgeGroupTypeIfNecessary:*(a1 + 56)];
      v19 = [WeakRetained processTokenToGroupTypeMap];
      v20 = [*(a1 + 32) token];
      v21 = [v19 objectForKeyedSubscript:v20];

      if (!v21)
      {
        v22 = objc_alloc_init(NSMutableSet);
        v23 = [WeakRetained processTokenToGroupTypeMap];
        v24 = [*(a1 + 32) token];
        [v23 setObject:v22 forKeyedSubscript:v24];
      }

      v25 = [WeakRetained processTokenToGroupTypeMap];
      v26 = [*(a1 + 32) token];
      v27 = [v25 objectForKeyedSubscript:v26];
      v28 = [NSNumber numberWithInteger:*(a1 + 56)];
      [v27 addObject:v28];

      v29 = [*(a1 + 32) token];
      [WeakRetained _initSubmitterAndQueryableRegistrationForProcessToken:v29 andGroupType:*(a1 + 56)];

      [WeakRetained _persist];
      v30 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
LABEL_11:
        v38 = 0;
        goto LABEL_12;
      }

      v31 = *(a1 + 56);
      v32 = [*(a1 + 32) token];
      v33 = [WAUtil trimTokenForLogging:v32];
      v46 = 136446978;
      v47 = "[WAEngine xpcConnection:registerMessageGroup:andReply:]_block_invoke";
      v48 = 1024;
      v49 = 1062;
      v50 = 2048;
      v51 = v31;
      v52 = 2112;
      v53 = v33;
      v34 = "%{public}s::%d:XPC: registering message group type: %ld for process: %@";
      v35 = v30;
      v36 = OS_LOG_TYPE_DEBUG;
      v37 = 38;
    }

    _os_log_impl(&_mh_execute_header, v35, v36, v34, &v46, v37);

    goto LABEL_11;
  }

  v44 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 136446466;
    v47 = "[WAEngine xpcConnection:registerMessageGroup:andReply:]_block_invoke";
    v48 = 1024;
    v49 = 1050;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:couldn't get process name for connection", &v46, 0x12u);
  }

  v56 = NSLocalizedFailureReasonErrorKey;
  v57 = @"WAErrorCodeInternalError";
  v30 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v38 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9003 userInfo:v30];
LABEL_12:

  v39 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    v40 = *(a1 + 56);
    v41 = [*(a1 + 32) token];
    v42 = [WAUtil trimTokenForLogging:v41];
    v46 = 136447234;
    v47 = "[WAEngine xpcConnection:registerMessageGroup:andReply:]_block_invoke";
    v48 = 1024;
    v49 = 1065;
    v50 = 2048;
    v51 = v40;
    v52 = 2112;
    v53 = v42;
    v54 = 2112;
    v55 = v38;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Replying to request to register message group type: %ld for process: %@ %@", &v46, 0x30u);
  }

  v43 = *(a1 + 40);
  if (v43)
  {
    (*(v43 + 16))(v43, 0, v38);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100057D90(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if ([WeakRetained submitterMapCheck:*(a1 + 32) group:*(a1 + 72)])
  {
    v4 = [*(a1 + 32) connection];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v4 processIdentifier], "-[WAEngine xpcConnection:getNewMessageForKey:groupType:withCopy:andReply:]_block_invoke");

    [v5 UTF8String];
    v6 = os_transaction_create();
    v7 = +[WAActivityManager sharedActivityManager];
    [v7 osTransactionCreate:objc_msgSend(v5 transaction:{"UTF8String"), v6}];

    [WAUtil incrementValueForKey:@"Client: Get New Message For Key" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
    v8 = *(a1 + 72);
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) BOOLValue];
    v11 = [*(a1 + 32) token];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000580C0;
    v19[3] = &unk_1000EDEE8;
    v20 = *(a1 + 56);
    [WeakRetained _getNewMessageForKey:v9 groupType:v8 withCopy:v10 forProcessToken:v11 shouldCheckForPrePopulation:1 andReply:v19];

    v12 = +[WAActivityManager sharedActivityManager];
    [v12 osTransactionComplete:v6];

    v13 = 0;
  }

  else
  {
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) token];
      v16 = *(a1 + 72);
      *buf = 136446978;
      v24 = "[WAEngine xpcConnection:getNewMessageForKey:groupType:withCopy:andReply:]_block_invoke";
      v25 = 1024;
      v26 = 1080;
      v27 = 2112;
      v28 = v15;
      v29 = 2048;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:token %@ group %ld not registered, bailing", buf, 0x26u);
    }

    v21 = NSLocalizedFailureReasonErrorKey;
    v22 = @"WAErrorCodeNotRegistered";
    v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v17];

    v18 = *(a1 + 56);
    if (v18)
    {
      (*(v18 + 16))(v18, 0, v13);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100058398(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) listener];
  [v3 suspend];

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [*(a1 + 40) connection];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v5 processIdentifier], "-[WAEngine xpcConnection:killDaemonAndReply:]_block_invoke");

  [v6 UTF8String];
  v7 = os_transaction_create();
  v8 = +[WAActivityManager sharedActivityManager];
  [v8 osTransactionCreate:objc_msgSend(v6 transaction:{"UTF8String"), v7}];

  [WAUtil incrementValueForKey:@"Client: Kill Daemon" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
  [WeakRetained _killDaemonAndReply:*(a1 + 48)];
  v9 = +[WAActivityManager sharedActivityManager];
  [v9 osTransactionComplete:v7];

  objc_autoreleasePoolPop(v2);
}

void sub_1000587B8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [*(a1 + 32) connection];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v4 processIdentifier], "-[WAEngine xpcConnection:clearMessageStoreAndReply:]_block_invoke");

  [v5 UTF8String];
  v6 = os_transaction_create();
  v7 = +[WAActivityManager sharedActivityManager];
  [v7 osTransactionCreate:objc_msgSend(v5 transaction:{"UTF8String"), v6}];

  [WAUtil incrementValueForKey:@"Client: Clear Message Store" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
  [WeakRetained _clearMessageStoreAndReply:*(a1 + 40)];
  v8 = +[WAActivityManager sharedActivityManager];
  [v8 osTransactionComplete:v6];

  objc_autoreleasePoolPop(v2);
}

void sub_100058BE8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [*(a1 + 32) connection];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v4 processIdentifier], "-[WAEngine xpcConnection:trapCrashMiniTracerDumpReadyForInterfaceWithName:andReply:]_block_invoke");

  [v5 UTF8String];
  v6 = os_transaction_create();
  v7 = +[WAActivityManager sharedActivityManager];
  [v7 osTransactionCreate:objc_msgSend(v5 transaction:{"UTF8String"), v6}];

  [WAUtil incrementValueForKey:@"Client: Trap Crash Mini Tracer Dump" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
  [WeakRetained _trapCrashMiniTracerDumpReadyForInterfaceWithName:*(a1 + 40) andReply:*(a1 + 48)];
  v8 = +[WAActivityManager sharedActivityManager];
  [v8 osTransactionComplete:v6];

  objc_autoreleasePoolPop(v2);
}

void sub_100059018(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [*(a1 + 32) connection];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v4 processIdentifier], "-[WAEngine xpcConnection:lqmCrashTracerNotifyForInterfaceWithName:andReply:]_block_invoke");

  [v5 UTF8String];
  v6 = os_transaction_create();
  v7 = +[WAActivityManager sharedActivityManager];
  [v7 osTransactionCreate:objc_msgSend(v5 transaction:{"UTF8String"), v6}];

  [WAUtil incrementValueForKey:@"Client: LQM Crash Tracer Notify" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
  [WeakRetained _lqmCrashTracerNotifyForInterfaceWithName:*(a1 + 40) andReply:*(a1 + 48)];
  v8 = +[WAActivityManager sharedActivityManager];
  [v8 osTransactionComplete:v6];

  objc_autoreleasePoolPop(v2);
}

void sub_100059468(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = [*(a1 + 32) connection];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v4 processIdentifier], "-[WAEngine xpcConnection:lqmCrashTracerReceiveBlock:forInterfaceWithName:andReply:]_block_invoke");

  [v5 UTF8String];
  v6 = os_transaction_create();
  v7 = +[WAActivityManager sharedActivityManager];
  [v7 osTransactionCreate:objc_msgSend(v5 transaction:{"UTF8String"), v6}];

  [WAUtil incrementValueForKey:@"Client: LQM Crash Tracer Receive" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
  [WeakRetained _lqmCrashTracerReceiveBlock:*(a1 + 40) forInterfaceWithName:*(a1 + 48) andReply:*(a1 + 56)];
  v8 = +[WAActivityManager sharedActivityManager];
  [v8 osTransactionComplete:v6];

  objc_autoreleasePoolPop(v2);
}

void sub_1000596D0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (*(a1 + 56) == 1 && ([WeakRetained submitterMapCheck:*(a1 + 32) group:3] & 1) == 0)
  {
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v21 = "[WAEngine xpcConnection:triggerQueryForNWActivity:andReply:]_block_invoke";
      v22 = 1024;
      v23 = 1224;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:not registered, bailing", buf, 0x12u);
    }

    v18 = NSLocalizedFailureReasonErrorKey;
    v19 = @"WAErrorCodeNotRegistered";
    v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v6 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v15];

    v16 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "XPC NWActivity Reply", "", buf, 2u);
    }

    v17 = *(a1 + 40);
    if (v17)
    {
      (*(v17 + 16))(v17, 0, v6);
    }

    v7 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "XPC NWActivity Reply", "", buf, 2u);
    }
  }

  else
  {
    v5 = [*(a1 + 32) connection];
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v5 processIdentifier], "-[WAEngine xpcConnection:triggerQueryForNWActivity:andReply:]_block_invoke");

    [v6 UTF8String];
    v7 = os_transaction_create();
    v8 = +[WAActivityManager sharedActivityManager];
    [v8 osTransactionCreate:objc_msgSend(v6 transaction:{"UTF8String"), v7}];

    v9 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "XPC NWActivity", "", buf, 2u);
    }

    [WAUtil incrementValueForKey:@"Client: Trigger Query for NW Activity" inMutableDict:v4[86] onQueue:v4[11]];
    v10 = *(a1 + 56);
    v11 = [*(a1 + 32) token];
    [v4 _triggerQueryForNWActivity:v10 forProcessToken:v11 andReply:*(a1 + 40)];

    v12 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "XPC NWActivity", "", buf, 2u);
    }

    v13 = +[WAActivityManager sharedActivityManager];
    [v13 osTransactionComplete:v7];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100059BDC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([WeakRetained submitterMapCheck:*(a1 + 32) group:3])
  {
    v4 = [*(a1 + 32) connection];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v4 processIdentifier], "-[WAEngine xpcConnection:triggerQueryForNWActivityWithPeers:andReply:]_block_invoke");

    [v5 UTF8String];
    v6 = os_transaction_create();
    v7 = +[WAActivityManager sharedActivityManager];
    [v7 osTransactionCreate:objc_msgSend(v5 transaction:{"UTF8String"), v6}];

    v8 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "XPC NWPeerActivity", "", buf, 2u);
    }

    [WAUtil incrementValueForKey:@"Client: Trigger Query for NW Peer Activity" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) token];
    [WeakRetained _triggerQueryForNWActivityWithPeers:v9 forProcessToken:v10 andReply:*(a1 + 48)];

    v11 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "XPC NWPeerActivity", "", buf, 2u);
    }

    v12 = +[WAActivityManager sharedActivityManager];
    [v12 osTransactionComplete:v6];

    v13 = 0;
  }

  else
  {
    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v21 = "[WAEngine xpcConnection:triggerQueryForNWActivityWithPeers:andReply:]_block_invoke";
      v22 = 1024;
      v23 = 1257;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:not registered, bailing", buf, 0x12u);
    }

    v18 = NSLocalizedFailureReasonErrorKey;
    v19 = @"WAErrorCodeNotRegistered";
    v5 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v5];
  }

  v14 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "XPC NWPeerActivity Reply", "", buf, 2u);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, 0, v13);
  }

  v16 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "XPC NWPeerActivity Reply", "", buf, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005A10C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if ([WeakRetained submitterMapCheck:*(a1 + 32) group:3])
  {
    v4 = [*(a1 + 32) connection];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v4 processIdentifier], "-[WAEngine xpcConnection:convertWiFiStatsIntoPercentile:analysisGroup:groupTarget:andReply:]_block_invoke");

    [v5 UTF8String];
    v6 = os_transaction_create();
    v7 = +[WAActivityManager sharedActivityManager];
    [v7 osTransactionCreate:objc_msgSend(v5 transaction:{"UTF8String"), v6}];

    [WAUtil incrementValueForKey:@"Client: Convert WiFi Stats into Percentile" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
    v8 = *(a1 + 72);
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = [*(a1 + 32) token];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10005A3FC;
    v16[3] = &unk_1000EDEE8;
    v17 = *(a1 + 56);
    [WeakRetained _convertWiFiStatsIntoPercentile:v10 analysisGroup:v8 groupTarget:v9 forProcessToken:v11 andReply:v16];

    v12 = +[WAActivityManager sharedActivityManager];
    [v12 osTransactionComplete:v6];

    v13 = 0;
  }

  else
  {
    v15 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v21 = "[WAEngine xpcConnection:convertWiFiStatsIntoPercentile:analysisGroup:groupTarget:andReply:]_block_invoke";
      v22 = 1024;
      v23 = 1290;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:not registered, bailing", buf, 0x12u);
    }

    v18 = NSLocalizedFailureReasonErrorKey;
    v19 = @"WAErrorCodeNotRegistered";
    v5 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v5];
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    (*(v14 + 16))(v14, 0, v13);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005A550(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (*(a1 + 64) != 1)
  {
    goto LABEL_3;
  }

  v5 = [WeakRetained submitterMap];
  v6 = [*(a1 + 32) token];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 objectForKeyedSubscript:&off_1001030A0];

  if (!v8)
  {
    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v23 = "[WAEngine xpcConnection:triggerDatapathDiagnosticsAndCollectUpdates:waMessage:andReply:]_block_invoke";
      v24 = 1024;
      v25 = 1319;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:not registered, bailing", buf, 0x12u);
    }

    v20 = NSLocalizedFailureReasonErrorKey;
    v21 = @"WAErrorCodeNotRegistered";
    v18 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v16 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v18];

    v19 = *(a1 + 48);
    if (v19)
    {
      (*(v19 + 16))(v19, 0, v16);
    }
  }

  else
  {
LABEL_3:
    v9 = [*(a1 + 32) connection];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v9 processIdentifier], "-[WAEngine xpcConnection:triggerDatapathDiagnosticsAndCollectUpdates:waMessage:andReply:]_block_invoke");

    [v10 UTF8String];
    v11 = os_transaction_create();
    v12 = +[WAActivityManager sharedActivityManager];
    [v12 osTransactionCreate:objc_msgSend(v10 transaction:{"UTF8String"), v11}];

    [WAUtil incrementValueForKey:@"Client: Trigger Datapath Diagnostic" inMutableDict:v4[86] onQueue:v4[11]];
    v13 = *(a1 + 64);
    v14 = [*(a1 + 32) token];
    [v4 _triggerDatapathDiagnosticsAndCollectUpdates:v13 forProcessToken:v14 waMessage:*(a1 + 40) andReply:*(a1 + 48)];

    v15 = +[WAActivityManager sharedActivityManager];
    [v15 osTransactionComplete:v11];

    v16 = 0;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005A940(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [*(a1 + 32) connection];
  v5 = [v4 valueForEntitlement:@"com.apple.private.wifianalytics"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [*(a1 + 32) connection];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v7 processIdentifier], "-[WAEngine xpcConnection:getDpsStatsandReply:]_block_invoke");

    [v8 UTF8String];
    v9 = os_transaction_create();
    v10 = +[WAActivityManager sharedActivityManager];
    [v10 osTransactionCreate:objc_msgSend(v8 transaction:{"UTF8String"), v9}];

    [WAUtil incrementValueForKey:@"Client: Get DPS Stats" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
    v11 = [WeakRetained _DPSQuickRecoveryEngineObj];
    v12 = [WeakRetained recommendationEngine];
    v13 = [v12 dpsWDBudgetDict];
    v14 = [v11 updateDpsStats:v13];
    v15 = [NSDictionary dictionaryWithDictionary:v14];

    v16 = +[WAActivityManager sharedActivityManager];
    [v16 osTransactionComplete:v9];
  }

  else
  {
    v18 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [*(a1 + 32) token];
      v20 = [WAUtil trimTokenForLogging:v19];
      v21 = [*(a1 + 32) connection];
      *buf = 136447234;
      v23 = "[WAEngine xpcConnection:getDpsStatsandReply:]_block_invoke";
      v24 = 1024;
      v25 = 1349;
      v26 = 2112;
      v27 = v20;
      v28 = 1024;
      v29 = [v21 processIdentifier];
      v30 = 2112;
      v31 = @"com.apple.private.wifianalytics";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: ERROR: %@ (%d) is not entitled with WA_XPC_ENTITLEMENT for %@, rejecting connection!!!", buf, 0x2Cu);
    }

    v8 = 0;
    v15 = 0;
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v15, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005AD64(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [*(a1 + 32) connection];
  v5 = [v4 valueForEntitlement:@"com.apple.private.wifianalytics"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [*(a1 + 32) connection];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v7 processIdentifier], "-[WAEngine xpcConnection:getUsageStatsandReply:]_block_invoke");

    [v8 UTF8String];
    v9 = os_transaction_create();
    v10 = +[WAActivityManager sharedActivityManager];
    [v10 osTransactionCreate:objc_msgSend(v8 transaction:{"UTF8String"), v9}];

    [WAUtil incrementValueForKey:@"Client: Get Usage Stats" inMutableDict:*(WeakRetained + 86) onQueue:*(WeakRetained + 11)];
    [WeakRetained _calculateEstimatedUptime];
    [WeakRetained _calculateProcessUsage];
    [WeakRetained _calculateProfileUptime];
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:*(WeakRetained + 86) forKey:@"Module_Engine"];
    v12 = [*(WeakRetained + 13) getCachedUsage];
    v13 = [v12 copy];

    if (v13)
    {
      [v11 setObject:v13 forKey:@"Module_IOR"];
    }

    v14 = [*(a1 + 40) nowCacheUsageForTelemetry];
    [WAUtil logNestedDictionary:v14 indent:0 prefix:@"getUsageStatsandReply "];

    v15 = +[WAActivityManager sharedActivityManager];
    [v15 osTransactionComplete:v9];
  }

  else
  {
    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [*(a1 + 32) token];
      v19 = [WAUtil trimTokenForLogging:v18];
      v20 = [*(a1 + 32) connection];
      *buf = 136447234;
      v22 = "[WAEngine xpcConnection:getUsageStatsandReply:]_block_invoke";
      v23 = 1024;
      v24 = 1379;
      v25 = 2112;
      v26 = v19;
      v27 = 1024;
      v28 = [v20 processIdentifier];
      v29 = 2112;
      v30 = @"com.apple.private.wifianalytics";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: ERROR: %@ (%d) is not entitled with WA_XPC_ENTITLEMENT for %@, rejecting connection!!!", buf, 0x2Cu);
    }

    v8 = 0;
    v13 = 0;
    v11 = 0;
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, v11, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005B1DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([WeakRetained submitterMapCheck:*(a1 + 32) group:5])
  {
    v4 = [*(a1 + 32) connection];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v4 processIdentifier], "-[WAEngine xpcConnection:setDeviceAnalyticsConfiguration:andReply:]_block_invoke");

    [v5 UTF8String];
    v6 = os_transaction_create();
    v7 = +[WAActivityManager sharedActivityManager];
    [v7 osTransactionCreate:objc_msgSend(v5 transaction:{"UTF8String"), v6}];

    [WAUtil incrementValueForKey:@"Client: Set Device Analytics Config" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
    v8 = [WeakRetained _setDeviceAnalyticsConfiguration:*(a1 + 40)];
    v9 = +[WAActivityManager sharedActivityManager];
    [v9 osTransactionComplete:v6];
  }

  else
  {
    v11 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v15 = "[WAEngine xpcConnection:setDeviceAnalyticsConfiguration:andReply:]_block_invoke";
      v16 = 1024;
      v17 = 1421;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:not registered, bailing", buf, 0x12u);
    }

    v12 = NSLocalizedFailureReasonErrorKey;
    v13 = @"WAErrorCodeNotRegistered";
    v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v5];
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, 0, v8);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005B554(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained submitterMapCheck:*(a1 + 32) group:5])
  {
    v4 = [*(a1 + 32) connection];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v4 processIdentifier], "-[WAEngine xpcConnection:getDeviceAnalyticsConfigurationAndReply:]_block_invoke");

    [v5 UTF8String];
    v6 = os_transaction_create();
    v7 = +[WAActivityManager sharedActivityManager];
    [v7 osTransactionCreate:objc_msgSend(v5 transaction:{"UTF8String"), v6}];

    [WAUtil incrementValueForKey:@"Client: Get Device Analytics Config" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
    v8 = [WeakRetained _getDeviceAnalyticsConfiguration];
    v9 = +[WAActivityManager sharedActivityManager];
    [v9 osTransactionComplete:v6];

    v10 = 0;
  }

  else
  {
    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v17 = "[WAEngine xpcConnection:getDeviceAnalyticsConfigurationAndReply:]_block_invoke";
      v18 = 1024;
      v19 = 1448;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:not registered, bailing", buf, 0x12u);
    }

    v14 = NSLocalizedFailureReasonErrorKey;
    v15 = @"WAErrorCodeNotRegistered";
    v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v13];

    v5 = 0;
    v8 = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v8, v10);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005B8DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained submitterMapCheck:*(a1 + 32) group:5])
  {
    v4 = [*(a1 + 32) connection];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v4 processIdentifier], "-[WAEngine xpcConnection:signalPotentialNewIORChannelsAndReply:]_block_invoke");

    [v5 UTF8String];
    v6 = os_transaction_create();
    v7 = +[WAActivityManager sharedActivityManager];
    [v7 osTransactionCreate:objc_msgSend(v5 transaction:{"UTF8String"), v6}];

    [WAUtil incrementValueForKey:@"Client: New Potential IORep Channels" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v17 = "[WAEngine xpcConnection:signalPotentialNewIORChannelsAndReply:]_block_invoke";
      v18 = 1024;
      v19 = 1483;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Received xpc -- Calling signalPotentialNewIORChannels", buf, 0x12u);
    }

    v9 = [WeakRetained iorMessagePopulator];
    [v9 signalPotentialNewIORChannels];

    v10 = +[WAActivityManager sharedActivityManager];
    [v10 osTransactionComplete:v6];

    v11 = 0;
  }

  else
  {
    v13 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v17 = "[WAEngine xpcConnection:signalPotentialNewIORChannelsAndReply:]_block_invoke";
      v18 = 1024;
      v19 = 1477;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:not registered, bailing", buf, 0x12u);
    }

    v14 = NSLocalizedFailureReasonErrorKey;
    v15 = @"WAErrorCodeNotRegistered";
    v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v11 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v5];
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v11);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005BCF0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([WeakRetained submitterMapCheck:*(a1 + 32) group:5])
  {
    v4 = [*(a1 + 32) connection];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v4 processIdentifier], "-[WAEngine xpcConnection:updateRoamPoliciesForSourceBssid:andUpdateRoamCache:andReply:]_block_invoke");

    [v5 UTF8String];
    v6 = os_transaction_create();
    v7 = +[WAActivityManager sharedActivityManager];
    [v7 osTransactionCreate:objc_msgSend(v5 transaction:{"UTF8String"), v6}];

    [WAUtil incrementValueForKey:@"Client: Update Roam Policies For Source BSSID" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
    v8 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v19 = "[WAEngine xpcConnection:updateRoamPoliciesForSourceBssid:andUpdateRoamCache:andReply:]_block_invoke";
      v20 = 1024;
      v21 = 1511;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Calling updateRoamPoliciesForSourceBssid: on strongEngine.deviceAnalyticsClient", buf, 0x12u);
    }

    v9 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
    v10 = [v9 updateRoamPoliciesForSourceBssid:*(a1 + 40) andUpdateRoamCache:*(a1 + 64)];

    v11 = +[WAActivityManager sharedActivityManager];
    [v11 osTransactionComplete:v6];

    v12 = 0;
  }

  else
  {
    v15 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v19 = "[WAEngine xpcConnection:updateRoamPoliciesForSourceBssid:andUpdateRoamCache:andReply:]_block_invoke";
      v20 = 1024;
      v21 = 1505;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:not registered, bailing", buf, 0x12u);
    }

    v16 = NSLocalizedFailureReasonErrorKey;
    v17 = @"WAErrorCodeNotRegistered";
    v5 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v12 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v5];
    v10 = 0;
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = [NSNumber numberWithBool:v10];
    (*(v13 + 16))(v13, v14, v12);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005C138(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([WeakRetained submitterMapCheck:*(a1 + 32) group:5])
  {
    v4 = [*(a1 + 32) connection];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v4 processIdentifier], "-[WAEngine xpcConnection:updateRoamPoliciesAndSummarizeAnalyticsForNetwork:maxAgeInDays:andReply:]_block_invoke");

    [v5 UTF8String];
    v6 = os_transaction_create();
    v7 = +[WAActivityManager sharedActivityManager];
    [v7 osTransactionCreate:objc_msgSend(v5 transaction:{"UTF8String"), v6}];

    [WAUtil incrementValueForKey:@"Client: Summarize Device Analytics For Network" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
    v8 = [WeakRetained _updateRoamPoliciesAndSummarizeAnalyticsForNetwork:*(a1 + 40) maxAgeInDays:*(a1 + 64)];
    v9 = +[WAActivityManager sharedActivityManager];
    [v9 osTransactionComplete:v6];

    v10 = 0;
  }

  else
  {
    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v17 = "[WAEngine xpcConnection:updateRoamPoliciesAndSummarizeAnalyticsForNetwork:maxAgeInDays:andReply:]_block_invoke";
      v18 = 1024;
      v19 = 1532;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:not registered, bailing", buf, 0x12u);
    }

    v14 = NSLocalizedFailureReasonErrorKey;
    v15 = @"WAErrorCodeNotRegistered";
    v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v13];

    v5 = 0;
    v8 = 0;
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v8, v10);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005C564(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained submitterMapCheck:*(a1 + 32) group:5])
  {
    v4 = [*(a1 + 32) connection];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v4 processIdentifier], "-[WAEngine xpcConnection:triggerDeviceAnalyticsStoreMigrationAndReply:]_block_invoke");

    [v5 UTF8String];
    v6 = os_transaction_create();
    v7 = +[WAActivityManager sharedActivityManager];
    [v7 osTransactionCreate:objc_msgSend(v5 transaction:{"UTF8String"), v6}];

    [WAUtil incrementValueForKey:@"Client: Trigger Device Analytics Store Migration" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
    [WeakRetained triggerDeviceAnalyticsStoreMigrationAndReply:*(a1 + 40)];
    v8 = +[WAActivityManager sharedActivityManager];
    [v8 osTransactionComplete:v6];

    v9 = 0;
  }

  else
  {
    v10 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "[WAEngine xpcConnection:triggerDeviceAnalyticsStoreMigrationAndReply:]_block_invoke";
      v18 = 1024;
      v19 = 1560;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:not registered, bailing", buf, 0x12u);
    }

    v14 = NSLocalizedFailureReasonErrorKey;
    v15 = @"WAErrorCodeNotRegistered";
    v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v9 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v11];

    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v17 = "[WAEngine xpcConnection:triggerDeviceAnalyticsStoreMigrationAndReply:]_block_invoke";
      v18 = 1024;
      v19 = 1574;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Result for triggerDeviceAnalyticsStoreMigrationAndReply via XPC - Error: WAErrorCodeNotRegistered", buf, 0x12u);
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v9);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005CAEC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [*(a1 + 32) connection];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v4 processIdentifier], "-[WAEngine xpcConnection:sendMemoryPressureRequestAndReply:]_block_invoke");

  [v5 UTF8String];
  v6 = os_transaction_create();
  v7 = +[WAActivityManager sharedActivityManager];
  [v7 osTransactionCreate:objc_msgSend(v5 transaction:{"UTF8String"), v6}];

  [WAUtil incrementValueForKey:@"Client: Send Memory Pressure Request" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
  [WeakRetained _sendMemoryPressureRequestAndReply:*(a1 + 40)];
  v8 = +[WAActivityManager sharedActivityManager];
  [v8 osTransactionComplete:v6];

  objc_autoreleasePoolPop(v2);
}

void sub_10005CFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  _Block_object_dispose(&a18, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10005CFFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005D014(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([WeakRetained submitterMapCheck:*(a1 + 32) group:3])
  {
    v4 = [*(a1 + 32) connection];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v4 processIdentifier], "-[WAEngine xpcConnection:issueIOReportManagementCommand:andReply:]_block_invoke");

    [v5 UTF8String];
    v6 = os_transaction_create();
    v7 = +[WAActivityManager sharedActivityManager];
    [v7 osTransactionCreate:objc_msgSend(v5 transaction:{"UTF8String"), v6}];

    [WAUtil incrementValueForKey:@"Client: Issue IOReport Managemen Command" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
    v8 = *(a1 + 64);
    v9 = [*(a1 + 32) token];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10005D36C;
    v18[3] = &unk_1000EDEE8;
    v19 = *(a1 + 40);
    [WeakRetained _issueIOReportManagementCommand:v8 forProcessToken:v9 andReply:v18];

    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v23 = "[WAEngine xpcConnection:issueIOReportManagementCommand:andReply:]_block_invoke";
      v24 = 1024;
      v25 = 1629;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:xpcConnection _issueIOReportManagementCommand complete", buf, 0x12u);
    }

    v11 = +[WAActivityManager sharedActivityManager];
    [v11 osTransactionComplete:v6];
  }

  else
  {
    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v23 = "[WAEngine xpcConnection:issueIOReportManagementCommand:andReply:]_block_invoke";
      v24 = 1024;
      v25 = 1620;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:not registered, bailing", buf, 0x12u);
    }

    v20 = NSLocalizedFailureReasonErrorKey;
    v21 = @"WAErrorCodeNotRegistered";
    v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v14 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v13];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = *(a1 + 40);
    if (v17)
    {
      (*(v17 + 16))(v17, 0, *(*(*(a1 + 48) + 8) + 40));
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005D4E4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if ([WeakRetained submitterMapCheck:*(a1 + 32) group:5])
  {
    v4 = [*(a1 + 32) connection];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifianalytics.pid_%d.%s", [v4 processIdentifier], "-[WAEngine xpcConnection:processManagedFault:at:andReply:]_block_invoke");

    [v5 UTF8String];
    v6 = os_transaction_create();
    v7 = +[WAActivityManager sharedActivityManager];
    [v7 osTransactionCreate:objc_msgSend(v5 transaction:{"UTF8String"), v6}];

    v8 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v19 = "[WAEngine xpcConnection:processManagedFault:at:andReply:]_block_invoke";
      v20 = 1024;
      v21 = 1658;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Calling processManagedFault:at:", buf, 0x12u);
    }

    v9 = [*(a1 + 40) cachedUsage];
    v10 = [*(a1 + 40) engineQ];
    [WAUtil incrementValueForKey:@"Operation: Forwarded Fault" inMutableDict:v9 onQueue:v10];

    v11 = +[WAManagedFaultsHandler sharedManagedFaultsHandler];
    [v11 processManagedFault:*(a1 + 48) at:*(a1 + 56)];

    v12 = +[WAActivityManager sharedActivityManager];
    [v12 osTransactionComplete:v6];

    v13 = 0;
  }

  else
  {
    v15 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v19 = "[WAEngine xpcConnection:processManagedFault:at:andReply:]_block_invoke";
      v20 = 1024;
      v21 = 1653;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:not registered, bailing", buf, 0x12u);
    }

    v16 = NSLocalizedFailureReasonErrorKey;
    v17 = @"WAErrorCodeNotRegistered";
    v5 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v5];
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    (*(v14 + 16))(v14, 0, v13);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005DDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005DE14(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1[4] + 128) objectForKeyedSubscript:a1[5]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_10005DF28(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) processTokenToXPCConnectionMap];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  if (v4)
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WAUtil trimTokenForLogging:*(a1 + 40)];
      v7 = 136446722;
      v8 = "[WAEngine sendWakeUpNotificationForProcessWithName:]_block_invoke";
      v9 = 1024;
      v10 = 1722;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:It appears the XPC connection is still valid (no invalidation handler called). No need to send wake up notification for process with token ending: %@", &v7, 0x1Cu);
    }
  }

  else
  {
    notify_post([*(a1 + 40) UTF8String]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005E12C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[WAEngine prepareToTerminateViaEagerExit]_block_invoke";
    v7 = 1024;
    v8 = 1738;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:prepareToTerminateAnyReply...", &v5, 0x12u);
  }

  [WeakRetained _prepareToTerminateViaEagerExit];
  objc_autoreleasePoolPop(v2);
}

void sub_10005E44C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[WAEngine prepareToTerminateAnyReply:]_block_invoke";
    v8 = 1024;
    v9 = 1757;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:prepareToTerminateAnyReply...", &v6, 0x12u);
  }

  [WeakRetained _prepareToTerminate];
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005E8F0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40))
  {
    v4 = @"Dispatch: Received Memory Critical";
  }

  else
  {
    v4 = @"Dispatch: Received Memory Warning";
  }

  [WAUtil incrementValueForKey:v4 inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
  if ([WeakRetained dpsStudyInProgress] & 1) != 0 || (objc_msgSend(WeakRetained, "slowWiFiStudyInProgress") & 1) != 0 || (objc_msgSend(WeakRetained, "dnsStudyInProgress"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [WeakRetained isNWActivityInProgress];
  }

  if (([WeakRetained isMemoryPressureRequestDeferred] & 1) == 0 && v5)
  {
    [WeakRetained setIsMemoryPressureRequestDeferred:1];
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447746;
      v16 = "[WAEngine handleMemoryWarning:]_block_invoke";
      v17 = 1024;
      v18 = 1799;
      v19 = 2080;
      v20 = "[WAEngine handleMemoryWarning:]_block_invoke";
      v21 = 1024;
      v22 = [WeakRetained dpsStudyInProgress];
      v23 = 1024;
      v24 = [WeakRetained slowWiFiStudyInProgress];
      v25 = 1024;
      v26 = [WeakRetained dnsStudyInProgress];
      v27 = 1024;
      v28 = [WeakRetained isNWActivityInProgress];
      v7 = "%{public}s::%d:%s: deferred (DPS in progress=%d, SlowWiFi in progress=%d, DNS-SlowWiFi in progress=%d, NWActivity in progress=%d.";
      v8 = v6;
      v9 = 52;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if ((v5 & 1) == 0)
  {
    v10 = [WeakRetained mutexQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005EBC8;
    block[3] = &unk_1000ED880;
    v11 = WeakRetained;
    v14 = v11;
    dispatch_sync(v10, block);

    v12 = [v11 iorMessagePopulator];
    [v12 freeIORCaches];

    [v11 setIsMemoryPressureRequestDeferred:0];
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v16 = "[WAEngine handleMemoryWarning:]_block_invoke_2";
      v17 = 1024;
      v18 = 1807;
      v19 = 2080;
      v20 = "[WAEngine handleMemoryWarning:]_block_invoke_2";
      v7 = "%{public}s::%d:%s: caches freed.";
      v8 = v6;
      v9 = 28;
      goto LABEL_15;
    }

LABEL_16:
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005EBC8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) cachedModelObjectsKeyToMessageMap];
  [v3 removeAllObjects];

  objc_autoreleasePoolPop(v2);
}

void sub_100064AB8(id a1)
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(v1) = info.numer;
    LODWORD(v2) = info.denom;
    *&qword_10010DB18 = v1 / v2;
  }
}

id sub_10006552C(uint64_t a1)
{
  v2 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[WAEngine _enableWorkReportRecurringTimer]_block_invoke";
    v6 = 1024;
    v7 = 2628;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Performing scheduled _reportHourlyWorkReport", &v4, 0x12u);
  }

  result = [*(a1 + 32) _reportWorkReportInterval];
  *(*(a1 + 32) + 58) = 0;
  return result;
}

void sub_100066FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, char a19)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void *sub_100066FE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    [WAUtil incrementValueForKey:@"Telemetry: Work Report Accepted" inMutableDict:WeakRetained[86] onQueue:WeakRetained[11]];
    v3 = [WeakRetained _createWorkReportDictionaryForTelemetryAndRollBucket];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[WAEngine _reportWorkReportInterval]_block_invoke";
    v12 = 1024;
    v13 = 2872;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Sending telemetry for com.apple.wifianalyticsd.workreport", &v10, 0x12u);
  }

  v7 = *(*(*(a1 + 32) + 8) + 40);
  v8 = v7;

  return v7;
}

void sub_1000671D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) cachedUsage];
  v5 = [*(a1 + 40) engineQ];
  [WAUtil incrementValueForKey:v3 inMutableDict:v4 onQueue:v5];

  objc_autoreleasePoolPop(v2);
}

void sub_100067D94(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) cachedModelObjectsKeyToMessageMap];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  if (!v4)
  {
    v5 = +[NSMutableDictionary dictionary];
    v6 = [*(a1 + 32) cachedModelObjectsKeyToMessageMap];
    [v6 setObject:v5 forKeyedSubscript:*(a1 + 40)];
  }

  v7 = [*(a1 + 32) cachedModelObjectsKeyToMessageMap];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];

  v9 = [NSNumber numberWithInteger:*(a1 + 64)];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = +[NSMutableDictionary dictionary];
    v12 = [NSNumber numberWithInteger:*(a1 + 64)];
    [v8 setObject:v11 forKeyedSubscript:v12];
  }

  v13 = [NSNumber numberWithInteger:*(a1 + 64)];
  v14 = [v8 objectForKeyedSubscript:v13];

  v15 = [v14 objectForKeyedSubscript:*(a1 + 48)];

  if (!v15)
  {
    v46 = v2;
    v16 = [WAUtil getMessageInstanceForKey:*(a1 + 48) andGroupType:*(a1 + 64)];
    [v14 setObject:v16 forKeyedSubscript:*(a1 + 48)];

    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 64);
      v20 = *(a1 + 40);
      v19 = *(a1 + 48);
      v21 = [v14 objectForKeyedSubscript:v19];
      *buf = 136447490;
      v48 = "[WAEngine _cachedModelObjectsForProcess:groupType:key:]_block_invoke";
      v49 = 1024;
      v50 = 2973;
      v51 = 2112;
      v52 = v20;
      v53 = 2048;
      v54 = v18;
      v55 = 2112;
      v56 = v19;
      v57 = 2048;
      v58 = [WAUtil countTotalKeysInNSObject:v21];
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WAMessageAWD allocated for processToken %@ grouptype %ld key: %@ keysCount: %ld", buf, 0x3Au);
    }

    v22 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [*(a1 + 32) cachedModelObjectsKeyToMessageMap];
      v23 = [WAUtil countTotalKeysInNSObject:v45];
      v38 = *(a1 + 40);
      v39 = v23;
      v44 = [*(a1 + 32) cachedModelObjectsKeyToMessageMap];
      v43 = [v44 objectForKeyedSubscript:*(a1 + 40)];
      v35 = [WAUtil countTotalKeysInNSObject:v43];
      v36 = *(a1 + 64);
      v42 = [*(a1 + 32) cachedModelObjectsKeyToMessageMap];
      v41 = [v42 objectForKeyedSubscript:*(a1 + 40)];
      v40 = [NSNumber numberWithInteger:*(a1 + 64)];
      v37 = [v41 objectForKeyedSubscript:v40];
      v33 = [WAUtil countTotalKeysInNSObject:v37];
      v34 = *(a1 + 48);
      v24 = [*(a1 + 32) cachedModelObjectsKeyToMessageMap];
      v25 = [v24 objectForKeyedSubscript:*(a1 + 40)];
      v26 = [NSNumber numberWithInteger:*(a1 + 64)];
      v27 = [v25 objectForKeyedSubscript:v26];
      v28 = [v27 objectForKeyedSubscript:*(a1 + 48)];
      v29 = [WAUtil countTotalKeysInNSObject:v28];
      *buf = 136448258;
      v48 = "[WAEngine _cachedModelObjectsForProcess:groupType:key:]_block_invoke";
      v49 = 1024;
      v50 = 2975;
      v51 = 2048;
      v52 = v39;
      v53 = 2112;
      v54 = v38;
      v55 = 2048;
      v56 = v35;
      v57 = 2048;
      v58 = v36;
      v59 = 2048;
      v60 = v33;
      v61 = 2112;
      v62 = v34;
      v63 = 2048;
      v64 = v29;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:countTotalKeysInNSObject count %ld, for processToken %@ count %ld, for groupType %ld count %ld, for key %@ wamcount %ld", buf, 0x58u);
    }

    v2 = v46;
  }

  v30 = [v14 objectForKeyedSubscript:*(a1 + 48)];
  v31 = *(*(a1 + 56) + 8);
  v32 = *(v31 + 40);
  *(v31 + 40) = v30;

  objc_autoreleasePoolPop(v2);
}

void sub_10006D488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_10006D4BC(uint64_t a1, uint64_t a2, void *a3)
{
  v116 = a3;
  v117 = a1;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v4 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"NWA_interfaceStats"];
  v5 = [v4 repeatableValues];

  obj = v5;
  v120 = [v5 countByEnumeratingWithState:&v141 objects:v164 count:16];
  if (v120)
  {
    v124 = 0;
    v123 = 0;
    v119 = *v142;
    do
    {
      v6 = 0;
      do
      {
        if (*v142 != v119)
        {
          objc_enumerationMutation(obj);
        }

        v121 = v6;
        v7 = *(*(&v141 + 1) + 8 * v6);
        v137 = 0u;
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v8 = [v7 fieldForKey:@"NWAIS_peers"];
        v9 = [v8 repeatableValues];

        v10 = [v9 countByEnumeratingWithState:&v137 objects:v163 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v138;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v138 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v137 + 1) + 8 * i);
              v15 = [v14 fieldForKey:@"NWAPS_hashID"];
              v16 = [v15 stringValue];
              v17 = [v16 isEqualToString:@"00:00:00:00:00:00"];

              if (v17)
              {
                v18 = [v14 fieldForKey:@"NWAPS_ccas"];
                v19 = [v18 repeatableValues];
                v20 = [v19 count] != 0;

                v123 |= v20;
                v21 = [v14 fieldForKey:@"NWAPS_acCompletions"];
                v22 = [v21 repeatableValues];
                v23 = [v22 count] != 0;

                LODWORD(v124) = v23 | v124;
                v24 = [v14 fieldForKey:@"NWAPS_txLatencyBEs"];
                v25 = [v24 repeatableValues];
                v26 = [v25 count] != 0;

                HIDWORD(v124) |= v26;
              }

              v27 = [v14 fieldForKey:@"NWAPS_hashID"];
              v28 = [v27 stringValue];
              [v28 isEqualToString:@"00:00:00:00:00:00"];
            }

            v11 = [v9 countByEnumeratingWithState:&v137 objects:v163 count:16];
          }

          while (v11);
        }

        v6 = v121 + 1;
      }

      while ((v121 + 1) != v120);
      v120 = [obj countByEnumeratingWithState:&v141 objects:v164 count:16];
    }

    while (v120);
  }

  else
  {
    v124 = 0;
    v123 = 0;
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v29 = v117;
  v30 = [*(*(*(v117 + 56) + 8) + 40) fieldForKey:@"NWA_interfaceStats"];
  v31 = [v30 repeatableValues];

  v32 = [v31 countByEnumeratingWithState:&v133 objects:v162 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v134;
    do
    {
      for (j = 0; j != v33; j = j + 1)
      {
        if (*v134 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [*(*(&v133 + 1) + 8 * j) fieldForKey:@"NWAIS_assoc"];
        v37 = [v36 subMessageValue];
        v38 = [v37 fieldForKey:@"NWAA_linkChanged"];
        v39 = [v38 uint32Value];
      }

      v33 = [v31 countByEnumeratingWithState:&v133 objects:v162 count:16];
    }

    while (v33);
    v40 = v39 != 0;
    v29 = v117;
  }

  else
  {
    v40 = 0;
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v41 = [*(*(*(v29 + 56) + 8) + 40) fieldForKey:@"NWA_interfaceStats"];
  v42 = [v41 repeatableValues];

  v43 = [v42 countByEnumeratingWithState:&v129 objects:v161 count:16];
  if (v43)
  {
    v122 = v40;
    v44 = *v130;
    do
    {
      for (k = 0; k != v43; k = k + 1)
      {
        if (*v130 != v44)
        {
          objc_enumerationMutation(v42);
        }

        v46 = [*(*(&v129 + 1) + 8 * k) fieldForKey:@"NWAIS_assoc"];
        v47 = [v46 subMessageValue];
        v48 = [v47 fieldForKey:@"NWAA_assocDoneSuccess"];
        v49 = [v48 uint32Value];
      }

      v43 = [v42 countByEnumeratingWithState:&v129 objects:v161 count:16];
    }

    while (v43);
    v43 = v49 != 0;
    v29 = v117;
    v40 = v122;
  }

  [*(v29 + 32) setIsAssociatedStateKnown:1];
  [*(v29 + 32) setIsAssociated:{objc_msgSend(*(v29 + 32), "isAssociated")}];
  v50 = WALogCategoryDefaultHandle();
  v51 = v116;
  if (os_signpost_enabled(v50))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity Poplulate", "", buf, 2u);
  }

  v52 = [*(v29 + 32) forceStudyErrorFromMsg];
  if (v52)
  {
    v53 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v152 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
      v153 = 1024;
      v154 = 3656;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Setting attemptRescan to true due to debug command kWAIORCommandForceStudyErrorFromMsg", buf, 0x12u);
    }

    [*(v117 + 32) setForceStudyErrorFromMsg:0];
  }

  if ([v116 code] == 9021 || objc_msgSend(v116, "code") == 9022 || objc_msgSend(v116, "code") == 9023 || objc_msgSend(v116, "code") == 9024 || objc_msgSend(v116, "code") == 9025 || ((objc_msgSend(v116, "code") != 9026) & v123 & v40 & v124 & HIDWORD(v124)) == 0)
  {
    v54 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447746;
      v152 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
      v153 = 1024;
      v154 = 3669;
      v155 = 1024;
      *v156 = v123 & 1;
      *&v156[4] = 1024;
      *&v156[6] = v40;
      LOWORD(v157) = 1024;
      *(&v157 + 2) = v124 & 1;
      HIWORD(v157) = 1024;
      v158 = BYTE4(v124) & 1;
      v159 = 2112;
      v160 = v116;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:NWA Doesn't have all fields hasCCA %u hasLinkChanged %u hasAcCompletions %u hastxLatencyBE %u error %@", buf, 0x34u);
    }

    if ([*(v117 + 32) everAssociated:v40 assocDoneSuccess:v43])
    {
      if (v116)
      {
        v55 = *(*(v117 + 64) + 8);
        v56 = v116;
        v57 = *(v55 + 40);
        *(v55 + 40) = v56;
      }

      else
      {
        v149 = NSLocalizedFailureReasonErrorKey;
        v150 = @"WAErrorCodeOtherMissing";
        v57 = [NSDictionary dictionaryWithObjects:&v150 forKeys:&v149 count:1];
        v70 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9028 userInfo:v57];
        v71 = *(*(v117 + 64) + 8);
        v72 = *(v71 + 40);
        *(v71 + 40) = v70;
      }

      v73 = WALogCategoryDefaultHandle();
      v51 = v116;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v152 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
        v153 = 1024;
        v154 = 3681;
        v155 = 2112;
        *v156 = v116;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:NWActivity missing mandatory fields due to %@, everAssociated true, attemptRescan true", buf, 0x1Cu);
      }

      goto LABEL_67;
    }

    v147 = NSLocalizedFailureReasonErrorKey;
    v148 = @"WAErrorCodeNeverAssociated";
    v58 = [NSDictionary dictionaryWithObjects:&v148 forKeys:&v147 count:1];
    v59 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9027 userInfo:v58];
    v60 = *(*(v117 + 64) + 8);
    v61 = *(v60 + 40);
    *(v60 + 40) = v59;

    v51 = v116;
    v62 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v152 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
      v153 = 1024;
      v154 = 3686;
      v155 = 2112;
      *v156 = v116;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:NWActivity missing mandatory fields due to %@, everAssociated false, attemptRescan false", buf, 0x1Cu);
    }
  }

  if (v52)
  {
LABEL_67:
    v74 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v152 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
      v153 = 1024;
      v154 = 3690;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Attempting Rescan", buf, 0x12u);
    }

    v75 = +[NSDate date];
    v69 = v75;
    if (*(*(v117 + 32) + 664) && ([v75 timeIntervalSinceDate:?], v76 > 30.0))
    {
      v77 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v152 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
        v153 = 1024;
        v154 = 3694;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Attemping determineChannelsPerIORPopulatable", buf, 0x12u);
      }

      v78 = WALogCategoryDefaultHandle();
      if (os_signpost_enabled(v78))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v78, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity MissingChannelsRepopulate", "", buf, 2u);
      }

      v79 = [*(v117 + 32) iorMessagePopulator];
      [v79 determineChannelsPerIORPopulatableWithinPopulatorBlock];

      v80 = [*(v117 + 32) iorMessagePopulator];
      v81 = *(v117 + 72);
      v125[0] = _NSConcreteStackBlock;
      v83 = *(v117 + 32);
      v82 = *(v117 + 40);
      v84 = *(v117 + 56);
      v85 = *(*(*(v117 + 56) + 8) + 40);
      v125[1] = 3221225472;
      v125[2] = sub_10006E680;
      v125[3] = &unk_1000EE110;
      v127 = v40;
      v128 = v43;
      v125[4] = v83;
      v126 = v84;
      [v80 prepopulateMessageWithinPopulatorBlock:v85 forProcess:v82 groupType:v81 andReply:v125];

      objc_storeStrong((*(v117 + 32) + 664), v69);
    }

    else
    {
      v86 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        v87 = *(*(v117 + 32) + 664);
        *buf = 136446722;
        v152 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
        v153 = 1024;
        v154 = 3757;
        v155 = 2112;
        *v156 = v87;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%{public}s::%d:Rescanned too recently, waiting for 30s to elapse since last check at %@", buf, 0x1Cu);
      }
    }

    v88 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v152 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
      v153 = 1024;
      v154 = 3759;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Rescan Attempt Complete", buf, 0x12u);
    }

    goto LABEL_82;
  }

  if (v51)
  {
    goto LABEL_83;
  }

  v63 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v63))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v63, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity GetChannelApInfo", "", buf, 2u);
  }

  v64 = *(v117 + 32);
  v65 = [*(*(*(v117 + 56) + 8) + 40) fieldForKey:@"NWA_controllerStats"];
  v66 = [v65 subMessageValue];
  [v64 populateChannelInfo:v66];

  [*(v117 + 32) populateApProfile:*(*(*(v117 + 56) + 8) + 40)];
  v67 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v67))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v67, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity GetChannelApInfo", "", buf, 2u);
  }

  v68 = *(*(v117 + 64) + 8);
  v69 = *(v68 + 40);
  *(v68 + 40) = 0;
  v51 = v116;
LABEL_82:

LABEL_83:
  v89 = *(v117 + 80);
  if (v89 == 1)
  {
    v101 = *(*(*(v117 + 64) + 8) + 40);
    v102 = WALogCategoryDefaultHandle();
    v103 = v102;
    if (v101)
    {
      if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
      {
        v104 = [*(*(*(v117 + 56) + 8) + 40) key];
        v105 = *(*(*(v117 + 64) + 8) + 40);
        *buf = 136446978;
        v152 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
        v153 = 1024;
        v154 = 3777;
        v155 = 2112;
        *v156 = v104;
        *&v156[8] = 2112;
        v157 = v105;
        v106 = "%{public}s::%d:Reply style 1, returning with %@ status %@";
        v107 = v103;
        v108 = OS_LOG_TYPE_ERROR;
        v109 = 38;
LABEL_95:
        _os_log_impl(&_mh_execute_header, v107, v108, v106, buf, v109);
      }
    }

    else if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
    {
      v104 = [*(*(*(v117 + 56) + 8) + 40) key];
      *buf = 136446722;
      v152 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
      v153 = 1024;
      v154 = 3779;
      v155 = 2112;
      *v156 = v104;
      v106 = "%{public}s::%d:Reply style 1, returning with %@ status Success";
      v107 = v103;
      v108 = OS_LOG_TYPE_DEBUG;
      v109 = 28;
      goto LABEL_95;
    }

    v110 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v110))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v110, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity Reply", "", buf, 2u);
    }

    v111 = *(*(*(v117 + 56) + 8) + 40);
    v112 = *(*(*(v117 + 64) + 8) + 40);
    (*(*(v117 + 48) + 16))();
    v99 = WALogCategoryDefaultHandle();
    v51 = v116;
    if (!os_signpost_enabled(v99))
    {
      goto LABEL_101;
    }

    *buf = 0;
    v100 = "Engine NWActivity Reply";
    goto LABEL_100;
  }

  if (!v89)
  {
    v90 = [*(v117 + 32) submitterMap];
    v91 = [v90 objectForKeyedSubscript:*(v117 + 40)];
    v92 = [NSNumber numberWithInteger:*(v117 + 72)];
    v93 = [v91 objectForKeyedSubscript:v92];

    v94 = WALogCategoryDefaultHandle();
    v95 = v94;
    if (!v93)
    {
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v152 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
        v153 = 1024;
        v154 = 3771;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:not registered, bailing", buf, 0x12u);
      }

      v145 = NSLocalizedFailureReasonErrorKey;
      v146 = @"WAErrorCodeNotRegistered";
      v99 = [NSDictionary dictionaryWithObjects:&v146 forKeys:&v145 count:1];
      v113 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v99];
      v114 = *(*(v117 + 64) + 8);
      v115 = *(v114 + 40);
      *(v114 + 40) = v113;

      v51 = v116;
      goto LABEL_101;
    }

    if (os_signpost_enabled(v94))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v95, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity _submitMessage", "", buf, 2u);
    }

    v96 = [*(v117 + 32) _submitMessage:*(*(*(v117 + 56) + 8) + 40) groupType:*(v117 + 72) forProcessToken:*(v117 + 40)];
    v97 = *(*(v117 + 64) + 8);
    v98 = *(v97 + 40);
    *(v97 + 40) = v96;

    v99 = WALogCategoryDefaultHandle();
    v51 = v116;
    if (!os_signpost_enabled(v99))
    {
LABEL_101:

      goto LABEL_102;
    }

    *buf = 0;
    v100 = "Engine NWActivity _submitMessage";
LABEL_100:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v99, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v100, "", buf, 2u);
    goto LABEL_101;
  }

LABEL_102:
}

void sub_10006E680(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] != 9021 && objc_msgSend(v7, "code") != 9022 && objc_msgSend(v7, "code") != 9023 && objc_msgSend(v7, "code") != 9024 && objc_msgSend(v7, "code") != 9025 && objc_msgSend(v7, "code") != 9026)
    {
LABEL_49:
      v20 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136446466;
        v30 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
        v31 = 1024;
        v32 = 3747;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Rescan was not successful", &v29, 0x12u);
      }

      goto LABEL_51;
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 56);
      v10 = *(a1 + 57);
      v29 = 136447234;
      v30 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
      v31 = 1024;
      v32 = 3708;
      v33 = 1024;
      v34 = v9;
      v35 = 1024;
      v36 = v10;
      v37 = 2112;
      v38 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:NWActivity missing mandatory fields on rescan, hasLinkChanged %d, hasAssocDoneSuccess %d: %@", &v29, 0x28u);
    }

    v11 = [v7 code];
    if (v11 > 9023)
    {
      switch(v11)
      {
        case 9024:
          v23 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v29 = 136446466;
            v30 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
            v31 = 1024;
            v32 = 3723;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:NWActivity missing mandatory fields on rescan: WAErrorCodeTxLatencyBeMissing", &v29, 0x12u);
          }

          v13 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_48;
          }

          LOWORD(v29) = 0;
          v14 = "NWActivity missing mandatory fields on rescan: WAErrorCodeTxLatencyBeMissing";
          break;
        case 9025:
          v25 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v29 = 136446466;
            v30 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
            v31 = 1024;
            v32 = 3727;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}s::%d:NWActivity missing mandatory fields on rescan: WAErrorCodeTxCompletionsMissing", &v29, 0x12u);
          }

          v13 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_48;
          }

          LOWORD(v29) = 0;
          v14 = "NWActivity missing mandatory fields on rescan: WAErrorCodeTxCompletionsMissing";
          break;
        case 9026:
          v21 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v29 = 136446466;
            v30 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
            v31 = 1024;
            v32 = 3731;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:NWActivity missing mandatory fields on rescan: WAErrorCodeHEVHTMCSMissing", &v29, 0x12u);
          }

          v13 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_48;
          }

          LOWORD(v29) = 0;
          v14 = "NWActivity missing mandatory fields on rescan: WAErrorCodeHEVHTMCSMissing";
          break;
        default:
          goto LABEL_49;
      }
    }

    else
    {
      switch(v11)
      {
        case 9021:
          v22 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v29 = 136446466;
            v30 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
            v31 = 1024;
            v32 = 3711;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s::%d:NWActivity missing mandatory fields on rescan: WAErrorCodeCCAMissing", &v29, 0x12u);
          }

          v13 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_48;
          }

          LOWORD(v29) = 0;
          v14 = "NWActivity missing mandatory fields on rescan: WAErrorCodeCCAMissing";
          break;
        case 9022:
          v24 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v29 = 136446466;
            v30 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
            v31 = 1024;
            v32 = 3715;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}s::%d:NWActivity missing mandatory fields on rescan: WAErrorCodeRSSIMissing", &v29, 0x12u);
          }

          v13 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_48;
          }

          LOWORD(v29) = 0;
          v14 = "NWActivity missing mandatory fields on rescan: WAErrorCodeRSSIMissing";
          break;
        case 9023:
          v12 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v29 = 136446466;
            v30 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
            v31 = 1024;
            v32 = 3719;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:NWActivity missing mandatory fields on rescan: WAErrorCodeTxRxFrameCountersMissing", &v29, 0x12u);
          }

          v13 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_48;
          }

          LOWORD(v29) = 0;
          v14 = "NWActivity missing mandatory fields on rescan: WAErrorCodeTxRxFrameCountersMissing";
          break;
        default:
          goto LABEL_49;
      }
    }

    _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, v14, &v29, 2u);
LABEL_48:

    goto LABEL_49;
  }

  v15 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136446466;
    v30 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]_block_invoke";
    v31 = 1024;
    v32 = 3740;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Rescan was successful", &v29, 0x12u);
  }

  v16 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v16))
  {
    LOWORD(v29) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity GetChannelApInfo", "", &v29, 2u);
  }

  v17 = *(a1 + 32);
  v18 = [*(*(*(a1 + 40) + 8) + 40) fieldForKey:@"NWA_controllerStats"];
  v19 = [v18 subMessageValue];
  [v17 populateChannelInfo:v19];

  [*(a1 + 32) populateApProfile:*(*(*(a1 + 40) + 8) + 40)];
  v20 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v20))
  {
    LOWORD(v29) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity GetChannelApInfo", "", &v29, 2u);
  }

LABEL_51:

  v26 = *(*(a1 + 48) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v7;

  v28 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v28))
  {
    LOWORD(v29) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity MissingChannelsRepopulate", "", &v29, 2u);
  }
}

void sub_10006F724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10006F754(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v6))
  {
    LOWORD(v33) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Engine NWPeerActivity Poplulate", "", &v33, 2u);
  }

  if (v5)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v33 = 136446722;
      v34 = "[WAEngine _triggerQueryForNWActivityWithPeers:forProcessToken:andReply:]_block_invoke";
      v35 = 1024;
      v36 = 3881;
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:prepopulateMessage returned error %@", &v33, 0x1Cu);
    }
  }

  v8 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v8))
  {
    LOWORD(v33) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Engine NWPeerActivity Reply", "", &v33, 2u);
  }

  v9 = [*(a1 + 32) pbConverter];

  if (!v9)
  {
    v10 = *(a1 + 32);
    v11 = objc_alloc_init(WAProtobufMessageSubmitter);
    [v10 setPbConverter:v11];
  }

  v12 = [*(a1 + 32) pbConverter];
  v13 = [v12 instantiateAWDProtobufAndPopulateValues:*(*(*(a1 + 56) + 8) + 40)];

  v14 = +[NSMutableArray array];
  v15 = +[NSMutableDictionary dictionary];
  v16 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v13 dictionaryRepresentation];
    v33 = 136446722;
    v34 = "[WAEngine _triggerQueryForNWActivityWithPeers:forProcessToken:andReply:]_block_invoke";
    v35 = 1024;
    v36 = 3901;
    v37 = 2112;
    v38 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:_triggerQueryForNWActivityWithPeers pbConverter returned  %@", &v33, 0x1Cu);
  }

  v18 = [v13 dictionaryRepresentation];
  if (!v18)
  {
    goto LABEL_27;
  }

  v19 = v18;
  v20 = [v13 dictionaryRepresentation];
  v21 = [v20 objectForKeyedSubscript:@"peerStats"];

  if (v21)
  {
    v22 = [v13 dictionaryRepresentation];
    v23 = [v22 objectForKeyedSubscript:@"peerStats"];

    if ([*(a1 + 32) hasDuplicateHashIDs:v23])
    {
      v24 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = [v13 dictionaryRepresentation];
        v33 = 136446722;
        v34 = "[WAEngine _triggerQueryForNWActivityWithPeers:forProcessToken:andReply:]_block_invoke";
        v35 = 1024;
        v36 = 3910;
        v37 = 2112;
        v38 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{public}s::%d:_triggerQueryForNWActivityWithPeers peersArr hasDup %@", &v33, 0x1Cu);
      }
    }

    if ([v23 count])
    {
      v26 = 0;
      do
      {
        v27 = [v23 objectAtIndexedSubscript:v26];
        v28 = [v27 objectForKeyedSubscript:@"hashID"];
        if (v28 && ([*(a1 + 32) alreadyContainsHashID:v28 inArray:v14] & 1) == 0)
        {
          [v14 addObject:v27];
        }

        ++v26;
      }

      while (v26 < [v23 count]);
    }

    if ([v14 count])
    {
      [v15 setObject:v14 forKeyedSubscript:@"peerStats"];
    }

    else
    {
      v30 = [v13 dictionaryRepresentation];
      [v15 addEntriesFromDictionary:v30];
    }
  }

  else
  {
LABEL_27:
    v29 = [v13 dictionaryRepresentation];

    if (!v29)
    {
      goto LABEL_31;
    }

    v23 = [v13 dictionaryRepresentation];
    [v15 addEntriesFromDictionary:v23];
  }

LABEL_31:
  v31 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();
  v32 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v32))
  {
    LOWORD(v33) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Engine NWPeerActivity Reply", "", &v33, 2u);
  }
}