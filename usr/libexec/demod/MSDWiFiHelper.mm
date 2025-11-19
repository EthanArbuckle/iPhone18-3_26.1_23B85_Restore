@interface MSDWiFiHelper
+ (id)sharedInstance;
- (BOOL)configureWiFi:(id)a3 password:(id)a4;
- (BOOL)connectTo:(id)a3 password:(id)a4;
- (BOOL)isValidWiFiSettings:(id)a3;
- (BOOL)saveWiFiSettingsToPreferences:(id)a3;
- (MSDWiFiHelper)init;
- (id)getCurrentWiFiSettings:(BOOL)a3;
- (id)getCurrentWiFiSsid;
- (id)getPersistentWiFiSsid;
- (id)lastJoinedWiFiNetworksProfile;
- (id)loadWiFiSettingsFromPreferences;
- (int64_t)getCurrentWiFiSignalStrength;
- (void)configureWiFiWithPersistentSettings;
- (void)disassociateAndForgetWiFi;
- (void)forgetAllKnownWiFiNetworksExcept:(id)a3;
- (void)saveCurrentWiFiSettings;
- (void)waitForWiFiDriver;
- (void)waitForWiFiInterface;
- (void)waitForWiFiLink;
@end

@implementation MSDWiFiHelper

+ (id)sharedInstance
{
  if (qword_1001A5A70 != -1)
  {
    sub_1000E944C();
  }

  v3 = qword_1001A5A68;

  return v3;
}

- (BOOL)configureWiFi:(id)a3 password:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(MSDWiFiHelper *)self enableWiFi:1])
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9508();
    }

    goto LABEL_19;
  }

  if (![(MSDWiFiHelper *)self connectTo:v6 password:v7])
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9544();
    }

    goto LABEL_19;
  }

  [(MSDWiFiHelper *)self forgetAllKnownWiFiNetworksExcept:v6];
  v8 = [(MSDWiFiHelper *)self device];
  v9 = [v8 isContentFrozen];

  if (!v9)
  {
    v15 = 1;
    goto LABEL_13;
  }

  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Saving wifi ssid and password to demo volume.", buf, 2u);
  }

  v11 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v6, @"SSID", 0];
  if (!v7 || (v12 = [(__CFString *)v7 length], v13 = v7, !v12))
  {
    v13 = &stru_10016D9D8;
  }

  v14 = [(__CFString *)v13 dataUsingEncoding:4];
  [v11 setObject:v14 forKey:@"Password"];

  if (![(MSDWiFiHelper *)self saveWiFiSettingsToPreferences:v11])
  {
    sub_1000E9580();
LABEL_19:
    v15 = 0;
    goto LABEL_11;
  }

  v15 = 1;
LABEL_11:

LABEL_13:
  return v15;
}

- (void)configureWiFiWithPersistentSettings
{
  v3 = [(MSDWiFiHelper *)self loadWiFiSettingsFromPreferences];
  v4 = v3;
  if (!v3)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9698();
    }

    v5 = 0;
    v8 = 0;
    v7 = 0;
    goto LABEL_23;
  }

  v5 = [v3 objectForKey:@"SSID"];
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Enforcing WiFi settings to AP with SSID - %{public}@", &v13, 0xCu);
  }

  v7 = [v4 objectForKey:@"Password"];
  if ([v7 length])
  {
    v8 = [[NSString alloc] initWithData:v7 encoding:4];
    if (!v8)
    {
      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E95E4();
      }

      v8 = 0;
LABEL_23:

      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "WiFi settings not enforced.", &v13, 2u);
      }

      goto LABEL_14;
    }
  }

  else
  {
    v8 = 0;
  }

  if (![(MSDWiFiHelper *)self enableWiFi:1])
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9620();
    }

    goto LABEL_23;
  }

  if (![(MSDWiFiHelper *)self connectTo:v5 password:v8])
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E965C();
    }

    goto LABEL_23;
  }

  [(MSDWiFiHelper *)self forgetAllKnownWiFiNetworksExcept:v5];
  v10 = [(MSDWiFiHelper *)self device];
  v11 = [v10 isContentFrozen];

  if ((v11 & 1) == 0)
  {
    v12 = [(MSDWiFiHelper *)self device];
    [v12 setWifiSettings:0];
LABEL_14:
  }
}

