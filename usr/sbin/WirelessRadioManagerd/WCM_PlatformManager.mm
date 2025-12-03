@interface WCM_PlatformManager
- ($F24F406B2B787EFB06265DBA3D28CBD5)wcmCellularCoexB40ARange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)wcmCellularCoexB40BRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)wcmCellularCoexB41A1Range;
- ($F24F406B2B787EFB06265DBA3D28CBD5)wcmCellularCoexB41A2Range;
- ($F24F406B2B787EFB06265DBA3D28CBD5)wcmCellularCoexB7DLRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)wcmCellularCoexB7ULRange;
- (BOOL)fetchWRMdebugPlistForceTDD;
- (BOOL)isBand40ACoexActiveForULFreq:(double)freq ulBW:(double)w dlFreq:(double)dlFreq dlBW:(double)bW;
- (BOOL)isBand40BCoexActiveForULFreq:(double)freq ulBW:(double)w dlFreq:(double)dlFreq dlBW:(double)bW;
- (BOOL)isBand41A1CoexActiveForULFreq:(double)freq ulBW:(double)w dlFreq:(double)dlFreq dlBW:(double)bW;
- (BOOL)isBand41A2CoexActiveForULFreq:(double)freq ulBW:(double)w dlFreq:(double)dlFreq dlBW:(double)bW;
- (BOOL)isBand7CoexActiveForULFreq:(double)freq ulBW:(double)w dlFreq:(double)dlFreq dlBW:(double)bW;
- (BOOL)isJapanSKU;
- (BOOL)isRowSKUB;
- (BOOL)isRowSKUS;
- (NSMutableSet)wcmCoexFeatures;
- (WCM_PlatformManager)init;
- (unint64_t)getBand40AUlCenterFreq;
- (unint64_t)getBand40BUlCenterFreq;
- (unint64_t)getBand41A1UlCenterFreq;
- (unint64_t)getBand41A2UlCenterFreq;
- (void)configureSupportedPlatform;
- (void)dealloc;
- (void)initPlatformPolicies;
- (void)loadBTConfigurablePolicy:(id)policy;
- (void)loadCellularConfigurablePolicy:(id)policy;
- (void)loadCoexConfigurablePolicy;
- (void)loadConfigurableActiveFeature:(id)feature;
- (void)loadWiFiConfigurablePolicy:(id)policy;
- (void)printPlatformConfig;
- (void)setPlatform;
- (void)setSKU;
@end

@implementation WCM_PlatformManager

- ($F24F406B2B787EFB06265DBA3D28CBD5)wcmCellularCoexB7DLRange
{
  begin = self->_wcmCellularCoexB7DLRange._begin;
  length = self->_wcmCellularCoexB7DLRange._length;
  result.var1 = length;
  result.var0 = begin;
  return result;
}

- (WCM_PlatformManager)init
{
  [WCM_Logging logLevel:3 message:@"Init Platform"];
  v6.receiver = self;
  v6.super_class = WCM_PlatformManager;
  v3 = [(WCM_PlatformManager *)&v6 init];
  v4 = v3;
  if (v3)
  {
    [(WCM_PlatformManager *)v3 setPlatform];
    [(WCM_PlatformManager *)v4 initPlatformPolicies];
  }

  return v4;
}

- (void)dealloc
{
  [WCM_Logging logLevel:3 message:@"Dealloc Platform"];

  v3.receiver = self;
  v3.super_class = WCM_PlatformManager;
  [(WCM_PlatformManager *)&v3 dealloc];
}

- (NSMutableSet)wcmCoexFeatures
{
  result = self->_wcmCoexFeatures;
  if (!result)
  {
    result = objc_alloc_init(NSMutableSet);
    self->_wcmCoexFeatures = result;
  }

  return result;
}

- (void)initPlatformPolicies
{
  +[WCM_Logging initSettingsFromPreferences];
  [(WCM_PlatformManager *)self setLoggingToFileEnabled:+[WCM_Logging getLogToFile]];
  [WCM_Logging logLevel:1 message:@"WRM Version: %s", ""];
  [WCM_Logging logLevel:1 message:@"Init Platform Policies for wrmPlatformId(%u)", [(WCM_PlatformManager *)self wrmPlatformId]];
  [(WCM_PlatformManager *)self setForceWiFiBTCoexToTDD:[(WCM_PlatformManager *)self fetchWRMdebugPlistForceTDD]];
  if ([(WCM_PlatformManager *)self forceWiFiBTCoexToTDD])
  {
    [WCM_Logging logLevel:2 message:@"Forcing WiFi/BT coex to TDD ? (%d)", [(WCM_PlatformManager *)self forceWiFiBTCoexToTDD]];
  }

  [(WCM_PlatformManager *)self loadStaticPolicyFor:[(WCM_PlatformManager *)self wrmPlatformId]];
  [(WCM_PlatformManager *)self configureSupportedPlatform];
  value = 0;
  v3 = CFPreferencesCopyAppValue(@"ConfigInfo", @"com.apple.WirelessRadioManager.debug");
  if (v3 && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(v3)) && CFDictionaryGetValueIfPresent(v3, @"ConfigEnable", &value) && (v5 = CFStringGetTypeID(), v5 == CFGetTypeID(value)))
  {
    if (CFStringCompare(@"TRUE", value, 0) == kCFCompareEqualTo)
    {
      [(WCM_PlatformManager *)self loadCoexConfigurablePolicy];
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"ConfigInfo not Found"];
  }

  if ([(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] containsObject:@"DisableiRAT"])
  {
    [(WCM_PlatformManager *)self setIRATSupported:0];
  }

  if ([(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] containsObject:@"LTEScanProtection"])
  {
    [(WCM_PlatformManager *)self setWcmCellularWCI2PlatformPolicyBitmap:[(WCM_PlatformManager *)self wcmCellularWCI2PlatformPolicyBitmap]| 0x400];
  }

  if ([(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] containsObject:@"AntennaSelectionCoex"])
  {
    [(WCM_PlatformManager *)self setWcmCellularWCI2PlatformPolicyBitmap:[(WCM_PlatformManager *)self wcmCellularWCI2PlatformPolicyBitmap]| 0x800];
  }

  if ([(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] containsObject:@"CellularWatchFcmBcmAntennaReport"])
  {
    [(WCM_PlatformManager *)self setWcmCellularWCI2PlatformPolicyBitmap:[(WCM_PlatformManager *)self wcmCellularWCI2PlatformPolicyBitmap]| 0x800];
  }

  if (([(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] containsObject:@"AntennaSelectionV2Coex"]& 1) != 0 || [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] containsObject:@"AntennaSelectionV1_1Coex"])
  {
    [(WCM_PlatformManager *)self setWcmCellularWCI2PlatformPolicyBitmap:[(WCM_PlatformManager *)self wcmCellularWCI2PlatformPolicyBitmap]| 0x800];
    [(WCM_PlatformManager *)self setWcmCellularWCI2PlatformPolicyBitmap:[(WCM_PlatformManager *)self wcmCellularWCI2PlatformPolicyBitmap]| 0x10000];
  }

  if ([(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] containsObject:@"WCI2Type7ShortBit"])
  {
    [(WCM_PlatformManager *)self setWcmCellularWCI2PlatformPolicyBitmap:[(WCM_PlatformManager *)self wcmCellularWCI2PlatformPolicyBitmap]| 0x4000];
  }

  if ([(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] containsObject:@"ProtectWiFiRanging"])
  {
    [(WCM_PlatformManager *)self setWcmCellularWCI2PlatformPolicyBitmap:[(WCM_PlatformManager *)self wcmCellularWCI2PlatformPolicyBitmap]| 2];
  }

  if ([(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] containsObject:@"LTELAACoexSupport"])
  {
    [(WCM_PlatformManager *)self setWcmCellularWCI2PlatformPolicyBitmap:[(WCM_PlatformManager *)self wcmCellularWCI2PlatformPolicyBitmap]| 0x20000];
    if ([(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] containsObject:@"RCU1Support"])
    {
      if (([(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] containsObject:@"Bb20PolicyConversion"]& 1) != 0 || [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] containsObject:@"BB_POLICY_CONFIG_SUPPORT"])
      {
        [(WCM_PlatformManager *)self setWcmCellularWCI2PlatformPolicyBitmap:[(WCM_PlatformManager *)self wcmCellularWCI2PlatformPolicyBitmap]| 0x40000];
      }
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  [(WCM_PlatformManager *)self printPlatformConfig];
}

