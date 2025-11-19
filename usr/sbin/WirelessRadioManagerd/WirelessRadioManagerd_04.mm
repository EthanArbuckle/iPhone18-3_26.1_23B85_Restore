id sub_1000F986C(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: WIFI Assoc Protection setting for all bands"];
  if ([&off_1002869C0 count])
  {
    v1 = 0;
    v2 = 0;
    do
    {
      v1 |= 1 << v2;
      v3 = v2 + 1;
      v4 = [&off_1002869C0 count];
      v2 = v3;
    }

    while (v4 > v3);
    v53 = v1;
  }

  else
  {
    v53 = 0;
  }

  if ([&off_1002869D8 count])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v6 |= 1 << v5;
      v7 = v5 + 1;
      v8 = [&off_1002869D8 count];
      v5 = v7;
    }

    while (v8 > v7);
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  if ([&off_1002869F0 count])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v11 |= 1 << v10;
      v12 = v10 + 1;
      v13 = [&off_1002869F0 count];
      v10 = v12;
    }

    while (v13 > v12);
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if ([&off_100286A08 count])
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v16 |= 1 << v15;
      v17 = v15 + 1;
      v18 = [&off_100286A08 count];
      v15 = v17;
    }

    while (v18 > v17);
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  if ([&off_100286A20 count])
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v21 |= 1 << v20;
      v22 = v20 + 1;
      v23 = [&off_100286A20 count];
      v20 = v22;
    }

    while (v23 > v22);
    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  if ([&off_100286A38 count])
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v26 |= 1 << v25;
      v27 = v25 + 1;
      v28 = [&off_100286A38 count];
      v25 = v27;
    }

    while (v28 > v27);
    v29 = v26;
  }

  else
  {
    v29 = 0;
  }

  if ([&off_100286A50 count])
  {
    v30 = 0;
    v31 = 0;
    do
    {
      v31 |= 1 << v30;
      v32 = v30 + 1;
      v33 = [&off_100286A50 count];
      v30 = v32;
    }

    while (v33 > v32);
    v34 = v31;
  }

  else
  {
    v34 = 0;
  }

  if ([&off_100286A68 count])
  {
    v35 = 0;
    v36 = 0;
    do
    {
      v36 |= 1 << v35;
      v37 = v35 + 1;
      v38 = [&off_100286A68 count];
      v35 = v37;
    }

    while (v38 > v37);
    v39 = v36;
  }

  else
  {
    v39 = 0;
  }

  if ([&off_100286A80 count])
  {
    v40 = v34;
    v41 = v29;
    v42 = v24;
    v43 = v19;
    v44 = v14;
    v45 = v9;
    v46 = 0;
    v47 = 0;
    do
    {
      v47 |= 1 << v46;
      v48 = v46 + 1;
      v49 = [&off_100286A80 count];
      v46 = v48;
    }

    while (v49 > v48);
    v50 = v47;
    v9 = v45;
    v14 = v44;
    v19 = v43;
    v24 = v42;
    v29 = v41;
    v34 = v40;
    v39 = v39;
  }

  else
  {
    v50 = 0;
  }

  v55[0] = @"MWS2GBITMAPWiFiEnh";
  v56[0] = [NSNumber numberWithInt:v53];
  v55[1] = @"MWS5GBITMAPLOWWiFiEnh";
  v56[1] = [NSNumber numberWithInt:v9];
  v55[2] = @"MWS5GBITMAPMIDWiFiEnh";
  v56[2] = [NSNumber numberWithInt:v14];
  v55[3] = @"MWS5GBITMAPHIWiFiEnh";
  v56[3] = [NSNumber numberWithInt:v19];
  v55[4] = @"MWSU5LowBITMAPWiFiEnh";
  v56[4] = [NSNumber numberWithInt:v24];
  v55[5] = @"MWSU5HighBITMAPWiFiEnh";
  v56[5] = [NSNumber numberWithInt:v29];
  v55[6] = @"MWSU6BITMAPWiFiEnh";
  v56[6] = [NSNumber numberWithInt:v34];
  v55[7] = @"MWSU7BITMAPWiFiEnh";
  v56[7] = [NSNumber numberWithInt:v39];
  v55[8] = @"MWSU8BITMAPWiFiEnh";
  v56[8] = [NSNumber numberWithInt:v50];
  v51 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:9];
  [WCM_Logging logLevel:4 message:@"WiFiS: setting enabled channels for Assoc Protection mode %@", v51];
  return [*(a1 + 32) sendMessage:@"MWS_ASSOC_PROTECTION_BITMAP_Enh" withValue:v51];
}

void sub_1000F9DDC(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: setting max duration for cellular scan protection %@", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_SET_TYPE4_MAX_DURATION" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000F9ED0(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: setting LTE-WiFi TDD Mode Channels %@", *(a1 + 32)];
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v2 = [NSMutableArray arrayWithArray:*(a1 + 32)];
    if ([(NSMutableArray *)v2 isEqualToArray:&off_100286A98])
    {
      [(NSMutableArray *)v2 removeAllObjects];
    }

    v3 = *(a1 + 40);
    v4 = @"MWS_TIME_SHARING_Enh";
    v5 = v2;
  }

  else
  {
    v5 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = @"MWS_SET_LTE_TDD_MODE";
  }

  [v3 sendMessage:v4 withValue:v5];
  v6 = *(a1 + 32);
}

void sub_1000FA02C(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: setting WiFi Rx protect mode %@", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_WLANRX_PROT" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000FA140(id *a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: setting WiFi Rx protect auto-mode weight %@ thresh %@", a1[4], a1[5]];
  v2[0] = @"MWS_AUTOPROT_PARAMS_WEIGHT";
  v2[1] = @"MWS_AUTOPROT_PARAMS_THRESH";
  v3 = *(a1 + 2);
  [a1[6] sendMessage:@"MWS_AUTOPROT_PARAMS" withValue:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v3, v2, 2)}];
}

void sub_1000FA29C(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: setting WiFi Tx indication over WCI2 %@", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_WCI2_TXIND" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000FA390(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [WCM_Logging logLevel:3 message:@"WiFiS: setting WiFi scan and join Rx protect duration %@ ", v2];
    [*(a1 + 40) sendMessage:@"MWS_SCANJOIN_PROT" withValue:*(a1 + 32)];
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }
}

void sub_1000FA4A4(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: setting Cellular Frequency Config %@", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_CELLULAR_FREQ_CONFIG" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000FA5A0(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: Enabling 2g Wifi Envelope Indication %@", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_WCI2_TX_ENVELOPE_IND_2G" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000FA69C(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: 2g Wifi Envelope Indication Timer %@", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_TX_ENVELOPE_IDLE_TIMER" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000FA790(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: Enabling Agc Coex  Wifi %@", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_COEX_CONFIG" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

id sub_1000FA870(uint64_t a1)
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v2 = @"DLDebug_ WiFiS: Extended Type0 MSG Indication for 5GHz WiFi Tx is  for LAA Coex Config for New BB20 Platforms.";
  }

  else
  {
    v2 = @"WiFiS: LAA Coex Config -- enabling TX Indication";
  }

  [WCM_Logging logLevel:3 message:v2];
  v3 = *(a1 + 32);

  return [v3 sendMessage:@"MWS_WCI2_TXIND_5G" withValue:&off_1002719B8];
}

void sub_1000FA98C(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: LAA Coex Config setting WiFi Tx duration thresh %@", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_WCI2_TXDUR_THRESH" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000FAA88(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: LAA Coex Config setting WiFi scan throttle mask %@", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_ACTIVE_SCAN_THROTTLE" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000FAB84(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: LAA Coex Config setting WiFi active dwell time %@", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_ACTIVE_DWELL_TIME" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

id sub_1000FAF64(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WiFiS: Update WiFi/BT ULOFDMA disable (%d)", *(a1 + 40)];
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = &off_1002719B8;
  }

  else
  {
    v3 = &off_1002719A0;
  }

  return [v2 sendMessage:@"MWS_BT_COEX_ULOFDMA_DISABLE" withValue:v3];
}

id sub_1000FB05C(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WiFiS: Update WiFi/RCU1 ULOFDMA disable (%d)", *(a1 + 40)];
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = &off_1002719B8;
  }

  else
  {
    v3 = &off_1002719A0;
  }

  return [v2 sendMessage:@"MWS_RC1_COEX_ULOFDMA_DISABLE" withValue:v3];
}

id sub_1000FB154(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WiFiS: Update WiFi/RCU2 ULOFDMA disable (%d)", *(a1 + 40)];
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = &off_1002719B8;
  }

  else
  {
    v3 = &off_1002719A0;
  }

  return [v2 sendMessage:@"MWS_RC2_COEX_ULOFDMA_DISABLE" withValue:v3];
}

void sub_1000FB294(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WiFiS: Update WiFi RCU1 mode and chan"];
  v2[0] = @"MWS_RC1_COEX_MODE_CHANGED";
  v3[0] = [NSNumber numberWithInt:*(a1 + 56)];
  v2[1] = @"MWS_RC1_COEX_CHANNEL_CHANGED";
  v3[1] = [NSNumber numberWithInt:*(a1 + 57)];
  v2[2] = @"MWS_RC1_COEX_MODE";
  v2[3] = @"MWS_RC1_COEX_CHANNEL";
  v4 = *(a1 + 32);
  [*(a1 + 48) sendMessage:@"MWS_RC1_COEX_PARAM_INFO" withValue:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v3, v2, 4)}];
}

void sub_1000FB578(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WiFiS: Set WiFi RCU2 Coex mode (%@)", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_RC2_COEX_MODE" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000FB674(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WiFiS: Set WiFi RCU2 PM Protection mode (%@)", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_RC2_PM_PROTECTION_MODE" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000FB770(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WiFiS: Set WiFi RCU2 params %@", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_RC2_WIFI_TIMING_PARAM_INFO" withValue:{+[NSMutableDictionary dictionaryWithObjects:forKeys:](NSMutableDictionary, "dictionaryWithObjects:forKeys:", *(a1 + 32), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", @"MWS_RC2_GPIO_PROCESSING_DELAY", @"MWS_RC2_COEX_GRANT_DURATION", @"MWS_RC2_COEX_GRANT_INTERVAL", 0))}];
  v2 = *(a1 + 32);
}

id sub_1000FB898(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WiFiS: Update WiFi eSCO status (%d)", *(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];

  return [v2 sendMessage:@"MWS_BT_ESCO_TRAFFIC_INDICATION" withValue:v3];
}

id sub_1000FB98C(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WiFiS: Update WiFi Limited Aggregation state (%d) and useCase (%d)", *(a1 + 40), *(a1 + 44)];
  v4[0] = @"MWS_BT_SCO_HID_TRAFFIC_INDICATION";
  v2 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
  v4[1] = @"MWS_BT_SCO_HID_TRAFFIC_USE_CASE";
  v5[0] = v2;
  v5[1] = [NSNumber numberWithUnsignedInt:*(a1 + 44)];
  return [*(a1 + 32) sendMessage:@"MWS_BT_SCO_HID_TRAFFIC_PARAM" withValue:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v5, v4, 2)}];
}

id sub_1000FBADC(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WiFiS: Update WiFi A2DP status (%d)", *(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];

  return [v2 sendMessage:@"MWS_BT_A2DP_TRAFFIC_INDICATION" withValue:v3];
}

id sub_1000FBBD0(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WiFiS: Update WiFi A2DP LLA status (%d)", *(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];

  return [v2 sendMessage:@"MWS_BT_A2DP_LLA_TRAFFIC_INDICATION" withValue:v3];
}

void sub_1000FBCDC(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WiFiS: Update BT Connection Report"];
  v2[0] = @"MWS_BT_CONNECTION_REPORT_2G_AoS_UNI";
  v3[0] = [*(a1 + 32) objectForKeyedSubscript:@"2GAoSUni"];
  v2[1] = @"MWS_BT_CONNECTION_REPORT_2G_AoS_BI";
  v3[1] = [*(a1 + 32) objectForKeyedSubscript:@"2GAoSBi"];
  v2[2] = @"MWS_BT_CONNECTION_REPORT_5G_AoS_UNI";
  v3[2] = [*(a1 + 32) objectForKeyedSubscript:@"5GAoSUni"];
  v2[3] = @"MWS_BT_CONNECTION_REPORT_5G_AoS_BI";
  v3[3] = [*(a1 + 32) objectForKeyedSubscript:@"5GAoSBi"];
  v2[4] = @"MWS_BT_CONNECTION_REPORT_ACL_A2DP";
  v3[4] = [*(a1 + 32) objectForKeyedSubscript:@"ACL-A2DP"];
  v2[5] = @"MWS_BT_CONNECTION_REPORT_ESCO";
  v3[5] = [*(a1 + 32) objectForKeyedSubscript:@"ESCO"];
  v2[6] = @"MWS_BT_CONNECTION_REPORT_HID";
  v3[6] = [*(a1 + 32) objectForKeyedSubscript:@"HID"];
  [*(a1 + 40) sendMessage:@"MWS_BT_CONNECTION_REPORT" withValue:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v3, v2, 7)}];
}

void sub_1000FBF0C(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WiFiS: Set WiFi RCU2 coex params  %@", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_RC2_WIFI_TIMING_PARAM_INFO" withValue:{+[NSMutableDictionary dictionaryWithObjects:forKeys:](NSMutableDictionary, "dictionaryWithObjects:forKeys:", *(a1 + 32), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", @"MWS_RC2_COEX_MODE", @"MWS_RC2_COEX_GRANT_DURATION", @"MWS_RC2_COEX_GRANT_INTERVAL", @"MWS_RC2_COEX_CHANNEL", 0))}];
  v2 = *(a1 + 32);
}

id sub_1000FC65C(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  result = [WCM_Logging logLevel:2 message:@"WiFiS: callbackWiFiDeviceClientDeviceAvailable %@", a2];
  if (!a2)
  {
    return result;
  }

  Value = CFDictionaryGetValue(a2, @"DRIVER_AVAILABLE");
  if (Value)
  {
    v7 = CFBooleanGetValue(Value);
    *(a3 + 528) = v7 != 0;
    [*(a3 + 8) updatePowerState:?];
    if (v7)
    {
      *(a3 + 529) = 1;
      [WCM_Logging logLevel:2 message:@"WiFiS: callbackWiFiDeviceClientDeviceAvailable mWiFiDeviceReset to TRUE"];

      return [a3 checkWiFiState];
    }
  }

  else
  {
    *(a3 + 528) = 0;
    [*(a3 + 8) updatePowerState:0];
  }

  if (([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] & 1) != 0 || (objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"WiFiBtProfile") & 1) != 0 || (result = objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"WiFiBtExtProfile"), result))
  {
    v8 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];

    return [v8 clearDownloadCoexProfilesState];
  }

  return result;
}

id sub_1000FC7F0(uint64_t a1, uint64_t a2, void *a3)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: callbackWiFiDeviceClientExtendedLink %@", a2];

  return [a3 processWifiDeviceExtendedLinkEvent:a2];
}

id sub_1000FC850(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  [WCM_Logging logLevel:2 message:@"WiFiS: callbackWiFiDeviceClientHostApStateChanged %@", a2];
  valuePtr = 0;
  Value = CFDictionaryGetValue(a2, @"CHANNEL");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr + 4);
    [WCM_Logging logLevel:2 message:@"channel = %d", HIDWORD(valuePtr)];
  }

  v6 = CFDictionaryGetValue(a2, @"HostApEnabled");
  if (v6)
  {
    CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
    [WCM_Logging logLevel:2 message:@"hostAPMode = %d", valuePtr];
    v7 = valuePtr != 0;
  }

  else
  {
    v7 = 0;
  }

  return [a3 updateHostAPState:v7 channel:HIDWORD(valuePtr)];
}

id sub_1000FC93C(uint64_t a1, uint64_t a2, void *a3)
{
  result = [WCM_Logging logLevel:3 message:@"WiFiS: callbackWiFiDeviceClientBssidChange (%p)", a2];
  if (a2)
  {
    [a3 checkWiFiState];

    return [a3 notifyWiFiStateChange:1];
  }

  return result;
}

id sub_1000FC9B8(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  [WCM_Logging logLevel:2 message:@"WiFiS: callbackWiFiDeviceClientBTScanIntervalRelaxCallback %@", a2];
  valuePtr = 4;
  if (a2)
  {
    number = 0;
    value = 0;
    v5 = 0;
    if (CFDictionaryGetValueIfPresent(a2, @"BT_SCAN_INTERVAL_RELAX_ENABLE", &value) && value)
    {
      v5 = CFEqual(value, kCFBooleanTrue) != 0;
    }

    ValueIfPresent = CFDictionaryGetValueIfPresent(a2, @"BT_SCAN_INTERVAL_RELAX_REASON", &number);
    v7 = 4;
    if (ValueIfPresent)
    {
      if (number)
      {
        CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
        v7 = valuePtr;
      }
    }

    [WCM_Logging logLevel:2 message:@"WiFiS: BT Scan Interval Relax event: enable %d, reason %d\n", v5, v7];
    return [a3 dispatchCarplayInfotoBT:v5 reason:valuePtr];
  }

  else
  {

    return [WCM_Logging logLevel:2 message:@"BT Scan Interval Relax dictionary is null"];
  }
}

const __CFDictionary *sub_1000FCAF0(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  if (!a2)
  {
    return [WCM_Logging logLevel:1 message:@"%s: empty dict", "callbackUCMEventCallback"];
  }

  [WCM_Logging logLevel:2 message:@"%s: %@", "callbackUCMEventCallback", a2];
  valuePtr = 0;
  Value = CFDictionaryGetValue(a2, @"UCM_EventType");
  if (!Value)
  {
    return [WCM_Logging logLevel:1 message:@"%s: no eventType", "callbackUCMEventCallback"];
  }

  CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr);
  v6 = valuePtr;
  result = CFDictionaryGetValue(a2, @"UCM_EventParams");
  if (!result)
  {
    return [WCM_Logging logLevel:1 message:@"%s: no eventParams", "callbackUCMEventCallback"];
  }

  if (v6 == 1)
  {
    v8 = result;
    result = CFDictionaryGetValue(result, @"UCM_CopresenceEn");
    if (result)
    {
      CFNumberGetValue(result, kCFNumberLongLongType, &valuePtr);
      v9 = valuePtr;
      result = CFDictionaryGetValue(v8, @"MWS_LE_NORM_SCAN_GRANT_DUR");
      if (result)
      {
        result = CFNumberGetValue(result, kCFNumberLongLongType, &valuePtr);
        if (a3)
        {
          return [a3 forceCopresence:v9 != 0 scanGrantDuration:valuePtr];
        }
      }
    }
  }

  return result;
}

void sub_1000FDA38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  [WCM_Logging logLevel:2 message:@"WiFiS: callbackWiFiDeviceClientScanCallback %d", a3];
  if (!a4)
  {
    [WCM_Logging logLevel:2 message:@"WiFiS: callback context is missing %d", a3];
    [WCM_Logging logLevel:2 message:@"WiFiS: callback context is NULL"];
  }

  v7 = *(a4 + 24);
  if (!v7)
  {
    [WCM_Logging logLevel:2 message:@"WiFiS: callback wifiService is NULL"];
  }

  if (a2)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000FE4BC;
    v9[3] = &unk_100242250;
    v9[4] = v8;
    v9[5] = v12;
    v9[6] = v10;
    v9[7] = &v18;
    v9[8] = &v14;
    [a2 enumerateObjectsUsingBlock:v9];
    [WCM_Logging logLevel:2 message:@"WiFiS: Sending least congested channel: %d, count %d\n", *(v15 + 6), *(v19 + 6)];
    [v7 dispatchContentionFreeWiFiNetworkToRC2:*(v15 + 6) count:*(v19 + 6)];
    CFRunLoopStop(*(a4 + 16));
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"WiFiS: callback scanResults are NULL"];
    *(v15 + 6) = 13;
    *(v19 + 6) = 1;
  }

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
}

void sub_1000FDC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FDF14(uint64_t result)
{
  if (*(*(result + 32) + 504))
  {
    return _WiFiManagerClientWiFiCallHandoverNotification(*(*(result + 32) + 504), *(result + 40));
  }

  return result;
}

id sub_1000FE0D0(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WiFiS: Update External Connection (%d)", *(a1 + 40)];
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = &off_1002719A0;
  }

  else
  {
    v3 = &off_1002719B8;
  }

  return [v2 sendMessage:@"MWS_SET_WIFI_BT_AIRTIME_POLICY" withValue:v3];
}

id sub_1000FE4BC(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = WiFiNetworkGetIntProperty();
  *(*(*(a1 + 48) + 8) + 24) = [objc_msgSend(*(a1 + 32) objectForKey:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(*(*(a1 + 40) + 8) + 24))), "intValue"}];
  [*(a1 + 32) setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", (*(*(*(a1 + 48) + 8) + 24) + 1)), +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(*(*(a1 + 40) + 8) + 24))}];
  result = [objc_msgSend(*(a1 + 32) objectForKey:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(*(*(a1 + 40) + 8) + 24))), "intValue"}];
  if (result <= *(*(*(a1 + 56) + 8) + 24))
  {
    result = [objc_msgSend(*(a1 + 32) objectForKey:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(*(*(a1 + 40) + 8) + 24))), "intValue"}];
    *(*(*(a1 + 56) + 8) + 24) = result;
    *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  return result;
}

void sub_100100E98(uint64_t a1)
{
  v2 = [*(a1 + 32) wcmRadioStateIndicatorWrapper];
  v3 = [v2 getBTState];
  v4 = [v3 mutableCopy];
  [*(a1 + 32) setBtdata:v4];

  v5 = [*(a1 + 32) btdata];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 32) btdata];
    v8 = [v7 objectForKeyedSubscript:@"le_adv_epa"];
    v9 = [NSNumber numberWithBool:*(a1 + 40)];
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [NSNumber numberWithBool:*(a1 + 40)];
      v12 = [*(a1 + 32) btdata];
      [v12 setObject:v11 forKeyedSubscript:@"le_adv_epa"];

      v13 = *(a1 + 32);

      [v13 sendBTDataIfChanged];
    }
  }
}

void sub_100101090(uint64_t a1)
{
  v2 = [*(a1 + 32) wcmRadioStateIndicatorWrapper];
  v3 = [v2 getBTState];
  v4 = [v3 mutableCopy];
  [*(a1 + 32) setBtdata:v4];

  v5 = [*(a1 + 32) btdata];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 32) btdata];
    v8 = [v7 objectForKeyedSubscript:@"connected"];
    v9 = [NSNumber numberWithBool:*(a1 + 40)];
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [NSNumber numberWithBool:*(a1 + 40)];
      v12 = [*(a1 + 32) btdata];
      [v12 setObject:v11 forKeyedSubscript:@"connected"];

      v13 = *(a1 + 32);

      [v13 sendBTDataIfChanged];
    }
  }
}

void sub_100101288(uint64_t a1)
{
  v2 = [*(a1 + 32) wcmRadioStateIndicatorWrapper];
  v3 = [v2 getBTState];
  v4 = [v3 mutableCopy];
  [*(a1 + 32) setBtdata:v4];

  v5 = [*(a1 + 32) btdata];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 32) btdata];
    v8 = [v7 objectForKeyedSubscript:@"powered"];
    v9 = [NSNumber numberWithBool:*(a1 + 40)];
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [NSNumber numberWithBool:*(a1 + 40)];
      v12 = [*(a1 + 32) btdata];
      [v12 setObject:v11 forKeyedSubscript:@"powered"];

      v13 = *(a1 + 32);

      [v13 sendBTDataIfChanged];
    }
  }
}

