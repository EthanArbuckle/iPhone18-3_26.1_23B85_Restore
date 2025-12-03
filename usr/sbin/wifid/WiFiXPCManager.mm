@interface WiFiXPCManager
+ (id)__filteredScanResults:(__CFArray *)results scanParameters:(id)parameters;
+ (id)sharedXPCManager;
- (BOOL)__isActivityRegisteredWithType:(int64_t)type;
- (BOOL)__knownNetworkHasCustomNetworkSettings:(id)settings;
- (CWFPrivateMACManager)privateMACManager;
- (WiFiXPCManager)init;
- (__WiFiNetwork)__copyCurrentKnownNetworkRef;
- (__WiFiNetwork)__copyCurrentNetworkRef;
- (__WiFiNetwork)copyCachedCurrentKnownNetworkRef:(id)ref;
- (__WiFiNetwork)copyCachedCurrentNetworkRef:(id)ref;
- (__WiFiNetwork)copyCachedCurrentSessionBasedNetworkRef;
- (id)__OSSpecificAttributes;
- (id)__copyCurrentNetworkHotspotNetwork;
- (id)__getSensingParams:(id)params;
- (id)__peerAssistedDiscoveryNetworksForUUID:(id)d;
- (id)__queueForRequest:(id)request;
- (id)__sanitizeSensingParams:(id)params;
- (id)copyCachedCurrentHotspotNetwork;
- (int64_t)networkOfInterestHomeStateForKnownNetworkProfile:(id)profile;
- (int64_t)networkOfInterestHomeStateForKnownNetworkRef:(__WiFiNetwork *)ref;
- (int64_t)networkOfInterestWorkStateForKnownNetworkProfile:(id)profile;
- (int64_t)networkOfInterestWorkStateForKnownNetworkRef:(__WiFiNetwork *)ref;
- (void)XPCManager:(id)manager XPCConnection:(id)connection receivedXPCRequest:(id)request;
- (void)XPCManager:(id)manager invalidatedXPCConnection:(id)connection;
- (void)__addKnownBSS:(id)s;
- (void)__addKnownNetworkProfile:(id)profile;
- (void)__associate:(id)__associate XPCConnection:(id)connection;
- (void)__clearAutoJoinDenyList:(id)list;
- (void)__disassociate:(id)__disassociate XPCConnection:(id)connection;
- (void)__getAutoHotspotMode:(id)mode;
- (void)__getAutoJoinDenyList:(id)list;
- (void)__getBackgroundScanConfiguration:(id)configuration;
- (void)__getCountryBandSupport:(id)support;
- (void)__getCurrentNetworkProfile:(id)profile XPCConnection:(id)connection;
- (void)__getCurrentScanResult:(id)result;
- (void)__getDeviceUUID:(id)d;
- (void)__getKnownNetworkProfiles:(id)profiles;
- (void)__getKnownNetworkProfilesInSameLan:(id)lan;
- (void)__getKnownNetworkProfilesWithNetworkSignature:(id)signature;
- (void)__getNetworkSignatureForNetwork:(id)network;
- (void)__getPassword:(id)password XPCConnection:(id)connection;
- (void)__getThermalIndex:(id)index;
- (void)__getUserAutoJoinState:(id)state;
- (void)__getUserSettings:(id)settings;
- (void)__getWiFiAssistOverrideReasons:(id)reasons;
- (void)__handleActivity:(id)activity;
- (void)__performANQP:(id)p;
- (void)__performAutoJoin:(id)join;
- (void)__performNDD:(id)d XPCConnection:(id)connection;
- (void)__performRanging:(id)ranging;
- (void)__performScan:(id)scan XPCConnection:(id)connection;
- (void)__performSensing:(id)sensing;
- (void)__removeKnownBSS:(id)s;
- (void)__removeKnownNetworkProfile:(id)profile;
- (void)__setAutoHotspotMode:(id)mode;
- (void)__setAutoJoinDenyList:(id)list;
- (void)__setBackgroundScanConfiguration:(id)configuration;
- (void)__setBlockedBands:(id)bands;
- (void)__setCompanionCountryCode:(id)code;
- (void)__setOSSpecificAttributeForKey:(__CFString *)key attributes:(id)attributes;
- (void)__setPassword:(id)password;
- (void)__setPeerAssistedDiscoveryNetwork:(id)network interfaceName:(id)name UUID:(id)d;
- (void)__setPower:(id)power XPCConnection:(id)connection;
- (void)__setRangeable:(id)rangeable;
- (void)__setRangingIdentifier:(id)identifier;
- (void)__setThermalIndex:(id)index;
- (void)__setUserAutoJoinState:(id)state XPCConnection:(id)connection;
- (void)__setUserSettings:(id)settings;
- (void)__setupPrivateMACManager;
- (void)__startAWDLPeerAssistedDiscovery:(id)discovery XPCConnection:(id)connection;
- (void)__startHostAPMode:(id)mode XPCConnection:(id)connection;
- (void)__stopAWDLPeerAssistedDiscovery:(id)discovery XPCConnection:(id)connection;
- (void)__stopHostAPMode:(id)mode XPCConnection:(id)connection;
- (void)__updateKnownBSS:(id)s;
- (void)__updateKnownNetworkProfile:(id)profile XPCConnection:(id)connection;
- (void)__updateSoftAPBand:(id)band XPCConnection:(id)connection;
- (void)activate;
- (void)associationDoneWithNetwork:(__WiFiNetwork *)network error:(int)error interfaceName:(id)name;
- (void)autoJoinStartedWithTrigger:(int64_t)trigger interfaceName:(id)name;
- (void)autoJoinUpdatedWithState:(int64_t)state interfaceName:(id)name;
- (void)dealloc;
- (void)invalidate;
- (void)replayLinkUpEventWithInterfaceName:(id)name;
- (void)sendAutoHotspotModeDidChangeEvent;
- (void)sendKnownNetworkDidChangeEventForProfile:(id)profile previous:(id)previous eventType:(int64_t)type;
- (void)sendUserAutoJoinStateDidChangeEvent;
- (void)sendUserSettingsDidChangeEvent;
- (void)sendWiFiAssistEventWithInterfaceName:(id)name linkQualityMetricInfo:(id)info;
- (void)sendWoWDidChangeEventWithInterfaceName:(id)name;
- (void)sendXPCEvent:(id)event;
- (void)setCachedCurrentHotspotNetwork:(id)network;
- (void)setCachedCurrentKnownNetworkRef:(__WiFiNetwork *)ref interfaceName:(id)name;
- (void)setCachedCurrentNetworkRef:(__WiFiNetwork *)ref interfaceName:(id)name;
- (void)setCachedCurrentSessionBasedNetworkRef:(__WiFiNetwork *)ref;
- (void)setWiFiManager:(__WiFiManager *)manager;
@end

@implementation WiFiXPCManager

+ (id)sharedXPCManager
{
  if (qword_100298AB8 != -1)
  {
    sub_1001AA184();
  }

  return qword_100298AB0;
}

- (__WiFiNetwork)copyCachedCurrentSessionBasedNetworkRef
{
  objc_sync_enter(self);
  cachedCurrentSessionBasedNetworkRef = self->_cachedCurrentSessionBasedNetworkRef;
  if (cachedCurrentSessionBasedNetworkRef)
  {
    v4 = sub_10000C580(kCFAllocatorDefault, cachedCurrentSessionBasedNetworkRef);
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(self);
  return v4;
}

- (void)__setupPrivateMACManager
{
  v3 = CWFPrivateMACAddressDeviceKeyKey;
  v4 = sub_10007C4E0(self->_managerRef, CWFPrivateMACAddressDeviceKeyKey);
  if (v4)
  {
    [-[CWFXPCManager privateMACManager](self->_XPCManager "privateMACManager")];
  }

  else
  {
    sub_10007D6E8(self->_managerRef, v3, [-[CWFXPCManager privateMACManager](self->_XPCManager "privateMACManager")]);
  }

  v5 = CWFPrivateMACAddressRotationKeyTimestampKey;
  v6 = sub_10007C4E0(self->_managerRef, CWFPrivateMACAddressRotationKeyTimestampKey);
  v7 = CWFPrivateMACAddressRotationKeyKey;
  v8 = sub_10007C4E0(self->_managerRef, CWFPrivateMACAddressRotationKeyKey);
  if (v8)
  {
    [-[CWFXPCManager privateMACManager](self->_XPCManager "privateMACManager")];
    [-[CWFXPCManager privateMACManager](self->_XPCManager "privateMACManager")];
  }

  else
  {
    sub_10007D6E8(self->_managerRef, v7, [-[CWFXPCManager privateMACManager](self->_XPCManager "privateMACManager")]);
    sub_10007D6E8(self->_managerRef, v5, [-[CWFXPCManager privateMACManager](self->_XPCManager "privateMACManager")]);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000FB23C;
  v11[3] = &unk_100262530;
  v11[4] = self;
  [-[CWFXPCManager privateMACManager](self->_XPCManager "privateMACManager")];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000FB31C;
  v10[3] = &unk_100262580;
  v10[4] = self;
  [-[CWFXPCManager privateMACManager](self->_XPCManager "privateMACManager")];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000FB428;
  v9[3] = &unk_1002625A8;
  v9[4] = self;
  [-[CWFXPCManager privateMACManager](self->_XPCManager "privateMACManager")];
}

- (CWFPrivateMACManager)privateMACManager
{
  privateMACManager = [(CWFXPCManager *)self->_XPCManager privateMACManager];
  v4 = privateMACManager;
  if (privateMACManager && ![(CWFPrivateMACManager *)privateMACManager updatedDeviceKeyHandler])
  {
    [(WiFiXPCManager *)self __setupPrivateMACManager];
  }

  return v4;
}

- (__WiFiNetwork)copyCachedCurrentNetworkRef:(id)ref
{
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)self->_currentNetworkMap objectForKeyedSubscript:ref];
  if (v5)
  {
    v6 = sub_10000C580(kCFAllocatorDefault, v5);
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(self);
  return v6;
}

- (void)setCachedCurrentNetworkRef:(__WiFiNetwork *)ref interfaceName:(id)name
{
  objc_sync_enter(self);
  if (ref)
  {
    v7 = sub_10000C580(kCFAllocatorDefault, ref);
    currentNetworkMap = self->_currentNetworkMap;
    if (v7)
    {
      [(NSMutableDictionary *)currentNetworkMap setObject:v7 forKeyedSubscript:name];
      CFRelease(v7);
    }

    else
    {
      [(NSMutableDictionary *)currentNetworkMap setObject:0 forKeyedSubscript:name];
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_currentNetworkMap setObject:0 forKeyedSubscript:name];
  }

  objc_sync_exit(self);
}

- (__WiFiNetwork)copyCachedCurrentKnownNetworkRef:(id)ref
{
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)self->_currentKnownNetworkMap objectForKeyedSubscript:ref];
  if (v5)
  {
    v6 = sub_10000C580(kCFAllocatorDefault, v5);
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(self);
  return v6;
}

- (void)setCachedCurrentKnownNetworkRef:(__WiFiNetwork *)ref interfaceName:(id)name
{
  objc_sync_enter(self);
  if (ref)
  {
    v7 = sub_10000C580(kCFAllocatorDefault, ref);
    currentKnownNetworkMap = self->_currentKnownNetworkMap;
    if (v7)
    {
      [(NSMutableDictionary *)currentKnownNetworkMap setObject:v7 forKeyedSubscript:name];
      CFRelease(v7);
    }

    else
    {
      [(NSMutableDictionary *)currentKnownNetworkMap setObject:0 forKeyedSubscript:name];
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_currentKnownNetworkMap setObject:0 forKeyedSubscript:name];
  }

  objc_sync_exit(self);
}

- (id)copyCachedCurrentHotspotNetwork
{
  objc_sync_enter(self);
  v3 = [(CWFScanResult *)self->_currentHotspotNetwork copy];
  objc_sync_exit(self);
  return v3;
}

- (void)setCachedCurrentHotspotNetwork:(id)network
{
  v5 = objc_autoreleasePoolPush();
  objc_sync_enter(self);

  self->_currentHotspotNetwork = [network copy];
  objc_sync_exit(self);

  objc_autoreleasePoolPop(v5);
}

- (void)setCachedCurrentSessionBasedNetworkRef:(__WiFiNetwork *)ref
{
  objc_sync_enter(self);
  cachedCurrentSessionBasedNetworkRef = self->_cachedCurrentSessionBasedNetworkRef;
  if (cachedCurrentSessionBasedNetworkRef)
  {
    CFRelease(cachedCurrentSessionBasedNetworkRef);
    self->_cachedCurrentSessionBasedNetworkRef = 0;
  }

  if (ref)
  {
    self->_cachedCurrentSessionBasedNetworkRef = sub_10000C580(kCFAllocatorDefault, ref);
  }

  objc_sync_exit(self);
}

- (void)__getCurrentScanResult:(id)result
{
  info = [result info];
  v6 = [objc_msgSend(info objectForKeyedSubscript:{CWFXPCForceNoCacheKey), "BOOLValue"}];
  if (v6)
  {
    v7 = CWFGetOSLog() ? CWFGetOSLog() : &_os_log_default;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136446722;
      v20 = "[WiFiXPCManager __getCurrentScanResult:]";
      v21 = 2082;
      v22 = "WiFiXPCManager.m";
      v23 = 1024;
      v24 = 482;
      LODWORD(v18) = 28;
      v17 = &v19;
      _os_log_send_and_compose_impl();
    }
  }

  if ([objc_msgSend(result requestParameters] == 10)
  {
    if (v6)
    {
      __copyCurrentNetworkHotspotNetwork = [(WiFiXPCManager *)self __copyCurrentNetworkHotspotNetwork];
    }

    else
    {
      __copyCurrentNetworkHotspotNetwork = [(WiFiXPCManager *)self copyCachedCurrentHotspotNetwork];
    }

    v10 = __copyCurrentNetworkHotspotNetwork;
  }

  else
  {
    if (v6)
    {
      __copyCurrentNetworkRef = [(WiFiXPCManager *)self __copyCurrentNetworkRef];
    }

    else
    {
      __copyCurrentNetworkRef = -[WiFiXPCManager copyCachedCurrentNetworkRef:](self, "copyCachedCurrentNetworkRef:", [objc_msgSend(result "requestParameters")]);
    }

    v11 = __copyCurrentNetworkRef;
    if (__copyCurrentNetworkRef)
    {
      v10 = sub_10001A9BC(__copyCurrentNetworkRef);
      if (v6)
      {
        __copyCurrentKnownNetworkRef = [(WiFiXPCManager *)self __copyCurrentKnownNetworkRef];
      }

      else
      {
        __copyCurrentKnownNetworkRef = -[WiFiXPCManager copyCachedCurrentKnownNetworkRef:](self, "copyCachedCurrentKnownNetworkRef:", [objc_msgSend(result "requestParameters")]);
      }

      v13 = __copyCurrentKnownNetworkRef;
      if (__copyCurrentKnownNetworkRef)
      {
        v14 = sub_10001B368(__copyCurrentKnownNetworkRef);
        if (v14)
        {
          v10 = [v10 scanResultWithMatchingKnownNetworkProfile:v14];
        }

        CFRelease(v13);
      }

      CFRelease(v11);
    }

    else
    {
      v10 = 0;
    }
  }

  v15 = +[NSMutableDictionary dictionary];
  [v15 setObject:v10 forKeyedSubscript:CWFXPCResultKey];
  if ([result response])
  {
    response = [result response];
    response[2](response, 0, v15);
  }
}

