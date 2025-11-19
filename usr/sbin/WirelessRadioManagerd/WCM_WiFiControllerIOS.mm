@interface WCM_WiFiControllerIOS
- (BOOL)isCarPlaySessionInProgress;
- (WCM_WiFiControllerIOS)init;
- (id)getLeastCongestedWifiParam;
- (id)getWiFiServiceSingletone;
- (int)getCarPlayScanRelaxReason;
- (void)bspGetBandSwitchStatus;
- (void)bspGetChannelQualityInfo;
- (void)bspNanPhsStateRequest;
- (void)bspRegulatoryInfoRequest;
- (void)bspStatusRequest;
- (void)clearDownloadCoexProfilesState;
- (void)dealloc;
- (void)downloadWiFiBTCoexProfiles;
- (void)downloadWiFiBTExtCoexProfiles;
- (void)enableWifiLaaCoexMode;
- (void)setAntennaSelectionWiFiEnh:(id)a3;
- (void)setCoexParams:(const char *)a3 withValue:(id)a4;
- (void)setWifiAgcCoexMode:(id)a3;
- (void)updateAntennaPreference:(id)a3 withCellPolicy:(id)a4;
- (void)updateAntennaSelection:(id)a3;
- (void)updateAntennaSelectionV2:(id)a3;
- (void)updateAntennaSelectionWiFiEnh2G:(id)a3;
- (void)updateAntennaSelectionWiFiEnh5G:(id)a3;
- (void)updateAntennaSelectionWiFiEnh6G:(id)a3;
- (void)updateChannelsForTimeSharingMode:(id)a3;
- (void)updateChannelsToBlocklist:(id)a3;
- (void)updateChannelsToDisableOCL:(id)a3;
- (void)updateChannelsToDisableOCLWiFiEnh:(id)a3 WiFiEnhChannels:(id)a4;
- (void)updateChannelsToEnableType7MSG2GWiFi:(id)a3;
- (void)updateChannelsToEnableType7MSG:(id)a3;
- (void)updateChannelsToEnableType7MSGWiFiEnh:(id)a3 WiFiEnhChannels:(id)a4;
- (void)updateChannelsToEnableWCI2:(id)a3;
- (void)updateChannelsToEnableWCI2V2:(id)a3;
- (void)updateChannelsToEnableWCI2WiFiEnh:(id)a3 WiFiEnhChannels:(id)a4;
- (void)updateGen9rFemConfiguration;
- (void)updateMWSFrameConfig:(id)a3;
- (void)updateMWSSignalingConfig;
- (void)updatePowerOnGen9rFemConfiguration;
- (void)updateRCU2CoexParams:(id)a3;
- (void)updateRxPriorityThreshold:(id)a3;
- (void)updateWiFiBTCoexActiveProfileFor2G:(int64_t)a3 and5G:(int64_t)a4;
- (void)updateWiFiBTCoexProfile:(id)a3 atIndex:(int64_t)a4;
- (void)updateWiFiBTConnectionReport:(id)a3;
- (void)updateWiFiRCU2CoexMode:(id)a3;
- (void)updateWiFiRCU2PMProtectionMode:(id)a3;
- (void)updateWiFiRCU2TimingArray:(id)a3;
- (void)updateWifiEnvelopeParams;
@end

@implementation WCM_WiFiControllerIOS

- (void)updateGen9rFemConfiguration
{
  v3 = +[WCM_PolicyManager singleton];
  [WCM_Logging logLevel:2 message:@"Wifi Controller: updateGen9rFemConfiguration"];
  v4 = [v3 wcmGen9rFemLpmMode2g];
  v5 = byte_1002B81F8;
  if (byte_1002B81F8 == v4)
  {
    v6 = [v3 wcmGen9rFemLpmMode5g];
    if (byte_1002B81F9 == v6)
    {

      [WCM_Logging logLevel:2 message:@"Wifi Controller: updateGen9rFemConfiguration, skipped due to duplicated command"];
      return;
    }

    v5 = byte_1002B81F8;
  }

  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"Wifi Controller: updateGen9rFemConfiguration, 2g(%d->%d)", v5, [v3 wcmGen9rFemLpmMode2g]);
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"Wifi Controller: updateGen9rFemConfiguration, 5g(%d->%d)", byte_1002B81F9, [v3 wcmGen9rFemLpmMode5g]);
  byte_1002B81F8 = [v3 wcmGen9rFemLpmMode2g];
  byte_1002B81F9 = [v3 wcmGen9rFemLpmMode5g];
  v7 = [(WCM_WiFiController *)self wifiService];
  v8 = [v3 wcmGen9rFemLpmMode2g];
  v9 = [v3 wcmGen9rFemLpmMode5g];
  v10 = [v3 wcmGen9rFemLpmMode5g];

  [(WCM_WiFiService *)v7 setChannelsToEnablerFemModeWiFiEnh:v8 enable5G:v9 enable6G:v10];
}

- (WCM_WiFiControllerIOS)init
{
  v5.receiver = self;
  v5.super_class = WCM_WiFiControllerIOS;
  v2 = [(WCM_WiFiController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2[76] = 0;
    *(v2 + 92) = &off_1002717D8;
    *(v3 + 100) = &off_100286018;
    *(v3 + 108) = &off_100286030;
    *(v3 + 116) = [&__NSArray0__struct mutableCopy];
    *(v3 + 124) = [&__NSArray0__struct mutableCopy];
    *(v3 + 132) = [&__NSArray0__struct mutableCopy];
    *(v3 + 140) = [&__NSArray0__struct mutableCopy];
    *(v3 + 148) = [&__NSArray0__struct mutableCopy];
    *(v3 + 156) = [&__NSArray0__struct mutableCopy];
    *(v3 + 164) = [&__NSArray0__struct mutableCopy];
    *(v3 + 180) = [&__NSArray0__struct mutableCopy];
    *(v3 + 188) = [&__NSArray0__struct mutableCopy];
    *(v3 + 196) = &off_100286078;
    *(v3 + 204) = &off_100286090;
    *(v3 + 212) = &off_1002860A8;
    *(v3 + 220) = &off_1002860C0;
    *(v3 + 228) = &off_1002860D8;
    *(v3 + 236) = &off_1002860F0;
    *(v3 + 252) = objc_alloc_init(NSDictionary);
    v3[77] = 0;
    *(v3 + 20) = 4;
    *(v3 + 21) = 0;
    *(v3 + 22) = 0;
    *(v3 + 300) = -1;
    *(v3 + 308) = -1;
    v3[79] = 0;
  }

  return v3;
}

- (void)dealloc
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  }

  v3.receiver = self;
  v3.super_class = WCM_WiFiControllerIOS;
  [(WCM_WiFiController *)&v3 dealloc];
}