void sub_100101480(uint64_t a1)
{
  v2 = [*(a1 + 32) wcmRadioStateIndicatorWrapper];
  v3 = [v2 getWifiState];
  v4 = [v3 mutableCopy];
  [*(a1 + 32) setWifidata:v4];

  v5 = [*(a1 + 32) wifidata];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 32) wifidata];
    v8 = [v7 objectForKeyedSubscript:@"p2p"];
    v9 = [NSNumber numberWithBool:*(a1 + 40)];
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [NSNumber numberWithBool:*(a1 + 40)];
      v12 = [*(a1 + 32) wifidata];
      [v12 setObject:v11 forKeyedSubscript:@"p2p"];

      v13 = *(a1 + 32);

      [v13 sendWifiDataIfChanged];
    }
  }
}

void sub_100101678(uint64_t a1)
{
  v2 = [*(a1 + 32) wcmRadioStateIndicatorWrapper];
  v3 = [v2 getWifiState];
  v4 = [v3 mutableCopy];
  [*(a1 + 32) setWifidata:v4];

  v5 = [*(a1 + 32) wifidata];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 32) wifidata];
    v8 = [v7 objectForKeyedSubscript:@"p2p"];
    v9 = [NSNumber numberWithBool:*(a1 + 40)];
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [NSNumber numberWithBool:*(a1 + 40)];
      v12 = [*(a1 + 32) wifidata];
      [v12 setObject:v11 forKeyedSubscript:@"p2p"];

      v13 = *(a1 + 32);

      [v13 sendWifiDataIfChanged];
    }
  }
}

void sub_100101870(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2 > 4;
  v4 = 0x1Eu >> v2;
  v5 = 0x1Cu >> v2;
  v6 = 4u >> v2;
  v7 = 8u >> v2;
  v8 = 0x10u >> v2;
  if (v3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4;
  }

  if (v3)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  if (v3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v6;
  }

  if (v3)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  v50 = v12;
  if (v3)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  v14 = [*(a1 + 32) wcmRadioStateIndicatorWrapper];
  v15 = [v14 getWifiState];
  v16 = [v15 mutableCopy];
  [*(a1 + 32) setWifidata:v16];

  v17 = [*(a1 + 32) wifidata];

  if (v17)
  {
    v18 = [*(a1 + 32) wifidata];
    v19 = [v18 objectForKeyedSubscript:@"powered"];
    v20 = [NSNumber numberWithBool:v9 & 1];
    v21 = [v19 isEqual:v20];

    if ((v21 & 1) == 0)
    {
      v22 = [NSNumber numberWithBool:v9 & 1];
      v23 = [*(a1 + 32) wifidata];
      [v23 setObject:v22 forKeyedSubscript:@"powered"];
    }

    v24 = [*(a1 + 32) wifidata];
    v25 = [v24 objectForKeyedSubscript:@"associated"];
    v26 = [NSNumber numberWithBool:v10 & 1];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
      v28 = v21 ^ 1;
    }

    else
    {
      v29 = [NSNumber numberWithBool:v10 & 1];
      v30 = [*(a1 + 32) wifidata];
      [v30 setObject:v29 forKeyedSubscript:@"associated"];

      v28 = 1;
    }

    v31 = [*(a1 + 32) wifidata];
    v32 = [v31 objectForKeyedSubscript:@"two_ghz"];
    v33 = [NSNumber numberWithBool:v11 & 1];
    v34 = [v32 isEqual:v33];

    if ((v34 & 1) == 0)
    {
      v35 = [NSNumber numberWithBool:v11 & 1];
      v36 = [*(a1 + 32) wifidata];
      [v36 setObject:v35 forKeyedSubscript:@"two_ghz"];

      v28 = 1;
    }

    v37 = [*(a1 + 32) wifidata];
    v38 = [v37 objectForKeyedSubscript:@"five_ghz"];
    v39 = [NSNumber numberWithBool:v50 & 1];
    v40 = [v38 isEqual:v39];

    if ((v40 & 1) == 0)
    {
      v41 = [NSNumber numberWithBool:v50 & 1];
      v42 = [*(a1 + 32) wifidata];
      [v42 setObject:v41 forKeyedSubscript:@"five_ghz"];

      v28 = 1;
    }

    v43 = [*(a1 + 32) wifidata];
    v44 = [v43 objectForKeyedSubscript:@"six_ghz"];
    v45 = [NSNumber numberWithBool:v13 & 1];
    v46 = [v44 isEqual:v45];

    if (v46)
    {
      if (!v28)
      {
        return;
      }
    }

    else
    {
      v47 = [NSNumber numberWithBool:v13 & 1];
      v48 = [*(a1 + 32) wifidata];
      [v48 setObject:v47 forKeyedSubscript:@"six_ghz"];
    }

    v49 = *(a1 + 32);

    [v49 sendWifiDataIfChanged];
  }
}

void sub_100101D38(uint64_t a1)
{
  v2 = [*(a1 + 32) wcmRadioStateIndicatorWrapper];
  v3 = [v2 getWifiState];
  v4 = [v3 mutableCopy];
  [*(a1 + 32) setWifidata:v4];

  v5 = [*(a1 + 32) wifidata];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 32) wifidata];
    v8 = [v7 objectForKeyedSubscript:@"phs"];
    v9 = [NSNumber numberWithBool:*(a1 + 40)];
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [NSNumber numberWithBool:*(a1 + 40)];
      v12 = [*(a1 + 32) wifidata];
      [v12 setObject:v11 forKeyedSubscript:@"phs"];

      v13 = *(a1 + 32);

      [v13 sendWifiDataIfChanged];
    }
  }
}

void sub_100101F30(uint64_t a1)
{
  v2 = [*(a1 + 32) wcmRadioStateIndicatorWrapper];
  v3 = [v2 getThreadState];
  v4 = [v3 mutableCopy];
  [*(a1 + 32) setThreaddata:v4];

  v5 = [*(a1 + 32) threaddata];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 32) threaddata];
    v8 = [v7 objectForKeyedSubscript:@"powered"];
    v9 = [NSNumber numberWithBool:*(a1 + 40)];
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [NSNumber numberWithBool:*(a1 + 40)];
      v12 = [*(a1 + 32) threaddata];
      [v12 setObject:v11 forKeyedSubscript:@"powered"];

      v13 = *(a1 + 32);

      [v13 sendThreadDataIfChanged];
    }
  }
}

id sub_1001036EC(unsigned int a1, unsigned int a2, void *a3)
{
  v6 = +[NSMutableArray array];
  v7 = [a3 count];
  v8 = v7 - 1;
  if (v7 == 1)
  {
    return v6;
  }

  v9 = 0;
  LOBYTE(v10) = 0;
  LOBYTE(v11) = 0;
  do
  {
    if (v11)
    {
      v11 = 1;
      if (v10)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = [objc_msgSend(a3 objectAtIndex:{v9), "integerValue"}];
      v11 = v13 >= a1;
      if (v13 < a1)
      {
        ++v9;
      }

      if (v10)
      {
LABEL_9:
        v10 = 1;
        goto LABEL_10;
      }
    }

    v12 = [objc_msgSend(a3 objectAtIndex:{v8), "integerValue"}];
    v10 = v12 <= a2;
    v8 -= v12 > a2;
LABEL_10:
    v14 = v11 && v10;
  }

  while (v9 < v8 && !v14);
  if (v9 > v8)
  {
    v14 = 0;
  }

  if (v14 == 1)
  {
    do
    {
      [v6 addObject:{objc_msgSend(a3, "objectAtIndex:", v9++)}];
    }

    while (v9 <= v8);
  }

  return v6;
}

id sub_100115DC0(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmBTMaxNumberOfChannelsToAvoidForCellOOB:&off_1002724F8];
  [a1 setWcmWiFiSupportWciSignalingConfig:1];
  [a1 setWcmWiFiRxProtectMode:&off_1002723F0];
  [a1 setWcmWiFiScanJoinProtectDuration:&off_1002723F0];
  [a1 setWcmWiFiCellCoexIssueTable:objc_alloc_init(WCM_WiFiCellCoexIssueBandTable)];
  [objc_msgSend(a1 "wcmWiFiCellCoexIssueTable")];
  [a1 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [a1 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [a1 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [a1 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [a1 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [a1 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_100286DC8];

  return [a1 setWcmCellularScanProtectionWiFiChannels:&off_100286DF8];
}

id sub_100115F08(void *a1)
{
  [a1 setWcmWiFiBTCoexProfileDefault:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileLight:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyHFP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyA2DP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  v1 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0], @"UCM_CHAIN_ATTR", 0];

  return [a1 setWcmWiFiBTCoexProfileTDD:v1];
}

id sub_100116800(void *a1)
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
  v54 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v86 = 0;
  v87 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex003_WiFiEnh_v1.5" options:@"plist") format:2 error:&v86, &v87];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v53[1] = v53;
  __chkstk_darwin(v4, v5, v6);
  v56 = v53 - v7;
  v9 = v53 + v3 * v8 - v7;
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
    v55 = 120 * v10;
    do
    {
      v84 = 0;
      v85 = 0;
      v83[0] = 0;
      *(v83 + 3) = 0;
      LODWORD(v82) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      LODWORD(v81) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v80 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v79 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v78 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v77 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v76 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v75 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v74 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v73 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12++), "objectForKey:", @"isWifiEnhBand", "intValue"}];
      v23 = &v56[v11];
      v24 = v80;
      v25 = v81;
      *v23 = v82;
      *(v23 + 1) = v25;
      v23[8] = v24;
      v26 = v78;
      v23[13] = v79;
      *(v23 + 9) = 0;
      v23[14] = v26;
      v27 = v76;
      v23[15] = v77;
      v23[16] = v27;
      v28 = v74;
      v23[17] = v75;
      v23[18] = v28;
      v29 = v72;
      v23[19] = v73;
      v23[20] = v29;
      v30 = v70;
      v23[21] = v71;
      v23[22] = v30;
      v31 = v68;
      v23[23] = v69;
      v23[24] = v31;
      v32 = v66;
      v23[25] = v67;
      v23[26] = v32;
      v33 = v64;
      v23[27] = v65;
      v23[28] = v33;
      *(v23 + 29) = v84;
      v23[31] = v85;
      *(v23 + 4) = v63;
      *(v23 + 5) = v13;
      *(v23 + 6) = v14;
      v34 = v61;
      v23[56] = v62;
      v23[57] = v34;
      v35 = v59;
      v23[58] = v60;
      v23[59] = v35;
      v36 = v58;
      *(v23 + 15) = 0;
      *(v23 + 16) = v36;
      *(v23 + 68) = 0;
      *(v23 + 38) = 0;
      v23[78] = v57;
      v23[79] = v15;
      *(v23 + 10) = 0;
      v23[88] = 0;
      v23[89] = v16;
      v23[90] = v17;
      v23[91] = v18;
      v23[92] = 0;
      v23[93] = v19;
      v23[94] = v20;
      v23[95] = v21;
      v23[96] = v22 != 0;
      *(v23 + 97) = 0;
      *(v23 + 27) = *(v83 + 3);
      *(v23 + 105) = v83[0];
      v11 += 120;
      *(v23 + 14) = 0;
    }

    while (v55 != v11);
  }

  v37 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v38 = v54;
  [v54 setWcmWiFiCellCoexIssueTable:v37];
  v39 = [v38 wcmWiFiCellCoexIssueTable];
  [v39 configureBy:v56];
  [v38 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [v38 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [v38 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v38 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v38 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [v38 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [v38 setWcmCellularScanProtectionCellFrequencies:&off_100286E88];
  [v38 setWcmCellularScanProtectionWiFiChannels:&off_100286F18];
  [v38 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [v38 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v38 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}];
  v82 = NSDictionary;
  v40 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v41 = [v82 dictionaryWithObjectsAndKeys:{&off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v40, @"UCM_CHAIN_ATTR", 0}];
  v42 = v54;
  [v54 setWcmWiFiBTCoexProfileDefault:v41];
  v82 = NSDictionary;
  v43 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  [v42 setWcmWiFiBTCoexProfileLight:{objc_msgSend(v82, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v43, @"UCM_CHAIN_ATTR", 0)}];
  v81 = NSArray;
  v82 = NSDictionary;
  v44 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v45 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v46 = [v81 arrayWithObjects:{v44, v45, 0}];
  v47 = [v82 dictionaryWithObjectsAndKeys:{&off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v46, @"UCM_CHAIN_ATTR", 0}];
  [v54 setWcmWiFiBTCoexProfileHeavyHFP:v47];
  v82 = NSDictionary;
  v48 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v49 = [v82 dictionaryWithObjectsAndKeys:{&off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v48, @"UCM_CHAIN_ATTR", 0}];
  [v54 setWcmWiFiBTCoexProfileHeavyA2DP:v49];
  v82 = NSDictionary;
  v50 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v51 = [v82 dictionaryWithObjectsAndKeys:{&off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v50, @"UCM_CHAIN_ATTR", 0}];
  return [v54 setWcmWiFiBTCoexProfileTDD:v51];
}

id sub_100117BAC(void *a1)
{
  [a1 setWcmWiFiBTCoexProfileDefault:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileLight:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272360, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  v1 = &off_100272300;
  [a1 setWcmWiFiBTCoexProfileHeavyHFP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", v1, @"UCM_MODE_STRONG_WL_BT", v1, @"UCM_MODE_WEAK_WL", v1, @"UCM_MODE_WEAK_BT", v1, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyA2DP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", v1, @"UCM_MODE_STRONG_WL_BT", v1, @"UCM_MODE_WEAK_WL", v1, @"UCM_MODE_WEAK_BT", v1, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  v2 = &off_100272420;
  [a1 setWcmWiFiBTCoexProfileTDD:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", v2, @"UCM_ACK_PWR_STRONG_RSSI", v2, @"UCM_ACK_PWR_WEAK_RSSI", v2, @"UCM_TX_PWR_STRONG_RSSI", v2, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  v3 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002723F0, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", v2, @"UCM_ACK_PWR_STRONG_RSSI", v2, @"UCM_ACK_PWR_WEAK_RSSI", v2, @"UCM_TX_PWR_STRONG_RSSI", v2, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", v2, @"UCM_ACK_PWR_STRONG_RSSI", v2, @"UCM_ACK_PWR_WEAK_RSSI", v2, @"UCM_TX_PWR_STRONG_RSSI", v2, @"UCM_TX_PWR_WEAK_RSSI", 0], 0], @"UCM_CHAIN_ATTR", 0];

  return [a1 setWcmWiFiBTCoexProfileDefault5G:v3];
}

id sub_1001186A0(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272930];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  v54 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v94 = 0;
  v95 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex045_V7WiFiEnh" options:@"plist") format:2 error:&v94, &v95];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v53[1] = v53;
  __chkstk_darwin(v4, v5, v6);
  v56 = v53 - v7;
  v9 = v53 + v3 * v8 - v7;
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
    v55 = 120 * v10;
    do
    {
      v90 = v11;
      v92 = 0;
      v93 = 0;
      v91[0] = 0;
      *(v91 + 3) = 0;
      LODWORD(v89) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v88 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v87 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v86 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v85 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v84 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v83 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v82 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v81 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v80 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v79 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v78 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v77 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v76 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v75 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v74 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v73 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v24 = v90;
      ++v12;
      v25 = &v90[v56];
      v26 = v88;
      *v25 = v89;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v86;
      v25[8] = v87;
      v25[13] = v26;
      LOBYTE(v26) = v84;
      v25[14] = v85;
      v25[15] = v26;
      LOBYTE(v26) = v82;
      v25[16] = v83;
      v25[17] = v26;
      LOBYTE(v26) = v80;
      v25[18] = v81;
      v25[19] = v26;
      LOBYTE(v26) = v78;
      v25[20] = v79;
      v25[21] = v26;
      LOBYTE(v26) = v76;
      v25[22] = v77;
      v25[23] = v26;
      LOBYTE(v26) = v74;
      v25[24] = v75;
      v25[25] = v26;
      LOBYTE(v26) = v72;
      v25[26] = v73;
      v25[27] = v26;
      v25[28] = v71;
      *(v25 + 29) = v92;
      v25[31] = v93;
      *(v25 + 4) = v70;
      LOBYTE(v26) = v68;
      v25[56] = v69;
      v25[57] = v26;
      LOBYTE(v26) = v66;
      v25[58] = v67;
      v25[59] = v26;
      *(v25 + 16) = v65;
      v25[78] = v64;
      v25[79] = v63;
      v25[89] = v62;
      v25[90] = v61;
      v25[91] = v60;
      v25[93] = v59;
      v25[94] = v58;
      v25[95] = v57;
      v25[96] = v15;
      v25[97] = v16;
      v25[98] = v17;
      v25[99] = v18;
      v25[100] = v19;
      v25[101] = v20;
      v25[102] = v21;
      v25[103] = v22;
      v25[104] = v23;
      *(v25 + 27) = *(v91 + 3);
      *(v25 + 105) = v91[0];
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

    while (v55 != v11);
  }

  v27 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v28 = v54;
  [v54 setWcmWiFiCellCoexIssueTable:v27];
  v29 = [v28 wcmWiFiCellCoexIssueTable];
  [v29 configureBy:v56];
  [v28 setWcmCellRc1CoexIssueTable:0];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [v28 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [v28 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_100286F78];
  if (_os_feature_enabled_impl())
  {
    v30 = &off_100286FD8;
  }

  else
  {
    v30 = &off_100287038;
  }

  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:v30];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_100287098];
  [v28 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_1002870F8];
  [v28 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [v28 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v28 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}];
  v89 = NSArray;
  v90 = NSDictionary;
  v31 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v32 = [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v33 = [v89 arrayWithObjects:{v31, v32, 0}];
  v34 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v33, @"UCM_CHAIN_ATTR", 0}];
  [v54 setWcmWiFiBTCoexProfileDefault:v34];
  v89 = NSArray;
  v90 = NSDictionary;
  v35 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v36 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v37 = [v89 arrayWithObjects:{v35, v36, 0}];
  v38 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272360, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v37, @"UCM_CHAIN_ATTR", 0}];
  [v54 setWcmWiFiBTCoexProfileLight:v38];
  v89 = NSArray;
  v90 = NSDictionary;
  v39 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v40 = &off_100272300;
  v41 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v42 = [v89 arrayWithObjects:{v39, v41, 0}];
  v43 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", v40, @"UCM_MODE_STRONG_WL_BT", v40, @"UCM_MODE_WEAK_WL", v40, @"UCM_MODE_WEAK_BT", v40, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v42, @"UCM_CHAIN_ATTR", 0}];
  [v54 setWcmWiFiBTCoexProfileHeavyHFP:v43];
  v89 = NSArray;
  v90 = NSDictionary;
  v44 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v45 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v46 = [v89 arrayWithObjects:{v44, v45, 0}];
  v47 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", v40, @"UCM_MODE_STRONG_WL_BT", v40, @"UCM_MODE_WEAK_WL", v40, @"UCM_MODE_WEAK_BT", v40, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v46, @"UCM_CHAIN_ATTR", 0}];
  [v54 setWcmWiFiBTCoexProfileHeavyA2DP:v47];
  v90 = NSDictionary;
  v48 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v49 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v48, @"UCM_CHAIN_ATTR", 0}];
  [v54 setWcmWiFiBTCoexProfileTDD:v49];
  v90 = NSDictionary;
  v50 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v51 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002723F0, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v50, @"UCM_CHAIN_ATTR", 0}];
  return [v54 setWcmWiFiBTCoexProfileDefault5G:v51];
}