- (void)waitForWiFiLink
{
  v3 = objc_alloc_init(NSCondition);
  v4 = [NSDate dateWithTimeIntervalSinceNow:5.0];
  v5 = [(MSDWiFiHelper *)self wifiInterface];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B39D4;
  v16[3] = &unk_10016C448;
  v6 = v3;
  v17 = v6;
  [v5 setEventHandler:v16];

  v7 = [(MSDWiFiHelper *)self wifiInterface];
  v15 = 0;
  v8 = [v7 startMonitoringEventType:6 error:&v15];
  v9 = v15;

  if (v8)
  {
    [v6 lock];
    while (1)
    {
      v10 = [(MSDWiFiHelper *)self wifiInterface];
      v11 = [v10 currentKnownNetworkProfile];

      if (v11)
      {
        break;
      }

      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Current known wifi still returns nil.  Waiting for CWFEventTypeLinkChanged event.", buf, 2u);
      }

      if (([v6 waitUntilDate:v4] & 1) == 0)
      {
        v13 = sub_100063A54();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Wait for current known wifi timed out after 5 seconds", buf, 2u);
        }

        break;
      }
    }

    [v6 unlock];
    v14 = [(MSDWiFiHelper *)self wifiInterface];
    [v14 stopMonitoringEventType:6];
  }

  else
  {
    sub_1000E96D4(v9, buf);
    v14 = *buf;
  }
}

- (id)getCurrentWiFiSettings:(BOOL)a3
{
  v3 = a3;
  [(MSDWiFiHelper *)self waitForWiFiLink];
  v5 = [(MSDWiFiHelper *)self wifiInterface];
  v6 = [v5 currentKnownNetworkProfile];

  if (!v6)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to get current known network profile, fetching last joined wifi network...", buf, 2u);
    }

    v8 = [(MSDWiFiHelper *)self lastJoinedWiFiNetworksProfile];
    if (!v8)
    {
      v6 = sub_100063A54();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E9860();
      }

      goto LABEL_21;
    }

    v6 = v8;
  }

  v9 = [v6 networkName];
  if (v9)
  {
    v10 = v9;
    v11 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v9, @"SSID", 0];
    if (!v3)
    {
LABEL_14:
      v18 = [NSDictionary dictionaryWithDictionary:v11];

      goto LABEL_15;
    }

    v12 = [v6 SSID];
    Password = CWFSecItemQueryPassword();
    v14 = 0;

    if (Password == -25300 || !Password)
    {
      if (!v14 || (v15 = [(__CFString *)v14 length], v16 = v14, !v15))
      {
        v16 = &stru_10016D9D8;
      }

      v17 = [(__CFString *)v16 dataUsingEncoding:4];
      [v11 setObject:v17 forKey:@"Password"];

      goto LABEL_14;
    }

    v20 = sub_100063A54();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9788();
    }
  }

  else
  {
    sub_1000E97FC();
  }

LABEL_21:
  v18 = 0;
LABEL_15:

  return v18;
}

- (id)getPersistentWiFiSsid
{
  v2 = [(MSDWiFiHelper *)self loadWiFiSettingsFromPreferences];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"SSID"];
    if (v4)
    {
      goto LABEL_3;
    }

    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000E989C();
    }
  }

  else
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000E991C();
    }
  }

  v4 = 0;
LABEL_3:

  return v4;
}