- (void)clearDownloadCoexProfilesState
{
  [WCM_Logging logLevel:2 message:@"clearDownloadCoexProfilesState"];
  [(WCM_WiFiControllerIOS *)self setWifiBTCoexProfilesDownloaded:0];
  [(WCM_WiFiControllerIOS *)self setActiveProfileFor2G:-1];

  [(WCM_WiFiControllerIOS *)self setActiveProfileFor5G:-1];
}

- (void)downloadWiFiBTCoexProfiles
{
  v3 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [(WCM_WiFiControllerIOS *)self setWifiBTCoexProfilesDownloaded:1];
  if ([v3 wcmWiFiBTCoexProfileDefault])
  {
    -[WCM_WiFiControllerIOS setWifiBTCoexProfilesDownloaded:](self, "setWifiBTCoexProfilesDownloaded:", -[WCM_WiFiService setWiFiBTCoexProfile:atIndex:](-[WCM_WiFiController wifiService](self, "wifiService"), "setWiFiBTCoexProfile:atIndex:", [v3 wcmWiFiBTCoexProfileDefault], 0) & -[WCM_WiFiControllerIOS wifiBTCoexProfilesDownloaded](self, "wifiBTCoexProfilesDownloaded"));
  }

  if ([v3 wcmWiFiBTCoexProfileLight])
  {
    -[WCM_WiFiControllerIOS setWifiBTCoexProfilesDownloaded:](self, "setWifiBTCoexProfilesDownloaded:", -[WCM_WiFiService setWiFiBTCoexProfile:atIndex:](-[WCM_WiFiController wifiService](self, "wifiService"), "setWiFiBTCoexProfile:atIndex:", [v3 wcmWiFiBTCoexProfileLight], 1) & -[WCM_WiFiControllerIOS wifiBTCoexProfilesDownloaded](self, "wifiBTCoexProfilesDownloaded"));
  }

  if ([v3 wcmWiFiBTCoexProfileHeavyHFP])
  {
    -[WCM_WiFiControllerIOS setWifiBTCoexProfilesDownloaded:](self, "setWifiBTCoexProfilesDownloaded:", -[WCM_WiFiService setWiFiBTCoexProfile:atIndex:](-[WCM_WiFiController wifiService](self, "wifiService"), "setWiFiBTCoexProfile:atIndex:", [v3 wcmWiFiBTCoexProfileHeavyHFP], 2) & -[WCM_WiFiControllerIOS wifiBTCoexProfilesDownloaded](self, "wifiBTCoexProfilesDownloaded"));
  }

  if ([v3 wcmWiFiBTCoexProfileHeavyA2DP])
  {
    -[WCM_WiFiControllerIOS setWifiBTCoexProfilesDownloaded:](self, "setWifiBTCoexProfilesDownloaded:", -[WCM_WiFiService setWiFiBTCoexProfile:atIndex:](-[WCM_WiFiController wifiService](self, "wifiService"), "setWiFiBTCoexProfile:atIndex:", [v3 wcmWiFiBTCoexProfileHeavyA2DP], 3) & -[WCM_WiFiControllerIOS wifiBTCoexProfilesDownloaded](self, "wifiBTCoexProfilesDownloaded"));
  }

  if ([v3 wcmWiFiBTCoexProfileTDD])
  {
    -[WCM_WiFiControllerIOS setWifiBTCoexProfilesDownloaded:](self, "setWifiBTCoexProfilesDownloaded:", -[WCM_WiFiService setWiFiBTCoexProfile:atIndex:](-[WCM_WiFiController wifiService](self, "wifiService"), "setWiFiBTCoexProfile:atIndex:", [v3 wcmWiFiBTCoexProfileTDD], 4) & -[WCM_WiFiControllerIOS wifiBTCoexProfilesDownloaded](self, "wifiBTCoexProfilesDownloaded"));
  }

  if ([v3 wcmWiFiBTCoexProfileDefault5G])
  {
    v4 = -[WCM_WiFiService setWiFiBTCoexProfile:atIndex:](-[WCM_WiFiController wifiService](self, "wifiService"), "setWiFiBTCoexProfile:atIndex:", [v3 wcmWiFiBTCoexProfileDefault5G], 6);
    v5 = v4 & [(WCM_WiFiControllerIOS *)self wifiBTCoexProfilesDownloaded];

    [(WCM_WiFiControllerIOS *)self setWifiBTCoexProfilesDownloaded:v5];
  }
}