id sub_100119E24(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmBTMaxNumberOfChannelsToAvoidForCellOOB:&off_1002724F8];
  [a1 setWcmWiFiSupportWciSignalingConfig:1];
  [a1 setWcmWiFiRxProtectMode:&off_1002723F0];
  [a1 setWcmWiFiScanJoinProtectDuration:&off_1002723F0];
  [a1 setWcmWiFiCellCoexIssueTable:objc_alloc_init(WCM_WiFiCellCoexIssueBandTable)];
  [objc_msgSend(a1 "wcmWiFiCellCoexIssueTable")];
  [a1 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [a1 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [a1 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [a1 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [a1 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [a1 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_100287128];

  return [a1 setWcmCellularScanProtectionWiFiChannels:&off_100287158];
}

id sub_100119F6C(void *a1)
{
  [a1 setWcmWiFiBTCoexProfileDefault:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723F0, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileLight:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyHFP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyA2DP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  v1 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0], @"UCM_CHAIN_ATTR", 0];

  return [a1 setWcmWiFiBTCoexProfileTDD:v1];
}

id sub_10011A860(void *a1)
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
  [a1 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [a1 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [a1 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [a1 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [a1 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [a1 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_1002871A0];
  [a1 setWcmCellularScanProtectionWiFiChannels:&off_1002871E8];
  [a1 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [a1 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [a1 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}];
  [a1 setWcmWiFiBTCoexProfileDefault:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723F0, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileLight:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyHFP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyA2DP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  v2 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0], @"UCM_CHAIN_ATTR", 0];

  return [a1 setWcmWiFiBTCoexProfileTDD:v2];
}

id sub_10011B414(void *a1)
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
  v52 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v84 = 0;
  v85 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex004_WiFiEnh_v1" options:@"plist") format:2 error:&v84, &v85];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v51[1] = v51;
  __chkstk_darwin(v4, v5, v6);
  v54 = v51 - v7;
  v9 = v51 + v3 * v8 - v7;
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
    v53 = 120 * v10;
    do
    {
      v82 = 0;
      v83 = 0;
      v81[0] = 0;
      *(v81 + 3) = 0;
      LODWORD(v80) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      LODWORD(v79) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v78 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v77 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v76 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v75 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v74 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v73 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12++), "objectForKey:", @"isWifiEnhBand", "intValue"}];
      v23 = &v54[v11];
      v24 = v78;
      v25 = v79;
      *v23 = v80;
      *(v23 + 1) = v25;
      v23[8] = v24;
      v26 = v76;
      v23[13] = v77;
      *(v23 + 9) = 0;
      v23[14] = v26;
      v27 = v74;
      v23[15] = v75;
      v23[16] = v27;
      v28 = v72;
      v23[17] = v73;
      v23[18] = v28;
      v29 = v70;
      v23[19] = v71;
      v23[20] = v29;
      v30 = v68;
      v23[21] = v69;
      v23[22] = v30;
      v31 = v66;
      v23[23] = v67;
      v23[24] = v31;
      v32 = v64;
      v23[25] = v65;
      v23[26] = v32;
      v33 = v62;
      v23[27] = v63;
      v23[28] = v33;
      *(v23 + 29) = v82;
      v23[31] = v83;
      *(v23 + 4) = v61;
      *(v23 + 5) = v13;
      *(v23 + 6) = v14;
      v34 = v59;
      v23[56] = v60;
      v23[57] = v34;
      v35 = v57;
      v23[58] = v58;
      v23[59] = v35;
      v36 = v56;
      *(v23 + 15) = 0;
      *(v23 + 16) = v36;
      *(v23 + 68) = 0;
      *(v23 + 38) = 0;
      v23[78] = v55;
      v23[79] = v15;
      *(v23 + 10) = 0;
      v23[88] = 0;
      v23[89] = v16;
      v23[90] = v17;
      v23[91] = v18;
      v23[92] = 0;
      v23[93] = v19;
      v23[94] = v20;
      v23[95] = v21;
      v23[96] = v22 != 0;
      *(v23 + 97) = 0;
      *(v23 + 27) = *(v81 + 3);
      *(v23 + 105) = v81[0];
      v11 += 120;
      *(v23 + 14) = 0;
    }

    while (v53 != v11);
  }

  v37 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v38 = v52;
  [v52 setWcmWiFiCellCoexIssueTable:v37];
  v39 = [v38 wcmWiFiCellCoexIssueTable];
  [v39 configureBy:v54];
  [v38 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [v38 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [v38 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v38 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v38 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [v38 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [v38 setWcmCellularScanProtectionCellFrequencies:&off_100287278];
  [v38 setWcmCellularScanProtectionWiFiChannels:&off_100287308];
  [v38 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [v38 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v38 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}];
  v79 = NSArray;
  v80 = NSDictionary;
  v40 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v41 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v42 = [v79 arrayWithObjects:{v40, v41, 0}];
  [v38 setWcmWiFiBTCoexProfileDefault:{objc_msgSend(v80, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v42, @"UCM_CHAIN_ATTR", 0)}];
  v80 = NSDictionary;
  v43 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  [v38 setWcmWiFiBTCoexProfileLight:{objc_msgSend(v80, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v43, @"UCM_CHAIN_ATTR", 0)}];
  v80 = NSDictionary;
  v44 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v45 = [v80 dictionaryWithObjectsAndKeys:{&off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v44, @"UCM_CHAIN_ATTR", 0}];
  v46 = v52;
  [v52 setWcmWiFiBTCoexProfileHeavyHFP:v45];
  v80 = NSDictionary;
  v47 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  [v46 setWcmWiFiBTCoexProfileHeavyA2DP:{objc_msgSend(v80, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v47, @"UCM_CHAIN_ATTR", 0)}];
  v80 = NSDictionary;
  v48 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v49 = [v80 dictionaryWithObjectsAndKeys:{&off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v48, @"UCM_CHAIN_ATTR", 0}];
  return [v52 setWcmWiFiBTCoexProfileTDD:v49];
}

id sub_10011C79C(void *a1)
{
  [a1 setWcmWiFiBTCoexProfileDefault:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileLight:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272618, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyHFP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272990, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002729A8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyA2DP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272990, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002729A8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  v1 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272300, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272300, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272300, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0], @"UCM_CHAIN_ATTR", 0];

  return [a1 setWcmWiFiBTCoexProfileTDD:v1];
}

id sub_10011CF80(void *a1)
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
  [a1 setWcmWiFiCellCoexIssueTable:objc_alloc_init(WCM_WiFiCellCoexIssueBandTable)];
  [objc_msgSend(a1 "wcmWiFiCellCoexIssueTable")];
  [a1 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [a1 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [a1 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [a1 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [a1 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [a1 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_100287350];
  [a1 setWcmCellularScanProtectionWiFiChannels:&off_100287398];
  [a1 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [a1 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [a1 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}];
  [a1 setWcmWiFiBTCoexProfileDefault:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  v2 = &off_100272300;
  [a1 setWcmWiFiBTCoexProfileLight:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v2, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", v2, @"UCM_MODE_WEAK_WL", v2, @"UCM_MODE_WEAK_BT", v2, @"UCM_MODE_WEAK_WL_BT", &off_100272618, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyHFP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v2, @"UCM_VERSION", v2, @"UCM_MODE_STRONG_WL_BT", v2, @"UCM_MODE_WEAK_WL", v2, @"UCM_MODE_WEAK_BT", v2, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272990, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002729A8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyA2DP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v2, @"UCM_VERSION", v2, @"UCM_MODE_STRONG_WL_BT", v2, @"UCM_MODE_WEAK_WL", v2, @"UCM_MODE_WEAK_BT", v2, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272990, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002729A8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  v3 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272300, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272300, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272300, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0], @"UCM_CHAIN_ATTR", 0];

  return [a1 setWcmWiFiBTCoexProfileTDD:v3];
}

id sub_10011D9E8(void *a1)
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
  v48 = a1;
  [a1 setWcmWCI2MWSPriorityAssertOffsetRequest:0];
  v68 = 0;
  v69 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex005_v1.2_NewEnum_v4Macro" options:@"plist") format:2 error:&v68, &v69];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v47[1] = v47;
  __chkstk_darwin(v4, v5, v6);
  v50 = v47 - v7;
  v9 = v47 + v3 * v8 - v7;
  *v9 = 211;
  *(v9 + 4) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 36) = 0u;
  *(v9 + 52) = 0u;
  *(v9 + 68) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 0u;
  *(v9 + 29) = 0;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v49 = 120 * v3;
    do
    {
      memset(v67, 0, 7);
      LODWORD(v66) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueBand", "intValue"}];
      LODWORD(v65) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueType", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellLAT", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellUAT", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellLAT", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellUAT", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v12 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btDiversityBlocklistTypeForC0B0", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btDiversityBlocklistTypeForC0B1", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btDiversityBlocklistTypeForC1B0", "intValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btDiversityBlocklistTypeForC1B1", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btFirstChannelToAvoidForC0B0", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btLastChannelToAvoidForC0B0", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btFirstChannelToAvoidForC0B1", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btLastChannelToAvoidForC0B1", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btFirstChannelToAvoidForC1B0", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btLastChannelToAvoidForC1B0", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btFirstChannelToAvoidForC1B1", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btLastChannelToAvoidForC1B1", "intValue"}];
      v22 = &v50[v10];
      v23 = v64;
      v24 = v65;
      *v22 = v66;
      *(v22 + 1) = v24;
      v22[8] = v23;
      v25 = v62;
      v22[9] = v63;
      v22[10] = v25;
      v26 = v60;
      v22[11] = v61;
      v22[12] = v26;
      *(v22 + 21) = 0;
      *(v22 + 13) = 0;
      *(v22 + 7) = 0;
      *(v22 + 4) = v59;
      *(v22 + 5) = v12;
      *(v22 + 6) = v13;
      v27 = v57;
      v22[56] = v58;
      v22[57] = v27;
      v28 = v55;
      v22[58] = v56;
      v22[59] = v28;
      v29 = v53;
      *(v22 + 15) = v54;
      *(v22 + 16) = v29;
      v30 = v51;
      *(v22 + 17) = v52;
      *(v22 + 18) = v30;
      v22[76] = v14;
      v22[77] = v15;
      v22[78] = v16;
      v22[79] = v17;
      v22[80] = v18;
      v22[81] = v19;
      v22[82] = v20;
      v22[83] = v21;
      *(v22 + 92) = 0;
      *(v22 + 84) = 0;
      *(v22 + 97) = 0;
      *(v22 + 27) = *(v67 + 3);
      *(v22 + 105) = v67[0];
      ++v11;
      v10 += 120;
      *(v22 + 14) = 0;
    }

    while (v49 != v10);
  }

  v31 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v32 = v48;
  [v48 setWcmWiFiCellCoexIssueTable:v31];
  v33 = [v32 wcmWiFiCellCoexIssueTable];
  [v33 configureBy:v50];
  [v32 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [v32 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [v32 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v32 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v32 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [v32 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [v32 setWcmCellularScanProtectionCellFrequencies:&off_1002873E0];
  [v32 setWcmCellularScanProtectionWiFiChannels:&off_100287428];
  [v32 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [v32 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v32 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}];
  v66 = NSDictionary;
  v34 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272300, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272300, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v35 = [v66 dictionaryWithObjectsAndKeys:{&off_100272300, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", v34, @"UCM_CHAIN_ATTR", 0}];
  [v48 setWcmWiFiBTCoexProfileDefault:v35];
  v66 = NSDictionary;
  v36 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272300, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272300, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v37 = [v66 dictionaryWithObjectsAndKeys:{&off_100272300, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272618, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", v36, @"UCM_CHAIN_ATTR", 0}];
  v38 = v48;
  [v48 setWcmWiFiBTCoexProfileLight:v37];
  v65 = NSArray;
  v66 = NSDictionary;
  v39 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272300, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v40 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272300, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v41 = [v65 arrayWithObjects:{v39, v40, 0}];
  [v38 setWcmWiFiBTCoexProfileHeavyHFP:{objc_msgSend(v66, "dictionaryWithObjectsAndKeys:", &off_100272300, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272990, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002729A8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", v41, @"UCM_CHAIN_ATTR", 0)}];
  v66 = NSDictionary;
  v42 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272300, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272300, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v43 = [v66 dictionaryWithObjectsAndKeys:{&off_100272300, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272990, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002729A8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", v42, @"UCM_CHAIN_ATTR", 0}];
  [v48 setWcmWiFiBTCoexProfileHeavyA2DP:v43];
  v66 = NSDictionary;
  v44 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272300, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272300, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v45 = [v66 dictionaryWithObjectsAndKeys:{&off_100272300, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", v44, @"UCM_CHAIN_ATTR", 0}];
  return [v48 setWcmWiFiBTCoexProfileTDD:v45];
}

id sub_10011EA2C(void *a1)
{
  [a1 setWcmWiFiBTCoexProfileDefault:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileLight:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyHFP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyA2DP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  v1 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0], @"UCM_CHAIN_ATTR", 0];

  return [a1 setWcmWiFiBTCoexProfileTDD:v1];
}

id sub_10011F2E4(void *a1)
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
  v54 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v86 = 0;
  v87 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex017_V6WiFiEnh" options:@"plist") format:2 error:&v86, &v87];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v53[1] = v53;
  __chkstk_darwin(v4, v5, v6);
  v56 = v53 - v7;
  v9 = v53 + v3 * v8 - v7;
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
    v55 = 120 * v10;
    do
    {
      v84 = 0;
      v85 = 0;
      v83[0] = 0;
      *(v83 + 3) = 0;
      LODWORD(v82) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      LODWORD(v81) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v80 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v79 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v78 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v77 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v76 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v75 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v74 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v73 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12++), "objectForKey:", @"isWifiEnhBand", "intValue"}];
      v23 = &v56[v11];
      v24 = v80;
      v25 = v81;
      *v23 = v82;
      *(v23 + 1) = v25;
      v23[8] = v24;
      v26 = v78;
      v23[13] = v79;
      *(v23 + 9) = 0;
      v23[14] = v26;
      v27 = v76;
      v23[15] = v77;
      v23[16] = v27;
      v28 = v74;
      v23[17] = v75;
      v23[18] = v28;
      v29 = v72;
      v23[19] = v73;
      v23[20] = v29;
      v30 = v70;
      v23[21] = v71;
      v23[22] = v30;
      v31 = v68;
      v23[23] = v69;
      v23[24] = v31;
      v32 = v66;
      v23[25] = v67;
      v23[26] = v32;
      v33 = v64;
      v23[27] = v65;
      v23[28] = v33;
      *(v23 + 29) = v84;
      v23[31] = v85;
      *(v23 + 4) = v63;
      *(v23 + 5) = v13;
      *(v23 + 6) = v14;
      v34 = v61;
      v23[56] = v62;
      v23[57] = v34;
      v35 = v59;
      v23[58] = v60;
      v23[59] = v35;
      v36 = v58;
      *(v23 + 15) = 0;
      *(v23 + 16) = v36;
      *(v23 + 68) = 0;
      *(v23 + 38) = 0;
      v23[78] = v57;
      v23[79] = v15;
      *(v23 + 10) = 0;
      v23[88] = 0;
      v23[89] = v16;
      v23[90] = v17;
      v23[91] = v18;
      v23[92] = 0;
      v23[93] = v19;
      v23[94] = v20;
      v23[95] = v21;
      v23[96] = v22 != 0;
      *(v23 + 97) = 0;
      *(v23 + 27) = *(v83 + 3);
      *(v23 + 105) = v83[0];
      v11 += 120;
      *(v23 + 14) = 0;
    }

    while (v55 != v11);
  }

  v37 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v38 = v54;
  [v54 setWcmWiFiCellCoexIssueTable:v37];
  v39 = [v38 wcmWiFiCellCoexIssueTable];
  [v39 configureBy:v56];
  [v38 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [v38 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [v38 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v38 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v38 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [v38 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [v38 setWcmCellularScanProtectionCellFrequencies:&off_100287458];
  [v38 setWcmCellularScanProtectionCellFrequenciesforBT:&off_100287488];
  [v38 setWcmCellularScanProtectionWiFiChannels:&off_1002874B8];
  [v38 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [v38 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v38 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}];
  v82 = NSDictionary;
  v40 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v41 = [v82 dictionaryWithObjectsAndKeys:{&off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v40, @"UCM_CHAIN_ATTR", 0}];
  v42 = v54;
  [v54 setWcmWiFiBTCoexProfileDefault:v41];
  v82 = NSDictionary;
  v43 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  [v42 setWcmWiFiBTCoexProfileLight:{objc_msgSend(v82, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v43, @"UCM_CHAIN_ATTR", 0)}];
  v81 = NSArray;
  v82 = NSDictionary;
  v44 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v45 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v46 = [v81 arrayWithObjects:{v44, v45, 0}];
  v47 = [v82 dictionaryWithObjectsAndKeys:{&off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v46, @"UCM_CHAIN_ATTR", 0}];
  v48 = v54;
  [v54 setWcmWiFiBTCoexProfileHeavyHFP:v47];
  v82 = NSDictionary;
  v49 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  [v48 setWcmWiFiBTCoexProfileHeavyA2DP:{objc_msgSend(v82, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v49, @"UCM_CHAIN_ATTR", 0)}];
  v82 = NSDictionary;
  v50 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v51 = [v82 dictionaryWithObjectsAndKeys:{&off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v50, @"UCM_CHAIN_ATTR", 0}];
  return [v54 setWcmWiFiBTCoexProfileTDD:v51];
}

id sub_10012066C(void *a1)
{
  [a1 setWcmWiFiBTCoexProfileDefault:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_1002723F0, @"UCM_MODE_WEAK_WL", &off_1002723F0, @"UCM_MODE_WEAK_BT", &off_1002723F0, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002729C0, @"UCM_DESENSE_STRONG_RSSI", &off_1002729C0, @"UCM_DESENSE_WEAK_RSSI", &off_1002724F8, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_ACK_PWR_WEAK_RSSI", &off_1002724F8, @"UCM_TX_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002729C0, @"UCM_DESENSE_STRONG_RSSI", &off_1002729C0, @"UCM_DESENSE_WEAK_RSSI", &off_1002724F8, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_ACK_PWR_WEAK_RSSI", &off_1002724F8, @"UCM_TX_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileLight:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_1002723F0, @"UCM_MODE_WEAK_WL", &off_1002723F0, @"UCM_MODE_WEAK_BT", &off_1002723F0, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272990, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002729A8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723D8, @"UCM_DESENSE_STRONG_RSSI", &off_1002729C0, @"UCM_DESENSE_WEAK_RSSI", &off_1002729C0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002729C0, @"UCM_ACK_PWR_WEAK_RSSI", &off_1002724F8, @"UCM_TX_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723D8, @"UCM_DESENSE_STRONG_RSSI", &off_1002729C0, @"UCM_DESENSE_WEAK_RSSI", &off_1002722D0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_ACK_PWR_WEAK_RSSI", &off_1002724F8, @"UCM_TX_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyHFP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_1002723F0, @"UCM_MODE_WEAK_WL", &off_1002723F0, @"UCM_MODE_WEAK_BT", &off_1002723F0, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272990, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002729A8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723D8, @"UCM_DESENSE_STRONG_RSSI", &off_1002729C0, @"UCM_DESENSE_WEAK_RSSI", &off_1002729C0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002729C0, @"UCM_ACK_PWR_WEAK_RSSI", &off_1002724F8, @"UCM_TX_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723D8, @"UCM_DESENSE_STRONG_RSSI", &off_1002729C0, @"UCM_DESENSE_WEAK_RSSI", &off_1002722D0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_ACK_PWR_WEAK_RSSI", &off_1002724F8, @"UCM_TX_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyA2DP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", &off_1002723F0, @"UCM_MODE_STRONG_WL_BT", &off_1002723F0, @"UCM_MODE_WEAK_WL", &off_1002723F0, @"UCM_MODE_WEAK_BT", &off_1002723F0, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_DESENSE_STRONG_RSSI", &off_1002729C0, @"UCM_DESENSE_WEAK_RSSI", &off_1002724F8, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_ACK_PWR_WEAK_RSSI", &off_1002724F8, @"UCM_TX_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_DESENSE_STRONG_RSSI", &off_1002729C0, @"UCM_DESENSE_WEAK_RSSI", &off_1002724F8, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_ACK_PWR_WEAK_RSSI", &off_1002724F8, @"UCM_TX_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  v1 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272330, @"UCM_VERSION", &off_1002723F0, @"UCM_MODE_STRONG_WL_BT", &off_1002723F0, @"UCM_MODE_WEAK_WL", &off_1002723F0, @"UCM_MODE_WEAK_BT", &off_1002723F0, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002729C0, @"UCM_DESENSE_STRONG_RSSI", &off_1002729C0, @"UCM_DESENSE_WEAK_RSSI", &off_1002724F8, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_ACK_PWR_WEAK_RSSI", &off_1002724F8, @"UCM_TX_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_1002729C0, @"UCM_DESENSE_STRONG_RSSI", &off_1002729C0, @"UCM_DESENSE_WEAK_RSSI", &off_1002724F8, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_ACK_PWR_WEAK_RSSI", &off_1002724F8, @"UCM_TX_PWR_STRONG_RSSI", &off_1002724F8, @"UCM_TX_PWR_WEAK_RSSI", 0], 0], @"UCM_CHAIN_ATTR", 0];

  return [a1 setWcmWiFiBTCoexProfileTDD:v1];
}

id sub_100120F84(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272930];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  v43 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v83 = 0;
  v84 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex046_V7WiFiEnh" options:@"plist") format:2 error:&v83, &v84];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v42[1] = v42;
  __chkstk_darwin(v4, v5, v6);
  v45 = v42 - v7;
  v9 = v42 + v3 * v8 - v7;
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
    v44 = 120 * v10;
    do
    {
      v79 = v11;
      v81 = 0;
      v82 = 0;
      v80[0] = 0;
      *(v80 + 3) = 0;
      LODWORD(v78) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v77 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v76 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v75 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v74 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v73 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v24 = v79;
      ++v12;
      v25 = &v79[v45];
      v26 = v77;
      *v25 = v78;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v75;
      v25[8] = v76;
      v25[13] = v26;
      LOBYTE(v26) = v73;
      v25[14] = v74;
      v25[15] = v26;
      LOBYTE(v26) = v71;
      v25[16] = v72;
      v25[17] = v26;
      LOBYTE(v26) = v69;
      v25[18] = v70;
      v25[19] = v26;
      LOBYTE(v26) = v67;
      v25[20] = v68;
      v25[21] = v26;
      LOBYTE(v26) = v65;
      v25[22] = v66;
      v25[23] = v26;
      LOBYTE(v26) = v63;
      v25[24] = v64;
      v25[25] = v26;
      LOBYTE(v26) = v61;
      v25[26] = v62;
      v25[27] = v26;
      v25[28] = v60;
      *(v25 + 29) = v81;
      v25[31] = v82;
      *(v25 + 4) = v59;
      LOBYTE(v26) = v57;
      v25[56] = v58;
      v25[57] = v26;
      LOBYTE(v26) = v55;
      v25[58] = v56;
      v25[59] = v26;
      *(v25 + 16) = v54;
      v25[78] = v53;
      v25[79] = v52;
      v25[89] = v51;
      v25[90] = v50;
      v25[91] = v49;
      v25[93] = v48;
      v25[94] = v47;
      v25[95] = v46;
      v25[96] = v15;
      v25[97] = v16;
      v25[98] = v17;
      v25[99] = v18;
      v25[100] = v19;
      v25[101] = v20;
      v25[102] = v21;
      v25[103] = v22;
      v25[104] = v23;
      *(v25 + 27) = *(v80 + 3);
      *(v25 + 105) = v80[0];
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

    while (v44 != v11);
  }

  v27 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v28 = v43;
  [v43 setWcmWiFiCellCoexIssueTable:v27];
  v29 = [v28 wcmWiFiCellCoexIssueTable];
  [v29 configureBy:v45];
  [v28 setWcmCellRc1CoexIssueTable:0];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [v28 setWcmCellularCoexB40ARange:{0.0, 0.0}];
  [v28 setWcmCellularCoexB40BRange:{0.0, 0.0}];
  [v28 setWcmCellularCoexB41A1Range:{0.0, 0.0}];
  [v28 setWcmCellularCoexB41A2Range:{0.0, 0.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_100287518];
  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:&off_100287578];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_1002875D8];
  [v28 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_100287638];
  [v28 setWcmWiFiScanThrottlingChannelIndices:0];
  [v28 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [v28 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v28 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}];
  v78 = NSArray;
  v79 = NSDictionary;
  v30 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v31 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v32 = [v78 arrayWithObjects:{v30, v31, 0}];
  [v28 setWcmWiFiBTCoexProfileDefault:{objc_msgSend(v79, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v32, @"UCM_CHAIN_ATTR", 0)}];
  v79 = NSDictionary;
  v33 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  [v28 setWcmWiFiBTCoexProfileLight:{objc_msgSend(v79, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v33, @"UCM_CHAIN_ATTR", 0)}];
  v78 = NSArray;
  v79 = NSDictionary;
  v34 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v35 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v36 = [v78 arrayWithObjects:{v34, v35, 0}];
  [v28 setWcmWiFiBTCoexProfileHeavyHFP:{objc_msgSend(v79, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v36, @"UCM_CHAIN_ATTR", 0)}];
  v79 = NSDictionary;
  v37 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  [v28 setWcmWiFiBTCoexProfileHeavyA2DP:{objc_msgSend(v79, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v37, @"UCM_CHAIN_ATTR", 0)}];
  v78 = NSArray;
  v79 = NSDictionary;
  v38 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v39 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v40 = [v78 arrayWithObjects:{v38, v39, 0}];
  return [v28 setWcmWiFiBTCoexProfileTDD:{objc_msgSend(v79, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v40, @"UCM_CHAIN_ATTR", 0)}];
}

id sub_100122490(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWiFiSupportFrameConfig:1];
  [a1 setWcmWiFiSupportWciSignalingConfig:1];
  [a1 setWcmWiFiRxProtectMode:&off_1002723F0];
  [a1 setWcmWiFiTxOnIndication:&off_100272300];
  [a1 setWcmWiFiScanJoinProtectDuration:&off_1002723F0];
  [a1 setWcmWiFiEnvelopeIndicationTimer:&off_100272360];
  [a1 setWcmWiFiEnvelopeOnIndication:&off_100272300];
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
  [a1 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [a1 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [a1 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [a1 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [a1 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [a1 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_100287680];
  [a1 setWcmCellularScanProtectionWiFiChannels:&off_1002876C8];
  [a1 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [a1 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  v2 = [NSNumber numberWithBool:1];

  return [a1 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:v2];
}

id sub_1001226C0(void *a1)
{
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWiFiSupportFrameConfig:1];
  [a1 setWcmWiFiSupportWciSignalingConfig:1];
  [a1 setWcmWiFiRxProtectMode:&off_1002723F0];
  [a1 setWcmWiFiTxOnIndication:&off_100272300];
  [a1 setWcmWiFiScanJoinProtectDuration:&off_1002723F0];
  [a1 setWcmWiFiEnvelopeIndicationTimer:&off_100272360];
  [a1 setWcmWiFiEnvelopeOnIndication:&off_100272300];
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
  [a1 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [a1 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [a1 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [a1 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [a1 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [a1 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_100287710];
  [a1 setWcmCellularScanProtectionWiFiChannels:&off_100287758];
  [a1 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [a1 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  v2 = [NSNumber numberWithBool:1];

  return [a1 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:v2];
}

id sub_1001228F0(void *a1)
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
  [a1 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [a1 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [a1 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [a1 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [a1 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [a1 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_1002877A0];
  [a1 setWcmCellularScanProtectionWiFiChannels:&off_1002877E8];
  [a1 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [a1 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  v2 = [NSNumber numberWithBool:1];

  return [a1 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:v2];
}

id sub_100122BEC(void *a1)
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
  [a1 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [a1 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [a1 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [a1 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [a1 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [a1 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_100287830];
  [a1 setWcmCellularScanProtectionWiFiChannels:&off_100287878];
  [a1 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [a1 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  v2 = [NSNumber numberWithBool:1];

  return [a1 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:v2];
}

id sub_100122EE8(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272930];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  v49 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v78 = 0;
  v79 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex001_v1.1_NewEnum_v4Macro" options:@"plist") format:2 error:&v78, &v79];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v48 = &v48;
  __chkstk_darwin(v4, v5, v6);
  v51 = &v48 - v7;
  v9 = &v48 + v3 * v8 - v7;
  *v9 = 211;
  *(v9 + 4) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 36) = 0u;
  *(v9 + 52) = 0u;
  *(v9 + 68) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 0u;
  *(v9 + 29) = 0;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v50 = 120 * v3;
    do
    {
      v76 = 0;
      v77 = 0;
      v75[0] = 0;
      *(v75 + 3) = 0;
      LODWORD(v74) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueBand", "intValue"}];
      LODWORD(v73) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueType", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v12 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"CellAntBlk", "intValue"}];
      v22 = &v51[v10];
      v23 = v72;
      v24 = v73;
      *v22 = v74;
      *(v22 + 1) = v24;
      v22[8] = v23;
      v25 = v70;
      v22[13] = v71;
      v22[14] = v25;
      v26 = v68;
      v22[15] = v69;
      v22[16] = v26;
      v27 = v66;
      v22[17] = v67;
      v22[18] = v27;
      v28 = v64;
      v22[19] = v65;
      v22[20] = v28;
      v29 = v62;
      v22[21] = v63;
      v22[22] = v29;
      v30 = v60;
      v22[23] = v61;
      v22[24] = v30;
      v31 = v58;
      v22[25] = v59;
      v22[26] = v31;
      v32 = v56;
      v22[27] = v57;
      v22[28] = v32;
      *(v22 + 29) = v76;
      v22[31] = v77;
      *(v22 + 4) = v55;
      v33 = v53;
      v22[56] = v54;
      v22[57] = v33;
      v22[58] = v52;
      v22[59] = v14;
      *(v22 + 15) = 0;
      *(v22 + 16) = v15;
      v22[78] = v16;
      v22[79] = v17;
      v22[89] = v18;
      v22[90] = v19;
      v22[91] = v20;
      v22[93] = v21;
      *(v22 + 27) = *(v75 + 3);
      *(v22 + 105) = v75[0];
      *(v22 + 9) = 0;
      *(v22 + 5) = v12;
      *(v22 + 6) = v13;
      *(v22 + 68) = 0;
      *(v22 + 38) = 0;
      *(v22 + 10) = 0;
      v22[88] = 0;
      v22[92] = 0;
      *(v22 + 94) = 0;
      *(v22 + 101) = 0;
      *(v22 + 14) = 0;
      ++v11;
      v10 += 120;
    }

    while (v50 != v10);
  }

  v34 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v35 = v49;
  [v49 setWcmWiFiCellCoexIssueTable:v34];
  v36 = [v35 wcmWiFiCellCoexIssueTable];
  [v36 configureBy:v51];
  [v35 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [v35 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [v35 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v35 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v35 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [v35 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [v35 setWcmCellularScanProtectionCellFrequencies:&off_100287908];
  [v35 setWcmCellularScanProtectionWiFiChannels:&off_100287998];
  [v35 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [v35 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v35 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}];
  v73 = NSArray;
  v74 = NSDictionary;
  v37 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v38 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v39 = [v73 arrayWithObjects:{v37, v38, 0}];
  [v35 setWcmWiFiBTCoexProfileDefault:{objc_msgSend(v74, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v39, @"UCM_CHAIN_ATTR", 0)}];
  v74 = NSDictionary;
  v40 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  [v35 setWcmWiFiBTCoexProfileLight:{objc_msgSend(v74, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v40, @"UCM_CHAIN_ATTR", 0)}];
  v74 = NSDictionary;
  v41 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v42 = [v74 dictionaryWithObjectsAndKeys:{&off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v41, @"UCM_CHAIN_ATTR", 0}];
  v43 = v49;
  [v49 setWcmWiFiBTCoexProfileHeavyHFP:v42];
  v74 = NSDictionary;
  v44 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  [v43 setWcmWiFiBTCoexProfileHeavyA2DP:{objc_msgSend(v74, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v44, @"UCM_CHAIN_ATTR", 0)}];
  v74 = NSDictionary;
  v45 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v46 = [v74 dictionaryWithObjectsAndKeys:{&off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v45, @"UCM_CHAIN_ATTR", 0}];
  return [v49 setWcmWiFiBTCoexProfileTDD:v46];
}

id sub_1001241DC(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272930];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  v49 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v78 = 0;
  v79 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex001_v1.1_NewEnum_v4Macro" options:@"plist") format:2 error:&v78, &v79];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v48 = &v48;
  __chkstk_darwin(v4, v5, v6);
  v51 = &v48 - v7;
  v9 = &v48 + v3 * v8 - v7;
  *v9 = 211;
  *(v9 + 4) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 36) = 0u;
  *(v9 + 52) = 0u;
  *(v9 + 68) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 0u;
  *(v9 + 29) = 0;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v50 = 120 * v3;
    do
    {
      v76 = 0;
      v77 = 0;
      v75[0] = 0;
      *(v75 + 3) = 0;
      LODWORD(v74) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueBand", "intValue"}];
      LODWORD(v73) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueType", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v12 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"CellAntBlk", "intValue"}];
      v22 = &v51[v10];
      v23 = v72;
      v24 = v73;
      *v22 = v74;
      *(v22 + 1) = v24;
      v22[8] = v23;
      v25 = v70;
      v22[13] = v71;
      v22[14] = v25;
      v26 = v68;
      v22[15] = v69;
      v22[16] = v26;
      v27 = v66;
      v22[17] = v67;
      v22[18] = v27;
      v28 = v64;
      v22[19] = v65;
      v22[20] = v28;
      v29 = v62;
      v22[21] = v63;
      v22[22] = v29;
      v30 = v60;
      v22[23] = v61;
      v22[24] = v30;
      v31 = v58;
      v22[25] = v59;
      v22[26] = v31;
      v32 = v56;
      v22[27] = v57;
      v22[28] = v32;
      *(v22 + 29) = v76;
      v22[31] = v77;
      *(v22 + 4) = v55;
      v33 = v53;
      v22[56] = v54;
      v22[57] = v33;
      v22[58] = v52;
      v22[59] = v14;
      *(v22 + 15) = 0;
      *(v22 + 16) = v15;
      v22[78] = v16;
      v22[79] = v17;
      v22[89] = v18;
      v22[90] = v19;
      v22[91] = v20;
      v22[93] = v21;
      *(v22 + 27) = *(v75 + 3);
      *(v22 + 105) = v75[0];
      *(v22 + 9) = 0;
      *(v22 + 5) = v12;
      *(v22 + 6) = v13;
      *(v22 + 68) = 0;
      *(v22 + 38) = 0;
      *(v22 + 10) = 0;
      v22[88] = 0;
      v22[92] = 0;
      *(v22 + 94) = 0;
      *(v22 + 101) = 0;
      *(v22 + 14) = 0;
      ++v11;
      v10 += 120;
    }

    while (v50 != v10);
  }

  v34 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v35 = v49;
  [v49 setWcmWiFiCellCoexIssueTable:v34];
  v36 = [v35 wcmWiFiCellCoexIssueTable];
  [v36 configureBy:v51];
  [v35 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [v35 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [v35 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v35 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v35 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [v35 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [v35 setWcmCellularScanProtectionCellFrequencies:&off_100287A28];
  [v35 setWcmCellularScanProtectionWiFiChannels:&off_100287AB8];
  [v35 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [v35 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v35 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}];
  v73 = NSArray;
  v74 = NSDictionary;
  v37 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v38 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v39 = [v73 arrayWithObjects:{v37, v38, 0}];
  [v35 setWcmWiFiBTCoexProfileDefault:{objc_msgSend(v74, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v39, @"UCM_CHAIN_ATTR", 0)}];
  v74 = NSDictionary;
  v40 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  [v35 setWcmWiFiBTCoexProfileLight:{objc_msgSend(v74, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v40, @"UCM_CHAIN_ATTR", 0)}];
  v74 = NSDictionary;
  v41 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v42 = [v74 dictionaryWithObjectsAndKeys:{&off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v41, @"UCM_CHAIN_ATTR", 0}];
  v43 = v49;
  [v49 setWcmWiFiBTCoexProfileHeavyHFP:v42];
  v74 = NSDictionary;
  v44 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  [v43 setWcmWiFiBTCoexProfileHeavyA2DP:{objc_msgSend(v74, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v44, @"UCM_CHAIN_ATTR", 0)}];
  v74 = NSDictionary;
  v45 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v46 = [v74 dictionaryWithObjectsAndKeys:{&off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v45, @"UCM_CHAIN_ATTR", 0}];
  return [v49 setWcmWiFiBTCoexProfileTDD:v46];
}

id sub_1001254D0(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272930];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  v49 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v78 = 0;
  v79 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex002_v1_NewEnum_v4Macro" options:@"plist") format:2 error:&v78, &v79];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v48 = &v48;
  __chkstk_darwin(v4, v5, v6);
  v51 = &v48 - v7;
  v9 = &v48 + v3 * v8 - v7;
  *v9 = 211;
  *(v9 + 4) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 36) = 0u;
  *(v9 + 52) = 0u;
  *(v9 + 68) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 0u;
  *(v9 + 29) = 0;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v50 = 120 * v3;
    do
    {
      v76 = 0;
      v77 = 0;
      v75[0] = 0;
      *(v75 + 3) = 0;
      LODWORD(v74) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueBand", "intValue"}];
      LODWORD(v73) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueType", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v12 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"CellAntBlk", "intValue"}];
      v22 = &v51[v10];
      v23 = v72;
      v24 = v73;
      *v22 = v74;
      *(v22 + 1) = v24;
      v22[8] = v23;
      v25 = v70;
      v22[13] = v71;
      v22[14] = v25;
      v26 = v68;
      v22[15] = v69;
      v22[16] = v26;
      v27 = v66;
      v22[17] = v67;
      v22[18] = v27;
      v28 = v64;
      v22[19] = v65;
      v22[20] = v28;
      v29 = v62;
      v22[21] = v63;
      v22[22] = v29;
      v30 = v60;
      v22[23] = v61;
      v22[24] = v30;
      v31 = v58;
      v22[25] = v59;
      v22[26] = v31;
      v32 = v56;
      v22[27] = v57;
      v22[28] = v32;
      *(v22 + 29) = v76;
      v22[31] = v77;
      *(v22 + 4) = v55;
      v33 = v53;
      v22[56] = v54;
      v22[57] = v33;
      v22[58] = v52;
      v22[59] = v14;
      *(v22 + 15) = 0;
      *(v22 + 16) = v15;
      v22[78] = v16;
      v22[79] = v17;
      v22[89] = v18;
      v22[90] = v19;
      v22[91] = v20;
      v22[93] = v21;
      *(v22 + 27) = *(v75 + 3);
      *(v22 + 105) = v75[0];
      *(v22 + 9) = 0;
      *(v22 + 5) = v12;
      *(v22 + 6) = v13;
      *(v22 + 68) = 0;
      *(v22 + 38) = 0;
      *(v22 + 10) = 0;
      v22[88] = 0;
      v22[92] = 0;
      *(v22 + 94) = 0;
      *(v22 + 101) = 0;
      *(v22 + 14) = 0;
      ++v11;
      v10 += 120;
    }

    while (v50 != v10);
  }

  v34 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v35 = v49;
  [v49 setWcmWiFiCellCoexIssueTable:v34];
  v36 = [v35 wcmWiFiCellCoexIssueTable];
  [v36 configureBy:v51];
  [v35 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [v35 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [v35 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v35 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v35 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [v35 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [v35 setWcmCellularScanProtectionCellFrequencies:&off_100287B48];
  [v35 setWcmCellularScanProtectionWiFiChannels:&off_100287BD8];
  [v35 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [v35 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v35 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}];
  v73 = NSArray;
  v74 = NSDictionary;
  v37 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v38 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v39 = [v73 arrayWithObjects:{v37, v38, 0}];
  [v35 setWcmWiFiBTCoexProfileDefault:{objc_msgSend(v74, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v39, @"UCM_CHAIN_ATTR", 0)}];
  v74 = NSDictionary;
  v40 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  [v35 setWcmWiFiBTCoexProfileLight:{objc_msgSend(v74, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v40, @"UCM_CHAIN_ATTR", 0)}];
  v74 = NSDictionary;
  v41 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v42 = [v74 dictionaryWithObjectsAndKeys:{&off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v41, @"UCM_CHAIN_ATTR", 0}];
  v43 = v49;
  [v49 setWcmWiFiBTCoexProfileHeavyHFP:v42];
  v74 = NSDictionary;
  v44 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  [v43 setWcmWiFiBTCoexProfileHeavyA2DP:{objc_msgSend(v74, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v44, @"UCM_CHAIN_ATTR", 0)}];
  v74 = NSDictionary;
  v45 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v46 = [v74 dictionaryWithObjectsAndKeys:{&off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v45, @"UCM_CHAIN_ATTR", 0}];
  return [v49 setWcmWiFiBTCoexProfileTDD:v46];
}

id sub_1001267C4(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272930];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  v49 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v78 = 0;
  v79 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex002_v1_NewEnum_v4Macro" options:@"plist") format:2 error:&v78, &v79];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v48 = &v48;
  __chkstk_darwin(v4, v5, v6);
  v51 = &v48 - v7;
  v9 = &v48 + v3 * v8 - v7;
  *v9 = 211;
  *(v9 + 4) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 36) = 0u;
  *(v9 + 52) = 0u;
  *(v9 + 68) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 0u;
  *(v9 + 29) = 0;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v50 = 120 * v3;
    do
    {
      v76 = 0;
      v77 = 0;
      v75[0] = 0;
      *(v75 + 3) = 0;
      LODWORD(v74) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueBand", "intValue"}];
      LODWORD(v73) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueType", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v12 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"CellAntBlk", "intValue"}];
      v22 = &v51[v10];
      v23 = v72;
      v24 = v73;
      *v22 = v74;
      *(v22 + 1) = v24;
      v22[8] = v23;
      v25 = v70;
      v22[13] = v71;
      v22[14] = v25;
      v26 = v68;
      v22[15] = v69;
      v22[16] = v26;
      v27 = v66;
      v22[17] = v67;
      v22[18] = v27;
      v28 = v64;
      v22[19] = v65;
      v22[20] = v28;
      v29 = v62;
      v22[21] = v63;
      v22[22] = v29;
      v30 = v60;
      v22[23] = v61;
      v22[24] = v30;
      v31 = v58;
      v22[25] = v59;
      v22[26] = v31;
      v32 = v56;
      v22[27] = v57;
      v22[28] = v32;
      *(v22 + 29) = v76;
      v22[31] = v77;
      *(v22 + 4) = v55;
      v33 = v53;
      v22[56] = v54;
      v22[57] = v33;
      v22[58] = v52;
      v22[59] = v14;
      *(v22 + 15) = 0;
      *(v22 + 16) = v15;
      v22[78] = v16;
      v22[79] = v17;
      v22[89] = v18;
      v22[90] = v19;
      v22[91] = v20;
      v22[93] = v21;
      *(v22 + 27) = *(v75 + 3);
      *(v22 + 105) = v75[0];
      *(v22 + 9) = 0;
      *(v22 + 5) = v12;
      *(v22 + 6) = v13;
      *(v22 + 68) = 0;
      *(v22 + 38) = 0;
      *(v22 + 10) = 0;
      v22[88] = 0;
      v22[92] = 0;
      *(v22 + 94) = 0;
      *(v22 + 101) = 0;
      *(v22 + 14) = 0;
      ++v11;
      v10 += 120;
    }

    while (v50 != v10);
  }

  v34 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v35 = v49;
  [v49 setWcmWiFiCellCoexIssueTable:v34];
  v36 = [v35 wcmWiFiCellCoexIssueTable];
  [v36 configureBy:v51];
  [v35 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [v35 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [v35 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v35 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v35 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [v35 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [v35 setWcmCellularScanProtectionCellFrequencies:&off_100287C68];
  [v35 setWcmCellularScanProtectionWiFiChannels:&off_100287CF8];
  [v35 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [v35 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v35 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}];
  v73 = NSArray;
  v74 = NSDictionary;
  v37 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v38 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v39 = [v73 arrayWithObjects:{v37, v38, 0}];
  [v35 setWcmWiFiBTCoexProfileDefault:{objc_msgSend(v74, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v39, @"UCM_CHAIN_ATTR", 0)}];
  v74 = NSDictionary;
  v40 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  [v35 setWcmWiFiBTCoexProfileLight:{objc_msgSend(v74, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v40, @"UCM_CHAIN_ATTR", 0)}];
  v74 = NSDictionary;
  v41 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v42 = [v74 dictionaryWithObjectsAndKeys:{&off_100272318, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v41, @"UCM_CHAIN_ATTR", 0}];
  v43 = v49;
  [v49 setWcmWiFiBTCoexProfileHeavyHFP:v42];
  v74 = NSDictionary;
  v44 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_LEVEL", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  [v43 setWcmWiFiBTCoexProfileHeavyA2DP:{objc_msgSend(v74, "dictionaryWithObjectsAndKeys:", &off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v44, @"UCM_CHAIN_ATTR", 0)}];
  v74 = NSDictionary;
  v45 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_LEVEL", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v46 = [v74 dictionaryWithObjectsAndKeys:{&off_100272318, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v45, @"UCM_CHAIN_ATTR", 0}];
  return [v49 setWcmWiFiBTCoexProfileTDD:v46];
}

id sub_100127AB8(void *a1)
{
  [a1 setWcmWiFiBTCoexProfileDefault:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileLight:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyHFP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyA2DP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileTDD:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  v1 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002723F0, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0], @"UCM_CHAIN_ATTR", 0];

  return [a1 setWcmWiFiBTCoexProfileDefault5G:v1];
}

id sub_1001285A4(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272930];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  v52 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v92 = 0;
  v93 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex018_V7WiFiEnh" options:@"plist") format:2 error:&v92, &v93];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v51[1] = v51;
  __chkstk_darwin(v4, v5, v6);
  v54 = v51 - v7;
  v9 = v51 + v3 * v8 - v7;
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
    v53 = 120 * v10;
    do
    {
      v88 = v11;
      v90 = 0;
      v91 = 0;
      v89[0] = 0;
      *(v89 + 3) = 0;
      LODWORD(v87) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v86 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v85 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v84 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v83 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v82 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v81 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v80 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v79 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v78 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v77 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v76 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v75 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v74 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v73 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v24 = v88;
      ++v12;
      v25 = &v88[v54];
      v26 = v86;
      *v25 = v87;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v84;
      v25[8] = v85;
      v25[13] = v26;
      LOBYTE(v26) = v82;
      v25[14] = v83;
      v25[15] = v26;
      LOBYTE(v26) = v80;
      v25[16] = v81;
      v25[17] = v26;
      LOBYTE(v26) = v78;
      v25[18] = v79;
      v25[19] = v26;
      LOBYTE(v26) = v76;
      v25[20] = v77;
      v25[21] = v26;
      LOBYTE(v26) = v74;
      v25[22] = v75;
      v25[23] = v26;
      LOBYTE(v26) = v72;
      v25[24] = v73;
      v25[25] = v26;
      LOBYTE(v26) = v70;
      v25[26] = v71;
      v25[27] = v26;
      v25[28] = v69;
      *(v25 + 29) = v90;
      v25[31] = v91;
      *(v25 + 4) = v68;
      LOBYTE(v26) = v66;
      v25[56] = v67;
      v25[57] = v26;
      LOBYTE(v26) = v64;
      v25[58] = v65;
      v25[59] = v26;
      *(v25 + 16) = v63;
      v25[78] = v62;
      v25[79] = v61;
      v25[89] = v60;
      v25[90] = v59;
      v25[91] = v58;
      v25[93] = v57;
      v25[94] = v56;
      v25[95] = v55;
      v25[96] = v15;
      v25[97] = v16;
      v25[98] = v17;
      v25[99] = v18;
      v25[100] = v19;
      v25[101] = v20;
      v25[102] = v21;
      v25[103] = v22;
      v25[104] = v23;
      *(v25 + 27) = *(v89 + 3);
      *(v25 + 105) = v89[0];
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

    while (v53 != v11);
  }

  v27 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v28 = v52;
  [v52 setWcmWiFiCellCoexIssueTable:v27];
  v29 = [v28 wcmWiFiCellCoexIssueTable];
  [v29 configureBy:v54];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [v28 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [v28 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_100287D28];
  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:&off_100287D58];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_100287D88];
  [v28 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_100287DB8];
  [v28 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [v28 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v28 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}];
  v87 = NSArray;
  v88 = NSDictionary;
  v30 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v31 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v32 = [v87 arrayWithObjects:{v30, v31, 0}];
  v33 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v32, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileDefault:v33];
  v87 = NSArray;
  v88 = NSDictionary;
  v34 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v35 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v36 = [v87 arrayWithObjects:{v34, v35, 0}];
  v37 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v36, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileLight:v37];
  v87 = NSArray;
  v88 = NSDictionary;
  v38 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v39 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v40 = [v87 arrayWithObjects:{v38, v39, 0}];
  v41 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v40, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileHeavyHFP:v41];
  v87 = NSArray;
  v88 = NSDictionary;
  v42 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v43 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v44 = [v87 arrayWithObjects:{v42, v43, 0}];
  v45 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v44, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileHeavyA2DP:v45];
  v88 = NSDictionary;
  v46 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v47 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v46, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileTDD:v47];
  v88 = NSDictionary;
  v48 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v49 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002723F0, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v48, @"UCM_CHAIN_ATTR", 0}];
  return [v52 setWcmWiFiBTCoexProfileDefault5G:v49];
}

id sub_100129CB4(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272930];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  v52 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v92 = 0;
  v93 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex018_V7WiFiEnh" options:@"plist") format:2 error:&v92, &v93];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v51[1] = v51;
  __chkstk_darwin(v4, v5, v6);
  v54 = v51 - v7;
  v9 = v51 + v3 * v8 - v7;
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
    v53 = 120 * v10;
    do
    {
      v88 = v11;
      v90 = 0;
      v91 = 0;
      v89[0] = 0;
      *(v89 + 3) = 0;
      LODWORD(v87) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v86 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v85 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v84 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v83 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v82 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v81 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v80 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v79 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v78 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v77 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v76 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v75 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v74 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v73 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v24 = v88;
      ++v12;
      v25 = &v88[v54];
      v26 = v86;
      *v25 = v87;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v84;
      v25[8] = v85;
      v25[13] = v26;
      LOBYTE(v26) = v82;
      v25[14] = v83;
      v25[15] = v26;
      LOBYTE(v26) = v80;
      v25[16] = v81;
      v25[17] = v26;
      LOBYTE(v26) = v78;
      v25[18] = v79;
      v25[19] = v26;
      LOBYTE(v26) = v76;
      v25[20] = v77;
      v25[21] = v26;
      LOBYTE(v26) = v74;
      v25[22] = v75;
      v25[23] = v26;
      LOBYTE(v26) = v72;
      v25[24] = v73;
      v25[25] = v26;
      LOBYTE(v26) = v70;
      v25[26] = v71;
      v25[27] = v26;
      v25[28] = v69;
      *(v25 + 29) = v90;
      v25[31] = v91;
      *(v25 + 4) = v68;
      LOBYTE(v26) = v66;
      v25[56] = v67;
      v25[57] = v26;
      LOBYTE(v26) = v64;
      v25[58] = v65;
      v25[59] = v26;
      *(v25 + 16) = v63;
      v25[78] = v62;
      v25[79] = v61;
      v25[89] = v60;
      v25[90] = v59;
      v25[91] = v58;
      v25[93] = v57;
      v25[94] = v56;
      v25[95] = v55;
      v25[96] = v15;
      v25[97] = v16;
      v25[98] = v17;
      v25[99] = v18;
      v25[100] = v19;
      v25[101] = v20;
      v25[102] = v21;
      v25[103] = v22;
      v25[104] = v23;
      *(v25 + 27) = *(v89 + 3);
      *(v25 + 105) = v89[0];
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

    while (v53 != v11);
  }

  v27 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v28 = v52;
  [v52 setWcmWiFiCellCoexIssueTable:v27];
  v29 = [v28 wcmWiFiCellCoexIssueTable];
  [v29 configureBy:v54];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [v28 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [v28 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_100287DE8];
  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:&off_100287E18];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_100287E48];
  [v28 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_100287E78];
  [v28 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [v28 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v28 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}];
  v87 = NSArray;
  v88 = NSDictionary;
  v30 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v31 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v32 = [v87 arrayWithObjects:{v30, v31, 0}];
  v33 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v32, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileDefault:v33];
  v87 = NSArray;
  v88 = NSDictionary;
  v34 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v35 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v36 = [v87 arrayWithObjects:{v34, v35, 0}];
  v37 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v36, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileLight:v37];
  v87 = NSArray;
  v88 = NSDictionary;
  v38 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v39 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v40 = [v87 arrayWithObjects:{v38, v39, 0}];
  v41 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v40, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileHeavyHFP:v41];
  v87 = NSArray;
  v88 = NSDictionary;
  v42 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v43 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v44 = [v87 arrayWithObjects:{v42, v43, 0}];
  v45 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v44, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileHeavyA2DP:v45];
  v88 = NSDictionary;
  v46 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v47 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v46, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileTDD:v47];
  v88 = NSDictionary;
  v48 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v49 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002723F0, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v48, @"UCM_CHAIN_ATTR", 0}];
  return [v52 setWcmWiFiBTCoexProfileDefault5G:v49];
}

id sub_10012B3C4(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272930];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  v52 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v92 = 0;
  v93 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex020_V7WiFiEnh" options:@"plist") format:2 error:&v92, &v93];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v51[1] = v51;
  __chkstk_darwin(v4, v5, v6);
  v54 = v51 - v7;
  v9 = v51 + v3 * v8 - v7;
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
    v53 = 120 * v10;
    do
    {
      v88 = v11;
      v90 = 0;
      v91 = 0;
      v89[0] = 0;
      *(v89 + 3) = 0;
      LODWORD(v87) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v86 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v85 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v84 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v83 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v82 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v81 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v80 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v79 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v78 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v77 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v76 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v75 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v74 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v73 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v24 = v88;
      ++v12;
      v25 = &v88[v54];
      v26 = v86;
      *v25 = v87;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v84;
      v25[8] = v85;
      v25[13] = v26;
      LOBYTE(v26) = v82;
      v25[14] = v83;
      v25[15] = v26;
      LOBYTE(v26) = v80;
      v25[16] = v81;
      v25[17] = v26;
      LOBYTE(v26) = v78;
      v25[18] = v79;
      v25[19] = v26;
      LOBYTE(v26) = v76;
      v25[20] = v77;
      v25[21] = v26;
      LOBYTE(v26) = v74;
      v25[22] = v75;
      v25[23] = v26;
      LOBYTE(v26) = v72;
      v25[24] = v73;
      v25[25] = v26;
      LOBYTE(v26) = v70;
      v25[26] = v71;
      v25[27] = v26;
      v25[28] = v69;
      *(v25 + 29) = v90;
      v25[31] = v91;
      *(v25 + 4) = v68;
      LOBYTE(v26) = v66;
      v25[56] = v67;
      v25[57] = v26;
      LOBYTE(v26) = v64;
      v25[58] = v65;
      v25[59] = v26;
      *(v25 + 16) = v63;
      v25[78] = v62;
      v25[79] = v61;
      v25[89] = v60;
      v25[90] = v59;
      v25[91] = v58;
      v25[93] = v57;
      v25[94] = v56;
      v25[95] = v55;
      v25[96] = v15;
      v25[97] = v16;
      v25[98] = v17;
      v25[99] = v18;
      v25[100] = v19;
      v25[101] = v20;
      v25[102] = v21;
      v25[103] = v22;
      v25[104] = v23;
      *(v25 + 27) = *(v89 + 3);
      *(v25 + 105) = v89[0];
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

    while (v53 != v11);
  }

  v27 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v28 = v52;
  [v52 setWcmWiFiCellCoexIssueTable:v27];
  v29 = [v28 wcmWiFiCellCoexIssueTable];
  [v29 configureBy:v54];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [v28 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [v28 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_100287EA8];
  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:&off_100287ED8];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_100287F08];
  [v28 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_100287F38];
  [v28 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [v28 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v28 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}];
  v87 = NSArray;
  v88 = NSDictionary;
  v30 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v31 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v32 = [v87 arrayWithObjects:{v30, v31, 0}];
  v33 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v32, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileDefault:v33];
  v87 = NSArray;
  v88 = NSDictionary;
  v34 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v35 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v36 = [v87 arrayWithObjects:{v34, v35, 0}];
  v37 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v36, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileLight:v37];
  v87 = NSArray;
  v88 = NSDictionary;
  v38 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v39 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v40 = [v87 arrayWithObjects:{v38, v39, 0}];
  v41 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v40, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileHeavyHFP:v41];
  v87 = NSArray;
  v88 = NSDictionary;
  v42 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v43 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v44 = [v87 arrayWithObjects:{v42, v43, 0}];
  v45 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v44, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileHeavyA2DP:v45];
  v88 = NSDictionary;
  v46 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v47 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v46, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileTDD:v47];
  v88 = NSDictionary;
  v48 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v49 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002723F0, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v48, @"UCM_CHAIN_ATTR", 0}];
  return [v52 setWcmWiFiBTCoexProfileDefault5G:v49];
}

id sub_10012CAD4(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272930];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  v52 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v92 = 0;
  v93 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex020_V7WiFiEnh" options:@"plist") format:2 error:&v92, &v93];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v51[1] = v51;
  __chkstk_darwin(v4, v5, v6);
  v54 = v51 - v7;
  v9 = v51 + v3 * v8 - v7;
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
    v53 = 120 * v10;
    do
    {
      v88 = v11;
      v90 = 0;
      v91 = 0;
      v89[0] = 0;
      *(v89 + 3) = 0;
      LODWORD(v87) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v86 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v85 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v84 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v83 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v82 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v81 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v80 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v79 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v78 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v77 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v76 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v75 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v74 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v73 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v24 = v88;
      ++v12;
      v25 = &v88[v54];
      v26 = v86;
      *v25 = v87;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v84;
      v25[8] = v85;
      v25[13] = v26;
      LOBYTE(v26) = v82;
      v25[14] = v83;
      v25[15] = v26;
      LOBYTE(v26) = v80;
      v25[16] = v81;
      v25[17] = v26;
      LOBYTE(v26) = v78;
      v25[18] = v79;
      v25[19] = v26;
      LOBYTE(v26) = v76;
      v25[20] = v77;
      v25[21] = v26;
      LOBYTE(v26) = v74;
      v25[22] = v75;
      v25[23] = v26;
      LOBYTE(v26) = v72;
      v25[24] = v73;
      v25[25] = v26;
      LOBYTE(v26) = v70;
      v25[26] = v71;
      v25[27] = v26;
      v25[28] = v69;
      *(v25 + 29) = v90;
      v25[31] = v91;
      *(v25 + 4) = v68;
      LOBYTE(v26) = v66;
      v25[56] = v67;
      v25[57] = v26;
      LOBYTE(v26) = v64;
      v25[58] = v65;
      v25[59] = v26;
      *(v25 + 16) = v63;
      v25[78] = v62;
      v25[79] = v61;
      v25[89] = v60;
      v25[90] = v59;
      v25[91] = v58;
      v25[93] = v57;
      v25[94] = v56;
      v25[95] = v55;
      v25[96] = v15;
      v25[97] = v16;
      v25[98] = v17;
      v25[99] = v18;
      v25[100] = v19;
      v25[101] = v20;
      v25[102] = v21;
      v25[103] = v22;
      v25[104] = v23;
      *(v25 + 27) = *(v89 + 3);
      *(v25 + 105) = v89[0];
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

    while (v53 != v11);
  }

  v27 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v28 = v52;
  [v52 setWcmWiFiCellCoexIssueTable:v27];
  v29 = [v28 wcmWiFiCellCoexIssueTable];
  [v29 configureBy:v54];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 10.1}];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 10.1}];
  [v28 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{2496.0, 10.1}];
  [v28 setWcmCellularCoexB41A2Range:{2506.1, 20.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_100287F68];
  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:&off_100287F98];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_100287FC8];
  [v28 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_100287FF8];
  [v28 setWcmCellularWCI2ModeControllerLTERBThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 41)}];
  [v28 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [v28 setWcmCellularWCI2ModeControllerLTEPowerLimitingEnable:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}];
  v87 = NSArray;
  v88 = NSDictionary;
  v30 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v31 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v32 = [v87 arrayWithObjects:{v30, v31, 0}];
  v33 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v32, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileDefault:v33];
  v87 = NSArray;
  v88 = NSDictionary;
  v34 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v35 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v36 = [v87 arrayWithObjects:{v34, v35, 0}];
  v37 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v36, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileLight:v37];
  v87 = NSArray;
  v88 = NSDictionary;
  v38 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v39 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v40 = [v87 arrayWithObjects:{v38, v39, 0}];
  v41 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v40, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileHeavyHFP:v41];
  v87 = NSArray;
  v88 = NSDictionary;
  v42 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v43 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v44 = [v87 arrayWithObjects:{v42, v43, 0}];
  v45 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v44, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileHeavyA2DP:v45];
  v88 = NSDictionary;
  v46 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v47 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v46, @"UCM_CHAIN_ATTR", 0}];
  [v52 setWcmWiFiBTCoexProfileTDD:v47];
  v88 = NSDictionary;
  v48 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v49 = [v88 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002723F0, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v48, @"UCM_CHAIN_ATTR", 0}];
  return [v52 setWcmWiFiBTCoexProfileDefault5G:v49];
}

id sub_10012E1E4(void *a1)
{
  [a1 setWcmWiFiBTCoexProfileDefault:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileLight:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyHFP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyA2DP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  [a1 setWcmWiFiBTCoexProfileTDD:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0), 0), @"UCM_CHAIN_ATTR", 0)}];
  v1 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002723F0, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0], @"UCM_CHAIN_ATTR", 0];

  return [a1 setWcmWiFiBTCoexProfileDefault5G:v1];
}