- (id)getCurrentWiFiSsid
{
  v2 = [(MSDWiFiHelper *)self getCurrentWiFiSettings:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"SSID"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)getCurrentWiFiSignalStrength
{
  v3 = [(MSDWiFiHelper *)self wifiInterface];
  v4 = [v3 currentKnownNetworkProfile];

  if (!v4)
  {
    return -100;
  }

  v5 = [(MSDWiFiHelper *)self wifiInterface];
  v6 = [v5 RSSI];

  return v6;
}

- (void)disassociateAndForgetWiFi
{
  [(MSDWiFiHelper *)self forgetAllKnownWiFiNetworksExcept:0];
  v3 = [(MSDWiFiHelper *)self wifiInterface];
  [v3 disassociateWithReason:0];

  v4 = [(MSDWiFiHelper *)self device];
  [v4 setWifiSettings:0];
}

- (BOOL)connectTo:(id)a3 password:(id)a4
{
  v5 = a3;
  v39 = a4;
  v6 = objc_alloc_init(CWFScanParameters);
  [v6 setIncludeHiddenNetworks:1];
  v51 = v5;
  v7 = [NSArray arrayWithObjects:&v51 count:1];
  [v6 setSSIDList:v7];

  [v6 setMinimumRSSI:-80];
  v8 = [NSSet setWithArray:&off_10017BFB8];
  v40 = v6;
  [v6 setIncludeProperties:v8];

  v9 = 0;
  v10 = 3;
  while (1)
  {
    v11 = v9;
    v12 = [(MSDWiFiHelper *)self wifiInterface];
    v47 = v9;
    v13 = [v12 performScanWithParameters:v40 error:&v47];
    v9 = v47;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v15)
    {
      break;
    }

LABEL_11:

LABEL_15:
    sleep(3u);

    if (!--v10)
    {
      v25 = sub_100063A54();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000E9A0C();
      }

      v26 = 0;
      v27 = v39;
      goto LABEL_29;
    }
  }

  v16 = v15;
  v17 = 0;
  v18 = *v44;
LABEL_4:
  v19 = 0;
  v20 = v17;
  while (1)
  {
    if (*v44 != v18)
    {
      objc_enumerationMutation(v14);
    }

    v17 = *(*(&v43 + 1) + 8 * v19);

    v21 = [v17 networkName];
    v22 = [v21 isEqualToString:v5];

    if (v22)
    {
      break;
    }

    v19 = v19 + 1;
    v20 = v17;
    if (v16 == v19)
    {
      v16 = [v14 countByEnumeratingWithState:&v43 objects:v50 count:16];
      if (v16)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  v23 = sub_100063A54();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v17 networkName];
    *buf = 138543362;
    v49 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found the wifi with ssid '%{public}@'", buf, 0xCu);
  }

  v25 = v17;
  if (!v25)
  {
    goto LABEL_15;
  }

  v28 = objc_alloc_init(CWFAssocParameters);
  [v28 setScanResult:v25];
  [v28 setRememberUponSuccessfulAssociation:1];
  v27 = v39;
  [v28 setPassword:v39];
  v29 = objc_alloc_init(CWFNetworkProfile);
  [v28 setKnownNetworkProfile:v29];

  v30 = [v28 knownNetworkProfile];
  [v30 setHiddenState:1];

  v31 = -3;
  while (1)
  {
    v32 = v9;
    v33 = [(MSDWiFiHelper *)self wifiInterface];
    v42 = v9;
    v34 = [v33 associateWithParameters:v28 error:&v42];
    v9 = v42;

    if (v34)
    {
      break;
    }

    sleep(3u);
    if (__CFADD__(v31++, 1))
    {
      v36 = sub_100063A54();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_1000E999C();
      }

      v26 = 0;
      goto LABEL_29;
    }
  }

  v37 = sub_100063A54();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Connected to wifi.", buf, 2u);
  }

  v26 = 1;
LABEL_29:

  return v26;
}

