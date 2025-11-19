id sub_1001472B8(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWiFiSupportFrameConfig:1];
  [a1 setWcmWiFiSupportWciSignalingConfig:1];
  [a1 setWcmWiFiRxProtectMode:&off_1002723F0];
  [a1 setWcmWiFiTxOnIndication:&off_100272300];
  [a1 setWcmWiFiScanJoinProtectDuration:&off_1002723F0];
  [a1 setWcmWiFiEnvelopeIndicationTimer:&off_100272360];
  [a1 setWcmWiFiEnvelopeOnIndication:&off_100272300];
  [a1 setWcmWCI2FrameSyncAssertOffset:-60];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-40];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-40];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-50];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-50];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:6790];
  [a1 setWcmWCI2MWSInactivityAssertJitter:192];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:500];
  [a1 setWcmCellularLAACoexProtectCQIPeriod:100];
  [a1 setWcmCellularLAACoexThresholdIn:20];
  [a1 setWcmCellularLAACoexThresholdOut:10];
  [a1 setWcmCellularLAACoexDeactTimer:500];
  [a1 setWcmCellularLAACoexDeactStopTimer:500];
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272630];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v73 = 0;
  v74 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex042_V7WiFiEnh" options:@"plist") format:2 error:&v73, &v74];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v33 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v32[1] = v32;
  __chkstk_darwin(v4, v5, v6);
  v35 = v32 - v7;
  v9 = v32 + v3 * v8 - v7;
  *v9 = 211;
  *(v9 + 4) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 36) = 0u;
  *(v9 + 52) = 0u;
  *(v9 + 68) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 0u;
  *(v9 + 29) = 0;
  v10 = [v2 count];
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v34 = 120 * v10;
    do
    {
      v69 = v11;
      v71 = 0;
      v72 = 0;
      v70[0] = 0;
      *(v70 + 3) = 0;
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v45 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v44 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v43 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v42 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v41 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v40 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v39 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v38 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v37 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v36 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v24 = v69;
      ++v12;
      v25 = &v35[v69];
      v26 = v67;
      *v25 = v68;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v65;
      v25[8] = v66;
      v25[13] = v26;
      LOBYTE(v26) = v63;
      v25[14] = v64;
      v25[15] = v26;
      LOBYTE(v26) = v61;
      v25[16] = v62;
      v25[17] = v26;
      LOBYTE(v26) = v59;
      v25[18] = v60;
      v25[19] = v26;
      LOBYTE(v26) = v57;
      v25[20] = v58;
      v25[21] = v26;
      LOBYTE(v26) = v55;
      v25[22] = v56;
      v25[23] = v26;
      LOBYTE(v26) = v53;
      v25[24] = v54;
      v25[25] = v26;
      LOBYTE(v26) = v51;
      v25[26] = v52;
      v25[27] = v26;
      v25[28] = v50;
      *(v25 + 29) = v71;
      v25[31] = v72;
      *(v25 + 4) = v49;
      LOBYTE(v26) = v47;
      v25[56] = v48;
      v25[57] = v26;
      LOBYTE(v26) = v45;
      v25[58] = v46;
      v25[59] = v26;
      *(v25 + 16) = v44;
      v25[78] = v43;
      v25[79] = v42;
      v25[89] = v41;
      v25[90] = v40;
      v25[91] = v39;
      v25[93] = v38;
      v25[94] = v37;
      v25[95] = v36;
      v25[96] = v15;
      v25[97] = v16;
      v25[98] = v17;
      v25[99] = v18;
      v25[100] = v19;
      v25[101] = v20;
      v25[102] = v21;
      v25[103] = v22;
      v25[104] = v23;
      *(v25 + 27) = *(v70 + 3);
      *(v25 + 105) = v70[0];
      *(v25 + 15) = 0;
      *(v25 + 9) = 0;
      *(v25 + 5) = v13;
      *(v25 + 6) = v14;
      *(v25 + 68) = 0;
      *(v25 + 38) = 0;
      *(v25 + 10) = 0;
      v25[88] = 0;
      v25[92] = 0;
      *(v25 + 14) = 0;
      v11 = v24 + 120;
    }

    while (v34 != v11);
  }

  v27 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v28 = v33;
  [v33 setWcmWiFiCellCoexIssueTable:v27];
  v29 = [v28 wcmWiFiCellCoexIssueTable];
  [v29 configureBy:v35];
  [v28 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex004"}];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v28 setWcmCellularCoexB40ARange:{0.0, 0.0}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{0.0, 0.0}];
  [v28 setWcmCellularCoexB41A2Range:{0.0, 0.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_10028B4A8];
  if (_os_feature_enabled_impl())
  {
    v30 = &off_10028B538;
  }

  else
  {
    v30 = &off_10028B5C8;
  }

  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:v30];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_10028B658];
  [v28 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_10028B6E8];
  [v28 setWcmWiFiScanThrottlingChannelIndices:0];
  [v28 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_10028B700, @"LTE", &off_10028B718, @"NR", 0)}];
  return [v28 setWcmGen9rFemDefaultMode5gWiFiCellularbands:0];
}

id sub_100147EF8(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWiFiSupportFrameConfig:1];
  [a1 setWcmWiFiSupportWciSignalingConfig:1];
  [a1 setWcmWiFiRxProtectMode:&off_1002723F0];
  [a1 setWcmWiFiTxOnIndication:&off_100272300];
  [a1 setWcmWiFiScanJoinProtectDuration:&off_1002723F0];
  [a1 setWcmWiFiEnvelopeIndicationTimer:&off_100272360];
  [a1 setWcmWiFiEnvelopeOnIndication:&off_100272300];
  [a1 setWcmWCI2FrameSyncAssertOffset:-60];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-40];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-40];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-50];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-50];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:6790];
  [a1 setWcmWCI2MWSInactivityAssertJitter:192];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:500];
  [a1 setWcmCellularLAACoexProtectCQIPeriod:100];
  [a1 setWcmCellularLAACoexThresholdIn:20];
  [a1 setWcmCellularLAACoexThresholdOut:10];
  [a1 setWcmCellularLAACoexDeactTimer:500];
  [a1 setWcmCellularLAACoexDeactStopTimer:500];
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272630];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v73 = 0;
  v74 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex044_V7WiFiEnh" options:@"plist") format:2 error:&v73, &v74];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v33 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v32[1] = v32;
  __chkstk_darwin(v4, v5, v6);
  v35 = v32 - v7;
  v9 = v32 + v3 * v8 - v7;
  *v9 = 211;
  *(v9 + 4) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 36) = 0u;
  *(v9 + 52) = 0u;
  *(v9 + 68) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 0u;
  *(v9 + 29) = 0;
  v10 = [v2 count];
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v34 = 120 * v10;
    do
    {
      v69 = v11;
      v71 = 0;
      v72 = 0;
      v70[0] = 0;
      *(v70 + 3) = 0;
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v45 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v44 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v43 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v42 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v41 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v40 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v39 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v38 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v37 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v36 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v24 = v69;
      ++v12;
      v25 = &v35[v69];
      v26 = v67;
      *v25 = v68;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v65;
      v25[8] = v66;
      v25[13] = v26;
      LOBYTE(v26) = v63;
      v25[14] = v64;
      v25[15] = v26;
      LOBYTE(v26) = v61;
      v25[16] = v62;
      v25[17] = v26;
      LOBYTE(v26) = v59;
      v25[18] = v60;
      v25[19] = v26;
      LOBYTE(v26) = v57;
      v25[20] = v58;
      v25[21] = v26;
      LOBYTE(v26) = v55;
      v25[22] = v56;
      v25[23] = v26;
      LOBYTE(v26) = v53;
      v25[24] = v54;
      v25[25] = v26;
      LOBYTE(v26) = v51;
      v25[26] = v52;
      v25[27] = v26;
      v25[28] = v50;
      *(v25 + 29) = v71;
      v25[31] = v72;
      *(v25 + 4) = v49;
      LOBYTE(v26) = v47;
      v25[56] = v48;
      v25[57] = v26;
      LOBYTE(v26) = v45;
      v25[58] = v46;
      v25[59] = v26;
      *(v25 + 16) = v44;
      v25[78] = v43;
      v25[79] = v42;
      v25[89] = v41;
      v25[90] = v40;
      v25[91] = v39;
      v25[93] = v38;
      v25[94] = v37;
      v25[95] = v36;
      v25[96] = v15;
      v25[97] = v16;
      v25[98] = v17;
      v25[99] = v18;
      v25[100] = v19;
      v25[101] = v20;
      v25[102] = v21;
      v25[103] = v22;
      v25[104] = v23;
      *(v25 + 27) = *(v70 + 3);
      *(v25 + 105) = v70[0];
      *(v25 + 15) = 0;
      *(v25 + 9) = 0;
      *(v25 + 5) = v13;
      *(v25 + 6) = v14;
      *(v25 + 68) = 0;
      *(v25 + 38) = 0;
      *(v25 + 10) = 0;
      v25[88] = 0;
      v25[92] = 0;
      *(v25 + 14) = 0;
      v11 = v24 + 120;
    }

    while (v34 != v11);
  }

  v27 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v28 = v33;
  [v33 setWcmWiFiCellCoexIssueTable:v27];
  v29 = [v28 wcmWiFiCellCoexIssueTable];
  [v29 configureBy:v35];
  [v28 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex006"}];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v28 setWcmCellularCoexB40ARange:{0.0, 0.0}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{0.0, 0.0}];
  [v28 setWcmCellularCoexB41A2Range:{0.0, 0.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_10028B7A8];
  if (_os_feature_enabled_impl())
  {
    v30 = &off_10028B838;
  }

  else
  {
    v30 = &off_10028B8C8;
  }

  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:v30];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_10028B958];
  [v28 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_10028B9E8];
  [v28 setWcmWiFiScanThrottlingChannelIndices:0];
  [v28 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_10028BA00, @"LTE", &off_10028BA18, @"NR", 0)}];
  return [v28 setWcmGen9rFemDefaultMode5gWiFiCellularbands:0];
}

id sub_100148B38(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWiFiSupportFrameConfig:1];
  [a1 setWcmWiFiSupportWciSignalingConfig:1];
  [a1 setWcmWiFiRxProtectMode:&off_1002723F0];
  [a1 setWcmWiFiTxOnIndication:&off_100272300];
  [a1 setWcmWiFiScanJoinProtectDuration:&off_1002723F0];
  [a1 setWcmWiFiEnvelopeIndicationTimer:&off_100272360];
  [a1 setWcmWiFiEnvelopeOnIndication:&off_100272300];
  [a1 setWcmWCI2FrameSyncAssertOffset:-60];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-40];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-40];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-50];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-50];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:6790];
  [a1 setWcmWCI2MWSInactivityAssertJitter:192];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:500];
  [a1 setWcmCellularLAACoexProtectCQIPeriod:100];
  [a1 setWcmCellularLAACoexThresholdIn:20];
  [a1 setWcmCellularLAACoexThresholdOut:10];
  [a1 setWcmCellularLAACoexDeactTimer:500];
  [a1 setWcmCellularLAACoexDeactStopTimer:500];
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272630];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v73 = 0;
  v74 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex043_V7WiFiEnh" options:@"plist") format:2 error:&v73, &v74];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v33 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v32[1] = v32;
  __chkstk_darwin(v4, v5, v6);
  v35 = v32 - v7;
  v9 = v32 + v3 * v8 - v7;
  *v9 = 211;
  *(v9 + 4) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 36) = 0u;
  *(v9 + 52) = 0u;
  *(v9 + 68) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 0u;
  *(v9 + 29) = 0;
  v10 = [v2 count];
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v34 = 120 * v10;
    do
    {
      v69 = v11;
      v71 = 0;
      v72 = 0;
      v70[0] = 0;
      *(v70 + 3) = 0;
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v45 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v44 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v43 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v42 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v41 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v40 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v39 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v38 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v37 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v36 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v24 = v69;
      ++v12;
      v25 = &v35[v69];
      v26 = v67;
      *v25 = v68;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v65;
      v25[8] = v66;
      v25[13] = v26;
      LOBYTE(v26) = v63;
      v25[14] = v64;
      v25[15] = v26;
      LOBYTE(v26) = v61;
      v25[16] = v62;
      v25[17] = v26;
      LOBYTE(v26) = v59;
      v25[18] = v60;
      v25[19] = v26;
      LOBYTE(v26) = v57;
      v25[20] = v58;
      v25[21] = v26;
      LOBYTE(v26) = v55;
      v25[22] = v56;
      v25[23] = v26;
      LOBYTE(v26) = v53;
      v25[24] = v54;
      v25[25] = v26;
      LOBYTE(v26) = v51;
      v25[26] = v52;
      v25[27] = v26;
      v25[28] = v50;
      *(v25 + 29) = v71;
      v25[31] = v72;
      *(v25 + 4) = v49;
      LOBYTE(v26) = v47;
      v25[56] = v48;
      v25[57] = v26;
      LOBYTE(v26) = v45;
      v25[58] = v46;
      v25[59] = v26;
      *(v25 + 16) = v44;
      v25[78] = v43;
      v25[79] = v42;
      v25[89] = v41;
      v25[90] = v40;
      v25[91] = v39;
      v25[93] = v38;
      v25[94] = v37;
      v25[95] = v36;
      v25[96] = v15;
      v25[97] = v16;
      v25[98] = v17;
      v25[99] = v18;
      v25[100] = v19;
      v25[101] = v20;
      v25[102] = v21;
      v25[103] = v22;
      v25[104] = v23;
      *(v25 + 27) = *(v70 + 3);
      *(v25 + 105) = v70[0];
      *(v25 + 15) = 0;
      *(v25 + 9) = 0;
      *(v25 + 5) = v13;
      *(v25 + 6) = v14;
      *(v25 + 68) = 0;
      *(v25 + 38) = 0;
      *(v25 + 10) = 0;
      v25[88] = 0;
      v25[92] = 0;
      *(v25 + 14) = 0;
      v11 = v24 + 120;
    }

    while (v34 != v11);
  }

  v27 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v28 = v33;
  [v33 setWcmWiFiCellCoexIssueTable:v27];
  v29 = [v28 wcmWiFiCellCoexIssueTable];
  [v29 configureBy:v35];
  [v28 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex005"}];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v28 setWcmCellularCoexB40ARange:{0.0, 0.0}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{0.0, 0.0}];
  [v28 setWcmCellularCoexB41A2Range:{0.0, 0.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_10028BAA8];
  if (_os_feature_enabled_impl())
  {
    v30 = &off_10028BB38;
  }

  else
  {
    v30 = &off_10028BBC8;
  }

  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:v30];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_10028BC58];
  [v28 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_10028BCE8];
  [v28 setWcmWiFiScanThrottlingChannelIndices:0];
  [v28 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_10028BD00, @"LTE", &off_10028BD18, @"NR", 0)}];
  return [v28 setWcmGen9rFemDefaultMode5gWiFiCellularbands:0];
}