id sub_10012ECD4(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272930];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  v51 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v91 = 0;
  v92 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex039_V7WiFiEnh" options:@"plist") format:2 error:&v91, &v92];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v50[1] = v50;
  __chkstk_darwin(v4, v5, v6);
  v53 = v50 - v7;
  v9 = v50 + v3 * v8 - v7;
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
    v52 = 120 * v10;
    do
    {
      v87 = v11;
      v89 = 0;
      v90 = 0;
      v88[0] = 0;
      *(v88 + 3) = 0;
      LODWORD(v86) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v85 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v84 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v83 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v82 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v81 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v80 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v79 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v78 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v77 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v76 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v75 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v74 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v73 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v24 = v87;
      ++v12;
      v25 = &v87[v53];
      v26 = v85;
      *v25 = v86;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v83;
      v25[8] = v84;
      v25[13] = v26;
      LOBYTE(v26) = v81;
      v25[14] = v82;
      v25[15] = v26;
      LOBYTE(v26) = v79;
      v25[16] = v80;
      v25[17] = v26;
      LOBYTE(v26) = v77;
      v25[18] = v78;
      v25[19] = v26;
      LOBYTE(v26) = v75;
      v25[20] = v76;
      v25[21] = v26;
      LOBYTE(v26) = v73;
      v25[22] = v74;
      v25[23] = v26;
      LOBYTE(v26) = v71;
      v25[24] = v72;
      v25[25] = v26;
      LOBYTE(v26) = v69;
      v25[26] = v70;
      v25[27] = v26;
      v25[28] = v68;
      *(v25 + 29) = v89;
      v25[31] = v90;
      *(v25 + 4) = v67;
      LOBYTE(v26) = v65;
      v25[56] = v66;
      v25[57] = v26;
      LOBYTE(v26) = v63;
      v25[58] = v64;
      v25[59] = v26;
      *(v25 + 16) = v62;
      v25[78] = v61;
      v25[79] = v60;
      v25[89] = v59;
      v25[90] = v58;
      v25[91] = v57;
      v25[93] = v56;
      v25[94] = v55;
      v25[95] = v54;
      v25[96] = v15;
      v25[97] = v16;
      v25[98] = v17;
      v25[99] = v18;
      v25[100] = v19;
      v25[101] = v20;
      v25[102] = v21;
      v25[103] = v22;
      v25[104] = v23;
      *(v25 + 27) = *(v88 + 3);
      *(v25 + 105) = v88[0];
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

    while (v52 != v11);
  }

  v27 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v28 = v51;
  [v51 setWcmWiFiCellCoexIssueTable:v27];
  v29 = [v28 wcmWiFiCellCoexIssueTable];
  [v29 configureBy:v53];
  [v28 setWcmCellRc1CoexIssueTable:0];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v28 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v28 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_100288070];
  if (_os_feature_enabled_impl())
  {
    v30 = &off_1002880E8;
  }

  else
  {
    v30 = &off_100288160;
  }

  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:v30];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_1002881D8];
  [v28 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_100288250];
  [v28 setWcmWiFiScanThrottlingChannelIndices:&off_100288268];
  [v28 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100288280, @"LTE", 0)}];
  [v28 setWcmGen9rFemDefaultMode5gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100288298, @"LTE", 0)}];
  v86 = NSArray;
  v87 = NSDictionary;
  v31 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v32 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v33 = [v86 arrayWithObjects:{v31, v32, 0}];
  v34 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v33, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileDefault:v34];
  v87 = NSDictionary;
  v35 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v36 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v35, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileLight:v36];
  v86 = NSArray;
  v87 = NSDictionary;
  v37 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v38 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v39 = [v86 arrayWithObjects:{v37, v38, 0}];
  v40 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v39, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileHeavyHFP:v40];
  v86 = NSArray;
  v87 = NSDictionary;
  v41 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v42 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v43 = [v86 arrayWithObjects:{v41, v42, 0}];
  v44 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v43, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileHeavyA2DP:v44];
  v87 = NSDictionary;
  v45 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v46 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v45, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileTDD:v46];
  v87 = NSDictionary;
  v47 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v48 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002723F0, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v47, @"UCM_CHAIN_ATTR", 0}];
  return [v51 setWcmWiFiBTCoexProfileDefault5G:v48];
}