- (void)printPlatformConfig
{
  [WCM_Logging logLevel:4 message:@"Platform Coex Features: %@", [(WCM_PlatformManager *)self wcmCoexFeatures]];
  [WCM_Logging logLevel:4 message:@"Cellular Configuration"];
  [WCM_Logging logLevel:4 message:@"    Max TxPower High: %@", [(WCM_PlatformManager *)self wcmCellularWCI2ModeLTEMaxTxPowerHigh]];
  [WCM_Logging logLevel:4 message:@"    Max TxPower Low: %@", [(WCM_PlatformManager *)self wcmCellularWCI2ModeLTEMaxTxPowerLow]];
  [WCM_Logging logLevel:4 message:@"    Max LTE Denial: %@", [(WCM_PlatformManager *)self wcmCellularWCI2ModeLTETxDenial]];
  [WCM_Logging logLevel:4 message:@"    Max Allowed Frame Denials :%@", [(WCM_PlatformManager *)self wcmCellularWCI2ModeMaxAllowedFrameDenials]];
  [WCM_Logging logLevel:4 message:@"    Frame Denial Window :%@", [(WCM_PlatformManager *)self wcmCellularWCI2ModeFrameDenialWindow]];
  [WCM_Logging logLevel:4 message:@"    Tx Pwr Threshold for Adv Tx :%@", [(WCM_PlatformManager *)self wcmCellularWCI2ModeTxPowerThresholdAdvTx]];
  [WCM_Logging logLevel:4 message:@"    Tx Rb Threshold for Adv Tx :%@", [(WCM_PlatformManager *)self wcmCellularWCI2ModeRBThresholdAdvTx]];
  [WCM_Logging logLevel:4 message:@"    LTE Scan Protection Frequencies: %@", [(WCM_PlatformManager *)self wcmCellularScanProtectionCellFrequencies]];
  [WCM_Logging logLevel:4 message:@"    Scan Protection Channels: %@", [(WCM_PlatformManager *)self wcmCellularScanProtectionWiFiChannels]];
  [WCM_Logging logLevel:4 message:@"    Scan Protection Max Duration: %@", [(WCM_PlatformManager *)self wcmCellularScanProtectionWiFiMaxDuration]];
  [WCM_Logging logLevel:4 message:@"    LTE Scan Protection Frequencies for BT: %@", [(WCM_PlatformManager *)self wcmCellularScanProtectionCellFrequenciesforBT]];
  [WCM_Logging logLevel:4 message:@"WiFi Configuration"];
  [WCM_Logging logLevel:4 message:@"    Block Listed Channels on B7  : %@", [(WCM_PlatformManager *)self wcmWiFiB7BlocklistChannels]];
  [WCM_Logging logLevel:4 message:@"    WCI2 Enabled Channels on B7  : %@", [(WCM_PlatformManager *)self wcmWiFiB7WCI2EnabledChannels]];
  [WCM_Logging logLevel:4 message:@"    Block Listed Channels on B40A: %@", [(WCM_PlatformManager *)self wcmWiFiB40ABlocklistChannels]];
  [WCM_Logging logLevel:4 message:@"    WCI2 Enabled Channels on B40A: %@", [(WCM_PlatformManager *)self wcmWiFiB40AWCI2EnabledChannels]];
  [WCM_Logging logLevel:4 message:@"    Block Listed Channels on B40B: %@", [(WCM_PlatformManager *)self wcmWiFiB40BBlocklistChannels]];
  [WCM_Logging logLevel:4 message:@"    WCI2 Enabled Channels on B40B: %@", [(WCM_PlatformManager *)self wcmWiFiB40BWCI2EnabledChannels]];
  [WCM_Logging logLevel:4 message:@"    Block Listed Channels on B41A1: %@", [(WCM_PlatformManager *)self wcmWiFiB41A1BlocklistChannels]];
  [WCM_Logging logLevel:4 message:@"    WCI2 Enabled Channels on B41A1: %@", [(WCM_PlatformManager *)self wcmWiFiB41A1WCI2EnabledChannels]];
  [WCM_Logging logLevel:4 message:@"    Block Listed Channels on B41A2: %@", [(WCM_PlatformManager *)self wcmWiFiB41A2BlocklistChannels]];
  [WCM_Logging logLevel:4 message:@"    WCI2 Enabled Channels on B41A2: %@", [(WCM_PlatformManager *)self wcmWiFiB41A2WCI2EnabledChannels]];
  [WCM_Logging logLevel:4 message:@"    Rx Pri Threshold Low : %@", [(WCM_PlatformManager *)self wcmWiFiPriThresholdLow]];
  [WCM_Logging logLevel:4 message:@"    Rx Pri Threshold Med : %@", [(WCM_PlatformManager *)self wcmWiFiPriThresholdMed]];
  [WCM_Logging logLevel:4 message:@"    Rx Pri Threshold High: %@", [(WCM_PlatformManager *)self wcmWiFiPriThresholdHigh]];
  [WCM_Logging logLevel:4 message:@"    Antenna Non-Coex Config     : %@", [(WCM_PlatformManager *)self wcmWiFiAntennaConfigDefault]];
  [WCM_Logging logLevel:4 message:@"    Antenna Non-Coex Cell Policy: %@", [(WCM_PlatformManager *)self wcmWiFiAntennaCellPolicyDefault]];
  [WCM_Logging logLevel:4 message:@"    Antenna Coex Config         : %@", [(WCM_PlatformManager *)self wcmWiFiAntennaConfig]];
  [WCM_Logging logLevel:4 message:@"    Antenna Coex Cell Policy    : %@", [(WCM_PlatformManager *)self wcmWiFiAntennaCellPolicy]];
  [WCM_Logging logLevel:4 message:@"BT Configuration"];
  [WCM_Logging logLevel:4 message:@"    AFHMap Default : %@", [(WCM_PlatformManager *)self wcmBTAFHMapDefault]];
  [WCM_Logging logLevel:4 message:@"    AFHMap B7   : %@", [(WCM_PlatformManager *)self wcmBTB7AFHMap]];
  [WCM_Logging logLevel:4 message:@"    AFHMap B40A : %@", [(WCM_PlatformManager *)self wcmBTB40AAFHMap]];
  [WCM_Logging logLevel:4 message:@"    AFHMap B40B : %@", [(WCM_PlatformManager *)self wcmBTB40BAFHMap]];
  [WCM_Logging logLevel:4 message:@"    AFHMap B41A1: %@", [(WCM_PlatformManager *)self wcmBTB41A1AFHMap]];
  [WCM_Logging logLevel:4 message:@"    AFHMap B41A2: %@", [(WCM_PlatformManager *)self wcmBTB41A2AFHMap]];
  [WCM_Logging logLevel:4 message:@"    ChannelMap Default : %@", [(WCM_PlatformManager *)self wcmHFBTChannelMapDefault]];
  [WCM_Logging logLevel:4 message:@"    Antenna Blocking Band Default : %@", [(WCM_PlatformManager *)self wcmBTAntBlockEnableBandsDefault]];
  [WCM_Logging logLevel:4 message:@"    Preferred Role : %@", [(WCM_PlatformManager *)self wcmBTPreferredRole]];
  [WCM_Logging logLevel:4 message:@"    Antenna Coex Default     : %@", [(WCM_PlatformManager *)self wcmBTDefaultAntenna]];
  [WCM_Logging logLevel:4 message:@"    Antenna Non-Coex Default : %@", [(WCM_PlatformManager *)self wcmBTDefaultAntennaNonCoex]];
  [WCM_Logging logLevel:4 message:@"    Antenna Coex Config      : %@", [(WCM_PlatformManager *)self wcmBTAntennaConfig]];
  [WCM_Logging logLevel:4 message:@"    Antenna Non-Coex Config  : %@", [(WCM_PlatformManager *)self wcmBTAntennaConfigNonCoex]];
  [WCM_Logging logLevel:4 message:@"    Antenna Blocking Duration  : %@", [(WCM_PlatformManager *)self wcmBTAntBlockDuration]];
}