- (void)downloadWiFiBTExtCoexProfiles
{
  v3 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [(WCM_WiFiControllerIOS *)self setWifiBTCoexProfilesDownloaded:1];
  if ([v3 wcmWiFiBTCoexProfileDefault])
  {
    -[WCM_WiFiControllerIOS setWifiBTCoexProfilesDownloaded:](self, "setWifiBTCoexProfilesDownloaded:", -[WCM_WiFiService setWiFiBTExtCoexProfile:atIndex:](-[WCM_WiFiController wifiService](self, "wifiService"), "setWiFiBTExtCoexProfile:atIndex:", [v3 wcmWiFiBTCoexProfileDefault], 0) & -[WCM_WiFiControllerIOS wifiBTCoexProfilesDownloaded](self, "wifiBTCoexProfilesDownloaded"));
  }

  if ([v3 wcmWiFiBTCoexProfileLight])
  {
    -[WCM_WiFiControllerIOS setWifiBTCoexProfilesDownloaded:](self, "setWifiBTCoexProfilesDownloaded:", -[WCM_WiFiService setWiFiBTExtCoexProfile:atIndex:](-[WCM_WiFiController wifiService](self, "wifiService"), "setWiFiBTExtCoexProfile:atIndex:", [v3 wcmWiFiBTCoexProfileLight], 1) & -[WCM_WiFiControllerIOS wifiBTCoexProfilesDownloaded](self, "wifiBTCoexProfilesDownloaded"));
  }

  if ([v3 wcmWiFiBTCoexProfileHeavyHFP])
  {
    -[WCM_WiFiControllerIOS setWifiBTCoexProfilesDownloaded:](self, "setWifiBTCoexProfilesDownloaded:", -[WCM_WiFiService setWiFiBTExtCoexProfile:atIndex:](-[WCM_WiFiController wifiService](self, "wifiService"), "setWiFiBTExtCoexProfile:atIndex:", [v3 wcmWiFiBTCoexProfileHeavyHFP], 2) & -[WCM_WiFiControllerIOS wifiBTCoexProfilesDownloaded](self, "wifiBTCoexProfilesDownloaded"));
  }

  if ([v3 wcmWiFiBTCoexProfileHeavyA2DP])
  {
    -[WCM_WiFiControllerIOS setWifiBTCoexProfilesDownloaded:](self, "setWifiBTCoexProfilesDownloaded:", -[WCM_WiFiService setWiFiBTExtCoexProfile:atIndex:](-[WCM_WiFiController wifiService](self, "wifiService"), "setWiFiBTExtCoexProfile:atIndex:", [v3 wcmWiFiBTCoexProfileHeavyA2DP], 3) & -[WCM_WiFiControllerIOS wifiBTCoexProfilesDownloaded](self, "wifiBTCoexProfilesDownloaded"));
  }

  if ([v3 wcmWiFiBTCoexProfileTDD])
  {
    -[WCM_WiFiControllerIOS setWifiBTCoexProfilesDownloaded:](self, "setWifiBTCoexProfilesDownloaded:", -[WCM_WiFiService setWiFiBTExtCoexProfile:atIndex:](-[WCM_WiFiController wifiService](self, "wifiService"), "setWiFiBTExtCoexProfile:atIndex:", [v3 wcmWiFiBTCoexProfileTDD], 4) & -[WCM_WiFiControllerIOS wifiBTCoexProfilesDownloaded](self, "wifiBTCoexProfilesDownloaded"));
  }

  if ([v3 wcmWiFiBTCoexProfileDefault5G])
  {
    v4 = -[WCM_WiFiService setWiFiBTExtCoexProfile:atIndex:](-[WCM_WiFiController wifiService](self, "wifiService"), "setWiFiBTExtCoexProfile:atIndex:", [v3 wcmWiFiBTCoexProfileDefault5G], 6);
    v5 = v4 & [(WCM_WiFiControllerIOS *)self wifiBTCoexProfilesDownloaded];

    [(WCM_WiFiControllerIOS *)self setWifiBTCoexProfilesDownloaded:v5];
  }
}

- (id)getWiFiServiceSingletone
{
  if (qword_1002B81F0 != -1)
  {
    sub_10015FBEC();
  }

  return qword_1002B81E8;
}

- (void)updateWiFiBTCoexProfile:(id)a3 atIndex:(int64_t)a4
{
  v6 = [(WCM_WiFiController *)self wifiService];

  [(WCM_WiFiService *)v6 setWiFiBTCoexProfile:a3 atIndex:a4];
}

- (void)updateWiFiBTCoexActiveProfileFor2G:(int64_t)a3 and5G:(int64_t)a4
{
  if ([(WCM_WiFiControllerIOS *)self activeProfileFor2G]== a3 && [(WCM_WiFiControllerIOS *)self activeProfileFor5G]== a4)
  {
    [WCM_Logging logLevel:2 message:@"Already set index2G(%d) index5G(%d)", a3, a4];
    return;
  }

  if ([(WCM_WiFiControllerIOS *)self wifiBTCoexProfilesDownloaded])
  {
    goto LABEL_10;
  }

  if (([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] & 1) != 0 || objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"WiFiBt5GProfile"))
  {
    [WCM_Logging logLevel:2 message:@"All Coex Profiles Not Downloaded Successfully, Attempting to Download Again"];
    [(WCM_WiFiControllerIOS *)self downloadWiFiBTCoexProfiles];
  }

  else if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:2 message:@"All Coex Profiles Not Downloaded Successfully, Attempting to Download Ext Profile Again"];
    [(WCM_WiFiControllerIOS *)self downloadWiFiBTExtCoexProfiles];
  }

  if ([(WCM_WiFiControllerIOS *)self wifiBTCoexProfilesDownloaded])
  {
    [WCM_Logging logLevel:2 message:@"All Coex Profiles Downloaded Successfully on 2nd Attempt, Updating"];
LABEL_10:
    [(WCM_WiFiControllerIOS *)self setActiveProfileFor2G:a3];
    [(WCM_WiFiControllerIOS *)self setActiveProfileFor5G:a4];
    v7 = [(WCM_WiFiController *)self wifiService];

    [(WCM_WiFiService *)v7 setWiFiBTCoexActiveProfileFor2G:a3 and5G:a4];
    return;
  }

  [WCM_Logging logLevel:2 message:@"All Coex Profiles Not Downloaded Successfully On 2nd Attepmt, Not Activating"];
  [(WCM_WiFiControllerIOS *)self setActiveProfileFor2G:-1];

  [(WCM_WiFiControllerIOS *)self setActiveProfileFor5G:-1];
}

- (void)updateChannelsToBlocklist:(id)a3
{
  if ([a3 isEqualToArray:{-[WCM_WiFiControllerIOS channelsBlocklisted](self, "channelsBlocklisted")}])
  {
    [WCM_Logging logLevel:4 message:@"Already blocklisted channels %@", a3];
  }

  else
  {
    [(WCM_WiFiControllerIOS *)self setChannelsBlocklisted:a3];
    v5 = [(WCM_WiFiController *)self wifiService];

    [(WCM_WiFiService *)v5 setChannelsToBlocklist:a3];
  }
}