id sub_100149778(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWiFiSupportFrameConfig:1];
  [a1 setWcmWiFiSupportWciSignalingConfig:1];
  [a1 setWcmWiFiRxProtectMode:&off_1002723F0];
  [a1 setWcmWiFiTxOnIndication:&off_100272300];
  [a1 setWcmWiFiScanJoinProtectDuration:&off_1002723F0];
  [a1 setWcmWiFiEnvelopeIndicationTimer:&off_100272360];
  [a1 setWcmWiFiEnvelopeOnIndication:&off_100272300];
  [a1 setWcmWCI2FrameSyncAssertOffset:-60];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-40];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-40];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-50];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-50];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:6790];
  [a1 setWcmWCI2MWSInactivityAssertJitter:192];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:500];
  [a1 setWcmCellularLAACoexProtectCQIPeriod:100];
  [a1 setWcmCellularLAACoexThresholdIn:20];
  [a1 setWcmCellularLAACoexThresholdOut:10];
  [a1 setWcmCellularLAACoexDeactTimer:500];
  [a1 setWcmCellularLAACoexDeactStopTimer:500];
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272630];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v76 = 0;
  v77 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex051_V8WiFiEnh" options:@"plist") format:2 error:&v76, &v77];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v35 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v34[1] = v34;
  __chkstk_darwin(v4, v5, v6);
  v37 = v34 - v7;
  v9 = v34 + v3 * v8 - v7;
  *v9 = 211;
  *(v9 + 4) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 36) = 0u;
  *(v9 + 52) = 0u;
  *(v9 + 68) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 0u;
  *(v9 + 29) = 0;
  v10 = [v2 count];
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v36 = 120 * v10;
    do
    {
      v72 = v11;
      v74 = 0;
      v75 = 0;
      v73[0] = 0;
      *(v73 + 3) = 0;
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v45 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v44 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v43 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v42 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v41 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v40 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v39 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v38 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForBTAFH", "intValue"}];
      v24 = v72;
      ++v12;
      v25 = &v37[v72];
      v26 = v70;
      *v25 = v71;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v68;
      v25[8] = v69;
      v25[13] = v26;
      LOBYTE(v26) = v66;
      v25[14] = v67;
      v25[15] = v26;
      LOBYTE(v26) = v64;
      v25[16] = v65;
      v25[17] = v26;
      LOBYTE(v26) = v62;
      v25[18] = v63;
      v25[19] = v26;
      LOBYTE(v26) = v60;
      v25[20] = v61;
      v25[21] = v26;
      *(v25 + 9) = 0;
      LOBYTE(v26) = v58;
      v25[22] = v59;
      v25[23] = v26;
      LOBYTE(v26) = v56;
      v25[24] = v57;
      v25[25] = v26;
      LOBYTE(v26) = v54;
      v25[26] = v55;
      v25[27] = v26;
      v25[28] = v53;
      *(v25 + 29) = v74;
      v25[31] = v75;
      *(v25 + 4) = v52;
      *(v25 + 5) = v13;
      *(v25 + 6) = v14;
      LOBYTE(v26) = v50;
      v25[56] = v51;
      v25[57] = v26;
      LOBYTE(v26) = v48;
      v25[58] = v49;
      v25[59] = v26;
      v27 = v47;
      *(v25 + 15) = 0;
      *(v25 + 16) = v27;
      *(v25 + 68) = 0;
      *(v25 + 38) = 0;
      v25[78] = v46;
      v25[79] = v45;
      *(v25 + 10) = 0;
      v25[88] = 0;
      v25[89] = v44;
      v25[90] = v43;
      v25[91] = v42;
      v25[92] = 0;
      v25[93] = v41;
      v25[94] = v40;
      v25[95] = v39;
      v25[96] = v38;
      v25[97] = v15;
      v25[98] = v16;
      v25[99] = v17;
      v25[100] = v18;
      v25[101] = v19;
      v25[102] = v20;
      v25[103] = v21;
      v25[104] = v22;
      v28 = v73[0];
      *(v25 + 27) = *(v73 + 3);
      *(v25 + 105) = v28;
      v11 = v24 + 120;
      *(v25 + 14) = v23;
    }

    while (v36 != v11);
  }

  v29 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v30 = v35;
  [v35 setWcmWiFiCellCoexIssueTable:v29];
  v31 = [v30 wcmWiFiCellCoexIssueTable];
  [v31 configureBy:v37];
  [v30 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex051"}];
  [v30 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v30 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v30 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v30 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v30 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v30 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v30 setWcmCellularScanProtectionCellFrequencies:&off_10028BDC0];
  if (_os_feature_enabled_impl())
  {
    v32 = &off_10028BE68;
  }

  else
  {
    v32 = &off_10028BF10;
  }

  [v30 setWcmCellularScanProtectionCellFrequenciesforBT:v32];
  [v30 setWcmCellularScanProtectionWiFiChannels:&off_10028BFB8];
  [v30 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_10028C060];
  [v30 setWcmWiFiScanThrottlingChannelIndices:0];
  [v30 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_10028C078, @"LTE", &off_10028C090, @"NR", 0)}];
  [v30 setWcmGen9rFemDefaultMode5gWiFiCellularbands:0];
  return [v30 setWcmCellularAccessoryCoexBands:0];
}

id sub_10014A404(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWiFiSupportFrameConfig:1];
  [a1 setWcmWiFiSupportWciSignalingConfig:1];
  [a1 setWcmWiFiRxProtectMode:&off_1002723F0];
  [a1 setWcmWiFiTxOnIndication:&off_100272300];
  [a1 setWcmWiFiScanJoinProtectDuration:&off_1002723F0];
  [a1 setWcmWiFiEnvelopeIndicationTimer:&off_100272360];
  [a1 setWcmWiFiEnvelopeOnIndication:&off_100272300];
  [a1 setWcmWCI2FrameSyncAssertOffset:-60];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-40];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-40];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-50];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-50];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:6790];
  [a1 setWcmWCI2MWSInactivityAssertJitter:192];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:500];
  [a1 setWcmCellularLAACoexProtectCQIPeriod:100];
  [a1 setWcmCellularLAACoexThresholdIn:20];
  [a1 setWcmCellularLAACoexThresholdOut:10];
  [a1 setWcmCellularLAACoexDeactTimer:500];
  [a1 setWcmCellularLAACoexDeactStopTimer:500];
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272630];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v76 = 0;
  v77 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex052_V8WiFiEnh" options:@"plist") format:2 error:&v76, &v77];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v35 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v34[1] = v34;
  __chkstk_darwin(v4, v5, v6);
  v37 = v34 - v7;
  v9 = v34 + v3 * v8 - v7;
  *v9 = 211;
  *(v9 + 4) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 36) = 0u;
  *(v9 + 52) = 0u;
  *(v9 + 68) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 0u;
  *(v9 + 29) = 0;
  v10 = [v2 count];
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v36 = 120 * v10;
    do
    {
      v72 = v11;
      v74 = 0;
      v75 = 0;
      v73[0] = 0;
      *(v73 + 3) = 0;
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v45 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v44 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v43 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v42 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v41 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v40 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v39 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v38 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForBTAFH", "intValue"}];
      v24 = v72;
      ++v12;
      v25 = &v37[v72];
      v26 = v70;
      *v25 = v71;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v68;
      v25[8] = v69;
      v25[13] = v26;
      LOBYTE(v26) = v66;
      v25[14] = v67;
      v25[15] = v26;
      LOBYTE(v26) = v64;
      v25[16] = v65;
      v25[17] = v26;
      LOBYTE(v26) = v62;
      v25[18] = v63;
      v25[19] = v26;
      LOBYTE(v26) = v60;
      v25[20] = v61;
      v25[21] = v26;
      *(v25 + 9) = 0;
      LOBYTE(v26) = v58;
      v25[22] = v59;
      v25[23] = v26;
      LOBYTE(v26) = v56;
      v25[24] = v57;
      v25[25] = v26;
      LOBYTE(v26) = v54;
      v25[26] = v55;
      v25[27] = v26;
      v25[28] = v53;
      *(v25 + 29) = v74;
      v25[31] = v75;
      *(v25 + 4) = v52;
      *(v25 + 5) = v13;
      *(v25 + 6) = v14;
      LOBYTE(v26) = v50;
      v25[56] = v51;
      v25[57] = v26;
      LOBYTE(v26) = v48;
      v25[58] = v49;
      v25[59] = v26;
      v27 = v47;
      *(v25 + 15) = 0;
      *(v25 + 16) = v27;
      *(v25 + 68) = 0;
      *(v25 + 38) = 0;
      v25[78] = v46;
      v25[79] = v45;
      *(v25 + 10) = 0;
      v25[88] = 0;
      v25[89] = v44;
      v25[90] = v43;
      v25[91] = v42;
      v25[92] = 0;
      v25[93] = v41;
      v25[94] = v40;
      v25[95] = v39;
      v25[96] = v38;
      v25[97] = v15;
      v25[98] = v16;
      v25[99] = v17;
      v25[100] = v18;
      v25[101] = v19;
      v25[102] = v20;
      v25[103] = v21;
      v25[104] = v22;
      v28 = v73[0];
      *(v25 + 27) = *(v73 + 3);
      *(v25 + 105) = v28;
      v11 = v24 + 120;
      *(v25 + 14) = v23;
    }

    while (v36 != v11);
  }

  v29 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v30 = v35;
  [v35 setWcmWiFiCellCoexIssueTable:v29];
  v31 = [v30 wcmWiFiCellCoexIssueTable];
  [v31 configureBy:v37];
  [v30 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex052"}];
  [v30 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v30 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v30 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v30 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v30 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v30 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v30 setWcmCellularScanProtectionCellFrequencies:&off_10028C138];
  if (_os_feature_enabled_impl())
  {
    v32 = &off_10028C1E0;
  }

  else
  {
    v32 = &off_10028C288;
  }

  [v30 setWcmCellularScanProtectionCellFrequenciesforBT:v32];
  [v30 setWcmCellularScanProtectionWiFiChannels:&off_10028C330];
  [v30 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_10028C3D8];
  [v30 setWcmWiFiScanThrottlingChannelIndices:0];
  [v30 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_10028C3F0, @"LTE", &off_10028C408, @"NR", 0)}];
  [v30 setWcmGen9rFemDefaultMode5gWiFiCellularbands:0];
  return [v30 setWcmCellularAccessoryCoexBands:0];
}

id sub_10014B090(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWiFiSupportFrameConfig:1];
  [a1 setWcmWiFiSupportWciSignalingConfig:1];
  [a1 setWcmWiFiRxProtectMode:&off_1002723F0];
  [a1 setWcmWiFiTxOnIndication:&off_100272300];
  [a1 setWcmWiFiScanJoinProtectDuration:&off_1002723F0];
  [a1 setWcmWiFiEnvelopeIndicationTimer:&off_100272360];
  [a1 setWcmWiFiEnvelopeOnIndication:&off_100272300];
  [a1 setWcmWCI2FrameSyncAssertOffset:-60];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-40];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-40];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-50];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-50];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:6790];
  [a1 setWcmWCI2MWSInactivityAssertJitter:192];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:500];
  [a1 setWcmCellularLAACoexProtectCQIPeriod:100];
  [a1 setWcmCellularLAACoexThresholdIn:20];
  [a1 setWcmCellularLAACoexThresholdOut:10];
  [a1 setWcmCellularLAACoexDeactTimer:500];
  [a1 setWcmCellularLAACoexDeactStopTimer:500];
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272630];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v76 = 0;
  v77 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex053_V8WiFiEnh" options:@"plist") format:2 error:&v76, &v77];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v35 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v34[1] = v34;
  __chkstk_darwin(v4, v5, v6);
  v37 = v34 - v7;
  v9 = v34 + v3 * v8 - v7;
  *v9 = 211;
  *(v9 + 4) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 36) = 0u;
  *(v9 + 52) = 0u;
  *(v9 + 68) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 0u;
  *(v9 + 29) = 0;
  v10 = [v2 count];
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v36 = 120 * v10;
    do
    {
      v72 = v11;
      v74 = 0;
      v75 = 0;
      v73[0] = 0;
      *(v73 + 3) = 0;
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v45 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v44 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v43 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v42 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v41 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v40 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v39 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v38 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForBTAFH", "intValue"}];
      v24 = v72;
      ++v12;
      v25 = &v37[v72];
      v26 = v70;
      *v25 = v71;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v68;
      v25[8] = v69;
      v25[13] = v26;
      LOBYTE(v26) = v66;
      v25[14] = v67;
      v25[15] = v26;
      LOBYTE(v26) = v64;
      v25[16] = v65;
      v25[17] = v26;
      LOBYTE(v26) = v62;
      v25[18] = v63;
      v25[19] = v26;
      LOBYTE(v26) = v60;
      v25[20] = v61;
      v25[21] = v26;
      *(v25 + 9) = 0;
      LOBYTE(v26) = v58;
      v25[22] = v59;
      v25[23] = v26;
      LOBYTE(v26) = v56;
      v25[24] = v57;
      v25[25] = v26;
      LOBYTE(v26) = v54;
      v25[26] = v55;
      v25[27] = v26;
      v25[28] = v53;
      *(v25 + 29) = v74;
      v25[31] = v75;
      *(v25 + 4) = v52;
      *(v25 + 5) = v13;
      *(v25 + 6) = v14;
      LOBYTE(v26) = v50;
      v25[56] = v51;
      v25[57] = v26;
      LOBYTE(v26) = v48;
      v25[58] = v49;
      v25[59] = v26;
      v27 = v47;
      *(v25 + 15) = 0;
      *(v25 + 16) = v27;
      *(v25 + 68) = 0;
      *(v25 + 38) = 0;
      v25[78] = v46;
      v25[79] = v45;
      *(v25 + 10) = 0;
      v25[88] = 0;
      v25[89] = v44;
      v25[90] = v43;
      v25[91] = v42;
      v25[92] = 0;
      v25[93] = v41;
      v25[94] = v40;
      v25[95] = v39;
      v25[96] = v38;
      v25[97] = v15;
      v25[98] = v16;
      v25[99] = v17;
      v25[100] = v18;
      v25[101] = v19;
      v25[102] = v20;
      v25[103] = v21;
      v25[104] = v22;
      v28 = v73[0];
      *(v25 + 27) = *(v73 + 3);
      *(v25 + 105) = v28;
      v11 = v24 + 120;
      *(v25 + 14) = v23;
    }

    while (v36 != v11);
  }

  v29 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v30 = v35;
  [v35 setWcmWiFiCellCoexIssueTable:v29];
  v31 = [v30 wcmWiFiCellCoexIssueTable];
  [v31 configureBy:v37];
  [v30 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex005"}];
  [v30 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v30 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v30 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v30 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v30 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v30 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v30 setWcmCellularScanProtectionCellFrequencies:&off_10028C4B0];
  if (_os_feature_enabled_impl())
  {
    v32 = &off_10028C558;
  }

  else
  {
    v32 = &off_10028C600;
  }

  [v30 setWcmCellularScanProtectionCellFrequenciesforBT:v32];
  [v30 setWcmCellularScanProtectionWiFiChannels:&off_10028C6A8];
  [v30 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_10028C750];
  [v30 setWcmWiFiScanThrottlingChannelIndices:0];
  [v30 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_10028C768, @"LTE", &off_10028C780, @"NR", 0)}];
  [v30 setWcmGen9rFemDefaultMode5gWiFiCellularbands:0];
  return [v30 setWcmCellularAccessoryCoexBands:0];
}