- (void)waitForWiFiInterface
{
  v3 = objc_alloc_init(NSCondition);
  v4 = [NSDate dateWithTimeIntervalSinceNow:5.0];
  v5 = [(MSDWiFiHelper *)self wifiInterface];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000B4524;
  v17[3] = &unk_10016C448;
  v6 = v3;
  v18 = v6;
  [v5 setEventHandler:v17];

  v7 = [(MSDWiFiHelper *)self wifiInterface];
  v16 = 0;
  v8 = [v7 startMonitoringEventType:10 error:&v16];
  v9 = v16;

  if (v8)
  {
    [v6 lock];
    while (1)
    {
      v10 = [(MSDWiFiHelper *)self wifiInterface];
      v11 = [v10 interfaceName];

      if (v11)
      {
        break;
      }

      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Wifi interface is not intialized, waiting for CWFEventTypeInterfaceAdded event.", v15, 2u);
      }

      if (([v6 waitUntilDate:v4] & 1) == 0)
      {
        v13 = sub_100063A54();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Wait for wifi interface initialization timed out after 5 seconds", v15, 2u);
        }

        break;
      }
    }

    [v6 unlock];
    v14 = [(MSDWiFiHelper *)self wifiInterface];
    [v14 stopMonitoringEventType:10];
  }

  else
  {
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9A88();
    }
  }
}

- (void)waitForWiFiDriver
{
  v3 = dispatch_semaphore_create(0);
  [(MSDWiFiHelper *)self setSem:v3];

  notification = 0;
  v4 = IONotificationPortCreate(0);
  if (IOServiceAddMatchingNotification(v4, "IOServiceMatched", &off_10017C0F8, sub_1000B3124, 0, &notification))
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9AF8();
    }
  }

  else
  {
    if (sub_1000B3124(&notification) || (v5 = dispatch_time(0, 10000000000), [(MSDWiFiHelper *)self sem], v6 = objc_claimAutoreleasedReturnValue(), v7 = dispatch_semaphore_wait(v6, v5), v6, !v7))
    {
      if (!v4)
      {
        return;
      }

      goto LABEL_5;
    }

    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9B6C();
    }
  }

  if (!v4)
  {
    return;
  }

LABEL_5:
  IONotificationPortDestroy(v4);
}

- (void)forgetAllKnownWiFiNetworksExcept:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Forgetting all known WiFi networks except: '%{public}@'...", buf, 0xCu);
  }

  v6 = [(MSDWiFiHelper *)self wifiInterface];
  v7 = [v6 knownNetworkProfilesWithProperties:0];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if (v4 && ([*(*(&v21 + 1) + 8 * i) networkName], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", v4), v14, v15))
        {
          v16 = sub_100063A54();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Found known WiFi network with matching ssid!", buf, 2u);
          }
        }

        else
        {
          v17 = [(MSDWiFiHelper *)self wifiInterface];
          v20 = 0;
          v18 = [v17 removeKnownNetworkProfile:v13 reason:0 error:&v20];
          v16 = v20;

          if ((v18 & 1) == 0)
          {
            sub_1000E9BA8(v16);
            goto LABEL_18;
          }

          v19 = [v13 SSID];
          CWFSecItemSetPassword();
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
}

- (id)lastJoinedWiFiNetworksProfile
{
  v2 = [(MSDWiFiHelper *)self wifiInterface];
  v3 = [v2 knownNetworkProfilesWithProperties:0];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if (v7 || ([*(*(&v19 + 1) + 8 * i) lastJoinedAt], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
        {
          v11 = [v10 lastJoinedAt];
          v12 = [v7 lastJoinedAt];
          v13 = [v11 compare:v12];

          if (v13 == 1)
          {
            v14 = v10;

            v7 = v14;
          }
        }

        else
        {
          v7 = v10;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v16 = sub_100063A54();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v7 networkName];
    *buf = 138543362;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Last joined WiFi network SSID: %{public}@", buf, 0xCu);
  }

  return v7;
}

- (BOOL)isValidWiFiSettings:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No WiFi settings found.", v11, 2u);
    }

    v6 = 0;
    goto LABEL_9;
  }

  v5 = [v3 objectForKey:@"SSID"];
  v6 = v5;
  if (!v5 || ![v5 length] || (objc_msgSend(v4, "objectForKey:", @"Password"), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9C5C();
    }

LABEL_9:

    v7 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (MSDWiFiHelper)init
{
  v8.receiver = self;
  v8.super_class = MSDWiFiHelper;
  v2 = [(MSDWiFiHelper *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(CWFInterface);
    [(MSDWiFiHelper *)v2 setWifiInterface:v3];

    v4 = [(MSDWiFiHelper *)v2 wifiInterface];
    [v4 activate];

    v5 = +[MSDTargetDevice sharedInstance];
    [(MSDWiFiHelper *)v2 setDevice:v5];

    v6 = v2;
  }

  return v2;
}

- (void)saveCurrentWiFiSettings
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    sub_1000B4D00(&_mh_execute_header, v3, v4, "Saving current wifi settings.", v9);
  }

  v5 = [(MSDWiFiHelper *)self getCurrentWiFiSettings:1];
  if (v5 && ![(MSDWiFiHelper *)self saveWiFiSettingsToPreferences:v5])
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      sub_1000B4CE8(&_mh_execute_header, v6, v7, "Failed to save wifi settings in our preferences file.", v8);
    }
  }
}