- (void)loadConfigurableActiveFeature:(id)feature
{
  [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] removeAllObjects];
  if ([objc_msgSend(feature objectForKeyedSubscript:{@"DisableiRAT", "BOOLValue"}])
  {
    [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] addObject:@"DisableiRAT"];
  }

  if ([objc_msgSend(feature objectForKeyedSubscript:{@"LTEScanProtection", "BOOLValue"}])
  {
    [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] addObject:@"LTEScanProtection"];
  }

  if ([objc_msgSend(feature objectForKeyedSubscript:{@"LTECDRXWiFiTimeSharing", "BOOLValue"}])
  {
    [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] addObject:@"LTECDRXWiFiTimeSharing"];
  }

  if ([objc_msgSend(feature objectForKeyedSubscript:{@"AntennaSelectionCoex", "BOOLValue"}])
  {
    [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] addObject:@"AntennaSelectionCoex"];
  }

  if ([objc_msgSend(feature objectForKeyedSubscript:{@"AntennaSelectionV2Coex", "BOOLValue"}])
  {
    [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] addObject:@"AntennaSelectionV2Coex"];
  }

  if ([objc_msgSend(feature objectForKeyedSubscript:{@"AntennaSelectionV1_1Coex", "BOOLValue"}])
  {
    [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] addObject:@"AntennaSelectionV1_1Coex"];
  }

  if ([objc_msgSend(feature objectForKeyedSubscript:{@"WiFiOCLSupport", "BOOLValue"}])
  {
    [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] addObject:@"WiFiOCLSupport"];
  }

  if ([objc_msgSend(feature objectForKeyedSubscript:{@"WiFiAWDWCI2CoexBitmap", "BOOLValue"}])
  {
    [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] addObject:@"WiFiAWDWCI2CoexBitmap"];
  }

  if ([objc_msgSend(feature objectForKeyedSubscript:{@"WCI2Type7ShortBit", "BOOLValue"}])
  {
    [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] addObject:@"WCI2Type7ShortBit"];
  }

  if ([objc_msgSend(feature objectForKeyedSubscript:{@"AntennaTunningForGps", "BOOLValue"}])
  {
    [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] addObject:@"AntennaTunningForGps"];
  }

  if ([objc_msgSend(feature objectForKeyedSubscript:{@"WiFiAWDWCI2CoexBitmap", "BOOLValue"}])
  {
    [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] addObject:@"WiFiAWDWCI2CoexBitmap"];
  }

  if ([objc_msgSend(feature objectForKeyedSubscript:{@"WCI2Type7ShortBit", "BOOLValue"}])
  {
    [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] addObject:@"WCI2Type7ShortBit"];
  }

  if ([objc_msgSend(feature objectForKeyedSubscript:{@"AntennaTunningForGps", "BOOLValue"}])
  {
    [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] addObject:@"AntennaTunningForGps"];
  }

  if ([objc_msgSend(feature objectForKeyedSubscript:{@"ProtectWiFiRanging", "BOOLValue"}])
  {
    [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] addObject:@"ProtectWiFiRanging"];
  }

  v5 = @"WiFiBtProfile";
  if (([objc_msgSend(feature objectForKeyedSubscript:{@"WiFiBtProfile", "BOOLValue"}] & 1) != 0 || (v5 = @"WiFiBt5GProfile", objc_msgSend(objc_msgSend(feature, "objectForKeyedSubscript:", @"WiFiBt5GProfile"), "BOOLValue")))
  {
    [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] addObject:v5];
  }

  if ([objc_msgSend(feature objectForKeyedSubscript:{@"WiFiAntennaFallback", "BOOLValue"}])
  {
    [(NSMutableSet *)[(WCM_PlatformManager *)self wcmCoexFeatures] addObject:@"WiFiAntennaFallback"];
  }

  if ([objc_msgSend(feature objectForKeyedSubscript:{@"Wifi5gChannelMapping", "BOOLValue"}])
  {
    wcmCoexFeatures = [(WCM_PlatformManager *)self wcmCoexFeatures];

    [(NSMutableSet *)wcmCoexFeatures addObject:@"Wifi5gChannelMapping"];
  }
}

- (void)loadCoexConfigurablePolicy
{
  [WCM_Logging logLevel:3 message:@"Loading Coex Configurable Policies", 0, 0];
  v3 = [NSPropertyListSerialization propertyListWithData:sub_10009D018(@"WRMPolicy" options:@"plist") format:2 error:&v10, &v11];
  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:@"CoexPolicy"];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 objectForKeyedSubscript:@"WiFi"];
      if (v6)
      {
        [(WCM_PlatformManager *)self loadWiFiConfigurablePolicy:v6];
      }

      v7 = [v5 objectForKeyedSubscript:@"BT"];
      if (v7)
      {
        [(WCM_PlatformManager *)self loadBTConfigurablePolicy:v7];
      }

      v8 = [v5 objectForKeyedSubscript:@"Cellular"];
      if (v8)
      {
        [(WCM_PlatformManager *)self loadCellularConfigurablePolicy:v8];
      }

      v9 = [v5 objectForKeyedSubscript:@"activeFeatures"];
      if (v9)
      {
        [(WCM_PlatformManager *)self loadConfigurableActiveFeature:v9];
      }
    }

    else
    {
      [WCM_Logging logLevel:3 message:@"No Coex specific config"];
    }

    [(WCM_PlatformManager *)self printPlatformConfig];
  }

  else
  {
    [WCM_Logging logLevel:1 message:@"No Policy found"];
  }
}