id sub_10014BD1C(void *a1)
{
  [a1 setWrmPlatformAntBlockPowerLimitPlistFile:@"CoEx-Table-AntBlockPwrLmt-Coex054"];
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWiFiSupportFrameConfig:1];
  [a1 setWcmWiFiSupportWciSignalingConfig:0];
  [a1 setWcmWiFiRxProtectMode:&off_1002723F0];
  [a1 setWcmWiFiTxOnIndication:&off_100272300];
  [a1 setWcmWiFiScanJoinProtectDuration:&off_1002723F0];
  [a1 setWcmWiFiEnvelopeIndicationTimer:&off_100272360];
  [a1 setWcmWiFiEnvelopeOnIndication:&off_100272300];
  [a1 setWcmWCI2FrameSyncAssertOffset:-200];
  [a1 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [a1 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [a1 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [a1 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [a1 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [a1 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [a1 setWcmCellularCoexB41A2Range:{2516.0, 174.0}];
  sub_100153714(a1, @"CoEx-Table-CellCoex054_V8WiFiEnh", 8);
  sub_10015480C(a1, @"CoEx-Table-AntBlockPwrLmt-Coex054");
  sub_100154C5C(a1, @"CoEx-Table-AntBlockPwrLmt-Coex054");
  [a1 setWcmCellRc1CoexIssueTable:0];
  [a1 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlistV2:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlistV2:", @"CoEx-Table-AntBlockPwrLmt-Coex054"}];
  [a1 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_10028C798, @"LTE", &off_10028C7B0, @"NR", 0)}];
  [a1 setWcmGen9rFemDefaultMode5gWiFiCellularbands:0];

  return [a1 setWcmCellularAccessoryCoexBands:0];
}

id sub_10014BF44(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWiFiCellCoexIssueTable:objc_alloc_init(WCM_WiFiCellCoexIssueBandTable)];
  [objc_msgSend(a1 "wcmWiFiCellCoexIssueTable")];
  [a1 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [a1 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [a1 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [a1 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [a1 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [a1 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_10028C810];

  return [a1 setWcmCellularScanProtectionWiFiChannels:&off_10028C870];
}

id sub_10014C050(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  [a1 setWcmWiFiCellCoexIssueTable:objc_alloc_init(WCM_WiFiCellCoexIssueBandTable)];
  [objc_msgSend(a1 "wcmWiFiCellCoexIssueTable")];
  [a1 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex003"}];
  [a1 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [a1 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [a1 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [a1 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [a1 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [a1 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_10028C8D0];
  [a1 setWcmCellularScanProtectionWiFiChannels:&off_10028C930];
  [a1 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [a1 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [a1 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [a1 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [a1 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [a1 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [a1 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  v2 = [NSNumber numberWithInt:200];

  return [a1 setWcmCellularWCI2ModeFrameDenialWindow:v2];
}

id sub_10014C314(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  [a1 setWcmWiFiCellCoexIssueTable:objc_alloc_init(WCM_WiFiCellCoexIssueBandTable)];
  [objc_msgSend(a1 "wcmWiFiCellCoexIssueTable")];
  [a1 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex003"}];
  [a1 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [a1 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [a1 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [a1 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [a1 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [a1 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_10028C990];
  [a1 setWcmCellularScanProtectionWiFiChannels:&off_10028C9F0];
  [a1 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [a1 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [a1 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [a1 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [a1 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [a1 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [a1 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  v2 = [NSNumber numberWithInt:200];

  return [a1 setWcmCellularWCI2ModeFrameDenialWindow:v2];
}

id sub_10014C5D8(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex010_v1_NewEnum_watchV5WiFiMacro" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex003"}];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028CA50];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028CAB0];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_10014CC00(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex010_v1_NewEnum_watchV5WiFiMacro" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex003"}];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028CB10];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028CB70];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_10014D228(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex019_watchV4Macro_v1.1" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028CBD0];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028CC30];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_10014D82C(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex019_watchV4Macro_v1.1" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028CC90];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028CCF0];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_10014DE30(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex020_watchV4Macro_v1.2" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex003"}];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028CD50];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028CDB0];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_10014E458(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex020_watchV4Macro_v1.2" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex003"}];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028CE10];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028CE70];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_10014EA80(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex021_watchV4Macro_v1.1" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex003"}];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028CED0];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028CF30];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_10014F0A8(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex028_watchV4Macro" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex001"}];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028CF90];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028CFF0];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_10014F6D0(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex028_watchV4Macro" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex001"}];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028D050];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028D0B0];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_10014FCF8(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex047_watchV4Macro" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex001"}];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028D110];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028D170];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_100150320(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex047_watchV4Macro" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex001"}];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028D1D0];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028D230];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_100150948(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex062_watchV4Macro" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex007"}];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028D290];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028D2F0];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_100150F70(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex062_watchV4Macro" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex007"}];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028D350];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028D3B0];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_100151598(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex063_watchV4Macro" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex001"}];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028D410];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028D470];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_100151BC0(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex063_watchV4Macro" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex001"}];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028D4D0];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028D530];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_1001521E8(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex030_watchV4Macro" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex001"}];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028D590];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028D5F0];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_100152810(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex061_watchV4Macro" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex007"}];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028D650];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028D6B0];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_100152E38(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [WCM_Logging logLevel:3 message:@"DLDebug_ Applying K Parameters"];
  v36 = 0;
  v37 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex030_watchV4Macro" options:@"plist") format:2 error:&v36, &v37];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v31 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v30 = &v30;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v30 - v7;
  v9 = v3;
  v33 = v8;
  v11 = &v8[v3 * v10];
  *v11 = 211;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 29) = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v32 = 120 * v9;
    do
    {
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueBand", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"issueType", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"antennaFilterPathSelection", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"wifiBtAgcCoexMode", "intValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v13), "objectForKey:", @"btAgcCoexMode", "intValue"}];
      v24 = &v33[v12];
      v25 = v34;
      *v24 = v35;
      *(v24 + 1) = v25;
      v24[8] = v14;
      *(v24 + 17) = 0;
      *(v24 + 9) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = 0;
      *(v24 + 16) = v18;
      *(v24 + 68) = 0;
      *(v24 + 38) = 0;
      v24[78] = v19;
      v24[79] = v20;
      *(v24 + 20) = 0;
      *(v24 + 21) = v21;
      v24[88] = v22;
      *(v24 + 89) = 0;
      v24[91] = 0;
      v24[92] = v23;
      *(v24 + 101) = 0;
      *(v24 + 93) = 0;
      *(v24 + 29) = 0;
      ++v13;
      v12 += 120;
      *(v24 + 109) = 0;
    }

    while (v32 != v12);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex001"}];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 20.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 20.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 10.0}];
  [v27 setWcmCellularCoexB41A2Range:{2506.0, 59.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028D710];
  [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028D770];
  [v27 setWcmCellularScanProtectionWiFiMaxDuration:&off_100272720];
  [v27 setWcmCellularWCI2ModePolicy:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", 8)}];
  [v27 setWcmCellularWCI2ModePowerThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4294967288)}];
  [v27 setWcmCellularWCI2ModeRBThresholdHigh:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeRBThresholdLow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v27 setWcmCellularWCI2ModeLTETxDenial:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v27 setWcmCellularWCI2ModeMaxAllowedFrameDenials:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 40)}];
  return [v27 setWcmCellularWCI2ModeFrameDenialWindow:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 200)}];
}

id sub_100153460(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWiFiSupportFrameConfig:1];
  [a1 setWcmWiFiSupportWciSignalingConfig:1];
  [a1 setWcmWiFiRxProtectMode:&off_1002723F0];
  [a1 setWcmWiFiTxOnIndication:&off_100272300];
  [a1 setWcmWiFiScanJoinProtectDuration:&off_1002723F0];
  [a1 setWcmWiFiEnvelopeIndicationTimer:&off_100272360];
  [a1 setWcmWiFiEnvelopeOnIndication:&off_100272300];
  [a1 setWcmWCI2FrameSyncAssertOffset:1750];
  [a1 setWcmWCI2FrameSyncAssertJitter:3];
  [a1 setWcmWCI2MWSRxAssertOffset:-150];
  [a1 setWcmWCI2MWSRxAssertJitter:4];
  [a1 setWcmWCI2MWSRxDeAssertOffset:-150];
  [a1 setWcmWCI2MWSRxDeAssertJitter:4];
  [a1 setWcmWCI2MWSTxAssertOffset:-250];
  [a1 setWcmWCI2MWSTxAssertJitter:4];
  [a1 setWcmWCI2MWSTxDeAssertOffset:-250];
  [a1 setWcmWCI2MWSTxDeAssertJitter:4];
  [a1 setWcmWCI2MWSPatternAssertOffset:0];
  [a1 setWcmWCI2MWSPatternAssertJitter:0];
  [a1 setWcmWCI2MWSInactivityAssertOffset:0];
  [a1 setWcmWCI2MWSInactivityAssertJitter:4];
  [a1 setWcmWCI2MWSScanFrequencyAssertOffset:0];
  [a1 setWcmWCI2MWSScanFrequencyAssertJitter:0];
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  [a1 setWcmCellularLAACoexProtectCQIPeriod:100];
  [a1 setWcmCellularLAACoexThresholdIn:20];
  [a1 setWcmCellularLAACoexThresholdOut:10];
  [a1 setWcmCellularLAACoexDeactTimer:500];
  [a1 setWcmCellularLAACoexDeactStopTimer:500];
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272930];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  [a1 setWcmWiFiCellCoexIssueTable:objc_alloc_init(WCM_WiFiCellCoexIssueBandTable)];
  [objc_msgSend(a1 "wcmWiFiCellCoexIssueTable")];
  [a1 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [a1 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [a1 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [a1 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [a1 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [a1 setWcmCellularCoexB41A2Range:{2516.0, 174.0}];
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_10028D7E8];

  return [a1 setWcmCellularScanProtectionWiFiChannels:&off_10028D860];
}

id sub_100153714(void *a1, uint64_t a2, int a3)
{
  v96 = 0;
  v97 = 0;
  v5 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(a2 options:@"plist") format:2 error:&v96, &v97];
  if (!v5)
  {
    return [WCM_Logging logLevel:1 message:@"PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v55 = a1;
  [WCM_Logging logLevel:4 message:@"PlistConversion_ parentArray Policy Table Plist File Found"];
  v6 = [v5 count];
  v7 = [WCM_Logging logLevel:4 message:@"PlistConversion_ numofRow=%d", v6];
  v54 = &v54;
  __chkstk_darwin(v7, v8, v9);
  v11 = &v54 - v10;
  LODWORD(v10) = v6;
  v12 = v11;
  v14 = &v11[v10 * v13];
  *v14 = 211;
  *(v14 + 4) = 0u;
  *(v14 + 20) = 0u;
  *(v14 + 36) = 0u;
  *(v14 + 52) = 0u;
  *(v14 + 68) = 0u;
  *(v14 + 84) = 0u;
  *(v14 + 100) = 0u;
  *(v14 + 29) = 0;
  v15 = [v5 count];
  v92 = v12;
  if (a3 == 8)
  {
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v56 = 120 * v15;
      do
      {
        v91 = v16;
        v94 = 0;
        v95 = 0;
        v93[0] = 0;
        *(v93 + 3) = 0;
        v90 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"issueBand", "intValue"}];
        v89 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"issueType", "intValue"}];
        v88 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
        v87 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
        v86 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
        v85 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
        v84 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
        v83 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
        v82 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
        v81 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
        v80 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
        v79 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
        v78 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
        v77 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
        v76 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
        v75 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
        v74 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
        v73 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
        v72 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
        v71 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
        v18 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
        v19 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
        v70 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
        v69 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
        v68 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
        v67 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
        v66 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
        v65 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
        v64 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
        v63 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"ulcaPriority", "intValue"}];
        v62 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
        v61 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
        v60 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"CellAntBlk", "intValue"}];
        v59 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
        v58 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
        LODWORD(v57) = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
        v20 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
        v21 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
        v22 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
        v23 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
        v24 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
        v25 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
        v26 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
        v27 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
        v28 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v17), "objectForKey:", @"cellFrequencyLimitForBTAFH", "intValue"}];
        v29 = v91;
        ++v17;
        v30 = &v92[v91];
        v31 = v89;
        *v30 = v90;
        *(v30 + 1) = v31;
        LOBYTE(v31) = v87;
        v30[8] = v88;
        v30[13] = v31;
        LOBYTE(v31) = v85;
        v30[14] = v86;
        v30[15] = v31;
        LOBYTE(v31) = v83;
        v30[16] = v84;
        v30[17] = v31;
        LOBYTE(v31) = v81;
        v30[18] = v82;
        v30[19] = v31;
        LOBYTE(v31) = v79;
        v30[20] = v80;
        v30[21] = v31;
        *(v30 + 9) = 0;
        LOBYTE(v31) = v77;
        v30[22] = v78;
        v30[23] = v31;
        LOBYTE(v31) = v75;
        v30[24] = v76;
        v30[25] = v31;
        LOBYTE(v31) = v73;
        v30[26] = v74;
        v30[27] = v31;
        v30[28] = v72;
        *(v30 + 29) = v94;
        v30[31] = v95;
        *(v30 + 4) = v71;
        *(v30 + 5) = v18;
        *(v30 + 6) = v19;
        LOBYTE(v31) = v69;
        v30[56] = v70;
        v30[57] = v31;
        v30[58] = v68;
        v30[59] = v67;
        v32 = v66;
        *(v30 + 15) = 0;
        *(v30 + 16) = v32;
        *(v30 + 68) = 0;
        *(v30 + 38) = 0;
        v30[78] = v65;
        v30[79] = v64;
        *(v30 + 10) = 0;
        v30[88] = 0;
        v30[89] = v63;
        v30[90] = v62;
        v30[91] = v61;
        v30[92] = 0;
        v30[93] = v60;
        v30[94] = v59;
        v30[95] = v58;
        v30[96] = v57;
        v30[97] = v20;
        v30[98] = v21;
        v30[99] = v22;
        v30[100] = v23;
        v30[101] = v24;
        v30[102] = v25;
        v30[103] = v26;
        v30[104] = v27;
        v33 = v93[0];
        *(v30 + 27) = *(v93 + 3);
        *(v30 + 105) = v33;
        v16 = v29 + 120;
        *(v30 + 14) = v28;
      }

      while (v56 != v16);
    }
  }

  else if (v15)
  {
    v35 = 0;
    v36 = 0;
    v57 = 120 * v15;
    do
    {
      v91 = v35;
      v94 = 0;
      v95 = 0;
      v93[0] = 0;
      *(v93 + 3) = 0;
      v90 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"issueBand", "intValue"}];
      v89 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"issueType", "intValue"}];
      v88 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v87 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v86 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v85 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v84 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v83 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v82 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v81 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v80 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v79 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v78 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v77 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v76 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v75 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v74 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v73 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v71 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v37 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v38 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"ulcaPriority", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"CellAntBlk", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v39 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v40 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v41 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v42 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v43 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v44 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v45 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v46 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v47 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v36), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v48 = v91;
      ++v36;
      v49 = &v92[v91];
      v50 = v89;
      *v49 = v90;
      *(v49 + 1) = v50;
      LOBYTE(v50) = v87;
      v49[8] = v88;
      v49[13] = v50;
      LOBYTE(v50) = v85;
      v49[14] = v86;
      v49[15] = v50;
      LOBYTE(v50) = v83;
      v49[16] = v84;
      v49[17] = v50;
      LOBYTE(v50) = v81;
      v49[18] = v82;
      v49[19] = v50;
      LOBYTE(v50) = v79;
      v49[20] = v80;
      v49[21] = v50;
      LOBYTE(v50) = v77;
      v49[22] = v78;
      v49[23] = v50;
      LOBYTE(v50) = v75;
      v49[24] = v76;
      v49[25] = v50;
      LOBYTE(v50) = v73;
      v49[26] = v74;
      v49[27] = v50;
      v49[28] = v72;
      *(v49 + 29) = v94;
      v49[31] = v95;
      *(v49 + 4) = v71;
      LOBYTE(v50) = v69;
      v49[56] = v70;
      v49[57] = v50;
      v49[58] = v68;
      v49[59] = v67;
      *(v49 + 16) = v66;
      v49[78] = v65;
      v49[79] = v64;
      v49[89] = v63;
      v49[90] = v62;
      v49[91] = v61;
      v49[93] = v60;
      v49[94] = v59;
      v49[95] = v58;
      v49[96] = v39;
      v49[97] = v40;
      v49[98] = v41;
      v49[99] = v42;
      v49[100] = v43;
      v49[101] = v44;
      v49[102] = v45;
      v49[103] = v46;
      v49[104] = v47;
      *(v49 + 27) = *(v93 + 3);
      *(v49 + 105) = v93[0];
      *(v49 + 15) = 0;
      *(v49 + 9) = 0;
      *(v49 + 5) = v37;
      *(v49 + 6) = v38;
      *(v49 + 68) = 0;
      *(v49 + 38) = 0;
      *(v49 + 10) = 0;
      v49[88] = 0;
      v49[92] = 0;
      *(v49 + 14) = 0;
      v35 = v48 + 120;
    }

    while (v57 != v35);
  }

  v51 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v52 = v55;
  [v55 setWcmWiFiCellCoexIssueTable:v51];
  v53 = [v52 wcmWiFiCellCoexIssueTable];
  return [v53 configureBy:v92];
}