- (void)__getCurrentNetworkProfile:(id)profile XPCConnection:(id)connection
{
  info = [profile info];
  if ([objc_msgSend(info objectForKeyedSubscript:{CWFXPCForceNoCacheKey), "BOOLValue"}])
  {
    if (CWFGetOSLog())
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 136446722;
      *&valuePtr[4] = "[WiFiXPCManager __getCurrentNetworkProfile:XPCConnection:]";
      v30 = 2082;
      v31 = "WiFiXPCManager.m";
      v32 = 1024;
      v33 = 525;
      LODWORD(v28) = 28;
      v27 = valuePtr;
      _os_log_send_and_compose_impl();
    }

    copyCachedCurrentSessionBasedNetworkRef = [(WiFiXPCManager *)self __copyCurrentSessionBasedNetworkRef:v27];
    __copyCurrentKnownNetworkRef = [(WiFiXPCManager *)self __copyCurrentKnownNetworkRef];
  }

  else
  {
    copyCachedCurrentSessionBasedNetworkRef = [(WiFiXPCManager *)self copyCachedCurrentSessionBasedNetworkRef];
    __copyCurrentKnownNetworkRef = -[WiFiXPCManager copyCachedCurrentKnownNetworkRef:](self, "copyCachedCurrentKnownNetworkRef:", [objc_msgSend(profile "requestParameters")]);
  }

  v11 = __copyCurrentKnownNetworkRef;
  if ([objc_msgSend(profile "requestParameters")] == 10)
  {
    copyCachedCurrentHotspotNetwork = [(WiFiXPCManager *)self copyCachedCurrentHotspotNetwork];
    if (copyCachedCurrentHotspotNetwork)
    {
      v13 = copyCachedCurrentHotspotNetwork;
      if (v11)
      {
        CFRelease(v11);
      }

      if ([v13 matchingKnownNetworkProfile])
      {
        v14 = sub_100022854([v13 matchingKnownNetworkProfile], 0);
      }

      else
      {
        v14 = sub_1000A2E44(v13);
      }

      v11 = v14;
      if (v14)
      {
        sub_10000AD34(v14, @"IsPersonalHotspot", kCFBooleanTrue);
      }
    }
  }

  if (v11)
  {
    v15 = sub_10001CA74(copyCachedCurrentSessionBasedNetworkRef);
    v16 = sub_10001CA74(v11);
    v17 = 0;
    if (v15 && v16)
    {
      v17 = CFEqual(v15, v16) != 0;
    }

    if (sub_100009730(v11) && [objc_msgSend(connection valueForEntitlement:{@"com.apple.wifi.eap-nearby-device-setup-config-copy", "BOOLValue"}])
    {
      v18 = sub_1000D6A5C(v11);
      *valuePtr = v18;
      v19 = sub_1000A9D38(v18);
      if (v18 == 1 && !sub_1000D6AC8(v11))
      {
        *valuePtr = 4;
        Default = CFAllocatorGetDefault();
        v21 = CFNumberCreate(Default, kCFNumberIntType, valuePtr);
        if (v21)
        {
          v22 = v21;
          sub_10000AD34(v11, @"ShareableStatus", v21);
          CFRelease(v22);
        }
      }
    }

    else
    {
      v19 = 0;
    }

    v23 = sub_10001B368(v11);
    v24 = v23;
    if (v23)
    {
      [v23 setSessionBased:v17];
      [v24 setNearbyShareableStatus:v19];
    }

    if ([+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")])
    {
      [v24 setDeploymentIssues:{objc_msgSend(v24, "deploymentIssues") | 1}];
    }

    if ([+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")])
    {
      [v24 setDeploymentIssues:{objc_msgSend(v24, "deploymentIssues") | 4}];
    }

    v25 = 0;
    if (copyCachedCurrentSessionBasedNetworkRef)
    {
      goto LABEL_37;
    }
  }

  else
  {
    sub_1001A9D64(valuePtr);
    v24 = 0;
    v25 = *valuePtr;
    if (copyCachedCurrentSessionBasedNetworkRef)
    {
LABEL_37:
      CFRelease(copyCachedCurrentSessionBasedNetworkRef);
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v25)
  {
    if (![profile response])
    {
      return;
    }
  }

  else
  {
    v26 = +[NSMutableDictionary dictionary];
    [v26 setObject:v24 forKeyedSubscript:CWFXPCResultKey];
    if (![profile response])
    {
      return;
    }
  }

  (*([profile response] + 2))();
}

- (void)__getKnownNetworkProfiles:(id)profiles
{
  profilesCopy = profiles;
  info = [profiles info];
  v6 = [info objectForKeyedSubscript:CWFXPCNetworkProfilePropertiesKey];
  v7 = sub_100020110(self->_managerRef);
  sub_100020170(self->_managerRef);
  if (v7)
  {
    v9 = v8;
    __copyCurrentSessionBasedNetworkRef = [(WiFiXPCManager *)self __copyCurrentSessionBasedNetworkRef];
    cf = __copyCurrentSessionBasedNetworkRef;
    v31 = profilesCopy;
    if (__copyCurrentSessionBasedNetworkRef)
    {
      v11 = sub_10001CA74(__copyCurrentSessionBasedNetworkRef);
    }

    else
    {
      v11 = 0;
    }

    v12 = +[NSMutableArray array];
    if (CFArrayGetCount(v7) >= 1)
    {
      v13 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v13);
        v32 = 0;
        idx = -1;
        sub_10000AACC(v9, ValueAtIndex, &idx, &v32);
        if (idx != -1)
        {
          v15 = CFArrayGetValueAtIndex(v9, idx);
          v16 = sub_10000A540(v15, @"PRIVATE_MAC_ADDRESS");
          v17 = sub_10000A540(v15, @"PrivateMacPrefChanged");
          if (v16 && v17 != 0)
          {
            v19 = v17;
            v20 = CFGetTypeID(v16);
            if (v20 == CFDictionaryGetTypeID())
            {
              MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v16);
              CFDictionarySetValue(MutableCopy, @"PRIVATE_MAC_SET_BY_USER", v19);
              sub_10000AD34(ValueAtIndex, @"PRIVATE_MAC_ADDRESS", MutableCopy);
              if (MutableCopy)
              {
                CFRelease(MutableCopy);
              }
            }
          }
        }

        v22 = sub_10001CA74(ValueAtIndex);
        v23 = 0;
        if (v11 && v22)
        {
          v23 = CFEqual(v11, v22) != 0;
        }

        v24 = sub_10001B368(ValueAtIndex);
        if (v24)
        {
          v25 = v24;
          [v24 setSessionBased:v23];
          [v12 addObject:{objc_msgSend(v25, "filteredNetworkProfileWithProperties:", v6)}];
        }

        ++v13;
      }

      while (CFArrayGetCount(v7) > v13);
    }

    if (cfa)
    {
      CFRelease(cfa);
    }

    CFRelease(v7);
    profilesCopy = v31;
  }

  else
  {
    if ((sub_1001A9DA8(profilesCopy) & 1) == 0)
    {
      return;
    }

    v12 = 0;
  }

  v26 = +[NSMutableDictionary dictionary];
  v27 = [v12 copy];
  [v26 setObject:v27 forKeyedSubscript:CWFXPCResultKey];
  if ([profilesCopy response])
  {
    response = [profilesCopy response];
    response[2](response, 0, v26);
  }
}

- (void)__getThermalIndex:(id)index
{
  v4 = sub_100085B58(self->_managerRef);
  v5 = +[NSMutableDictionary dictionary];
  v6 = [NSNumber numberWithUnsignedInt:v4];
  [v5 setObject:v6 forKeyedSubscript:CWFXPCResultKey];
  if ([index response])
  {
    v7 = *([index response] + 2);

    v7();
  }
}

- (void)__getCountryBandSupport:(id)support
{
  v4 = sub_100085B60(self->_managerRef);
  v5 = +[NSMutableDictionary dictionary];
  v6 = [NSNumber numberWithUnsignedInt:v4];
  [v5 setObject:v6 forKeyedSubscript:CWFXPCResultKey];
  if ([support response])
  {
    v7 = *([support response] + 2);

    v7();
  }
}

- (void)__setThermalIndex:(id)index
{
  info = [index info];
  v6 = [info objectForKeyedSubscript:CWFXPCThermalIndexKey];
  if (v6)
  {
    sub_100085C9C(self->_managerRef, [v6 unsignedIntValue]);
  }

  else
  {
    sub_1001A9E14(&v8);
  }

  if ([index response])
  {
    v7 = *([index response] + 2);

    v7();
  }
}

- (void)__setCompanionCountryCode:(id)code
{
  info = [code info];
  v6 = [info objectForKeyedSubscript:CWFXPCCountryCodeKey];
  if (v6)
  {
    [v6 stringValue];
    sub_10015E088(self->_managerRef);
    sub_10008A56C(self->_managerRef, 1);
  }

  else
  {
    sub_1001A9E14(&v8);
  }

  if ([code response])
  {
    v7 = *([code response] + 2);

    v7();
  }
}

- (id)__peerAssistedDiscoveryNetworksForUUID:(id)d
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_100002B90;
  v11 = sub_100006794;
  v12 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FC528;
  block[3] = &unk_1002625D0;
  block[4] = d;
  block[5] = self;
  block[6] = &v7;
  dispatch_sync(mutexQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)__setPeerAssistedDiscoveryNetwork:(id)network interfaceName:(id)name UUID:(id)d
{
  mutexQueue = self->_mutexQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000FC70C;
  v6[3] = &unk_1002625F8;
  v6[4] = d;
  v6[5] = name;
  v6[6] = self;
  v6[7] = network;
  dispatch_async(mutexQueue, v6);
}

- (void)__startAWDLPeerAssistedDiscovery:(id)discovery XPCConnection:(id)connection
{
  discoveryCopy = discovery;
  info = [discovery info];
  v9 = [info objectForKeyedSubscript:CWFXPCAWDLPeerAssistedDiscoveryParamsKey];
  if (!v9 || (v10 = v9, (v11 = [objc_msgSend(discovery "requestParameters")]) == 0))
  {
    sub_1001A9E14(&v22);
    goto LABEL_37;
  }

  v12 = v11;
  v13 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v11];
  if (!v13)
  {
    sub_1001A9EA0(&v22);
    goto LABEL_37;
  }

  v14 = v13;
  if ([-[WiFiXPCManager __peerAssistedDiscoveryNetworksForUUID:](self __peerAssistedDiscoveryNetworksForUUID:{objc_msgSend(connection, "UUID")), "objectForKeyedSubscript:", v12}])
  {
    sub_1001A9E58(&v22);
LABEL_37:
    v19 = v22;
    if (!v22)
    {
      return;
    }

    goto LABEL_38;
  }

  v15 = +[NSMutableDictionary dictionary];
  if ([v10 peerMACAddress])
  {
    v16 = ether_aton([objc_msgSend(v10 "peerMACAddress")]);
    if (v16)
    {
      [v15 setObject:+[NSData dataWithBytes:length:](NSData forKeyedSubscript:{"dataWithBytes:length:", v16, 6), @"AWDL_IF_MAC_ADDRESS"}];
    }
  }

  if ([v10 peerMasterChannel])
  {
    [v15 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(v10, "peerMasterChannel")), @"AWDL_INFO_PEER_MASTER_CHANNEL"}];
  }

  if ([v10 peerPreferredChannel])
  {
    [v15 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(v10, "peerPreferredChannel")), @"AWDL_INFO_PREFERRED_CHANNEL"}];
  }

  if ([v10 peerSecondaryPreferredChannel])
  {
    LOWORD(v22) = [v10 peerSecondaryPreferredChannel];
    [v15 setObject:+[NSData dataWithBytes:length:](NSData forKeyedSubscript:{"dataWithBytes:length:", &v22, 2), @"AWDL_INFO_EXT"}];
  }

  if ([v10 peerAssistedDiscoveryMetric])
  {
    [v15 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(v10, "peerAssistedDiscoveryMetric")), @"AWDL_INFO_ASSISTED_DISCOVERY_METRIC"}];
  }

  if ([v10 peerSupportedChannelFlags])
  {
    [v15 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v10, "peerSupportedChannelFlags")), @"AWDL_INFO_SUPPORTED_CHANNEL_FLAGS"}];
  }

  v17 = +[NSMutableDictionary dictionary];
  if ([v10 localMasterChannel])
  {
    [v17 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(v10, "localMasterChannel")), @"AWDL_INFO_PEER_MASTER_CHANNEL"}];
  }

  if ([v10 localPreferredChannel])
  {
    [v17 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(v10, "localPreferredChannel")), @"AWDL_INFO_PREFERRED_CHANNEL"}];
  }

  if ([v10 localSecondaryPreferredChannel])
  {
    LOWORD(v22) = [v10 localSecondaryPreferredChannel];
    [v17 setObject:+[NSData dataWithBytes:length:](NSData forKeyedSubscript:{"dataWithBytes:length:", &v22, 2), @"AWDL_INFO_EXT"}];
  }

  if ([v10 localAssistedDiscoveryMetric])
  {
    [v17 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(v10, "localAssistedDiscoveryMetric")), @"AWDL_INFO_ASSISTED_DISCOVERY_METRIC"}];
  }

  if ([v17 count])
  {
    [v15 setObject:v17 forKeyedSubscript:@"AWDL_INFO_SELF"];
  }

  if ([v10 followMode])
  {
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"APPLE80211KEY_AWDL_INFO_ASSISTED_DISCOVERY_FOLLOW"];
    if ([v10 followModePreferredBand])
    {
      [v15 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(v10, "followModePreferredBand")), @"AWDL_INFO_PEER_PREFERRED_BAND"}];
    }
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1000FCC78;
  aBlock[3] = &unk_100262620;
  aBlock[4] = self;
  aBlock[5] = v12;
  aBlock[6] = connection;
  aBlock[7] = discovery;
  v18 = _Block_copy(aBlock);
  if (sub_1000CE36C(v14, v12, 4, v15, sub_1000FCD68, v18, [connection processName]))
  {
    CWFErrorDescription();
    v19 = CWFErrorWithDescription();
    if (v19)
    {
LABEL_38:
      if ([discovery response])
      {
        response = [discovery response];
        response[2](response, v19, 0);
      }
    }
  }
}

- (void)__stopAWDLPeerAssistedDiscovery:(id)discovery XPCConnection:(id)connection
{
  discoveryCopy = discovery;
  v8 = [objc_msgSend(discovery "requestParameters")];
  if (!v8)
  {
    sub_1001A9E14(&v19);
    goto LABEL_16;
  }

  v9 = v8;
  v10 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v8];
  if (!v10)
  {
    sub_1001A9EA0(&v19);
    goto LABEL_16;
  }

  v11 = v10;
  v12 = [-[WiFiXPCManager __peerAssistedDiscoveryNetworksForUUID:](self __peerAssistedDiscoveryNetworksForUUID:{objc_msgSend(connection, "UUID")), "objectForKeyedSubscript:", v9}];
  if (!v12)
  {
    sub_1001A9D64(&v19);
    goto LABEL_16;
  }

  v13 = sub_10000AD2C(kCFAllocatorDefault, v12);
  if (!v13)
  {
    sub_1001A9EE4(&v19);
LABEL_16:
    v16 = v19;
    if (!v19)
    {
      return;
    }

    goto LABEL_8;
  }

  v14 = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1000FCFCC;
  aBlock[3] = &unk_100262648;
  aBlock[4] = self;
  aBlock[5] = v9;
  aBlock[6] = connection;
  aBlock[7] = discovery;
  v15 = _Block_copy(aBlock);
  if (sub_1000CEA50(v11, v9, v14, sub_1000FD0A0, v15))
  {
    CWFErrorDescription();
    v16 = CWFErrorWithDescription();
  }

  else
  {
    v16 = 0;
  }

  CFRelease(v14);
  if (v16)
  {
LABEL_8:
    if ([discovery response])
    {
      response = [discovery response];
      response[2](response, v16, 0);
    }
  }
}