id sub_100130460(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272930];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  v51 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v91 = 0;
  v92 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex040_V7WiFiEnh" options:@"plist") format:2 error:&v91, &v92];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v50[1] = v50;
  __chkstk_darwin(v4, v5, v6);
  v53 = v50 - v7;
  v9 = v50 + v3 * v8 - v7;
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
    v52 = 120 * v10;
    do
    {
      v87 = v11;
      v89 = 0;
      v90 = 0;
      v88[0] = 0;
      *(v88 + 3) = 0;
      LODWORD(v86) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v85 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v84 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v83 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v82 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v81 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v80 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v79 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v78 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v77 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v76 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v75 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v74 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v73 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v24 = v87;
      ++v12;
      v25 = &v87[v53];
      v26 = v85;
      *v25 = v86;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v83;
      v25[8] = v84;
      v25[13] = v26;
      LOBYTE(v26) = v81;
      v25[14] = v82;
      v25[15] = v26;
      LOBYTE(v26) = v79;
      v25[16] = v80;
      v25[17] = v26;
      LOBYTE(v26) = v77;
      v25[18] = v78;
      v25[19] = v26;
      LOBYTE(v26) = v75;
      v25[20] = v76;
      v25[21] = v26;
      LOBYTE(v26) = v73;
      v25[22] = v74;
      v25[23] = v26;
      LOBYTE(v26) = v71;
      v25[24] = v72;
      v25[25] = v26;
      LOBYTE(v26) = v69;
      v25[26] = v70;
      v25[27] = v26;
      v25[28] = v68;
      *(v25 + 29) = v89;
      v25[31] = v90;
      *(v25 + 4) = v67;
      LOBYTE(v26) = v65;
      v25[56] = v66;
      v25[57] = v26;
      LOBYTE(v26) = v63;
      v25[58] = v64;
      v25[59] = v26;
      *(v25 + 16) = v62;
      v25[78] = v61;
      v25[79] = v60;
      v25[89] = v59;
      v25[90] = v58;
      v25[91] = v57;
      v25[93] = v56;
      v25[94] = v55;
      v25[95] = v54;
      v25[96] = v15;
      v25[97] = v16;
      v25[98] = v17;
      v25[99] = v18;
      v25[100] = v19;
      v25[101] = v20;
      v25[102] = v21;
      v25[103] = v22;
      v25[104] = v23;
      *(v25 + 27) = *(v88 + 3);
      *(v25 + 105) = v88[0];
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

    while (v52 != v11);
  }

  v27 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v28 = v51;
  [v51 setWcmWiFiCellCoexIssueTable:v27];
  v29 = [v28 wcmWiFiCellCoexIssueTable];
  [v29 configureBy:v53];
  [v28 setWcmCellRc1CoexIssueTable:0];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v28 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v28 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_100288310];
  if (_os_feature_enabled_impl())
  {
    v30 = &off_100288388;
  }

  else
  {
    v30 = &off_100288400;
  }

  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:v30];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_100288478];
  [v28 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_1002884F0];
  [v28 setWcmWiFiScanThrottlingChannelIndices:&off_100288508];
  [v28 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100288520, @"LTE", 0)}];
  [v28 setWcmGen9rFemDefaultMode5gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100288538, @"LTE", 0)}];
  v86 = NSArray;
  v87 = NSDictionary;
  v31 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v32 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v33 = [v86 arrayWithObjects:{v31, v32, 0}];
  v34 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v33, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileDefault:v34];
  v87 = NSDictionary;
  v35 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v36 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v35, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileLight:v36];
  v86 = NSArray;
  v87 = NSDictionary;
  v37 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v38 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v39 = [v86 arrayWithObjects:{v37, v38, 0}];
  v40 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v39, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileHeavyHFP:v40];
  v86 = NSArray;
  v87 = NSDictionary;
  v41 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v42 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v43 = [v86 arrayWithObjects:{v41, v42, 0}];
  v44 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v43, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileHeavyA2DP:v44];
  v87 = NSDictionary;
  v45 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v46 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v45, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileTDD:v46];
  v87 = NSDictionary;
  v47 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v48 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002723F0, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v47, @"UCM_CHAIN_ATTR", 0}];
  return [v51 setWcmWiFiBTCoexProfileDefault5G:v48];
}

id sub_100131BEC(void *a1)
{
  [a1 setWcmWiFiBTCoexProfileDefault:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272528, 0), @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_100272540, 0), @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272528, 0), @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_100272540, 0), @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_MODE_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272318, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272570, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272528, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272588, &off_100272420, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002725A0, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), 0), @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0)}];
  [a1 setWcmWiFiBTCoexProfileLight:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272540, 0), @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_100272558, 0), @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272540, 0), @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_100272558, 0), @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_MODE_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272318, &off_100272318, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272558, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272588, &off_100272420, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002725A0, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), 0), @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyHFP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272558, 0), @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_1002725B8, 0), @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_1002725E8, 0), @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_100272600, 0), @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_MODE_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272318, &off_100272318, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272570, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272528, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272588, &off_100272420, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002725A0, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), 0), @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0)}];
  v1 = &off_1002723F0;
  [a1 setWcmWiFiBTCoexProfileHeavyA2DP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272558, 0), @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_1002725B8, 0), @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272558, 0), @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_1002725B8, 0), @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_MODE_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272570, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272528, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272588, &off_100272420, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002725A0, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), 0), @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0)}];
  [a1 setWcmWiFiBTCoexProfileTDD:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A50, &off_100272558, 0), @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272990, &off_1002725B8, 0), @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A50, &off_100272558, 0), @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272990, &off_1002725B8, 0), @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v1, v1, v1, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v1, v1, v1, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v1, v1, v1, 0), 0), @"UCM_EXT_COEX_MODE_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v1, v1, v1, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v1, v1, v1, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v1, v1, v1, 0), 0), @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272570, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272528, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272588, &off_100272420, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002725A0, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), 0), @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0)}];
  v2 = [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", [NSArray arrayWithObjects:&off_100272A50, &off_100272528, 0], @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", [NSArray arrayWithObjects:&off_100272990, &off_100272540, 0], @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", [NSArray arrayWithObjects:&off_100272A50, &off_100272528, 0], @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", [NSArray arrayWithObjects:&off_100272990, &off_100272540, 0], @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", [NSArray arrayWithObjects:[NSArray arrayWithObjects:v1, v1, v1, 0], [NSArray arrayWithObjects:v1, v1, v1, 0], [NSArray arrayWithObjects:v1, v1, v1, 0], 0], @"UCM_EXT_COEX_MODE_ARR", [NSArray arrayWithObjects:[NSArray arrayWithObjects:v1, v1, v1, 0], [NSArray arrayWithObjects:v1, v1, v1, 0], [NSArray arrayWithObjects:v1, v1, v1, 0], 0], @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", [NSArray arrayWithObjects:&off_100272570, 0], @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", [NSArray arrayWithObjects:&off_100272528, 0], @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", [NSArray arrayWithObjects:&off_100272570, 0], @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", [NSArray arrayWithObjects:&off_100272528, 0], @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:[NSArray arrayWithObjects:&off_100272420, &off_100272420, 0], @"UCM_EXT_ACK_TX_PWR_ARR", [NSArray arrayWithObjects:&off_100272420, &off_100272420, 0], @"UCM_EXT_DATA_TX_PWR_ARR", 0], [NSDictionary dictionaryWithObjectsAndKeys:[NSArray arrayWithObjects:&off_100272420, &off_100272420, 0], @"UCM_EXT_ACK_TX_PWR_ARR", [NSArray arrayWithObjects:&off_100272420, &off_100272420, 0], @"UCM_EXT_DATA_TX_PWR_ARR", 0], 0], @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0];

  return [a1 setWcmWiFiBTCoexProfileDefault5G:v2];
}

