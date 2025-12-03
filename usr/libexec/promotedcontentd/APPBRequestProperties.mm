@interface APPBRequestProperties
- (BOOL)isEqual:(id)equal;
- (id)accountTypeAsString:(int)string;
- (id)connectionTypeAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)deviceModeAsString:(int)string;
- (id)dictionaryRepresentation;
- (id)runStateAsString:(int)string;
- (int)StringAsAccountType:(id)type;
- (int)StringAsConnectionType:(id)type;
- (int)StringAsDeviceMode:(id)mode;
- (int)StringAsRunState:(id)state;
- (int)accountType;
- (int)connectionType;
- (int)deviceMode;
- (int)runState;
- (unint64_t)hash;
- (void)addUserKeyboard:(id)keyboard;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAccountType:(BOOL)type;
- (void)setHasAdvertisingIdentifierMonthResetCount:(BOOL)count;
- (void)setHasAllowITunes:(BOOL)tunes;
- (void)setHasAllowInstallApps:(BOOL)apps;
- (void)setHasAppStoreViewAdVersion:(BOOL)version;
- (void)setHasAppsRank:(BOOL)rank;
- (void)setHasConnectionType:(BOOL)type;
- (void)setHasDenyExplicit:(BOOL)explicit;
- (void)setHasDeviceMode:(BOOL)mode;
- (void)setHasInternalUserWantsProdAds:(BOOL)ads;
- (void)setHasIsOnInternationalDataRoaming:(BOOL)roaming;
- (void)setHasIsTest:(BOOL)test;
- (void)setHasLimitAdTracking:(BOOL)tracking;
- (void)setHasLocalBandwidth:(BOOL)bandwidth;
- (void)setHasLocalBandwidthBytes:(BOOL)bytes;
- (void)setHasLocalBandwidthStddev:(BOOL)stddev;
- (void)setHasLocalLatency:(BOOL)latency;
- (void)setHasLocalLatencyCount:(BOOL)count;
- (void)setHasLocalLatencyStddev:(BOOL)stddev;
- (void)setHasMoviesRank:(BOOL)rank;
- (void)setHasRunState:(BOOL)state;
- (void)setHasTimezone:(BOOL)timezone;
- (void)setHasTvshowsRank:(BOOL)rank;
- (void)setHasUnfilledClientCount:(BOOL)count;
- (void)setHasUnfilledDuration:(BOOL)duration;
- (void)writeTo:(id)to;
@end

@implementation APPBRequestProperties

- (int)runState
{
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    return self->_runState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRunState:(BOOL)state
{
  if (state)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (id)runStateAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047DC88 + string);
  }

  return v4;
}

- (int)StringAsRunState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"Simulator"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"DevelopmentDevice"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"ConsumerDevice"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsOnInternationalDataRoaming:(BOOL)roaming
{
  if (roaming)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (int)connectionType
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_connectionType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConnectionType:(BOOL)type
{
  if (type)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (id)connectionTypeAsString:(int)string
{
  if (string >= 0xB)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047DCA0 + string);
  }

  return v4;
}

- (int)StringAsConnectionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UnknownConnection"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"WiFi"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Cellular_2_G"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Cellular_2_5G"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Cellular_3_G"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"Cellular_3_5G"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"Cellular_3_75G"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"Cellular_H_Plus"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"Cellular_4G"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"Cellular_5G"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTimezone:(BOOL)timezone
{
  if (timezone)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)addUserKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  userKeyboards = self->_userKeyboards;
  v8 = keyboardCopy;
  if (!userKeyboards)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_userKeyboards;
    self->_userKeyboards = v6;

    keyboardCopy = v8;
    userKeyboards = self->_userKeyboards;
  }

  [(NSMutableArray *)userKeyboards addObject:keyboardCopy];
}

