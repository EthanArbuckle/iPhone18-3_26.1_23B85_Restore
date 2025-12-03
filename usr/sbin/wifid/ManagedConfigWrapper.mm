@interface ManagedConfigWrapper
+ (id)sharedInstance;
- (BOOL)isEAPShareBlockedByManagedDefault;
- (BOOL)isMegaWiFiProfileInstalled;
- (BOOL)isSupervisedDevice;
- (BOOL)isWiFiNetworkMDMNetwork:(__WiFiNetwork *)network;
- (BOOL)isWiFiNetworkSubjectToMDM:(__WiFiNetwork *)m;
- (BOOL)isWiFiPowerModificationDisabled;
- (void)MCInitialize;
- (void)MCSettingsDidChange:(id)change;
- (void)dealloc;
- (void)initializeWithHandler:(__WiFiManager *)handler;
- (void)installMegaWiFiProfile;
- (void)scheduleWithQueue:(id)queue;
- (void)startMonitoring;
- (void)stopMonitoring;
- (void)uninstallMegaWiFiProfile;
- (void)unscheduleFromQueue:(id)queue;
@end

@implementation ManagedConfigWrapper

+ (id)sharedInstance
{
  if (qword_100298498 != -1)
  {
    sub_10013BE8C();
  }

  return qword_100298490;
}

- (void)initializeWithHandler:(__WiFiManager *)handler
{
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: starting", "-[ManagedConfigWrapper initializeWithHandler:]"}];
  }

  objc_autoreleasePoolPop(v5);
  [(ManagedConfigWrapper *)self setManager:handler];
  [(ManagedConfigWrapper *)self setMcInitialized:0];
  [(ManagedConfigWrapper *)self setMonitoring:0];
  [(ManagedConfigWrapper *)self setMcConnection:+[MCProfileConnection sharedConnection]];

  [(ManagedConfigWrapper *)self setProfileIdentifier:0];
}

- (void)dealloc
{
  if ([(ManagedConfigWrapper *)self monitoring])
  {
    [(ManagedConfigWrapper *)self stopMonitoring];
  }

  self->_profileIdentifier = 0;
  v3.receiver = self;
  v3.super_class = ManagedConfigWrapper;
  [(ManagedConfigWrapper *)&v3 dealloc];
}

- (void)MCSettingsDidChange:(id)change
{
  v4 = objc_autoreleasePoolPush();
  isWiFiWithAllowedNetworksOnlyEnforced = [(MCProfileConnection *)[(ManagedConfigWrapper *)self mcConnection] isWiFiWithAllowedNetworksOnlyEnforced];
  isWiFiPowerModificationAllowed = [(MCProfileConnection *)[(ManagedConfigWrapper *)self mcConnection] isWiFiPowerModificationAllowed];
  isPersonalHotspotModificationAllowed = [(MCProfileConnection *)[(ManagedConfigWrapper *)self mcConnection] isPersonalHotspotModificationAllowed];
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v9 = "FALSE";
    if (isWiFiWithAllowedNetworksOnlyEnforced)
    {
      v9 = "TRUE";
    }

    v10 = "Disabled";
    if (isWiFiPowerModificationAllowed)
    {
      v11 = "Enabled";
    }

    else
    {
      v11 = "Disabled";
    }

    if (isPersonalHotspotModificationAllowed)
    {
      v10 = "Enabled";
    }

    [off_100298C40 WFLog:3 message:{"%s: MCNotification received. isWiFiWithAllowedNetworksOnlyEnforced (%s) WiFiPowerModification (%s) PersonalHotspotModification (%s)", "-[ManagedConfigWrapper MCSettingsDidChange:]", v9, v11, v10}];
  }

  objc_autoreleasePoolPop(v8);
  if ([(ManagedConfigWrapper *)self queue])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100040F60;
    block[3] = &unk_10025ED18;
    block[4] = self;
    v14 = isWiFiPowerModificationAllowed ^ 1;
    v15 = isPersonalHotspotModificationAllowed ^ 1;
    v16 = isWiFiWithAllowedNetworksOnlyEnforced;
    dispatch_async([(ManagedConfigWrapper *)self queue], block);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: probably WiFiManager is in middle of closing.", "-[ManagedConfigWrapper MCSettingsDidChange:]"}];
    }

    objc_autoreleasePoolPop(v12);
  }

  objc_autoreleasePoolPop(v4);
}

- (BOOL)isWiFiPowerModificationDisabled
{
  v3 = objc_autoreleasePoolPush();
  LOBYTE(self) = [(MCProfileConnection *)[(ManagedConfigWrapper *)self mcConnection] isWiFiPowerModificationAllowed];
  objc_autoreleasePoolPop(v3);
  return self ^ 1;
}