id sub_10013301C(void *a1)
{
  [a1 setWrmPlatformAntBlockPowerLimitPlistFile:@"CoEx-Table-AntBlockPwrLmt-Coex055"];
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
  sub_100153714(a1, @"CoEx-Table-CellCoex055_V8WiFiEnh", 8);
  sub_10015480C(a1, @"CoEx-Table-AntBlockPwrLmt-Coex055");
  sub_100154C5C(a1, @"CoEx-Table-AntBlockPwrLmt-Coex055");
  [a1 setWcmCellRc1CoexIssueTable:0];
  [a1 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlistV2:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlistV2:", @"CoEx-Table-AntBlockPwrLmt-Coex055"}];
  [a1 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100288550, @"LTE", &off_100288568, @"NR", 0)}];
  [a1 setWcmGen9rFemDefaultMode5gWiFiCellularbands:0];
  [a1 setWcmCellularAccessoryCoexBands:&off_100288598];
  [a1 setWcmWiFiBTCoexProfileDefault:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272528, 0), @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_100272540, 0), @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272528, 0), @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_100272540, 0), @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_MODE_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272318, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272570, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272528, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272588, &off_100272420, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002725A0, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), 0), @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0)}];
  [a1 setWcmWiFiBTCoexProfileLight:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272540, 0), @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_100272558, 0), @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272540, 0), @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_100272558, 0), @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_MODE_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272318, &off_100272318, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272558, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272588, &off_100272420, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002725A0, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), 0), @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyHFP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272558, 0), @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_1002725B8, 0), @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_1002725E8, 0), @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_100272600, 0), @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_MODE_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272318, &off_100272318, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272570, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272528, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272588, &off_100272420, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002725A0, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), 0), @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyA2DP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272558, 0), @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_1002725B8, 0), @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272558, 0), @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_1002725B8, 0), @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_MODE_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272570, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272528, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272588, &off_100272420, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002725A0, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), 0), @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0)}];
  [a1 setWcmWiFiBTCoexProfileTDD:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A50, &off_100272558, 0), @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272990, &off_1002725B8, 0), @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A50, &off_100272558, 0), @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272990, &off_1002725B8, 0), @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_MODE_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272570, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272528, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272588, &off_100272420, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002725A0, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), 0), @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0)}];
  v2 = [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", [NSArray arrayWithObjects:&off_100272A50, &off_100272528, 0], @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", [NSArray arrayWithObjects:&off_100272990, &off_100272540, 0], @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", [NSArray arrayWithObjects:&off_100272A50, &off_100272528, 0], @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", [NSArray arrayWithObjects:&off_100272990, &off_100272540, 0], @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", [NSArray arrayWithObjects:[NSArray arrayWithObjects:&off_1002723F0, &off_1002723F0, &off_1002723F0, 0], [NSArray arrayWithObjects:&off_1002723F0, &off_1002723F0, &off_1002723F0, 0], [NSArray arrayWithObjects:&off_1002723F0, &off_1002723F0, &off_1002723F0, 0], 0], @"UCM_EXT_COEX_MODE_ARR", [NSArray arrayWithObjects:[NSArray arrayWithObjects:&off_1002723F0, &off_1002723F0, &off_1002723F0, 0], [NSArray arrayWithObjects:&off_1002723F0, &off_1002723F0, &off_1002723F0, 0], [NSArray arrayWithObjects:&off_1002723F0, &off_1002723F0, &off_1002723F0, 0], 0], @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", [NSArray arrayWithObjects:&off_100272570, 0], @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", [NSArray arrayWithObjects:&off_100272528, 0], @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", [NSArray arrayWithObjects:&off_100272570, 0], @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", [NSArray arrayWithObjects:&off_100272528, 0], @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:[NSArray arrayWithObjects:&off_100272420, 0], @"UCM_EXT_ACK_TX_PWR_ARR", [NSArray arrayWithObjects:&off_100272420, &off_100272420, 0], @"UCM_EXT_DATA_TX_PWR_ARR", 0], [NSDictionary dictionaryWithObjectsAndKeys:[NSArray arrayWithObjects:&off_100272420, &off_100272420, 0], @"UCM_EXT_ACK_TX_PWR_ARR", [NSArray arrayWithObjects:&off_100272420, &off_100272420, 0], @"UCM_EXT_DATA_TX_PWR_ARR", 0], 0], @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0];

  return [a1 setWcmWiFiBTCoexProfileDefault5G:v2];
}

id sub_100134610(void *a1)
{
  [a1 setWrmPlatformAntBlockPowerLimitPlistFile:@"CoEx-Table-AntBlockPwrLmt-Coex056"];
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
  sub_100153714(a1, @"CoEx-Table-CellCoex056_V8WiFiEnh", 8);
  sub_10015480C(a1, @"CoEx-Table-AntBlockPwrLmt-Coex056");
  sub_100154C5C(a1, @"CoEx-Table-AntBlockPwrLmt-Coex056");
  [a1 setWcmCellRc1CoexIssueTable:0];
  [a1 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlistV2:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlistV2:", @"CoEx-Table-AntBlockPwrLmt-Coex056"}];
  [a1 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002885F8, @"LTE", &off_100288610, @"NR", 0)}];
  [a1 setWcmGen9rFemDefaultMode5gWiFiCellularbands:0];
  [a1 setWcmCellularAccessoryCoexBands:&off_100288640];
  [a1 setWcmWiFiBTCoexProfileDefault:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272528, 0), @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_100272540, 0), @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272528, 0), @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_100272540, 0), @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_MODE_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272318, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272570, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272528, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272588, &off_100272420, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002725A0, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), 0), @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0)}];
  [a1 setWcmWiFiBTCoexProfileLight:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272540, 0), @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_100272558, 0), @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272540, 0), @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_100272558, 0), @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_MODE_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272318, &off_100272318, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272558, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272588, &off_100272420, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002725A0, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), 0), @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyHFP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272558, 0), @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_1002725B8, 0), @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_1002725E8, 0), @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_100272600, 0), @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_MODE_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272300, &off_100272300, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272318, &off_100272318, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272570, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272528, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272588, &off_100272420, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002725A0, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), 0), @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0)}];
  [a1 setWcmWiFiBTCoexProfileHeavyA2DP:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272558, 0), @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_1002725B8, 0), @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A20, &off_100272558, 0), @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A38, &off_1002725B8, 0), @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_MODE_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272570, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272528, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272588, &off_100272420, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002725A0, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), 0), @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0)}];
  [a1 setWcmWiFiBTCoexProfileTDD:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A50, &off_100272558, 0), @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272990, &off_1002725B8, 0), @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272A50, &off_100272558, 0), @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272990, &off_1002725B8, 0), @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_MODE_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002723F0, &off_1002723F0, &off_1002723F0, 0), 0), @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272570, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272528, 0), @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272540, 0), @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272588, &off_100272420, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_1002725A0, 0), @"UCM_EXT_ACK_TX_PWR_ARR", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", &off_100272420, &off_100272420, 0), @"UCM_EXT_DATA_TX_PWR_ARR", 0), 0), @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0)}];
  v2 = [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_EXT_VERSION", &off_100272330, @"UCM_EXT_WIFI_RSSI_NUM_RANGES", [NSArray arrayWithObjects:&off_100272A50, &off_100272528, 0], @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR", [NSArray arrayWithObjects:&off_100272990, &off_100272540, 0], @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR", &off_100272330, @"UCM_EXT_BT_RSSI_NUM_RANGES", [NSArray arrayWithObjects:&off_100272A50, &off_100272528, 0], @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR", [NSArray arrayWithObjects:&off_100272990, &off_100272540, 0], @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR", [NSArray arrayWithObjects:[NSArray arrayWithObjects:&off_1002723F0, &off_1002723F0, &off_1002723F0, 0], [NSArray arrayWithObjects:&off_1002723F0, &off_1002723F0, &off_1002723F0, 0], [NSArray arrayWithObjects:&off_1002723F0, &off_1002723F0, &off_1002723F0, 0], 0], @"UCM_EXT_COEX_MODE_ARR", [NSArray arrayWithObjects:[NSArray arrayWithObjects:&off_1002723F0, &off_1002723F0, &off_1002723F0, 0], [NSArray arrayWithObjects:&off_1002723F0, &off_1002723F0, &off_1002723F0, 0], [NSArray arrayWithObjects:&off_1002723F0, &off_1002723F0, &off_1002723F0, 0], 0], @"UCM_EXT_COEX_DESENSE_ARR", &off_100272318, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES", [NSArray arrayWithObjects:&off_100272570, 0], @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", [NSArray arrayWithObjects:&off_100272528, 0], @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", [NSArray arrayWithObjects:&off_100272570, 0], @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR", [NSArray arrayWithObjects:&off_100272528, 0], @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR", [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:[NSArray arrayWithObjects:&off_100272420, 0], @"UCM_EXT_ACK_TX_PWR_ARR", [NSArray arrayWithObjects:&off_100272420, &off_100272420, 0], @"UCM_EXT_DATA_TX_PWR_ARR", 0], [NSDictionary dictionaryWithObjectsAndKeys:[NSArray arrayWithObjects:&off_100272420, &off_100272420, 0], @"UCM_EXT_ACK_TX_PWR_ARR", [NSArray arrayWithObjects:&off_100272420, &off_100272420, 0], @"UCM_EXT_DATA_TX_PWR_ARR", 0], 0], @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR", 0];

  return [a1 setWcmWiFiBTCoexProfileDefault5G:v2];
}

id sub_100135C04(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272930];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  v51 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v91 = 0;
  v92 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex035_V7WiFiEnh" options:@"plist") format:2 error:&v91, &v92];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v50[1] = v50;
  __chkstk_darwin(v4, v5, v6);
  v53 = v50 - v7;
  v9 = v50 + v3 * v8 - v7;
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
    v52 = 120 * v10;
    do
    {
      v87 = v11;
      v89 = 0;
      v90 = 0;
      v88[0] = 0;
      *(v88 + 3) = 0;
      LODWORD(v86) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v85 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v84 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v83 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v82 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v81 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v80 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v79 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v78 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v77 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v76 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v75 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v74 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v73 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v24 = v87;
      ++v12;
      v25 = &v87[v53];
      v26 = v85;
      *v25 = v86;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v83;
      v25[8] = v84;
      v25[13] = v26;
      LOBYTE(v26) = v81;
      v25[14] = v82;
      v25[15] = v26;
      LOBYTE(v26) = v79;
      v25[16] = v80;
      v25[17] = v26;
      LOBYTE(v26) = v77;
      v25[18] = v78;
      v25[19] = v26;
      LOBYTE(v26) = v75;
      v25[20] = v76;
      v25[21] = v26;
      LOBYTE(v26) = v73;
      v25[22] = v74;
      v25[23] = v26;
      LOBYTE(v26) = v71;
      v25[24] = v72;
      v25[25] = v26;
      LOBYTE(v26) = v69;
      v25[26] = v70;
      v25[27] = v26;
      v25[28] = v68;
      *(v25 + 29) = v89;
      v25[31] = v90;
      *(v25 + 4) = v67;
      LOBYTE(v26) = v65;
      v25[56] = v66;
      v25[57] = v26;
      LOBYTE(v26) = v63;
      v25[58] = v64;
      v25[59] = v26;
      *(v25 + 16) = v62;
      v25[78] = v61;
      v25[79] = v60;
      v25[89] = v59;
      v25[90] = v58;
      v25[91] = v57;
      v25[93] = v56;
      v25[94] = v55;
      v25[95] = v54;
      v25[96] = v15;
      v25[97] = v16;
      v25[98] = v17;
      v25[99] = v18;
      v25[100] = v19;
      v25[101] = v20;
      v25[102] = v21;
      v25[103] = v22;
      v25[104] = v23;
      *(v25 + 27) = *(v88 + 3);
      *(v25 + 105) = v88[0];
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

    while (v52 != v11);
  }

  v27 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v28 = v51;
  [v51 setWcmWiFiCellCoexIssueTable:v27];
  v29 = [v28 wcmWiFiCellCoexIssueTable];
  [v29 configureBy:v53];
  [v28 setWcmCellRc1CoexIssueTable:0];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v28 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v28 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_1002886B8];
  if (_os_feature_enabled_impl())
  {
    v30 = &off_100288730;
  }

  else
  {
    v30 = &off_1002887A8;
  }

  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:v30];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_100288820];
  [v28 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_100288898];
  [v28 setWcmWiFiScanThrottlingChannelIndices:&off_1002888B0];
  [v28 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002888C8, @"LTE", 0)}];
  [v28 setWcmGen9rFemDefaultMode5gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_1002888E0, @"LTE", 0)}];
  v86 = NSArray;
  v87 = NSDictionary;
  v31 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v32 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v33 = [v86 arrayWithObjects:{v31, v32, 0}];
  v34 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v33, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileDefault:v34];
  v87 = NSDictionary;
  v35 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v36 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v35, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileLight:v36];
  v86 = NSArray;
  v87 = NSDictionary;
  v37 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v38 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v39 = [v86 arrayWithObjects:{v37, v38, 0}];
  v40 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v39, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileHeavyHFP:v40];
  v86 = NSArray;
  v87 = NSDictionary;
  v41 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v42 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v43 = [v86 arrayWithObjects:{v41, v42, 0}];
  v44 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v43, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileHeavyA2DP:v44];
  v87 = NSDictionary;
  v45 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v46 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v45, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileTDD:v46];
  v87 = NSDictionary;
  v47 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v48 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002723F0, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v47, @"UCM_CHAIN_ATTR", 0}];
  return [v51 setWcmWiFiBTCoexProfileDefault5G:v48];
}

id sub_100137390(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272930];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  v51 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v91 = 0;
  v92 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex036_V7WiFiEnh" options:@"plist") format:2 error:&v91, &v92];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v50[1] = v50;
  __chkstk_darwin(v4, v5, v6);
  v53 = v50 - v7;
  v9 = v50 + v3 * v8 - v7;
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
    v52 = 120 * v10;
    do
    {
      v87 = v11;
      v89 = 0;
      v90 = 0;
      v88[0] = 0;
      *(v88 + 3) = 0;
      LODWORD(v86) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v85 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v84 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v83 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v82 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v81 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v80 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v79 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v78 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v77 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v76 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v75 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v74 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v73 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v24 = v87;
      ++v12;
      v25 = &v87[v53];
      v26 = v85;
      *v25 = v86;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v83;
      v25[8] = v84;
      v25[13] = v26;
      LOBYTE(v26) = v81;
      v25[14] = v82;
      v25[15] = v26;
      LOBYTE(v26) = v79;
      v25[16] = v80;
      v25[17] = v26;
      LOBYTE(v26) = v77;
      v25[18] = v78;
      v25[19] = v26;
      LOBYTE(v26) = v75;
      v25[20] = v76;
      v25[21] = v26;
      LOBYTE(v26) = v73;
      v25[22] = v74;
      v25[23] = v26;
      LOBYTE(v26) = v71;
      v25[24] = v72;
      v25[25] = v26;
      LOBYTE(v26) = v69;
      v25[26] = v70;
      v25[27] = v26;
      v25[28] = v68;
      *(v25 + 29) = v89;
      v25[31] = v90;
      *(v25 + 4) = v67;
      LOBYTE(v26) = v65;
      v25[56] = v66;
      v25[57] = v26;
      LOBYTE(v26) = v63;
      v25[58] = v64;
      v25[59] = v26;
      *(v25 + 16) = v62;
      v25[78] = v61;
      v25[79] = v60;
      v25[89] = v59;
      v25[90] = v58;
      v25[91] = v57;
      v25[93] = v56;
      v25[94] = v55;
      v25[95] = v54;
      v25[96] = v15;
      v25[97] = v16;
      v25[98] = v17;
      v25[99] = v18;
      v25[100] = v19;
      v25[101] = v20;
      v25[102] = v21;
      v25[103] = v22;
      v25[104] = v23;
      *(v25 + 27) = *(v88 + 3);
      *(v25 + 105) = v88[0];
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

    while (v52 != v11);
  }

  v27 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v28 = v51;
  [v51 setWcmWiFiCellCoexIssueTable:v27];
  v29 = [v28 wcmWiFiCellCoexIssueTable];
  [v29 configureBy:v53];
  [v28 setWcmCellRc1CoexIssueTable:0];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v28 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v28 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_100288958];
  if (_os_feature_enabled_impl())
  {
    v30 = &off_1002889D0;
  }

  else
  {
    v30 = &off_100288A48;
  }

  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:v30];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_100288AC0];
  [v28 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_100288B38];
  [v28 setWcmWiFiScanThrottlingChannelIndices:&off_100288B50];
  [v28 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100288B68, @"LTE", 0)}];
  [v28 setWcmGen9rFemDefaultMode5gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100288B80, @"LTE", 0)}];
  v86 = NSArray;
  v87 = NSDictionary;
  v31 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v32 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v33 = [v86 arrayWithObjects:{v31, v32, 0}];
  v34 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v33, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileDefault:v34];
  v87 = NSDictionary;
  v35 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v36 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v35, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileLight:v36];
  v86 = NSArray;
  v87 = NSDictionary;
  v37 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v38 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v39 = [v86 arrayWithObjects:{v37, v38, 0}];
  v40 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v39, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileHeavyHFP:v40];
  v86 = NSArray;
  v87 = NSDictionary;
  v41 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v42 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v43 = [v86 arrayWithObjects:{v41, v42, 0}];
  v44 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v43, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileHeavyA2DP:v44];
  v87 = NSDictionary;
  v45 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v46 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v45, @"UCM_CHAIN_ATTR", 0}];
  [v51 setWcmWiFiBTCoexProfileTDD:v46];
  v87 = NSDictionary;
  v47 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v48 = [v87 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002723F0, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v47, @"UCM_CHAIN_ATTR", 0}];
  return [v51 setWcmWiFiBTCoexProfileDefault5G:v48];
}

id sub_100138B1C(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272930];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  v60 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v94 = 0;
  v95 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex049_V7WiFiEnh" options:@"plist") format:2 error:&v94, &v95];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v59 = &v59;
  __chkstk_darwin(v4, v5, v6);
  v62 = &v59 - v7;
  v9 = &v59 + v3 * v8 - v7;
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
    v61 = 120 * v10;
    do
    {
      v92 = 0;
      v93 = 0;
      v91[0] = 0;
      *(v91 + 3) = 0;
      LODWORD(v90) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      LODWORD(v89) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v88 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v87 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v86 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v85 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v84 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v83 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v82 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v81 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v80 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v79 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v78 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v77 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v76 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v75 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v74 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v73 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12++), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v23 = &v62[v11];
      v24 = v88;
      v25 = v89;
      *v23 = v90;
      *(v23 + 1) = v25;
      v23[8] = v24;
      v26 = v86;
      v23[13] = v87;
      v23[14] = v26;
      v27 = v84;
      v23[15] = v85;
      v23[16] = v27;
      v28 = v82;
      v23[17] = v83;
      v23[18] = v28;
      v29 = v80;
      v23[19] = v81;
      v23[20] = v29;
      v30 = v78;
      v23[21] = v79;
      v23[22] = v30;
      v31 = v76;
      v23[23] = v77;
      v23[24] = v31;
      v32 = v74;
      v23[25] = v75;
      v23[26] = v32;
      v33 = v72;
      v23[27] = v73;
      v23[28] = v33;
      *(v23 + 29) = v92;
      v23[31] = v93;
      *(v23 + 4) = v71;
      v34 = v69;
      v23[56] = v70;
      v23[57] = v34;
      v35 = v67;
      v23[58] = v68;
      v23[59] = v35;
      *(v23 + 16) = v66;
      v23[78] = v65;
      v23[79] = v64;
      v23[89] = v63;
      v23[90] = v15;
      v23[91] = v16;
      v23[93] = v17;
      v23[94] = v18;
      v23[95] = v19;
      v23[96] = v20;
      v23[97] = v21;
      v23[98] = v22;
      *(v23 + 27) = *(v91 + 3);
      *(v23 + 105) = v91[0];
      *(v23 + 15) = 0;
      *(v23 + 9) = 0;
      *(v23 + 5) = v13;
      *(v23 + 6) = v14;
      *(v23 + 68) = 0;
      *(v23 + 38) = 0;
      *(v23 + 10) = 0;
      v23[88] = 0;
      v23[92] = 0;
      *(v23 + 103) = 0;
      *(v23 + 99) = 0;
      *(v23 + 14) = 0;
      v11 += 120;
    }

    while (v61 != v11);
  }

  v36 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v37 = v60;
  [v60 setWcmWiFiCellCoexIssueTable:v36];
  v38 = [v37 wcmWiFiCellCoexIssueTable];
  [v38 configureBy:v62];
  [v37 setWcmCellRc1CoexIssueTable:0];
  [v37 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v37 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v37 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v37 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v37 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v37 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v37 setWcmCellularScanProtectionCellFrequencies:&off_100288BE0];
  if (_os_feature_enabled_impl())
  {
    v39 = &off_100288C40;
  }

  else
  {
    v39 = &off_100288CA0;
  }

  [v37 setWcmCellularScanProtectionCellFrequenciesforBT:v39];
  [v37 setWcmCellularScanProtectionWiFiChannels:&off_100288D00];
  [v37 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_100288D60];
  [v37 setWcmWiFiScanThrottlingChannelIndices:0];
  [v37 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100288D78, @"LTE", 0)}];
  [v37 setWcmGen9rFemDefaultMode5gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100288D90, @"LTE", 0)}];
  v89 = NSArray;
  v90 = NSDictionary;
  v40 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v41 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v42 = [v89 arrayWithObjects:{v40, v41, 0}];
  v43 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v42, @"UCM_CHAIN_ATTR", 0}];
  [v60 setWcmWiFiBTCoexProfileDefault:v43];
  v90 = NSDictionary;
  v44 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v45 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v44, @"UCM_CHAIN_ATTR", 0}];
  [v60 setWcmWiFiBTCoexProfileLight:v45];
  v89 = NSArray;
  v90 = NSDictionary;
  v46 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v47 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v48 = [v89 arrayWithObjects:{v46, v47, 0}];
  v49 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v48, @"UCM_CHAIN_ATTR", 0}];
  [v60 setWcmWiFiBTCoexProfileHeavyHFP:v49];
  v89 = NSArray;
  v90 = NSDictionary;
  v50 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v51 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v52 = [v89 arrayWithObjects:{v50, v51, 0}];
  v53 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v52, @"UCM_CHAIN_ATTR", 0}];
  [v60 setWcmWiFiBTCoexProfileHeavyA2DP:v53];
  v90 = NSDictionary;
  v54 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v55 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v54, @"UCM_CHAIN_ATTR", 0}];
  [v60 setWcmWiFiBTCoexProfileTDD:v55];
  v90 = NSDictionary;
  v56 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v57 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002723F0, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v56, @"UCM_CHAIN_ATTR", 0}];
  return [v60 setWcmWiFiBTCoexProfileDefault5G:v57];
}