- (void)setHasLocalLatency:(BOOL)latency
{
  if (latency)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasLocalLatencyCount:(BOOL)count
{
  if (count)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasLocalLatencyStddev:(BOOL)stddev
{
  if (stddev)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasLocalBandwidth:(BOOL)bandwidth
{
  if (bandwidth)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasLocalBandwidthBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasLocalBandwidthStddev:(BOOL)stddev
{
  if (stddev)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasDenyExplicit:(BOOL)explicit
{
  if (explicit)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasAppsRank:(BOOL)rank
{
  if (rank)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasMoviesRank:(BOOL)rank
{
  if (rank)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasTvshowsRank:(BOOL)rank
{
  if (rank)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasAllowInstallApps:(BOOL)apps
{
  if (apps)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasAllowITunes:(BOOL)tunes
{
  if (tunes)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasUnfilledDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasUnfilledClientCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (int)deviceMode
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_deviceMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDeviceMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (id)deviceModeAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047DCF8 + string);
  }

  return v4;
}

- (int)StringAsDeviceMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"EducationMode"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"GuestMode"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)accountType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_accountType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAccountType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (id)accountTypeAsString:(int)string
{
  if (string >= 8)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047DD10 + string);
  }

  return v4;
}

- (int)StringAsAccountType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"NoAccount"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Consumer"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ManagedAccount"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"U13"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"T13"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"U18"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"Unknown_Age"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"SensitiveContentEligible"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsTest:(BOOL)test
{
  if (test)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasAdvertisingIdentifierMonthResetCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasLimitAdTracking:(BOOL)tracking
{
  if (tracking)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasInternalUserWantsProdAds:(BOOL)ads
{
  if (ads)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasAppStoreViewAdVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBRequestProperties;
  v3 = [(APPBRequestProperties *)&v7 description];
  dictionaryRepresentation = [(APPBRequestProperties *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v5 = v3;
  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [v3 setObject:deviceModel forKey:@"deviceModel"];
  }

  appID = self->_appID;
  if (appID)
  {
    [v5 setObject:appID forKey:@"appID"];
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    runState = self->_runState;
    if (runState >= 3)
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_runState];
    }

    else
    {
      v9 = *(&off_10047DC88 + runState);
    }

    [v5 setObject:v9 forKey:@"runState"];
  }

  carrierMNC = self->_carrierMNC;
  if (carrierMNC)
  {
    [v5 setObject:carrierMNC forKey:@"carrierMNC"];
  }

  carrierMCC = self->_carrierMCC;
  if (carrierMCC)
  {
    [v5 setObject:carrierMCC forKey:@"carrierMCC"];
  }

  has = self->_has;
  if ((*&has & 0x800000) != 0)
  {
    v39 = [NSNumber numberWithBool:self->_isOnInternationalDataRoaming];
    [v5 setObject:v39 forKey:@"isOnInternationalDataRoaming"];

    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_16:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_16;
  }

  connectionType = self->_connectionType;
  if (connectionType >= 0xB)
  {
    v41 = [NSString stringWithFormat:@"(unknown: %i)", self->_connectionType];
  }

  else
  {
    v41 = *(&off_10047DCA0 + connectionType);
  }

  [v5 setObject:v41 forKey:@"connectionType"];

  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_17:
    *&v4 = self->_timezone;
    v13 = [NSNumber numberWithFloat:v4];
    [v5 setObject:v13 forKey:@"timezone"];
  }

LABEL_18:
  v14 = [NSNumber numberWithInt:self->_screenWidth];
  [v5 setObject:v14 forKey:@"screenWidth"];

  v15 = [NSNumber numberWithInt:self->_screenHeight];
  [v5 setObject:v15 forKey:@"screenHeight"];

  v16 = [NSNumber numberWithInt:self->_screenDPI];
  [v5 setObject:v16 forKey:@"screenDPI"];

  userKeyboards = self->_userKeyboards;
  if (userKeyboards)
  {
    [v5 setObject:userKeyboards forKey:@"userKeyboard"];
  }

  v19 = self->_has;
  if (*&v19)
  {
    v42 = [NSNumber numberWithDouble:self->_clientClockTime];
    [v5 setObject:v42 forKey:@"clientClockTime"];

    v19 = self->_has;
    if ((*&v19 & 0x400) == 0)
    {
LABEL_22:
      if ((*&v19 & 0x800) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_66;
    }
  }

  else if ((*&v19 & 0x400) == 0)
  {
    goto LABEL_22;
  }

  *&v17 = self->_localLatency;
  v43 = [NSNumber numberWithFloat:v17];
  [v5 setObject:v43 forKey:@"localLatency"];

  v19 = self->_has;
  if ((*&v19 & 0x800) == 0)
  {
LABEL_23:
    if ((*&v19 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  v44 = [NSNumber numberWithInt:self->_localLatencyCount];
  [v5 setObject:v44 forKey:@"localLatencyCount"];

  v19 = self->_has;
  if ((*&v19 & 0x1000) == 0)
  {
LABEL_24:
    if ((*&v19 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  *&v17 = self->_localLatencyStddev;
  v45 = [NSNumber numberWithFloat:v17];
  [v5 setObject:v45 forKey:@"localLatencyStddev"];

  v19 = self->_has;
  if ((*&v19 & 0x80) == 0)
  {
LABEL_25:
    if ((*&v19 & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  *&v17 = self->_localBandwidth;
  v46 = [NSNumber numberWithFloat:v17];
  [v5 setObject:v46 forKey:@"localBandwidth"];

  v19 = self->_has;
  if ((*&v19 & 0x100) == 0)
  {
LABEL_26:
    if ((*&v19 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_69:
  *&v17 = self->_localBandwidthBytes;
  v47 = [NSNumber numberWithFloat:v17];
  [v5 setObject:v47 forKey:@"localBandwidthBytes"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_27:
    *&v17 = self->_localBandwidthStddev;
    v20 = [NSNumber numberWithFloat:v17];
    [v5 setObject:v20 forKey:@"localBandwidthStddev"];
  }

LABEL_28:
  iAdID = self->_iAdID;
  if (iAdID)
  {
    [v5 setObject:iAdID forKey:@"iAdID"];
  }

  appVersion = self->_appVersion;
  if (appVersion)
  {
    [v5 setObject:appVersion forKey:@"appVersion"];
  }

  if ((*(&self->_has + 2) & 0x20) != 0)
  {
    v23 = [NSNumber numberWithBool:self->_denyExplicit];
    [v5 setObject:v23 forKey:@"denyExplicit"];
  }

  countryCode = self->_countryCode;
  if (countryCode)
  {
    [v5 setObject:countryCode forKey:@"countryCode"];
  }

  v25 = self->_has;
  if ((*&v25 & 0x10) != 0)
  {
    v48 = [NSNumber numberWithInt:self->_appsRank];
    [v5 setObject:v48 forKey:@"appsRank"];

    v25 = self->_has;
    if ((*&v25 & 0x2000) == 0)
    {
LABEL_38:
      if ((*&v25 & 0x10000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_73;
    }
  }

  else if ((*&v25 & 0x2000) == 0)
  {
    goto LABEL_38;
  }

  v49 = [NSNumber numberWithInt:self->_moviesRank];
  [v5 setObject:v49 forKey:@"moviesRank"];

  v25 = self->_has;
  if ((*&v25 & 0x10000) == 0)
  {
LABEL_39:
    if ((*&v25 & 0x100000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_74;
  }

LABEL_73:
  v50 = [NSNumber numberWithInt:self->_tvshowsRank];
  [v5 setObject:v50 forKey:@"tvshowsRank"];

  v25 = self->_has;
  if ((*&v25 & 0x100000) == 0)
  {
LABEL_40:
    if ((*&v25 & 0x80000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_74:
  v51 = [NSNumber numberWithBool:self->_allowInstallApps];
  [v5 setObject:v51 forKey:@"allowInstallApps"];

  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_41:
    v26 = [NSNumber numberWithBool:self->_allowITunes];
    [v5 setObject:v26 forKey:@"allowITunes"];
  }

LABEL_42:
  osVersionAndBuild = self->_osVersionAndBuild;
  if (osVersionAndBuild)
  {
    [v5 setObject:osVersionAndBuild forKey:@"osVersionAndBuild"];
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier)
  {
    [v5 setObject:localeIdentifier forKey:@"localeIdentifier"];
  }

  v29 = self->_has;
  if ((*&v29 & 0x40000) != 0)
  {
    *&v17 = self->_unfilledDuration;
    v30 = [NSNumber numberWithFloat:v17];
    [v5 setObject:v30 forKey:@"unfilledDuration"];

    v29 = self->_has;
  }

  if ((*&v29 & 0x20000) != 0)
  {
    v31 = [NSNumber numberWithInt:self->_unfilledClientCount];
    [v5 setObject:v31 forKey:@"unfilledClientCount"];
  }

  iTunesStore = self->_iTunesStore;
  if (iTunesStore)
  {
    [v5 setObject:iTunesStore forKey:@"iTunesStore"];
  }

  applicationLinkedOnOS = self->_applicationLinkedOnOS;
  if (applicationLinkedOnOS)
  {
    [v5 setObject:applicationLinkedOnOS forKey:@"applicationLinkedOnOS"];
  }

  anonymousDemandiAdID = self->_anonymousDemandiAdID;
  if (anonymousDemandiAdID)
  {
    [v5 setObject:anonymousDemandiAdID forKey:@"anonymousDemandiAdID"];
  }

  contentiAdID = self->_contentiAdID;
  if (contentiAdID)
  {
    [v5 setObject:contentiAdID forKey:@"contentiAdID"];
  }

  v36 = self->_has;
  if ((*&v36 & 0x40) != 0)
  {
    deviceMode = self->_deviceMode;
    if (deviceMode >= 3)
    {
      v38 = [NSString stringWithFormat:@"(unknown: %i)", self->_deviceMode];
    }

    else
    {
      v38 = *(&off_10047DCF8 + deviceMode);
    }

    [v5 setObject:v38 forKey:@"deviceMode"];

    v36 = self->_has;
  }

  if ((*&v36 & 2) != 0)
  {
    accountType = self->_accountType;
    if (accountType >= 8)
    {
      v53 = [NSString stringWithFormat:@"(unknown: %i)", self->_accountType];
    }

    else
    {
      v53 = *(&off_10047DD10 + accountType);
    }

    [v5 setObject:v53 forKey:@"accountType"];
  }

  dPID = self->_dPID;
  if (dPID)
  {
    [v5 setObject:dPID forKey:@"DPID"];
  }

  locality = self->_locality;
  if (locality)
  {
    [v5 setObject:locality forKey:@"locality"];
  }

  administrativeArea = self->_administrativeArea;
  if (administrativeArea)
  {
    [v5 setObject:administrativeArea forKey:@"administrativeArea"];
  }

  subAdministrativeArea = self->_subAdministrativeArea;
  if (subAdministrativeArea)
  {
    [v5 setObject:subAdministrativeArea forKey:@"subAdministrativeArea"];
  }

  isoCountryCode = self->_isoCountryCode;
  if (isoCountryCode)
  {
    [v5 setObject:isoCountryCode forKey:@"isoCountryCode"];
  }

  postalCode = self->_postalCode;
  if (postalCode)
  {
    [v5 setObject:postalCode forKey:@"postalCode"];
  }

  if (*(&self->_has + 3))
  {
    v60 = [NSNumber numberWithBool:self->_isTest];
    [v5 setObject:v60 forKey:@"isTest"];
  }

  campaignNameSpace = self->_campaignNameSpace;
  if (campaignNameSpace)
  {
    [v5 setObject:campaignNameSpace forKey:@"campaignNameSpace"];
  }

  v62 = self->_has;
  if ((*&v62 & 4) != 0)
  {
    v66 = [NSNumber numberWithInt:self->_advertisingIdentifierMonthResetCount];
    [v5 setObject:v66 forKey:@"advertisingIdentifierMonthResetCount"];

    v62 = self->_has;
    if ((*&v62 & 0x2000000) == 0)
    {
LABEL_104:
      if ((*&v62 & 0x400000) == 0)
      {
        goto LABEL_105;
      }

LABEL_110:
      v68 = [NSNumber numberWithBool:self->_internalUserWantsProdAds];
      [v5 setObject:v68 forKey:@"internalUserWantsProdAds"];

      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_106;
    }
  }

  else if ((*&v62 & 0x2000000) == 0)
  {
    goto LABEL_104;
  }

  v67 = [NSNumber numberWithBool:self->_limitAdTracking];
  [v5 setObject:v67 forKey:@"limitAdTracking"];

  v62 = self->_has;
  if ((*&v62 & 0x400000) != 0)
  {
    goto LABEL_110;
  }

LABEL_105:
  if ((*&v62 & 8) != 0)
  {
LABEL_106:
    v63 = [NSNumber numberWithInt:self->_appStoreViewAdVersion];
    [v5 setObject:v63 forKey:@"appStoreViewAdVersion"];
  }

LABEL_107:
  v64 = v5;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_deviceModel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_carrierMNC)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_carrierMCC)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((*&has & 0x800000) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_13:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_13;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_14:
    PBDataWriterWriteFloatField();
  }

LABEL_15:
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_userKeyboards;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v11 = self->_has;
  if (*&v11)
  {
    PBDataWriterWriteDoubleField();
    v11 = self->_has;
    if ((*&v11 & 0x400) == 0)
    {
LABEL_24:
      if ((*&v11 & 0x800) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_91;
    }
  }

  else if ((*&v11 & 0x400) == 0)
  {
    goto LABEL_24;
  }

  PBDataWriterWriteFloatField();
  v11 = self->_has;
  if ((*&v11 & 0x800) == 0)
  {
LABEL_25:
    if ((*&v11 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_92;
  }

LABEL_91:
  PBDataWriterWriteInt32Field();
  v11 = self->_has;
  if ((*&v11 & 0x1000) == 0)
  {
LABEL_26:
    if ((*&v11 & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_93;
  }

LABEL_92:
  PBDataWriterWriteFloatField();
  v11 = self->_has;
  if ((*&v11 & 0x80) == 0)
  {
LABEL_27:
    if ((*&v11 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_94;
  }

LABEL_93:
  PBDataWriterWriteFloatField();
  v11 = self->_has;
  if ((*&v11 & 0x100) == 0)
  {
LABEL_28:
    if ((*&v11 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_94:
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_29:
    PBDataWriterWriteFloatField();
  }

LABEL_30:
  if (self->_iAdID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_appVersion)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 2) & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
  }

  v12 = self->_has;
  if ((*&v12 & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
    v12 = self->_has;
    if ((*&v12 & 0x2000) == 0)
    {
LABEL_40:
      if ((*&v12 & 0x10000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_98;
    }
  }

  else if ((*&v12 & 0x2000) == 0)
  {
    goto LABEL_40;
  }

  PBDataWriterWriteInt32Field();
  v12 = self->_has;
  if ((*&v12 & 0x10000) == 0)
  {
LABEL_41:
    if ((*&v12 & 0x100000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_99;
  }

LABEL_98:
  PBDataWriterWriteInt32Field();
  v12 = self->_has;
  if ((*&v12 & 0x100000) == 0)
  {
LABEL_42:
    if ((*&v12 & 0x80000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_99:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_43:
    PBDataWriterWriteBOOLField();
  }

LABEL_44:
  if (self->_osVersionAndBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v13 = self->_has;
  if ((*&v13 & 0x40000) != 0)
  {
    PBDataWriterWriteFloatField();
    v13 = self->_has;
  }

  if ((*&v13 & 0x20000) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_iTunesStore)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_applicationLinkedOnOS)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_anonymousDemandiAdID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_contentiAdID)
  {
    PBDataWriterWriteDataField();
  }

  v14 = self->_has;
  if ((*&v14 & 0x40) != 0)
  {
    PBDataWriterWriteInt32Field();
    v14 = self->_has;
  }

  if ((*&v14 & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_dPID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_locality)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_administrativeArea)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subAdministrativeArea)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_isoCountryCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_postalCode)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_has + 3))
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_campaignNameSpace)
  {
    PBDataWriterWriteStringField();
  }

  v15 = self->_has;
  if ((*&v15 & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v15 = self->_has;
    if ((*&v15 & 0x2000000) == 0)
    {
LABEL_82:
      if ((*&v15 & 0x400000) == 0)
      {
        goto LABEL_83;
      }

LABEL_103:
      PBDataWriterWriteBOOLField();
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_84;
    }
  }

  else if ((*&v15 & 0x2000000) == 0)
  {
    goto LABEL_82;
  }

  PBDataWriterWriteBOOLField();
  v15 = self->_has;
  if ((*&v15 & 0x400000) != 0)
  {
    goto LABEL_103;
  }

LABEL_83:
  if ((*&v15 & 8) != 0)
  {
LABEL_84:
    PBDataWriterWriteInt32Field();
  }

LABEL_85:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v16 = toCopy;
  if (self->_deviceModel)
  {
    [toCopy setDeviceModel:?];
    toCopy = v16;
  }

  if (self->_appID)
  {
    [v16 setAppID:?];
    toCopy = v16;
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(toCopy + 62) = self->_runState;
    *(toCopy + 76) |= 0x4000u;
  }

  if (self->_carrierMNC)
  {
    [v16 setCarrierMNC:?];
    toCopy = v16;
  }

  if (self->_carrierMCC)
  {
    [v16 setCarrierMCC:?];
    toCopy = v16;
  }

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_86:
    *(toCopy + 28) = self->_connectionType;
    *(toCopy + 76) |= 0x20u;
    if ((*&self->_has & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  *(toCopy + 300) = self->_isOnInternationalDataRoaming;
  *(toCopy + 76) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x20) != 0)
  {
    goto LABEL_86;
  }

LABEL_13:
  if ((*&has & 0x8000) != 0)
  {
LABEL_14:
    *(toCopy + 68) = LODWORD(self->_timezone);
    *(toCopy + 76) |= 0x8000u;
  }

LABEL_15:
  *(toCopy + 65) = self->_screenWidth;
  *(toCopy + 64) = self->_screenHeight;
  *(toCopy + 63) = self->_screenDPI;
  if ([(APPBRequestProperties *)self userKeyboardsCount])
  {
    [v16 clearUserKeyboards];
    userKeyboardsCount = [(APPBRequestProperties *)self userKeyboardsCount];
    if (userKeyboardsCount)
    {
      v7 = userKeyboardsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(APPBRequestProperties *)self userKeyboardAtIndex:i];
        [v16 addUserKeyboard:v9];
      }
    }
  }

  v10 = self->_has;
  v11 = v16;
  if (*&v10)
  {
    *(v16 + 1) = *&self->_clientClockTime;
    *(v16 + 76) |= 1u;
    v10 = self->_has;
    if ((*&v10 & 0x400) == 0)
    {
LABEL_21:
      if ((*&v10 & 0x800) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_90;
    }
  }

  else if ((*&v10 & 0x400) == 0)
  {
    goto LABEL_21;
  }

  *(v16 + 49) = LODWORD(self->_localLatency);
  *(v16 + 76) |= 0x400u;
  v10 = self->_has;
  if ((*&v10 & 0x800) == 0)
  {
LABEL_22:
    if ((*&v10 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v16 + 50) = self->_localLatencyCount;
  *(v16 + 76) |= 0x800u;
  v10 = self->_has;
  if ((*&v10 & 0x1000) == 0)
  {
LABEL_23:
    if ((*&v10 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v16 + 51) = LODWORD(self->_localLatencyStddev);
  *(v16 + 76) |= 0x1000u;
  v10 = self->_has;
  if ((*&v10 & 0x80) == 0)
  {
LABEL_24:
    if ((*&v10 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v16 + 46) = LODWORD(self->_localBandwidth);
  *(v16 + 76) |= 0x80u;
  v10 = self->_has;
  if ((*&v10 & 0x100) == 0)
  {
LABEL_25:
    if ((*&v10 & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_93:
  *(v16 + 47) = LODWORD(self->_localBandwidthBytes);
  *(v16 + 76) |= 0x100u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_26:
    *(v16 + 48) = LODWORD(self->_localBandwidthStddev);
    *(v16 + 76) |= 0x200u;
  }

LABEL_27:
  if (self->_iAdID)
  {
    [v16 setIAdID:?];
    v11 = v16;
  }

  if (self->_appVersion)
  {
    [v16 setAppVersion:?];
    v11 = v16;
  }

  if ((*(&self->_has + 2) & 0x20) != 0)
  {
    v11[298] = self->_denyExplicit;
    *(v11 + 76) |= 0x200000u;
  }

  if (self->_countryCode)
  {
    [v16 setCountryCode:?];
    v11 = v16;
  }

  v12 = self->_has;
  if ((*&v12 & 0x10) != 0)
  {
    *(v11 + 20) = self->_appsRank;
    *(v11 + 76) |= 0x10u;
    v12 = self->_has;
    if ((*&v12 & 0x2000) == 0)
    {
LABEL_37:
      if ((*&v12 & 0x10000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_97;
    }
  }

  else if ((*&v12 & 0x2000) == 0)
  {
    goto LABEL_37;
  }

  *(v11 + 56) = self->_moviesRank;
  *(v11 + 76) |= 0x2000u;
  v12 = self->_has;
  if ((*&v12 & 0x10000) == 0)
  {
LABEL_38:
    if ((*&v12 & 0x100000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(v11 + 69) = self->_tvshowsRank;
  *(v11 + 76) |= 0x10000u;
  v12 = self->_has;
  if ((*&v12 & 0x100000) == 0)
  {
LABEL_39:
    if ((*&v12 & 0x80000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_98:
  v11[297] = self->_allowInstallApps;
  *(v11 + 76) |= 0x100000u;
  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_40:
    v11[296] = self->_allowITunes;
    *(v11 + 76) |= 0x80000u;
  }

LABEL_41:
  if (self->_osVersionAndBuild)
  {
    [v16 setOsVersionAndBuild:?];
    v11 = v16;
  }

  if (self->_localeIdentifier)
  {
    [v16 setLocaleIdentifier:?];
    v11 = v16;
  }

  v13 = self->_has;
  if ((*&v13 & 0x40000) != 0)
  {
    *(v11 + 71) = LODWORD(self->_unfilledDuration);
    *(v11 + 76) |= 0x40000u;
    v13 = self->_has;
  }

  if ((*&v13 & 0x20000) != 0)
  {
    *(v11 + 70) = self->_unfilledClientCount;
    *(v11 + 76) |= 0x20000u;
  }

  if (self->_iTunesStore)
  {
    [v16 setITunesStore:?];
    v11 = v16;
  }

  if (self->_applicationLinkedOnOS)
  {
    [v16 setApplicationLinkedOnOS:?];
    v11 = v16;
  }

  if (self->_anonymousDemandiAdID)
  {
    [v16 setAnonymousDemandiAdID:?];
    v11 = v16;
  }

  if (self->_contentiAdID)
  {
    [v16 setContentiAdID:?];
    v11 = v16;
  }

  v14 = self->_has;
  if ((*&v14 & 0x40) != 0)
  {
    *(v11 + 36) = self->_deviceMode;
    *(v11 + 76) |= 0x40u;
    v14 = self->_has;
  }

  if ((*&v14 & 2) != 0)
  {
    *(v11 + 4) = self->_accountType;
    *(v11 + 76) |= 2u;
  }

  if (self->_dPID)
  {
    [v16 setDPID:?];
    v11 = v16;
  }

  if (self->_locality)
  {
    [v16 setLocality:?];
    v11 = v16;
  }

  if (self->_administrativeArea)
  {
    [v16 setAdministrativeArea:?];
    v11 = v16;
  }

  if (self->_subAdministrativeArea)
  {
    [v16 setSubAdministrativeArea:?];
    v11 = v16;
  }

  if (self->_isoCountryCode)
  {
    [v16 setIsoCountryCode:?];
    v11 = v16;
  }

  if (self->_postalCode)
  {
    [v16 setPostalCode:?];
    v11 = v16;
  }

  if (*(&self->_has + 3))
  {
    v11[301] = self->_isTest;
    *(v11 + 76) |= 0x1000000u;
  }

  if (self->_campaignNameSpace)
  {
    [v16 setCampaignNameSpace:?];
    v11 = v16;
  }

  v15 = self->_has;
  if ((*&v15 & 4) != 0)
  {
    *(v11 + 8) = self->_advertisingIdentifierMonthResetCount;
    *(v11 + 76) |= 4u;
    v15 = self->_has;
    if ((*&v15 & 0x2000000) == 0)
    {
LABEL_79:
      if ((*&v15 & 0x400000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_102;
    }
  }

  else if ((*&v15 & 0x2000000) == 0)
  {
    goto LABEL_79;
  }

  v11[302] = self->_limitAdTracking;
  *(v11 + 76) |= 0x2000000u;
  v15 = self->_has;
  if ((*&v15 & 0x400000) == 0)
  {
LABEL_80:
    if ((*&v15 & 8) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

LABEL_102:
  v11[299] = self->_internalUserWantsProdAds;
  *(v11 + 76) |= 0x400000u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_81:
    *(v11 + 14) = self->_appStoreViewAdVersion;
    *(v11 + 76) |= 8u;
  }

LABEL_82:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_deviceModel copyWithZone:zone];
  v7 = v5[19];
  v5[19] = v6;

  v8 = [(NSString *)self->_appID copyWithZone:zone];
  v9 = v5[6];
  v5[6] = v8;

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(v5 + 62) = self->_runState;
    *(v5 + 76) |= 0x4000u;
  }

  v10 = [(NSString *)self->_carrierMNC copyWithZone:zone];
  v11 = v5[13];
  v5[13] = v10;

  v12 = [(NSString *)self->_carrierMCC copyWithZone:zone];
  v13 = v5[12];
  v5[12] = v12;

  has = self->_has;
  if ((*&has & 0x800000) != 0)
  {
    *(v5 + 300) = self->_isOnInternationalDataRoaming;
    *(v5 + 76) |= 0x800000u;
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_5:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 28) = self->_connectionType;
  *(v5 + 76) |= 0x20u;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_6:
    *(v5 + 68) = LODWORD(self->_timezone);
    *(v5 + 76) |= 0x8000u;
  }

LABEL_7:
  *(v5 + 65) = self->_screenWidth;
  *(v5 + 64) = self->_screenHeight;
  *(v5 + 63) = self->_screenDPI;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v15 = self->_userKeyboards;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v60;
    do
    {
      v19 = 0;
      do
      {
        if (*v60 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v59 + 1) + 8 * v19) copyWithZone:{zone, v59}];
        [v5 addUserKeyboard:v20];

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v17);
  }

  v21 = self->_has;
  if (*&v21)
  {
    v5[1] = *&self->_clientClockTime;
    *(v5 + 76) |= 1u;
    v21 = self->_has;
    if ((*&v21 & 0x400) == 0)
    {
LABEL_16:
      if ((*&v21 & 0x800) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_51;
    }
  }

  else if ((*&v21 & 0x400) == 0)
  {
    goto LABEL_16;
  }

  *(v5 + 49) = LODWORD(self->_localLatency);
  *(v5 + 76) |= 0x400u;
  v21 = self->_has;
  if ((*&v21 & 0x800) == 0)
  {
LABEL_17:
    if ((*&v21 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v5 + 50) = self->_localLatencyCount;
  *(v5 + 76) |= 0x800u;
  v21 = self->_has;
  if ((*&v21 & 0x1000) == 0)
  {
LABEL_18:
    if ((*&v21 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v5 + 51) = LODWORD(self->_localLatencyStddev);
  *(v5 + 76) |= 0x1000u;
  v21 = self->_has;
  if ((*&v21 & 0x80) == 0)
  {
LABEL_19:
    if ((*&v21 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v5 + 46) = LODWORD(self->_localBandwidth);
  *(v5 + 76) |= 0x80u;
  v21 = self->_has;
  if ((*&v21 & 0x100) == 0)
  {
LABEL_20:
    if ((*&v21 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_54:
  *(v5 + 47) = LODWORD(self->_localBandwidthBytes);
  *(v5 + 76) |= 0x100u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_21:
    *(v5 + 48) = LODWORD(self->_localBandwidthStddev);
    *(v5 + 76) |= 0x200u;
  }

LABEL_22:
  v22 = [(NSData *)self->_iAdID copyWithZone:zone, v59];
  v23 = v5[20];
  v5[20] = v22;

  v24 = [(NSString *)self->_appVersion copyWithZone:zone];
  v25 = v5[8];
  v5[8] = v24;

  if ((*(&self->_has + 2) & 0x20) != 0)
  {
    *(v5 + 298) = self->_denyExplicit;
    *(v5 + 76) |= 0x200000u;
  }

  v26 = [(NSString *)self->_countryCode copyWithZone:zone];
  v27 = v5[16];
  v5[16] = v26;

  v28 = self->_has;
  if ((*&v28 & 0x10) != 0)
  {
    *(v5 + 20) = self->_appsRank;
    *(v5 + 76) |= 0x10u;
    v28 = self->_has;
    if ((*&v28 & 0x2000) == 0)
    {
LABEL_26:
      if ((*&v28 & 0x10000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_58;
    }
  }

  else if ((*&v28 & 0x2000) == 0)
  {
    goto LABEL_26;
  }

  *(v5 + 56) = self->_moviesRank;
  *(v5 + 76) |= 0x2000u;
  v28 = self->_has;
  if ((*&v28 & 0x10000) == 0)
  {
LABEL_27:
    if ((*&v28 & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v5 + 69) = self->_tvshowsRank;
  *(v5 + 76) |= 0x10000u;
  v28 = self->_has;
  if ((*&v28 & 0x100000) == 0)
  {
LABEL_28:
    if ((*&v28 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_59:
  *(v5 + 297) = self->_allowInstallApps;
  *(v5 + 76) |= 0x100000u;
  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_29:
    *(v5 + 296) = self->_allowITunes;
    *(v5 + 76) |= 0x80000u;
  }

LABEL_30:
  v29 = [(NSString *)self->_osVersionAndBuild copyWithZone:zone];
  v30 = v5[29];
  v5[29] = v29;

  v31 = [(NSString *)self->_localeIdentifier copyWithZone:zone];
  v32 = v5[26];
  v5[26] = v31;

  v33 = self->_has;
  if ((*&v33 & 0x40000) != 0)
  {
    *(v5 + 71) = LODWORD(self->_unfilledDuration);
    *(v5 + 76) |= 0x40000u;
    v33 = self->_has;
  }

  if ((*&v33 & 0x20000) != 0)
  {
    *(v5 + 70) = self->_unfilledClientCount;
    *(v5 + 76) |= 0x20000u;
  }

  v34 = [(NSString *)self->_iTunesStore copyWithZone:zone];
  v35 = v5[21];
  v5[21] = v34;

  v36 = [(NSString *)self->_applicationLinkedOnOS copyWithZone:zone];
  v37 = v5[9];
  v5[9] = v36;

  v38 = [(NSData *)self->_anonymousDemandiAdID copyWithZone:zone];
  v39 = v5[5];
  v5[5] = v38;

  v40 = [(NSData *)self->_contentiAdID copyWithZone:zone];
  v41 = v5[15];
  v5[15] = v40;

  v42 = self->_has;
  if ((*&v42 & 0x40) != 0)
  {
    *(v5 + 36) = self->_deviceMode;
    *(v5 + 76) |= 0x40u;
    v42 = self->_has;
  }

  if ((*&v42 & 2) != 0)
  {
    *(v5 + 4) = self->_accountType;
    *(v5 + 76) |= 2u;
  }

  v43 = [(NSData *)self->_dPID copyWithZone:zone];
  v44 = v5[17];
  v5[17] = v43;

  v45 = [(NSString *)self->_locality copyWithZone:zone];
  v46 = v5[27];
  v5[27] = v45;

  v47 = [(NSString *)self->_administrativeArea copyWithZone:zone];
  v48 = v5[3];
  v5[3] = v47;

  v49 = [(NSString *)self->_subAdministrativeArea copyWithZone:zone];
  v50 = v5[33];
  v5[33] = v49;

  v51 = [(NSString *)self->_isoCountryCode copyWithZone:zone];
  v52 = v5[22];
  v5[22] = v51;

  v53 = [(NSString *)self->_postalCode copyWithZone:zone];
  v54 = v5[30];
  v5[30] = v53;

  if (*(&self->_has + 3))
  {
    *(v5 + 301) = self->_isTest;
    *(v5 + 76) |= 0x1000000u;
  }

  v55 = [(NSString *)self->_campaignNameSpace copyWithZone:zone];
  v56 = v5[11];
  v5[11] = v55;

  v57 = self->_has;
  if ((*&v57 & 4) != 0)
  {
    *(v5 + 8) = self->_advertisingIdentifierMonthResetCount;
    *(v5 + 76) |= 4u;
    v57 = self->_has;
    if ((*&v57 & 0x2000000) == 0)
    {
LABEL_42:
      if ((*&v57 & 0x400000) == 0)
      {
        goto LABEL_43;
      }

LABEL_63:
      *(v5 + 299) = self->_internalUserWantsProdAds;
      *(v5 + 76) |= 0x400000u;
      if ((*&self->_has & 8) == 0)
      {
        return v5;
      }

      goto LABEL_44;
    }
  }

  else if ((*&v57 & 0x2000000) == 0)
  {
    goto LABEL_42;
  }

  *(v5 + 302) = self->_limitAdTracking;
  *(v5 + 76) |= 0x2000000u;
  v57 = self->_has;
  if ((*&v57 & 0x400000) != 0)
  {
    goto LABEL_63;
  }

LABEL_43:
  if ((*&v57 & 8) != 0)
  {
LABEL_44:
    *(v5 + 14) = self->_appStoreViewAdVersion;
    *(v5 + 76) |= 8u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_200;
  }

  deviceModel = self->_deviceModel;
  if (deviceModel | *(equalCopy + 19))
  {
    if (![(NSString *)deviceModel isEqual:?])
    {
      goto LABEL_200;
    }
  }

  appID = self->_appID;
  if (appID | *(equalCopy + 6))
  {
    if (![(NSString *)appID isEqual:?])
    {
      goto LABEL_200;
    }
  }

  v7 = *(equalCopy + 76);
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_runState != *(equalCopy + 62))
    {
      goto LABEL_200;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_200;
  }

  carrierMNC = self->_carrierMNC;
  if (carrierMNC | *(equalCopy + 13) && ![(NSString *)carrierMNC isEqual:?])
  {
    goto LABEL_200;
  }

  carrierMCC = self->_carrierMCC;
  if (carrierMCC | *(equalCopy + 12))
  {
    if (![(NSString *)carrierMCC isEqual:?])
    {
      goto LABEL_200;
    }
  }

  has = self->_has;
  v11 = *(equalCopy + 76);
  if ((*&has & 0x800000) != 0)
  {
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_200;
    }

    if (self->_isOnInternationalDataRoaming)
    {
      if ((*(equalCopy + 300) & 1) == 0)
      {
        goto LABEL_200;
      }
    }

    else if (*(equalCopy + 300))
    {
      goto LABEL_200;
    }
  }

  else if ((v11 & 0x800000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v11 & 0x20) == 0 || self->_connectionType != *(equalCopy + 28))
    {
      goto LABEL_200;
    }
  }

  else if ((v11 & 0x20) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v11 & 0x8000) == 0 || self->_timezone != *(equalCopy + 68))
    {
      goto LABEL_200;
    }
  }

  else if ((v11 & 0x8000) != 0)
  {
    goto LABEL_200;
  }

  if (self->_screenWidth != *(equalCopy + 65) || self->_screenHeight != *(equalCopy + 64) || self->_screenDPI != *(equalCopy + 63))
  {
    goto LABEL_200;
  }

  userKeyboards = self->_userKeyboards;
  if (userKeyboards | *(equalCopy + 36))
  {
    if (![(NSMutableArray *)userKeyboards isEqual:?])
    {
      goto LABEL_200;
    }

    has = self->_has;
  }

  v13 = *(equalCopy + 76);
  if (*&has)
  {
    if ((v13 & 1) == 0 || self->_clientClockTime != *(equalCopy + 1))
    {
      goto LABEL_200;
    }
  }

  else if (v13)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v13 & 0x400) == 0 || self->_localLatency != *(equalCopy + 49))
    {
      goto LABEL_200;
    }
  }

  else if ((v13 & 0x400) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v13 & 0x800) == 0 || self->_localLatencyCount != *(equalCopy + 50))
    {
      goto LABEL_200;
    }
  }

  else if ((v13 & 0x800) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v13 & 0x1000) == 0 || self->_localLatencyStddev != *(equalCopy + 51))
    {
      goto LABEL_200;
    }
  }

  else if ((v13 & 0x1000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v13 & 0x80) == 0 || self->_localBandwidth != *(equalCopy + 46))
    {
      goto LABEL_200;
    }
  }

  else if ((v13 & 0x80) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v13 & 0x100) == 0 || self->_localBandwidthBytes != *(equalCopy + 47))
    {
      goto LABEL_200;
    }
  }

  else if ((v13 & 0x100) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v13 & 0x200) == 0 || self->_localBandwidthStddev != *(equalCopy + 48))
    {
      goto LABEL_200;
    }
  }

  else if ((v13 & 0x200) != 0)
  {
    goto LABEL_200;
  }

  iAdID = self->_iAdID;
  if (iAdID | *(equalCopy + 20) && ![(NSData *)iAdID isEqual:?])
  {
    goto LABEL_200;
  }

  appVersion = self->_appVersion;
  if (appVersion | *(equalCopy + 8))
  {
    if (![(NSString *)appVersion isEqual:?])
    {
      goto LABEL_200;
    }
  }

  v16 = self->_has;
  v17 = *(equalCopy + 76);
  if ((*&v16 & 0x200000) != 0)
  {
    if ((v17 & 0x200000) == 0)
    {
      goto LABEL_200;
    }

    if (self->_denyExplicit)
    {
      if ((*(equalCopy + 298) & 1) == 0)
      {
        goto LABEL_200;
      }
    }

    else if (*(equalCopy + 298))
    {
      goto LABEL_200;
    }
  }

  else if ((v17 & 0x200000) != 0)
  {
    goto LABEL_200;
  }

  countryCode = self->_countryCode;
  if (countryCode | *(equalCopy + 16))
  {
    if (![(NSString *)countryCode isEqual:?])
    {
      goto LABEL_200;
    }

    v16 = self->_has;
  }

  v19 = *(equalCopy + 76);
  if ((*&v16 & 0x10) != 0)
  {
    if ((v19 & 0x10) == 0 || self->_appsRank != *(equalCopy + 20))
    {
      goto LABEL_200;
    }
  }

  else if ((v19 & 0x10) != 0)
  {
    goto LABEL_200;
  }

  if ((*&v16 & 0x2000) != 0)
  {
    if ((v19 & 0x2000) == 0 || self->_moviesRank != *(equalCopy + 56))
    {
      goto LABEL_200;
    }
  }

  else if ((v19 & 0x2000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&v16 & 0x10000) != 0)
  {
    if ((v19 & 0x10000) == 0 || self->_tvshowsRank != *(equalCopy + 69))
    {
      goto LABEL_200;
    }
  }

  else if ((v19 & 0x10000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&v16 & 0x100000) != 0)
  {
    if ((v19 & 0x100000) == 0)
    {
      goto LABEL_200;
    }

    if (self->_allowInstallApps)
    {
      if ((*(equalCopy + 297) & 1) == 0)
      {
        goto LABEL_200;
      }
    }

    else if (*(equalCopy + 297))
    {
      goto LABEL_200;
    }
  }

  else if ((v19 & 0x100000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&v16 & 0x80000) != 0)
  {
    if ((v19 & 0x80000) == 0)
    {
      goto LABEL_200;
    }

    if (self->_allowITunes)
    {
      if ((*(equalCopy + 296) & 1) == 0)
      {
        goto LABEL_200;
      }
    }

    else if (*(equalCopy + 296))
    {
      goto LABEL_200;
    }
  }

  else if ((v19 & 0x80000) != 0)
  {
    goto LABEL_200;
  }

  osVersionAndBuild = self->_osVersionAndBuild;
  if (osVersionAndBuild | *(equalCopy + 29) && ![(NSString *)osVersionAndBuild isEqual:?])
  {
    goto LABEL_200;
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier | *(equalCopy + 26))
  {
    if (![(NSString *)localeIdentifier isEqual:?])
    {
      goto LABEL_200;
    }
  }

  v22 = self->_has;
  v23 = *(equalCopy + 76);
  if ((*&v22 & 0x40000) != 0)
  {
    if ((v23 & 0x40000) == 0 || self->_unfilledDuration != *(equalCopy + 71))
    {
      goto LABEL_200;
    }
  }

  else if ((v23 & 0x40000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&v22 & 0x20000) != 0)
  {
    if ((v23 & 0x20000) == 0 || self->_unfilledClientCount != *(equalCopy + 70))
    {
      goto LABEL_200;
    }
  }

  else if ((v23 & 0x20000) != 0)
  {
    goto LABEL_200;
  }

  iTunesStore = self->_iTunesStore;
  if (iTunesStore | *(equalCopy + 21) && ![(NSString *)iTunesStore isEqual:?])
  {
    goto LABEL_200;
  }

  applicationLinkedOnOS = self->_applicationLinkedOnOS;
  if (applicationLinkedOnOS | *(equalCopy + 9))
  {
    if (![(NSString *)applicationLinkedOnOS isEqual:?])
    {
      goto LABEL_200;
    }
  }

  anonymousDemandiAdID = self->_anonymousDemandiAdID;
  if (anonymousDemandiAdID | *(equalCopy + 5))
  {
    if (![(NSData *)anonymousDemandiAdID isEqual:?])
    {
      goto LABEL_200;
    }
  }

  contentiAdID = self->_contentiAdID;
  if (contentiAdID | *(equalCopy + 15))
  {
    if (![(NSData *)contentiAdID isEqual:?])
    {
      goto LABEL_200;
    }
  }

  v28 = self->_has;
  v29 = *(equalCopy + 76);
  if ((*&v28 & 0x40) != 0)
  {
    if ((v29 & 0x40) == 0 || self->_deviceMode != *(equalCopy + 36))
    {
      goto LABEL_200;
    }
  }

  else if ((v29 & 0x40) != 0)
  {
    goto LABEL_200;
  }

  if ((*&v28 & 2) != 0)
  {
    if ((v29 & 2) == 0 || self->_accountType != *(equalCopy + 4))
    {
      goto LABEL_200;
    }
  }

  else if ((v29 & 2) != 0)
  {
    goto LABEL_200;
  }

  dPID = self->_dPID;
  if (dPID | *(equalCopy + 17) && ![(NSData *)dPID isEqual:?])
  {
    goto LABEL_200;
  }

  locality = self->_locality;
  if (locality | *(equalCopy + 27))
  {
    if (![(NSString *)locality isEqual:?])
    {
      goto LABEL_200;
    }
  }

  administrativeArea = self->_administrativeArea;
  if (administrativeArea | *(equalCopy + 3))
  {
    if (![(NSString *)administrativeArea isEqual:?])
    {
      goto LABEL_200;
    }
  }

  subAdministrativeArea = self->_subAdministrativeArea;
  if (subAdministrativeArea | *(equalCopy + 33))
  {
    if (![(NSString *)subAdministrativeArea isEqual:?])
    {
      goto LABEL_200;
    }
  }

  isoCountryCode = self->_isoCountryCode;
  if (isoCountryCode | *(equalCopy + 22))
  {
    if (![(NSString *)isoCountryCode isEqual:?])
    {
      goto LABEL_200;
    }
  }

  postalCode = self->_postalCode;
  if (postalCode | *(equalCopy + 30))
  {
    if (![(NSString *)postalCode isEqual:?])
    {
      goto LABEL_200;
    }
  }

  v36 = self->_has;
  v37 = *(equalCopy + 76);
  if ((*&v36 & 0x1000000) != 0)
  {
    if ((v37 & 0x1000000) == 0)
    {
      goto LABEL_200;
    }

    if (self->_isTest)
    {
      if ((*(equalCopy + 301) & 1) == 0)
      {
        goto LABEL_200;
      }
    }

    else if (*(equalCopy + 301))
    {
      goto LABEL_200;
    }
  }

  else if ((v37 & 0x1000000) != 0)
  {
    goto LABEL_200;
  }

  campaignNameSpace = self->_campaignNameSpace;
  if (campaignNameSpace | *(equalCopy + 11))
  {
    if (![(NSString *)campaignNameSpace isEqual:?])
    {
      goto LABEL_200;
    }

    v36 = self->_has;
  }

  v39 = *(equalCopy + 76);
  if ((*&v36 & 4) != 0)
  {
    if ((v39 & 4) == 0 || self->_advertisingIdentifierMonthResetCount != *(equalCopy + 8))
    {
      goto LABEL_200;
    }
  }

  else if ((v39 & 4) != 0)
  {
    goto LABEL_200;
  }

  if ((*&v36 & 0x2000000) != 0)
  {
    if ((v39 & 0x2000000) == 0)
    {
      goto LABEL_200;
    }

    if (self->_limitAdTracking)
    {
      if ((*(equalCopy + 302) & 1) == 0)
      {
        goto LABEL_200;
      }
    }

    else if (*(equalCopy + 302))
    {
      goto LABEL_200;
    }
  }

  else if ((v39 & 0x2000000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&v36 & 0x400000) == 0)
  {
    if ((v39 & 0x400000) == 0)
    {
      goto LABEL_182;
    }

LABEL_200:
    v40 = 0;
    goto LABEL_201;
  }

  if ((v39 & 0x400000) == 0)
  {
    goto LABEL_200;
  }

  if (self->_internalUserWantsProdAds)
  {
    if ((*(equalCopy + 299) & 1) == 0)
    {
      goto LABEL_200;
    }
  }

  else if (*(equalCopy + 299))
  {
    goto LABEL_200;
  }

LABEL_182:
  if ((*&v36 & 8) != 0)
  {
    if ((v39 & 8) == 0 || self->_appStoreViewAdVersion != *(equalCopy + 14))
    {
      goto LABEL_200;
    }

    v40 = 1;
  }

  else
  {
    v40 = (*(equalCopy + 76) & 8) == 0;
  }

LABEL_201:

  return v40;
}

- (unint64_t)hash
{
  v101 = [(NSString *)self->_deviceModel hash];
  v100 = [(NSString *)self->_appID hash];
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v99 = 2654435761 * self->_runState;
  }

  else
  {
    v99 = 0;
  }

  v98 = [(NSString *)self->_carrierMNC hash];
  v97 = [(NSString *)self->_carrierMCC hash];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
    v96 = 0;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    v95 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    v91 = 0;
    goto LABEL_17;
  }

  v96 = 2654435761 * self->_isOnInternationalDataRoaming;
  if ((*&has & 0x20) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  v95 = 2654435761 * self->_connectionType;
  if ((*&has & 0x8000) == 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  timezone = self->_timezone;
  if (timezone < 0.0)
  {
    timezone = -timezone;
  }

  *v3.i32 = floorf(timezone + 0.5);
  v7 = (timezone - *v3.i32) * 1.8447e19;
  *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v3.i32[0] = vbslq_s8(v8, v4, v3).i32[0];
  v9 = 2654435761u * *v3.i32;
  v10 = v9 + v7;
  if (v7 <= 0.0)
  {
    v10 = 2654435761u * *v3.i32;
  }

  v11 = v9 - fabsf(v7);
  if (v7 >= 0.0)
  {
    v11 = v10;
  }

  v91 = v11;
LABEL_17:
  screenHeight = self->_screenHeight;
  screenWidth = self->_screenWidth;
  screenDPI = self->_screenDPI;
  v90 = [(NSMutableArray *)self->_userKeyboards hash];
  v14 = self->_has;
  if (*&v14)
  {
    clientClockTime = self->_clientClockTime;
    if (clientClockTime < 0.0)
    {
      clientClockTime = -clientClockTime;
    }

    *v12.i64 = floor(clientClockTime + 0.5);
    v17 = (clientClockTime - *v12.i64) * 1.84467441e19;
    *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v12 = vbslq_s8(vnegq_f64(v18), v13, v12);
    v15 = 2654435761u * *v12.i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((*&v14 & 0x400) != 0)
  {
    localLatency = self->_localLatency;
    if (localLatency < 0.0)
    {
      localLatency = -localLatency;
    }

    *v12.i32 = floorf(localLatency + 0.5);
    v21 = (localLatency - *v12.i32) * 1.8447e19;
    *v13.i32 = *v12.i32 - (truncf(*v12.i32 * 5.421e-20) * 1.8447e19);
    v22.i64[0] = 0x8000000080000000;
    v22.i64[1] = 0x8000000080000000;
    v12 = vbslq_s8(v22, v13, v12);
    v19 = 2654435761u * *v12.i32;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v19 += v21;
      }
    }

    else
    {
      v19 -= fabsf(v21);
    }
  }

  else
  {
    v19 = 0;
  }

  if ((*&v14 & 0x800) != 0)
  {
    v87 = 2654435761 * self->_localLatencyCount;
    if ((*&v14 & 0x1000) != 0)
    {
      goto LABEL_35;
    }

LABEL_40:
    v26 = 0;
    goto LABEL_41;
  }

  v87 = 0;
  if ((*&v14 & 0x1000) == 0)
  {
    goto LABEL_40;
  }

LABEL_35:
  localLatencyStddev = self->_localLatencyStddev;
  if (localLatencyStddev < 0.0)
  {
    localLatencyStddev = -localLatencyStddev;
  }

  *v12.i32 = floorf(localLatencyStddev + 0.5);
  v24 = (localLatencyStddev - *v12.i32) * 1.8447e19;
  *v13.i32 = *v12.i32 - (truncf(*v12.i32 * 5.421e-20) * 1.8447e19);
  v25.i64[0] = 0x8000000080000000;
  v25.i64[1] = 0x8000000080000000;
  v12 = vbslq_s8(v25, v13, v12);
  v26 = 2654435761u * *v12.i32;
  if (v24 >= 0.0)
  {
    if (v24 > 0.0)
    {
      v26 += v24;
    }
  }

  else
  {
    v26 -= fabsf(v24);
  }

LABEL_41:
  if ((*&v14 & 0x80) != 0)
  {
    localBandwidth = self->_localBandwidth;
    if (localBandwidth < 0.0)
    {
      localBandwidth = -localBandwidth;
    }

    *v12.i32 = floorf(localBandwidth + 0.5);
    v29 = (localBandwidth - *v12.i32) * 1.8447e19;
    *v13.i32 = *v12.i32 - (truncf(*v12.i32 * 5.421e-20) * 1.8447e19);
    v30.i64[0] = 0x8000000080000000;
    v30.i64[1] = 0x8000000080000000;
    v12 = vbslq_s8(v30, v13, v12);
    v27 = 2654435761u * *v12.i32;
    if (v29 >= 0.0)
    {
      if (v29 > 0.0)
      {
        v27 += v29;
      }
    }

    else
    {
      v27 -= fabsf(v29);
    }
  }

  else
  {
    v27 = 0;
  }

  if ((*&v14 & 0x100) != 0)
  {
    localBandwidthBytes = self->_localBandwidthBytes;
    if (localBandwidthBytes < 0.0)
    {
      localBandwidthBytes = -localBandwidthBytes;
    }

    *v12.i32 = floorf(localBandwidthBytes + 0.5);
    v32 = (localBandwidthBytes - *v12.i32) * 1.8447e19;
    *v13.i32 = *v12.i32 - (truncf(*v12.i32 * 5.421e-20) * 1.8447e19);
    v33.i64[0] = 0x8000000080000000;
    v33.i64[1] = 0x8000000080000000;
    v12 = vbslq_s8(v33, v13, v12);
    v34 = 2654435761u * *v12.i32;
    if (v32 >= 0.0)
    {
      if (v32 > 0.0)
      {
        v34 += v32;
      }
    }

    else
    {
      v34 -= fabsf(v32);
    }

    v84 = v34;
  }

  else
  {
    v84 = 0;
  }

  v89 = v15;
  v88 = v19;
  v85 = v27;
  v86 = v26;
  if ((*&v14 & 0x200) != 0)
  {
    localBandwidthStddev = self->_localBandwidthStddev;
    if (localBandwidthStddev < 0.0)
    {
      localBandwidthStddev = -localBandwidthStddev;
    }

    *v12.i32 = floorf(localBandwidthStddev + 0.5);
    v36 = (localBandwidthStddev - *v12.i32) * 1.8447e19;
    *v13.i32 = *v12.i32 - (truncf(*v12.i32 * 5.421e-20) * 1.8447e19);
    v37.i64[0] = 0x8000000080000000;
    v37.i64[1] = 0x8000000080000000;
    v12.i32[0] = vbslq_s8(v37, v13, v12).i32[0];
    v38 = 2654435761u * *v12.i32;
    v39 = v38 + v36;
    if (v36 <= 0.0)
    {
      v39 = 2654435761u * *v12.i32;
    }

    v40 = v38 - fabsf(v36);
    if (v36 >= 0.0)
    {
      v40 = v39;
    }

    v83 = v40;
  }

  else
  {
    v83 = 0;
  }

  v82 = [(NSData *)self->_iAdID hash];
  v81 = [(NSString *)self->_appVersion hash];
  if ((*(&self->_has + 2) & 0x20) != 0)
  {
    v80 = 2654435761 * self->_denyExplicit;
  }

  else
  {
    v80 = 0;
  }

  v79 = [(NSString *)self->_countryCode hash];
  v41 = self->_has;
  if ((*&v41 & 0x10) != 0)
  {
    v78 = 2654435761 * self->_appsRank;
    if ((*&v41 & 0x2000) != 0)
    {
LABEL_74:
      v77 = 2654435761 * self->_moviesRank;
      if ((*&v41 & 0x10000) != 0)
      {
        goto LABEL_75;
      }

      goto LABEL_80;
    }
  }

  else
  {
    v78 = 0;
    if ((*&v41 & 0x2000) != 0)
    {
      goto LABEL_74;
    }
  }

  v77 = 0;
  if ((*&v41 & 0x10000) != 0)
  {
LABEL_75:
    v75 = 2654435761 * self->_tvshowsRank;
    if ((*&v41 & 0x100000) != 0)
    {
      goto LABEL_76;
    }

LABEL_81:
    v76 = 0;
    if ((*&v41 & 0x80000) != 0)
    {
      goto LABEL_77;
    }

    goto LABEL_82;
  }

LABEL_80:
  v75 = 0;
  if ((*&v41 & 0x100000) == 0)
  {
    goto LABEL_81;
  }

LABEL_76:
  v76 = 2654435761 * self->_allowInstallApps;
  if ((*&v41 & 0x80000) != 0)
  {
LABEL_77:
    v74 = 2654435761 * self->_allowITunes;
    goto LABEL_83;
  }

LABEL_82:
  v74 = 0;
LABEL_83:
  v73 = [(NSString *)self->_osVersionAndBuild hash];
  v72 = [(NSString *)self->_localeIdentifier hash];
  v44 = self->_has;
  if ((*&v44 & 0x40000) != 0)
  {
    unfilledDuration = self->_unfilledDuration;
    if (unfilledDuration < 0.0)
    {
      unfilledDuration = -unfilledDuration;
    }

    *v42.i32 = floorf(unfilledDuration + 0.5);
    v47 = (unfilledDuration - *v42.i32) * 1.8447e19;
    *v43.i32 = *v42.i32 - (truncf(*v42.i32 * 5.421e-20) * 1.8447e19);
    v48.i64[0] = 0x8000000080000000;
    v48.i64[1] = 0x8000000080000000;
    v45 = 2654435761u * *vbslq_s8(v48, v43, v42).i32;
    if (v47 >= 0.0)
    {
      if (v47 > 0.0)
      {
        v45 += v47;
      }
    }

    else
    {
      v45 -= fabsf(v47);
    }
  }

  else
  {
    v45 = 0;
  }

  v71 = v45;
  if ((*&v44 & 0x20000) != 0)
  {
    v70 = 2654435761 * self->_unfilledClientCount;
  }

  else
  {
    v70 = 0;
  }

  v69 = [(NSString *)self->_iTunesStore hash];
  v68 = [(NSString *)self->_applicationLinkedOnOS hash];
  v67 = [(NSData *)self->_anonymousDemandiAdID hash];
  v66 = [(NSData *)self->_contentiAdID hash];
  v49 = self->_has;
  if ((*&v49 & 0x40) != 0)
  {
    v65 = 2654435761 * self->_deviceMode;
    if ((*&v49 & 2) != 0)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v65 = 0;
    if ((*&v49 & 2) != 0)
    {
LABEL_96:
      v64 = 2654435761 * self->_accountType;
      goto LABEL_99;
    }
  }

  v64 = 0;
LABEL_99:
  v50 = [(NSData *)self->_dPID hash];
  v51 = [(NSString *)self->_locality hash];
  v52 = [(NSString *)self->_administrativeArea hash];
  v53 = [(NSString *)self->_subAdministrativeArea hash];
  v54 = [(NSString *)self->_isoCountryCode hash];
  v55 = [(NSString *)self->_postalCode hash];
  if (*(&self->_has + 3))
  {
    v56 = 2654435761 * self->_isTest;
  }

  else
  {
    v56 = 0;
  }

  v57 = [(NSString *)self->_campaignNameSpace hash];
  v58 = self->_has;
  if ((*&v58 & 4) != 0)
  {
    v59 = 2654435761 * self->_advertisingIdentifierMonthResetCount;
    if ((*&v58 & 0x2000000) != 0)
    {
LABEL_104:
      v60 = 2654435761 * self->_limitAdTracking;
      if ((*&v58 & 0x400000) != 0)
      {
        goto LABEL_105;
      }

LABEL_109:
      v61 = 0;
      if ((*&v58 & 8) != 0)
      {
        goto LABEL_106;
      }

LABEL_110:
      v62 = 0;
      return v100 ^ v101 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v91 ^ (2654435761 * screenWidth) ^ (2654435761 * screenHeight) ^ (2654435761 * screenDPI) ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v75 ^ v76 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v50 ^ v51 ^ v52 ^ v53 ^ v54 ^ v55 ^ v56 ^ v57 ^ v59 ^ v60 ^ v61 ^ v62;
    }
  }

  else
  {
    v59 = 0;
    if ((*&v58 & 0x2000000) != 0)
    {
      goto LABEL_104;
    }
  }

  v60 = 0;
  if ((*&v58 & 0x400000) == 0)
  {
    goto LABEL_109;
  }

LABEL_105:
  v61 = 2654435761 * self->_internalUserWantsProdAds;
  if ((*&v58 & 8) == 0)
  {
    goto LABEL_110;
  }

LABEL_106:
  v62 = 2654435761 * self->_appStoreViewAdVersion;
  return v100 ^ v101 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v91 ^ (2654435761 * screenWidth) ^ (2654435761 * screenHeight) ^ (2654435761 * screenDPI) ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v75 ^ v76 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v50 ^ v51 ^ v52 ^ v53 ^ v54 ^ v55 ^ v56 ^ v57 ^ v59 ^ v60 ^ v61 ^ v62;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 19))
  {
    [(APPBRequestProperties *)self setDeviceModel:?];
  }

  if (*(fromCopy + 6))
  {
    [(APPBRequestProperties *)self setAppID:?];
  }

  if ((*(fromCopy + 305) & 0x40) != 0)
  {
    self->_runState = *(fromCopy + 62);
    *&self->_has |= 0x4000u;
  }

  if (*(fromCopy + 13))
  {
    [(APPBRequestProperties *)self setCarrierMNC:?];
  }

  if (*(fromCopy + 12))
  {
    [(APPBRequestProperties *)self setCarrierMCC:?];
  }

  v5 = *(fromCopy + 76);
  if ((v5 & 0x800000) != 0)
  {
    self->_isOnInternationalDataRoaming = *(fromCopy + 300);
    *&self->_has |= 0x800000u;
    v5 = *(fromCopy + 76);
    if ((v5 & 0x20) == 0)
    {
LABEL_13:
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_13;
  }

  self->_connectionType = *(fromCopy + 28);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 76) & 0x8000) != 0)
  {
LABEL_14:
    self->_timezone = *(fromCopy + 68);
    *&self->_has |= 0x8000u;
  }

LABEL_15:
  self->_screenWidth = *(fromCopy + 65);
  self->_screenHeight = *(fromCopy + 64);
  self->_screenDPI = *(fromCopy + 63);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = *(fromCopy + 36);
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(APPBRequestProperties *)self addUserKeyboard:*(*(&v16 + 1) + 8 * i), v16];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v11 = *(fromCopy + 76);
  if (v11)
  {
    self->_clientClockTime = *(fromCopy + 1);
    *&self->_has |= 1u;
    v11 = *(fromCopy + 76);
    if ((v11 & 0x400) == 0)
    {
LABEL_24:
      if ((v11 & 0x800) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_91;
    }
  }

  else if ((v11 & 0x400) == 0)
  {
    goto LABEL_24;
  }

  self->_localLatency = *(fromCopy + 49);
  *&self->_has |= 0x400u;
  v11 = *(fromCopy + 76);
  if ((v11 & 0x800) == 0)
  {
LABEL_25:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_92;
  }

LABEL_91:
  self->_localLatencyCount = *(fromCopy + 50);
  *&self->_has |= 0x800u;
  v11 = *(fromCopy + 76);
  if ((v11 & 0x1000) == 0)
  {
LABEL_26:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_localLatencyStddev = *(fromCopy + 51);
  *&self->_has |= 0x1000u;
  v11 = *(fromCopy + 76);
  if ((v11 & 0x80) == 0)
  {
LABEL_27:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_localBandwidth = *(fromCopy + 46);
  *&self->_has |= 0x80u;
  v11 = *(fromCopy + 76);
  if ((v11 & 0x100) == 0)
  {
LABEL_28:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_94:
  self->_localBandwidthBytes = *(fromCopy + 47);
  *&self->_has |= 0x100u;
  if ((*(fromCopy + 76) & 0x200) != 0)
  {
LABEL_29:
    self->_localBandwidthStddev = *(fromCopy + 48);
    *&self->_has |= 0x200u;
  }

LABEL_30:
  if (*(fromCopy + 20))
  {
    [(APPBRequestProperties *)self setIAdID:?];
  }

  if (*(fromCopy + 8))
  {
    [(APPBRequestProperties *)self setAppVersion:?];
  }

  if ((*(fromCopy + 306) & 0x20) != 0)
  {
    self->_denyExplicit = *(fromCopy + 298);
    *&self->_has |= 0x200000u;
  }

  if (*(fromCopy + 16))
  {
    [(APPBRequestProperties *)self setCountryCode:?];
  }

  v12 = *(fromCopy + 76);
  if ((v12 & 0x10) != 0)
  {
    self->_appsRank = *(fromCopy + 20);
    *&self->_has |= 0x10u;
    v12 = *(fromCopy + 76);
    if ((v12 & 0x2000) == 0)
    {
LABEL_40:
      if ((v12 & 0x10000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_98;
    }
  }

  else if ((v12 & 0x2000) == 0)
  {
    goto LABEL_40;
  }

  self->_moviesRank = *(fromCopy + 56);
  *&self->_has |= 0x2000u;
  v12 = *(fromCopy + 76);
  if ((v12 & 0x10000) == 0)
  {
LABEL_41:
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_99;
  }

LABEL_98:
  self->_tvshowsRank = *(fromCopy + 69);
  *&self->_has |= 0x10000u;
  v12 = *(fromCopy + 76);
  if ((v12 & 0x100000) == 0)
  {
LABEL_42:
    if ((v12 & 0x80000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_99:
  self->_allowInstallApps = *(fromCopy + 297);
  *&self->_has |= 0x100000u;
  if ((*(fromCopy + 76) & 0x80000) != 0)
  {
LABEL_43:
    self->_allowITunes = *(fromCopy + 296);
    *&self->_has |= 0x80000u;
  }

LABEL_44:
  if (*(fromCopy + 29))
  {
    [(APPBRequestProperties *)self setOsVersionAndBuild:?];
  }

  if (*(fromCopy + 26))
  {
    [(APPBRequestProperties *)self setLocaleIdentifier:?];
  }

  v13 = *(fromCopy + 76);
  if ((v13 & 0x40000) != 0)
  {
    self->_unfilledDuration = *(fromCopy + 71);
    *&self->_has |= 0x40000u;
    v13 = *(fromCopy + 76);
  }

  if ((v13 & 0x20000) != 0)
  {
    self->_unfilledClientCount = *(fromCopy + 70);
    *&self->_has |= 0x20000u;
  }

  if (*(fromCopy + 21))
  {
    [(APPBRequestProperties *)self setITunesStore:?];
  }

  if (*(fromCopy + 9))
  {
    [(APPBRequestProperties *)self setApplicationLinkedOnOS:?];
  }

  if (*(fromCopy + 5))
  {
    [(APPBRequestProperties *)self setAnonymousDemandiAdID:?];
  }

  if (*(fromCopy + 15))
  {
    [(APPBRequestProperties *)self setContentiAdID:?];
  }

  v14 = *(fromCopy + 76);
  if ((v14 & 0x40) != 0)
  {
    self->_deviceMode = *(fromCopy + 36);
    *&self->_has |= 0x40u;
    v14 = *(fromCopy + 76);
  }

  if ((v14 & 2) != 0)
  {
    self->_accountType = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 17))
  {
    [(APPBRequestProperties *)self setDPID:?];
  }

  if (*(fromCopy + 27))
  {
    [(APPBRequestProperties *)self setLocality:?];
  }

  if (*(fromCopy + 3))
  {
    [(APPBRequestProperties *)self setAdministrativeArea:?];
  }

  if (*(fromCopy + 33))
  {
    [(APPBRequestProperties *)self setSubAdministrativeArea:?];
  }

  if (*(fromCopy + 22))
  {
    [(APPBRequestProperties *)self setIsoCountryCode:?];
  }

  if (*(fromCopy + 30))
  {
    [(APPBRequestProperties *)self setPostalCode:?];
  }

  if (*(fromCopy + 307))
  {
    self->_isTest = *(fromCopy + 301);
    *&self->_has |= 0x1000000u;
  }

  if (*(fromCopy + 11))
  {
    [(APPBRequestProperties *)self setCampaignNameSpace:?];
  }

  v15 = *(fromCopy + 76);
  if ((v15 & 4) != 0)
  {
    self->_advertisingIdentifierMonthResetCount = *(fromCopy + 8);
    *&self->_has |= 4u;
    v15 = *(fromCopy + 76);
    if ((v15 & 0x2000000) == 0)
    {
LABEL_82:
      if ((v15 & 0x400000) == 0)
      {
        goto LABEL_83;
      }

LABEL_103:
      self->_internalUserWantsProdAds = *(fromCopy + 299);
      *&self->_has |= 0x400000u;
      if ((*(fromCopy + 76) & 8) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_84;
    }
  }

  else if ((v15 & 0x2000000) == 0)
  {
    goto LABEL_82;
  }

  self->_limitAdTracking = *(fromCopy + 302);
  *&self->_has |= 0x2000000u;
  v15 = *(fromCopy + 76);
  if ((v15 & 0x400000) != 0)
  {
    goto LABEL_103;
  }

LABEL_83:
  if ((v15 & 8) != 0)
  {
LABEL_84:
    self->_appStoreViewAdVersion = *(fromCopy + 14);
    *&self->_has |= 8u;
  }

LABEL_85:
}

@end