- (void)__addKnownNetworkProfile:(id)profile
{
  profileCopy = profile;
  info = [profile info];
  [objc_msgSend(objc_msgSend(info objectForKeyedSubscript:{CWFXPCNetworkProfilePropertiesKey), "mutableCopy"), "addObjectsFromArray:", &off_100282760}];
  info2 = [profile info];
  v8 = [info2 objectForKeyedSubscript:CWFXPCNetworkProfileKey];
  if (!v8)
  {
    goto LABEL_36;
  }

  v9 = v8;
  v10 = [objc_msgSend(profile "requestParameters")];
  if (!v10)
  {
    goto LABEL_36;
  }

  v11 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v10];
  if (!v11)
  {
    sub_1001A9EA0(&v37);
    goto LABEL_39;
  }

  v12 = v11;
  v13 = sub_100022854(v9, 0);
  if (!v13)
  {
LABEL_36:
    sub_1001A9E14(&v37);
    goto LABEL_39;
  }

  v14 = v13;
  v15 = sub_1000C3F40(v12, v13);
  if (v15)
  {
    sub_1001A9F2C(v14, v15, &v37);
    goto LABEL_39;
  }

  v16 = [v9 copy];
  [v16 setOSSpecificAttributes:0];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  oSSpecificAttributes = [objc_msgSend(v9 OSSpecificAttributes];
  v18 = [oSSpecificAttributes countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(oSSpecificAttributes);
        }

        [v16 setOSSpecificValue:objc_msgSend(objc_msgSend(v9 forKey:{"OSSpecificAttributes"), "objectForKeyedSubscript:", *(*(&v33 + 1) + 8 * i)), *(*(&v33 + 1) + 8 * i)}];
      }

      v19 = [oSSpecificAttributes countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v19);
  }

  v22 = sub_100022854(v16, 0);
  if (!v22)
  {
    sub_1001A9FA4();
LABEL_39:
    v27 = v37;
    if (!v37)
    {
      return;
    }

    goto LABEL_29;
  }

  v23 = v22;
  addReason = [v9 addReason];
  if ((addReason & 0xFFFFFFFFFFFFFFFELL) == 0xE)
  {
    v25 = +[NSMutableDictionary dictionary];
    [v25 setObject:sub_10000A540(v23 forKeyedSubscript:{@"NetworkOriginator", @"NetworkOriginator"}];
    [v25 setObject:sub_10000A540(v23 forKeyedSubscript:{@"BundleIdentifier", @"BundleIdentifier"}];
    if ([v16 isSessionBased])
    {
      [v25 setObject:&__kCFBooleanTrue forKeyedSubscript:@"DisassociateOnSessionEnd"];
    }

    v26 = sub_100080058(self->_managerRef, 0, v23, v25, sub_1000FD5DC, profile);
    v27 = 0;
    if (v26)
    {
      CWFErrorDescription();
      v27 = CWFErrorWithDescription();
    }

    goto LABEL_28;
  }

  if (addReason == 20)
  {
    if (sub_100159BD0(self->_managerRef, v23, 0x1D))
    {
      if ([objc_msgSend(v9 "OSSpecificAttributes")])
      {
        v28 = [objc_msgSend(v9 "OSSpecificAttributes")];
        if ([objc_msgSend(v28 objectForKeyedSubscript:{@"PRIVATE_MAC_SET_BY_USER", "BOOLValue"}])
        {
          v29 = [[NSString alloc] initWithData:objc_msgSend(v9 encoding:{"SSID"), 4}];
          sub_1001637E0(self->_managerRef, v29, [objc_msgSend(v28 objectForKeyedSubscript:{@"PRIVATE_MAC_ADDRESS_TYPE", "intValue"}], 0);
        }
      }

      goto LABEL_25;
    }

LABEL_41:
    sub_1001A9EA0(&v37);
    v27 = v37;
    goto LABEL_28;
  }

  v30 = [sub_10000A540(v23 @"WiFiManagerKnownNetworksEventType")];
  if (!sub_100159BD0(self->_managerRef, v23, v30))
  {
    goto LABEL_41;
  }

LABEL_25:
  if ([profile response])
  {
    response = [profile response];
    (*(response + 2))(response, 0, 0);
  }

  v27 = 0;
LABEL_28:
  CFRelease(v14);
  CFRelease(v23);
  if (!v27)
  {
    return;
  }

LABEL_29:
  if ([profile response])
  {
    response2 = [profile response];
    response2[2](response2, v27, 0);
  }
}

- (void)__updateKnownNetworkProfile:(id)profile XPCConnection:(id)connection
{
  profileCopy = profile;
  info = [profile info];
  v8 = [objc_msgSend(info objectForKeyedSubscript:{CWFXPCNetworkProfilePropertiesKey), "mutableCopy"}];
  [v8 addObjectsFromArray:&off_100282778];
  info2 = [profileCopy info];
  v10 = [info2 objectForKeyedSubscript:CWFXPCNetworkProfileKey];
  if (!v10)
  {
    goto LABEL_37;
  }

  v11 = v10;
  v12 = [objc_msgSend(profileCopy "requestParameters")];
  if (!v12)
  {
    goto LABEL_37;
  }

  v13 = v12;
  v14 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v12];
  if (!v14)
  {
    sub_1001A9EA0(&v48);
LABEL_39:
    v38 = v48;
    goto LABEL_31;
  }

  v15 = v14;
  v16 = sub_100022854(v11, 0);
  if (!v16)
  {
LABEL_37:
    sub_1001A9E14(&v48);
    goto LABEL_39;
  }

  v17 = v16;
  v18 = sub_1000C4450(v15, v16);
  if (!v18)
  {
    sub_1001A9FF8();
    goto LABEL_39;
  }

  v19 = v18;
  v20 = sub_10001B368(v18);
  if (v20)
  {
    v21 = v20;
    connectionCopy = connection;
    v40 = v15;
    v42 = v19;
    v43 = profileCopy;
    info3 = [profileCopy info];
    v23 = [v11 filteredNetworkProfileWithProperties:v8 OSSpecificKeys:{objc_msgSend(info3, "objectForKeyedSubscript:", CWFXPCOSSpecificKeysKey)}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v24 = [objc_msgSend(v23 "OSSpecificAttributes")];
    v25 = [v24 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v45;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v45 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v44 + 1) + 8 * i);
          if (([v29 isEqualToString:@"PolicyUUID"] & 1) == 0 && (!objc_msgSend(v21, "isCarPlayNetwork") || (objc_msgSend(v29, "isEqualToString:", @"networkDisabledReason") & 1) == 0))
          {
            [v21 setOSSpecificValue:objc_msgSend(objc_msgSend(v23 forKey:{"OSSpecificAttributes"), "objectForKeyedSubscript:", v29), v29}];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v26);
    }

    [v23 setOSSpecificAttributes:0];
    [v21 mergeWithNetworkProfile:v23];
    v30 = sub_100022854(v21, 0);
    if (v30)
    {
      managerRef = self->_managerRef;
      [connectionCopy processName];
      v19 = v42;
      if ((sub_100082E78(managerRef, v30) & 1) != 0 && sub_100081EDC(self->_managerRef, v30, 1))
      {
        v32 = [v21 disable6EMode] == 2;
        v33 = sub_10000A878(v30);
        sub_1000C9564(v40, v13, v33, v32);
        v34 = sub_1000102AC(v40, v13);
        if (v34)
        {
          v35 = v34;
          v36 = sub_10000A878(v34);
          v37 = sub_10000A878(v30);
          if (v36 && v37 && CFEqual(v36, v37))
          {
            sub_1000C5C04(v40, v30);
          }

          CFRelease(v35);
        }

        v38 = 0;
      }

      else
      {
        sub_1001A9EA0(&v48);
        v38 = v48;
      }

      profileCopy = v43;
    }

    else
    {
      sub_1001A9E14(&v48);
      v38 = v48;
      profileCopy = v43;
      v19 = v42;
    }
  }

  else
  {
    sub_1001A9D64(&v48);
    v30 = 0;
    v38 = v48;
  }

  CFRelease(v17);
  CFRelease(v19);
  if (v30)
  {
    CFRelease(v30);
  }

LABEL_31:
  if ([profileCopy response])
  {
    response = [profileCopy response];
    response[2](response, v38, 0);
  }
}

- (void)__removeKnownNetworkProfile:(id)profile
{
  info = [profile info];
  v6 = [info objectForKeyedSubscript:CWFXPCNetworkProfileKey];
  if (!v6)
  {
    goto LABEL_44;
  }

  v7 = v6;
  info2 = [profile info];
  v9 = [info2 objectForKeyedSubscript:CWFXPCRemoveReasonKey];
  if (!v9)
  {
    goto LABEL_44;
  }

  v10 = v9;
  v11 = [objc_msgSend(profile "requestParameters")];
  if (!v11)
  {
    goto LABEL_44;
  }

  v12 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v11];
  if (!v12)
  {
    sub_1001A9EA0(v28);
    goto LABEL_48;
  }

  v13 = v12;
  v14 = sub_100022854(v7, 0);
  if (!v14)
  {
LABEL_44:
    sub_1001A9E14(v28);
LABEL_48:
    v24 = *v28;
    goto LABEL_41;
  }

  v15 = v14;
  v16 = sub_1000C3F40(v13, v14);
  if (!v16)
  {
    sub_1001A9FF8();
    goto LABEL_48;
  }

  v17 = v16;
  integerValue = [v10 integerValue];
  if (integerValue <= 5)
  {
    if ((integerValue - 2) < 2)
    {
      v19 = 1;
LABEL_18:
      v20 = 2;
      goto LABEL_20;
    }

    if (integerValue == 4)
    {
      v19 = 0;
      v20 = 4;
      goto LABEL_20;
    }

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  if (integerValue == 8)
  {
    v19 = 0;
    v20 = 13;
    goto LABEL_20;
  }

  if (integerValue == 7)
  {
    v19 = 0;
    v20 = 12;
    goto LABEL_20;
  }

  if (integerValue != 6)
  {
    goto LABEL_17;
  }

  v19 = 0;
  v20 = 7;
LABEL_20:
  if (sub_100081634(self->_managerRef, v17, v20))
  {
    sub_1000C3FAC(v13, v17);
    if (v19)
    {
      if (CWFGetOSLog())
      {
        v21 = CWFGetOSLog();
      }

      else
      {
        v21 = &_os_log_default;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *v28 = 136315650;
        *&v28[4] = "[WiFiXPCManager __removeKnownNetworkProfile:]";
        v29 = 2112;
        v30 = sub_10000A878(v17);
        v31 = 2048;
        integerValue2 = [v10 integerValue];
        LODWORD(v27) = 32;
        v26 = v28;
        _os_log_send_and_compose_impl();
      }

      sub_10009FCF4(v17);
    }

    if (CWFGetOSLog())
    {
      v22 = CWFGetOSLog();
    }

    else
    {
      v22 = &_os_log_default;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      if (&_EAPTLSRemoveTrustExceptionsBindings)
      {
        v23 = "false";
      }

      else
      {
        v23 = "true";
      }

      *v28 = 136315138;
      *&v28[4] = v23;
      LODWORD(v27) = 12;
      v26 = v28;
      _os_log_send_and_compose_impl();
    }

    if (&_EAPTLSRemoveTrustExceptionsBindings && sub_100009730(v17))
    {
      sub_10000A878(v17);
      EAPTLSRemoveTrustExceptionsBindings();
    }

    v24 = 0;
  }

  else
  {
    sub_1001A9EA0(v28);
    v24 = *v28;
  }

  CFRelease(v15);
  CFRelease(v17);
LABEL_41:
  if ([profile response])
  {
    response = [profile response];
    response[2](response, v24, 0);
  }
}

- (void)__addKnownBSS:(id)s
{
  sCopy = s;
  info = [s info];
  v6 = [info objectForKeyedSubscript:CWFXPCNetworkProfileKey];
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  info2 = [sCopy info];
  v9 = [info2 objectForKeyedSubscript:CWFXPCBSSKey];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = v9;
  v11 = [objc_msgSend(sCopy "requestParameters")];
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v11];
  if (!v12)
  {
    sub_1001A9EA0(&v35);
    goto LABEL_28;
  }

  v13 = v12;
  v14 = sub_100022854(v7, 0);
  if (!v14)
  {
LABEL_24:
    sub_1001A9E14(&v35);
LABEL_28:
    v27 = v35;
    goto LABEL_21;
  }

  v15 = v14;
  v16 = sub_1000C4450(v13, v14);
  if (!v16)
  {
    sub_1001A9FF8();
    goto LABEL_28;
  }

  v17 = v16;
  v18 = sub_10001B368(v16);
  if (!v18 || (v19 = v18, [v18 matchingKnownBSS:v10]))
  {
    sub_1001AA054();
    v26 = 0;
  }

  else
  {
    selfCopy = self;
    v30 = sCopy;
    v20 = [v10 copy];
    [v20 setOSSpecificAttributes:0];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = [objc_msgSend(v10 "OSSpecificAttributes")];
    v22 = [v21 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [v20 setOSSpecificValue:objc_msgSend(objc_msgSend(v10 forKey:{"OSSpecificAttributes"), "objectForKeyedSubscript:", *(*(&v31 + 1) + 8 * i)), *(*(&v31 + 1) + 8 * i)}];
        }

        v23 = [v21 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v23);
    }

    [v19 setBSSList:{objc_msgSend(objc_msgSend(v19, "BSSList"), "setByAddingObject:", v20)}];
    v26 = sub_100022854(v19, 0);
    if (v26)
    {
      sCopy = v30;
      if (sub_100081EDC(selfCopy->_managerRef, v26, 1))
      {
        v27 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      sCopy = v30;
    }

    sub_1001AA054();
  }

  v27 = v35;
LABEL_19:
  CFRelease(v15);
  CFRelease(v17);
  if (v26)
  {
    CFRelease(v26);
  }

LABEL_21:
  if ([sCopy response])
  {
    response = [sCopy response];
    response[2](response, v27, 0);
  }
}

- (void)__updateKnownBSS:(id)s
{
  info = [s info];
  v6 = [info objectForKeyedSubscript:CWFXPCNetworkProfileKey];
  if (!v6)
  {
    goto LABEL_25;
  }

  v7 = v6;
  info2 = [s info];
  v9 = [info2 objectForKeyedSubscript:CWFXPCBSSKey];
  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = v9;
  v11 = [objc_msgSend(s "requestParameters")];
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v11];
  if (!v12)
  {
    sub_1001A9EA0(&v40);
    goto LABEL_29;
  }

  v13 = v12;
  v14 = sub_100022854(v7, 0);
  if (!v14)
  {
LABEL_25:
    sub_1001A9E14(&v40);
LABEL_29:
    v32 = v40;
    goto LABEL_21;
  }

  v15 = v14;
  v16 = sub_1000C4450(v13, v14);
  if (!v16)
  {
    sub_1001A9FF8();
    goto LABEL_29;
  }

  v17 = v16;
  v18 = sub_10001B368(v16);
  if (v18 && (v19 = v18, (v20 = [v18 matchingKnownBSS:v10]) != 0))
  {
    v21 = v20;
    selfCopy = self;
    cf = v15;
    info3 = [s info];
    v23 = [info3 objectForKeyedSubscript:CWFXPCBSSPropertiesKey];
    info4 = [s info];
    v25 = [v10 filteredBSSWithProperties:v23 OSSpecificKeys:{objc_msgSend(info4, "objectForKeyedSubscript:", CWFXPCOSSpecificKeysKey)}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = [objc_msgSend(v25 "OSSpecificAttributes")];
    v27 = [v26 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v37;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [v21 setOSSpecificValue:objc_msgSend(objc_msgSend(v25 forKey:{"OSSpecificAttributes"), "objectForKeyedSubscript:", *(*(&v36 + 1) + 8 * i)), *(*(&v36 + 1) + 8 * i)}];
        }

        v28 = [v26 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v28);
    }

    [v25 setOSSpecificAttributes:0];
    [v21 mergeWithBSS:v25];
    v31 = sub_100022854(v19, 0);
    if (v31)
    {
      v15 = cf;
      if (sub_100081EDC(selfCopy->_managerRef, v31, 1))
      {
        v32 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v15 = cf;
    }

    sub_1001AA054();
  }

  else
  {
    sub_1001A9D64(&v40);
    v31 = 0;
  }

  v32 = v40;
LABEL_19:
  CFRelease(v15);
  CFRelease(v17);
  if (v31)
  {
    CFRelease(v31);
  }

LABEL_21:
  if ([s response])
  {
    response = [s response];
    response[2](response, v32, 0);
  }
}