id sub_10013A190(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272930];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  v60 = a1;
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  v94 = 0;
  v95 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex050_V7WiFiEnh" options:@"plist") format:2 error:&v94, &v95];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v59 = &v59;
  __chkstk_darwin(v4, v5, v6);
  v62 = &v59 - v7;
  v9 = &v59 + v3 * v8 - v7;
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
    v61 = 120 * v10;
    do
    {
      v92 = 0;
      v93 = 0;
      v91[0] = 0;
      *(v91 + 3) = 0;
      LODWORD(v90) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      LODWORD(v89) = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v88 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v87 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v86 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v85 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v84 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v83 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v82 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v81 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v80 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v79 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v78 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v77 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v76 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v75 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v74 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v73 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v72 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v71 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v70 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12++), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v23 = &v62[v11];
      v24 = v88;
      v25 = v89;
      *v23 = v90;
      *(v23 + 1) = v25;
      v23[8] = v24;
      v26 = v86;
      v23[13] = v87;
      v23[14] = v26;
      v27 = v84;
      v23[15] = v85;
      v23[16] = v27;
      v28 = v82;
      v23[17] = v83;
      v23[18] = v28;
      v29 = v80;
      v23[19] = v81;
      v23[20] = v29;
      v30 = v78;
      v23[21] = v79;
      v23[22] = v30;
      v31 = v76;
      v23[23] = v77;
      v23[24] = v31;
      v32 = v74;
      v23[25] = v75;
      v23[26] = v32;
      v33 = v72;
      v23[27] = v73;
      v23[28] = v33;
      *(v23 + 29) = v92;
      v23[31] = v93;
      *(v23 + 4) = v71;
      v34 = v69;
      v23[56] = v70;
      v23[57] = v34;
      v35 = v67;
      v23[58] = v68;
      v23[59] = v35;
      *(v23 + 16) = v66;
      v23[78] = v65;
      v23[79] = v64;
      v23[89] = v63;
      v23[90] = v15;
      v23[91] = v16;
      v23[93] = v17;
      v23[94] = v18;
      v23[95] = v19;
      v23[96] = v20;
      v23[97] = v21;
      v23[98] = v22;
      *(v23 + 27) = *(v91 + 3);
      *(v23 + 105) = v91[0];
      *(v23 + 15) = 0;
      *(v23 + 9) = 0;
      *(v23 + 5) = v13;
      *(v23 + 6) = v14;
      *(v23 + 68) = 0;
      *(v23 + 38) = 0;
      *(v23 + 10) = 0;
      v23[88] = 0;
      v23[92] = 0;
      *(v23 + 103) = 0;
      *(v23 + 99) = 0;
      *(v23 + 14) = 0;
      v11 += 120;
    }

    while (v61 != v11);
  }

  v36 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v37 = v60;
  [v60 setWcmWiFiCellCoexIssueTable:v36];
  v38 = [v37 wcmWiFiCellCoexIssueTable];
  [v38 configureBy:v62];
  [v37 setWcmCellRc1CoexIssueTable:0];
  [v37 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v37 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v37 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v37 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v37 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v37 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v37 setWcmCellularScanProtectionCellFrequencies:&off_100288DF0];
  if (_os_feature_enabled_impl())
  {
    v39 = &off_100288E50;
  }

  else
  {
    v39 = &off_100288EB0;
  }

  [v37 setWcmCellularScanProtectionCellFrequenciesforBT:v39];
  [v37 setWcmCellularScanProtectionWiFiChannels:&off_100288F10];
  [v37 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_100288F70];
  [v37 setWcmWiFiScanThrottlingChannelIndices:0];
  [v37 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100288F88, @"LTE", 0)}];
  [v37 setWcmGen9rFemDefaultMode5gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_100288FA0, @"LTE", 0)}];
  v89 = NSArray;
  v90 = NSDictionary;
  v40 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v41 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v42 = [v89 arrayWithObjects:{v40, v41, 0}];
  v43 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v42, @"UCM_CHAIN_ATTR", 0}];
  [v60 setWcmWiFiBTCoexProfileDefault:v43];
  v90 = NSDictionary;
  v44 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v45 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272540, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v44, @"UCM_CHAIN_ATTR", 0}];
  [v60 setWcmWiFiBTCoexProfileLight:v45];
  v89 = NSArray;
  v90 = NSDictionary;
  v46 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v47 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v48 = [v89 arrayWithObjects:{v46, v47, 0}];
  v49 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272360, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272558, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272600, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v48, @"UCM_CHAIN_ATTR", 0}];
  [v60 setWcmWiFiBTCoexProfileHeavyHFP:v49];
  v89 = NSArray;
  v90 = NSDictionary;
  v50 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_100272588, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v51 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100272360, @"UCM_DESENSE_STRONG_RSSI", &off_100272300, @"UCM_DESENSE_WEAK_RSSI", &off_1002725A0, @"UCM_ACK_PWR_STRONG_RSSI", &off_1002725A0, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0];
  v52 = [v89 arrayWithObjects:{v50, v51, 0}];
  v53 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002725B8, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272618, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002725E8, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002725B8, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002725D0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v52, @"UCM_CHAIN_ATTR", 0}];
  [v60 setWcmWiFiBTCoexProfileHeavyA2DP:v53];
  v90 = NSDictionary;
  v54 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v55 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_100272528, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_100272558, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_100272570, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_100272528, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_100272540, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v54, @"UCM_CHAIN_ATTR", 0}];
  [v60 setWcmWiFiBTCoexProfileTDD:v55];
  v90 = NSDictionary;
  v56 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_1002723F0, @"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], [NSDictionary dictionaryWithObjectsAndKeys:@"UCM_DESENSE_STRONG_RSSI", &off_1002723F0, @"UCM_DESENSE_WEAK_RSSI", &off_100272420, @"UCM_ACK_PWR_STRONG_RSSI", &off_100272420, @"UCM_ACK_PWR_WEAK_RSSI", &off_100272420, @"UCM_TX_PWR_STRONG_RSSI", &off_100272420, @"UCM_TX_PWR_WEAK_RSSI", 0], 0];
  v57 = [v90 dictionaryWithObjectsAndKeys:{&off_100272330, @"UCM_VERSION", &off_100272300, @"UCM_MODE_STRONG_WL_BT", &off_100272300, @"UCM_MODE_WEAK_WL", &off_100272300, @"UCM_MODE_WEAK_BT", &off_100272300, @"UCM_MODE_WEAK_WL_BT", &off_1002723F0, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", &off_1002723F0, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", &off_1002723F0, @"UCM_HYBRID_ANT_CORE_CONFIG", v56, @"UCM_CHAIN_ATTR", 0}];
  return [v60 setWcmWiFiBTCoexProfileDefault5G:v57];
}

id sub_10013B804(void *a1)
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
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_100289018];

  return [a1 setWcmCellularScanProtectionWiFiChannels:&off_100289090];
}

id sub_10013BAB8(void *a1)
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
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_100289108];

  return [a1 setWcmCellularScanProtectionWiFiChannels:&off_100289180];
}

id sub_10013BD6C(void *a1)
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
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_1002891F8];

  return [a1 setWcmCellularScanProtectionWiFiChannels:&off_100289270];
}

id sub_10013C020(void *a1)
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
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_1002892E8];

  return [a1 setWcmCellularScanProtectionWiFiChannels:&off_100289360];
}

id sub_10013C2D4(void *a1)
{
  [a1 setWrmPlatformAntBlockPowerLimitPlistFile:@"CoEx-Table-AntBlockPwrLmt-Coex001"];
  [a1 setWcmBTSupportTDDFrameConfig:1];
  [a1 setWcmWiFiSupportFrameConfig:1];
  [a1 setWcmWiFiSupportWciSignalingConfig:1];
  [a1 setWcmWiFiRxProtectMode:&off_1002723F0];
  [a1 setWcmWiFiTxOnIndication:&off_100272300];
  [a1 setWcmWiFiScanJoinProtectDuration:&off_1002723F0];
  [a1 setWcmWiFiEnvelopeIndicationTimer:&off_100272360];
  [a1 setWcmWiFiEnvelopeOnIndication:&off_100272300];
  [a1 setWcmWCI2FrameSyncAssertOffset:-200];
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272F18];
  [a1 setWcmWiFiActiveScanThrottleMask:&off_1002723F0];
  [a1 setWcmWiFiActiveDwellTime:&off_100272648];
  [a1 setWcmCellularWCI2ModeLTEHarqnackratioThreshold:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10)}];
  [a1 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [a1 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [a1 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [a1 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [a1 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [a1 setWcmCellularCoexB41A2Range:{2516.0, 174.0}];
  sub_100153714(a1, @"CoEx-Table-CellCoex027_V7WiFiEnh", 7);
  sub_10015480C(a1, @"CoEx-Table-AntBlockPwrLmt-Coex001");
  sub_100154C5C(a1, @"CoEx-Table-AntBlockPwrLmt-Coex001");

  return [a1 setWcmCellRc1CoexIssueTable:0];
}

id sub_10013C5A4(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272F30];
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
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_1002893F0];

  return [a1 setWcmCellularScanProtectionWiFiChannels:&off_100289480];
}

id sub_10013C858(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272F30];
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
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_100289510];

  return [a1 setWcmCellularScanProtectionWiFiChannels:&off_1002895A0];
}

id sub_10013CB0C(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272F30];
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
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_100289630];

  return [a1 setWcmCellularScanProtectionWiFiChannels:&off_1002896C0];
}

id sub_10013CDC0(void *a1)
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
  [a1 setWcmWiFiWCI2TxDurationThresh:&off_100272F30];
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
  [a1 setWcmCellularScanProtectionCellFrequencies:&off_100289750];

  return [a1 setWcmCellularScanProtectionWiFiChannels:&off_1002897E0];
}

id sub_10013D074(void *a1)
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
  v58 = 0;
  v59 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex008_v1.1_NewEnum_v4Macro" options:@"plist") format:2 error:&v58, &v59];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v29 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v28 = &v28;
  __chkstk_darwin(v4, v5, v6);
  v31 = &v28 - v7;
  v9 = &v28 + v3 * v8 - v7;
  *v9 = 211;
  *(v9 + 4) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 36) = 0u;
  *(v9 + 52) = 0u;
  *(v9 + 68) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 0u;
  *(v9 + 29) = 0;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v30 = 120 * v3;
    do
    {
      v56 = 0;
      v57 = 0;
      v55[0] = 0;
      *(v55 + 3) = 0;
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueBand", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueType", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v45 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v44 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v43 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v42 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v41 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v40 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v39 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v38 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v37 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v36 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v12 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v33 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v32 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"CellAntBlk", "intValue"}];
      v22 = &v31[v10];
      v23 = v53;
      *v22 = v54;
      *(v22 + 1) = v23;
      LOBYTE(v23) = v51;
      v22[8] = v52;
      v22[13] = v23;
      LOBYTE(v23) = v49;
      v22[14] = v50;
      v22[15] = v23;
      LOBYTE(v23) = v47;
      v22[16] = v48;
      v22[17] = v23;
      LOBYTE(v23) = v45;
      v22[18] = v46;
      v22[19] = v23;
      LOBYTE(v23) = v43;
      v22[20] = v44;
      v22[21] = v23;
      LOBYTE(v23) = v41;
      v22[22] = v42;
      v22[23] = v23;
      LOBYTE(v23) = v39;
      v22[24] = v40;
      v22[25] = v23;
      LOBYTE(v23) = v37;
      v22[26] = v38;
      v22[27] = v23;
      v22[28] = v36;
      *(v22 + 29) = v56;
      v22[31] = v57;
      *(v22 + 4) = v35;
      LOBYTE(v23) = v33;
      v22[56] = v34;
      v22[57] = v23;
      v22[58] = v32;
      v22[59] = v14;
      *(v22 + 15) = 0;
      *(v22 + 16) = v15;
      v22[78] = v16;
      v22[79] = v17;
      v22[89] = v18;
      v22[90] = v19;
      v22[91] = v20;
      v22[93] = v21;
      *(v22 + 27) = *(v55 + 3);
      *(v22 + 105) = v55[0];
      *(v22 + 9) = 0;
      *(v22 + 5) = v12;
      *(v22 + 6) = v13;
      *(v22 + 68) = 0;
      *(v22 + 38) = 0;
      *(v22 + 10) = 0;
      v22[88] = 0;
      v22[92] = 0;
      *(v22 + 94) = 0;
      *(v22 + 101) = 0;
      *(v22 + 14) = 0;
      ++v11;
      v10 += 120;
    }

    while (v30 != v10);
  }

  v24 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v25 = v29;
  [v29 setWcmWiFiCellCoexIssueTable:v24];
  v26 = [v25 wcmWiFiCellCoexIssueTable];
  [v26 configureBy:v31];
  [v25 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v25 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v25 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v25 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v25 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v25 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v25 setWcmCellularScanProtectionCellFrequencies:&off_100289888];
  [v25 setWcmCellularScanProtectionCellFrequenciesforBT:&off_100289930];
  return [v25 setWcmCellularScanProtectionWiFiChannels:&off_1002899D8];
}

id sub_10013D9EC(void *a1)
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
  v58 = 0;
  v59 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex009_v1.2_NewEnum_v4Macro" options:@"plist") format:2 error:&v58, &v59];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v29 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v28 = &v28;
  __chkstk_darwin(v4, v5, v6);
  v31 = &v28 - v7;
  v9 = &v28 + v3 * v8 - v7;
  *v9 = 211;
  *(v9 + 4) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 36) = 0u;
  *(v9 + 52) = 0u;
  *(v9 + 68) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 0u;
  *(v9 + 29) = 0;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v30 = 120 * v3;
    do
    {
      v56 = 0;
      v57 = 0;
      v55[0] = 0;
      *(v55 + 3) = 0;
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueBand", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueType", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v45 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v44 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v43 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v42 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v41 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v40 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v39 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v38 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v37 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v36 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v12 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v33 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v32 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"CellAntBlk", "intValue"}];
      v22 = &v31[v10];
      v23 = v53;
      *v22 = v54;
      *(v22 + 1) = v23;
      LOBYTE(v23) = v51;
      v22[8] = v52;
      v22[13] = v23;
      LOBYTE(v23) = v49;
      v22[14] = v50;
      v22[15] = v23;
      LOBYTE(v23) = v47;
      v22[16] = v48;
      v22[17] = v23;
      LOBYTE(v23) = v45;
      v22[18] = v46;
      v22[19] = v23;
      LOBYTE(v23) = v43;
      v22[20] = v44;
      v22[21] = v23;
      LOBYTE(v23) = v41;
      v22[22] = v42;
      v22[23] = v23;
      LOBYTE(v23) = v39;
      v22[24] = v40;
      v22[25] = v23;
      LOBYTE(v23) = v37;
      v22[26] = v38;
      v22[27] = v23;
      v22[28] = v36;
      *(v22 + 29) = v56;
      v22[31] = v57;
      *(v22 + 4) = v35;
      LOBYTE(v23) = v33;
      v22[56] = v34;
      v22[57] = v23;
      v22[58] = v32;
      v22[59] = v14;
      *(v22 + 15) = 0;
      *(v22 + 16) = v15;
      v22[78] = v16;
      v22[79] = v17;
      v22[89] = v18;
      v22[90] = v19;
      v22[91] = v20;
      v22[93] = v21;
      *(v22 + 27) = *(v55 + 3);
      *(v22 + 105) = v55[0];
      *(v22 + 9) = 0;
      *(v22 + 5) = v12;
      *(v22 + 6) = v13;
      *(v22 + 68) = 0;
      *(v22 + 38) = 0;
      *(v22 + 10) = 0;
      v22[88] = 0;
      v22[92] = 0;
      *(v22 + 94) = 0;
      *(v22 + 101) = 0;
      *(v22 + 14) = 0;
      ++v11;
      v10 += 120;
    }

    while (v30 != v10);
  }

  v24 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v25 = v29;
  [v29 setWcmWiFiCellCoexIssueTable:v24];
  v26 = [v25 wcmWiFiCellCoexIssueTable];
  [v26 configureBy:v31];
  [v25 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v25 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v25 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v25 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v25 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v25 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v25 setWcmCellularScanProtectionCellFrequencies:&off_100289A80];
  [v25 setWcmCellularScanProtectionCellFrequenciesforBT:&off_100289B28];
  return [v25 setWcmCellularScanProtectionWiFiChannels:&off_100289BD0];
}

id sub_10013E364(void *a1)
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
  v58 = 0;
  v59 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex006_v1.1_NewEnum_v4Macro" options:@"plist") format:2 error:&v58, &v59];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v29 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v28 = &v28;
  __chkstk_darwin(v4, v5, v6);
  v31 = &v28 - v7;
  v9 = &v28 + v3 * v8 - v7;
  *v9 = 211;
  *(v9 + 4) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 36) = 0u;
  *(v9 + 52) = 0u;
  *(v9 + 68) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 0u;
  *(v9 + 29) = 0;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v30 = 120 * v3;
    do
    {
      v56 = 0;
      v57 = 0;
      v55[0] = 0;
      *(v55 + 3) = 0;
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueBand", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueType", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v45 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v44 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v43 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v42 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v41 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v40 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v39 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v38 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v37 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v36 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v12 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v33 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v32 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"CellAntBlk", "intValue"}];
      v22 = &v31[v10];
      v23 = v53;
      *v22 = v54;
      *(v22 + 1) = v23;
      LOBYTE(v23) = v51;
      v22[8] = v52;
      v22[13] = v23;
      LOBYTE(v23) = v49;
      v22[14] = v50;
      v22[15] = v23;
      LOBYTE(v23) = v47;
      v22[16] = v48;
      v22[17] = v23;
      LOBYTE(v23) = v45;
      v22[18] = v46;
      v22[19] = v23;
      LOBYTE(v23) = v43;
      v22[20] = v44;
      v22[21] = v23;
      LOBYTE(v23) = v41;
      v22[22] = v42;
      v22[23] = v23;
      LOBYTE(v23) = v39;
      v22[24] = v40;
      v22[25] = v23;
      LOBYTE(v23) = v37;
      v22[26] = v38;
      v22[27] = v23;
      v22[28] = v36;
      *(v22 + 29) = v56;
      v22[31] = v57;
      *(v22 + 4) = v35;
      LOBYTE(v23) = v33;
      v22[56] = v34;
      v22[57] = v23;
      v22[58] = v32;
      v22[59] = v14;
      *(v22 + 15) = 0;
      *(v22 + 16) = v15;
      v22[78] = v16;
      v22[79] = v17;
      v22[89] = v18;
      v22[90] = v19;
      v22[91] = v20;
      v22[93] = v21;
      *(v22 + 27) = *(v55 + 3);
      *(v22 + 105) = v55[0];
      *(v22 + 9) = 0;
      *(v22 + 5) = v12;
      *(v22 + 6) = v13;
      *(v22 + 68) = 0;
      *(v22 + 38) = 0;
      *(v22 + 10) = 0;
      v22[88] = 0;
      v22[92] = 0;
      *(v22 + 94) = 0;
      *(v22 + 101) = 0;
      *(v22 + 14) = 0;
      ++v11;
      v10 += 120;
    }

    while (v30 != v10);
  }

  v24 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v25 = v29;
  [v29 setWcmWiFiCellCoexIssueTable:v24];
  v26 = [v25 wcmWiFiCellCoexIssueTable];
  [v26 configureBy:v31];
  [v25 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v25 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v25 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v25 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v25 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v25 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v25 setWcmCellularScanProtectionCellFrequencies:&off_100289C78];
  [v25 setWcmCellularScanProtectionCellFrequenciesforBT:&off_100289D20];
  return [v25 setWcmCellularScanProtectionWiFiChannels:&off_100289DC8];
}

id sub_10013ECDC(void *a1)
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
  v58 = 0;
  v59 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex007_v1.1_NewEnum_v4Macro" options:@"plist") format:2 error:&v58, &v59];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v29 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v28 = &v28;
  __chkstk_darwin(v4, v5, v6);
  v31 = &v28 - v7;
  v9 = &v28 + v3 * v8 - v7;
  *v9 = 211;
  *(v9 + 4) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 36) = 0u;
  *(v9 + 52) = 0u;
  *(v9 + 68) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 0u;
  *(v9 + 29) = 0;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v30 = 120 * v3;
    do
    {
      v56 = 0;
      v57 = 0;
      v55[0] = 0;
      *(v55 + 3) = 0;
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueBand", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"issueType", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v45 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v44 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v43 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v42 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v41 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v40 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v39 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v38 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v37 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v36 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v12 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v33 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v32 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v11), "objectForKey:", @"CellAntBlk", "intValue"}];
      v22 = &v31[v10];
      v23 = v53;
      *v22 = v54;
      *(v22 + 1) = v23;
      LOBYTE(v23) = v51;
      v22[8] = v52;
      v22[13] = v23;
      LOBYTE(v23) = v49;
      v22[14] = v50;
      v22[15] = v23;
      LOBYTE(v23) = v47;
      v22[16] = v48;
      v22[17] = v23;
      LOBYTE(v23) = v45;
      v22[18] = v46;
      v22[19] = v23;
      LOBYTE(v23) = v43;
      v22[20] = v44;
      v22[21] = v23;
      LOBYTE(v23) = v41;
      v22[22] = v42;
      v22[23] = v23;
      LOBYTE(v23) = v39;
      v22[24] = v40;
      v22[25] = v23;
      LOBYTE(v23) = v37;
      v22[26] = v38;
      v22[27] = v23;
      v22[28] = v36;
      *(v22 + 29) = v56;
      v22[31] = v57;
      *(v22 + 4) = v35;
      LOBYTE(v23) = v33;
      v22[56] = v34;
      v22[57] = v23;
      v22[58] = v32;
      v22[59] = v14;
      *(v22 + 15) = 0;
      *(v22 + 16) = v15;
      v22[78] = v16;
      v22[79] = v17;
      v22[89] = v18;
      v22[90] = v19;
      v22[91] = v20;
      v22[93] = v21;
      *(v22 + 27) = *(v55 + 3);
      *(v22 + 105) = v55[0];
      *(v22 + 9) = 0;
      *(v22 + 5) = v12;
      *(v22 + 6) = v13;
      *(v22 + 68) = 0;
      *(v22 + 38) = 0;
      *(v22 + 10) = 0;
      v22[88] = 0;
      v22[92] = 0;
      *(v22 + 94) = 0;
      *(v22 + 101) = 0;
      *(v22 + 14) = 0;
      ++v11;
      v10 += 120;
    }

    while (v30 != v10);
  }

  v24 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v25 = v29;
  [v29 setWcmWiFiCellCoexIssueTable:v24];
  v26 = [v25 wcmWiFiCellCoexIssueTable];
  [v26 configureBy:v31];
  [v25 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v25 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v25 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v25 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v25 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v25 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v25 setWcmCellularScanProtectionCellFrequencies:&off_100289E70];
  [v25 setWcmCellularScanProtectionCellFrequenciesforBT:&off_100289F18];
  return [v25 setWcmCellularScanProtectionWiFiChannels:&off_100289FC0];
}

id sub_10013F654(void *a1)
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
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex012_WiFiEnh_v1" options:@"plist") format:2 error:&v73, &v74];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v41 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v40[1] = v40;
  __chkstk_darwin(v4, v5, v6);
  v43 = v40 - v7;
  v9 = v40 + v3 * v8 - v7;
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
    v42 = 120 * v10;
    do
    {
      v71 = 0;
      v72 = 0;
      v70[0] = 0;
      *(v70 + 3) = 0;
      v69 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v68 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v45 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v44 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12++), "objectForKey:", @"isWifiEnhBand", "intValue"}];
      v23 = &v43[v11];
      v24 = v68;
      *v23 = v69;
      *(v23 + 1) = v24;
      LOBYTE(v24) = v66;
      v23[8] = v67;
      v23[13] = v24;
      *(v23 + 9) = 0;
      v25 = v64;
      v23[14] = v65;
      v23[15] = v25;
      v26 = v62;
      v23[16] = v63;
      v23[17] = v26;
      v27 = v60;
      v23[18] = v61;
      v23[19] = v27;
      v28 = v58;
      v23[20] = v59;
      v23[21] = v28;
      v29 = v56;
      v23[22] = v57;
      v23[23] = v29;
      v30 = v54;
      v23[24] = v55;
      v23[25] = v30;
      v31 = v52;
      v23[26] = v53;
      v23[27] = v31;
      v23[28] = v51;
      *(v23 + 29) = v71;
      v23[31] = v72;
      *(v23 + 4) = v50;
      *(v23 + 5) = v13;
      *(v23 + 6) = v14;
      v32 = v48;
      v23[56] = v49;
      v23[57] = v32;
      v33 = v46;
      v23[58] = v47;
      v23[59] = v33;
      v34 = v44;
      v35 = v45;
      *(v23 + 15) = 0;
      *(v23 + 16) = v35;
      *(v23 + 68) = 0;
      *(v23 + 38) = 0;
      v23[78] = v34;
      v23[79] = v15;
      *(v23 + 10) = 0;
      v23[88] = 0;
      v23[89] = v16;
      v23[90] = v17;
      v23[91] = v18;
      v23[92] = 0;
      v23[93] = v19;
      v23[94] = v20;
      v23[95] = v21;
      v23[96] = v22 != 0;
      *(v23 + 97) = 0;
      *(v23 + 27) = *(v70 + 3);
      *(v23 + 105) = v70[0];
      v11 += 120;
      *(v23 + 14) = 0;
    }

    while (v42 != v11);
  }

  v36 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v37 = v41;
  [v41 setWcmWiFiCellCoexIssueTable:v36];
  v38 = [v37 wcmWiFiCellCoexIssueTable];
  [v38 configureBy:v43];
  [v37 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v37 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v37 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v37 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v37 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v37 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v37 setWcmCellularScanProtectionCellFrequencies:&off_10028A068];
  [v37 setWcmCellularScanProtectionCellFrequenciesforBT:&off_10028A110];
  return [v37 setWcmCellularScanProtectionWiFiChannels:&off_10028A1B8];
}