- (void)updateChannelsToEnableWCI2:(id)a3
{
  if ([a3 isEqualToArray:{-[WCM_WiFiControllerIOS channelsWCI2Enabled](self, "channelsWCI2Enabled")}])
  {
    [WCM_Logging logLevel:4 message:@"Already WCI2 enabled on channels %@", a3];
  }

  else
  {
    [(WCM_WiFiControllerIOS *)self setChannelsWCI2Enabled:a3];
    v5 = [(WCM_WiFiController *)self wifiService];

    [(WCM_WiFiService *)v5 setChannelsToEnableWCI2:a3];
  }
}

- (void)updateChannelsToEnableWCI2V2:(id)a3
{
  if ([a3 isEqualToArray:{-[WCM_WiFiControllerIOS channelsWCI2EnabledV2](self, "channelsWCI2EnabledV2")}])
  {
    [WCM_Logging logLevel:4 message:@"WCI2_V2: WCI2 is already enabled on channels %@", a3];
  }

  else
  {
    [(WCM_WiFiControllerIOS *)self setChannelsWCI2EnabledV2:a3];
    v5 = [(WCM_WiFiController *)self wifiService];

    [(WCM_WiFiService *)v5 setChannelsToEnableWCI2V2:a3];
  }
}

- (void)updateChannelsToEnableWCI2WiFiEnh:(id)a3 WiFiEnhChannels:(id)a4
{
  if ([a3 isEqualToArray:{-[WCM_WiFiControllerIOS channelsWCI2Enabled2Gand5G](self, "channelsWCI2Enabled2Gand5G")}] && objc_msgSend(a4, "isEqualToArray:", -[WCM_WiFiControllerIOS channelsWCI2EnabledWiFiEnh](self, "channelsWCI2EnabledWiFiEnh")))
  {

    [WCM_Logging logLevel:4 message:@"WCI2_WiFiEnh:  Channel lists are the same as channelsWCI2Enabled2Gand5G and channelsWCI2EnabledWiFiEnh, no need to update."];
  }

  else
  {
    [(WCM_WiFiControllerIOS *)self setChannelsWCI2Enabled2Gand5G:a3];
    [(WCM_WiFiControllerIOS *)self setChannelsWCI2EnabledWiFiEnh:a4];
    v7 = [(WCM_WiFiController *)self wifiService];
    v8 = [(WCM_WiFiControllerIOS *)self channelsWCI2Enabled2Gand5G];
    v9 = [(WCM_WiFiControllerIOS *)self channelsWCI2EnabledWiFiEnh];

    [(WCM_WiFiService *)v7 setChannelsToEnableWCI2WiFiEnh:v8 WiFiEnhChannels:v9];
  }
}

- (void)updateChannelsToEnableType7MSG:(id)a3
{
  if ([a3 isEqualToArray:{-[WCM_WiFiControllerIOS channelsToEnableType7MSG](self, "channelsToEnableType7MSG")}])
  {
    [WCM_Logging logLevel:4 message:@"DLDebug_: WiFi_Type7 MSG is already enabled on 5G WiFi channels %@", a3];
  }

  else
  {
    [(WCM_WiFiControllerIOS *)self setChannelsToEnableType7MSG:a3];
    v5 = [(WCM_WiFiController *)self wifiService];

    [(WCM_WiFiService *)v5 setChannelsToEnableType7MSG:a3];
  }
}

- (void)updateChannelsToEnableType7MSG2GWiFi:(id)a3
{
  if ([a3 isEqualToArray:{-[WCM_WiFiControllerIOS channelsToEnableType7MSG2GWiFi](self, "channelsToEnableType7MSG2GWiFi")}])
  {
    [WCM_Logging logLevel:4 message:@"DLDebug_: 2GWiFi_Type7 MSG is already enabled on 2G WiFi channels %@", a3];
  }

  else
  {
    [(WCM_WiFiControllerIOS *)self setChannelsToEnableType7MSG2GWiFi:a3];
    v5 = [(WCM_WiFiController *)self wifiService];
    v6 = [(WCM_WiFiControllerIOS *)self channelsToEnableType7MSG2GWiFi];

    [(WCM_WiFiService *)v5 setChannelsToEnableType7MSG2GWiFi:v6];
  }
}

- (void)updateChannelsToEnableType7MSGWiFiEnh:(id)a3 WiFiEnhChannels:(id)a4
{
  if ([a3 isEqualToArray:{-[WCM_WiFiControllerIOS channelsWiFiType7MSG2Gand5G](self, "channelsWiFiType7MSG2Gand5G")}] && objc_msgSend(a4, "isEqualToArray:", -[WCM_WiFiControllerIOS channelsWiFiType7MSGWiFiEnh](self, "channelsWiFiType7MSGWiFiEnh")))
  {

    [WCM_Logging logLevel:4 message:@"WiFiType7_WiFiEnh:  Channel lists are the same as channelsWiFiType7MSG2Gand5G and channelsWiFiType7MSGWiFiEnh, no need to update."];
  }

  else
  {
    [(WCM_WiFiControllerIOS *)self setChannelsWiFiType7MSG2Gand5G:a3];
    [(WCM_WiFiControllerIOS *)self setChannelsWiFiType7MSGWiFiEnh:a4];
    v7 = [(WCM_WiFiController *)self wifiService];
    v8 = [(WCM_WiFiControllerIOS *)self channelsWiFiType7MSG2Gand5G];
    v9 = [(WCM_WiFiControllerIOS *)self channelsWiFiType7MSGWiFiEnh];

    [(WCM_WiFiService *)v7 setChannelsToEnableType7MSGWiFiEnh:v8 WiFiEnhChannels:v9];
  }
}

