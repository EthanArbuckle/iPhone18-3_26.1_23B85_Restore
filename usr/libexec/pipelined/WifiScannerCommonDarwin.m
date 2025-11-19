@interface WifiScannerCommonDarwin
+ (id)channelDictsForChannels:(id)a3 withSupportedChannelDicts:(id)a4;
+ (id)commonNetworkResultsToScanResults:(id)a3 withConverter:(id)a4;
+ (id)dictionaryToScanSettings:(id)a3;
+ (id)findChannel:(int)a3 in:(id)a4;
+ (id)networkResultsToScanResults:(id)a3;
+ (id)scanResultWithAge:(id)a3 bssid:(id)a4 ssid:(id)a5 channel:(id)a6 rssi:(id)a7 flags:(id)a8 adHoc:(BOOL)a9 captive:(BOOL)a10 mode:(id)a11 personalHotspot:(BOOL)a12;
+ (id)scanSettingsToDictionary:(id)a3 usingSupportedChannels:(id)a4 logTo:(id)a5;
@end

@implementation WifiScannerCommonDarwin

+ (id)dictionaryToScanSettings:(id)a3
{
  v3 = a3;
  v27 = [v3 objectForKeyedSubscript:@"SCAN_CHANNELS"];
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v27, "count")}];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v27;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = *v29;
  do
  {
    v8 = 0;
    do
    {
      if (*v29 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = [*(*(&v28 + 1) + 8 * v8) objectForKeyedSubscript:@"CHANNEL"];
      if (!v9)
      {
        sub_100014A08(v33, "");
        sub_1001EDF78("Cannot find channel in settings dictionary", &v36);
        sub_1000E661C(v33, &v36, 1);
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
          if (v34 < 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          if ((v34 & 0x80000000) == 0)
          {
            goto LABEL_11;
          }

LABEL_13:
          operator delete(v33[0]);
        }

LABEL_11:
        sub_10003F5D0(&__p);
      }

      [v4 addObject:v9];

      v8 = v8 + 1;
    }

    while (v6 != v8);
    v10 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
    v6 = v10;
  }

  while (v10);
LABEL_15:

  v11 = [v3 objectForKeyedSubscript:@"SCAN_DWELL_TIME"];
  v12 = [v11 intValue];

  v13 = [v3 objectForKeyedSubscript:@"SCAN_INC_OFFCHANNEL_BSS"];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 BOOLValue];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v3 objectForKeyedSubscript:@"SCAN_TYPE"];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 intValue];
    if (v18 == 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2 * (v18 == 2);
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = [v3 objectForKeyedSubscript:@"SCAN_LOW_PRIORITY"];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 BOOLValue];
  }

  else
  {
    v22 = 0;
  }

  v23 = [WifiScannerSettings alloc];
  LODWORD(v24) = 2141192192;
  v25 = [(WifiScannerSettings *)v23 initWithChannels:v4 dwell:v12 scanType:v19 includingOffChannelResults:v15 atDutyCycle:v22 asLowPriority:v24];

  return v25;
}

+ (id)findChannel:(int)a3 in:(id)a4
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{@"SUP_CHANNEL", v15}];
        v11 = v10;
        if (v10 && [v10 intValue] == a3)
        {
          v19[0] = @"CHANNEL";
          v19[1] = @"CHANNEL_FLAGS";
          v20[0] = v11;
          v13 = [v9 objectForKeyedSubscript:@"SUP_CHANNEL_FLAGS"];
          v20[1] = v13;
          v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];

          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