- (void)MCInitialize
{
  v3 = objc_autoreleasePoolPush();
  if (![(ManagedConfigWrapper *)self mcInitialized])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000410A8;
    v4[3] = &unk_10025ED40;
    v4[4] = self;
    [(MCProfileConnection *)[(ManagedConfigWrapper *)self mcConnection] checkInWithCompletion:v4];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)scheduleWithQueue:(id)queue
{
  v5 = objc_autoreleasePoolPush();
  [(ManagedConfigWrapper *)self setQueue:queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041204;
  block[3] = &unk_10025ED68;
  block[4] = self;
  dispatch_async(qword_100298C50, block);
  objc_autoreleasePoolPop(v5);
}

- (void)unscheduleFromQueue:(id)queue
{
  v4 = objc_autoreleasePoolPush();
  [(ManagedConfigWrapper *)self stopMonitoring];
  [(ManagedConfigWrapper *)self setQueue:0];

  objc_autoreleasePoolPop(v4);
}

- (void)startMonitoring
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: adding observer", "-[ManagedConfigWrapper startMonitoring]"}];
  }

  objc_autoreleasePoolPop(v4);
  v5 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v5 addObserver:self selector:"MCSettingsDidChange:" name:MCEffectiveSettingsChangedNotification object:0];
  [(ManagedConfigWrapper *)self setMonitoring:1];

  objc_autoreleasePoolPop(v3);
}

- (void)stopMonitoring
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: removing observer", "-[ManagedConfigWrapper stopMonitoring]"}];
  }

  objc_autoreleasePoolPop(v4);
  v5 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v5 removeObserver:self name:MCEffectiveSettingsChangedNotification object:0];
  [(ManagedConfigWrapper *)self setMonitoring:0];

  objc_autoreleasePoolPop(v3);
}

- (BOOL)isEAPShareBlockedByManagedDefault
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NSDictionary dictionaryWithContentsOfFile:@"/Library/Managed Preferences/mobile/.GlobalPreferences.plist"];
  v4 = v3 && [-[NSDictionary objectForKeyedSubscript:](v3 objectForKeyedSubscript:{@"EAPCredentialShareDisable", "intValue"}];
  objc_autoreleasePoolPop(v2);
  return v4;
}

- (BOOL)isSupervisedDevice
{
  v2 = objc_autoreleasePoolPush();
  v3 = [+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")];
  objc_autoreleasePoolPop(v2);
  return v3;
}

- (void)installMegaWiFiProfile
{
  v3 = objc_autoreleasePoolPush();
  v5 = 0;
  [(ManagedConfigWrapper *)self setProfileIdentifier:[(MCProfileConnection *)self->_mcConnection installProfileData:[NSData outError:"dataWithContentsOfURL:" dataWithContentsOfURL:?], &v5]];
  if (v5)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: %@", "-[ManagedConfigWrapper installMegaWiFiProfile]", v5}];
    }

    objc_autoreleasePoolPop(v4);
  }

  objc_autoreleasePoolPop(v3);
}

- (void)uninstallMegaWiFiProfile
{
  v3 = objc_autoreleasePoolPush();
  if ([(ManagedConfigWrapper *)self profileIdentifier])
  {
    [(MCProfileConnection *)self->_mcConnection removeProfileWithIdentifier:[(ManagedConfigWrapper *)self profileIdentifier]];
    [(ManagedConfigWrapper *)self setProfileIdentifier:0];
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)isMegaWiFiProfileInstalled
{
  v3 = objc_autoreleasePoolPush();
  if ([(ManagedConfigWrapper *)self mcInitialized])
  {
    v4 = [(MCProfileConnection *)self->_mcConnection installedProfilesWithFilterFlags:1];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([objc_msgSend(*(*(&v11 + 1) + 8 * i) "identifier")])
          {
            v9 = 1;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    sub_10013BEA0();
  }

  v9 = 0;
LABEL_12:
  objc_autoreleasePoolPop(v3);
  return v9;
}

- (BOOL)isWiFiNetworkSubjectToMDM:(__WiFiNetwork *)m
{
  v5 = objc_autoreleasePoolPush();
  if (![(ManagedConfigWrapper *)self mcInitialized])
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: ManagedConfiguration is not ready yet", "-[ManagedConfigWrapper isWiFiNetworkSubjectToMDM:]"}];
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_9;
  }

  v6 = sub_10000A540(m, @"PayloadUUID");
  if (!v6)
  {
LABEL_9:
    LOBYTE(v8) = 0;
    goto LABEL_5;
  }

  v7 = v6;
  v8 = [(MCProfileConnection *)[(ManagedConfigWrapper *)self mcConnection] installedProfilesWithFilterFlags:69];
  if (v8)
  {
    LOBYTE(v8) = [objc_msgSend(v8 filteredArrayUsingPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"ANY SELF.payloads.UUID MATCHES %@", v7)), "count"}] == 0;
  }

LABEL_5:
  objc_autoreleasePoolPop(v5);
  return v8;
}

- (BOOL)isWiFiNetworkMDMNetwork:(__WiFiNetwork *)network
{
  v5 = objc_autoreleasePoolPush();
  if (![(ManagedConfigWrapper *)self mcInitialized])
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: ManagedConfiguration is not ready yet", "-[ManagedConfigWrapper isWiFiNetworkMDMNetwork:]"}];
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_9;
  }

  v6 = sub_10000A540(network, @"PayloadUUID");
  if (!v6)
  {
LABEL_9:
    LOBYTE(v8) = 0;
    goto LABEL_5;
  }

  v7 = v6;
  v8 = [(MCProfileConnection *)[(ManagedConfigWrapper *)self mcConnection] installedProfilesWithFilterFlags:32];
  if (v8)
  {
    LOBYTE(v8) = [objc_msgSend(v8 filteredArrayUsingPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"ANY SELF.payloads.UUID MATCHES %@", v7)), "count"}] != 0;
  }

LABEL_5:
  objc_autoreleasePoolPop(v5);
  return v8;
}

@end