- (void)updateChannelsToDisableOCL:(id)a3
{
  if (a3)
  {
    if ([a3 isEqualToArray:{-[WCM_WiFiControllerIOS channelsOCLDisabled](self, "channelsOCLDisabled")}])
    {
      [WCM_Logging logLevel:4 message:@"Already OCL disabled on channels %@", a3];
    }

    else
    {
      [(WCM_WiFiControllerIOS *)self setChannelsOCLDisabled:a3];
      v5 = [(WCM_WiFiController *)self wifiService];

      [(WCM_WiFiService *)v5 setChannelsToDisableOCL:a3];
    }
  }

  else
  {

    [WCM_Logging logLevel:4 message:@"DLWarning: channels is a null pointer. Return here"];
  }
}

- (void)updateChannelsToDisableOCLWiFiEnh:(id)a3 WiFiEnhChannels:(id)a4
{
  if ([a3 isEqualToArray:{-[WCM_WiFiControllerIOS channelsDisableOCL2Gand5G](self, "channelsDisableOCL2Gand5G")}] && objc_msgSend(a4, "isEqualToArray:", -[WCM_WiFiControllerIOS channelsDisableOCLWiFiEnh](self, "channelsDisableOCLWiFiEnh")))
  {

    [WCM_Logging logLevel:4 message:@"DisableOCL_WiFiEnh: Channel lists are the same as channelsDisableOCL2Gand5G and channelsDisableOCLWiFiEnh, no need to update."];
  }

  else
  {
    [(WCM_WiFiControllerIOS *)self setChannelsDisableOCL2Gand5G:a3];
    [(WCM_WiFiControllerIOS *)self setChannelsDisableOCLWiFiEnh:a4];
    v7 = [(WCM_WiFiController *)self wifiService];
    v8 = [(WCM_WiFiControllerIOS *)self channelsDisableOCL2Gand5G];
    v9 = [(WCM_WiFiControllerIOS *)self channelsDisableOCLWiFiEnh];

    [(WCM_WiFiService *)v7 setChannelsToDisableOCLWiFiEnh:v8 WiFiEnhChannels:v9];
  }
}

- (void)updateRxPriorityThreshold:(id)a3
{
  if ([(NSNumber *)[(WCM_WiFiControllerIOS *)self rxPriThreshold] isEqualToNumber:a3])
  {
    [WCM_Logging logLevel:4 message:@"Already set rxPriThreshold %@", a3];
  }

  else
  {
    [(WCM_WiFiControllerIOS *)self setRxPriThreshold:a3];
    v5 = [(WCM_WiFiController *)self wifiService];

    [(WCM_WiFiService *)v5 setRxPriorityThreshold:a3];
  }
}

- (void)updateAntennaPreference:(id)a3 withCellPolicy:(id)a4
{
  v6 = self;
  if ([a3 isEqualToArray:{-[WCM_WiFiControllerIOS antennaConfig](self, "antennaConfig")}])
  {
    [WCM_Logging logLevel:4 message:@"Already set antennaPreference %@", a3];
  }

  else
  {
    v18 = v6;
    [(WCM_WiFiControllerIOS *)v6 setAntennaConfig:a3];
    v7 = [a3 firstObject];
    v8 = [a3 lastObject];
    v9 = 0;
    LODWORD(v6) = 858980352;
    v10 = 1;
    do
    {
      v11 = v10;
      v12 = [v7 objectAtIndex:v9];
      if ([v12 isEqual:&off_1002717D8])
      {
        v13 = &off_100271820;
      }

      else
      {
        v13 = v12;
      }

      v14 = ([v13 intValue] << (8 * v9)) | v6;
      [WCM_Logging logLevel:3 message:@"2G Core %d config Command = 0x%x Antenna Config = %@", v9, v14, v12];
      v15 = [v8 objectAtIndex:v9];
      if ([v15 isEqual:&off_1002717D8])
      {
        v16 = &off_100271820;
      }

      else
      {
        v16 = v15;
      }

      v6 = (([v16 intValue] << ((8 * v9) | 4)) | v14);
      [WCM_Logging logLevel:3 message:@"5G Core %d config Command = 0x%x Antenna Config = %@", v9, v6, v15];
      v10 = 0;
      v9 = 1;
    }

    while ((v11 & 1) != 0);
    [objc_msgSend(v18 "wifiService")];
    [objc_msgSend(v18 "wifiService")];
    if (v6 != 858993459)
    {
      [objc_msgSend(v18 "wifiService")];
      [objc_msgSend(v18 "wifiService")];
      v17 = [v18 wifiService];

      [v17 setAntennaCellPolicy:a4];
    }
  }
}

- (void)updateAntennaSelection:(id)a3
{
  if ([a3 isEqualToArray:{-[WCM_WiFiControllerIOS antennaSelection](self, "antennaSelection")}])
  {
    [WCM_Logging logLevel:4 message:@"Already set antennaSelection %@", a3];
  }

  else
  {
    [(WCM_WiFiControllerIOS *)self setAntennaSelection:a3];
    v5 = [(WCM_WiFiController *)self wifiService];

    [(WCM_WiFiService *)v5 setAntennaSelection:a3];
  }
}

- (void)updateAntennaSelectionV2:(id)a3
{
  if ([a3 isEqualToArray:{-[WCM_WiFiControllerIOS antennaSelection](self, "antennaSelection")}])
  {
    [WCM_Logging logLevel:4 message:@"Already set antennaSelection %@", a3];
  }

  else
  {
    [(WCM_WiFiControllerIOS *)self setAntennaSelection:a3];
    v5 = [(WCM_WiFiController *)self wifiService];

    [(WCM_WiFiService *)v5 setAntennaSelectionV2:a3];
  }
}

- (void)updateAntennaSelectionWiFiEnh2G:(id)a3
{
  [WCM_Logging logLevel:4 message:@"Try to set 2G antennaSelection %@", a3];
  if ([a3 isEqualToArray:{-[WCM_WiFiControllerIOS antennaSelectionEnh2G](self, "antennaSelectionEnh2G")}])
  {
    [WCM_Logging logLevel:4 message:@"Already set 2G antennaSelection %@", a3];
  }

  else
  {
    [(WCM_WiFiControllerIOS *)self setAntennaSelectionEnh2G:a3];
    v5 = [(WCM_WiFiController *)self wifiService];
    v6 = [(WCM_WiFiControllerIOS *)self antennaSelectionEnh2G];

    [(WCM_WiFiService *)v5 setAntennaSelectionWiFiEnh:v6];
  }
}

