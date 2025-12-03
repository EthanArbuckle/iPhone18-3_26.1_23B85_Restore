@interface WifiScannerCommonDarwin
+ (id)channelDictsForChannels:(id)channels withSupportedChannelDicts:(id)dicts;
+ (id)commonNetworkResultsToScanResults:(id)results withConverter:(id)converter;
+ (id)dictionaryToScanSettings:(id)settings;
+ (id)findChannel:(int)channel in:(id)in;
+ (id)networkResultsToScanResults:(id)results;
+ (id)scanResultWithAge:(id)age bssid:(id)bssid ssid:(id)ssid channel:(id)channel rssi:(id)rssi flags:(id)flags adHoc:(BOOL)hoc captive:(BOOL)self0 mode:(id)self1 personalHotspot:(BOOL)self2;
+ (id)scanSettingsToDictionary:(id)dictionary usingSupportedChannels:(id)channels logTo:(id)to;
@end

@implementation WifiScannerCommonDarwin

+ (id)dictionaryToScanSettings:(id)settings
{
  settingsCopy = settings;
  v27 = [settingsCopy objectForKeyedSubscript:@"SCAN_CHANNELS"];
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

  v11 = [settingsCopy objectForKeyedSubscript:@"SCAN_DWELL_TIME"];
  intValue = [v11 intValue];

  v13 = [settingsCopy objectForKeyedSubscript:@"SCAN_INC_OFFCHANNEL_BSS"];
  v14 = v13;
  if (v13)
  {
    bOOLValue = [v13 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v16 = [settingsCopy objectForKeyedSubscript:@"SCAN_TYPE"];
  v17 = v16;
  if (v16)
  {
    intValue2 = [v16 intValue];
    if (intValue2 == 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2 * (intValue2 == 2);
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = [settingsCopy objectForKeyedSubscript:@"SCAN_LOW_PRIORITY"];
  v21 = v20;
  if (v20)
  {
    bOOLValue2 = [v20 BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  v23 = [WifiScannerSettings alloc];
  LODWORD(v24) = 2141192192;
  v25 = [(WifiScannerSettings *)v23 initWithChannels:v4 dwell:intValue scanType:v19 includingOffChannelResults:bOOLValue atDutyCycle:bOOLValue2 asLowPriority:v24];

  return v25;
}

+ (id)findChannel:(int)channel in:(id)in
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  inCopy = in;
  v6 = [inCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(inCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{@"SUP_CHANNEL", v15}];
        v11 = v10;
        if (v10 && [v10 intValue] == channel)
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

      v6 = [inCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
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

+ (id)channelDictsForChannels:(id)channels withSupportedChannelDicts:(id)dicts
{
  channelsCopy = channels;
  dictsCopy = dicts;
  if (channelsCopy)
  {
    v7 = [channelsCopy count];
    v8 = 0;
    if (dictsCopy && v7)
    {
      v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(channelsCopy, "count")}];
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = channelsCopy;
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

            v13 = +[WifiScannerCommonDarwin findChannel:in:](WifiScannerCommonDarwin, "findChannel:in:", [*(*(&v15 + 1) + 8 * i) intValue], dictsCopy);
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

+ (id)scanSettingsToDictionary:(id)dictionary usingSupportedChannels:(id)channels logTo:(id)to
{
  dictionaryCopy = dictionary;
  channelsCopy = channels;
  v8 = [[NSMutableDictionary alloc] initWithCapacity:4];
  [v8 setObject:&__kCFBooleanFalse forKey:@"SCAN_MERGE"];
  if (!dictionaryCopy)
  {
    [v8 setObject:&off_10044F2A0 forKey:@"SCAN_TYPE"];
    [v8 setObject:&off_10044F2B8 forKey:@"SCAN_DWELL_TIME"];
    goto LABEL_31;
  }

  scanType = [dictionaryCopy scanType];
  if (scanType)
  {
    if (scanType == 1)
    {
      v10 = &off_10044F2D0;
    }

    else
    {
      if (scanType != 2)
      {
        if (qword_10045B050 != -1)
        {
          sub_1003870B4();
        }

        v11 = qword_10045B058;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v20 = 67109120;
          LODWORD(v21) = [dictionaryCopy scanType];
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unsupported scan type %d", &v20, 8u);
        }

        goto LABEL_14;
      }

      v10 = &off_10044F2A0;
    }

    [v8 setObject:v10 forKey:@"SCAN_TYPE"];
  }

LABEL_14:
  if ([dictionaryCopy lowPriorityScan])
  {
    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SCAN_LOW_PRIORITY"];
  }

  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SCAN_TRIM_RESULTS"];
  dwell = [dictionaryCopy dwell];
  if (dwell < 1)
  {
    if (qword_10045B050 != -1)
    {
      sub_1003870C8();
    }

    v14 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      v20 = 134217984;
      v21 = dwell;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Invalid dwell duration of %lld ms specified.  Default well time will be used", &v20, 0xCu);
    }
  }

  else
  {
    v13 = [NSNumber numberWithLongLong:dwell];
    [v8 setObject:v13 forKey:@"SCAN_DWELL_TIME"];
  }

  if ([dictionaryCopy includeOffChannelResults])
  {
    [v8 setObject:&__kCFBooleanTrue forKey:@"SCAN_INC_OFFCHANNEL_BSS"];
  }

  channels = [dictionaryCopy channels];
  v16 = channelsCopy[2](channelsCopy);
  v17 = [WifiScannerCommonDarwin channelDictsForChannels:channels withSupportedChannelDicts:v16];

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

+ (id)scanResultWithAge:(id)age bssid:(id)bssid ssid:(id)ssid channel:(id)channel rssi:(id)rssi flags:(id)flags adHoc:(BOOL)hoc captive:(BOOL)self0 mode:(id)self1 personalHotspot:(BOOL)self2
{
  ageCopy = age;
  bssidCopy = bssid;
  ssidCopy = ssid;
  channelCopy = channel;
  rssiCopy = rssi;
  flagsCopy = flags;
  modeCopy = mode;
  v23 = [WifiScanResult alloc];
  if (ageCopy)
  {
    [ageCopy floatValue];
    v25 = v24;
    if (channelCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    intValue = 4294966296;
    if (rssiCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v25 = NAN;
  if (!channelCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  intValue = [channelCopy intValue];
  if (rssiCopy)
  {
LABEL_4:
    intValue2 = [rssiCopy intValue];
    goto LABEL_8;
  }

LABEL_7:
  intValue2 = 2000000000;
LABEL_8:
  unsignedIntValue = [flagsCopy unsignedIntValue];
  if (modeCopy)
  {
    intValue3 = [modeCopy intValue];
  }

  else
  {
    intValue3 = -2000000000;
  }

  HIDWORD(v32) = intValue3;
  BYTE2(v32) = captive;
  BYTE1(v32) = hotspot;
  LOBYTE(v32) = hoc;
  v30 = [WifiScanResult initWithAge:v23 bssid:"initWithAge:bssid:ssid:channel:rssi:flags:adHoc:personalHotspot:captive:mode:" ssid:(v25 * 1000000.0) channel:bssidCopy rssi:ssidCopy flags:intValue adHoc:intValue2 personalHotspot:unsignedIntValue captive:v32 mode:?];

  return v30;
}

+ (id)networkResultsToScanResults:(id)results
{
  v3 = [WifiScannerCommonDarwin commonNetworkResultsToScanResults:results withConverter:&stru_100448448];

  return v3;
}

+ (id)commonNetworkResultsToScanResults:(id)results withConverter:(id)converter
{
  resultsCopy = results;
  converterCopy = converter;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(resultsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = resultsCopy;
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

        v12 = converterCopy[2](converterCopy, *(*(&v14 + 1) + 8 * i));
        [v7 addObject:{v12, v14}];
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v7;
}

@end