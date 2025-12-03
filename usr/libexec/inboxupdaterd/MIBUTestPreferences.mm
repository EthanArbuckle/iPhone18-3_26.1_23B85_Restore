@interface MIBUTestPreferences
+ (id)sharedInstance;
- (BOOL)disableNarrativeAuthentication;
- (BOOL)enablePipelineMode;
- (BOOL)enterLPMAfterUpdateComplete;
- (BOOL)factorySUCertExist;
- (BOOL)inBoxUpdateMode;
- (BOOL)skipCertDeletion;
- (BOOL)skipDaemonDisable;
- (BOOL)skipDeviceIdentityVerification;
- (BOOL)skipWiFiAssociation;
- (BOOL)useAppleConnect;
- (BOOL)useLiveTatsu;
- (BOOL)usePandoraNonProdCerts;
- (BOOL)usePythonLoopbackServer;
- (BOOL)useSrNmForDeviceKey;
- (id)assetPath;
- (id)factorySUCertPath;
- (id)factorySUKeyIsSEP;
- (id)factorySUKeyPath;
- (id)fakeTatsuPayloadPath;
- (id)getValueFromTestPreferencesForKey:(id)key;
- (id)initialBuddySetupComplete;
- (id)isActivated;
- (id)isOnLockScreen;
- (id)iseTrustCertName;
- (id)iseTrustCertPaths;
- (id)nfcIdleTime;
- (id)pandoraKeyServerURL;
- (id)softwareUpdateAssetPath;
- (id)softwareUpdateBrainAssetPath;
- (id)softwareUpdateBrainXMLPath;
- (id)softwareUpdateXMLPath;
- (id)statusServerHostAddress;
- (id)statusServerPortNumber;
- (id)tcpUnicastAddress;
- (id)tcpUnicastPort;
- (id)usePlistForDeviceIKM;
- (id)useScriptForDeviceKey;
- (id)wifiPassword;
- (id)wifiSSID;
- (unint64_t)standbyIdleTimeout;
@end

@implementation MIBUTestPreferences

+ (id)sharedInstance
{
  if (qword_1000B83D8 != -1)
  {
    sub_10005863C();
  }

  v3 = qword_1000B83D0;

  return v3;
}

- (BOOL)useLiveTatsu
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"UseLiveTatsu"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)fakeTatsuPayloadPath
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"FakeTatsuPayloadPath"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)useAppleConnect
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"UseAppleConnect"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)useSrNmForDeviceKey
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"UseSrNmForDeviceKey"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)useScriptForDeviceKey
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"UseScriptForDeviceKey"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)usePlistForDeviceIKM
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"UsePlistForDeviceIKM"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)pandoraKeyServerURL
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"PandoraKeyServerURL"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)assetPath
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"AssetPath"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)tcpUnicastAddress
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"TCPUnicastAddress"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)tcpUnicastPort
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"TCPUnicastPort"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)enablePipelineMode
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"EnablePipelineMode"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)skipDeviceIdentityVerification
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"SkipDeviceIdentityVerification"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)disableNarrativeAuthentication
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"DisableNarrativeAuthentication"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)nfcIdleTime
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"NFCIdleTime"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)isActivated
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"IsActivated"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)factorySUCertExist
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"FactorySUCertExist"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)inBoxUpdateMode
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"InBoxUpdateMode"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)initialBuddySetupComplete
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"InitialBuddySetupComplete"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)isOnLockScreen
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"IsOnLockScreen"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)factorySUCertPath
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"FactorySUCertPath"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)factorySUKeyPath
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"FactorySUKeyPath"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)softwareUpdateBrainXMLPath
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"SoftwareUpdateBrainXMLPath"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)softwareUpdateBrainAssetPath
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"SoftwareUpdateBrainAssetPath"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)softwareUpdateXMLPath
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"SoftwareUpdateXMLPath"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)softwareUpdateAssetPath
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"SoftwareUpdateAssetPath"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)factorySUKeyIsSEP
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"FactorySUKeyIsSEP"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)iseTrustCertPaths
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"ISETrustCertPaths"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)iseTrustCertName
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"ISETrustCertName"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)usePandoraNonProdCerts
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"UsePandoraNonProdCerts"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)wifiSSID
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"WiFiSSID"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)wifiPassword
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"WiFiPassword"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)skipWiFiAssociation
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"SkipWiFiAssociation"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)skipDaemonDisable
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"SkipDaemonDisable"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)skipCertDeletion
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"SkipCertDeletion"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)statusServerHostAddress
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"StatusServerHostAddress"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)statusServerPortNumber
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"StatusServerPortNumber"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)usePythonLoopbackServer
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"UsePythonLoopbackServer"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)enterLPMAfterUpdateComplete
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"EnterLPMAfterUpdateComplete"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (unint64_t)standbyIdleTimeout
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"StandbyIdleTimeout"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (id)getValueFromTestPreferencesForKey:(id)key
{
  keyCopy = key;
  if (!CFPreferencesSynchronize(@"com.apple.MobileInBoxUpdater.test", kCFPreferencesAnyUser, kCFPreferencesCurrentHost))
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100058650();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100058664(v4);
    }
  }

  v5 = CFPreferencesCopyValue(keyCopy, @"com.apple.MobileInBoxUpdater.test", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);

  return v5;
}

@end