- (void)__removeKnownBSS:(id)s
{
  info = [s info];
  v6 = [info objectForKeyedSubscript:CWFXPCNetworkProfileKey];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  info2 = [s info];
  v9 = [info2 objectForKeyedSubscript:CWFXPCBSSKey];
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = v9;
  v11 = [objc_msgSend(s "requestParameters")];
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v11];
  if (!v12)
  {
    sub_1001A9EA0(&v23);
    goto LABEL_13;
  }

  v13 = v12;
  v14 = sub_100022854(v7, 0);
  if (!v14)
  {
LABEL_18:
    sub_1001A9E14(&v23);
    goto LABEL_13;
  }

  v15 = v14;
  v16 = sub_1000C4450(v13, v14);
  if (!v16)
  {
    sub_1001A9FF8();
    goto LABEL_13;
  }

  v17 = v16;
  v18 = sub_10001B368(v16);
  if (!v18)
  {
    v20 = 0;
LABEL_23:
    CWFErrorDescription();
    CWFErrorWithDescription();
    goto LABEL_11;
  }

  v19 = v18;
  v20 = [v18 matchingKnownBSS:v10];
  if (!v20)
  {
    goto LABEL_23;
  }

  v21 = [objc_msgSend(v19 "BSSList")];
  [v21 removeObject:v20];
  [v19 setBSSList:v21];
  v20 = sub_100022854(v19, 0);
  if (!v20 || !sub_100081EDC(self->_managerRef, v20, 1))
  {
    goto LABEL_23;
  }

LABEL_11:
  CFRelease(v15);
  CFRelease(v17);
  if (v20)
  {
    CFRelease(v20);
  }

LABEL_13:
  if ([s response])
  {
    v22 = *([s response] + 2);

    v22();
  }
}

- (void)__setPower:(id)power XPCConnection:(id)connection
{
  info = [power info];
  v8 = [info objectForKeyedSubscript:CWFXPCPowerKey];
  if (v8 && (v9 = v8, (v10 = [objc_msgSend(power "requestParameters")]) != 0))
  {
    if ([(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v10])
    {
      sub_10007CC64(self->_managerRef, [v9 BOOLValue], objc_msgSend(connection, "processName"));
    }

    else
    {
      sub_1001A9EA0(&v12);
    }
  }

  else
  {
    sub_1001A9E14(&v12);
  }

  if ([power response])
  {
    v11 = *([power response] + 2);

    v11();
  }
}

- (void)__getPassword:(id)password XPCConnection:(id)connection
{
  info = [password info];
  v7 = [info objectForKeyedSubscript:CWFXPCNetworkProfileKey];
  if (v7 && (v8 = sub_100022854(v7, 0)) != 0)
  {
    v9 = v8;
    v10 = sub_10002A1CC(v8);
    if (v10)
    {
      goto LABEL_11;
    }

    if ([&off_1002827A8 containsObject:{objc_msgSend(connection, "processName")}])
    {
      if (CWFGetOSLog())
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = &_os_log_default;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 136315650;
        *&v21[4] = "[WiFiXPCManager __getPassword:XPCConnection:]";
        v22 = 2112;
        processName = [connection processName];
        v24 = 2112;
        v25 = sub_10002A2C0(v9);
        LODWORD(v20) = 32;
        v19 = v21;
        _os_log_send_and_compose_impl();
      }

      v12 = sub_10002A2C0(v9);
      v10 = sub_1000A60D4(v12);
      if (v10)
      {
LABEL_11:
        v13 = v10;
        v14 = [NSMutableDictionary dictionary:v19];
        v15 = [v13 copy];
        [v14 setObject:v15 forKeyedSubscript:CWFXPCResultKey];
        if ([password response])
        {
          response = [password response];
          response[2](response, 0, v14);
        }

        CFRelease(v9);
        CFRelease(v13);
        return;
      }
    }

    sub_1001AA0A4();
  }

  else
  {
    sub_1001A9E14(v21);
  }

  v17 = *v21;
  if (*v21 && [password response])
  {
    response2 = [password response];
    response2[2](response2, v17, 0);
  }
}

- (void)__setPassword:(id)password
{
  info = [password info];
  v5 = [info objectForKeyedSubscript:CWFXPCNetworkProfileKey];
  if (v5)
  {
    v6 = v5;
    info2 = [password info];
    v8 = [info2 objectForKeyedSubscript:CWFXPCPasswordKey];
    v9 = sub_100022854(v6, 0);
    if (v9)
    {
      v10 = v9;
      if (v8)
      {
        if (sub_10009FBF4(v9, v8))
        {
LABEL_5:
          CFRelease(v10);
          goto LABEL_6;
        }
      }

      else if (sub_10009FCF4(v9))
      {
        goto LABEL_5;
      }

      sub_1001A9EA0(&v12);
      goto LABEL_5;
    }
  }

  sub_1001A9E14(&v12);
LABEL_6:
  if ([password response])
  {
    v11 = *([password response] + 2);

    v11();
  }
}

- (void)__disassociate:(id)__disassociate XPCConnection:(id)connection
{
  info = [__disassociate info];
  v8 = [info objectForKeyedSubscript:CWFXPCDisassocReasonKey];
  if (!v8 || (v9 = v8, (v10 = [objc_msgSend(__disassociate "requestParameters")]) == 0))
  {
    sub_1001A9E14(v21);
LABEL_28:
    v17 = *v21;
    goto LABEL_22;
  }

  v11 = v10;
  v12 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v10];
  if (!v12)
  {
    sub_1001A9EA0(v21);
    goto LABEL_28;
  }

  v13 = v12;
  integerValue = [v9 integerValue];
  v15 = 1001;
  if (integerValue > 3)
  {
    if ((integerValue - 5) >= 2)
    {
      if (integerValue == 4)
      {
        v15 = 1012;
      }

      else if (integerValue == 7)
      {
        v15 = 1027;
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (integerValue == 1)
    {
      v15 = 1033;
      goto LABEL_16;
    }

    if (integerValue != 2)
    {
      if (integerValue == 3)
      {
        v15 = 1015;
      }

      goto LABEL_16;
    }
  }

  sub_1000860C8([+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")], objc_msgSend(connection, "processName"));
  v15 = 1011;
LABEL_16:
  if (CWFGetOSLog())
  {
    v16 = CWFGetOSLog();
  }

  else
  {
    v16 = &_os_log_default;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 134217984;
    *&v21[4] = [v9 integerValue];
    LODWORD(v20) = 12;
    v19 = v21;
    _os_log_send_and_compose_impl();
  }

  sub_1000B9DC8(v13, v11, v15, "[WiFiXPCManager __disassociate:XPCConnection:]", 1646);
  v17 = 0;
LABEL_22:
  if ([__disassociate response])
  {
    response = [__disassociate response];
    response[2](response, v17, 0);
  }
}

- (void)__updateSoftAPBand:(id)band XPCConnection:(id)connection
{
  info = [band info];
  v7 = [info objectForKeyedSubscript:CWFXPCSoftAPBand];
  if (v7 && (v8 = v7, (v9 = [objc_msgSend(band "requestParameters")]) != 0))
  {
    v10 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v9];
    if (v10)
    {
      v11 = v10;
      integerValue = [v8 integerValue];
      v13 = CWFGetOSLog();
      if (integerValue == 2)
      {
        if (v13)
        {
          v15 = CWFGetOSLog();
        }

        else
        {
          v15 = &_os_log_default;
        }

        v17 = 2;
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        *v22 = 0;
        LODWORD(v21) = 2;
        v20 = v22;
      }

      else
      {
        if (integerValue != 1)
        {
          if (v13)
          {
            v16 = CWFGetOSLog();
          }

          else
          {
            v16 = &_os_log_default;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *v22 = 134217984;
            *&v22[4] = [v8 integerValue];
            LODWORD(v21) = 12;
            v20 = v22;
            _os_log_send_and_compose_impl();
          }

          v17 = 2;
          goto LABEL_24;
        }

        if (v13)
        {
          v14 = CWFGetOSLog();
        }

        else
        {
          v14 = &_os_log_default;
        }

        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 1;
LABEL_24:
          sub_1000C4638(v11, v17);
          v18 = 0;
          goto LABEL_25;
        }

        *v22 = 0;
        LODWORD(v21) = 2;
        v20 = v22;
        v17 = 1;
      }

      _os_log_send_and_compose_impl();
      goto LABEL_24;
    }

    sub_1001A9EA0(v22);
  }

  else
  {
    sub_1001A9E14(v22);
  }

  v18 = *v22;
LABEL_25:
  if ([band response])
  {
    response = [band response];
    response[2](response, v18, 0);
  }
}

- (void)__associate:(id)__associate XPCConnection:(id)connection
{
  __associateCopy = __associate;
  __associateCopy2 = __associate;
  if (CWFGetOSLog())
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v43[0]) = 0;
    LODWORD(v39) = 2;
    v38 = v43;
    _os_log_send_and_compose_impl();
  }

  info = [__associateCopy info];
  v10 = [info objectForKeyedSubscript:CWFXPCAssocParamsKey];
  if (!v10)
  {
    goto LABEL_49;
  }

  v11 = v10;
  v12 = [objc_msgSend(v10 "scanResult")];
  if (!v12)
  {
    goto LABEL_49;
  }

  v13 = v12;
  v14 = sub_10000AD2C(kCFAllocatorDefault, v12);
  if (!v14)
  {
    goto LABEL_49;
  }

  v15 = v14;
  v16 = [objc_msgSend(__associateCopy "requestParameters")];
  if (!v16)
  {
    sub_1001A9E14(v43);
LABEL_53:
    v36 = v43[0];
    goto LABEL_44;
  }

  v17 = v16;
  v18 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v16];
  if (!v18)
  {
    sub_1001A9EA0(v43);
    goto LABEL_53;
  }

  v41 = v18;
  v19 = sub_1000C3F40(v18, v15);
  if (v19)
  {
    v20 = v19;
    v21 = sub_10001B368(v19);
    if ([objc_msgSend(v11 "knownNetworkProfile")])
    {
      [v21 setHiddenState:{objc_msgSend(objc_msgSend(v11, "knownNetworkProfile"), "hiddenState")}];
    }

    if ([objc_msgSend(v11 "knownNetworkProfile")])
    {
      [v21 setEAPProfile:{objc_msgSend(objc_msgSend(v11, "knownNetworkProfile"), "EAPProfile")}];
    }

    CFRelease(v20);
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = [objc_msgSend(v11 "knownNetworkProfile")];
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  [v21 setSSID:{objc_msgSend(objc_msgSend(v11, "scanResult"), "SSID")}];
  [v21 setPublicAirPlayNetwork:{objc_msgSend(objc_msgSend(v11, "knownNetworkProfile"), "isPublicAirPlayNetwork")}];
  v22 = sub_100022854(v21, [v21 properties]);
  if (v22)
  {
    v23 = v22;
    v24 = sub_100017C00(v22);
    if (!v24)
    {
      goto LABEL_22;
    }

    v25 = v24;
    v40 = __associateCopy;
    v26 = v17;
    selfCopy = self;
    connectionCopy = connection;
    v29 = +[NSMutableDictionary dictionary];
    [v29 addEntriesFromDictionary:v25];
    [v29 addEntriesFromDictionary:v13];
    v30 = [v29 copy];
    CFRelease(v15);
    v31 = v30;
    connection = connectionCopy;
    self = selfCopy;
    v17 = v26;
    __associateCopy = v40;
    v15 = sub_10000AD2C(kCFAllocatorDefault, v31);
    CFRelease(v25);
    if (v15)
    {
LABEL_22:
      CFRelease(v23);
      goto LABEL_23;
    }

LABEL_49:
    sub_1001A9E14(v43);
    v36 = v43[0];
    if (!v43[0])
    {
      return;
    }

    goto LABEL_45;
  }

LABEL_23:
  sub_10000AD34(v15, @"enabled", 0);
  sub_10000AD34(v15, @"Standalone", 0);
  if ([v11 forceBSSID])
  {
    sub_10000AD34(v15, @"FORCE_BSSID", kCFBooleanTrue);
  }

  if ([v11 bandPreference])
  {
    sub_10000AD34(v15, @"BAND_PREFERENCE", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 bandPreference]));
  }

  if ([v11 colocatedScopeID])
  {
    sub_10000AD34(v15, @"COLOCATED_NETWORK_SCOPE_ID", [v11 colocatedScopeID]);
  }

  if ([v11 has6GHzOnlyBSS])
  {
    v32 = sub_100034EEC(v15, @"ASSOC_FLAGS");
    sub_10000C614(v15, @"ASSOC_FLAGS", v32 | 0x100000);
  }

  if (![objc_msgSend(v11 "knownNetworkProfile")])
  {
    sub_10000AD34(v15, @"WiFiManagerKnownNetworksEventType", &off_100281F50);
    if ([objc_msgSend(connection "processName")])
    {
      sub_1000A1DA4(v15, 4u);
    }
  }

  password = [objc_msgSend(v11 "EAPCredentials")];
  if (!password)
  {
    password = [v11 password];
  }

  if ([objc_msgSend(v11 "knownNetworkProfile")])
  {
    sub_1000A3840(v15, [objc_msgSend(v11 "knownNetworkProfile")]);
  }

  sub_1000DAFA0([objc_msgSend(v11 "scanResult")], v15);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1000FF7F4;
  aBlock[3] = &unk_100262698;
  aBlock[4] = v11;
  aBlock[5] = password;
  aBlock[6] = self;
  aBlock[7] = __associateCopy;
  v34 = _Block_copy(aBlock);
  if (_os_feature_enabled_impl() && [v11 findAndJoinNetwork])
  {
    v35 = sub_1000CD404(v41, v17, v15, password, sub_1000FFEF8, v34);
  }

  else
  {
    v35 = sub_1000C9DD4(v41, v17, v15, password, [connection processName], sub_1000FFEF8, v34, 1008);
  }

  if (v35)
  {
    CWFErrorDescription();
    v36 = CWFErrorWithDescription();
  }

  else
  {
    v36 = 0;
  }

LABEL_44:
  CFRelease(v15);
  if (!v36)
  {
    return;
  }

LABEL_45:
  if ([__associateCopy response])
  {
    response = [__associateCopy response];
    response[2](response, v36, 0);
  }
}

+ (id)__filteredScanResults:(__CFArray *)results scanParameters:(id)parameters
{
  v5 = +[NSMutableArray array];
  if (results && CFArrayGetCount(results) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = objc_autoreleasePoolPush();
      ValueAtIndex = CFArrayGetValueAtIndex(results, v6);
      if (ValueAtIndex)
      {
        v9 = sub_10001A9BC(ValueAtIndex);
        if (v9)
        {
          [v5 addObject:v9];
        }
      }

      objc_autoreleasePoolPop(v7);
      ++v6;
    }

    while (CFArrayGetCount(results) > v6);
  }

  return CWFFilteredScanResults();
}