void sub_10015480C(void *a1, uint64_t a2)
{
  context = objc_autoreleasePoolPush();
  v28 = +[NSMutableArray array];
  v22 = +[NSMutableArray array];
  v21 = +[NSMutableArray array];
  v27 = +[NSMutableArray array];
  v26 = +[NSMutableArray array];
  v25 = +[NSMutableArray array];
  v32 = 0;
  v33 = 0;
  v3 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(a2 options:@"plist") format:2 error:&v32, &v33];
  if (v3)
  {
    v4 = @"init: Freq Scan policy Plist File Found";
  }

  else
  {
    v4 = @"init: No Freq Scan policy Plist File Found";
  }

  [WCM_Logging logLevel:3 message:v4];
  v5 = [v3 objectForKey:@"FreqScan_Client"];
  if (v5)
  {
    v24 = [v5 objectForKey:@"Policy"];
    v6 = [v24 count];
    [WCM_Logging logLevel:4 message:@"readPlatformFreqScanTable numofRow=%d", v6];
    if (v6)
    {
      v7 = 0;
      v23 = v6;
      do
      {
        v8 = [v24 objectAtIndex:v7];
        if ([v8 objectForKey:@"Cellular_Band"])
        {
          [v22 addObject:{objc_msgSend(v8, "objectForKey:", @"Cellular_Band"}];
          [v21 addObject:{objc_msgSend(v8, "objectForKey:", @"Coex_Tech"}];
        }

        v9 = [objc_msgSend(v8 objectForKey:{@"Cellular_FreqScan_MHz_Start", "intValue"}];
        v10 = [objc_msgSend(v8 objectForKey:{@"Cellular_FreqScan_MHz_End", "intValue"}];
        v31 = [objc_msgSend(v8 objectForKey:{@"Wifi_2G_Channel_Start", "intValue"}];
        v30 = [objc_msgSend(v8 objectForKey:{@"Wifi_2G_Channel_End", "intValue"}];
        v29 = [objc_msgSend(v8 objectForKey:{@"Wifi_5G_Channel_Start", "intValue"}];
        v11 = [objc_msgSend(v8 objectForKey:{@"Wifi_5G_Channel_End", "intValue"}];
        v12 = [objc_msgSend(v8 objectForKey:{@"Wifi_6G_Channel_Start", "intValue"}];
        v13 = [objc_msgSend(v8 objectForKey:{@"Wifi_6G_Channel_End", "intValue"}];
        v14 = [objc_msgSend(v8 objectForKey:{@"BT_Frequency_MHz_Start", "intValue"}];
        v15 = [objc_msgSend(v8 objectForKey:{@"BT_Frequency_MHz_End", "intValue"}];
        v35[0] = [NSNumber numberWithInteger:v9];
        v35[1] = [NSNumber numberWithInteger:v10];
        [v28 addObject:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v35, 2)}];
        v34[0] = [NSNumber numberWithInteger:v14];
        v34[1] = [NSNumber numberWithInteger:v15];
        [v25 addObject:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v34, 2)}];
        [v26 addObject:{sub_1001036EC(v12, v13, &off_1002885B0)}];
        v16 = sub_1001036EC(v31, v30, &off_1002885C8);
        v17 = sub_1001036EC(v29, v11, &off_1002885E0);
        v18 = +[NSMutableArray array];
        [v18 addObjectsFromArray:v16];
        [v18 addObjectsFromArray:v17];
        [v27 addObject:v18];
        ++v7;
      }

      while (v23 != v7);
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"init: No  Freq Scan table Found in Plist file: %@.plist", a2];
  }

  [a1 setWcmCellularScanProtectionCellBands:v22];
  [a1 setWcmCellularScanProtectionCellRats:v21];
  [a1 setWcmCellularScanProtectionCellFrequencies:v28];
  [a1 setWcmCellularScanProtectionCellFrequenciesforBT:v25];
  [a1 setWcmCellularScanProtectionWiFiChannels:v27];
  [a1 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:v26];
  [a1 setWcmWiFiScanThrottlingChannelIndices:0];
  objc_autoreleasePoolPop(context);
}

void sub_100154C5C(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = &xpc_release_ptr;
  v6 = +[NSMutableArray array];
  v27 = 0;
  v28 = 0;
  v7 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(a2 options:@"plist") format:2 error:&v27, &v28];
  if (v7)
  {
    v8 = @"init: Timesharing policy Plist File Found";
  }

  else
  {
    v8 = @"init: No Timesharing policy Plist File Found";
  }

  [WCM_Logging logLevel:3 message:v8];
  v9 = [v7 objectForKey:@"Timesharing_Client"];
  if (v9)
  {
    v24 = a1;
    context = v4;
    v10 = [v9 objectForKey:@"Policy"];
    v11 = [v10 count];
    [WCM_Logging logLevel:4 message:@"readPlatformTimesharingPolicy numofRow=%d", v11];
    if (v11)
    {
      v12 = 0;
      v26 = v11;
      do
      {
        v13 = [v10 objectAtIndex:v12];
        v14 = [v5[166] array];
        v15 = v10;
        v16 = [objc_msgSend(v13 objectForKey:{@"Cellular_Center_Frequency_KHz", "intValue"}];
        v17 = v6;
        v18 = v5;
        v19 = [objc_msgSend(v13 objectForKey:{@"Cellular_Bandwidth_KHz", "intValue"}];
        v20 = [objc_msgSend(v13 objectForKey:{@"Wifi_2G_Channel_Start", "intValue"}];
        LODWORD(v13) = [objc_msgSend(v13 objectForKey:{@"Wifi_2G_Channel_End", "intValue"}];
        v21 = v16 - (v19 >> 1);
        v22 = v16 + (v19 >> 1);
        v5 = v18;
        v6 = v17;
        [v14 addObject:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v21)}];
        v23 = v22;
        v10 = v15;
        [v14 addObject:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v23)}];
        [v14 addObject:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v20)}];
        [v14 addObject:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v13)}];
        [v17 addObject:v14];
        ++v12;
      }

      while (v26 != v12);
    }

    [v24 setWcmCellularTimesharingPolicy:v6];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"readPlatformTimesharingPolicy %@", [v24 wcmCellularTimesharingPolicy]);
    v4 = context;
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"init: No Timesharing policy Found in Plist file: %@.plist", a2];
    [a1 setWcmCellularTimesharingPolicy:v6];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100155194(uint64_t a1)
{
  [WCM_Logging logLevel:22 message:@" broken backhaul timer expired, DPD count:%d, SIP Stall Count:%d", *(*(a1 + 32) + 20), *(*(a1 + 32) + 24)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 288);
  if (v3)
  {
    [v3 invalidate];

    *(*(a1 + 32) + 288) = 0;
    v2 = *(a1 + 32);
  }

  *(v2 + 20) = 0;
  *(*(a1 + 32) + 24) = 0;
}

id sub_100155BF4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 40);
  v5 = "WRM_NETWORK_TYPE_INVALID!!!";
  if (v4 == 1)
  {
    v5 = "CELLULAR";
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = "WIFI";
  }

  if (a2 < 7 && ((0x7Du >> a2) & 1) != 0)
  {
    v7 = off_100242400[a2];
  }

  else
  {
    v7 = "SF_ADVICE_INVALID_VALUE!!!";
    if (a2 == 7)
    {
      v7 = "kNetworkAdvisoryDefiniteUse";
    }
  }

  result = [WCM_Logging logLevel:24 message:@"iRAT: Symptom Framework returns a network advice for %s: %d (%s)", v6, a2, v7];
  v9 = *(a1 + 40);
  if (!v9)
  {
    v10 = 8;
    goto LABEL_15;
  }

  if (v9 == 1)
  {
    v10 = 12;
LABEL_15:
    *(*(a1 + 32) + v10) = v2;
  }

  ++*(*(a1 + 32) + 208);
  return result;
}

id sub_100155E4C(uint64_t a1, void *a2, void *a3)
{
  *(*(a1 + 32) + 32) = [a2 copy];
  v6 = a3;
  [*(a1 + 32) getAgeOfMetricCurrInstant];
  *(*(a1 + 32) + 192) = fmax(v7, 0.0);
  v8 = *(a1 + 40);
  v9 = "WRM_NETWORK_TYPE_INVALID!!!";
  if (v8 == 1)
  {
    v9 = "CELLULAR";
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = "WIFI";
  }

  [WCM_Logging logLevel:20 message:@"iRAT: Symptom Framework returns full score for INSTANT %s (age %.2lfsec): data: %@ error: %@", v10, *(*(a1 + 32) + 192), a2, a3];

  [*(a1 + 32) getWifiNetMetricCurrInstant:1];
  v12 = v11;
  [*(a1 + 32) getWifiNetMetricCurrInstant:2];
  v14 = v13;
  [*(a1 + 32) getWifiNetMetricCurrInstant:3];
  v16 = v15;
  [*(a1 + 32) getWifiNetMetricCurrInstant:4];
  v18 = v17;
  [*(a1 + 32) getWifiNetMetricCurrInstant:5];
  v20 = v19;
  [*(a1 + 32) getWifiNetMetricCurrInstant:6];
  v22 = v21;
  [*(a1 + 32) getWifiNetMetricCurrInstant:7];
  v24 = v23;
  [*(a1 + 32) getWifiNetMetricCurrInstant:8];
  [WCM_Logging logLevel:24 message:@"iRAT: Symptom Metrics for INSTANT: connFail %.2f faultyStay %.2f lowqStay %.2f txRetry %.2f rxDup %.2f minRTT %lf avgRTT %.2f varRTT %.2f", v12, v14, v16, v18, v20, v22, v24, v25];
  [*(a1 + 32) getWifiNetMetricCurrInstant:6];
  *(*(a1 + 32) + 96) = v26;
  [*(a1 + 32) getWifiNetMetricCurrInstant:7];
  *(*(a1 + 32) + 104) = v27;
  [*(a1 + 32) getWifiNetMetricCurrInstant:8];
  *(*(a1 + 32) + 112) = v28;
  *(*(a1 + 32) + 64) = *(*(a1 + 32) + 80);
  *(*(a1 + 32) + 72) = *(*(a1 + 32) + 88);
  *(*(a1 + 32) + 136) = *(*(a1 + 32) + 144);
  [*(a1 + 32) getWifiNetMetricCurrInstant:5];
  *(*(a1 + 32) + 120) = v29;
  [*(a1 + 32) getWifiNetMetricCurrInstant:4];
  *(*(a1 + 32) + 128) = v30;
  *(*(a1 + 32) + 160) = *(*(a1 + 32) + 152);
  [*(a1 + 32) getWifiNetMetricCurrInstant:9];
  if (v31 >= 0.0)
  {
    *(*(a1 + 32) + 80) = v31;
  }

  else
  {
    [WCM_Logging logLevel:20 message:@"iRAT: Symptom Framework: Unable to  receive NETWORK_SYMPTOM_CONN_ATTEMPT"];
  }

  [*(a1 + 32) getWifiNetMetricCurrInstant:10];
  if (v32 >= 0.0)
  {
    *(*(a1 + 32) + 88) = v32;
  }

  else
  {
    [WCM_Logging logLevel:20 message:@"iRAT: Symptom Framework: Unable to receive NETWORK_SYMPTOM_CONN_SUCC"];
  }

  [*(a1 + 32) getWifiNetMetricCurrInstant:11];
  if (v33 >= 0.0)
  {
    *(*(a1 + 32) + 144) = v33;
  }

  else
  {
    [WCM_Logging logLevel:20 message:@"iRAT: Symptom Framework: Unable to receive NETWORK_SYMPTOM_INPUT_PKTS"];
  }

  [*(a1 + 32) getWifiNetMetricCurrInstant:13];
  if (v34 >= 0.0)
  {
    *(*(a1 + 32) + 152) = v34;
  }

  else
  {
    [WCM_Logging logLevel:20 message:@"iRAT: Symptom Framework: Unable to receive NETWORK_SYMPTOM_WIFI_IN_BYTES"];
  }

  v35 = *(a1 + 32);
  result = +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"iRAT: Symptom Metrics for INSTANT: PreConnAttempt %.2f Current Conn Attempt %.2f PrevConnSuccess %.2f CurrentConnSucc %.2f PrevInputPkts %.2f CurrentPacketsIn %lf CurrentBytesIn %lf BackHaulStatus %d", v35[8], v35[10], v35[9], v35[11], v35[17], v35[18], v35[20], [v35 evaluateBackHaulLink]);
  ++*(*(a1 + 32) + 224);
  return result;
}

void sub_1001563E0(id a1, id a2, id a3, BOOL *a4)
{
  if (([a3 isEqual:{+[NSNull null](NSNull, "null", a3, a4)}] & 1) == 0)
  {
    v5 = [objc_msgSend(a3 objectForKeyedSubscript:{kPerformanceFlowRemoteID), "UTF8String"}];
    [objc_msgSend(a3 objectForKeyedSubscript:{kPerformanceFlowConnSuccesses), "doubleValue"}];
    v7 = v6;
    [objc_msgSend(a3 objectForKeyedSubscript:{kPerformanceFlowConnAttempts), "doubleValue"}];
    v9 = v8;
    [objc_msgSend(a3 objectForKeyedSubscript:{kPerformanceFlowOverallTime), "doubleValue"}];
    v11 = v10;
    [objc_msgSend(a3 objectForKeyedSubscript:{kPerformanceFlowTimesThresholded), "doubleValue"}];
    v13 = v12;
    [objc_msgSend(a3 objectForKeyedSubscript:{kPerformanceFlowTxPackets), "doubleValue"}];
    v15 = v14;
    [objc_msgSend(a3 objectForKeyedSubscript:{kPerformanceFlowTxReTxPackets), "doubleValue"}];
    v17 = v16;
    [objc_msgSend(a3 objectForKeyedSubscript:{kPerformanceFlowTxFailPackets), "doubleValue"}];
    v19 = v18;
    [objc_msgSend(a3 objectForKeyedSubscript:{kPerformanceFlowAvgUsecsEstabTime), "doubleValue"}];
    [WCM_Logging logLevel:20 message:@"iRAT: Symptom Metrics for IKEv2: Tunnel ID:%-20.18s Flow:%16.0f, ConnSucc:%16.0f, ConnAttempt:%16.0f, OverallStat(s):%16.0f, Thresholded:%16.0f, TxPackets:%16.0f, ReTxPackets:%16.0f, FailPackets:%16.0f", v5, v7, v9, v11, v13, v15, v17, v19, v20];
  }
}