id sub_100140054(void *a1)
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
  v65 = 0;
  v66 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex015_V6WiFiEnh" options:@"plist") format:2 error:&v65, &v66];
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
  v33 = &v30 - v7;
  v9 = &v30 + v3 * v8 - v7;
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
    v32 = 120 * v10;
    do
    {
      v63 = 0;
      v64 = 0;
      v62[0] = 0;
      *(v62 + 3) = 0;
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v45 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v44 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v43 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v42 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v41 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v40 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v39 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v38 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v37 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v36 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12++), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v23 = &v33[v11];
      v24 = v60;
      *v23 = v61;
      *(v23 + 1) = v24;
      LOBYTE(v24) = v58;
      v23[8] = v59;
      v23[13] = v24;
      LOBYTE(v24) = v56;
      v23[14] = v57;
      v23[15] = v24;
      LOBYTE(v24) = v54;
      v23[16] = v55;
      v23[17] = v24;
      LOBYTE(v24) = v52;
      v23[18] = v53;
      v23[19] = v24;
      LOBYTE(v24) = v50;
      v23[20] = v51;
      v23[21] = v24;
      LOBYTE(v24) = v48;
      v23[22] = v49;
      v23[23] = v24;
      LOBYTE(v24) = v46;
      v23[24] = v47;
      v23[25] = v24;
      LOBYTE(v24) = v44;
      v23[26] = v45;
      v23[27] = v24;
      v23[28] = v43;
      *(v23 + 29) = v63;
      v23[31] = v64;
      *(v23 + 4) = v42;
      LOBYTE(v24) = v40;
      v23[56] = v41;
      v23[57] = v24;
      LOBYTE(v24) = v38;
      v23[58] = v39;
      v23[59] = v24;
      LOBYTE(v24) = v36;
      v25 = v37;
      *(v23 + 15) = 0;
      *(v23 + 16) = v25;
      v23[78] = v24;
      LOBYTE(v24) = v34;
      v23[79] = v35;
      v23[89] = v24;
      v23[90] = v15;
      v23[91] = v16;
      v23[93] = v17;
      v23[94] = v18;
      v23[95] = v19;
      v23[96] = v20;
      v23[97] = v21;
      v23[98] = v22;
      *(v23 + 27) = *(v62 + 3);
      *(v23 + 105) = v62[0];
      *(v23 + 9) = 0;
      *(v23 + 5) = v13;
      *(v23 + 6) = v14;
      *(v23 + 68) = 0;
      *(v23 + 38) = 0;
      *(v23 + 10) = 0;
      v23[88] = 0;
      v23[92] = 0;
      *(v23 + 103) = 0;
      *(v23 + 99) = 0;
      *(v23 + 14) = 0;
      v11 += 120;
    }

    while (v32 != v11);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v27 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028A200];
  [v27 setWcmCellularScanProtectionCellFrequenciesforBT:&off_10028A248];
  return [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028A290];
}

id sub_100140AAC(void *a1)
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
  v65 = 0;
  v66 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex016_V6WiFiEnh" options:@"plist") format:2 error:&v65, &v66];
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
  v33 = &v30 - v7;
  v9 = &v30 + v3 * v8 - v7;
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
    v32 = 120 * v10;
    do
    {
      v63 = 0;
      v64 = 0;
      v62[0] = 0;
      *(v62 + 3) = 0;
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v45 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v44 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v43 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v42 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v41 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v40 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v39 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v38 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v37 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v36 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12++), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v23 = &v33[v11];
      v24 = v60;
      *v23 = v61;
      *(v23 + 1) = v24;
      LOBYTE(v24) = v58;
      v23[8] = v59;
      v23[13] = v24;
      LOBYTE(v24) = v56;
      v23[14] = v57;
      v23[15] = v24;
      LOBYTE(v24) = v54;
      v23[16] = v55;
      v23[17] = v24;
      LOBYTE(v24) = v52;
      v23[18] = v53;
      v23[19] = v24;
      LOBYTE(v24) = v50;
      v23[20] = v51;
      v23[21] = v24;
      LOBYTE(v24) = v48;
      v23[22] = v49;
      v23[23] = v24;
      LOBYTE(v24) = v46;
      v23[24] = v47;
      v23[25] = v24;
      LOBYTE(v24) = v44;
      v23[26] = v45;
      v23[27] = v24;
      v23[28] = v43;
      *(v23 + 29) = v63;
      v23[31] = v64;
      *(v23 + 4) = v42;
      LOBYTE(v24) = v40;
      v23[56] = v41;
      v23[57] = v24;
      LOBYTE(v24) = v38;
      v23[58] = v39;
      v23[59] = v24;
      LOBYTE(v24) = v36;
      v25 = v37;
      *(v23 + 15) = 0;
      *(v23 + 16) = v25;
      v23[78] = v24;
      LOBYTE(v24) = v34;
      v23[79] = v35;
      v23[89] = v24;
      v23[90] = v15;
      v23[91] = v16;
      v23[93] = v17;
      v23[94] = v18;
      v23[95] = v19;
      v23[96] = v20;
      v23[97] = v21;
      v23[98] = v22;
      *(v23 + 27) = *(v62 + 3);
      *(v23 + 105) = v62[0];
      *(v23 + 9) = 0;
      *(v23 + 5) = v13;
      *(v23 + 6) = v14;
      *(v23 + 68) = 0;
      *(v23 + 38) = 0;
      *(v23 + 10) = 0;
      v23[88] = 0;
      v23[92] = 0;
      *(v23 + 103) = 0;
      *(v23 + 99) = 0;
      *(v23 + 14) = 0;
      v11 += 120;
    }

    while (v32 != v11);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v27 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028A2D8];
  [v27 setWcmCellularScanProtectionCellFrequenciesforBT:&off_10028A320];
  return [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028A368];
}

id sub_100141504(void *a1)
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
  v65 = 0;
  v66 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex014_V6WiFiEnh" options:@"plist") format:2 error:&v65, &v66];
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
  v33 = &v30 - v7;
  v9 = &v30 + v3 * v8 - v7;
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
    v32 = 120 * v10;
    do
    {
      v63 = 0;
      v64 = 0;
      v62[0] = 0;
      *(v62 + 3) = 0;
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v45 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v44 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v43 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v42 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v41 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v40 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v39 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v38 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v37 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v36 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12++), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v23 = &v33[v11];
      v24 = v60;
      *v23 = v61;
      *(v23 + 1) = v24;
      LOBYTE(v24) = v58;
      v23[8] = v59;
      v23[13] = v24;
      LOBYTE(v24) = v56;
      v23[14] = v57;
      v23[15] = v24;
      LOBYTE(v24) = v54;
      v23[16] = v55;
      v23[17] = v24;
      LOBYTE(v24) = v52;
      v23[18] = v53;
      v23[19] = v24;
      LOBYTE(v24) = v50;
      v23[20] = v51;
      v23[21] = v24;
      LOBYTE(v24) = v48;
      v23[22] = v49;
      v23[23] = v24;
      LOBYTE(v24) = v46;
      v23[24] = v47;
      v23[25] = v24;
      LOBYTE(v24) = v44;
      v23[26] = v45;
      v23[27] = v24;
      v23[28] = v43;
      *(v23 + 29) = v63;
      v23[31] = v64;
      *(v23 + 4) = v42;
      LOBYTE(v24) = v40;
      v23[56] = v41;
      v23[57] = v24;
      LOBYTE(v24) = v38;
      v23[58] = v39;
      v23[59] = v24;
      LOBYTE(v24) = v36;
      v25 = v37;
      *(v23 + 15) = 0;
      *(v23 + 16) = v25;
      v23[78] = v24;
      LOBYTE(v24) = v34;
      v23[79] = v35;
      v23[89] = v24;
      v23[90] = v15;
      v23[91] = v16;
      v23[93] = v17;
      v23[94] = v18;
      v23[95] = v19;
      v23[96] = v20;
      v23[97] = v21;
      v23[98] = v22;
      *(v23 + 27) = *(v62 + 3);
      *(v23 + 105) = v62[0];
      *(v23 + 9) = 0;
      *(v23 + 5) = v13;
      *(v23 + 6) = v14;
      *(v23 + 68) = 0;
      *(v23 + 38) = 0;
      *(v23 + 10) = 0;
      v23[88] = 0;
      v23[92] = 0;
      *(v23 + 103) = 0;
      *(v23 + 99) = 0;
      *(v23 + 14) = 0;
      v11 += 120;
    }

    while (v32 != v11);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v27 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028A3B0];
  [v27 setWcmCellularScanProtectionCellFrequenciesforBT:&off_10028A3F8];
  return [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028A440];
}

id sub_100141F5C(void *a1)
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
  v65 = 0;
  v66 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex013_V6WiFiEnh" options:@"plist") format:2 error:&v65, &v66];
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
  v33 = &v30 - v7;
  v9 = &v30 + v3 * v8 - v7;
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
    v32 = 120 * v10;
    do
    {
      v63 = 0;
      v64 = 0;
      v62[0] = 0;
      *(v62 + 3) = 0;
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v45 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v44 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v43 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v42 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v41 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v40 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v39 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v38 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v37 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v36 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v34 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12++), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v23 = &v33[v11];
      v24 = v60;
      *v23 = v61;
      *(v23 + 1) = v24;
      LOBYTE(v24) = v58;
      v23[8] = v59;
      v23[13] = v24;
      LOBYTE(v24) = v56;
      v23[14] = v57;
      v23[15] = v24;
      LOBYTE(v24) = v54;
      v23[16] = v55;
      v23[17] = v24;
      LOBYTE(v24) = v52;
      v23[18] = v53;
      v23[19] = v24;
      LOBYTE(v24) = v50;
      v23[20] = v51;
      v23[21] = v24;
      LOBYTE(v24) = v48;
      v23[22] = v49;
      v23[23] = v24;
      LOBYTE(v24) = v46;
      v23[24] = v47;
      v23[25] = v24;
      LOBYTE(v24) = v44;
      v23[26] = v45;
      v23[27] = v24;
      v23[28] = v43;
      *(v23 + 29) = v63;
      v23[31] = v64;
      *(v23 + 4) = v42;
      LOBYTE(v24) = v40;
      v23[56] = v41;
      v23[57] = v24;
      LOBYTE(v24) = v38;
      v23[58] = v39;
      v23[59] = v24;
      LOBYTE(v24) = v36;
      v25 = v37;
      *(v23 + 15) = 0;
      *(v23 + 16) = v25;
      v23[78] = v24;
      LOBYTE(v24) = v34;
      v23[79] = v35;
      v23[89] = v24;
      v23[90] = v15;
      v23[91] = v16;
      v23[93] = v17;
      v23[94] = v18;
      v23[95] = v19;
      v23[96] = v20;
      v23[97] = v21;
      v23[98] = v22;
      *(v23 + 27) = *(v62 + 3);
      *(v23 + 105) = v62[0];
      *(v23 + 9) = 0;
      *(v23 + 5) = v13;
      *(v23 + 6) = v14;
      *(v23 + 68) = 0;
      *(v23 + 38) = 0;
      *(v23 + 10) = 0;
      v23[88] = 0;
      v23[92] = 0;
      *(v23 + 103) = 0;
      *(v23 + 99) = 0;
      *(v23 + 14) = 0;
      v11 += 120;
    }

    while (v32 != v11);
  }

  v26 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v27 = v31;
  [v31 setWcmWiFiCellCoexIssueTable:v26];
  v28 = [v27 wcmWiFiCellCoexIssueTable];
  [v28 configureBy:v33];
  [v27 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v27 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v27 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v27 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v27 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v27 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v27 setWcmCellularScanProtectionCellFrequencies:&off_10028A488];
  [v27 setWcmCellularScanProtectionCellFrequenciesforBT:&off_10028A4D0];
  return [v27 setWcmCellularScanProtectionWiFiChannels:&off_10028A518];
}

id sub_1001429B4(void *a1)
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
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex033_V7WiFiEnh" options:@"plist") format:2 error:&v73, &v74];
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
  [v28 setWcmCellRc1CoexIssueTable:0];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v28 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v28 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_10028A5C0];
  if (_os_feature_enabled_impl())
  {
    v30 = &off_10028A668;
  }

  else
  {
    v30 = &off_10028A710;
  }

  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:v30];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_10028A7B8];
  [v28 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_10028A860];
  [v28 setWcmWiFiScanThrottlingChannelIndices:&off_10028A878];
  [v28 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_10028A890, @"LTE", &off_10028A8A8, @"NR", 0)}];
  return [v28 setWcmGen9rFemDefaultMode5gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_10028A8C0, @"LTE", 0)}];
}

id sub_100143608(void *a1)
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
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex033_V7WiFiEnh" options:@"plist") format:2 error:&v73, &v74];
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
  [v28 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex002"}];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v28 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v28 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_10028A938];
  if (_os_feature_enabled_impl())
  {
    v30 = &off_10028A9B0;
  }

  else
  {
    v30 = &off_10028AA28;
  }

  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:v30];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_10028AAA0];
  [v28 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_10028AB18];
  [v28 setWcmWiFiScanThrottlingChannelIndices:&off_10028AB30];
  [v28 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_10028AB48, @"LTE", &off_10028AB60, @"NR", 0)}];
  return [v28 setWcmGen9rFemDefaultMode5gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_10028AB78, @"LTE", 0)}];
}

id sub_100144274(void *a1)
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
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex034_V7WiFiEnh" options:@"plist") format:2 error:&v73, &v74];
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
  [v28 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v28 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_10028ABF0];
  if (_os_feature_enabled_impl())
  {
    v30 = &off_10028AC68;
  }

  else
  {
    v30 = &off_10028ACE0;
  }

  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:v30];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_10028AD58];
  [v28 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_10028ADD0];
  [v28 setWcmWiFiScanThrottlingChannelIndices:&off_10028ADE8];
  [v28 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_10028AE00, @"LTE", &off_10028AE18, @"NR", 0)}];
  return [v28 setWcmGen9rFemDefaultMode5gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_10028AE30, @"LTE", 0)}];
}

id sub_100144EE0(void *a1)
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
  v72 = 0;
  v73 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex032_V7WiFiEnh" options:@"plist") format:2 error:&v72, &v73];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v32 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v31[1] = v31;
  __chkstk_darwin(v4, v5, v6);
  v34 = v31 - v7;
  v9 = v31 + v3 * v8 - v7;
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
    v33 = 120 * v10;
    do
    {
      v68 = v11;
      v70 = 0;
      v71 = 0;
      v69[0] = 0;
      *(v69 + 3) = 0;
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v45 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v44 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v43 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v42 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v41 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v40 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v39 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v38 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v37 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v36 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v24 = v68;
      ++v12;
      v25 = &v34[v68];
      v26 = v66;
      *v25 = v67;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v64;
      v25[8] = v65;
      v25[13] = v26;
      LOBYTE(v26) = v62;
      v25[14] = v63;
      v25[15] = v26;
      LOBYTE(v26) = v60;
      v25[16] = v61;
      v25[17] = v26;
      LOBYTE(v26) = v58;
      v25[18] = v59;
      v25[19] = v26;
      LOBYTE(v26) = v56;
      v25[20] = v57;
      v25[21] = v26;
      LOBYTE(v26) = v54;
      v25[22] = v55;
      v25[23] = v26;
      LOBYTE(v26) = v52;
      v25[24] = v53;
      v25[25] = v26;
      LOBYTE(v26) = v50;
      v25[26] = v51;
      v25[27] = v26;
      v25[28] = v49;
      *(v25 + 29) = v70;
      v25[31] = v71;
      *(v25 + 4) = v48;
      LOBYTE(v26) = v46;
      v25[56] = v47;
      v25[57] = v26;
      LOBYTE(v26) = v44;
      v25[58] = v45;
      v25[59] = v26;
      *(v25 + 16) = v43;
      v25[78] = v42;
      v25[79] = v41;
      v25[89] = v40;
      v25[90] = v39;
      v25[91] = v38;
      v25[93] = v37;
      v25[94] = v36;
      v25[95] = v35;
      v25[96] = v15;
      v25[97] = v16;
      v25[98] = v17;
      v25[99] = v18;
      v25[100] = v19;
      v25[101] = v20;
      v25[102] = v21;
      v25[103] = v22;
      v25[104] = v23;
      *(v25 + 27) = *(v69 + 3);
      *(v25 + 105) = v69[0];
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

    while (v33 != v11);
  }

  v27 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v28 = v32;
  [v32 setWcmWiFiCellCoexIssueTable:v27];
  v29 = [v28 wcmWiFiCellCoexIssueTable];
  [v29 configureBy:v34];
  [v28 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex006"}];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v28 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v28 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_10028AEA8];
  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:&off_10028AF20];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_10028AF98];
  return [v28 setWcmWiFiScanThrottlingChannelIndices:&off_10028AFB0];
}

id sub_100145AAC(void *a1)
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
  v72 = 0;
  v73 = 0;
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex031_V7WiFiEnh" options:@"plist") format:2 error:&v72, &v73];
  if (!v2)
  {
    return [WCM_Logging logLevel:1 message:@"DLDebug_ PlistConversion_ parentArray No Policy Table Plist File Found"];
  }

  v32 = a1;
  [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ parentArray Policy Table Plist File Found"];
  v3 = [v2 count];
  v4 = [WCM_Logging logLevel:4 message:@"DLDebug_ PlistConversion_ numofRow=%d", v3];
  v31[1] = v31;
  __chkstk_darwin(v4, v5, v6);
  v34 = v31 - v7;
  v9 = v31 + v3 * v8 - v7;
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
    v33 = 120 * v10;
    do
    {
      v68 = v11;
      v70 = 0;
      v71 = 0;
      v69[0] = 0;
      *(v69 + 3) = 0;
      v67 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueBand", "intValue"}];
      v66 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"issueType", "intValue"}];
      v65 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWiFiDesense", "BOOLValue"}];
      v64 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v63 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v62 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v61 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v60 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v59 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v58 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v57 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiUlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v56 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap000", "intValue"}];
      v55 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap001", "intValue"}];
      v54 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap010", "intValue"}];
      v53 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap011", "intValue"}];
      v52 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap100", "intValue"}];
      v51 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap101", "intValue"}];
      v50 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap110", "intValue"}];
      v49 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiDlAntennaBitmapOnCellAntBitmap111", "intValue"}];
      v48 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellTxPowerLimit", "intValue"}];
      v13 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellFrequencyLimitForOOB", "intValue"}];
      v14 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"cellBandwidthLimitForOOB", "intValue"}];
      v47 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOB", "intValue"}];
      v46 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOB", "intValue"}];
      v45 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v44 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDoAntennaSelectionForCellOOB", "intValue"}];
      v43 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btDiversityBlocklistType", "intValue"}];
      v42 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btFirstChannelToAvoid", "intValue"}];
      v41 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"btLastChannelToAvoid", "intValue"}];
      v40 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority", "intValue"}];
      v39 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_WiFi", "intValue"}];
      v38 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"ulcaPriority_BT", "intValue"}];
      v37 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"CellAntBlk", "intValue"}];
      v36 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToDisableOCLCellOOB", "intValue"}];
      v35 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToDisableOCLCellOOB", "intValue"}];
      v15 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"isWifiEnhBand", "intValue"}] != 0;
      v16 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiFirstChannelToAvoidForCellOOBPHS", "intValue"}];
      v17 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"wifiLastChannelToAvoidForCellOOBPHS", "intValue"}];
      v18 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii1Enabled", "BOOLValue"}];
      v19 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii3Enabled", "BOOLValue"}];
      v20 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5aEnabled", "BOOLValue"}];
      v21 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5bEnabled", "BOOLValue"}];
      v22 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5cEnabled", "BOOLValue"}];
      v23 = [objc_msgSend(objc_msgSend(v2 objectAtIndex:{v12), "objectForKey:", @"hfbtAntBlkBandUnii5dEnabled", "BOOLValue"}];
      v24 = v68;
      ++v12;
      v25 = &v34[v68];
      v26 = v66;
      *v25 = v67;
      *(v25 + 1) = v26;
      LOBYTE(v26) = v64;
      v25[8] = v65;
      v25[13] = v26;
      LOBYTE(v26) = v62;
      v25[14] = v63;
      v25[15] = v26;
      LOBYTE(v26) = v60;
      v25[16] = v61;
      v25[17] = v26;
      LOBYTE(v26) = v58;
      v25[18] = v59;
      v25[19] = v26;
      LOBYTE(v26) = v56;
      v25[20] = v57;
      v25[21] = v26;
      LOBYTE(v26) = v54;
      v25[22] = v55;
      v25[23] = v26;
      LOBYTE(v26) = v52;
      v25[24] = v53;
      v25[25] = v26;
      LOBYTE(v26) = v50;
      v25[26] = v51;
      v25[27] = v26;
      v25[28] = v49;
      *(v25 + 29) = v70;
      v25[31] = v71;
      *(v25 + 4) = v48;
      LOBYTE(v26) = v46;
      v25[56] = v47;
      v25[57] = v26;
      LOBYTE(v26) = v44;
      v25[58] = v45;
      v25[59] = v26;
      *(v25 + 16) = v43;
      v25[78] = v42;
      v25[79] = v41;
      v25[89] = v40;
      v25[90] = v39;
      v25[91] = v38;
      v25[93] = v37;
      v25[94] = v36;
      v25[95] = v35;
      v25[96] = v15;
      v25[97] = v16;
      v25[98] = v17;
      v25[99] = v18;
      v25[100] = v19;
      v25[101] = v20;
      v25[102] = v21;
      v25[103] = v22;
      v25[104] = v23;
      *(v25 + 27) = *(v69 + 3);
      *(v25 + 105) = v69[0];
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

    while (v33 != v11);
  }

  v27 = objc_alloc_init(WCM_WiFiCellCoexIssueBandTable);
  v28 = v32;
  [v32 setWcmWiFiCellCoexIssueTable:v27];
  v29 = [v28 wcmWiFiCellCoexIssueTable];
  [v29 configureBy:v34];
  [v28 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex005"}];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v28 setWcmCellularCoexB40ARange:{2340.0, 30.1}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{2496.0, 20.0}];
  [v28 setWcmCellularCoexB41A2Range:{2516.0, 29.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_10028B028];
  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:&off_10028B088];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_10028B100];
  return [v28 setWcmWiFiScanThrottlingChannelIndices:&off_10028B118];
}

id sub_100146678(void *a1)
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
  v2 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"CoEx-Table-CellCoex041_V7WiFiEnh" options:@"plist") format:2 error:&v73, &v74];
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
  [v28 setWcmCellRc1CoexIssueTable:{-[WCM_CellularRc1CoexIssueTable initFromPlist:]([WCM_CellularRc1CoexIssueTable alloc], "initFromPlist:", @"CoEx-Table-CellRC1-Coex002"}];
  [v28 setWcmCellularCoexB7DLRange:{2620.0, 40.0}];
  [v28 setWcmCellularCoexB7ULRange:{2500.0, 40.0}];
  [v28 setWcmCellularCoexB40ARange:{0.0, 0.0}];
  [v28 setWcmCellularCoexB40BRange:{2370.1, 30.0}];
  [v28 setWcmCellularCoexB41A1Range:{0.0, 0.0}];
  [v28 setWcmCellularCoexB41A2Range:{0.0, 0.0}];
  [v28 setWcmCellularScanProtectionCellFrequencies:&off_10028B1A8];
  if (_os_feature_enabled_impl())
  {
    v30 = &off_10028B238;
  }

  else
  {
    v30 = &off_10028B2C8;
  }

  [v28 setWcmCellularScanProtectionCellFrequenciesforBT:v30];
  [v28 setWcmCellularScanProtectionWiFiChannels:&off_10028B358];
  [v28 setWcmCellularScanProtectionWiFiChannelsWiFiEnh:&off_10028B3E8];
  [v28 setWcmWiFiScanThrottlingChannelIndices:0];
  [v28 setWcmGen9rFemDefaultMode2gWiFiCellularbands:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", &off_10028B400, @"LTE", &off_10028B418, @"NR", 0)}];
  return [v28 setWcmGen9rFemDefaultMode5gWiFiCellularbands:0];
}