- (void)updateAntennaSelectionWiFiEnh5G:(id)a3
{
  [WCM_Logging logLevel:4 message:@"Try to set 5G antennaSelection %@", a3];
  if ([a3 isEqualToArray:{-[WCM_WiFiControllerIOS antennaSelectionEnh5G](self, "antennaSelectionEnh5G")}])
  {
    [WCM_Logging logLevel:4 message:@"Already set 5G antennaSelection %@", a3];
  }

  else
  {
    [(WCM_WiFiControllerIOS *)self setAntennaSelectionEnh5G:a3];
    v5 = [(WCM_WiFiController *)self wifiService];
    v6 = [(WCM_WiFiControllerIOS *)self antennaSelectionEnh5G];

    [(WCM_WiFiService *)v5 setAntennaSelectionWiFiEnh:v6];
  }
}

- (void)updateAntennaSelectionWiFiEnh6G:(id)a3
{
  [WCM_Logging logLevel:4 message:@"Try to set 6G antennaSelection %@", a3];
  if ([a3 isEqualToArray:{-[WCM_WiFiControllerIOS antennaSelectionEnh6G](self, "antennaSelectionEnh6G")}])
  {
    [WCM_Logging logLevel:4 message:@"Already set 6G antennaSelection %@", a3];
  }

  else
  {
    [(WCM_WiFiControllerIOS *)self setAntennaSelectionEnh6G:a3];
    v5 = [(WCM_WiFiController *)self wifiService];
    v6 = [(WCM_WiFiControllerIOS *)self antennaSelectionEnh6G];

    [(WCM_WiFiService *)v5 setAntennaSelectionWiFiEnh:v6];
  }
}

- (void)updateChannelsForTimeSharingMode:(id)a3
{
  v5 = [a3 isEqualToArray:&off_100286168] ^ 1;
  if (v5 == -[WCM_WiFiControllerIOS lteCDRXTDDMode](self, "lteCDRXTDDMode") && [a3 isEqualToArray:{-[WCM_WiFiControllerIOS cdrxTDDEnabledChannels](self, "cdrxTDDEnabledChannels")}])
  {
    [WCM_Logging logLevel:4 message:@"Already set lteCDRXTDDMode(%d) cdrxTDDEnabledChannels %@", v5, a3];
  }

  else
  {
    [(WCM_WiFiControllerIOS *)self setLteCDRXTDDMode:v5];
    [(WCM_WiFiControllerIOS *)self setCdrxTDDEnabledChannels:a3];
    v6 = [(WCM_WiFiController *)self wifiService];

    [(WCM_WiFiService *)v6 setChannelsForTimeSharingMode:a3];
  }
}

- (void)updateMWSSignalingConfig
{
  v3 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v4[0] = @"MWS_WCI_Signaling_RxAssertOffset";
  v5[0] = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 wcmWCI2MWSRxAssertOffset]);
  v4[1] = @"MWS_WCI_Signaling_RxAssertJitter";
  v5[1] = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 wcmWCI2MWSRxAssertJitter]);
  v4[2] = @"MWS_WCI_Signaling_RxDeAssertOffset";
  v5[2] = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 wcmWCI2MWSRxDeAssertOffset]);
  v4[3] = @"MWS_WCI_Signaling_RxDeAssertJitter";
  v5[3] = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 wcmWCI2MWSRxDeAssertJitter]);
  v4[4] = @"MWS_WCI_Signaling_TxAssertOffset";
  v5[4] = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 wcmWCI2MWSTxAssertOffset]);
  v4[5] = @"MWS_WCI_Signaling_TxAssertJitter";
  v5[5] = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 wcmWCI2MWSTxAssertJitter]);
  v4[6] = @"MWS_WCI_Signaling_TxDeAssertOffset";
  v5[6] = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 wcmWCI2MWSTxDeAssertOffset]);
  v4[7] = @"MWS_WCI_Signaling_TxDeAssertJitter";
  v5[7] = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 wcmWCI2MWSTxDeAssertJitter]);
  v4[8] = @"MWS_WCI_Signaling_PatternAssertOffset";
  v5[8] = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 wcmWCI2MWSPatternAssertOffset]);
  v4[9] = @"MWS_WCI_Signaling_PatternAssertJitter";
  v5[9] = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 wcmWCI2MWSPatternAssertJitter]);
  v4[10] = @"MWS_WCI_Signaling_InactivityAssertOffset";
  v5[10] = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 wcmWCI2MWSInactivityAssertOffset]);
  v4[11] = @"MWS_WCI_Signaling_InactivityAssertJitter";
  v5[11] = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 wcmWCI2MWSInactivityAssertJitter]);
  v4[12] = @"MWS_WCI_Signaling_ScanFrequencyAssertOffset";
  v5[12] = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 wcmWCI2MWSScanFrequencyAssertOffset]);
  v4[13] = @"MWS_WCI_Signaling_ScanFrequencyAssertJitter";
  v5[13] = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 wcmWCI2MWSScanFrequencyAssertJitter]);
  v4[14] = @"MWS_WCI_Signaling_PriorityAssertOffsetRequest";
  v5[14] = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 wcmWCI2MWSPriorityAssertOffsetRequest]);
  [(WCM_WiFiService *)[(WCM_WiFiController *)self wifiService] setMWSSignalingConfig:[NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:15]];
}

- (BOOL)isCarPlaySessionInProgress
{
  [WCM_Logging logLevel:2 message:@"WiFi IOS Controller CarPlaySessioninProgress state:(%d)", [(WCM_WiFiControllerIOS *)self mCarPlaySessionInProgress]];

  return [(WCM_WiFiControllerIOS *)self mCarPlaySessionInProgress];
}

- (int)getCarPlayScanRelaxReason
{
  [WCM_Logging logLevel:2 message:@"WiFi IOS Controller CarPlayRelaxReason :(%d)", [(WCM_WiFiControllerIOS *)self mCarPlayBTScanRelaxReason]];

  return [(WCM_WiFiControllerIOS *)self mCarPlayBTScanRelaxReason];
}