- (id)loadWiFiSettingsFromPreferences
{
  v3 = [(MSDWiFiHelper *)self device];
  v4 = [v3 wifiSettings];
  v5 = [v4 mutableCopy];

  if (v5)
  {
    if (![(MSDWiFiHelper *)self isValidWiFiSettings:v5])
    {
      goto LABEL_9;
    }

    v6 = [v5 objectForKey:@"Password"];
    v7 = +[MSDCryptoHandler sharedInstance];
    v8 = [v7 performCryptoWithSecretKeyOnData:v6 isDecipher:1];

    if (v8)
    {
      [v5 setObject:v8 forKey:@"Password"];
      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        sub_1000B4D00(&_mh_execute_header, v9, v10, "WiFi settings successfully loaded.", v14);
      }
    }

    else
    {
      v8 = sub_100063A54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        sub_1000B4CE8(&_mh_execute_header, v8, v13, "Failed to decrypt WiFi password.", v15);
      }
    }
  }

  else
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      sub_1000B4D00(&_mh_execute_header, v6, v12, "Persistent WiFi settings does not exist", v16);
    }
  }

LABEL_9:

  return v5;
}

- (BOOL)saveWiFiSettingsToPreferences:(id)a3
{
  v4 = a3;
  if ([(MSDWiFiHelper *)self isValidWiFiSettings:v4])
  {
    v5 = +[MSDCryptoHandler sharedInstance];
    v6 = [v4 objectForKey:@"Password"];
    v7 = [v5 performCryptoWithSecretKeyOnData:v6 isDecipher:0];

    v8 = v7 != 0;
    if (v7)
    {
      v9 = [v4 mutableCopy];
      [v9 setObject:v7 forKey:@"Password"];
      v10 = [(MSDWiFiHelper *)self device];
      [v10 setWifiSettings:v9];

      v11 = [(MSDWiFiHelper *)self device];
      v12 = [v11 isContentFrozen];

      if (v12)
      {
        v13 = [(MSDWiFiHelper *)self device];
        [v13 setShouldForgetKnownNetworkUponUnlock:0];
      }

      v14 = sub_100063A54();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        sub_1000B4D00(&_mh_execute_header, v14, v15, "WiFi settings successfully saved.", v18);
      }
    }

    else
    {
      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        sub_1000B4CE8(&_mh_execute_header, v9, v17, "Failed to produce final password data.", v19);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end