id sub_10015678C(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) displayIKEMetrics:a2];
  ++*(*(a1 + 32) + 224);
  return result;
}

void sub_1001567D8(id a1, id a2, id a3, BOOL *a4)
{
  if (([a3 isEqual:{+[NSNull null](NSNull, "null", a3, a4)}] & 1) == 0)
  {
    v6 = [a2 UTF8String];
    [objc_msgSend(a3 objectForKeyedSubscript:{kPerformanceFlowTxPackets), "doubleValue"}];
    v8 = v7;
    v9 = kPerformanceFlowTxReTxPackets;
    [objc_msgSend(a3 objectForKeyedSubscript:{kPerformanceFlowTxReTxPackets), "doubleValue"}];
    v11 = v10;
    [objc_msgSend(a3 objectForKeyedSubscript:{v9), "doubleValue"}];
    v13 = v12;
    [objc_msgSend(a3 objectForKeyedSubscript:{kPerformanceFlowTxFailPackets), "doubleValue"}];
    v15 = v14;
    [objc_msgSend(a3 objectForKeyedSubscript:{kPerformanceFlowTxReTxInterval), "doubleValue"}];
    [WCM_Logging logLevel:20 message:@"iRAT: Symptom Metrics for IKEv2: Key String:%-20.18s FlowTxPackets:%16.0f, FlowTxReTxPackets:%16.0f, :%16.0f, OverallStat(s):%16.0f, Thresholded:%16.0f, TxPackets:%16.0f, ReTxPackets:%16.0f, FailPackets:%16.0f", v6, v8, v11, v13, v15, v16];
  }
}

id sub_1001569E4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) displayWatchpointHit:a2];
  v3 = *(a1 + 32);

  return [v3 notifyIRATManager:150];
}

id sub_100156DB4(uint64_t a1, void *a2)
{
  if ([objc_msgSend(a2 objectForKeyedSubscript:{kSymptomDiagnosticReplySuccess), "BOOLValue"}])
  {
    return [WCM_Logging logLevel:20 message:@"ABCreport is successful for signature:%@", *(a1 + 32), v6, v7];
  }

  v5 = [objc_msgSend(a2 objectForKeyedSubscript:{kSymptomDiagnosticReplyReason), "intValue"}];
  return +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 20, @"ABCreport is dampened for signature:%@ with error code %lld reason %@", *(a1 + 32), v5, [a2 objectForKeyedSubscript:kSymptomDiagnosticReplyReasonString]);
}

id sub_100157668(id result)
{
  if (!qword_1002B8210)
  {
    v1.receiver = *(result + 4);
    v1.super_class = &OBJC_METACLASS___WRM_MetricsService;
    result = [objc_msgSendSuper2(&v1 allocWithZone:{0), "init"}];
    qword_1002B8210 = result;
  }

  return result;
}

NSDictionary *sub_100159448(uint64_t a1)
{
  v11 = @"trialExperimentId";
  v2 = *(a1 + 32);
  if (!v2)
  {
    v24 = @"0";
    v12 = @"trialDeploymentId";
    goto LABEL_6;
  }

  v3 = [v2 experimentId];
  v4 = *(a1 + 32);
  v24 = v3;
  v12 = @"trialDeploymentId";
  if (!v4)
  {
LABEL_6:
    v7 = @"0";
    v25 = @"0";
    v13 = @"trialTreatmentId";
    goto LABEL_7;
  }

  v5 = -[NSNumber stringValue](+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 deploymentId]), "stringValue");
  v6 = *(a1 + 32);
  v25 = v5;
  v13 = @"trialTreatmentId";
  if (v6)
  {
    v7 = [v6 treatmentId];
  }

  else
  {
    v7 = @"0";
  }

LABEL_7:
  v26 = v7;
  v14 = @"RLHandoverPolicyEnabled";
  v27 = [NSNumber numberWithBool:*(a1 + 56)];
  v15 = @"callType";
  v28 = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 156)];
  v16 = @"iRatPolicy";
  v29 = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 4 * *(*(a1 + 40) + 176) + 156)];
  v17 = @"iRatPolicyOverriddenByRL";
  v30 = [NSNumber numberWithBool:*(*(*(a1 + 40) + 176) + *(a1 + 40) + 167)];
  v18 = @"callFailed";
  v31 = [NSNumber numberWithBool:*(a1 + 57)];
  v19 = @"cellDataLQM";
  v32 = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 120)];
  v20 = @"cellVoiceLQM";
  v8 = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 124)];
  v9 = *(*(a1 + 40) + 104);
  if (!v9)
  {
    v9 = @"INVALID_RAT";
  }

  v33 = v8;
  v34 = v9;
  v21 = @"ratType";
  v22 = @"cell2wifiHandoverCount";
  v35 = [NSNumber numberWithInt:*(a1 + 48)];
  v23 = @"wifi2cellHandoverCount";
  v36 = [NSNumber numberWithInt:*(a1 + 52)];
  return [NSDictionary dictionaryWithObjects:&v24 forKeys:&v11 count:13];
}

NSDictionary *sub_100159AA0(uint64_t a1)
{
  v5[0] = @"counter";
  v6[0] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 8)];
  v5[1] = @"wifiRssi";
  v6[1] = [NSNumber numberWithLongLong:*(*(a1 + 32) + 16)];
  v5[2] = @"wifiSNR";
  v6[2] = [NSNumber numberWithLongLong:*(*(a1 + 32) + 24)];
  v5[3] = @"bssLoad";
  v6[3] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 36)];
  v5[4] = @"cca";
  v6[4] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 32)];
  v5[5] = @"qbssLoad";
  v6[5] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 36)];
  v5[6] = @"stationCount";
  v6[6] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 60)];
  v5[7] = @"wifiEstimatedBandwitdh";
  v6[7] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 64)];
  v5[8] = @"wifiRxPhyRate";
  v6[8] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 40)];
  v5[9] = @"wifiTxPhyRate";
  v6[9] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 52)];
  v5[10] = @"wifiTxPER";
  v6[10] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 48)];
  v5[11] = @"wifiRxRetry";
  v6[11] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 44)];
  v5[12] = @"captiveNetworks";
  v6[12] = [NSNumber numberWithBool:*(*(a1 + 32) + 56)];
  v5[13] = @"dataLQM";
  v6[13] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 120)];
  v5[14] = @"voiceLQM";
  v6[14] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 124)];
  v5[15] = @"signalBar";
  v6[15] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 112)];
  v5[16] = @"cellRsrp";
  v6[16] = [NSNumber numberWithInt:*(*(a1 + 32) + 128)];
  v5[17] = @"cellRsrq";
  v6[17] = [NSNumber numberWithInt:*(*(a1 + 32) + 132)];
  v5[18] = @"cellSnr";
  v6[18] = [NSNumber numberWithInt:*(*(a1 + 32) + 136)];
  v5[19] = @"facetimeAction";
  v6[19] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 88)];
  v5[20] = @"facetimePacketLoss";
  v6[20] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 92)];
  v5[21] = @"facetimeTimeDelay";
  v6[21] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 96)];
  v5[22] = @"iRATRecommendation";
  v2 = *(a1 + 32);
  v6[22] = *(v2 + 72);
  v5[23] = @"iRATRecommendationReason";
  v6[23] = *(v2 + 80);
  v5[24] = @"ratType";
  v3 = *(v2 + 104);
  if (!v3)
  {
    v3 = @"INVALID_RAT";
  }

  v6[24] = v3;
  v5[25] = @"alertedMode";
  v6[25] = [NSNumber numberWithBool:*(v2 + 140)];
  v5[26] = @"cellMode";
  v6[26] = [NSNumber numberWithBool:*(*(a1 + 32) + 141)];
  v5[27] = @"isPCDetected";
  v6[27] = [NSNumber numberWithBool:*(*(a1 + 32) + 142)];
  v5[28] = @"isStallDetected";
  v6[28] = [NSNumber numberWithBool:*(*(a1 + 32) + 143)];
  v5[29] = @"audioErasure";
  v6[29] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 144)];
  v5[30] = @"videoErasure";
  v6[30] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 148)];
  return [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:31];
}

NSDictionary *sub_10015A01C(uint64_t a1)
{
  v8[0] = @"ccAssertion";
  v9[0] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 16)];
  v8[1] = @"enableCMAS";
  v9[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 20)];
  v8[2] = @"enableTelephony";
  v9[2] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 24)];
  v8[3] = @"isTriggeredByProximityChange";
  v9[3] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 28)];
  v8[4] = @"newLinkState";
  v9[4] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 32)];
  v8[5] = @"oldLinkState";
  v9[5] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 36)];
  v8[6] = @"siriApp";
  v9[6] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 40)];
  v8[7] = @"wifiProximity";
  v9[7] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 44)];
  v8[8] = @"btRssi";
  v9[8] = [NSNumber numberWithInt:*(*(a1 + 32) + 48)];
  v8[9] = @"wifiRssi";
  v9[9] = [NSNumber numberWithInt:*(*(a1 + 32) + 52)];
  v8[10] = @"bundleID";
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (!v3)
  {
    v3 = &stru_100255120;
  }

  v9[10] = v3;
  v8[11] = @"mModeState";
  v9[11] = [NSNumber numberWithUnsignedInt:*(v2 + 56)];
  v8[12] = @"mModeStateDuration";
  v9[12] = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v8[13] = @"prevMModeState";
  v4 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
  v5 = @"Query";
  if (!*(a1 + 52))
  {
    v5 = @"EventTrigger";
  }

  v9[13] = v4;
  v9[14] = v5;
  v8[14] = @"triggerType";
  v8[15] = @"HighPowerMode";
  if (*(*(a1 + 32) + 60))
  {
    v6 = @"On";
  }

  else
  {
    v6 = @"Off";
  }

  v9[15] = v6;
  return [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:16];
}

NSDictionary *sub_10015A394(uint64_t a1)
{
  v6[0] = @"wifiRssi";
  v7[0] = [NSNumber numberWithLongLong:*(*(a1 + 32) + 80)];
  v6[1] = @"callStatus";
  v7[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 8)];
  v6[2] = @"dataLinkPref";
  v7[2] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 12)];
  v6[3] = @"voiceLinkPref";
  v7[3] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 16)];
  v6[4] = @"appType";
  v2 = *(a1 + 32);
  v7[4] = *(v2 + 24);
  v6[5] = @"motionState";
  v7[5] = [NSNumber numberWithInt:*(v2 + 32)];
  v6[6] = @"cellRSRP";
  v7[6] = [NSNumber numberWithInt:*(*(a1 + 32) + 36)];
  v6[7] = @"cellSINR";
  v7[7] = [NSNumber numberWithInt:*(*(a1 + 32) + 40)];
  v6[8] = @"dataAppStatus";
  v7[8] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 48)];
  v6[9] = @"dataLQM";
  v7[9] = [NSNumber numberWithInt:*(*(a1 + 32) + 52)];
  v6[10] = @"voiceLQM";
  v7[10] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 56)];
  v6[11] = @"ratType";
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  if (!v4)
  {
    v4 = @"INVALID_RAT";
  }

  v7[11] = v4;
  v6[12] = @"serviceType";
  v7[12] = [NSNumber numberWithUnsignedInt:*(v3 + 72)];
  v6[13] = @"wifiSNR";
  v7[13] = [NSNumber numberWithLongLong:*(*(a1 + 32) + 88)];
  v6[14] = @"bcnPer";
  v7[14] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 96)];
  v6[15] = @"cca";
  v7[15] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 100)];
  v6[16] = @"qbssLoad";
  v7[16] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 104)];
  v6[17] = @"stationCount";
  v7[17] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 108)];
  v6[18] = @"wifiRxPhyRate";
  v7[18] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 116)];
  v6[19] = @"wifiRxRetry";
  v7[19] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 120)];
  v6[20] = @"wifiTxPER";
  v7[20] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 124)];
  v6[21] = @"wifiTxPhyRate";
  v7[21] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 128)];
  v6[22] = @"captiveNetworks";
  v7[22] = [NSNumber numberWithBool:*(*(a1 + 32) + 132)];
  v6[23] = @"decisionVIBE";
  v7[23] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 140)];
  v6[24] = @"decisionVO";
  v7[24] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 144)];
  v6[25] = @"expectedThroughputVIBE";
  v7[25] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 148)];
  v6[26] = @"lqmScoreWifi";
  v7[26] = [NSNumber numberWithInt:*(*(a1 + 32) + 156)];
  v6[27] = @"packetLifetimeVIBE";
  v7[27] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 160)];
  v6[28] = @"pkgLifeTimeVO";
  v7[28] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 164)];
  v6[29] = @"pktLossRateVO";
  v7[29] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 168)];
  return [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:30];
}

uint64_t sub_10015AEC0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = off_1002B8268;
  v6 = off_1002B8268;
  if (!off_1002B8268)
  {
    v1 = sub_10015CD0C();
    v4[3] = dlsym(v1, "__BMRootLibrary");
    off_1002B8268 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    sub_10015FC00();
  }

  return v0();
}