- (void)loadWiFiConfigurablePolicy:(id)policy
{
  -[WCM_PlatformManager setWcmWiFiB7BlocklistChannels:](self, "setWcmWiFiB7BlocklistChannels:", [policy objectForKeyedSubscript:@"WCM_WIFI_B7_BLOCKLIST_CHANNELS"]);
  -[WCM_PlatformManager setWcmWiFiB7WCI2EnabledChannels:](self, "setWcmWiFiB7WCI2EnabledChannels:", [policy objectForKeyedSubscript:@"WCM_WIFI_B7_WCI2_ENABLED_CHANNELS"]);
  -[WCM_PlatformManager setWcmWiFiB40ABlocklistChannels:](self, "setWcmWiFiB40ABlocklistChannels:", [policy objectForKeyedSubscript:@"WCM_WIFI_B40A_BLOCKLIST_CHANNELS"]);
  -[WCM_PlatformManager setWcmWiFiB40AWCI2EnabledChannels:](self, "setWcmWiFiB40AWCI2EnabledChannels:", [policy objectForKeyedSubscript:@"WCM_WIFI_B40A_WCI2_ENABLED_CHANNELS"]);
  -[WCM_PlatformManager setWcmWiFiB40BBlocklistChannels:](self, "setWcmWiFiB40BBlocklistChannels:", [policy objectForKeyedSubscript:@"WCM_WIFI_B40B_BLOCKLIST_CHANNELS"]);
  -[WCM_PlatformManager setWcmWiFiB40BWCI2EnabledChannels:](self, "setWcmWiFiB40BWCI2EnabledChannels:", [policy objectForKeyedSubscript:@"WCM_WIFI_B40B_WCI2_ENABLED_CHANNELS"]);
  -[WCM_PlatformManager setWcmWiFiB41A1BlocklistChannels:](self, "setWcmWiFiB41A1BlocklistChannels:", [policy objectForKeyedSubscript:@"WCM_WIFI_B41A1_BLOCKLIST_CHANNELS"]);
  -[WCM_PlatformManager setWcmWiFiB41A1WCI2EnabledChannels:](self, "setWcmWiFiB41A1WCI2EnabledChannels:", [policy objectForKeyedSubscript:@"WCM_WIFI_B41A1_WCI2_ENABLED_CHANNELS"]);
  -[WCM_PlatformManager setWcmWiFiB41A2BlocklistChannels:](self, "setWcmWiFiB41A2BlocklistChannels:", [policy objectForKeyedSubscript:@"WCM_WIFI_B41A2_BLOCKLIST_CHANNELS"]);
  -[WCM_PlatformManager setWcmWiFiB41A2WCI2EnabledChannels:](self, "setWcmWiFiB41A2WCI2EnabledChannels:", [policy objectForKeyedSubscript:@"WCM_WIFI_B41A2_WCI2_ENABLED_CHANNELS"]);
  -[WCM_PlatformManager setWcmWiFiPriThresholdLow:](self, "setWcmWiFiPriThresholdLow:", [policy objectForKeyedSubscript:@"WCM_WIFI_RX_PRI_THRESHOLD_LOW"]);
  -[WCM_PlatformManager setWcmWiFiPriThresholdMed:](self, "setWcmWiFiPriThresholdMed:", [policy objectForKeyedSubscript:@"WCM_WIFI_RX_PRI_THRESHOLD_MED"]);
  v5 = [policy objectForKeyedSubscript:@"WCM_WIFI_RX_PRI_THRESHOLD_HIGH"];

  [(WCM_PlatformManager *)self setWcmWiFiPriThresholdHigh:v5];
}

- (void)loadBTConfigurablePolicy:(id)policy
{
  -[WCM_PlatformManager setWcmBTAFHMapDefault:](self, "setWcmBTAFHMapDefault:", [policy objectForKeyedSubscript:@"WCM_BT_AFHMAP_DEFAULT"]);
  -[WCM_PlatformManager setWcmBTB7AFHMap:](self, "setWcmBTB7AFHMap:", [policy objectForKeyedSubscript:@"WCM_BT_B7_AFHMAP"]);
  -[WCM_PlatformManager setWcmBTB40AAFHMap:](self, "setWcmBTB40AAFHMap:", [policy objectForKeyedSubscript:@"WCM_BT_B40A_AFHMAP"]);
  -[WCM_PlatformManager setWcmBTB40BAFHMap:](self, "setWcmBTB40BAFHMap:", [policy objectForKeyedSubscript:@"WCM_BT_B40B_AFHMAP"]);
  -[WCM_PlatformManager setWcmBTB41A1AFHMap:](self, "setWcmBTB41A1AFHMap:", [policy objectForKeyedSubscript:@"WCM_BT_B41A1_AFHMAP"]);
  -[WCM_PlatformManager setWcmBTB41A2AFHMap:](self, "setWcmBTB41A2AFHMap:", [policy objectForKeyedSubscript:@"WCM_BT_B41A2_AFHMAP"]);
  v5 = [policy objectForKeyedSubscript:@"WCM_BT_PREFERRED_ROLE"];

  [(WCM_PlatformManager *)self setWcmBTPreferredRole:v5];
}

- (void)loadCellularConfigurablePolicy:(id)policy
{
  -[WCM_PlatformManager setWcmCellularWCI2ModePolicy:](self, "setWcmCellularWCI2ModePolicy:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_POLICY"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModePowerThreshold:](self, "setWcmCellularWCI2ModePowerThreshold:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_POWERTHRESHOLD"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModeRBThresholdHigh:](self, "setWcmCellularWCI2ModeRBThresholdHigh:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_RB_THRESHOLD_HIGH"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModeRBThresholdLow:](self, "setWcmCellularWCI2ModeRBThresholdLow:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_RB_THRESHOLD_LOW"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModeLTETxDenial:](self, "setWcmCellularWCI2ModeLTETxDenial:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_LTE_TXDENIAL"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModeAPTTable:](self, "setWcmCellularWCI2ModeAPTTable:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_APTTABLE"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModeControllerTxPowerLimit:](self, "setWcmCellularWCI2ModeControllerTxPowerLimit:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_CONTROLLER_TXPOWERLIMIT"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModeWCI2PowerLimit:](self, "setWcmCellularWCI2ModeWCI2PowerLimit:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_WCI2_POWERLIMIT"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModeLinkPathLossThreshold:](self, "setWcmCellularWCI2ModeLinkPathLossThreshold:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_LINK_PATHLOSSTHRESHOLD"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModeRBFilerAlpha:](self, "setWcmCellularWCI2ModeRBFilerAlpha:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_RB_FILTERALPHA"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModeFilterRBThresholdHigh:](self, "setWcmCellularWCI2ModeFilterRBThresholdHigh:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_FILTER_RBTHRESHOLD_HIGH"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModeFilterRBThresholdLow:](self, "setWcmCellularWCI2ModeFilterRBThresholdLow:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_FILTER_RBTHRESHOLD_LOW"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModeControllerTxPowerLimitTO:](self, "setWcmCellularWCI2ModeControllerTxPowerLimitTO:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_CONTROLLER_TXPOWERLIMIT_TO"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModeWCI2PowerLimitTO:](self, "setWcmCellularWCI2ModeWCI2PowerLimitTO:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_WCI2_POWERLIMIT_TO"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModeMaxAllowedFrameDenials:](self, "setWcmCellularWCI2ModeMaxAllowedFrameDenials:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_MAX_ALLOWED_FRAME_DENIALS"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModeFrameDenialWindow:](self, "setWcmCellularWCI2ModeFrameDenialWindow:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_FRAME_DENIAL_WINDOW"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModeTxPowerThresholdAdvTx:](self, "setWcmCellularWCI2ModeTxPowerThresholdAdvTx:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_TXPOWER_THRESHOLD_ADVANCE_TX"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModeRBThresholdAdvTx:](self, "setWcmCellularWCI2ModeRBThresholdAdvTx:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_WCI2MODE_RB_THRESHOLD_ADVANCE_TX"]);
  -[WCM_PlatformManager setWcmCellularWCI2ModeLTEMaxTxPowerHigh:](self, "setWcmCellularWCI2ModeLTEMaxTxPowerHigh:", [policy objectForKeyedSubscript:@"WCM_CELLULAR_LTE_MAX_TX_POWER_HIGH"]);
  v5 = [policy objectForKeyedSubscript:@"WCM_CELLULAR_LTE_MAX_TX_POWER_LOW"];

  [(WCM_PlatformManager *)self setWcmCellularWCI2ModeLTEMaxTxPowerLow:v5];
}