- (void)__performScan:(id)scan XPCConnection:(id)connection
{
  scanCopy = scan;
  info = [scan info];
  v9 = [info objectForKeyedSubscript:CWFXPCScanParamsKey];
  if (!v9 || (v10 = v9, (v11 = [objc_msgSend(scan "requestParameters")]) == 0))
  {
    sub_1001A9E14(&v54);
LABEL_55:
    v36 = v54;
    goto LABEL_56;
  }

  v12 = v11;
  v13 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v11];
  if (!v13)
  {
    sub_1001A9EA0(&v54);
    goto LABEL_55;
  }

  v44 = v13;
  v14 = +[NSMutableDictionary dictionary];
  if ([v10 SSID] || _os_feature_enabled_impl())
  {
    [v10 setScanFlags:{objc_msgSend(v10, "scanFlags") | 0x800}];
    if (![connection processName] || (objc_msgSend(objc_msgSend(connection, "processName"), "isEqualToString:", @"locationd") & 1) == 0 && (objc_msgSend(objc_msgSend(connection, "processName"), "isEqualToString:", @"milod") & 1) == 0 && (objc_msgSend(objc_msgSend(connection, "processName"), "isEqualToString:", @"pipelined") & 1) == 0)
    {
      [v10 setScanFlags:{objc_msgSend(v10, "scanFlags") | 0x100}];
    }
  }

  v42 = v14;
  connectionCopy = connection;
  v52 = 0u;
  v53 = 0u;
  *v50 = 0u;
  v51 = 0u;
  v43 = v10;
  channels = [v10 channels];
  v16 = [channels countByEnumeratingWithState:v50 objects:v62 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v51;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v51 != v19)
        {
          objc_enumerationMutation(channels);
        }

        v21 = *(v50[1] + 8 * i);
        if (!v18)
        {
          v18 = +[NSMutableArray array];
        }

        v60[0] = @"CHANNEL";
        v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v21 channel]);
        v60[1] = @"CHANNEL_FLAGS";
        v61[0] = v22;
        v61[1] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v21 flags]);
        [v18 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v61, v60, 2)}];
      }

      v17 = [channels countByEnumeratingWithState:v50 objects:v62 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  [v14 setObject:v18 forKeyedSubscript:@"SCAN_CHANNELS"];
  *v48 = 0u;
  v49 = 0u;
  *v46 = 0u;
  v47 = 0u;
  sSIDList = [v10 SSIDList];
  v24 = [sSIDList countByEnumeratingWithState:v46 objects:v59 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = *v47;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v47 != v27)
        {
          objc_enumerationMutation(sSIDList);
        }

        v29 = *(v46[1] + 8 * j);
        if (!v26)
        {
          v26 = +[NSMutableArray array];
        }

        v57 = @"SSID_STR";
        v58 = v29;
        [v26 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v58, &v57, 1)}];
      }

      v25 = [sSIDList countByEnumeratingWithState:v46 objects:v59 count:16];
    }

    while (v25);
  }

  else
  {
    v26 = 0;
  }

  if ([v26 count])
  {
    v55 = @"SSID_STR";
    v56 = &stru_1002680F8;
    [v26 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v56, &v55, 1)}];
  }

  [v42 setObject:v26 forKeyedSubscript:@"SCAN_SSID_LIST"];
  [v42 setObject:objc_msgSend(v43 forKeyedSubscript:{"SSID"), @"SSID_STR"}];
  [v42 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v43, "scanType")), @"SCAN_TYPE"}];
  [v42 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v43, "BSSType")), @"SCAN_BSS_TYPE"}];
  [v42 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v43, "PHYMode")), @"SCAN_PHY_MODE"}];
  [v42 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(v43, "restTime")), @"SCAN_REST_TIME"}];
  [v42 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(v43, "dwellTime")), @"SCAN_DWELL_TIME"}];
  [v42 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", objc_msgSend(v43, "mergeScanResults")), @"SCAN_MERGE"}];
  if ([v43 numberOfScans])
  {
    v30 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v43 numberOfScans]);
  }

  else
  {
    v30 = &off_100281F50;
  }

  [v42 setObject:v30 forKeyedSubscript:@"SCAN_NUM_SCANS"];
  [v42 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v43, "scanFlags")), @"SCAN_FLAGS"}];
  if ([v43 shortSSID])
  {
    v31 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v43 shortSSID]);
  }

  else
  {
    v31 = 0;
  }

  [v42 setObject:v31 forKeyedSubscript:@"SCAN_SHORT_SSID"];
  [v42 setObject:objc_msgSend(v43 forKeyedSubscript:{"BSSID"), @"BSSID"}];
  [v42 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(v43, "minimumTimestamp")), @"SCAN_MIN_TIMESTAMP"}];
  [v42 setObject:&__kCFBooleanFalse forKeyedSubscript:@"SCAN_MERGE"];
  [v42 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SCAN_CLOSED_NETWORKS"];
  [v42 setObject:objc_msgSend(connectionCopy forKeyedSubscript:{"processName"), @"ScanReqClientName"}];
  [v42 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(connectionCopy, "XPCConnection"), "processIdentifier")), @"ScanReqClientPid"}];
  [v42 setObject:objc_msgSend(scan forKeyedSubscript:{"receivedAt"), @"ScanReqReceiptTimestamp"}];
  if ([v43 acceptableCacheAge] == -1)
  {
    if (sub_100010908(v44) && (v37 = sub_10014FED8()) != 0)
    {
      v38 = v37;
      v39 = [WiFiXPCManager __filteredScanResults:v37 scanParameters:v43];
      CFRelease(v38);
    }

    else
    {
      v39 = 0;
    }

    v40 = +[NSMutableDictionary dictionary];
    [v40 setObject:v39 forKeyedSubscript:CWFXPCResultKey];
    if (![scan response])
    {
      goto LABEL_50;
    }

LABEL_49:
    (*([scan response] + 2))();
LABEL_50:

    return;
  }

  [v42 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", objc_msgSend(v43, "acceptableCacheAge") / 1000.0), @"SCAN_MAXAGE"}];
  processName = [connectionCopy processName];
  sub_100024FE0(v44, v41, v42, processName, sub_100035920, scan, v33, v34, v41, v42, v43, v44, connectionCopy, SHIDWORD(connectionCopy), scan, SHIDWORD(scan), v46[0], v46[1], v47, *(&v47 + 1), v48[0], v48[1], v49, *(&v49 + 1), v50[0], v50[1], v51, *(&v51 + 1));
  if (!v35)
  {
    return;
  }

  CWFErrorDescription();
  v36 = CWFErrorWithDescription();
LABEL_56:
  if (v36)
  {
    if (![scan response])
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }
}

- (void)__performANQP:(id)p
{
  pCopy = p;
  info = [p info];
  v7 = [info objectForKeyedSubscript:CWFXPCANQPParamsKey];
  if (!v7 || (v8 = v7, (v9 = [objc_msgSend(p "requestParameters")]) == 0))
  {
    sub_1001A9E14(&v31);
    goto LABEL_28;
  }

  v10 = v9;
  v11 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v9];
  if (!v11)
  {
    sub_1001A9EA0(&v31);
    goto LABEL_28;
  }

  v12 = v11;
  v13 = +[NSMutableDictionary dictionary];
  [v13 setObject:&off_100281F68 forKeyedSubscript:@"GAS_PROTOCOL"];
  [v13 setObject:objc_msgSend(v8 forKeyedSubscript:{"ANQPElementIDList"), @"GAS_QUERY"}];
  v14 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  scanResults = [v8 scanResults];
  v16 = [scanResults countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(scanResults);
        }

        scanRecord = [*(*(&v27 + 1) + 8 * i) scanRecord];
        if (scanRecord)
        {
          [v14 addObject:scanRecord];
        }
      }

      v17 = [scanResults countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v17);
  }

  v21 = sub_10005894C(v14);
  if (!v21)
  {
    sub_1001A9EE4(&v31);
LABEL_28:
    v25 = v31;
    if (!v31)
    {
      return;
    }

    goto LABEL_20;
  }

  v22 = v21;
  [v13 setObject:v21 forKeyedSubscript:@"GAS_NETWORKS"];
  if ([v8 acceptableCacheAge] == -1)
  {
    [v13 setObject:&off_100281F80 forKeyedSubscript:@"SCAN_MAXAGE"];
    v23 = &__kCFBooleanTrue;
    v24 = @"CacheOnly";
  }

  else
  {
    v23 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [v8 acceptableCacheAge] / 1000.0);
    v24 = @"SCAN_MAXAGE";
  }

  [v13 setObject:v23 forKeyedSubscript:v24];
  if (sub_1000CEF6C(v12, v10, v13, sub_100100BA0, p))
  {
    CWFErrorDescription();
    v25 = CWFErrorWithDescription();
  }

  else
  {
    v25 = 0;
  }

  CFRelease(v22);
  if (v25)
  {
LABEL_20:
    if ([p response])
    {
      response = [p response];
      response[2](response, v25, 0);
    }
  }
}

- (void)__performRanging:(id)ranging
{
  rangingCopy = ranging;
  rangingCopy2 = ranging;
  info = [rangingCopy info];
  v7 = [info objectForKeyedSubscript:CWFXPCRangingPeerListKey];
  if (!v7 || (v8 = v7, v9 = [rangingCopy info], v10 = objc_msgSend(objc_msgSend(v9, "objectForKeyedSubscript:", CWFXPCRangingTimeoutKey), "unsignedIntegerValue"), (v11 = objc_msgSend(objc_msgSend(rangingCopy, "requestParameters"), "interfaceName")) == 0))
  {
    sub_1001A9E14(&v31);
LABEL_26:
    v21 = v31;
    goto LABEL_28;
  }

  v12 = v11;
  v13 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v11];
  if (!v13)
  {
    sub_1001A9EA0(&v31);
    goto LABEL_26;
  }

  v23 = v13;
  v24 = v12;
  v25 = v10;
  v26 = rangingCopy;
  v14 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v8);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        v20 = +[NSMutableDictionary dictionary];
        if ([v19 MACAddress])
        {
          [v20 setObject:objc_msgSend(v19 forKeyedSubscript:{"MACAddress"), @"STATION_MAC"}];
        }

        if ([v19 PMK])
        {
          [v20 setObject:objc_msgSend(v19 forKeyedSubscript:{"PMK"), @"RANGING_PMK"}];
        }

        if ([v19 identifier])
        {
          [v20 setObject:objc_msgSend(v19 forKeyedSubscript:{"identifier"), @"RANGING_TOKEN_ID"}];
        }

        if ([v19 numberOfMeasurements])
        {
          [v20 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(v19, "numberOfMeasurements")), @"RANGING_NUM_MEASUREMENTS"}];
        }

        if ([v19 useCoreRotation])
        {
          [v20 setObject:&off_100281F98 forKeyedSubscript:@"RANGING_CORE_MASK"];
        }

        [v14 addObject:v20];
      }

      v16 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v16);
  }

  rangingCopy = v26;
  if (sub_1000CF254(v23, v24, v14, sub_100101058, v26, v25))
  {
    CWFErrorDescription();
    v21 = CWFErrorWithDescription();
LABEL_28:
    if (v21)
    {
      if ([rangingCopy response])
      {
        response = [rangingCopy response];
        response[2](response, v21, 0);
      }
    }
  }
}

- (void)__setRangeable:(id)rangeable
{
  rangeableCopy = rangeable;
  info = [rangeable info];
  obj = [info objectForKeyedSubscript:CWFXPCRangingPeerListKey];
  if (!obj || (v6 = [rangeableCopy info], v7 = objc_msgSend(objc_msgSend(v6, "objectForKeyedSubscript:", CWFXPCRangeableKey), "BOOLValue"), (v8 = objc_msgSend(objc_msgSend(rangeableCopy, "requestParameters"), "interfaceName")) == 0))
  {
    sub_1001A9E14(&v37);
LABEL_20:
    v23 = v37;
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v8];
  if (!v10)
  {
    sub_1001A9EA0(&v37);
    goto LABEL_20;
  }

  v26 = v10;
  v27 = v9;
  HIDWORD(v28) = v7;
  v29 = rangeableCopy;
  v11 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v12)
  {
    v17 = v12;
    v18 = *v33;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v32 + 1) + 8 * i);
        v21 = +[NSMutableDictionary dictionary];
        [v21 setObject:objc_msgSend(v20 forKeyedSubscript:{"MACAddress"), @"STATION_MAC"}];
        [v21 setObject:objc_msgSend(v20 forKeyedSubscript:{"PMK"), @"RANGING_PMK"}];
        [v21 setObject:objc_msgSend(v20 forKeyedSubscript:{"identifier"), @"RANGING_TOKEN_ID"}];
        [v11 addObject:v21];
      }

      v17 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v17);
  }

  sub_1000CF23C(v26, v27, SHIDWORD(v28), v11, v13, v14, v15, v16, v25, v26, v27, v28, v29, obj, SBYTE2(obj), SBYTE3(obj), SHIDWORD(obj), v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36, v37, v38[0], v38[1]);
  if (v22)
  {
    CWFErrorDescription();
    v23 = CWFErrorWithDescription();
  }

  else
  {
    v23 = 0;
  }

  rangeableCopy = v30;
LABEL_14:
  if ([rangeableCopy response])
  {
    response = [rangeableCopy response];
    response[2](response, v23, 0);
  }
}

- (void)__setRangingIdentifier:(id)identifier
{
  info = [identifier info];
  v6 = [info objectForKeyedSubscript:CWFXPCRangingIdentifierKey];
  v7 = [objc_msgSend(identifier "requestParameters")];
  if (v7)
  {
    v8 = v7;
    v9 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v7];
    if (v9)
    {
      v10 = v9;
      if (v6)
      {
        v11 = +[NSMutableDictionary dictionary];
        [v11 setObject:v6 forKeyedSubscript:@"RANGING_TOKEN_ID"];
      }

      else
      {
        v11 = 0;
      }

      if (sub_1000CF24C(v10, v8, v11 != 0, v11))
      {
        CWFErrorDescription();
        CWFErrorWithDescription();
      }
    }

    else
    {
      sub_1001A9EA0(&v13);
    }
  }

  else
  {
    sub_1001A9E14(&v13);
  }

  if ([identifier response])
  {
    v12 = *([identifier response] + 2);

    v12();
  }
}

- (void)__handleActivity:(id)activity
{
  info = [activity info];
  v6 = [info objectForKeyedSubscript:CWFXPCActivityKey];
  if (v6)
  {
    type = [v6 type];
    if (type > 4)
    {
      if (type > 7)
      {
        if (type == 8)
        {
          v15 = [(WiFiXPCManager *)self __isActivityRegisteredWithType:8];
          managerRef = self->_managerRef;
          if (v15)
          {
            sub_10015E504(managerRef, v8, v9, v10, v11, v12, v13, v14);
          }

          else
          {
            sub_10015E5D8(managerRef, v8, v9, v10, v11, v12, v13, v14);
          }
        }

        else if (type == 12)
        {
          sub_10007D6A4(self->_managerRef, [(WiFiXPCManager *)self __isActivityRegisteredWithType:12]);
        }
      }

      else if (type == 5)
      {
        sub_10007C1B8(self->_managerRef, 0, 0);
      }

      else if (type == 6)
      {
        sub_10007D69C(self->_managerRef);
      }
    }

    else if ((type - 1) >= 3)
    {
      if (type == 4)
      {
        sub_10001F1EC(self->_managerRef, 0, 0, 2);
      }
    }

    else
    {
      sub_100034A90(self->_managerRef);
    }
  }

  else
  {
    sub_1001A9E14(&v18);
  }

  if ([activity response])
  {
    v17 = *([activity response] + 2);

    v17();
  }
}

- (BOOL)__isActivityRegisteredWithType:(int64_t)type
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  registeredActivities = [(CWFXPCManager *)self->_XPCManager registeredActivities];
  v5 = [registeredActivities countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(registeredActivities);
        }

        if ([*(*(&v10 + 1) + 8 * v8) type] == type)
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v5 = [registeredActivities countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (void)__getUserAutoJoinState:(id)state
{
  v4 = sub_10000CDC4(self->_managerRef);
  v5 = +[NSMutableDictionary dictionary];
  if (v4)
  {
    v6 = &__kCFBooleanFalse;
  }

  else
  {
    v6 = &__kCFBooleanTrue;
  }

  [v5 setObject:v6 forKeyedSubscript:CWFXPCResultKey];
  if ([state response])
  {
    v7 = *([state response] + 2);

    v7();
  }
}

- (void)__setUserAutoJoinState:(id)state XPCConnection:(id)connection
{
  info = [state info];
  v8 = [info objectForKeyedSubscript:CWFXPCUserAutoJoinStateKey];
  if (v8)
  {
    sub_1000740C8(self->_managerRef, [v8 BOOLValue], 0, objc_msgSend(connection, "processName"));
  }

  else
  {
    sub_1001A9E14(&v10);
  }

  if ([state response])
  {
    v9 = *([state response] + 2);

    v9();
  }
}

- (void)__performAutoJoin:(id)join
{
  info = [join info];
  v6 = [info objectForKeyedSubscript:CWFXPCAutoJoinParamsKey];
  if (v6 && (v7 = v6, (v8 = [objc_msgSend(join "requestParameters")]) != 0) && (v9 = -[WiFiXPCManager __deviceManagerWithInterfaceName:](self, "__deviceManagerWithInterfaceName:", v8)) != 0)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100101D30;
    v10[3] = &unk_10025ED40;
    v10[4] = join;
    sub_1000DAE48(v9, v7, v10);
  }

  else
  {
    sub_1001AA0F4();
  }
}