void sub_10015AF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSDictionary *sub_10015AFB4(uint64_t a1)
{
  v7[0] = @"counter";
  v8[0] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 8)];
  v7[1] = @"numStall";
  v8[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 368)];
  v7[2] = @"isEnd";
  v8[2] = [NSNumber numberWithBool:*(*(a1 + 32) + 377)];
  v7[3] = @"lPM";
  v8[3] = [NSNumber numberWithBool:*(*(a1 + 32) + 378)];
  v7[4] = @"offline";
  v8[4] = [NSNumber numberWithBool:*(*(a1 + 32) + 379)];
  v7[5] = @"online";
  v8[5] = [NSNumber numberWithBool:*(*(a1 + 32) + 380)];
  v7[6] = @"event";
  v8[6] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 12)];
  v7[7] = @"bufferInterval";
  v8[7] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 16)];
  v7[8] = @"lqmScoreWifi";
  v8[8] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 84)];
  v7[9] = @"decisionVIBE";
  v8[9] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 88)];
  v7[10] = @"decisionVO";
  v8[10] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 92)];
  v7[11] = @"goodDecisionsCounterVO";
  v8[11] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 96)];
  v7[12] = @"badDecisionsCounterVO";
  v8[12] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 100)];
  v7[13] = @"goodDecisionsCounterVIBE";
  v8[13] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 104)];
  v7[14] = @"badDecisionsCounterVIBE";
  v8[14] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 108)];
  v7[15] = @"invalidDecisionsCounterVIBE";
  v8[15] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 112)];
  v7[16] = @"invalidDecisionsCounterVO";
  v8[16] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 112)];
  v7[17] = @"txber";
  v8[17] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 152)];
  v7[18] = @"rxRetry";
  v8[18] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 156)];
  v7[19] = @"weightedAveragePhyrateRx";
  v8[19] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 136)];
  v7[20] = @"weightedAveragePhyrateTx";
  v8[20] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 140)];
  v7[21] = @"weightedAverageRssi";
  v8[21] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 144)];
  v7[22] = @"weightedAverageSnr";
  v8[22] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 148)];
  v7[23] = @"devicePointOfInterest";
  v8[23] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 160)];
  v7[24] = @"wrmRecommendedRAT";
  v8[24] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 204)];
  v7[25] = @"wifiModelConfidenceLevel";
  v8[25] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 208)];
  v7[26] = @"wifiModelVersion";
  v8[26] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 212)];
  v7[27] = @"mlPredictedWiFiBW";
  v8[27] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 216)];
  v7[28] = @"mlPredictedCellBW";
  v8[28] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 220)];
  v7[29] = @"expectedThroughputVIBE";
  v8[29] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 116)];
  v7[30] = @"expectedThroughputVO";
  v8[30] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 120)];
  v7[31] = @"packetLifetimeVIBE";
  v8[31] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 124)];
  v7[32] = @"pkgLifeTimeVO";
  v8[32] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 128)];
  v7[33] = @"pktLossRateVO";
  v8[33] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 132)];
  v7[34] = @"cellRsrp";
  v8[34] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 164)];
  v7[35] = @"cellSinr";
  v8[35] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 168)];
  v7[36] = @"lqmScorecellular";
  v8[36] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 172)];
  v7[37] = @"ratType";
  v2 = *(a1 + 32);
  v3 = *(v2 + 184);
  if (!v3)
  {
    v3 = @"INVALID_RAT";
  }

  v8[37] = v3;
  v7[38] = @"rrcState";
  v8[38] = [NSNumber numberWithUnsignedInt:*(v2 + 176)];
  v7[39] = @"cellLteRSRQ";
  v8[39] = [NSNumber numberWithInt:*(*(a1 + 32) + 304)];
  v7[40] = @"cellARFCN";
  v8[40] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 308)];
  v7[41] = @"cellBandInfo";
  v8[41] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 316)];
  v7[42] = @"cellChannelBW";
  v8[42] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 320)];
  v7[43] = @"cellEstimatedBW";
  v8[43] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 312)];
  v7[44] = @"cellModelConfidenceLevel";
  v8[44] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 364)];
  v7[45] = @"cellNrRSRP";
  v8[45] = [NSNumber numberWithInt:*(*(a1 + 32) + 292)];
  v7[46] = @"cellNrRSRQ";
  v8[46] = [NSNumber numberWithInt:*(*(a1 + 32) + 296)];
  v7[47] = @"cellNrSNR";
  v8[47] = [NSNumber numberWithInt:*(*(a1 + 32) + 300)];
  v7[48] = @"btWiFiCoexState";
  v8[48] = [NSNumber numberWithInt:*(*(a1 + 32) + 240)];
  v7[49] = @"wifinumberOfSpatialStreams";
  v8[49] = [NSNumber numberWithInt:*(*(a1 + 32) + 256)];
  v7[50] = @"wifiguardinterval";
  v8[50] = [NSNumber numberWithInt:*(*(a1 + 32) + 260)];
  v7[51] = @"wifimcsindex";
  v8[51] = [NSNumber numberWithInt:*(*(a1 + 32) + 264)];
  v7[52] = @"wifilowDataMode";
  v8[52] = [NSNumber numberWithInt:*(*(a1 + 32) + 248)];
  v7[53] = @"wifichannel";
  v8[53] = [NSNumber numberWithInt:*(*(a1 + 32) + 252)];
  v7[54] = @"isWfiCaptive";
  v8[54] = [NSNumber numberWithInt:*(*(a1 + 32) + 244)];
  v7[55] = @"maxDLCAConfigured";
  v8[55] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 336)];
  v7[56] = @"totalConfiguredBw";
  v8[56] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 340)];
  v7[57] = @"nrConfiguredBw";
  v8[57] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 344)];
  v7[58] = @"nrTotalScheduledMimoLayers";
  v8[58] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 348)];
  v7[59] = @"totalConfiguredMimoLayers";
  v8[59] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 352)];
  v7[60] = @"lteMaxScheduledMimoLayersInACell";
  v8[60] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 356)];
  v7[61] = @"nrMaxDlModulation";
  v8[61] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 360)];
  v7[62] = @"lqmScoreBT";
  v8[62] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 192)];
  v7[63] = @"rxRetransmissionRate";
  v8[63] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 196)];
  v7[64] = @"txRetransmissionRate";
  v8[64] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 200)];
  v7[65] = @"actualHighBandwidth";
  v8[65] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 20)];
  v7[66] = @"actualLowBandwidth";
  v8[66] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 24)];
  v7[67] = @"pActualLowBandwidth";
  v8[67] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 28)];
  v7[68] = @"maxOfActualLowBandwidth";
  v8[68] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 32)];
  v7[69] = @"deviation";
  v8[69] = [NSNumber numberWithInt:*(*(a1 + 32) + 36)];
  v7[70] = @"estimatedHighBandwidth";
  v8[70] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 40)];
  v7[71] = @"estimatedLowBandwidth";
  v8[71] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 44)];
  v7[72] = @"movingAvgHighBandwidth";
  v8[72] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 48)];
  v7[73] = @"cmDataSentCount";
  v8[73] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 56)];
  v7[74] = @"cmDataSentDuration";
  v8[74] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 60)];
  v7[75] = @"wifChannelBW";
  v8[75] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 228)];
  v7[76] = @"wifChannelType";
  v8[76] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 232)];
  v7[77] = @"wifiCapability";
  v8[77] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 236)];
  v7[78] = @"tcpRTTAvg";
  v8[78] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 268)];
  v7[79] = @"tcpRTTvar";
  v8[79] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 276)];
  v7[80] = @"ratioDupeBytes";
  v8[80] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 280)];
  v7[81] = @"ratioOOBBytes";
  v8[81] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 284)];
  v7[82] = @"cellNsaEnabled";
  v8[82] = [NSNumber numberWithBool:*(*(a1 + 32) + 288)];
  v7[83] = @"isFR1";
  v4 = *(a1 + 32);
  if (*(v4 + 288) == 1)
  {
    v5 = [NSNumber numberWithBool:*(v4 + 289)];
    v4 = *(a1 + 32);
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  v8[83] = v5;
  v7[84] = @"movingAvgLowBandwidth";
  v8[84] = [NSNumber numberWithUnsignedInt:*(v4 + 52)];
  v7[85] = @"wifiRssi";
  v8[85] = [NSNumber numberWithLongLong:*(*(a1 + 32) + 64)];
  v7[86] = @"phyRate";
  v8[86] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 72)];
  v7[87] = @"cca";
  v8[87] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 76)];
  v7[88] = @"qbssLoad";
  v8[88] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 80)];
  v7[89] = @"videoStreamingStallTime";
  v8[89] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 372)];
  return [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:90];
}

NSDictionary *sub_10015BC74(uint64_t a1)
{
  v5[0] = @"cellDataLQM";
  v6[0] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 8)];
  v5[1] = @"cellDlBw";
  v6[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 12)];
  v5[2] = @"cellEstimatedBw";
  v6[2] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 16)];
  v5[3] = @"cellEstimatedLoad";
  v6[3] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 20)];
  v5[4] = @"cellLteEstimatedThroughput";
  v6[4] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 24)];
  v5[5] = @"cellLteRSRP";
  v6[5] = [NSNumber numberWithInt:*(*(a1 + 32) + 28)];
  v5[6] = @"cellLteRSRQ";
  v6[6] = [NSNumber numberWithInt:*(*(a1 + 32) + 32)];
  v5[7] = @"cellLteSNR";
  v6[7] = [NSNumber numberWithInt:*(*(a1 + 32) + 36)];
  v5[8] = @"cellMaxDlCaNumConfigured";
  v6[8] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 40)];
  v5[9] = @"cellMaxUlCaNumConfigured";
  v6[9] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 44)];
  v5[10] = @"cellNrEstimatedThroughput";
  v6[10] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 48)];
  v5[11] = @"cellNrFR2active";
  v6[11] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 52)];
  v5[12] = @"cellNrRSRP";
  v6[12] = [NSNumber numberWithInt:*(*(a1 + 32) + 56)];
  v5[13] = @"cellNrRSRQ";
  v6[13] = [NSNumber numberWithInt:*(*(a1 + 32) + 60)];
  v5[14] = @"cellNrSNR";
  v6[14] = [NSNumber numberWithInt:*(*(a1 + 32) + 64)];
  v5[15] = @"cellNsaEnabled";
  v6[15] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 68)];
  v5[16] = @"cellRatType";
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (!v3)
  {
    v3 = @"INVALID_RAT";
  }

  v6[16] = v3;
  v5[17] = @"cellUlBw";
  v6[17] = [NSNumber numberWithUnsignedInt:*(v2 + 84)];
  v5[18] = @"recommendedlink";
  v6[18] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 88)];
  v5[19] = @"wifPoi";
  v6[19] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 92)];
  v5[20] = @"wifiCca";
  v6[20] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 96)];
  v5[21] = @"wifiEstThoughtput";
  v6[21] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 100)];
  v5[22] = @"wifiQbssLoad";
  v6[22] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 104)];
  v5[23] = @"wifiRssi";
  v6[23] = [NSNumber numberWithInt:*(*(a1 + 32) + 108)];
  v5[24] = @"wifiRxRetry";
  v6[24] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 112)];
  v5[25] = @"wifiSnr";
  v6[25] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 116)];
  v5[26] = @"wifiStationCount";
  v6[26] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 120)];
  v5[27] = @"wifiTxPER";
  v6[27] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 124)];
  v5[28] = @"wifiWghtAVGRXPHYRATE";
  v6[28] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 128)];
  v5[29] = @"wifiWghtAVGSNR";
  v6[29] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 132)];
  v5[30] = @"wifiWghtAVGTXPHYRATE";
  v6[30] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 136)];
  v5[31] = @"wifiWgtAVGRSSI";
  v6[31] = [NSNumber numberWithInt:*(*(a1 + 32) + 140)];
  v5[32] = @"wifiWifiEstThoughtputConfidence";
  v6[32] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 144)];
  v5[33] = @"fr2DBRecommendation";
  v6[33] = [NSNumber numberWithBool:*(*(a1 + 32) + 149)];
  v5[34] = @"locationDBFR1Count";
  v6[34] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 152)];
  v5[35] = @"locationDBFR2Count";
  v6[35] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 156)];
  v5[36] = @"highThermalTemperatureNotification";
  v6[36] = [NSNumber numberWithBool:*(*(a1 + 32) + 160)];
  v5[37] = @"wiFiPredictedThroughput";
  v6[37] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 164)];
  v5[38] = @"wRMRecommendationReason";
  v6[38] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 168)];
  v5[39] = @"wifiRecommendationScore";
  v6[39] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 172)];
  v5[40] = @"wifiRecommendationConfidence";
  v6[40] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 176)];
  v5[41] = @"cellularRecommendationScore";
  v6[41] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 180)];
  v5[42] = @"cellularRecommendationConfidence";
  v6[42] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 184)];
  v5[43] = @"radioCoverage";
  v6[43] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 188)];
  v5[44] = @"radioFrequency";
  v6[44] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 192)];
  v5[45] = @"triggerReason";
  v6[45] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 196)];
  v5[46] = @"applicationCategory";
  v6[46] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 200)];
  v5[47] = @"cellTotalMimoLayers";
  v6[47] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 204)];
  v5[48] = @"totalNrBandwidth";
  v6[48] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 208)];
  v5[49] = @"cellRrcState";
  v6[49] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 80)];
  return [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:50];
}