- (void)configureSupportedPlatform
{
  [(WCM_PlatformManager *)self wrmPlatformId];
  [(WCM_PlatformManager *)self setCoexSupported:?];

  [(WCM_PlatformManager *)self setIRATSupported:1];
}

- (BOOL)isBand40ACoexActiveForULFreq:(double)freq ulBW:(double)w dlFreq:(double)dlFreq dlBW:(double)bW
{
  if (freq == 0.0 || w == 0.0)
  {
    if (dlFreq == 0.0 || bW == 0.0)
    {
      return 0;
    }

    v6 = bW * 0.5 + dlFreq;
  }

  else
  {
    v6 = w * 0.5 + freq;
  }

  [(WCM_PlatformManager *)self wcmCellularCoexB40ARange];
  v9 = v7 + v8;
  return v7 <= v6 && v9 >= v6;
}

- (BOOL)isBand40BCoexActiveForULFreq:(double)freq ulBW:(double)w dlFreq:(double)dlFreq dlBW:(double)bW
{
  if (freq == 0.0 || w == 0.0)
  {
    if (dlFreq == 0.0 || bW == 0.0)
    {
      return 0;
    }

    v6 = bW * 0.5 + dlFreq;
  }

  else
  {
    v6 = w * 0.5 + freq;
  }

  [(WCM_PlatformManager *)self wcmCellularCoexB40BRange];
  v9 = v7 + v8;
  return v7 <= v6 && v9 >= v6;
}

- (BOOL)isBand41A1CoexActiveForULFreq:(double)freq ulBW:(double)w dlFreq:(double)dlFreq dlBW:(double)bW
{
  if (freq == 0.0 || w == 0.0)
  {
    if (dlFreq == 0.0 || bW == 0.0)
    {
      return 0;
    }

    v6 = dlFreq + bW * -0.5;
  }

  else
  {
    v6 = freq + w * -0.5;
  }

  [(WCM_PlatformManager *)self wcmCellularCoexB41A1Range];
  v9 = v7 + v8;
  return v7 <= v6 && v9 >= v6;
}

- (BOOL)isBand41A2CoexActiveForULFreq:(double)freq ulBW:(double)w dlFreq:(double)dlFreq dlBW:(double)bW
{
  if (freq == 0.0 || w == 0.0)
  {
    if (dlFreq == 0.0 || bW == 0.0)
    {
      return 0;
    }

    v6 = dlFreq + bW * -0.5;
  }

  else
  {
    v6 = freq + w * -0.5;
  }

  [(WCM_PlatformManager *)self wcmCellularCoexB41A2Range];
  v9 = v7 + v8;
  return v7 <= v6 && v9 >= v6;
}

- (BOOL)isBand7CoexActiveForULFreq:(double)freq ulBW:(double)w dlFreq:(double)dlFreq dlBW:(double)bW
{
  if (freq == 0.0 || w == 0.0)
  {
    if (dlFreq == 0.0 || bW == 0.0)
    {
      return 0;
    }

    v6 = dlFreq + bW * -0.5;
    [(WCM_PlatformManager *)self wcmCellularCoexB7DLRange];
  }

  else
  {
    v6 = freq + w * -0.5;
    [(WCM_PlatformManager *)self wcmCellularCoexB7ULRange];
  }

  v9 = v7 + v8;
  return v7 <= v6 && v9 >= v6;
}

- (unint64_t)getBand40AUlCenterFreq
{
  [(WCM_PlatformManager *)self wcmCellularCoexB40ARange];
  v4 = v3;
  [(WCM_PlatformManager *)self wcmCellularCoexB40ARange];
  return (v4 + v5 * 0.5);
}

- (unint64_t)getBand40BUlCenterFreq
{
  [(WCM_PlatformManager *)self wcmCellularCoexB40BRange];
  v4 = v3;
  [(WCM_PlatformManager *)self wcmCellularCoexB40BRange];
  return (v4 + v5 * 0.5);
}

- (unint64_t)getBand41A1UlCenterFreq
{
  [(WCM_PlatformManager *)self wcmCellularCoexB41A1Range];
  v4 = v3;
  [(WCM_PlatformManager *)self wcmCellularCoexB41A1Range];
  return (v4 + v5 * 0.5);
}

- (unint64_t)getBand41A2UlCenterFreq
{
  [(WCM_PlatformManager *)self wcmCellularCoexB41A2Range];
  v4 = v3;
  [(WCM_PlatformManager *)self wcmCellularCoexB41A2Range];
  return (v4 + v5 * 0.5);
}

- (BOOL)fetchWRMdebugPlistForceTDD
{
  v2 = CFPreferencesCopyAppValue(@"ForceTDD", @"com.apple.WirelessRadioManager.debug");
  if (v2)
  {
    v3 = v2;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      value = 0;
      if (CFDictionaryGetValueIfPresent(v3, @"ForceWiFiBTCoexModeToTDD", &value))
      {
        v5 = CFStringCompare(@"TRUE", value, 0) == kCFCompareEqualTo;
        v6 = "FALSE";
        if (v5)
        {
          v6 = "TRUE";
        }

        [WCM_Logging logLevel:3 message:@"In fetchWRMdebugPlistForceTDD: Reading value %s", v6];
        goto LABEL_11;
      }

      v7 = @"In fetchWRMdebugPlistForceTDD: Reading value FAILED";
    }

    else
    {
      v7 = @"In fetchWRMdebugPlistForceTDD: dict does not exist";
    }

    [WCM_Logging logLevel:3 message:v7];
    v5 = 0;
LABEL_11:
    CFRelease(v3);
    return v5;
  }

  [WCM_Logging logLevel:3 message:@"In fetchWRMdebugPlistForceTDD: dict does not exist"];
  return 0;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)wcmCellularCoexB7ULRange
{
  begin = self->_wcmCellularCoexB7ULRange._begin;
  length = self->_wcmCellularCoexB7ULRange._length;
  result.var1 = length;
  result.var0 = begin;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)wcmCellularCoexB40ARange
{
  begin = self->_wcmCellularCoexB40ARange._begin;
  length = self->_wcmCellularCoexB40ARange._length;
  result.var1 = length;
  result.var0 = begin;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)wcmCellularCoexB40BRange
{
  begin = self->_wcmCellularCoexB40BRange._begin;
  length = self->_wcmCellularCoexB40BRange._length;
  result.var1 = length;
  result.var0 = begin;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)wcmCellularCoexB41A1Range
{
  begin = self->_wcmCellularCoexB41A1Range._begin;
  length = self->_wcmCellularCoexB41A1Range._length;
  result.var1 = length;
  result.var0 = begin;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)wcmCellularCoexB41A2Range
{
  begin = self->_wcmCellularCoexB41A2Range._begin;
  length = self->_wcmCellularCoexB41A2Range._length;
  result.var1 = length;
  result.var0 = begin;
  return result;
}