- (id)getLeastCongestedWifiParam
{
  [WCM_Logging logLevel:0 message:@"WiFi IOS Controller getLeastCongestedWifiParam implementation"];
  v3 = +[NSMutableArray array];
  [v3 addObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", -[WCM_WiFiControllerIOS mLeastCongestedChannel](self, "mLeastCongestedChannel"))}];
  [v3 addObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", -[WCM_WiFiControllerIOS mLeastCongestedChannelCount](self, "mLeastCongestedChannelCount"))}];
  return v3;
}

- (void)updateMWSFrameConfig:(id)a3
{
  if (!a3)
  {
    return;
  }

  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  if (([a3 tddBand] & 1) == 0)
  {
    v22 = [NSNumber numberWithShort:1];
    [v5 addObject:{+[NSNumber numberWithShort:](NSNumber, "numberWithShort:", 10000)}];
    [v6 addObject:{+[NSNumber numberWithChar:](NSNumber, "numberWithChar:", 2)}];
    goto LABEL_25;
  }

  v7 = [a3 tddULDLConfig];
  v8 = [a3 subframeFormat];
  v9 = [a3 dlCPConfig];
  v10 = [a3 ulCPConfig];
  if (v7 > 6 || v8 > 9)
  {
    [WCM_Logging logLevel:0 message:@"Invalid tddULDLConfig(%d) subframeFormat(%d)", v7, v8];
    return;
  }

  v26 = self;
  LOWORD(v11) = 0;
  v12 = 0;
  v13 = 120;
  if (!v10)
  {
    v13 = 80;
  }

  v27 = (&unk_100199358 + 4 * v8 + v13);
  v28 = (&unk_100199358 + 40 * (v9 != 0) + 4 * v8);
  do
  {
    v14 = v12;
    v15 = aDsuuudsuuudsuu_0[10 * v7 + v12];
    [v6 addObject:{+[NSNumber numberWithChar:](NSNumber, "numberWithChar:", v15 != 68)}];
    v16 = v12;
    do
    {
      v11 = (v11 + 1000);
      if (v14 == 9)
      {
        v16 = 9;
LABEL_21:
        [v5 addObject:{+[NSNumber numberWithShort:](NSNumber, "numberWithShort:", v11)}];
        LOWORD(v11) = 0;
        goto LABEL_22;
      }

      v17 = aDsuuudsuuudsuu_0[10 * v7 + 1 + v14++];
      ++v16;
    }

    while (v17 == v15);
    if (v17 != 83)
    {
      --v16;
      goto LABEL_21;
    }

    v18 = llroundf(*v28);
    v19 = llroundf(*v27);
    if (v15 == 68)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    v21 = (v20 + v11);
    if (v15 == 68)
    {
      LOWORD(v11) = v19;
    }

    else
    {
      LOWORD(v11) = v18;
    }

    [v5 addObject:{+[NSNumber numberWithShort:](NSNumber, "numberWithShort:", v21)}];
    [v6 addObject:{+[NSNumber numberWithChar:](NSNumber, "numberWithChar:", 3)}];
    [v5 addObject:{+[NSNumber numberWithShort:](NSNumber, "numberWithShort:", (1000 - (v18 + v19)))}];
LABEL_22:
    v12 = v16 + 1;
  }

  while (v16 < 9);
  v22 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v6 count]);
  self = v26;
LABEL_25:
  v23 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v29[0] = @"MWS_Aggressor_Frame_SyncAssertOffset";
  v30[0] = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v23 wcmWCI2FrameSyncAssertOffset]);
  v29[1] = @"MWS_Aggressor_Frame_SyncAssertJitter";
  v30[1] = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v23 wcmWCI2FrameSyncAssertJitter]);
  v29[2] = @"MWS_Aggressor_Frame_Duration";
  v30[2] = [NSNumber numberWithShort:10000];
  v30[3] = v22;
  v29[3] = @"MWS_Aggressor_Frame_NumPeriods";
  v29[4] = @"MWS_Aggressor_Frame_PeriodDuration";
  v29[5] = @"MWS_Aggressor_Frame_PeriodType";
  v30[4] = v5;
  v30[5] = v6;
  v24 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:6];
  if ([(NSDictionary *)[(WCM_WiFiControllerIOS *)self frameConfiguration] isEqualToDictionary:v24])
  {
    [WCM_Logging logLevel:4 message:@"Already set frameConfiguration %@", v24, v25];
  }

  else
  {
    [(WCM_WiFiControllerIOS *)self setFrameConfiguration:v24];
    [(WCM_WiFiService *)[(WCM_WiFiController *)self wifiService] setMWSFrameConfig:v24];
  }
}

- (void)updateWifiEnvelopeParams
{
  v3 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"Wifi Controller Envelope setting envelope params %@ %@", [v3 wcmWiFiEnvelopeOnIndication], objc_msgSend(v3, "wcmWiFiEnvelopeIndicationTimer"));
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    -[WCM_WiFiService setEnableEnvelopeIndicationFor2G:](-[WCM_WiFiController wifiService](self, "wifiService"), "setEnableEnvelopeIndicationFor2G:", [v3 wcmWiFiEnvelopeOnIndication]);
    v4 = [(WCM_WiFiController *)self wifiService];
    v5 = [v3 wcmWiFiEnvelopeIndicationTimer];

    [(WCM_WiFiService *)v4 setEnvelopeIndicationTimerFor2G:v5];
  }
}

- (void)setWifiAgcCoexMode:(id)a3
{
  if ([(NSNumber *)[(WCM_WiFiControllerIOS *)self wifiAgcModeEnable] isEqualToNumber:a3])
  {
    [WCM_Logging logLevel:4 message:@"Wifi Coex Agc Rx Gain Mode already set to %@", a3];
  }

  else
  {
    [(WCM_WiFiControllerIOS *)self setWifiAgcModeEnable:a3];
    [WCM_Logging logLevel:3 message:@"Wifi Controller setting Agc Rx Coex Gain Mode %@", a3];
    v5 = [(WCM_WiFiController *)self wifiService];

    [(WCM_WiFiService *)v5 setEnableAgcCoexMode:a3];
  }
}