NSDictionary *sub_10015C478(uint64_t a1)
{
  v3[0] = @"recommendedDataSim";
  v4[0] = [NSNumber numberWithInteger:*(a1 + 40)];
  v3[1] = @"dataLQM";
  v4[1] = [*(a1 + 32) convetDataLqmToString:*(a1 + 48)];
  v3[2] = @"dataCongested";
  v4[2] = [NSNumber numberWithBool:*(a1 + 52)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

void sub_10015C6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose((v8 - 80), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10015C6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2 && !a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10015C784(id a1, int a2)
{
  [WCM_Logging logLevel:16 message:@"Locations of interest cleared."];

  +[WRM_AWDService clearConnectivityContextBiome];
}

Class sub_10015C84C(uint64_t a1)
{
  sub_10015C8A4();
  result = objc_getClass("GEOCellConnectionQuality");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015FC68();
  }

  qword_1002B8220 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void sub_10015C8A4()
{
  v0[0] = 0;
  if (!qword_1002B8228)
  {
    v0[1] = _NSConcreteStackBlock;
    v0[2] = 3221225472;
    v0[3] = sub_10015C998;
    v0[4] = &unk_10023DD00;
    v0[5] = v0;
    v1 = off_100242660;
    v2 = 0;
    qword_1002B8228 = _sl_dlopen();
  }

  if (!qword_1002B8228)
  {
    sub_10015FCD0(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_10015C998(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002B8228 = result;
  return result;
}

Class sub_10015CA0C(uint64_t a1)
{
  sub_10015C8A4();
  result = objc_getClass("GEOLatLng");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015FD38();
  }

  qword_1002B8230 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class sub_10015CA64(uint64_t a1)
{
  sub_10015C8A4();
  result = objc_getClass("GEOLocation");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015FDA0();
  }

  qword_1002B8238 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class sub_10015CABC(uint64_t a1)
{
  sub_10015C8A4();
  result = objc_getClass("GEOAPNetworkSelectionHarvestReporter");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015FE08();
  }

  qword_1002B8240 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class sub_10015CB14(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1002B8250)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10015CC40;
    v3[4] = &unk_10023DD00;
    v3[5] = v3;
    v4 = off_100242678;
    v5 = 0;
    qword_1002B8250 = _sl_dlopen();
  }

  if (!qword_1002B8250)
  {
    sub_10015FED8(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PPUtils");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015FE70();
  }

  qword_1002B8248 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t sub_10015CC40(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002B8250 = result;
  return result;
}

Class sub_10015CCB4(uint64_t a1)
{
  sub_10015CD0C();
  result = objc_getClass("BMDeviceConnectivityContext");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015FF40();
  }

  qword_1002B8258 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t sub_10015CD0C()
{
  v2[0] = 0;
  if (!qword_1002B8260)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_10015CE04;
    v2[4] = &unk_10023DD00;
    v2[5] = v2;
    v3 = off_100242690;
    v4 = 0;
    qword_1002B8260 = _sl_dlopen();
  }

  v0 = qword_1002B8260;
  if (!qword_1002B8260)
  {
    sub_10015FFA8(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t sub_10015CE04(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002B8260 = result;
  return result;
}

void *sub_10015CE78(uint64_t a1)
{
  v2 = sub_10015CD0C();
  result = dlsym(v2, "__BMRootLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1002B8268 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_10015CEC8(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1002B8278)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10015CFF4;
    v3[4] = &unk_10023DD00;
    v3[5] = v3;
    v4 = off_1002426A8;
    v5 = 0;
    qword_1002B8278 = _sl_dlopen();
  }

  if (!qword_1002B8278)
  {
    sub_100160078(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("RTRoutineManager");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_100160010();
  }

  qword_1002B8270 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t sub_10015CFF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002B8278 = result;
  return result;
}

void sub_10015D1F0(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic(a1, newValue, newValue, 8);
  }
}

id *sub_10015D208(id *result)
{
  if (result)
  {
    return [result[1] removeAllObjects];
  }

  return result;
}

void *sub_10015D220(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[1];
    if (!v4)
    {
      v4 = objc_alloc_init(NSMutableArray);
      v3[1] = v4;
    }

    return [v4 addObject:a2];
  }

  return result;
}

id *sub_10015D28C(id *result)
{
  if (result)
  {
    return [result[1] count];
  }

  return result;
}

id *sub_10015D2A4(id *result, uint64_t a2)
{
  if (result)
  {
    return [result[1] objectAtIndex:a2];
  }

  return result;
}

void *sub_10015D2C0(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = [result[1] count];
    if (result)
    {
      if (a2)
      {
        [*(a2 + 8) removeAllObjects];
      }

      result = [v3[1] count];
      if (result)
      {
        v4 = result;
        for (i = 0; i != v4; i = (i + 1))
        {
          result = sub_10015D220(a2, [v3[1] objectAtIndex:i]);
        }
      }
    }
  }

  return result;
}

void *sub_10015D360(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    v9 = *(a2 + 8);
    result = sub_100018934(result, a2, a3, a4, a5, a6, a7, a8, 0, 0, 0, 0, 0, 0, 0, 0, v29, v31);
    if (result)
    {
      v10 = result;
      v11 = *v23;
      do
      {
        v12 = 0;
        do
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = sub_10015D220(v8, *(v22 + 8 * v12));
          v12 = (v12 + 1);
        }

        while (v10 != v12);
        result = sub_100018934(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v30, v32);
        v10 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t sub_10015D438(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_10015D44C(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = objc_alloc_init(DYNAMICRATSELECTIONDynamicRatSelectionMetrics);
  sub_10015D220(a1, v8);

  *a2 = 0;
  a2[1] = 0;
  if (PBReaderPlaceMark() && sub_100027CAC(v8, a3))
  {
    PBReaderRecallMark();
    return 1;
  }

  else
  {
    result = 0;
    *a4 = 0;
  }

  return result;
}

void sub_10015D558(void *a1, char *a2, uint64_t a3)
{
  if (a1)
  {
    sub_100027964(a1, a2, a3, 8);
  }
}

void sub_10015D56C(void *a1, char *a2, uint64_t a3)
{
  if (a1)
  {
    sub_100027964(a1, a2, a3, 16);
  }
}

id sub_10015D580(id result)
{
  if (result)
  {
    return sub_10002795C(result, 8);
  }

  return result;
}

void *sub_10015D594(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[1];
    if (!v4)
    {
      v4 = objc_alloc_init(NSMutableArray);
      v3[1] = v4;
    }

    return [v4 addObject:a2];
  }

  return result;
}

id sub_10015D600(id result)
{
  if (result)
  {
    return sub_100027954(result, 8);
  }

  return result;
}

id sub_10015D614(id result, uint64_t a2)
{
  if (result)
  {
    return sub_100027948(result, a2, 8);
  }

  return result;
}

id sub_10015D628(id result)
{
  if (result)
  {
    return sub_10002795C(result, 16);
  }

  return result;
}

void *sub_10015D63C(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[2];
    if (!v4)
    {
      v4 = objc_alloc_init(NSMutableArray);
      v3[2] = v4;
    }

    return [v4 addObject:a2];
  }

  return result;
}

id sub_10015D6A8(id result)
{
  if (result)
  {
    return sub_100027954(result, 16);
  }

  return result;
}

id sub_10015D6BC(id result, uint64_t a2)
{
  if (result)
  {
    return sub_100027948(result, a2, 16);
  }

  return result;
}

void *sub_10015D6D0(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if ([result[1] count])
    {
      if (a2)
      {
        [*(a2 + 8) removeAllObjects];
      }

      v4 = [v3[1] count];
      if (v4)
      {
        v5 = v4;
        for (i = 0; i != v5; ++i)
        {
          sub_10015D594(a2, [v3[1] objectAtIndex:i]);
        }
      }
    }

    result = [v3[2] count];
    if (result)
    {
      if (a2)
      {
        [*(a2 + 16) removeAllObjects];
      }

      result = [v3[2] count];
      if (result)
      {
        v7 = result;
        for (j = 0; j != v7; j = (j + 1))
        {
          result = sub_10015D63C(a2, [v3[2] objectAtIndex:j]);
        }
      }
    }
  }

  return result;
}

void *sub_10015D7D4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v9 = result;
    v10 = *(a2 + 8);
    v11 = sub_10002798C(result, a2, a3, a4, a5, a6, a7, a8);
    if (v11)
    {
      v19 = v11;
      v20 = MEMORY[0];
      do
      {
        v21 = 0;
        do
        {
          if (MEMORY[0] != v20)
          {
            objc_enumerationMutation(v10);
          }

          v22 = sub_10015D594(v9, *(8 * v21));
          v21 = v21 + 1;
        }

        while (v19 != v21);
        v11 = sub_10002798C(v22, v23, v24, v25, v26, v27, v28, v29);
        v19 = v11;
      }

      while (v11);
    }

    v30 = *(a2 + 16);
    result = sub_1000279AC(v11, v12, v13, v14, v15, v16, v17, v18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v58, v60);
    if (result)
    {
      v31 = result;
      v32 = *v44;
      do
      {
        v33 = 0;
        do
        {
          if (*v44 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = sub_10015D63C(v9, *(v43 + 8 * v33));
          v33 = (v33 + 1);
        }

        while (v31 != v33);
        result = sub_1000279AC(v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v59, v61);
        v31 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t sub_10015D928(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_10015D93C(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_10015D950()
{
  sub_100027978();
  v4 = objc_alloc_init(CellPerformanceMetrics);
  sub_10015D63C(v3, v4);

  *v1 = 0;
  v1[1] = 0;
  sub_10002796C();
  if (PBReaderPlaceMark() && sub_1000290D8(v4, v2))
  {
    sub_10002796C();
    PBReaderRecallMark();
    return 1;
  }

  else
  {
    result = 0;
    *v0 = 0;
  }

  return result;
}

uint64_t sub_10015D9D8()
{
  sub_100027978();
  v4 = objc_alloc_init(CellPerformanceMetrics);
  sub_10015D594(v3, v4);

  *v1 = 0;
  v1[1] = 0;
  sub_10002796C();
  if (PBReaderPlaceMark() && sub_1000290D8(v4, v2))
  {
    sub_10002796C();
    PBReaderRecallMark();
    return 1;
  }

  else
  {
    result = 0;
    *v0 = 0;
  }

  return result;
}

uint64_t sub_10015DA60(uint64_t result)
{
  if (result)
  {
    if ((*(result + 44) & 0x40) != 0)
    {
      return *(result + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10015DA8C(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 44) |= 0x40u;
    *(result + 32) = a2;
  }

  return result;
}

uint64_t sub_10015DAB4(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 64;
    }

    else
    {
      v2 = 0;
    }

    *(result + 44) = *(result + 44) & 0xFFBF | v2;
  }

  return result;
}

uint64_t sub_10015DAE0(uint64_t result)
{
  if (result)
  {
    return (*(result + 44) >> 6) & 1;
  }

  return result;
}

__CFString *sub_10015DAF8(__CFString *result, uint64_t a2)
{
  if (result)
  {
    if (a2 >= 4)
    {
      return [NSString stringWithFormat:@"(unknown: %i)", a2];
    }

    else
    {
      return off_10023DAC0[a2];
    }
  }

  return result;
}

uint64_t sub_10015DB48(uint64_t result, void *a2)
{
  if (result)
  {
    if ([a2 isEqualToString:@"DYNAMIC_RAT_SELECTION_RAT_TYPE_UNKNOWN"])
    {
      return 0;
    }

    else if ([a2 isEqualToString:@"DYNAMIC_RAT_SELECTION_RAT_TYPE_LTE"])
    {
      return 1;
    }

    else if ([a2 isEqualToString:@"DYNAMIC_RAT_SELECTION_RAT_TYPE_NR_SA"])
    {
      return 2;
    }

    else if ([a2 isEqualToString:@"DYNAMIC_RAT_SELECTION_RAT_TYPE_NR_NSA"])
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10015DBE0(uint64_t result)
{
  if (result)
  {
    if ((*(result + 44) & 2) != 0)
    {
      return *(result + 12);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10015DC0C(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 44) |= 2u;
    *(result + 12) = a2;
  }

  return result;
}

uint64_t sub_10015DC34(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *(result + 44) = *(result + 44) & 0xFFFD | v2;
  }

  return result;
}

uint64_t sub_10015DC60(uint64_t result)
{
  if (result)
  {
    return (*(result + 44) >> 1) & 1;
  }

  return result;
}

__CFString *sub_10015DC78(__CFString *result, uint64_t a2)
{
  if (result)
  {
    if (a2 >= 3)
    {
      return [NSString stringWithFormat:@"(unknown: %i)", a2];
    }

    else
    {
      return off_10023DAE0[a2];
    }
  }

  return result;
}

uint64_t sub_10015DCC8(uint64_t result, void *a2)
{
  if (result)
  {
    if ([a2 isEqualToString:@"DYNAMIC_RAT_SELECTION_BB_CHIPSET_TYPE_UNKNOWN"])
    {
      return 0;
    }

    else if ([a2 isEqualToString:@"DYNAMIC_RAT_SELECTION_BB_CHIPSET_TYPE_MAV21_22"])
    {
      return 1;
    }

    else if ([a2 isEqualToString:@"DYNAMIC_RAT_SELECTION_BB_CHIPSET_TYPE_MAV30"])
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10015DD44(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 44) |= 0x10u;
    *(result + 24) = a2;
  }

  return result;
}

uint64_t sub_10015DD6C(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 16;
    }

    else
    {
      v2 = 0;
    }

    *(result + 44) = *(result + 44) & 0xFFEF | v2;
  }

  return result;
}

uint64_t sub_10015DD98(uint64_t result)
{
  if (result)
  {
    return (*(result + 44) >> 4) & 1;
  }

  return result;
}

uint64_t sub_10015DDB0(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 44) |= 0x20u;
    *(result + 28) = a2;
  }

  return result;
}

uint64_t sub_10015DDD8(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 32;
    }

    else
    {
      v2 = 0;
    }

    *(result + 44) = *(result + 44) & 0xFFDF | v2;
  }

  return result;
}

uint64_t sub_10015DE04(uint64_t result)
{
  if (result)
  {
    return (*(result + 44) >> 5) & 1;
  }

  return result;
}

uint64_t sub_10015DE1C(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 44) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_10015DE44(uint64_t result, __int16 a2)
{
  if (result)
  {
    *(result + 44) = *(result + 44) & 0xFFFE | a2;
  }

  return result;
}

uint64_t sub_10015DE64(uint64_t result)
{
  if (result)
  {
    return *(result + 44) & 1;
  }

  return result;
}

uint64_t sub_10015DE7C(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 44) |= 8u;
    *(result + 20) = a2;
  }

  return result;
}

uint64_t sub_10015DEA4(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 8;
    }

    else
    {
      v2 = 0;
    }

    *(result + 44) = *(result + 44) & 0xFFF7 | v2;
  }

  return result;
}

uint64_t sub_10015DED0(uint64_t result)
{
  if (result)
  {
    return (*(result + 44) >> 3) & 1;
  }

  return result;
}

uint64_t sub_10015DEE8(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 44) |= 0x100u;
    *(result + 40) = a2;
  }

  return result;
}

uint64_t sub_10015DF10(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 256;
    }

    else
    {
      v2 = 0;
    }

    *(result + 44) = *(result + 44) & 0xFEFF | v2;
  }

  return result;
}

uint64_t sub_10015DF3C(uint64_t result)
{
  if (result)
  {
    return HIBYTE(*(result + 44)) & 1;
  }

  return result;
}

uint64_t sub_10015DF54(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 44) |= 0x80u;
    *(result + 36) = a2;
  }

  return result;
}

uint64_t sub_10015DF7C(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 128;
    }

    else
    {
      v2 = 0;
    }

    *(result + 44) = *(result + 44) & 0xFF7F | v2;
  }

  return result;
}

uint64_t sub_10015DFA8(uint64_t result)
{
  if (result)
  {
    return (*(result + 44) >> 7) & 1;
  }

  return result;
}

uint64_t sub_10015DFC0(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 44) |= 4u;
    *(result + 16) = a2;
  }

  return result;
}

uint64_t sub_10015DFE8(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 4;
    }

    else
    {
      v2 = 0;
    }

    *(result + 44) = *(result + 44) & 0xFFFB | v2;
  }

  return result;
}

uint64_t sub_10015E014(uint64_t result)
{
  if (result)
  {
    return (*(result + 44) >> 2) & 1;
  }

  return result;
}