- (void)__getAutoHotspotMode:(id)mode
{
  v4 = sub_100088E40(self->_managerRef);
  v5 = +[NSMutableDictionary dictionary];
  [v5 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", sub_1000A9CE0(v4)), CWFXPCResultKey}];
  if ([mode response])
  {
    v6 = *([mode response] + 2);

    v6();
  }
}

- (void)__setAutoHotspotMode:(id)mode
{
  info = [mode info];
  v6 = [info objectForKeyedSubscript:CWFXPCAutoHotspotModeKey];
  if (v6)
  {
    managerRef = self->_managerRef;
    v8 = sub_1000A9CF0([v6 integerValue]);
    sub_100088D58(managerRef, v8, 0);
  }

  else
  {
    sub_1001A9E14(&v10);
  }

  if ([mode response])
  {
    v9 = *([mode response] + 2);

    v9();
  }
}

- (void)__getUserSettings:(id)settings
{
  v5 = objc_alloc_init(CWFUserSettings);
  v6 = sub_100088E40(self->_managerRef);
  [v5 setAutoHotspotMode:sub_1000A9CE0(v6)];
  v7 = sub_10007B294(self->_managerRef);
  [v5 setAskToJoinMode:sub_1000A9D24(v7)];
  v8 = sub_10001D430(self->_managerRef);
  [v5 setCompatibilityMode:sub_1000A9D08(v8)];
  [v5 setOSSpecificAttributes:{-[WiFiXPCManager __OSSpecificAttributes](self, "__OSSpecificAttributes")}];
  v9 = +[NSMutableDictionary dictionary];
  [v9 setObject:v5 forKeyedSubscript:CWFXPCResultKey];

  if ([settings response])
  {
    v10 = *([settings response] + 2);

    v10();
  }
}

- (void)__setUserSettings:(id)settings
{
  settingsCopy = settings;
  info = [settings info];
  v6 = [info objectForKeyedSubscript:CWFXPCUserSettingsKey];
  if (!v6)
  {
    sub_1001A9E14(v54);
    v37 = *v54;
    goto LABEL_72;
  }

  v7 = v6;
  v45 = settingsCopy;
  info2 = [settingsCopy info];
  v9 = [info2 objectForKeyedSubscript:CWFXPCUserSettingsPropertiesKey];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (!v10)
  {
    goto LABEL_43;
  }

  v11 = v10;
  v12 = *v51;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v51 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v50 + 1) + 8 * i);
      integerValue = [v14 integerValue];
      if (integerValue > 2)
      {
        if (integerValue == 3)
        {
          if (CWFGetOSLog())
          {
            v23 = CWFGetOSLog();
          }

          else
          {
            v23 = &_os_log_default;
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            syncMode = [v7 syncMode];
            *v54 = 134217984;
            *&v54[4] = syncMode;
            LODWORD(v42) = 12;
            v39 = v54;
            _os_log_send_and_compose_impl();
          }

          nullsub_4(self->_managerRef, [v7 syncMode]);
        }

        else
        {
          if (integerValue != 4)
          {
            goto LABEL_16;
          }

          v18 = sub_1000A9D18([v7 compatibilityMode]);
          if (CWFGetOSLog())
          {
            v19 = CWFGetOSLog();
          }

          else
          {
            v19 = &_os_log_default;
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *v54 = 67109120;
            *&v54[4] = v18;
            LODWORD(v42) = 8;
            v39 = v54;
            _os_log_send_and_compose_impl();
          }

          sub_10007B29C(self->_managerRef, v18, 0);
        }
      }

      else
      {
        if (integerValue != 1)
        {
          if (integerValue == 2)
          {
            v16 = sub_1000A9CF0([v7 autoHotspotMode]);
            if (CWFGetOSLog())
            {
              v17 = CWFGetOSLog();
            }

            else
            {
              v17 = &_os_log_default;
            }

            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *v54 = 67109120;
              *&v54[4] = v16;
              LODWORD(v42) = 8;
              v39 = v54;
              _os_log_send_and_compose_impl();
            }

            sub_100088D58(self->_managerRef, v16, 0);
            continue;
          }

LABEL_16:
          if (CWFGetOSLog())
          {
            v20 = CWFGetOSLog();
          }

          else
          {
            v20 = &_os_log_default;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            integerValue2 = [v14 integerValue];
            *v54 = 134217984;
            *&v54[4] = integerValue2;
            LODWORD(v42) = 12;
            v39 = v54;
            _os_log_send_and_compose_impl();
          }

          continue;
        }

        v21 = sub_1000A9CF0([v7 askToJoinMode]);
        if (CWFGetOSLog())
        {
          v22 = CWFGetOSLog();
        }

        else
        {
          v22 = &_os_log_default;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *v54 = 67109120;
          *&v54[4] = v21;
          LODWORD(v42) = 8;
          v39 = v54;
          _os_log_send_and_compose_impl();
        }

        sub_10007B14C(self->_managerRef, v21, 0);
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v50 objects:v58 count:16];
  }

  while (v11);
LABEL_43:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  oSSpecificAttributes = [v7 OSSpecificAttributes];
  v27 = [oSSpecificAttributes countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v47;
    do
    {
      v30 = 0;
      do
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(oSSpecificAttributes);
        }

        v31 = *(*(&v46 + 1) + 8 * v30);
        oSSpecificAttributes2 = [objc_msgSend(v7 OSSpecificAttributes];
        if (CWFGetOSLog())
        {
          v33 = CWFGetOSLog();
        }

        else
        {
          v33 = &_os_log_default;
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *v54 = 138412546;
          *&v54[4] = v31;
          v55 = 2112;
          v56 = oSSpecificAttributes2;
          LODWORD(v44) = 22;
          v41 = v54;
          _os_log_send_and_compose_impl();
        }

        if ([(__CFString *)v31 isEqualToString:@"Custom network settings", v41, v44])
        {
          if (CWFGetOSLog())
          {
            v34 = CWFGetOSLog();
          }

          else
          {
            v34 = &_os_log_default;
          }

          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *v54 = 0;
            LODWORD(v43) = 2;
            v40 = v54;
            _os_log_send_and_compose_impl();
          }

          if (oSSpecificAttributes2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            if (CWFGetOSLog())
            {
              v35 = CWFGetOSLog();
            }

            else
            {
              v35 = &_os_log_default;
            }

            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *v54 = 0;
              LODWORD(v43) = 2;
              v40 = v54;
              _os_log_send_and_compose_impl();
            }
          }

          else
          {
            sub_100089454(self->_managerRef, oSSpecificAttributes2);
          }
        }

        else
        {
          sub_10007D6E8(self->_managerRef, v31, oSSpecificAttributes2);
        }

        v30 = v30 + 1;
      }

      while (v28 != v30);
      v36 = [oSSpecificAttributes countByEnumeratingWithState:&v46 objects:v57 count:16];
      v28 = v36;
    }

    while (v36);
  }

  [(WiFiXPCManager *)self sendUserSettingsDidChangeEvent:v40];
  v37 = 0;
  settingsCopy = v45;
LABEL_72:
  if ([settingsCopy response])
  {
    response = [settingsCopy response];
    response[2](response, v37, 0);
  }
}

- (id)__OSSpecificAttributes
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"WAPIEnabled" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"DiagnosticsEnabled" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"SBWiFiDontAskShown" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"kWiFiWhitelistingUUIDKey" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"KeepWiFiPoweredAirplaneModeEnabled" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"KeepWiFiPoweredAirplaneMode" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"WiFiMobileAssetIsHealthMonitorDisabled" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"deviceSpecificKeyMacRandomisation" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"RotationKeyMacRandomisation" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"WiFiCountryBandSupportKey" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"kWiFiWhitelistingUUIDKey" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"Custom network settings" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"kWiFiShowUnprovisionedHS20Networks" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"WiFiSettingsLogging" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"WiFiATJPickerLogging" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"WiFiATJPickerLogging" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"DisableSoftErrorReporting" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"EnableRangingLogDump" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"UserPreferenceJoinAlertMode" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"EnableRangingLogDump" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"lpasEnable" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"mStageAutoJoin" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"optimizedAutoJoin" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"TrgDiscAskIfAppropriateDisconnect" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"WakeMode" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"lastTputMeasurementDate" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"lastTputMeasurementResults" attributes:v3];
  [(WiFiXPCManager *)self __setOSSpecificAttributeForKey:@"EnableAssertiveTriggerDisconnect" attributes:v3];
  return v3;
}

- (void)__setOSSpecificAttributeForKey:(__CFString *)key attributes:(id)attributes
{
  v7 = [(__CFString *)key isEqualToString:@"Custom network settings"];
  managerRef = self->_managerRef;
  if (v7)
  {
    v9 = sub_10008944C(managerRef);
    if (v9)
    {
      v10 = v9;
      [attributes setObject:v9 forKey:key];

      CFRelease(v10);
    }
  }

  else
  {
    v11 = sub_10007C4E0(managerRef, key);
    if (v11)
    {

      [attributes setObject:v11 forKey:key];
    }
  }
}

- (WiFiXPCManager)init
{
  v17.receiver = self;
  v17.super_class = WiFiXPCManager;
  v2 = [(WiFiXPCManager *)&v17 init];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = objc_alloc_init(NSOperationQueue);
  v2->_wifiManagerQueue = v3;
  if (!v3)
  {
    goto LABEL_13;
  }

  [(NSOperationQueue *)v3 setMaxConcurrentOperationCount:-1];
  [(NSOperationQueue *)v2->_wifiManagerQueue setQualityOfService:-1];
  v4 = [[CWFXPCManager alloc] initWithServiceTypes:&off_1002827C0];
  v2->_XPCManager = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100102D08;
  v16[3] = &unk_100262708;
  v16[4] = v2;
  [(CWFXPCManager *)v4 setAllowCloudSyncableNetworkHandler:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100102E28;
  v15[3] = &unk_100262708;
  v15[4] = v2;
  [(CWFXPCManager *)v2->_XPCManager setAllowNearbySyncableNetworkHandler:v15];
  v5 = objc_alloc_init(NSMutableDictionary);
  v2->_peerAssistedDiscoveryNetworkMap = v5;
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  v2->_wifiAssistOverrideReasonsMap = v6;
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create(0, v7);
  v2->_mutexQueue = v8;
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.wifid.current-network", v9);
  v2->_currentNetworkQueue = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  v2->_currentNetworkMap = v11;
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = objc_alloc_init(NSMutableDictionary);
  v2->_currentKnownNetworkMap = v12;
  if (v12 && (-[CWFXPCManager setSupportedRequestTypes:](v2->_XPCManager, "setSupportedRequestTypes:", +[NSSet setWithArray:](NSSet, "setWithArray:", -[WiFiXPCManager __supportedRequestTypes](v2, "__supportedRequestTypes"))), -[CWFXPCManager setDelegate:](v2->_XPCManager, "setDelegate:", v2), v13 = [[CWFInterface alloc] initWithXPCClient:-[CWFXPCManager localXPCClientWithServiceType:](v2->_XPCManager requestParameters:{"localXPCClientWithServiceType:", 1), 0}], (v2->_coreWiFiInterface = v13) != 0))
  {
    [v13 setEventHandler:&stru_100262748];
    v2->_activated = 0;
  }

  else
  {
LABEL_13:

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  self->_wifiManagerQueue = 0;
  [(CWFXPCManager *)self->_XPCManager setDelegate:0];
  [(CWFXPCManager *)self->_XPCManager invalidate];

  self->_XPCManager = 0;
  [(CWFInterface *)self->_coreWiFiInterface invalidate];

  self->_coreWiFiInterface = 0;
  self->_peerAssistedDiscoveryNetworkMap = 0;

  self->_wifiAssistOverrideReasonsMap = 0;
  self->_currentHotspotNetwork = 0;

  self->_currentNetworkMap = 0;
  self->_currentKnownNetworkMap = 0;
  mutexQueue = self->_mutexQueue;
  if (mutexQueue)
  {
    dispatch_release(mutexQueue);
  }

  currentNetworkQueue = self->_currentNetworkQueue;
  if (currentNetworkQueue)
  {
    dispatch_release(currentNetworkQueue);
  }

  cachedCurrentSessionBasedNetworkRef = self->_cachedCurrentSessionBasedNetworkRef;
  if (cachedCurrentSessionBasedNetworkRef)
  {
    CFRelease(cachedCurrentSessionBasedNetworkRef);
    self->_cachedCurrentSessionBasedNetworkRef = 0;
  }

  managerRef = self->_managerRef;
  if (managerRef)
  {
    CFRelease(managerRef);
    self->_managerRef = 0;
  }

  v7.receiver = self;
  v7.super_class = WiFiXPCManager;
  [(WiFiXPCManager *)&v7 dealloc];
}

- (void)setWiFiManager:(__WiFiManager *)manager
{
  managerRef = self->_managerRef;
  if (managerRef != manager)
  {
    if (managerRef)
    {
      CFRelease(managerRef);
    }

    if (manager)
    {
      v6 = CFRetain(manager);
    }

    else
    {
      v6 = 0;
    }

    self->_managerRef = v6;
    v7 = sub_10000EEE0(manager);
    coreWiFiInterface = self->_coreWiFiInterface;

    [(CWFInterface *)coreWiFiInterface setTargetQueue:v7];
  }
}

- (void)activate
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  __supportedRequestTypes = [(WiFiXPCManager *)self __supportedRequestTypes];
  v4 = [__supportedRequestTypes countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(__supportedRequestTypes);
        }

        -[CWFXPCManager setTargetQueue:requestType:interfaceName:](self->_XPCManager, "setTargetQueue:requestType:interfaceName:", self->_wifiManagerQueue, [*(*(&v8 + 1) + 8 * v7) integerValue], 0);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [__supportedRequestTypes countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(CWFXPCManager *)self->_XPCManager activate];
  [(CWFInterface *)self->_coreWiFiInterface activate];
  self->_activated = 1;
}

- (void)invalidate
{
  [(CWFXPCManager *)self->_XPCManager invalidate];
  [(CWFInterface *)self->_coreWiFiInterface invalidate];
  self->_activated = 0;
}

- (void)sendWoWDidChangeEventWithInterfaceName:(id)name
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(CWFXPCEvent);
  [v6 setType:9];
  [v6 setInterfaceName:name];
  [v6 setTimestamp:{+[NSDate date](NSDate, "date")}];
  [(CWFXPCManager *)self->_XPCManager sendXPCEvent:v6 reply:0];

  objc_autoreleasePoolPop(v5);
}

- (void)replayLinkUpEventWithInterfaceName:(id)name
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(CWFXPCEvent);
  [v6 setType:6];
  [v6 setInterfaceName:name];
  [v6 setTimestamp:{+[NSDate date](NSDate, "date")}];
  v7 = objc_alloc_init(CWFLinkChangeStatus);
  [v7 setLinkDown:0];
  v13 = CWFEventLinkChangeStatusKey;
  v14 = v7;
  [v6 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v14, &v13, 1)}];
  if (CWFGetOSLog())
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[WiFiXPCManager replayLinkUpEventWithInterfaceName:]";
    LODWORD(v10) = 12;
    v9 = &v11;
    _os_log_send_and_compose_impl();
  }

  [(CWFXPCManager *)self->_XPCManager sendXPCEvent:v6 reply:0, v9, v10];
  objc_autoreleasePoolPop(v5);
}

- (void)autoJoinStartedWithTrigger:(int64_t)trigger interfaceName:(id)name
{
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(CWFXPCEvent);
  [v8 setInternalType:1];
  [v8 setInterfaceName:name];
  [v8 setTimestamp:{+[NSDate date](NSDate, "date")}];
  v9 = CWFInternalEventAutoJoinTriggerKey;
  v10 = [NSNumber numberWithInteger:trigger];
  [v8 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v10, &v9, 1)}];
  [(CWFXPCManager *)self->_XPCManager sendXPCEvent:v8 reply:0];
  objc_autoreleasePoolPop(v7);
}