- (void)enableWifiLaaCoexMode
{
  v3 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 1, @"Wifi Controller setting LAA params TxDurationThresh %@ ActiveScanThrottleMask %@ ActiveDwellTime %@", [v3 wcmWiFiWCI2TxDurationThresh], objc_msgSend(v3, "wcmWiFiActiveScanThrottleMask"), objc_msgSend(v3, "wcmWiFiActiveDwellTime"));
  [(WCM_WiFiService *)[(WCM_WiFiController *)self wifiService] setLAACoexConfigEnableTxInd];
  -[WCM_WiFiService setLAACoexConfigWci2TxDurationThreshold:](-[WCM_WiFiController wifiService](self, "wifiService"), "setLAACoexConfigWci2TxDurationThreshold:", [v3 wcmWiFiWCI2TxDurationThresh]);
  -[WCM_WiFiService setLAACoexConfigScanThrottleMask:](-[WCM_WiFiController wifiService](self, "wifiService"), "setLAACoexConfigScanThrottleMask:", [v3 wcmWiFiActiveScanThrottleMask]);
  v4 = [(WCM_WiFiController *)self wifiService];
  v5 = [v3 wcmWiFiActiveDwellTime];

  [(WCM_WiFiService *)v4 setLAACoexConfigWifiDwellTime:v5];
}

- (void)updatePowerOnGen9rFemConfiguration
{
  v3 = +[WCM_PolicyManager singleton];
  [WCM_Logging logLevel:2 message:@"Wifi Controller: updatePowerOnGen9rFemConfiguration"];
  v4 = [(WCM_WiFiController *)self wifiService];
  v5 = [v3 wcmGen9rFemLpmMode2g];
  v6 = [v3 wcmGen9rFemLpmMode5g];
  v7 = [v3 wcmGen9rFemLpmMode5g];

  [(WCM_WiFiService *)v4 setChannelsToEnablerFemModeWiFiEnh:v5 enable5G:v6 enable6G:v7];
}

- (void)updateWiFiRCU2CoexMode:(id)a3
{
  [WCM_Logging logLevel:2 message:@"Wifi Controller setting RCU2 Coex Mode (%@)", a3];
  v5 = [(WCM_WiFiController *)self wifiService];

  [(WCM_WiFiService *)v5 setWiFiRCU2CoexMode:a3];
}

- (void)updateWiFiRCU2PMProtectionMode:(id)a3
{
  [WCM_Logging logLevel:2 message:@"Wifi Controller setting RCU2 PM Protection Mode (%@)", a3];
  v5 = [(WCM_WiFiController *)self wifiService];

  [(WCM_WiFiService *)v5 setWiFiRCU2PMProtectionMode:a3];
}

- (void)updateWiFiRCU2TimingArray:(id)a3
{
  [WCM_Logging logLevel:2 message:@"Wifi Controller setting RCU2 Timing Array (%@)", a3];
  v5 = [(WCM_WiFiController *)self wifiService];

  [(WCM_WiFiService *)v5 setWiFiRCU2TimingArray:a3];
}

- (void)updateRCU2CoexParams:(id)a3
{
  [WCM_Logging logLevel:2 message:@"Wifi Controller setting RCU2 coex param (%@)", a3];
  v5 = [(WCM_WiFiController *)self wifiService];

  [(WCM_WiFiService *)v5 setRCU2CoexParams:a3];
}

- (void)updateWiFiBTConnectionReport:(id)a3
{
  [WCM_Logging logLevel:2 message:@"Wifi Controller sending BT Connection Report to Wifi"];
  v5 = [(WCM_WiFiController *)self wifiService];

  [(WCM_WiFiService *)v5 setBTConnectionReport:a3];
}

- (void)bspStatusRequest
{
  [WCM_Logging logLevel:2 message:@"Wifi Controller sending bspStatusRequest to Wifi"];
  v3 = [(WCM_WiFiController *)self wifiService];

  [(WCM_WiFiService *)v3 bspStatusRequest];
}

- (void)bspRegulatoryInfoRequest
{
  [WCM_Logging logLevel:2 message:@"Wifi Controller sending bspRegulatoryInfoRequest to Wifi"];
  v3 = [(WCM_WiFiController *)self wifiService];

  [(WCM_WiFiService *)v3 bspRegulatoryInfoRequest];
}

- (void)bspNanPhsStateRequest
{
  [WCM_Logging logLevel:2 message:@"Wifi Controller sending bspNanPhsStateRequest to Wifi"];
  v3 = [(WCM_WiFiController *)self wifiService];

  [(WCM_WiFiService *)v3 bspNanPhsStateRequest];
}

- (void)bspGetBandSwitchStatus
{
  [WCM_Logging logLevel:2 message:@"Wifi Controller sending bspGetBandSwitchStatus to Wifi"];
  v3 = [(WCM_WiFiController *)self wifiService];

  [(WCM_WiFiService *)v3 bspGetBandSwitchStatus];
}

- (void)bspGetChannelQualityInfo
{
  [WCM_Logging logLevel:2 message:@"Wifi Controller sending bspGetChannelQualityInfo to Wifi"];
  v3 = [(WCM_WiFiController *)self wifiService];

  [(WCM_WiFiService *)v3 bspGetChannelQualityInfo];
}

- (void)setCoexParams:(const char *)a3 withValue:(id)a4
{
  [WCM_Logging logLevel:2 message:@"Wifi Controller setting params for %s", a3];
  v7 = [(WCM_WiFiController *)self wifiService];

  [(WCM_WiFiService *)v7 setCoexParams:a3 withValue:a4];
}

- (void)setAntennaSelectionWiFiEnh:(id)a3
{
  [WCM_Logging logLevel:2 message:@"Wifi Controller setting antennaSelection %@", a3];
  v5 = [(WCM_WiFiController *)self wifiService];

  [(WCM_WiFiService *)v5 setAntennaSelectionWiFiEnh:a3];
}

@end