uint64_t sub_10015E02C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = &selRef_setMGnssVictimFreq_KHz_;
    v3 = *(result + 44);
    if ((v3 & 0x40) != 0)
    {
      result = sub_100028D44(result, a2, &selRef_setMGnssVictimFreq_KHz_);
      *(a2 + v5) = v4 | 0x40;
      v3 = *(result + *(v2 + 618));
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 0x10) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_100028D44(result, a2, v2);
    *(a2 + v7) = v6 | 2;
    v3 = *(result + *(v2 + 618));
    if ((v3 & 0x10) == 0)
    {
LABEL_5:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_15:
    result = sub_100028D44(result, a2, v2);
    *(a2 + v9) = v8 | 0x10;
    v3 = *(result + *(v2 + 618));
    if ((v3 & 0x20) == 0)
    {
LABEL_6:
      if ((v3 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }

LABEL_16:
    result = sub_100028D44(result, a2, v2);
    *(a2 + v11) = v10 | 0x20;
    v3 = *(result + *(v2 + 618));
    if ((v3 & 1) == 0)
    {
LABEL_7:
      if ((v3 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    result = sub_100028D44(result, a2, v2);
    *(a2 + v13) = v12 | 1;
    v3 = *(result + *(v2 + 618));
    if ((v3 & 8) == 0)
    {
LABEL_8:
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_18:
    result = sub_100028D44(result, a2, v2);
    *(a2 + v15) = v14 | 8;
    v3 = *(result + *(v2 + 618));
    if ((v3 & 0x100) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_19:
    *(a2 + 40) = *(result + 40);
    *(a2 + *(v2 + 618)) |= 0x100u;
    v3 = *(result + *(v2 + 618));
    if ((v3 & 0x80) == 0)
    {
LABEL_10:
      if ((v3 & 4) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

LABEL_20:
    result = sub_100028D44(result, a2, v2);
    *(a2 + v17) = v16 | 0x80;
    if ((*(result + *(v2 + 618)) & 4) == 0)
    {
      return result;
    }

LABEL_11:
    *(a2 + 16) = *(result + 16);
    *(a2 + *(v2 + 618)) |= 4u;
  }

  return result;
}

uint64_t sub_10015E204(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = &selRef_setMGnssVictimFreq_KHz_;
    v3 = *(a2 + 44);
    if ((v3 & 0x40) != 0)
    {
      result = sub_100028D30(result, a2, &selRef_setMGnssVictimFreq_KHz_);
      *(result + v5) = v4 | 0x40;
      v3 = *(a2 + *(v2 + 618));
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 0x10) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_100028D30(result, a2, v2);
    *(result + v7) = v6 | 2;
    v3 = *(a2 + *(v2 + 618));
    if ((v3 & 0x10) == 0)
    {
LABEL_5:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_15:
    result = sub_100028D30(result, a2, v2);
    *(result + v9) = v8 | 0x10;
    v3 = *(a2 + *(v2 + 618));
    if ((v3 & 0x20) == 0)
    {
LABEL_6:
      if ((v3 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }

LABEL_16:
    result = sub_100028D30(result, a2, v2);
    *(result + v11) = v10 | 0x20;
    v3 = *(a2 + *(v2 + 618));
    if ((v3 & 1) == 0)
    {
LABEL_7:
      if ((v3 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    result = sub_100028D30(result, a2, v2);
    *(result + v13) = v12 | 1;
    v3 = *(a2 + *(v2 + 618));
    if ((v3 & 8) == 0)
    {
LABEL_8:
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_18:
    result = sub_100028D30(result, a2, v2);
    *(result + v15) = v14 | 8;
    v3 = *(a2 + *(v2 + 618));
    if ((v3 & 0x100) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_19:
    *(result + 40) = *(a2 + 40);
    *(result + *(v2 + 618)) |= 0x100u;
    v3 = *(a2 + *(v2 + 618));
    if ((v3 & 0x80) == 0)
    {
LABEL_10:
      if ((v3 & 4) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

LABEL_20:
    result = sub_100028D30(result, a2, v2);
    *(result + v17) = v16 | 0x80;
    if ((*(a2 + *(v2 + 618)) & 4) == 0)
    {
      return result;
    }

LABEL_11:
    *(result + 16) = *(a2 + 16);
    *(result + *(v2 + 618)) |= 4u;
  }

  return result;
}

uint64_t sub_10015E3DC(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t sub_10015E3F0(uint64_t result)
{
  if (result)
  {
    return *(result + 28);
  }

  return result;
}

uint64_t sub_10015E404(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_10015E418(uint64_t result)
{
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

uint64_t sub_10015E42C(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 40);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_10015E44C(uint64_t result)
{
  if (result)
  {
    return *(result + 36);
  }

  return result;
}

uint64_t sub_10015E460(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void sub_10015E4D0(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic(a1, newValue, newValue, 16);
  }
}

BOOL sub_10015E4E8(_BOOL8 result)
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

uint64_t sub_10015E504(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 68) |= 2u;
    *(result + 12) = a2;
  }

  return result;
}

uint64_t sub_10015E52C(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *(result + 68) = *(result + 68) & 0xFFFD | v2;
  }

  return result;
}

uint64_t sub_10015E558(uint64_t result)
{
  if (result)
  {
    return (*(result + 68) >> 1) & 1;
  }

  return result;
}

uint64_t sub_10015E570(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 68) |= 0x40u;
    *(result + 40) = a2;
  }

  return result;
}

uint64_t sub_10015E598(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 64;
    }

    else
    {
      v2 = 0;
    }

    *(result + 68) = *(result + 68) & 0xFFBF | v2;
  }

  return result;
}

uint64_t sub_10015E5C4(uint64_t result)
{
  if (result)
  {
    return (*(result + 68) >> 6) & 1;
  }

  return result;
}

uint64_t sub_10015E5DC(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 68) |= 0x80u;
    *(result + 44) = a2;
  }

  return result;
}

uint64_t sub_10015E604(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 128;
    }

    else
    {
      v2 = 0;
    }

    *(result + 68) = *(result + 68) & 0xFF7F | v2;
  }

  return result;
}

uint64_t sub_10015E630(uint64_t result)
{
  if (result)
  {
    return (*(result + 68) >> 7) & 1;
  }

  return result;
}

uint64_t sub_10015E648(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 68) |= 0x100u;
    *(result + 48) = a2;
  }

  return result;
}

uint64_t sub_10015E670(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 256;
    }

    else
    {
      v2 = 0;
    }

    *(result + 68) = *(result + 68) & 0xFEFF | v2;
  }

  return result;
}

uint64_t sub_10015E69C(uint64_t result)
{
  if (result)
  {
    return HIBYTE(*(result + 68)) & 1;
  }

  return result;
}

uint64_t sub_10015E6B4(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 68) |= 0x400u;
    *(result + 56) = a2;
  }

  return result;
}

uint64_t sub_10015E6DC(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 1024;
    }

    else
    {
      v2 = 0;
    }

    *(result + 68) = *(result + 68) & 0xFBFF | v2;
  }

  return result;
}

uint64_t sub_10015E708(uint64_t result)
{
  if (result)
  {
    return (*(result + 68) >> 10) & 1;
  }

  return result;
}

uint64_t sub_10015E720(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 68) |= 0x20u;
    *(result + 36) = a2;
  }

  return result;
}

uint64_t sub_10015E748(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 32;
    }

    else
    {
      v2 = 0;
    }

    *(result + 68) = *(result + 68) & 0xFFDF | v2;
  }

  return result;
}

uint64_t sub_10015E774(uint64_t result)
{
  if (result)
  {
    return (*(result + 68) >> 5) & 1;
  }

  return result;
}

uint64_t sub_10015E78C(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 68) |= 0x1000u;
    *(result + 64) = a2;
  }

  return result;
}

uint64_t sub_10015E7B4(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 4096;
    }

    else
    {
      v2 = 0;
    }

    *(result + 68) = *(result + 68) & 0xEFFF | v2;
  }

  return result;
}

uint64_t sub_10015E7E0(uint64_t result)
{
  if (result)
  {
    return (*(result + 68) >> 12) & 1;
  }

  return result;
}

uint64_t sub_10015E7F8(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 68) |= 4u;
    *(result + 24) = a2;
  }

  return result;
}

uint64_t sub_10015E820(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 4;
    }

    else
    {
      v2 = 0;
    }

    *(result + 68) = *(result + 68) & 0xFFFB | v2;
  }

  return result;
}

uint64_t sub_10015E84C(uint64_t result)
{
  if (result)
  {
    return (*(result + 68) >> 2) & 1;
  }

  return result;
}

uint64_t sub_10015E864(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 68) |= 0x800u;
    *(result + 60) = a2;
  }

  return result;
}

uint64_t sub_10015E88C(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 2048;
    }

    else
    {
      v2 = 0;
    }

    *(result + 68) = *(result + 68) & 0xF7FF | v2;
  }

  return result;
}

uint64_t sub_10015E8B8(uint64_t result)
{
  if (result)
  {
    return (*(result + 68) >> 11) & 1;
  }

  return result;
}

uint64_t sub_10015E8D0(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 68) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_10015E8F8(uint64_t result, __int16 a2)
{
  if (result)
  {
    *(result + 68) = *(result + 68) & 0xFFFE | a2;
  }

  return result;
}

uint64_t sub_10015E918(uint64_t result)
{
  if (result)
  {
    return *(result + 68) & 1;
  }

  return result;
}

uint64_t sub_10015E930(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 68) |= 8u;
    *(result + 28) = a2;
  }

  return result;
}

uint64_t sub_10015E958(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 8;
    }

    else
    {
      v2 = 0;
    }

    *(result + 68) = *(result + 68) & 0xFFF7 | v2;
  }

  return result;
}

uint64_t sub_10015E984(uint64_t result)
{
  if (result)
  {
    return (*(result + 68) >> 3) & 1;
  }

  return result;
}

uint64_t sub_10015E99C(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 68) |= 0x10u;
    *(result + 32) = a2;
  }

  return result;
}

uint64_t sub_10015E9C4(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 16;
    }

    else
    {
      v2 = 0;
    }

    *(result + 68) = *(result + 68) & 0xFFEF | v2;
  }

  return result;
}

uint64_t sub_10015E9F0(uint64_t result)
{
  if (result)
  {
    return (*(result + 68) >> 4) & 1;
  }

  return result;
}

uint64_t sub_10015EA08(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 68) |= 0x200u;
    *(result + 52) = a2;
  }

  return result;
}

uint64_t sub_10015EA30(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 512;
    }

    else
    {
      v2 = 0;
    }

    *(result + 68) = *(result + 68) & 0xFDFF | v2;
  }

  return result;
}

uint64_t sub_10015EA5C(uint64_t result)
{
  if (result)
  {
    return (*(result + 68) >> 9) & 1;
  }

  return result;
}

void sub_10015EA74(uint64_t a1, id self)
{
  if (a1)
  {
    if (self)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        objc_setProperty_nonatomic(self, self, v3, 16);
      }
    }

    v4 = &selRef_setMGnssVictimFreq_KHz_;
    v5 = *(a1 + 68);
    if ((v5 & 2) != 0)
    {
      sub_10002A7F8(&selRef_setMGnssVictimFreq_KHz_);
      sub_10002A80C(v6);
      if ((v5 & 0x40) == 0)
      {
LABEL_7:
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_22;
      }
    }

    else if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    sub_10002A7F8(v4);
    sub_10002A80C(v7);
    if ((v5 & 0x80) == 0)
    {
LABEL_8:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }

LABEL_22:
    sub_10002A7F8(v4);
    sub_10002A80C(v8);
    if ((v5 & 0x100) == 0)
    {
LABEL_9:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_24;
    }

LABEL_23:
    sub_10002A7F8(v4);
    sub_10002A80C(v9);
    if ((v5 & 0x400) == 0)
    {
LABEL_10:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }

LABEL_24:
    sub_10002A7F8(v4);
    sub_10002A80C(v10);
    if ((v5 & 0x20) == 0)
    {
LABEL_11:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }

LABEL_25:
    sub_10002A7F8(v4);
    sub_10002A80C(v11);
    if ((v5 & 0x1000) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }

LABEL_26:
    sub_10002A7F8(v4);
    sub_10002A80C(v12);
    if ((v5 & 4) == 0)
    {
LABEL_13:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }

LABEL_27:
    sub_10002A7F8(v4);
    sub_10002A80C(v13);
    if ((v5 & 0x800) == 0)
    {
LABEL_14:
      if ((v5 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }

LABEL_28:
    sub_10002A7F8(v4);
    sub_10002A80C(v14);
    if ((v5 & 1) == 0)
    {
LABEL_15:
      if ((v5 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }

LABEL_29:
    sub_10002A7F8(v4);
    sub_10002A80C(v15);
    if ((v5 & 8) == 0)
    {
LABEL_16:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }

LABEL_30:
    sub_10002A7F8(v4);
    sub_10002A80C(v16);
    if ((v5 & 0x10) == 0)
    {
LABEL_17:
      if ((v5 & 0x200) == 0)
      {
        return;
      }

      goto LABEL_18;
    }

LABEL_31:
    sub_10002A7F8(v4);
    sub_10002A80C(v17);
    if ((v18 & 0x200) == 0)
    {
      return;
    }

LABEL_18:
    sub_10002A81C(v4);
  }
}

void sub_10015EC2C(id self, uint64_t a2)
{
  if (self)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      objc_setProperty_nonatomic(self, a2, v3, 16);
    }

    v4 = &selRef_setMGnssVictimFreq_KHz_;
    v5 = *(a2 + 68);
    if ((v5 & 2) != 0)
    {
      sub_10002A7F8(&selRef_setMGnssVictimFreq_KHz_);
      sub_10002A80C(v6);
      if ((v5 & 0x40) == 0)
      {
LABEL_6:
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_21;
      }
    }

    else if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    sub_10002A7F8(v4);
    sub_10002A80C(v7);
    if ((v5 & 0x80) == 0)
    {
LABEL_7:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

LABEL_21:
    sub_10002A7F8(v4);
    sub_10002A80C(v8);
    if ((v5 & 0x100) == 0)
    {
LABEL_8:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }

LABEL_22:
    sub_10002A7F8(v4);
    sub_10002A80C(v9);
    if ((v5 & 0x400) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_24;
    }

LABEL_23:
    sub_10002A7F8(v4);
    sub_10002A80C(v10);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }

LABEL_24:
    sub_10002A7F8(v4);
    sub_10002A80C(v11);
    if ((v5 & 0x1000) == 0)
    {
LABEL_11:
      if ((v5 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }

LABEL_25:
    sub_10002A7F8(v4);
    sub_10002A80C(v12);
    if ((v5 & 4) == 0)
    {
LABEL_12:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }

LABEL_26:
    sub_10002A7F8(v4);
    sub_10002A80C(v13);
    if ((v5 & 0x800) == 0)
    {
LABEL_13:
      if ((v5 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }

LABEL_27:
    sub_10002A7F8(v4);
    sub_10002A80C(v14);
    if ((v5 & 1) == 0)
    {
LABEL_14:
      if ((v5 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }

LABEL_28:
    sub_10002A7F8(v4);
    sub_10002A80C(v15);
    if ((v5 & 8) == 0)
    {
LABEL_15:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }

LABEL_29:
    sub_10002A7F8(v4);
    sub_10002A80C(v16);
    if ((v5 & 0x10) == 0)
    {
LABEL_16:
      if ((v5 & 0x200) == 0)
      {
        return;
      }

      goto LABEL_17;
    }

LABEL_30:
    sub_10002A7F8(v4);
    sub_10002A80C(v17);
    if ((v18 & 0x200) == 0)
    {
      return;
    }

LABEL_17:
    sub_10002A81C(v4);
  }
}

uint64_t sub_10015EDE0(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_10015EDF4(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t sub_10015EE08(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t sub_10015EE1C(uint64_t result)
{
  if (result)
  {
    return *(result + 44);
  }

  return result;
}

uint64_t sub_10015EE30(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t sub_10015EE44(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t sub_10015EE58(uint64_t result)
{
  if (result)
  {
    return *(result + 36);
  }

  return result;
}

uint64_t sub_10015EE6C(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t sub_10015EE80(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t sub_10015EE94(uint64_t result)
{
  if (result)
  {
    return *(result + 60);
  }

  return result;
}

uint64_t sub_10015EEA8(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_10015EEBC(uint64_t result)
{
  if (result)
  {
    return *(result + 28);
  }

  return result;
}

uint64_t sub_10015EED0(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t sub_10015EEE4(uint64_t result)
{
  if (result)
  {
    return *(result + 52);
  }

  return result;
}

void sub_10015F6B4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getMLFeatureValueClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CellularThroughputPrediction.m" lineNumber:23 description:{@"Unable to find class %s", "MLFeatureValue"}];

  __break(1u);
}

void sub_10015F730(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *CoreMLLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CellularThroughputPrediction.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void sub_10015F7B0()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getMLModelClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CellularThroughputPrediction.m" lineNumber:20 description:{@"Unable to find class %s", "MLModel"}];

  __break(1u);
}

void sub_10015F82C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getMLPredictionOptionsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CellularThroughputPrediction.m" lineNumber:26 description:{@"Unable to find class %s", "MLPredictionOptions"}];

  __break(1u);
}

void sub_10015F8A8()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getMLArrayBatchProviderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CellularThroughputPrediction.m" lineNumber:17 description:{@"Unable to find class %s", "MLArrayBatchProvider"}];

  __break(1u);
}

void sub_10015F924(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@", &v2, 0xCu);
}

void sub_100160078(void *a1)
{
  [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"WRM_AWDService.m", 35, @"%s", *a1];
  __break(1u);
  ADClientAddValueForScalarKey();
}

uint64_t qmi::Client::setHandler()
{
  return qmi::Client::setHandler();
}

{
  return qmi::Client::setHandler();
}

{
  return qmi::Client::setHandler();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}