- (void)autoJoinUpdatedWithState:(int64_t)state interfaceName:(id)name
{
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(CWFXPCEvent);
  [v8 setInternalType:1];
  [v8 setInterfaceName:name];
  [v8 setTimestamp:{+[NSDate date](NSDate, "date")}];
  v9 = CWFInternalEventAutoJoinStateKey;
  v10 = [NSNumber numberWithInteger:state];
  [v8 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v10, &v9, 1)}];
  [(CWFXPCManager *)self->_XPCManager sendXPCEvent:v8 reply:0];
  objc_autoreleasePoolPop(v7);
}

- (void)associationDoneWithNetwork:(__WiFiNetwork *)network error:(int)error interfaceName:(id)name
{
  v8 = objc_autoreleasePoolPush();
  v9 = sub_10001A9BC(network);
  if (v9)
  {
    v10 = v9;
    v11 = +[NSMutableDictionary dictionary];
    CWFErrorDescription();
    [v11 setObject:CWFErrorWithDescription() forKeyedSubscript:CWFInternalEventErrorKey];
    [v11 setObject:v10 forKeyedSubscript:CWFInternalEventScanResultKey];
    v12 = objc_alloc_init(CWFXPCEvent);
    [v12 setInternalType:3];
    [v12 setInterfaceName:name];
    [v12 setTimestamp:{+[NSDate date](NSDate, "date")}];
    [v12 setInfo:v11];
    [(CWFXPCManager *)self->_XPCManager sendXPCEvent:v12 reply:0];
  }

  objc_autoreleasePoolPop(v8);
}

- (void)sendUserAutoJoinStateDidChangeEvent
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(CWFXPCEvent);
  [v4 setType:25];
  [v4 setTimestamp:{+[NSDate date](NSDate, "date")}];
  [(CWFXPCManager *)self->_XPCManager sendXPCEvent:v4 reply:0];

  objc_autoreleasePoolPop(v3);
}

- (void)sendAutoHotspotModeDidChangeEvent
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(CWFXPCEvent);
  [v4 setType:26];
  [v4 setTimestamp:{+[NSDate date](NSDate, "date")}];
  [(CWFXPCManager *)self->_XPCManager sendXPCEvent:v4 reply:0];

  objc_autoreleasePoolPop(v3);
}

- (void)sendXPCEvent:(id)event
{
  v5 = objc_autoreleasePoolPush();
  [(CWFXPCManager *)self->_XPCManager sendXPCEvent:event reply:0];

  objc_autoreleasePoolPop(v5);
}

- (void)sendKnownNetworkDidChangeEventForProfile:(id)profile previous:(id)previous eventType:(int64_t)type
{
  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc_init(CWFXPCEvent);
  [v10 setType:30];
  [v10 setTimestamp:{+[NSDate date](NSDate, "date")}];
  v11 = +[NSMutableDictionary dictionary];
  v12 = v11;
  if (profile)
  {
    [v11 setObject:profile forKey:CWFInternalEventKnownNetworkProfileKey];
  }

  if (previous)
  {
    [v12 setObject:previous forKey:CWFInternalEventPreviousKnownNetworkProfileKey];
  }

  v13 = [NSNumber numberWithInteger:type];
  [v12 setObject:v13 forKey:CWFInternalEventKnownNetworkEventTypeKey];
  [v10 setInfo:v12];
  [(CWFXPCManager *)self->_XPCManager sendXPCEvent:v10 reply:0];

  objc_autoreleasePoolPop(v9);
}

- (void)sendWiFiAssistEventWithInterfaceName:(id)name linkQualityMetricInfo:(id)info
{
  v7 = objc_autoreleasePoolPush();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v8 = [info objectForKeyedSubscript:@"WIFI_ASSIST_OVERRIDE_REASON"];
  if (v8)
  {
    v9 = +[NSMutableOrderedSet orderedSet];
    [v9 addObject:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [info objectForKeyedSubscript:@"WIFI_ASSIST_OVERRIDE_REASONS"];
  if ([v10 count])
  {
    if (!v9)
    {
      v9 = +[NSMutableOrderedSet orderedSet];
    }

    [v9 addObjectsFromArray:v10];
  }

  mutexQueue = self->_mutexQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100104118;
  block[3] = &unk_100262770;
  block[4] = self;
  block[5] = name;
  block[6] = v9;
  block[7] = &v15;
  dispatch_sync(mutexQueue, block);
  if (*(v16 + 24) == 1)
  {
    v12 = objc_alloc_init(CWFXPCEvent);
    [v12 setType:34];
    [v12 setInterfaceName:name];
    [v12 setTimestamp:{+[NSDate date](NSDate, "date")}];
    if (v9)
    {
      v19 = CWFEventWiFiAssistOverrideReasonsKey;
      array = [v9 array];
      v13 = [NSDictionary dictionaryWithObjects:&array forKeys:&v19 count:1];
    }

    else
    {
      v13 = 0;
    }

    [v12 setInfo:v13];
    [(CWFXPCManager *)self->_XPCManager sendXPCEvent:v12 reply:0];
  }

  _Block_object_dispose(&v15, 8);
  objc_autoreleasePoolPop(v7);
}

- (id)__sanitizeSensingParams:(id)params
{
  if (([params numberOfReports] & 0x8000000000000000) == 0 && objc_msgSend(objc_msgSend(params, "matchMACAddresses"), "count") <= 0x20 && (objc_msgSend(params, "timeout") & 0x8000000000000000) == 0 && objc_msgSend(params, "timeout") <= 50000 && objc_msgSend(params, "scheduleOnceAfter") >= -2 && objc_msgSend(params, "scheduleOnceAfter") <= 15 && objc_msgSend(params, "scheduleDailyAt") >= -2 && objc_msgSend(params, "scheduleDailyAt") < 86401)
  {
    return 0;
  }

  CWFErrorDescription();

  return CWFErrorWithDescription();
}

- (id)__getSensingParams:(id)params
{
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", objc_msgSend(params, "numberOfReports")), @"SENSING_PARAMS_NUMBER_OF_REPORTS"}];
  [v4 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", objc_msgSend(params, "matchFrameType")), @"SENSING_PARAMS_MATCH_FRAME_TYPE"}];
  [v4 setObject:objc_msgSend(params forKeyedSubscript:{"matchMACAddresses"), @"SENSING_PARAMS_MATCH_MAC_ADDRESS"}];
  [v4 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", objc_msgSend(params, "timeout")), @"SENSING_PARAMS_TIMEOUT"}];
  [v4 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", objc_msgSend(params, "submitMetric")), @"SENSING_PARAMS_SUBMIT_METRIC"}];
  [v4 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", objc_msgSend(params, "scheduleDailyAt")), @"SENSING_PARAMS_SCHEDULE_DAILY_AT"}];
  [v4 setObject:objc_msgSend(params forKeyedSubscript:{"activityLabels"), @"SENSING_PARAMS_ACTIVITY_LABELS"}];
  [v4 setObject:objc_msgSend(params forKeyedSubscript:{"placeLabels"), @"SENSING_PARAMS_PLACE_LABELS"}];
  [v4 setObject:objc_msgSend(params forKeyedSubscript:{"comment"), @"SENSING_PARAMS_COMMENT"}];
  if ([params scheduleDailyAt] != -2)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    if ([params scheduleDailyAt] == -1)
    {
      [(NSUserDefaults *)v5 removeObjectForKey:@"WIFI_SENSING"];
    }

    else
    {
      [(NSUserDefaults *)v5 setObject:v4 forKey:@"WIFI_SENSING"];
    }
  }

  scheduleOnceAfter = [params scheduleOnceAfter];
  if ([params scheduleOnceAfter] == -2 && objc_msgSend(params, "scheduleDailyAt") == -2)
  {
    scheduleOnceAfter = 0;
  }

  [v4 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", scheduleOnceAfter), @"SENSING_PARAMS_SCHEDULE_ONCE_AFTER"}];
  return v4;
}

- (void)__performSensing:(id)sensing
{
  sensingCopy = sensing;
  info = [sensing info];
  v7 = [info objectForKeyedSubscript:CWFXPCSensingParamsKey];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [objc_msgSend(sensing "requestParameters")];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v9];
  if (!v11)
  {
    sub_1001A9EA0(&v17);
    goto LABEL_16;
  }

  v12 = v11;
  v13 = [(WiFiXPCManager *)self __sanitizeSensingParams:v8];
  if (v13)
  {
    v16 = v13;
    goto LABEL_17;
  }

  v14 = [(WiFiXPCManager *)self __getSensingParams:v8];
  if (!v14)
  {
LABEL_14:
    sub_1001A9E14(&v17);
    goto LABEL_16;
  }

  v15 = v14;
  if ((MGGetBoolAnswer() & 1) == 0 || (_os_feature_enabled_impl() & 1) == 0)
  {
    sub_1001AA198(&v17);
LABEL_16:
    v16 = v17;
    if (!v17)
    {
      return;
    }

LABEL_17:
    sub_1001AA1E0(sensing, v16);
    return;
  }

  if (sub_1000DBEF8(v12, v10, v15, sub_10010467C, sensing))
  {
    CWFErrorDescription();
    v16 = CWFErrorWithDescription();
    if (v16)
    {
      goto LABEL_17;
    }
  }
}

- (void)__performNDD:(id)d XPCConnection:(id)connection
{
  info = [d info];
  v8 = [info objectForKeyedSubscript:CWFXPCNDDParamsKey];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = [objc_msgSend(d "requestParameters")];
  if (!v10)
  {
    goto LABEL_15;
  }

  if (!self->_managerRef)
  {
    sub_1001A9EA0(&v14);
    goto LABEL_7;
  }

  v11 = v10;
  processName = [connection processName];
  if (processName)
  {
    if (sub_100158CE8(self->_managerRef, [d type], v9, processName, v11))
    {
      CWFErrorDescription();
      CWFErrorWithDescription();
    }
  }

  else
  {
LABEL_15:
    sub_1001A9E14(&v14);
  }

LABEL_7:
  if ([d response])
  {
    v13 = *([d response] + 2);

    v13();
  }
}

- (void)sendUserSettingsDidChangeEvent
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(CWFXPCEvent);
  [v4 setType:27];
  [v4 setTimestamp:{+[NSDate date](NSDate, "date")}];
  [(CWFXPCManager *)self->_XPCManager sendXPCEvent:v4 reply:0];

  objc_autoreleasePoolPop(v3);
}

- (void)__setBlockedBands:(id)bands
{
  info = [bands info];
  v6 = [info objectForKeyedSubscript:CWFXPCBlockedBandsKey];
  if (v6)
  {
    if (sub_100166338(self->_managerRef, v6))
    {
      CWFErrorDescription();
      CWFErrorWithDescription();
    }
  }

  else
  {
    sub_1001A9E14(&v8);
  }

  if ([bands response])
  {
    v7 = *([bands response] + 2);

    v7();
  }
}

- (void)__startHostAPMode:(id)mode XPCConnection:(id)connection
{
  modeCopy = mode;
  info = [mode info];
  v9 = [info objectForKeyedSubscript:CWFXPCHostAPConfigurationKey];
  if (!v9 || (v10 = v9, (v11 = [objc_msgSend(mode "requestParameters")]) == 0))
  {
    sub_1001A9E14(&v25);
LABEL_22:
    v22 = v25;
    goto LABEL_24;
  }

  v12 = v11;
  v13 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v11];
  if (!v13)
  {
    sub_1001A9EA0(&v25);
    goto LABEL_22;
  }

  v14 = v13;
  v15 = +[NSMutableDictionary dictionary];
  if (![v10 channel])
  {
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"AP_MODE_MOVETOIOS_MIGRATION"];
  }

  [v15 setObject:objc_msgSend(v10 forKeyedSubscript:{"SSID"), @"AP_MODE_SSID_BYTES"}];
  [v15 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(objc_msgSend(v10, "channel"), "channel")), @"CHANNEL"}];
  [v15 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(objc_msgSend(v10, "channel"), "flags")), @"CHANNEL_FLAGS"}];
  [v15 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v10, "PHYMode")), @"AP_MODE_PHY_MODE"}];
  [v15 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", objc_msgSend(v10, "forceBeaconInterval100ms")), @"AP_MODE_FORCE_BI_100"}];
  [v15 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", objc_msgSend(v10, "forceHiddenMode")), @"SOFTAP_SOFTAP_HIDDEN_NETWORK"}];
  [v15 setObject:objc_msgSend(v10 forKeyedSubscript:{"IEList"), @"AP_MODE_IE_LIST"}];
  securityType = [v10 securityType];
  if (securityType > 79)
  {
    if (securityType == 80)
    {
      [v15 setObject:&off_100281F50 forKeyedSubscript:@"AP_MODE_AUTH_LOWER"];
      v17 = &off_1002820A0;
      goto LABEL_15;
    }

    if (securityType == 512)
    {
      [v15 setObject:&off_100281F50 forKeyedSubscript:@"AP_MODE_AUTH_LOWER"];
      [v15 setObject:&off_100281F68 forKeyedSubscript:@"AP_MODE_AUTH_UPPER"];
      v18 = @"AP_MODE_CYPHER_TYPE";
      v19 = v15;
      password = &off_100281F68;
LABEL_16:
      [v19 setObject:password forKeyedSubscript:v18];
    }
  }

  else
  {
    if (securityType == 16)
    {
      [v15 setObject:&off_100281F50 forKeyedSubscript:@"AP_MODE_AUTH_LOWER"];
      v17 = &off_100282070;
      goto LABEL_15;
    }

    if (securityType == 64)
    {
      [v15 setObject:&off_100281F50 forKeyedSubscript:@"AP_MODE_AUTH_LOWER"];
      v17 = &off_1002820B8;
LABEL_15:
      [v15 setObject:v17 forKeyedSubscript:@"AP_MODE_AUTH_UPPER"];
      [v15 setObject:&off_100282088 forKeyedSubscript:@"AP_MODE_CYPHER_TYPE"];
      password = [v10 password];
      v18 = @"AP_MODE_KEY";
      v19 = v15;
      goto LABEL_16;
    }
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100104EB4;
  v24[3] = &unk_100262798;
  v24[4] = mode;
  v21 = _Block_copy(v24);
  if (!sub_1000CE36C(v14, v12, 2, v15, sub_1000FCD68, v21, [connection processName]))
  {
    return;
  }

  CWFErrorDescription();
  v22 = CWFErrorWithDescription();
LABEL_24:
  if (v22)
  {
    if ([mode response])
    {
      response = [mode response];
      response[2](response, v22, 0);
    }
  }
}

- (void)__stopHostAPMode:(id)mode XPCConnection:(id)connection
{
  modeCopy = mode;
  v7 = [objc_msgSend(mode "requestParameters")];
  if (!v7)
  {
    sub_1001A9E14(&v15);
LABEL_7:
    v12 = v15;
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v7];
  if (!v9)
  {
    sub_1001A9EA0(&v15);
    goto LABEL_7;
  }

  v10 = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001050BC;
  v14[3] = &unk_1002627C0;
  v14[4] = mode;
  v11 = _Block_copy(v14);
  if (!sub_10018B68C(v10, v8, 2, sub_1000FD0A0, v11))
  {
    return;
  }

  CWFErrorDescription();
  v12 = CWFErrorWithDescription();
LABEL_9:
  if (v12)
  {
    if ([mode response])
    {
      response = [mode response];
      response[2](response, v12, 0);
    }
  }
}

- (void)__getWiFiAssistOverrideReasons:(id)reasons
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_100002B90;
  v13 = sub_100006794;
  v14 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001052AC;
  block[3] = &unk_1002627E8;
  block[5] = reasons;
  block[6] = &v9;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
  v5 = +[NSMutableDictionary dictionary];
  v6 = v10[5];
  [v5 setObject:v6 forKeyedSubscript:CWFXPCResultKey];
  if ([reasons response])
  {
    response = [reasons response];
    response[2](response, 0, v5);
  }

  _Block_object_dispose(&v9, 8);
}

- (void)__getBackgroundScanConfiguration:(id)configuration
{
  v5 = [objc_msgSend(configuration "requestParameters")];
  if (v5 && (v6 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v5]) != 0)
  {
    v7 = sub_1000DF12C(v6);
  }

  else
  {
    if ((sub_1001AA244() & 1) == 0)
    {
      return;
    }

    v7 = 0;
  }

  v8 = +[NSMutableDictionary dictionary];
  [v8 setObject:v7 forKeyedSubscript:CWFXPCResultKey];
  if ([configuration response])
  {
    response = [configuration response];
    v10 = [v8 copy];
    v11 = response[2];

    v11(response, 0, v10);
  }
}