- (void)setSKU
{
  [(WCM_PlatformManager *)self setWrmSku:8];
  uTF8String = [MGCopyAnswer() UTF8String];
  if (!uTF8String)
  {
    return;
  }

  v4 = *uTF8String;
  if (v4 <= 0x41)
  {
    if (!*uTF8String)
    {
      return;
    }

    if (v4 == 65)
    {
      v5 = 1;
      v6 = @"Variant : US SKU\n";
      goto LABEL_14;
    }

LABEL_13:
    v5 = 8;
    v6 = @"Unknown SKU\n";
    goto LABEL_14;
  }

  if (v4 == 68)
  {
    v5 = 4;
    v6 = @"Variant : CHINA SKU\n";
    goto LABEL_14;
  }

  if (v4 == 67)
  {
    v5 = 3;
    v6 = @"Variant : ROW SKU\n";
    goto LABEL_14;
  }

  if (v4 != 66)
  {
    goto LABEL_13;
  }

  v5 = 2;
  v6 = @"Variant : WW SKU\n";
LABEL_14:
  [WCM_Logging logLevel:3 message:v6];

  [(WCM_PlatformManager *)self setWrmSku:v5];
}

- (void)setPlatform
{
  v3 = MGGetProductType();
  [(WCM_PlatformManager *)self setWrmPlatformId:1000];
  [(WCM_PlatformManager *)self setWrmPlatformAntBlockPowerLimitPlistFile:0];
  if (v3 > 2236272847)
  {
    if (v3 > 3196158496)
    {
      if (v3 <= 3677894690)
      {
        if (v3 > 3564012491)
        {
          if (v3 <= 3599094682)
          {
            if (v3 > 3585085678)
            {
              if (v3 == 3585085679)
              {
                selfCopy115 = self;
                v5 = 14;
              }

              else
              {
                if (v3 != 3591055299)
                {
                  goto LABEL_308;
                }

                selfCopy115 = self;
                v5 = 59;
              }
            }

            else if (v3 == 3564012492)
            {
              selfCopy115 = self;
              v5 = 267;
            }

            else
            {
              if (v3 != 3571532206)
              {
                goto LABEL_308;
              }

              selfCopy115 = self;
              v5 = 183;
            }

            goto LABEL_307;
          }

          if (v3 > 3663011140)
          {
            if (v3 == 3663011141)
            {
              selfCopy115 = self;
              v5 = 230;
            }

            else
            {
              if (v3 != 3667751753)
              {
                goto LABEL_308;
              }

              selfCopy115 = self;
              v5 = 175;
            }

            goto LABEL_307;
          }

          if (v3 == 3599094683)
          {
            selfCopy115 = self;
            v5 = 134;
            goto LABEL_307;
          }

          if (v3 != 3636345305)
          {
            goto LABEL_308;
          }

          [(WCM_PlatformManager *)self setWrmPlatformId:128];
        }

        else
        {
          if (v3 > 3361025852)
          {
            if (v3 > 3455223060)
            {
              if (v3 == 3455223061)
              {
                selfCopy115 = self;
                v5 = 142;
              }

              else
              {
                if (v3 != 3540156652)
                {
                  goto LABEL_308;
                }

                selfCopy115 = self;
                v5 = 146;
              }
            }

            else if (v3 == 3361025853)
            {
              selfCopy115 = self;
              v5 = 156;
            }

            else
            {
              if (v3 != 3397214291)
              {
                goto LABEL_308;
              }

              selfCopy115 = self;
              v5 = 124;
            }

            goto LABEL_307;
          }

          if (v3 > 3228373940)
          {
            if (v3 == 3228373941)
            {
              selfCopy115 = self;
              v5 = 153;
            }

            else
            {
              if (v3 != 3241053352)
              {
                goto LABEL_308;
              }

              selfCopy115 = self;
              v5 = 173;
            }

            goto LABEL_307;
          }

          if (v3 != 3196158497)
          {
            if (v3 != 3215673114)
            {
              goto LABEL_308;
            }

            selfCopy115 = self;
            v5 = 125;
            goto LABEL_307;
          }
        }

        goto LABEL_159;
      }

      if (v3 > 3839750254)
      {
        if (v3 > 4068102501)
        {
          if (v3 > 4201643248)
          {
            if (v3 == 4201643249)
            {
              selfCopy115 = self;
              v5 = 12;
            }

            else
            {
              if (v3 != 4242862982)
              {
                goto LABEL_308;
              }

              selfCopy115 = self;
              v5 = 126;
            }
          }

          else if (v3 == 4068102502)
          {
            selfCopy115 = self;
            v5 = 265;
          }

          else
          {
            if (v3 != 4184216061)
            {
              goto LABEL_308;
            }

            selfCopy115 = self;
            v5 = 176;
          }
        }

        else if (v3 > 3867318490)
        {
          if (v3 == 3867318491)
          {
            selfCopy115 = self;
            v5 = 242;
          }

          else
          {
            if (v3 != 3885279870)
            {
              goto LABEL_308;
            }

            selfCopy115 = self;
            v5 = 8;
          }
        }

        else if (v3 == 3839750255)
        {
          selfCopy115 = self;
          v5 = 262;
        }

        else
        {
          if (v3 != 3863625342)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 135;
        }

        goto LABEL_307;
      }

      if (v3 <= 3767261005)
      {
        if (v3 > 3711192743)
        {
          if (v3 == 3711192744)
          {
            selfCopy115 = self;
            v5 = 141;
          }

          else
          {
            if (v3 != 3742999858)
            {
              goto LABEL_308;
            }

            selfCopy115 = self;
            v5 = 229;
          }
        }

        else if (v3 == 3677894691)
        {
          selfCopy115 = self;
          v5 = 163;
        }

        else
        {
          if (v3 != 3700458387)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 167;
        }

        goto LABEL_307;
      }

      if (v3 > 3819635029)
      {
        if (v3 == 3819635030)
        {
          selfCopy115 = self;
          v5 = 227;
        }

        else
        {
          if (v3 != 3825599860)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 51;
        }

        goto LABEL_307;
      }

      if (v3 != 3767261006)
      {
        if (v3 != 3801472101)
        {
          goto LABEL_308;
        }

LABEL_248:
        selfCopy115 = self;
        v5 = 131;
        goto LABEL_307;
      }

LABEL_142:
      selfCopy115 = self;
      v5 = 223;
LABEL_307:
      [(WCM_PlatformManager *)selfCopy115 setWrmPlatformId:v5];
      goto LABEL_308;
    }

    if (v3 <= 2722529671)
    {
      if (v3 <= 2619317133)
      {
        if (v3 > 2458172801)
        {
          if (v3 > 2516717267)
          {
            if (v3 == 2516717268)
            {
              selfCopy115 = self;
              v5 = 123;
            }

            else
            {
              if (v3 != 2566016329)
              {
                goto LABEL_308;
              }

              selfCopy115 = self;
              v5 = 165;
            }
          }

          else if (v3 == 2458172802)
          {
            selfCopy115 = self;
            v5 = 128;
          }

          else
          {
            if (v3 != 2487868872)
            {
              goto LABEL_308;
            }

            selfCopy115 = self;
            v5 = 174;
          }

          goto LABEL_307;
        }

        if (v3 != 2236272848)
        {
          if (v3 == 2309863438)
          {
            selfCopy115 = self;
            v5 = 16;
          }

          else
          {
            if (v3 != 2390434178)
            {
              goto LABEL_308;
            }

            selfCopy115 = self;
            v5 = 235;
          }

          goto LABEL_307;
        }

LABEL_159:
        selfCopy115 = self;
        v5 = 129;
        goto LABEL_307;
      }

      if (v3 > 2634105756)
      {
        if (v3 > 2673319455)
        {
          if (v3 == 2673319456)
          {
            selfCopy115 = self;
            v5 = 140;
          }

          else
          {
            if (v3 != 2688879999)
            {
              goto LABEL_308;
            }

            selfCopy115 = self;
            v5 = 22;
          }
        }

        else if (v3 == 2634105757)
        {
          selfCopy115 = self;
          v5 = 164;
        }

        else
        {
          if (v3 != 2644487444)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 145;
        }

        goto LABEL_307;
      }

      if (v3 <= 2625074842)
      {
        if (v3 == 2619317134)
        {
          selfCopy115 = self;
          v5 = 171;
        }

        else
        {
          if (v3 != 2622433984)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 162;
        }

        goto LABEL_307;
      }

      if (v3 == 2625074843)
      {
        selfCopy115 = self;
        v5 = 241;
        goto LABEL_307;
      }

      v7 = 2628394914;
LABEL_203:
      if (v3 != v7)
      {
        goto LABEL_308;
      }

      selfCopy115 = self;
      v5 = 151;
      goto LABEL_307;
    }

    if (v3 <= 2979575959)
    {
      if (v3 > 2940697644)
      {
        if (v3 > 2943112656)
        {
          if (v3 == 2943112657)
          {
            selfCopy115 = self;
            v5 = 225;
          }

          else
          {
            if (v3 != 2959111092)
            {
              goto LABEL_308;
            }

            selfCopy115 = self;
            v5 = 166;
          }
        }

        else if (v3 == 2940697645)
        {
          selfCopy115 = self;
          v5 = 21;
        }

        else
        {
          if (v3 != 2941181571)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 53;
        }
      }

      else if (v3 > 2795618602)
      {
        if (v3 == 2795618603)
        {
          selfCopy115 = self;
          v5 = 56;
        }

        else
        {
          if (v3 != 2903084588)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 143;
        }
      }

      else if (v3 == 2722529672)
      {
        selfCopy115 = self;
        v5 = 4;
      }

      else
      {
        if (v3 != 2793418701)
        {
          goto LABEL_308;
        }

        selfCopy115 = self;
        v5 = 50;
      }

      goto LABEL_307;
    }

    if (v3 <= 3101941569)
    {
      if (v3 <= 3048527335)
      {
        if (v3 == 2979575960)
        {
          selfCopy115 = self;
          v5 = 221;
        }

        else
        {
          if (v3 != 3001488778)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 11;
        }

        goto LABEL_307;
      }

      if (v3 == 3048527336)
      {
        selfCopy115 = self;
        v5 = 58;
        goto LABEL_307;
      }

      v7 = 3054476161;
      goto LABEL_203;
    }

    if (v3 > 3143587591)
    {
      if (v3 == 3143587592)
      {
        selfCopy115 = self;
        v5 = 264;
      }

      else
      {
        if (v3 != 3184375231)
        {
          goto LABEL_308;
        }

        selfCopy115 = self;
        v5 = 63;
      }

      goto LABEL_307;
    }

    if (v3 != 3101941570)
    {
      if (v3 != 3113954710)
      {
        goto LABEL_308;
      }

      selfCopy115 = self;
      v5 = 168;
      goto LABEL_307;
    }

LABEL_241:
    selfCopy115 = self;
    v5 = 147;
    goto LABEL_307;
  }

  if (v3 <= 1309571157)
  {
    if (v3 <= 689804741)
    {
      if (v3 <= 313020435)
      {
        if (v3 <= 157833460)
        {
          switch(v3)
          {
            case -1:
              [WCM_Logging logLevel:3 message:@"Unknown Product\n"];
              goto LABEL_308;
            case 88647037:
              selfCopy115 = self;
              v5 = 120;
              break;
            case 133314240:
              selfCopy115 = self;
              v5 = 52;
              break;
            default:
              goto LABEL_308;
          }
        }

        else if (v3 > 240711086)
        {
          if (v3 == 240711087)
          {
            selfCopy115 = self;
            v5 = 180;
          }

          else
          {
            if (v3 != 248718555)
            {
              goto LABEL_308;
            }

            selfCopy115 = self;
            v5 = 233;
          }
        }

        else if (v3 == 157833461)
        {
          selfCopy115 = self;
          v5 = 122;
        }

        else
        {
          if (v3 != 185765807)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 178;
        }

        goto LABEL_307;
      }

      if (v3 > 425046864)
      {
        if (v3 > 574536382)
        {
          if (v3 == 574536383)
          {
            selfCopy115 = self;
            v5 = 55;
          }

          else
          {
            if (v3 != 676119128)
            {
              goto LABEL_308;
            }

            selfCopy115 = self;
            v5 = 238;
          }
        }

        else if (v3 == 425046865)
        {
          selfCopy115 = self;
          v5 = 231;
        }

        else
        {
          if (v3 != 555503454)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 172;
        }

        goto LABEL_307;
      }

      if (v3 <= 341800272)
      {
        if (v3 == 313020436)
        {
          selfCopy115 = self;
          v5 = 169;
        }

        else
        {
          if (v3 != 330877086)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 57;
        }

        goto LABEL_307;
      }

      if (v3 != 341800273)
      {
        if (v3 != 369845484)
        {
          goto LABEL_308;
        }

        selfCopy115 = self;
        v5 = 177;
        goto LABEL_307;
      }

      goto LABEL_248;
    }

    if (v3 > 1036038800)
    {
      if (v3 <= 1280441782)
      {
        if (v3 > 1169082143)
        {
          if (v3 == 1169082144)
          {
            selfCopy115 = self;
            v5 = 10;
          }

          else
          {
            if (v3 != 1260109173)
            {
              goto LABEL_308;
            }

            selfCopy115 = self;
            v5 = 24;
          }
        }

        else if (v3 == 1036038801)
        {
          selfCopy115 = self;
          v5 = 181;
        }

        else
        {
          if (v3 != 1060988941)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 13;
        }

        goto LABEL_307;
      }

      if (v3 > 1293446024)
      {
        if (v3 == 1293446025)
        {
          selfCopy115 = self;
          v5 = 132;
        }

        else
        {
          if (v3 != 1294429942)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 237;
        }

        goto LABEL_307;
      }

      if (v3 == 1280441783)
      {
        selfCopy115 = self;
        v5 = 121;
        goto LABEL_307;
      }

      if (v3 != 1280909812)
      {
        goto LABEL_308;
      }

      goto LABEL_142;
    }

    if (v3 > 810906662)
    {
      if (v3 > 861924852)
      {
        if (v3 == 861924853)
        {
          selfCopy115 = self;
          v5 = 234;
        }

        else
        {
          if (v3 != 877582975)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 61;
        }
      }

      else if (v3 == 810906663)
      {
        selfCopy115 = self;
        v5 = 161;
      }

      else
      {
        if (v3 != 851437781)
        {
          goto LABEL_308;
        }

        selfCopy115 = self;
        v5 = 54;
      }

      goto LABEL_307;
    }

    if (v3 > 749116820)
    {
      if (v3 == 749116821)
      {
        selfCopy115 = self;
        v5 = 263;
      }

      else
      {
        if (v3 != 789142227)
        {
          goto LABEL_308;
        }

        selfCopy115 = self;
        v5 = 179;
      }

      goto LABEL_307;
    }

    if (v3 == 689804742)
    {
      selfCopy115 = self;
      v5 = 15;
      goto LABEL_307;
    }

    v6 = 746003606;
LABEL_222:
    if (v3 != v6)
    {
      goto LABEL_308;
    }

    selfCopy115 = self;
    v5 = 150;
    goto LABEL_307;
  }

  if (v3 <= 1868379042)
  {
    if (v3 > 1554479184)
    {
      if (v3 <= 1747059279)
      {
        if (v3 > 1608945769)
        {
          if (v3 == 1608945770)
          {
            selfCopy115 = self;
            v5 = 159;
          }

          else
          {
            if (v3 != 1625227434)
            {
              goto LABEL_308;
            }

            selfCopy115 = self;
            v5 = 154;
          }
        }

        else if (v3 == 1554479185)
        {
          selfCopy115 = self;
          v5 = 266;
        }

        else
        {
          if (v3 != 1602181456)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 222;
        }

        goto LABEL_307;
      }

      if (v3 <= 1781728946)
      {
        if (v3 == 1747059280)
        {
          selfCopy115 = self;
          v5 = 232;
        }

        else
        {
          if (v3 != 1770142589)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 260;
        }

        goto LABEL_307;
      }

      if (v3 == 1781728947)
      {
        selfCopy115 = self;
        v5 = 60;
        goto LABEL_307;
      }

      v6 = 1834147427;
      goto LABEL_222;
    }

    if (v3 > 1373516432)
    {
      if (v3 > 1434404432)
      {
        if (v3 == 1434404433)
        {
          selfCopy115 = self;
          v5 = 20;
        }

        else
        {
          if (v3 != 1522473355)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 170;
        }

        goto LABEL_307;
      }

      if (v3 != 1373516433)
      {
        if (v3 != 1408738134)
        {
          goto LABEL_308;
        }

        selfCopy115 = self;
        v5 = 220;
        goto LABEL_307;
      }

LABEL_250:
      selfCopy115 = self;
      v5 = 148;
      goto LABEL_307;
    }

    if (v3 == 1309571158)
    {
      selfCopy115 = self;
      v5 = 240;
      goto LABEL_307;
    }

    if (v3 != 1353145733)
    {
      if (v3 != 1371389549)
      {
        goto LABEL_308;
      }

      selfCopy115 = self;
      v5 = 2;
      goto LABEL_307;
    }

LABEL_249:
    selfCopy115 = self;
    v5 = 130;
    goto LABEL_307;
  }

  if (v3 > 2078329140)
  {
    if (v3 > 2089455187)
    {
      if (v3 > 2132302343)
      {
        if (v3 == 2132302344)
        {
          selfCopy115 = self;
          v5 = 224;
        }

        else
        {
          if (v3 != 2159747553)
          {
            goto LABEL_308;
          }

          selfCopy115 = self;
          v5 = 7;
        }
      }

      else if (v3 == 2089455188)
      {
        selfCopy115 = self;
        v5 = 157;
      }

      else
      {
        if (v3 != 2103978418)
        {
          goto LABEL_308;
        }

        selfCopy115 = self;
        v5 = 133;
      }
    }

    else if (v3 > 2084894488)
    {
      if (v3 == 2084894489)
      {
        selfCopy115 = self;
        v5 = 261;
      }

      else
      {
        if (v3 != 2085054105)
        {
          goto LABEL_308;
        }

        selfCopy115 = self;
        v5 = 228;
      }
    }

    else if (v3 == 2078329141)
    {
      selfCopy115 = self;
      v5 = 18;
    }

    else
    {
      if (v3 != 2080700391)
      {
        goto LABEL_308;
      }

      selfCopy115 = self;
      v5 = 0;
    }

    goto LABEL_307;
  }

  if (v3 <= 1990293941)
  {
    if (v3 > 1878257789)
    {
      if (v3 == 1878257790)
      {
        selfCopy115 = self;
        v5 = 127;
      }

      else
      {
        if (v3 != 1895344378)
        {
          goto LABEL_308;
        }

        selfCopy115 = self;
        v5 = 144;
      }

      goto LABEL_307;
    }

    if (v3 != 1868379043)
    {
      if (v3 != 1872992317)
      {
        goto LABEL_308;
      }

      selfCopy115 = self;
      v5 = 62;
      goto LABEL_307;
    }

    goto LABEL_250;
  }

  if (v3 > 2021146988)
  {
    if (v3 == 2021146989)
    {
      selfCopy115 = self;
      v5 = 19;
      goto LABEL_307;
    }

    if (v3 != 2023824667)
    {
      goto LABEL_308;
    }

    goto LABEL_241;
  }

  if (v3 == 1990293942)
  {
    selfCopy115 = self;
    v5 = 239;
    goto LABEL_307;
  }

  if (v3 == 2001966017)
  {
    goto LABEL_249;
  }

LABEL_308:

  [(WCM_PlatformManager *)self setSKU];
}