+ (id)channelDictsForChannels:(id)a3 withSupportedChannelDicts:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 count];
    v8 = 0;
    if (v6 && v7)
    {
      v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = +[WifiScannerCommonDarwin findChannel:in:](WifiScannerCommonDarwin, "findChannel:in:", [*(*(&v15 + 1) + 8 * i) intValue], v6);
            if (v13)
            {
              [v8 addObject:v13];
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)scanSettingsToDictionary:(id)a3 usingSupportedChannels:(id)a4 logTo:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSMutableDictionary alloc] initWithCapacity:4];
  [v8 setObject:&__kCFBooleanFalse forKey:@"SCAN_MERGE"];
  if (!v6)
  {
    [v8 setObject:&off_10044F2A0 forKey:@"SCAN_TYPE"];
    [v8 setObject:&off_10044F2B8 forKey:@"SCAN_DWELL_TIME"];
    goto LABEL_31;
  }

  v9 = [v6 scanType];
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = &off_10044F2D0;
    }

    else
    {
      if (v9 != 2)
      {
        if (qword_10045B050 != -1)
        {
          sub_1003870B4();
        }

        v11 = qword_10045B058;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v20 = 67109120;
          LODWORD(v21) = [v6 scanType];
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unsupported scan type %d", &v20, 8u);
        }

        goto LABEL_14;
      }

      v10 = &off_10044F2A0;
    }

    [v8 setObject:v10 forKey:@"SCAN_TYPE"];
  }

LABEL_14:
  if ([v6 lowPriorityScan])
  {
    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SCAN_LOW_PRIORITY"];
  }

  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SCAN_TRIM_RESULTS"];
  v12 = [v6 dwell];
  if (v12 < 1)
  {
    if (qword_10045B050 != -1)
    {
      sub_1003870C8();
    }

    v14 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      v20 = 134217984;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Invalid dwell duration of %lld ms specified.  Default well time will be used", &v20, 0xCu);
    }
  }

  else
  {
    v13 = [NSNumber numberWithLongLong:v12];
    [v8 setObject:v13 forKey:@"SCAN_DWELL_TIME"];
  }

  if ([v6 includeOffChannelResults])
  {
    [v8 setObject:&__kCFBooleanTrue forKey:@"SCAN_INC_OFFCHANNEL_BSS"];
  }

  v15 = [v6 channels];
  v16 = v7[2](v7);
  v17 = [WifiScannerCommonDarwin channelDictsForChannels:v15 withSupportedChannelDicts:v16];

  if (v17)
  {
    [v8 setObject:v17 forKeyedSubscript:@"SCAN_CHANNELS"];
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_1003870C8();
    }

    v18 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "No WiFi channels are specified to scan.  Will scan all channels", &v20, 2u);
    }
  }

LABEL_31:

  return v8;
}

+ (id)scanResultWithAge:(id)a3 bssid:(id)a4 ssid:(id)a5 channel:(id)a6 rssi:(id)a7 flags:(id)a8 adHoc:(BOOL)a9 captive:(BOOL)a10 mode:(id)a11 personalHotspot:(BOOL)a12
{
  v17 = a3;
  v33 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a11;
  v23 = [WifiScanResult alloc];
  if (v17)
  {
    [v17 floatValue];
    v25 = v24;
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_6:
    v26 = 4294966296;
    if (v20)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v25 = NAN;
  if (!v19)
  {
    goto LABEL_6;
  }

LABEL_3:
  v26 = [v19 intValue];
  if (v20)
  {
LABEL_4:
    v27 = [v20 intValue];
    goto LABEL_8;
  }

LABEL_7:
  v27 = 2000000000;
LABEL_8:
  v28 = [v21 unsignedIntValue];
  if (v22)
  {
    v29 = [v22 intValue];
  }

  else
  {
    v29 = -2000000000;
  }

  HIDWORD(v32) = v29;
  BYTE2(v32) = a10;
  BYTE1(v32) = a12;
  LOBYTE(v32) = a9;
  v30 = [WifiScanResult initWithAge:v23 bssid:"initWithAge:bssid:ssid:channel:rssi:flags:adHoc:personalHotspot:captive:mode:" ssid:(v25 * 1000000.0) channel:v33 rssi:v18 flags:v26 adHoc:v27 personalHotspot:v28 captive:v32 mode:?];

  return v30;
}

+ (id)networkResultsToScanResults:(id)a3
{
  v3 = [WifiScannerCommonDarwin commonNetworkResultsToScanResults:a3 withConverter:&stru_100448448];

  return v3;
}

+ (id)commonNetworkResultsToScanResults:(id)a3 withConverter:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = v6[2](v6, *(*(&v14 + 1) + 8 * i));
        [v7 addObject:{v12, v14}];
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v7;
}

@end