- (void)__setBackgroundScanConfiguration:(id)configuration
{
  info = [configuration info];
  v6 = [info objectForKeyedSubscript:CWFXPCBackgroundScanConfigurationKey];
  if (v6 && (v7 = v6, (v8 = [objc_msgSend(configuration "requestParameters")]) != 0))
  {
    v9 = v8;
    v10 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v8];
    if (v10)
    {
      if (sub_1000DEB6C(v10, v9, v7))
      {
        CWFErrorDescription();
        CWFErrorWithDescription();
      }
    }

    else
    {
      sub_1001A9EA0(&v12);
    }
  }

  else
  {
    sub_1001A9E14(&v12);
  }

  if ([configuration response])
  {
    v11 = *([configuration response] + 2);

    v11();
  }
}

- (void)__getAutoJoinDenyList:(id)list
{
  v5 = [objc_msgSend(list "requestParameters")];
  if (v5 && (v6 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v5]) != 0)
  {
    v7 = sub_1000DF540(v6);
  }

  else
  {
    if ((sub_1001AA244() & 1) == 0)
    {
      return;
    }

    v7 = 0;
  }

  v8 = +[NSMutableDictionary dictionary];
  [v8 setObject:v7 forKeyedSubscript:CWFXPCResultKey];
  if ([list response])
  {
    response = [list response];
    v10 = [v8 copy];
    v11 = response[2];

    v11(response, 0, v10);
  }
}

- (void)__setAutoJoinDenyList:(id)list
{
  v5 = [objc_msgSend(list "requestParameters")];
  if (v5 && (v6 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v5]) != 0)
  {
    v7 = v6;
    info = [list info];
    v9 = [objc_msgSend(info objectForKeyedSubscript:{CWFAutoJoinDenyListAddReasonKey), "intValue"}];
    info2 = [list info];
    sub_100022854([info2 objectForKeyedSubscript:CWFXPCNetworkProfileKey], 0);
    if (!sub_10018FB00())
    {
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s - WiFiDeviceManagerSetAutoJoinDenylistedNetwork %lu failed", "-[WiFiXPCManager __setAutoJoinDenyList:]", v9}];
      }

      objc_autoreleasePoolPop(v11);
    }

    v12 = sub_1000DF540(v7);
  }

  else
  {
    if ((sub_1001AA244() & 1) == 0)
    {
      return;
    }

    v12 = 0;
  }

  v13 = +[NSMutableDictionary dictionary];
  [v13 setObject:v12 forKeyedSubscript:CWFXPCResultKey];
  if ([list response])
  {
    response = [list response];
    v15 = [v13 copy];
    v16 = response[2];

    v16(response, 0, v15);
  }
}

- (void)__clearAutoJoinDenyList:(id)list
{
  v5 = [objc_msgSend(list "requestParameters")];
  if (v5 && (v6 = [(WiFiXPCManager *)self __deviceManagerWithInterfaceName:v5]) != 0)
  {
    v7 = v6;
    info = [list info];
    v9 = [objc_msgSend(info objectForKeyedSubscript:{CWFAutoJoinDenyListRemoveReasonKey), "intValue"}];
    info2 = [list info];
    v11 = sub_100022854([info2 objectForKeyedSubscript:CWFXPCNetworkProfileKey], 0);
    if ((sub_1000DF6F4(v7, v9, v11) & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s - WiFiDeviceManagerClearAutoJoinDenylistedNetwork %lu failed", "-[WiFiXPCManager __clearAutoJoinDenyList:]", v9}];
      }

      objc_autoreleasePoolPop(v12);
    }

    v13 = sub_1000DF540(v7);
  }

  else
  {
    if ((sub_1001AA244() & 1) == 0)
    {
      return;
    }

    v13 = 0;
  }

  v14 = +[NSMutableDictionary dictionary];
  [v14 setObject:v13 forKeyedSubscript:CWFXPCResultKey];
  if ([list response])
  {
    response = [list response];
    v16 = [v14 copy];
    v17 = response[2];

    v17(response, 0, v16);
  }
}

- (void)__getKnownNetworkProfilesInSameLan:(id)lan
{
  lanCopy = lan;
  info = [lan info];
  v6 = [info objectForKeyedSubscript:CWFNetworkProfilePropertyNetworkNameKey];
  v7 = v6;
  if (!v6)
  {
    __copyCurrentNetworkRef = [(WiFiXPCManager *)self __copyCurrentNetworkRef];
    v25 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s - No SSID provided, using current network: %@", "-[WiFiXPCManager __getKnownNetworkProfilesInSameLan:]", __copyCurrentNetworkRef}];
    }

    objc_autoreleasePoolPop(v25);
    if (__copyCurrentNetworkRef)
    {
      goto LABEL_3;
    }

LABEL_31:
    sub_1001A9E14(&v28);
    goto LABEL_33;
  }

  __copyCurrentNetworkRef = sub_10009D2E4(v6);
  if (!__copyCurrentNetworkRef)
  {
    goto LABEL_31;
  }

LABEL_3:
  v9 = sub_100020110(self->_managerRef);
  if (v9)
  {
    v10 = v9;
    v27 = lanCopy;
    v11 = +[NSMutableSet set];
    cf = __copyCurrentNetworkRef;
    v12 = sub_100086860(self->_managerRef, __copyCurrentNetworkRef);
    if (CFArrayGetCount(v12) >= 1)
    {
      v13 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
        [v11 addObject:{objc_msgSend(ValueAtIndex, "ssid")}];
        if ([objc_msgSend(ValueAtIndex "lans")] >= 2)
        {
          v15 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s - Multi-LAN SSID: %@", "-[WiFiXPCManager __getKnownNetworkProfilesInSameLan:]", ValueAtIndex}];
          }

          objc_autoreleasePoolPop(v15);
        }

        ++v13;
      }

      while (CFArrayGetCount(v12) > v13);
    }

    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s - WiFi Analytics fetched %ld SSIDs in same LAN", "-[WiFiXPCManager __getKnownNetworkProfilesInSameLan:]", objc_msgSend(v11, "count")}];
    }

    objc_autoreleasePoolPop(v16);
    v17 = +[NSMutableArray array];
    if (CFArrayGetCount(v10) >= 1)
    {
      v18 = 0;
      do
      {
        v19 = CFArrayGetValueAtIndex(v10, v18);
        v20 = sub_10000A878(v19);
        if (v7 && CFEqual(v7, v20) || [v11 containsObject:v20])
        {
          v21 = sub_10001B368(v19);
          if (v21)
          {
            [v17 addObject:v21];
          }
        }

        ++v18;
      }

      while (CFArrayGetCount(v10) > v18);
    }

    CFRelease(cf);
    CFRelease(v10);
    if (v12)
    {
      CFRelease(v12);
    }

    lanCopy = v27;
    goto LABEL_24;
  }

  sub_1001A9FF8();
LABEL_33:
  if (v28)
  {
    if (![lanCopy response])
    {
      return;
    }

    goto LABEL_25;
  }

  v17 = 0;
LABEL_24:
  v22 = +[NSMutableDictionary dictionary];
  v23 = [v17 copy];
  [v22 setObject:v23 forKeyedSubscript:CWFXPCResultKey];
  if (![lanCopy response])
  {
    return;
  }

LABEL_25:
  v24 = *([lanCopy response] + 2);

  v24();
}

- (void)__getKnownNetworkProfilesWithNetworkSignature:(id)signature
{
  info = [signature info];
  v6 = [info objectForKeyedSubscript:CWFBSSPropertyIPv4NetworkSignatureKey];
  info2 = [signature info];
  v8 = [info2 objectForKeyedSubscript:CWFBSSPropertyIPv6NetworkSignatureKey];
  if (v6 | v8 && (v9 = v8, (v10 = sub_100020110(self->_managerRef)) != 0))
  {
    v11 = v10;
    v12 = +[NSMutableSet set];
    v13 = sub_1000868D4(self->_managerRef, v6, v9);
    v14 = v13;
    if (v13 && CFArrayGetCount(v13) >= 1)
    {
      v15 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v15);
        [v12 addObject:{objc_msgSend(ValueAtIndex, "ssid")}];
        if ([objc_msgSend(ValueAtIndex "lans")] >= 2)
        {
          v17 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s - Multi-LAN SSID: %@", "-[WiFiXPCManager __getKnownNetworkProfilesWithNetworkSignature:]", ValueAtIndex}];
          }

          objc_autoreleasePoolPop(v17);
        }

        ++v15;
      }

      while (CFArrayGetCount(v14) > v15);
    }

    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s - WiFi Analytics fetched %ld SSIDs in same LAN", "-[WiFiXPCManager __getKnownNetworkProfilesWithNetworkSignature:]", objc_msgSend(v12, "count")}];
    }

    objc_autoreleasePoolPop(v18);
    v19 = +[NSMutableArray array];
    if (CFArrayGetCount(v11) >= 1)
    {
      v20 = 0;
      do
      {
        v21 = CFArrayGetValueAtIndex(v11, v20);
        if ([v12 containsObject:sub_10000A878(v21)])
        {
          v22 = sub_10001B368(v21);
          if (v22)
          {
            [v19 addObject:v22];
          }
        }

        ++v20;
      }

      while (CFArrayGetCount(v11) > v20);
    }

    CFRelease(v11);
    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    if ((sub_1001AA244() & 1) == 0)
    {
      return;
    }

    v19 = 0;
  }

  v23 = +[NSMutableDictionary dictionary];
  v24 = [v19 copy];
  [v23 setObject:v24 forKeyedSubscript:CWFXPCResultKey];
  if ([signature response])
  {
    v25 = *([signature response] + 2);

    v25();
  }
}

- (void)__getNetworkSignatureForNetwork:(id)network
{
  info = [network info];
  v6 = [info objectForKeyedSubscript:CWFBSSPropertyBSSIDKey];
  info2 = [network info];
  v8 = [info2 objectForKeyedSubscript:CWFNetworkProfilePropertySSIDKey];
  if (v6 | v8)
  {
    v9 = v8;
    managerRef = self->_managerRef;
    if (v6)
    {
      v11 = sub_100086954(managerRef, v6);
    }

    else
    {
      v11 = sub_1000869C0(managerRef, v9);
    }

    v12 = v11;
    v13 = [CWFNetworkSignature alloc];
    Value = CFDictionaryGetValue(v12, @"ipv4NetworkSignature");
    v15 = [v13 initWithIPv4NetworkSignature:Value IPv6NetworkSignature:{CFDictionaryGetValue(v12, @"ipv6NetworkSignature"}];
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    if ((sub_1001AA2B8(network) & 1) == 0)
    {
      return;
    }

    v15 = 0;
  }

  v16 = +[NSMutableDictionary dictionary];
  v17 = v15;
  [v16 setObject:v17 forKeyedSubscript:CWFXPCResultKey];
  if ([network response])
  {
    v18 = *([network response] + 2);

    v18();
  }
}

- (id)__queueForRequest:(id)request
{
  if ([request type] - 57 <= 1)
  {
    info = [request info];
    if (![objc_msgSend(info objectForKeyedSubscript:{CWFXPCForceNoCacheKey), "BOOLValue"}])
    {
      return self->_currentNetworkQueue;
    }
  }

  managerRef = self->_managerRef;

  return sub_10000EEE0(managerRef);
}

- (void)XPCManager:(id)manager XPCConnection:(id)connection receivedXPCRequest:(id)request
{
  v8 = objc_autoreleasePoolPush();
  v9 = [(WiFiXPCManager *)self __queueForRequest:request];
  if (v9)
  {
    v10 = v9;
    v11 = qos_class_self();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100106288;
    block[3] = &unk_100262558;
    block[4] = request;
    block[5] = self;
    block[6] = connection;
    v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v11, 0, block);
    dispatch_async(v10, v12);
    _Block_release(v12);
  }

  else if ([request response])
  {
    response = [request response];
    CWFErrorDescription();
    v14 = CWFErrorWithDescription();
    response[2](response, v14, 0);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)XPCManager:(id)manager invalidatedXPCConnection:(id)connection
{
  v6 = objc_autoreleasePoolPush();
  v7 = sub_10000EEE0(self->_managerRef);
  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100106868;
    v8[3] = &unk_100261330;
    v8[4] = self;
    v8[5] = connection;
    dispatch_async(v7, v8);
  }

  objc_autoreleasePoolPop(v6);
}

- (__WiFiNetwork)__copyCurrentNetworkRef
{
  v2 = sub_100020030(self->_managerRef);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    v10 = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
      v8 = sub_100010908(ValueAtIndex);
      if (v8 && (v9 = sub_100009664(v8)) != 0)
      {
        v10 = sub_1000102AC(ValueAtIndex, v9);
      }

      else
      {
        v10 = 0;
      }

      ++v6;
    }

    while (v5 > v6 && !v10);
  }

  CFRelease(v3);
  return v10;
}

- (__WiFiNetwork)__copyCurrentKnownNetworkRef
{
  v2 = sub_100020030(self->_managerRef);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    v10 = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
      v8 = sub_100010908(ValueAtIndex);
      if (v8 && (v9 = sub_100009664(v8)) != 0)
      {
        v10 = sub_1000C90AC(ValueAtIndex, v9);
      }

      else
      {
        v10 = 0;
      }

      ++v6;
    }

    while (v5 > v6 && !v10);
  }

  CFRelease(v3);
  return v10;
}

- (id)__copyCurrentNetworkHotspotNetwork
{
  v2 = sub_100020030(self->_managerRef);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    v8 = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    do
    {
      CFArrayGetValueAtIndex(v3, v6);
      v7 = sub_1000DEA90();
      v8 = v7;
      ++v6;
    }

    while (v5 > v6 && !v7);
  }

  CFRelease(v3);
  return v8;
}

- (void)__getDeviceUUID:(id)d
{
  v4 = sub_10007C4E0(self->_managerRef, @"DeviceUUID");
  if (v4)
  {
    v5 = [[NSUUID alloc] initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = +[NSMutableDictionary dictionary];
  [v6 setObject:v5 forKeyedSubscript:CWFXPCResultKey];
  if ([d response])
  {
    v7 = *([d response] + 2);

    v7();
  }
}

- (BOOL)__knownNetworkHasCustomNetworkSettings:(id)settings
{
  networkName = [settings networkName];
  if (networkName)
  {
    LOBYTE(networkName) = sub_10013D5CC(self->_managerRef) && (v5 = [sub_100011430() networkName], CFDictionaryContainsKey(self, v5));
  }

  return networkName;
}

- (int64_t)networkOfInterestHomeStateForKnownNetworkRef:(__WiFiNetwork *)ref
{
  if (!ref || !self->_managerRef || !self->_coreWiFiInterface || !self->_activated || !sub_10001B368(ref))
  {
    return 0;
  }

  v4 = [sub_100011430() networkOfInterestHomeStateForKnownNetworkProfile:v3];

  return v4;
}

- (int64_t)networkOfInterestHomeStateForKnownNetworkProfile:(id)profile
{
  if (profile && self->_managerRef && self->_coreWiFiInterface && self->_activated)
  {
    return [(CWFInterface *)self->_coreWiFiInterface networkOfInterestHomeStateForKnownNetworkProfile:?];
  }

  else
  {
    return 0;
  }
}

- (int64_t)networkOfInterestWorkStateForKnownNetworkRef:(__WiFiNetwork *)ref
{
  if (!ref || !self->_managerRef || !self->_coreWiFiInterface || !self->_activated || !sub_10001B368(ref))
  {
    return 0;
  }

  v4 = [sub_100011430() networkOfInterestWorkStateForKnownNetworkProfile:v3];

  return v4;
}

- (int64_t)networkOfInterestWorkStateForKnownNetworkProfile:(id)profile
{
  if (profile && self->_managerRef && self->_coreWiFiInterface && self->_activated)
  {
    return [(CWFInterface *)self->_coreWiFiInterface networkOfInterestWorkStateForKnownNetworkProfile:?];
  }

  else
  {
    return 0;
  }
}

@end