- (BOOL)isJapanSKU
{
  v2 = MGCopyAnswer();
  v3 = v2;
  v4 = "is not";
  if (v2)
  {
    v5 = CFEqual(v2, @"B");
    v6 = v5 != 0;
    if (v5)
    {
      v4 = "is";
    }
  }

  else
  {
    v6 = 0;
  }

  [WCM_Logging logLevel:5 message:@"This %s Japan SKU based on Device Variant %@", v4, v3];
  return v6;
}

- (BOOL)isRowSKUB
{
  v2 = MGCopyAnswer();
  v3 = v2;
  v4 = "is not";
  if (v2)
  {
    v5 = CFEqual(v2, @"B");
    v6 = v5 != 0;
    if (v5)
    {
      v4 = "is";
    }
  }

  else
  {
    v6 = 0;
  }

  [WCM_Logging logLevel:5 message:@"This %s a ROW SKU BDevice based on Device Variant %@", v4, v3];
  return v6;
}

- (BOOL)isRowSKUS
{
  v2 = MGCopyAnswer();
  v3 = v2;
  v4 = "is not";
  if (v2)
  {
    v5 = CFEqual(v2, @"B");
    v6 = v5 != 0;
    if (v5)
    {
      v4 = "is";
    }
  }

  else
  {
    v6 = 0;
  }

  [WCM_Logging logLevel:5 message:@"This %s a ROW SKU SDevice based on Device Variant %@", v4, v3];
  return v6;
}

@end