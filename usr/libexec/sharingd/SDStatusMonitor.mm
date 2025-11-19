@interface SDStatusMonitor
+ (BOOL)enableOOBPCredentialLogging;
+ (SDStatusMonitor)sharedMonitor;
- (BOOL)_isEveryoneModeExpired;
- (BOOL)altDSIDNeedsFixing;
- (BOOL)backlightOn;
- (BOOL)bluetoothEnabled;
- (BOOL)bluetoothEnabledIncludingRestricted;
- (BOOL)bypassLTKeyAbort;
- (BOOL)contactIdentifierIsBlocked:(id)a3;
- (BOOL)contactIsBlocked:(id)a3;
- (BOOL)deviceInBiolockout;
- (BOOL)deviceIsInClassD;
- (BOOL)deviceKeyBagLocked;
- (BOOL)deviceKeyBagUnlocked;
- (BOOL)deviceKeyBagUnlockedAndScreenOn;
- (BOOL)deviceSupportsRanging;
- (BOOL)deviceUIUnlocked;
- (BOOL)eduModeEnabled;
- (BOOL)enableAirDropAdvertising;
- (BOOL)enableAirDropReceiving;
- (BOOL)enableContinuity;
- (BOOL)familyHotspotEnabled;
- (BOOL)finderAirDropEnabled;
- (BOOL)handoffVisible;
- (BOOL)iCloudSharedPhotoLibraryEnabled;
- (BOOL)isAirDropAllowed;
- (BOOL)isAirDropReady;
- (BOOL)isCarKitSessionWireless:(id)a3;
- (BOOL)isClarityBoardEnabled;
- (BOOL)isLocalDeviceMeDevice;
- (BOOL)isScreenOnForBacklightState:(int64_t)a3;
- (BOOL)lostModeEnabled;
- (BOOL)lteConnectionShows4G;
- (BOOL)myAppleIDIsManaged;
- (BOOL)personalHotspotAllowed;
- (BOOL)screenOn;
- (BOOL)screenStateSupportsAirDrop;
- (BOOL)signedIntoPrimaryiCloudAccount;
- (BOOL)simStateReady;
- (BOOL)verifyAndParseValidationRecordData:(id)a3 intoDictionary:(id *)a4;
- (BOOL)wirelessCarPlay;
- (BOOL)wirelessEnabled;
- (CNContact)meCard;
- (NSArray)awdlPeerList;
- (NSArray)myAppleIDEmailAddresses;
- (NSArray)myAppleIDPhoneNumbers;
- (NSData)bluetoothAddress;
- (NSData)myMediumHashes;
- (NSData)myShortHashesForAirDrop;
- (NSDate)lastDeviceUnlockDate;
- (NSDictionary)awdlInfo;
- (NSDictionary)awdlState;
- (NSDictionary)myAppleIDValidationRecord;
- (NSString)bonjourName;
- (NSString)computerName;
- (NSString)consoleUser;
- (NSString)description;
- (NSString)deviceInformation;
- (NSString)discoverableMode;
- (NSString)localHostName;
- (NSString)modelCode;
- (NSString)modelName;
- (NSString)myAccountAppleID;
- (NSString)myAltDSID;
- (NSString)myAppleID;
- (NSString)myAppleIDCommonName;
- (NSString)myAppleIDEmailHash;
- (NSString)myAppleIDPhoneHash;
- (NSString)myEmail;
- (NSString)myGivenName;
- (NSString)myName;
- (NSString)myPrimaryEmail;
- (NSString)netbiosName;
- (NSString)someComputerName;
- (NSString)workgroup;
- (SDAirDropServer)finderServer;
- (SDStatusMonitor)init;
- (SFPowerSource)localPowerSource;
- (__SecCertificate)_copyMyAppleIDCertificate;
- (__SecCertificate)_copyMyAppleIDIntermediateCertificate;
- (__SecCertificate)copyCertificateForRealName:(id)a3;
- (__SecCertificate)copyMyAppleIDCertificate;
- (__SecIdentity)_copyMyAppleIDSecIdentity;
- (__SecIdentity)copyMyAppleIDSecIdentity;
- (__WiFiManagerClient)wifiManager;
- (double)_currentEveryoneModeExpiryInterval;
- (double)_everyoneModeExpiryInterval;
- (id)_everyoneModeExpiryDate;
- (id)_myAppleID;
- (id)addAdditionalInformationToMeCard:(id)a3;
- (id)awdlDevice;
- (id)awdlInfoForPeerWithServiceName:(id)a3;
- (id)awdlNetwork;
- (id)awdlStateInfo;
- (id)commonNameForCertificate:(__SecCertificate *)a3;
- (id)contactHandlesForShortHashes:(id)a3;
- (id)contactWithContactIdentifier:(id)a3;
- (id)contactWithPreferredIdentifierForContacts:(id)a3;
- (id)contactsForEmailHash:(id)a3 phoneHash:(id)a4;
- (id)contactsWithPhoneNumberOrEmail:(id)a3 keys:(id)a4;
- (id)createHostNameKey:(id)a3;
- (id)defaultWiFiDevice;
- (id)emailAddressesForAppleID:(id)a3;
- (id)emailOrPhoneForEmailHash:(id)a3 phoneHash:(id)a4;
- (id)emailsForContact:(id)a3;
- (id)instantMessageEmailsForContact:(id)a3;
- (id)mountPointsForServer:(id)a3;
- (id)newDiscoverableMode;
- (id)odiskMountPointsForServer:(id)a3;
- (id)phoneNumbersForAppleID:(id)a3;
- (id)phoneNumbersForContact:(id)a3;
- (id)reconciledDiscoverableMode;
- (id)serverNameForHost:(id)a3;
- (id)stringForWatchWristState:(int64_t)a3;
- (id)systemMonitor;
- (id)unifiedAppleIDInfo;
- (id)verifiedIdentityForAppleID:(id)a3;
- (id)wifiSSIDForSSIDHash:(id)a3;
- (int)pairedWatchLockState;
- (int64_t)appleIDAccountState;
- (int64_t)autoHotspotState;
- (int64_t)deviceKeyBagState;
- (int64_t)discoverableLevel;
- (int64_t)familyHotspotStateForAltDSID:(id)a3;
- (int64_t)pairedWatchWristState;
- (int64_t)signalStrength;
- (unint64_t)ultraWideBandState;
- (unsigned)networkType;
- (unsigned)systemUIFlags;
- (unsigned)wifiPasswordSharingAvailability;
- (void)_cancelCheckForEveryoneModeExpiry;
- (void)_checkEveryoneModeExpiry;
- (void)_expireEveryoneModeAndOnlySetDefault:(BOOL)a3;
- (void)_scheduleCheckForEveryoneModeExpiry;
- (void)_updateEveryoneModeExpiryDateOnChange:(id)a3;
- (void)activate;
- (void)activateSystemMonitor;
- (void)addPreventExitForLocaleReason:(id)a3;
- (void)addServerName:(id)a3 forHostName:(id)a4;
- (void)appleIDAccountInfoChanged:(id)a3;
- (void)backlight:(id)a3 activatingWithEvent:(id)a4;
- (void)backlight:(id)a3 deactivatingWithEvent:(id)a4;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvents:(id)a5 abortedEvents:(id)a6;
- (void)bluetoothActivatedWithError:(id)a3;
- (void)bluetoothAddressChanged;
- (void)bluetoothDidSetPowerStateWithError:(id)a3;
- (void)bluetoothMonitorInvalidated;
- (void)bluetoothStateChanged;
- (void)cacheCertificate:(__SecCertificate *)a3 forRealName:(id)a4;
- (void)cacheIdentity:(id)a3;
- (void)carplayMonitorDiedNotification:(id)a3;
- (void)carplayStatusNotification:(id)a3;
- (void)cellularDataEnabled:(BOOL *)a3 airplaneMode:(BOOL *)a4;
- (void)clearComputerName;
- (void)clearConsoleUser;
- (void)clearLocalHostName;
- (void)clearMonitorCache;
- (void)clearMyAppleIDInfo;
- (void)clearMyIconAndHash;
- (void)clearWirelessState;
- (void)contactStoreDidChange:(id)a3;
- (void)d2dEncryptionChanged;
- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4;
- (void)fetchDataStatusWithContext:(id)a3;
- (void)fetchLTEShows4GWithContext:(id)a3;
- (void)fetchSIMStatusWithContext:(id)a3;
- (void)fetchSignalStrengthWithContext:(id)a3;
- (void)fetchSubscriptionContextWithCompletion:(id)a3;
- (void)fixAltDSIDIfNeeded;
- (void)forceAWDLDeviceRefresh:(__WiFiDeviceClient *)a3;
- (void)handleAWDLState:(id)a3;
- (void)handleAppleAccountSignIn;
- (void)handleAppleAccountSignOut;
- (void)handleCarKitSessionStateChanged:(id)a3;
- (void)handleDynamicStoreCallback:(__SCDynamicStore *)a3 changedKeys:(__CFArray *)a4;
- (void)handleMISStateChanged:(id)a3;
- (void)handleNameMonitorCallBack:(const char *)a3 flags:(unsigned int)a4 error:(int)a5;
- (void)handleSleepWakeCallBack:(unsigned int)a3 messageArguement:(void *)a4;
- (void)handleWiFiPasswordSharingChanged;
- (void)installAirplaneModeMonitor;
- (void)installAppleIDAccountInfoMonitor;
- (void)installAppleIDUsernameMonitor;
- (void)installBacklightMonitor;
- (void)installBacklightServicesMonitor;
- (void)installBluetoothMonitor;
- (void)installBonjourNameMonitor;
- (void)installCarPlayStatusMonitor;
- (void)installContactsMonitor;
- (void)installCoreTelephonyMonitor;
- (void)installD2DEncryptionMonitor;
- (void)installDynamicStoreCallBack;
- (void)installKeyBagUnlockMonitor;
- (void)installLocaleChangeMonitor;
- (void)installMISMonitor;
- (void)installManagedConfigurationMonitor;
- (void)installMirroringMonitor;
- (void)installSSIDCacheMonitor;
- (void)installSleepWakeCallBack;
- (void)installSmartCoverStatusMonitor;
- (void)installSpringBoardStateMonitor;
- (void)installSystemUIMonitor;
- (void)installUILockStatusMonitor;
- (void)installUltraWideBandStateMonitor;
- (void)installWiFiPasswordSharingMonitor;
- (void)installWifiInterfaceMonitor;
- (void)installWirelessCarPlayMonitor;
- (void)installWirelessMonitor;
- (void)logAirDropTransactionForClientServer:(BOOL)a3 beginEnd:(BOOL)a4 count:(int)a5;
- (void)logWiFiPowerState;
- (void)managedConfigurationSettingsChanged:(id)a3;
- (void)meCardChanged:(id)a3;
- (void)postNotification:(id)a3 userInfo:(id)a4;
- (void)pushDateForPreventExitForLocaleReason:(id)a3 expirationDate:(id)a4;
- (void)reloadSMBConfInfo;
- (void)removePreventExitForLocaleReason:(id)a3;
- (void)removeServerName:(id)a3;
- (void)resetMeCardWithReason:(id)a3;
- (void)restartBonjourNameMonitor;
- (void)retryInstallBluetoothMonitor;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)setAirDropPublished:(BOOL)a3;
- (void)setBluetoothEnabled:(BOOL)a3;
- (void)setDiscoverableMode:(id)a3;
- (void)setFinderServer:(id)a3;
- (void)setODiskMountPoints:(id)a3;
- (void)setServerMountPoints:(id)a3;
- (void)setWirelessEnabled:(BOOL)a3;
- (void)signalStrengthChanged:(id)a3 info:(id)a4;
- (void)simStatusDidChange:(id)a3 status:(id)a4;
- (void)subscriptionInfoDidChange;
- (void)uninstallBonjourNameMonitor;
- (void)uninstallCarPlayStatusMonitor;
- (void)updateAWDLStateInfo;
- (void)updateAirDropAllowed;
- (void)updateAutoHotspotState;
- (void)updateBlacklistedAppBundleIDs;
- (void)updateDataStatus:(id)a3;
- (void)updateDiscoverableMode;
- (void)updateFamilyHotspotState;
- (void)updateLTEShows4G:(BOOL)a3;
- (void)updateLocalPowerSource:(id)a3;
- (void)updateMediaAccessControlSetting:(BOOL)a3;
- (void)updatePairedWatchLockState:(int)a3;
- (void)updatePairedWatchWristState:(int64_t)a3;
- (void)updatePersonalHotspotAllowed;
- (void)updateSIMStatus:(id)a3;
- (void)updateSignalStrength:(id)a3;
- (void)updateWatchWristState:(int64_t)a3;
- (void)updateWifiState:(int64_t)a3;
- (void)updateWirelessCritical:(BOOL)a3;
- (void)updateWirelessDevice;
@end

@implementation SDStatusMonitor

+ (SDStatusMonitor)sharedMonitor
{
  if (qword_10098A348 != -1)
  {
    sub_100006840();
  }

  [qword_10098A350 activate];
  v2 = qword_10098A350;

  return v2;
}

- (void)activate
{
  if (!self->_activateStarted)
  {
    self->_activateStarted = 1;
    [(SDStatusMonitor *)self installSleepStateMonitor];
    [(SDStatusMonitor *)self installManagedConfigurationMonitor];
    [(SDStatusMonitor *)self installFinderSidebarPrefsMonitor];
    [(SDStatusMonitor *)self installWirelessCarPlayMonitor];
    [(SDStatusMonitor *)self installSMBPreferencesMonitor];
    [(SDStatusMonitor *)self installCarPlayStatusMonitor];
    [(SDStatusMonitor *)self installDynamicStoreCallBack];
    [(SDStatusMonitor *)self installLocaleChangeMonitor];
    [(SDStatusMonitor *)self installSpringBoardStateMonitor];
    [(SDStatusMonitor *)self installBacklightServicesMonitor];
    [(SDStatusMonitor *)self installSystemUIMonitor];
    [(SDStatusMonitor *)self installMirroringMonitor];
    [(SDStatusMonitor *)self installDisplaySleepMonitor];
    [(SDStatusMonitor *)self installDisplayConfigurationMonitor];
    [(SDStatusMonitor *)self installClamshellStateChangeMonitor];
    [(SDStatusMonitor *)self installSmartCoverStatusMonitor];
    [(SDStatusMonitor *)self installBonjourNameMonitor];
    if (MKBDeviceUnlockedSinceBoot() == 1)
    {
      self->_deviceWasUnlockedOnce = 1;
      v3 = daemon_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device has already been unlocked", v4, 2u);
      }

      [(SDStatusMonitor *)self installContactsMonitor];
    }

    [(SDStatusMonitor *)self installKeyBagUnlockMonitor];
    [(SDStatusMonitor *)self installUserPictureMonitor];
    [(SDStatusMonitor *)self installUILockStatusMonitor];
    [(SDStatusMonitor *)self installSleepWakeCallBack];
    [(SDStatusMonitor *)self installBluetoothMonitor];
    [(SDStatusMonitor *)self installD2DEncryptionMonitor];
    [(SDStatusMonitor *)self installWirelessMonitor];
    [(SDStatusMonitor *)self installAppleIDAccountInfoMonitor];
    [(SDStatusMonitor *)self installAppleIDUsernameMonitor];
    [(SDStatusMonitor *)self installVolumesMonitor];
    [(SDStatusMonitor *)self installBacklightMonitor];
    [(SDStatusMonitor *)self installSleepNotification];
    [(SDStatusMonitor *)self installWiFiPasswordSharingMonitor];
    [(SDStatusMonitor *)self installWifiInterfaceMonitor];
    [(SDStatusMonitor *)self installSSIDCacheMonitor];
    [(SDStatusMonitor *)self installWristStateMonitor];
    [(SDStatusMonitor *)self installMISMonitor];
    [(SDStatusMonitor *)self installCoreTelephonyMonitor];
    [(SDStatusMonitor *)self installAirplaneModeMonitor];
    [(SDStatusMonitor *)self installUltraWideBandStateMonitor];
    [(SDStatusMonitor *)self installAirPlayPreferencesMonitor];
    [(SDStatusMonitor *)self installLowPowerModeMonitor];
    [(SDStatusMonitor *)self installSystemStateInterfaces];
    self->_multipleUsersLoggedIn = [(SDStatusMonitor *)self _multipleUsersLoggedIn];
    [(SDStatusMonitor *)self activateSystemMonitor];
  }
}

- (unsigned)systemUIFlags
{
  pthread_mutex_lock(&stru_100972F48);
  LODWORD(self) = self->_systemUIFlags;
  pthread_mutex_unlock(&stru_100972F48);
  return self;
}

- (BOOL)screenOn
{
  pthread_mutex_lock(&stru_100972F48);
  screenOn = self->_screenOn;
  if (!screenOn)
  {
    v4 = [(objc_class *)off_100972FA0() sharedBacklight];
    v5 = [v4 backlightState];

    v6 = [NSNumber numberWithBool:[(SDStatusMonitor *)self isScreenOnForBacklightState:v5]];
    v7 = self->_screenOn;
    self->_screenOn = v6;

    screenOn = self->_screenOn;
  }

  v8 = [(NSNumber *)screenOn BOOLValue];
  pthread_mutex_unlock(&stru_100972F48);
  return v8;
}

- (BOOL)iCloudSharedPhotoLibraryEnabled
{
  iCloudSharedPhotoLibraryEnabled = self->_iCloudSharedPhotoLibraryEnabled;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PhotosSharedLibrarySyncingIsActive", @"com.apple.mobileslideshow", 0);
  v5 = AppBooleanValue != 0;
  if (iCloudSharedPhotoLibraryEnabled == v5)
  {
    LOBYTE(v5) = self->_iCloudSharedPhotoLibraryEnabled;
  }

  else
  {
    v6 = AppBooleanValue;
    v7 = daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (iCloudSharedPhotoLibraryEnabled)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      if (v6)
      {
        v8 = @"YES";
      }

      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "iCloud Shared Photo Library enabled: %@ -> %@", &v11, 0x16u);
    }

    self->_iCloudSharedPhotoLibraryEnabled = v5;
  }

  return v5 & 1;
}

- (BOOL)deviceKeyBagUnlocked
{
  v3 = [(SDStatusMonitor *)self deviceKeyBagState];
  v4 = v3 + 8;
  if (v3 + 8) < 0x10 && ((0xFF01u >> v4))
  {
    v5 = 0x8900u >> v4;
  }

  else
  {
    v6 = daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = [(SDStatusMonitor *)self deviceKeyBagState];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unknown keybag state: %ld File a radar against Sharing | all", &v8, 0xCu);
    }

    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (int64_t)deviceKeyBagState
{
  deviceKeyBagState = self->_deviceKeyBagState;
  if (!deviceKeyBagState)
  {
    mkbOptions = self->_mkbOptions;
    v5 = [NSNumber numberWithInt:MKBGetDeviceLockState()];
    v6 = self->_deviceKeyBagState;
    self->_deviceKeyBagState = v5;

    deviceKeyBagState = self->_deviceKeyBagState;
  }

  return [(NSNumber *)deviceKeyBagState integerValue];
}

- (BOOL)deviceKeyBagLocked
{
  v3 = [(SDStatusMonitor *)self deviceKeyBagState];
  v4 = v3 + 8;
  if (v3 + 8) < 0x10 && ((0xFF01u >> v4))
  {
    v5 = 0x76FFu >> v4;
  }

  else
  {
    v6 = daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = [(SDStatusMonitor *)self deviceKeyBagState];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unknown keybag state: %ld File a radar against Sharing | all", &v8, 0xCu);
    }

    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (BOOL)deviceSupportsRanging
{
  wifiDevice = self->_wifiDevice;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = WiFiDeviceClientCopyProperty();
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v22 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v12 + 1) + 8 * i) integerValue] == 58)
        {
          LODWORD(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = @"NO";
    v11 = self->_wifiDevice;
    *buf = 138412802;
    if (v5)
    {
      v10 = @"YES";
    }

    v17 = v10;
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v11;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Device supports ranging %@, capabilities: %@, wifiDevice: %@", buf, 0x20u);
  }

  return v5;
}

- (NSString)deviceInformation
{
  v3 = &NSURLAuthenticationMethodServerTrust_ptr;
  if (!self->_deviceInformation)
  {
    v34[0] = @"BuildVersion";
    v34[1] = @"IsSimulator";
    v34[2] = @"marketing-name";
    v34[3] = @"ProductName";
    v34[4] = @"ProductType";
    v34[5] = @"ProductVersion";
    v34[6] = @"ReleaseType";
    [NSArray arrayWithObjects:v34 count:7];
    v4 = MGCopyMultipleAnswers();
    v5 = [v4 objectForKeyedSubscript:@"IsSimulator"];
    v6 = [v5 BOOLValue];

    v7 = [v4 objectForKeyedSubscript:@"ReleaseType"];
    v8 = v7;
    v9 = @"Production";
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;
    v32 = v10;

    v11 = @"Simulator";
    if (!v6)
    {
      v11 = v10;
    }

    v12 = v11;
    v31 = [v4 objectForKeyedSubscript:@"marketing-name"];
    v13 = [v4 objectForKeyedSubscript:@"ProductType"];
    v14 = [NSString stringWithFormat:@"%@ (%@)", v31, v13];
    v15 = [v4 objectForKeyedSubscript:@"ProductName"];
    v16 = [v4 objectForKeyedSubscript:@"ProductVersion"];
    v17 = [v4 objectForKeyedSubscript:@"BuildVersion"];
    v18 = [NSString stringWithFormat:@"%@ %@ (%@)", v15, v16, v17];
    v19 = [NSString stringWithFormat:@"%@: %@, %@, ", v12, v14, v18];

    deviceInformation = self->_deviceInformation;
    self->_deviceInformation = v19;

    v3 = &NSURLAuthenticationMethodServerTrust_ptr;
  }

  v33[0] = @"BatteryCurrentCapacity";
  v33[1] = @"BatteryIsCharging";
  [NSArray arrayWithObjects:v33 count:2];
  v21 = MGCopyMultipleAnswers();
  v22 = [v21 objectForKeyedSubscript:@"BatteryIsCharging"];
  v23 = [v22 BOOLValue];

  v24 = @"not charging";
  if (v23)
  {
    v24 = @"charging";
  }

  v25 = v24;
  v26 = [v21 objectForKeyedSubscript:@"BatteryCurrentCapacity"];
  v27 = [v26 integerValue];

  v28 = [v3[266] stringWithFormat:@"%d%% (%@)", v27, v25];

  v29 = [(NSString *)self->_deviceInformation stringByAppendingString:v28];

  return v29;
}

- (BOOL)deviceUIUnlocked
{
  deviceUIUnlocked = self->_deviceUIUnlocked;
  if (!deviceUIUnlocked)
  {
    SBSSpringBoardServerPort();
    if (SBGetScreenLockStatus())
    {
      p_super = daemon_log();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        sub_100231F3C();
      }
    }

    else
    {
      v5 = [NSNumber numberWithInt:1];
      p_super = &self->_deviceUIUnlocked->super.super;
      self->_deviceUIUnlocked = v5;
    }

    deviceUIUnlocked = self->_deviceUIUnlocked;
  }

  return [(NSNumber *)deviceUIUnlocked BOOLValue];
}

- (int64_t)pairedWatchWristState
{
  v2 = +[SDPairedDeviceAgent sharedAgent];
  v3 = [v2 wristState];

  return v3;
}

- (unsigned)wifiPasswordSharingAvailability
{
  v3 = [(SDStatusMonitor *)self copyMyAppleIDSecIdentity];
  if (v3)
  {
    CFRelease(v3);
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  v5 = +[MCProfileConnection sharedConnection];
  v6 = [v5 isPasswordProximityAutoFillRequestingAllowed];

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v4 | 0x40;
  }

  if ([(SDStatusMonitor *)self bluetoothEnabled])
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 | 2;
  }

  v9 = [(SDStatusMonitor *)self myAppleID];

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 | 0x20;
  }

  v11 = [(SDStatusMonitor *)self myAppleIDValidationRecord];
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [(SDStatusMonitor *)self myAppleIDValidationRecord];
  v14 = [v13 objectForKeyedSubscript:@"AppleIDAccountValidationRecordData"];

  if (!v14)
  {
LABEL_15:
    v10 |= 8u;
  }

  v15 = daemon_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109120;
    v17[1] = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PWS availability: %ud\n", v17, 8u);
  }

  return v10;
}

- (__SecIdentity)copyMyAppleIDSecIdentity
{
  pthread_mutex_lock(&stru_100972F48);
  v3 = [(SDStatusMonitor *)self _copyMyAppleIDSecIdentity];
  pthread_mutex_unlock(&stru_100972F48);
  return v3;
}

- (__SecIdentity)_copyMyAppleIDSecIdentity
{
  result = self->_myAppleIDSecIdentity;
  if (result)
  {
    goto LABEL_5;
  }

  v4 = [(SDStatusMonitor *)self _myAppleID];
  if (v4)
  {
    v5 = +[SDAppleIDAgent sharedAgent];
    self->_myAppleIDSecIdentity = [v5 copyIdentityForAppleID:v4];
  }

  result = self->_myAppleIDSecIdentity;
  if (result)
  {
LABEL_5:
    CFRetain(result);
    return self->_myAppleIDSecIdentity;
  }

  return result;
}

- (id)_myAppleID
{
  myAppleID = self->_myAppleID;
  if (!myAppleID)
  {
    v4 = objc_alloc_init(ACAccountStore);
    v5 = sub_10001F47C(v4);
    v6 = [v5 username];
    v7 = self->_myAppleID;
    self->_myAppleID = v6;

    myAppleID = self->_myAppleID;
  }

  return myAppleID;
}

- (BOOL)bluetoothEnabled
{
  if (SFDeviceIsVirtualMachine())
  {
    return 1;
  }

  bluetoothController = self->_bluetoothController;
  if (bluetoothController)
  {
    return [(CBController *)bluetoothController bluetoothState]== 5;
  }

  return _SFIsBluetoothEnabled();
}

- (NSString)myAppleID
{
  pthread_mutex_lock(&stru_100972F48);
  v3 = [(SDStatusMonitor *)self _myAppleID];
  pthread_mutex_unlock(&stru_100972F48);

  return v3;
}

- (NSDictionary)myAppleIDValidationRecord
{
  v2 = [(SDStatusMonitor *)self myAppleID];
  if (v2)
  {
    v3 = +[SDAppleIDAgent sharedAgent];
    v4 = [v3 validationRecordInfoForAppleID:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  NSAppendPrintF();
  v16 = 0;
  currentDiscoverableMode = self->_currentDiscoverableMode;
  NSAppendPrintF();
  v3 = v16;

  if ([(SDStatusMonitor *)self isAirDropAvailable])
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  v13 = v4;
  NSAppendPrintF();
  v5 = v3;

  if ([(SDStatusMonitor *)self isAirDropAllowed])
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  v14 = v6;
  NSAppendPrintF();
  v7 = v5;

  if ([(SDStatusMonitor *)self enableAirDropAdvertising])
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  v15 = v8;
  NSAppendPrintF();
  v9 = v7;

  [(SDStatusMonitor *)self enableAirDropReceiving];
  NSAppendPrintF();
  v10 = v9;

  return v9;
}

- (BOOL)isAirDropAllowed
{
  airDropAllowed = self->_airDropAllowed;
  if (!airDropAllowed)
  {
    v4 = +[MCProfileConnection sharedConnection];
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isAirDropAllowed]);
    v6 = self->_airDropAllowed;
    self->_airDropAllowed = v5;

    airDropAllowed = self->_airDropAllowed;
  }

  return [(NSNumber *)airDropAllowed BOOLValue];
}

- (BOOL)enableAirDropAdvertising
{
  if (sub_10000C1F8(@"DisableAirDropAdvertising", 0))
  {
    return 0;
  }

  return [(SDStatusMonitor *)self isAirDropAvailable];
}

- (BOOL)enableAirDropReceiving
{
  v3 = SFIsDeviceAudioAccessory();
  v4 = sub_10000C1F8(@"EnableAirDropReceiving", v3 ^ 1u);
  if (v4)
  {

    LOBYTE(v4) = [(SDStatusMonitor *)self isAirDropAvailable];
  }

  return v4;
}

- (NSString)modelCode
{
  memset(v7, 0, sizeof(v7));
  v5 = 256;
  *v6 = 0x100000006;
  if (sysctl(v6, 2u, v7, &v5, 0, 0))
  {
    v2 = daemon_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100231D90();
    }

    v3 = 0;
  }

  else
  {
    v3 = [NSString stringWithUTF8String:v7];
  }

  return v3;
}

- (BOOL)isClarityBoardEnabled
{
  v2 = +[CLFSystemShellSwitcher sharedSystemShellSwitcher];
  v3 = [v2 isClarityBoardEnabled];

  return v3;
}

- (BOOL)wirelessEnabled
{
  if (SFDeviceIsVirtualMachine())
  {
    return 1;
  }

  else
  {
    pthread_mutex_lock(&stru_100972F48);
    wirelessEnabled = self->_wirelessEnabled;
    pthread_mutex_unlock(&stru_100972F48);
  }

  return wirelessEnabled;
}

- (int64_t)discoverableLevel
{
  v2 = [(SDStatusMonitor *)self discoverableMode];
  if (CFEqual(v2, kSFOperationDiscoverableModeEveryone))
  {
    v3 = 2;
  }

  else
  {
    v3 = CFEqual(v2, kSFOperationDiscoverableModeContactsOnly) != 0;
  }

  return v3;
}

- (NSString)discoverableMode
{
  currentDiscoverableMode = self->_currentDiscoverableMode;
  if (!currentDiscoverableMode)
  {
    [(SDStatusMonitor *)self updateDiscoverableMode];
    currentDiscoverableMode = self->_currentDiscoverableMode;
  }

  return currentDiscoverableMode;
}

- (BOOL)screenStateSupportsAirDrop
{
  v2 = self;
  if ([(SDStatusMonitor *)v2 screenOn])
  {
    v3 = 1;
  }

  else
  {
    v3 = [(SDStatusMonitor *)v2 isMirroringActive];
  }

  return v3;
}

- (int64_t)signalStrength
{
  if (![(SDStatusMonitor *)self networkType])
  {
    return 0;
  }

  pthread_mutex_lock(&stru_100972F48);
  v3 = [(NSNumber *)self->_coreTelephonySignalStrength integerValue];
  pthread_mutex_unlock(&stru_100972F48);
  return v3;
}

- (BOOL)lteConnectionShows4G
{
  pthread_mutex_lock(&stru_100972F48);
  LOBYTE(self) = self->_coreTelephonyLTEShows4G;
  pthread_mutex_unlock(&stru_100972F48);
  return self;
}

- (unsigned)networkType
{
  pthread_mutex_lock(&stru_100972F48);
  v3 = [(CTDataStatus *)self->_coreTelephonyDataStatus indicator];
  v4 = [(CTDataStatus *)self->_coreTelephonyDataStatus indicatorOverride];
  v5 = [(CTDataStatus *)self->_coreTelephonyDataStatus radioTechnology];
  pthread_mutex_unlock(&stru_100972F48);
  if (v3 <= 2)
  {
    if (v5 - 3 < 3)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (v3 == 2)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    if (v3 != 1)
    {
      return v7;
    }
  }

  else if ((v3 - 3) >= 3)
  {
    if (v3 == 7)
    {
      if ([(SDStatusMonitor *)self lteConnectionShows4G])
      {
        return 6;
      }

      else
      {
        return 7;
      }
    }

    else if (v3 == 8)
    {
      return 8;
    }

    else
    {
      return 0;
    }
  }

  else if (v4 == 7)
  {
    return 6;
  }

  else
  {
    return 4;
  }

  return v6;
}

- (SFPowerSource)localPowerSource
{
  v2 = +[SDPairedDeviceAgent sharedAgent];
  v3 = [v2 powerSource];

  return v3;
}

- (BOOL)familyHotspotEnabled
{
  if (!self->_personalHotspotFamilyStates)
  {
    [(SDStatusMonitor *)self updateFamilyHotspotState];
  }

  return self->_personalHotspotFamilyEnabled;
}

- (SDStatusMonitor)init
{
  v33.receiver = self;
  v33.super_class = SDStatusMonitor;
  v2 = [(SDStatusMonitor *)&v33 init];
  v3 = v2;
  if (v2)
  {
    myAppleID = v2->_myAppleID;
    v2->_myAppleID = 0;

    myAppleIDCommonName = v3->_myAppleIDCommonName;
    v3->_myAppleIDCommonName = 0;

    workgroup = v3->_workgroup;
    v3->_workgroup = 0;

    localHostName = v3->_localHostName;
    v3->_localHostName = 0;

    consoleUser = v3->_consoleUser;
    v3->_consoleUser = 0;

    computerName = v3->_computerName;
    v3->_computerName = 0;

    bonjourName = v3->_bonjourName;
    v3->_bonjourName = 0;

    netbiosName = v3->_netbiosName;
    v3->_netbiosName = 0;

    myEmailHashes = v3->_myEmailHashes;
    v3->_myEmailHashes = 0;

    myPhoneHashes = v3->_myPhoneHashes;
    v3->_myPhoneHashes = 0;

    serverNames = v3->_serverNames;
    v3->_serverNames = 0;

    identities = v3->_identities;
    v3->_identities = 0;

    mountPoints = v3->_mountPoints;
    v3->_mountPoints = 0;

    deviceUIUnlocked = v3->_deviceUIUnlocked;
    v3->_deviceUIUnlocked = 0;

    deviceKeyBagState = v3->_deviceKeyBagState;
    v3->_deviceKeyBagState = 0;

    currentDiscoverableMode = v3->_currentDiscoverableMode;
    v3->_currentDiscoverableMode = 0;

    deviceSupportsWAPI = v3->_deviceSupportsWAPI;
    v3->_deviceSupportsWAPI = 0;

    deviceInformation = v3->_deviceInformation;
    v3->_deviceInformation = 0;

    awdlState = v3->_awdlState;
    v3->_awdlState = 0;

    preventLocaleRestart = v3->_preventLocaleRestart;
    v3->_preventLocaleRestart = 0;

    screenOn = v3->_screenOn;
    v3->_screenOn = 0;

    systemMonitor = v3->__systemMonitor;
    v3->__systemMonitor = 0;

    backlightOn = v3->_backlightOn;
    v3->_backlightOn = 0;

    objc_storeWeak(&v3->_finderServer, 0);
    handoffVisible = v3->_handoffVisible;
    v3->_handoffVisible = 0;

    odisksMountPoints = v3->_odisksMountPoints;
    v3->_odisksMountPoints = 0;

    v3->_dynamicStoreSource = 0;
    v3->_smbPreferences = 0;
    v3->_notifyPortRef = 0;
    v3->_nameMonitor = 0;
    v3->_rootPort = 0;
    v3->_myAppleIDIntermediateCertificate = 0;
    *&v3->_myAppleIDCertificate = 0u;
    v3->_wifiDevice = 0;
    *&v3->_awdlDevice = 0u;
    *(&v3->_wifiManager + 7) = 0;
    *&v3->_airDropCount = 0xFFFFFFFF00000000;
    v3->_airPlayPrefsToken = -1;
    v3->_notifierObject = 0;
    v3->_canConnectOn5GHz = -1;
    v3->_consoleUserID = -1;
    v3->_uiLockStatusToken = 0;
    v3->_keyBagUnlockToken = 0;
    v3->_backlightLevelToken = 0;
    v3->_airDropPublished = 0;
    v3->_deviceIsHighPriority = 0;
    v3->_deviceWasUnlockedOnce = 0;
    v3->_finderAirDropEnabled = 0;
    v3->_screenBlankedToken = -1;
    v3->_pairedWatchWristState = 0;
    radiosPreferences = v3->_radiosPreferences;
    v3->_radiosPreferences = 0;

    v34 = @"ExtendedDeviceLockState";
    v35 = &__kCFBooleanTrue;
    v30 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    mkbOptions = v3->_mkbOptions;
    v3->_mkbOptions = v30;

    v3->_sleepModeOn = 0;
    v3->_mediaAccessControlSetting = 0;
  }

  return v3;
}

- (id)systemMonitor
{
  systemMonitor = self->__systemMonitor;
  if (!systemMonitor)
  {
    v4 = objc_alloc_init(CUSystemMonitor);
    v5 = self->__systemMonitor;
    self->__systemMonitor = v4;

    [(CUSystemMonitor *)self->__systemMonitor setMeDeviceUseFindMyLocate:1];
    [(CUSystemMonitor *)self->__systemMonitor setMeDeviceChangedHandler:&stru_1008D4D18];
    [(CUSystemMonitor *)self->__systemMonitor setDispatchQueue:&_dispatch_main_q];
    systemMonitor = self->__systemMonitor;
  }

  return systemMonitor;
}

- (void)activateSystemMonitor
{
  v2 = [(SDStatusMonitor *)self systemMonitor];
  [v2 activateWithCompletion:0];
}

- (void)clearMonitorCache
{
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "clearMonitorCache", v16, 2u);
  }

  bonjourName = self->_bonjourName;
  self->_bonjourName = 0;

  computerName = self->_computerName;
  self->_computerName = 0;

  consoleUser = self->_consoleUser;
  self->_consoleUser = 0;

  localHostName = self->_localHostName;
  self->_localHostName = 0;

  netbiosName = self->_netbiosName;
  self->_netbiosName = 0;

  screenOn = self->_screenOn;
  self->_screenOn = 0;

  backlightOn = self->_backlightOn;
  self->_backlightOn = 0;

  workgroup = self->_workgroup;
  self->_workgroup = 0;

  myAppleIDCertificate = self->_myAppleIDCertificate;
  if (myAppleIDCertificate)
  {
    CFRelease(myAppleIDCertificate);
    self->_myAppleIDCertificate = 0;
  }

  myAppleIDIntermediateCertificate = self->_myAppleIDIntermediateCertificate;
  if (myAppleIDIntermediateCertificate)
  {
    CFRelease(myAppleIDIntermediateCertificate);
    self->_myAppleIDIntermediateCertificate = 0;
  }

  myAppleIDSecIdentity = self->_myAppleIDSecIdentity;
  if (myAppleIDSecIdentity)
  {
    CFRelease(myAppleIDSecIdentity);
    self->_myAppleIDSecIdentity = 0;
  }

  v15 = [NSString stringWithUTF8String:"[SDStatusMonitor clearMonitorCache]"];
  [(SDStatusMonitor *)self resetMeCardWithReason:v15];
}

- (void)addServerName:(id)a3 forHostName:(id)a4
{
  v10 = a3;
  v6 = a4;
  pthread_mutex_lock(&stru_100972F48);
  if (!self->_serverNames)
  {
    v7 = objc_opt_new();
    serverNames = self->_serverNames;
    self->_serverNames = v7;
  }

  v9 = [(SDStatusMonitor *)self createHostNameKey:v6];
  if (v9)
  {
    [(NSMutableDictionary *)self->_serverNames setValue:v10 forKey:v9];
  }

  pthread_mutex_unlock(&stru_100972F48);
}

- (id)createHostNameKey:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = [v3 lowercaseString];

  v6 = [v5 mutableCopy];
  if ([v6 hasSuffix:@"."])
  {
    [v6 deleteCharactersInRange:{v4 - 1, 1}];
  }

  return v6;
}

- (BOOL)isAirDropReady
{
  v3 = [(SDStatusMonitor *)self wirelessEnabled];
  v4 = [(SDStatusMonitor *)self wirelessCarPlay];
  v5 = [(SDStatusMonitor *)self bluetoothEnabledIncludingRestricted];
  v6 = [(SDStatusMonitor *)self enableAirDropReceiving];
  IsVirtualMachine = SFDeviceIsVirtualMachine();
  v8 = [(SDStatusMonitor *)self isClarityBoardEnabled];
  v9 = [(SDStatusMonitor *)self isMulticastAdvertisementsDisabled];
  v10 = v6 & v5 & v3 ^ 1 | v4 | v8 | v9;
  if (v10)
  {
    v11 = v9;
    v12 = airdrop_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67110400;
      v14[1] = v3 & 1;
      v15 = 1024;
      v16 = v5 & 1;
      v17 = 1024;
      v18 = v4 & 1;
      v19 = 1024;
      v20 = v6;
      v21 = 1024;
      v22 = IsVirtualMachine;
      v23 = 1024;
      v24 = v11 & 1;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AirDrop not ready: wifi=%d, bluetooth=%d, carplay=%d, receivingEnabled=%d, isVirtualMachine=%d isMulticastAdvertisementsDisabled=%d", v14, 0x26u);
    }
  }

  return (v10 & 1) == 0;
}

- (id)mountPointsForServer:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&stru_100972F48);
  v5 = [(NSDictionary *)self->_mountPoints objectForKeyedSubscript:v4];

  v6 = [v5 copy];
  pthread_mutex_unlock(&stru_100972F48);

  return v6;
}

- (id)newDiscoverableMode
{
  if ([(SDStatusMonitor *)self isAirDropAllowed])
  {
    if ([(SDStatusMonitor *)self isAirDropReady])
    {
      v3 = [(SDStatusMonitor *)self reconciledDiscoverableMode];
      if (![v3 isEqual:kSFOperationDiscoverableModeContactsOnly])
      {
        return v3;
      }

      v4 = [(SDStatusMonitor *)self appleIDAccountState];
      v5 = [(SDStatusMonitor *)self eduModeEnabled];
      v6 = v5;
      if (v4 == 1 && !v5)
      {
        return v3;
      }

      v10 = airdrop_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (v4 > 0xE)
        {
          v11 = @"?";
        }

        else
        {
          v11 = *(&off_1008D50A0 + v4);
        }

        v13 = 138412546;
        v14 = v11;
        v15 = 1024;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Discoverable mode off: appleIDAccountState=%@ eduModeEnabled=%d", &v13, 0x12u);
      }

      v12 = kSFOperationDiscoverableModeOff;
      return v12;
    }

    v8 = &kSFOperationDiscoverableModeOff;
  }

  else
  {
    v8 = &kSFOperationDiscoverableModeDisabled;
  }

  v9 = *v8;

  return v9;
}

- (id)odiskMountPointsForServer:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&stru_100972F48);
  v5 = [(NSDictionary *)self->_odisksMountPoints objectForKeyedSubscript:v4];

  v6 = [v5 copy];
  pthread_mutex_unlock(&stru_100972F48);

  return v6;
}

- (id)reconciledDiscoverableMode
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:kSFOperationDiscoverableModeKey];
  if (v4)
  {
    v5 = v4;
    v6 = @"User Defaults";
  }

  else
  {
    v5 = [(SDStatusMonitor *)self defaultDiscoverableMode];
    v6 = @"Default";
  }

  v7 = airdrop_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Reconciled discoverable mode: %@ (%@)", &v9, 0x16u);
  }

  return v5;
}

- (void)removeServerName:(id)a3
{
  v5 = a3;
  pthread_mutex_lock(&stru_100972F48);
  if (self->_serverNames)
  {
    v4 = [(SDStatusMonitor *)self createHostNameKey:v5];
    if (v4)
    {
      [(NSMutableDictionary *)self->_serverNames removeObjectForKey:v4];
    }
  }

  pthread_mutex_unlock(&stru_100972F48);
}

- (id)serverNameForHost:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&stru_100972F48);
  if (self->_serverNames)
  {
    v5 = [(SDStatusMonitor *)self createHostNameKey:v4];
    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->_serverNames objectForKeyedSubscript:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_unlock(&stru_100972F48);

  return v6;
}

- (void)setODiskMountPoints:(id)a3
{
  v5 = a3;
  pthread_mutex_lock(&stru_100972F48);
  if (sub_100118058(self->_odisksMountPoints, v5))
  {
    objc_storeStrong(&self->_odisksMountPoints, a3);
    pthread_mutex_unlock(&stru_100972F48);
    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.ODiskMountPointsChanged"];
  }

  else
  {
    pthread_mutex_unlock(&stru_100972F48);
  }
}

- (void)setDiscoverableMode:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&stru_100972F48);
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setObject:v4 forKey:kSFOperationDiscoverableModeKey];

  [v5 synchronize];
  pthread_mutex_unlock(&stru_100972F48);
  [(SDStatusMonitor *)self updateDiscoverableMode];
}

- (void)setServerMountPoints:(id)a3
{
  v5 = a3;
  pthread_mutex_lock(&stru_100972F48);
  if (sub_100118058(self->_mountPoints, v5))
  {
    objc_storeStrong(&self->_mountPoints, a3);
    pthread_mutex_unlock(&stru_100972F48);
    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.MountPointsChanged"];
  }

  else
  {
    pthread_mutex_unlock(&stru_100972F48);
  }
}

- (void)updateDiscoverableMode
{
  [(SDStatusMonitor *)self _checkEveryoneModeExpiry];
  v3 = [(SDStatusMonitor *)self newDiscoverableMode];
  pthread_mutex_lock(&stru_100972F48);
  v4 = self->_currentDiscoverableMode;
  v5 = [v3 isEqual:v4];
  objc_storeStrong(&self->_currentDiscoverableMode, v3);
  pthread_mutex_unlock(&stru_100972F48);
  if ((v5 & 1) == 0 && v4)
  {
    [(SDStatusMonitor *)self _updateEveryoneModeExpiryDateOnChange:v3];
  }

  if ((v5 & 1) == 0)
  {
    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.DiscoverableModeChanged"];
    if (self->_airDropModeNotifyToken != -1)
    {
      if ([v3 isEqual:kSFOperationDiscoverableModeOff])
      {
        v6 = 1;
      }

      else if ([v3 isEqual:kSFOperationDiscoverableModeContactsOnly])
      {
        v6 = 2;
      }

      else if ([v3 isEqual:kSFOperationDiscoverableModeEveryone])
      {
        v6 = 3;
      }

      else
      {
        v6 = [v3 isEqual:kSFOperationDiscoverableModeDisabled];
      }

      notify_set_state(self->_airDropModeNotifyToken, v6);
      notify_post("com.apple.sharing.airdrop-mode-changed");
    }

    v7 = airdrop_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Discoverable mode changed from %@ to %@, posting notification", &v8, 0x16u);
    }
  }
}

- (int64_t)appleIDAccountState
{
  v3 = [(SDStatusMonitor *)self myAppleID];

  if (v3)
  {
    v4 = +[SDAppleIDAgent sharedAgent];
    v5 = [(SDStatusMonitor *)self myAppleID];
    v6 = [v4 accountStatusForAppleID:v5];

    v7 = [v6 objectForKeyedSubscript:@"AccountState"];
    v8 = CFGetInt64();
  }

  else
  {
    v8 = 13;
  }

  v9 = airdrop_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v8 > 0xE)
    {
      v10 = @"?";
    }

    else
    {
      v10 = *(&off_1008D50A0 + v8);
    }

    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Apple ID account state: %@", &v12, 0xCu);
  }

  return v8;
}

- (BOOL)verifyAndParseValidationRecordData:(id)a3 intoDictionary:(id *)a4
{
  v5 = a3;
  mach_absolute_time();
  v6 = SFAppleIDParseValidationRecordDataSync();

  if (v6)
  {
    v7 = airdrop_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      mach_absolute_time();
      v10 = 134217984;
      v11 = UpTicksToMilliseconds();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Verified validation record data (%ld ms)\n", &v10, 0xCu);
    }

    if (a4)
    {
      v8 = v6;
      *a4 = v6;
    }
  }

  return v6 != 0;
}

- (void)cacheCertificate:(__SecCertificate *)a3 forRealName:(id)a4
{
  v9 = a4;
  pthread_mutex_lock(&stru_100972F48);
  if (!self->_certificates)
  {
    v6 = objc_opt_new();
    certificates = self->_certificates;
    self->_certificates = v6;
  }

  v8 = [v9 lowercaseString];
  if (v8)
  {
    [(NSMutableDictionary *)self->_certificates setValue:a3 forKey:v8];
  }

  pthread_mutex_unlock(&stru_100972F48);
}

- (void)cacheIdentity:(id)a3
{
  v8 = a3;
  pthread_mutex_lock(&stru_100972F48);
  if (!self->_identities)
  {
    v4 = objc_opt_new();
    identities = self->_identities;
    self->_identities = v4;
  }

  v6 = [v8 emailOrPhone];
  v7 = [v6 lowercaseString];

  if (v7)
  {
    [(NSMutableDictionary *)self->_identities setValue:v8 forKey:v7];
  }

  pthread_mutex_unlock(&stru_100972F48);
}

- (void)clearMyAppleIDInfo
{
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clear my Apple ID called", v12, 2u);
  }

  pthread_mutex_lock(&stru_100972F48);
  myAppleID = self->_myAppleID;
  self->_myAppleID = 0;

  myAppleIDCommonName = self->_myAppleIDCommonName;
  self->_myAppleIDCommonName = 0;

  myEmailHashes = self->_myEmailHashes;
  self->_myEmailHashes = 0;

  myPhoneHashes = self->_myPhoneHashes;
  self->_myPhoneHashes = 0;

  myAppleIDCertificate = self->_myAppleIDCertificate;
  if (myAppleIDCertificate)
  {
    CFRelease(myAppleIDCertificate);
    self->_myAppleIDCertificate = 0;
  }

  myAppleIDIntermediateCertificate = self->_myAppleIDIntermediateCertificate;
  if (myAppleIDIntermediateCertificate)
  {
    CFRelease(myAppleIDIntermediateCertificate);
    self->_myAppleIDIntermediateCertificate = 0;
  }

  myAppleIDSecIdentity = self->_myAppleIDSecIdentity;
  if (myAppleIDSecIdentity)
  {
    CFRelease(myAppleIDSecIdentity);
    self->_myAppleIDSecIdentity = 0;
  }

  v11 = [NSString stringWithUTF8String:"[SDStatusMonitor clearMyAppleIDInfo]"];
  [(SDStatusMonitor *)self resetMeCardWithReason:v11];

  pthread_mutex_unlock(&stru_100972F48);
}

- (id)commonNameForCertificate:(__SecCertificate *)a3
{
  v3 = SecCertificateCopyCommonNames();
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3))
    {
      v5 = CFArrayGetValueAtIndex(v4, 0);
    }

    else
    {
      v7 = daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100231830();
      }

      v5 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10023186C();
    }

    v5 = 0;
  }

  return v5;
}

- (__SecCertificate)copyCertificateForRealName:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&stru_100972F48);
  v5 = [v4 lowercaseString];

  v6 = [(NSMutableDictionary *)self->_certificates objectForKeyedSubscript:v5];

  pthread_mutex_unlock(&stru_100972F48);
  return v6;
}

- (__SecCertificate)copyMyAppleIDCertificate
{
  pthread_mutex_lock(&stru_100972F48);
  v3 = [(SDStatusMonitor *)self _copyMyAppleIDCertificate];
  pthread_mutex_unlock(&stru_100972F48);
  return v3;
}

- (__SecCertificate)_copyMyAppleIDCertificate
{
  if (!self->_myAppleIDCertificate)
  {
    v3 = +[SDAppleIDAgent sharedAgent];
    v4 = [v3 myAccount];

    if (v4)
    {
      v5 = [v4 identity];
      self->_myAppleIDCertificate = [v5 copyCertificate];
    }
  }

  result = self->_myAppleIDIntermediateCertificate;
  if (result)
  {
    CFRetain(result);
    return self->_myAppleIDIntermediateCertificate;
  }

  return result;
}

- (__SecCertificate)_copyMyAppleIDIntermediateCertificate
{
  pthread_mutex_lock(&stru_100972F48);
  myAppleIDIntermediateCertificate = self->_myAppleIDIntermediateCertificate;
  pthread_mutex_unlock(&stru_100972F48);
  if (!myAppleIDIntermediateCertificate)
  {
    v4 = +[SDAppleIDAgent sharedAgent];
    v5 = [v4 myAccount];

    if (v5)
    {
      v6 = [v5 identity];
      v7 = [v6 copyIntermediateCertificate];

      pthread_mutex_lock(&stru_100972F48);
      self->_myAppleIDIntermediateCertificate = v7;
      pthread_mutex_unlock(&stru_100972F48);
    }
  }

  pthread_mutex_lock(&stru_100972F48);
  v8 = self->_myAppleIDIntermediateCertificate;
  if (v8)
  {
    CFRetain(v8);
    v9 = self->_myAppleIDIntermediateCertificate;
  }

  else
  {
    v9 = 0;
  }

  pthread_mutex_unlock(&stru_100972F48);
  return v9;
}

- (id)emailAddressesForAppleID:(id)a3
{
  v3 = a3;
  v4 = +[SDAppleIDAgent sharedAgent];
  v5 = [v4 accountForAppleID:v3];

  v6 = [v5 contactInfo];
  v7 = [v6 validatedEmailAddresses];

  return v7;
}

- (void)fixAltDSIDIfNeeded
{
  if ([(SDStatusMonitor *)self altDSIDNeedsFixing])
  {
    v3 = objc_alloc_init(ACAccountStore);
    v4 = sub_10001F47C(v3);
    if (v4)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1002247DC;
      v7[3] = &unk_1008D4D40;
      v8 = v3;
      v9 = v4;
      v10 = self;
      [v8 aa_updatePropertiesForAppleAccount:v9 completion:v7];

      v5 = v8;
    }

    else
    {
      v5 = tethering_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No primary account, not fixing appleID", v6, 2u);
      }
    }
  }
}

- (void)handleAppleAccountSignIn
{
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Apple Account signed in", v4, 2u);
  }

  [(SDStatusMonitor *)self clearMyAppleIDInfo];
  [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.AppleAccountSignIn"];
}

- (void)handleAppleAccountSignOut
{
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Apple Account signed out", v4, 2u);
  }

  [(SDStatusMonitor *)self clearMyAppleIDInfo];
  [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.AppleAccountSignOut"];
}

- (id)phoneNumbersForAppleID:(id)a3
{
  v3 = a3;
  v4 = +[SDAppleIDAgent sharedAgent];
  v5 = [v4 accountForAppleID:v3];

  v6 = [v5 contactInfo];
  v7 = [v6 validatedPhoneNumbers];

  return v7;
}

- (id)unifiedAppleIDInfo
{
  v3 = [(SDStatusMonitor *)self copyMyAppleIDSecIdentity];
  if (v3)
  {
    v4 = v3;
    v5 = [(SDStatusMonitor *)self myAppleIDEmailAddresses];
    v30 = [(SDStatusMonitor *)self myAppleIDPhoneNumbers];
    if (-[NSObject count](v5, "count") || [v30 count])
    {
      v6 = objc_opt_new();
      v7 = objc_opt_new();
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v37;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v37 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = sub_1001F25F8(*(*(&v36 + 1) + 8 * i), 1);
            if (([v6 containsObject:v13]& 1) == 0)
            {
              [v6 addObject:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v10);
      }

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v14 = v30;
      v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v33;
        do
        {
          for (j = 0; j != v16; j = j + 1)
          {
            if (*v33 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = sub_1001F26EC(*(*(&v32 + 1) + 8 * j));
            if (v19 && ([v7 containsObject:v19] & 1) == 0)
            {
              [v7 addObject:v19];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v16);
      }

      v20 = [v6 count];
      v21 = [v7 count];
      if (v20 | v21)
      {
        v22 = v21;
        v23 = objc_opt_new();
        if (v20 <= v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = v20;
        }

        if (v24)
        {
          for (k = 0; k != v24; ++k)
          {
            if (k < v20)
            {
              v26 = [v6 objectAtIndexedSubscript:k];
              [v23 addObject:v26];
            }

            if (k < v22)
            {
              v27 = [v7 objectAtIndexedSubscript:k];
              [v23 addObject:v27];
            }
          }
        }
      }

      else
      {
        v28 = daemon_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "No normalized emails or phone numbers", buf, 2u);
        }

        v23 = 0;
      }
    }

    else
    {
      v6 = daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No emails or phone numbers", buf, 2u);
      }

      v23 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v5 = daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No Apple ID certificate", buf, 2u);
    }

    v23 = 0;
  }

  return v23;
}

- (id)verifiedIdentityForAppleID:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&stru_100972F48);
  v5 = [v4 lowercaseString];

  v6 = [(NSMutableDictionary *)self->_identities objectForKeyedSubscript:v5];
  pthread_mutex_unlock(&stru_100972F48);

  return v6;
}

- (id)awdlDevice
{
  awdlDevice = self->_awdlDevice;
  if (!awdlDevice)
  {
    [(SDStatusMonitor *)self updateWirelessDevice];
    awdlDevice = self->_awdlDevice;
  }

  return awdlDevice;
}

- (id)awdlInfoForPeerWithServiceName:(id)a3
{
  v4 = a3;
  [(SDStatusMonitor *)self awdlPeerList];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v28 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v9 = &kSFNodeProtocolWebDAVS_ptr;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = v9[214];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v11;
          v14 = [v13 objectForKeyedSubscript:@"STATION_AWDL_SERVICES"];
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v22;
            while (2)
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v22 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                if ([*(*(&v21 + 1) + 8 * j) containsString:v4])
                {

                  goto LABEL_21;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v9 = &kSFNodeProtocolWebDAVS_ptr;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      v13 = 0;
    }

    while (v7);
  }

  else
  {
    v13 = 0;
  }

LABEL_21:

  return v13;
}

- (id)awdlNetwork
{
  v16 = 0;
  if (self->_wifiDevice && !WiFiDeviceClientCopyHostedNetworks())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v16;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = WiFiNetworkGetProperty();
          v10 = v9;
          if (v9 && [v9 intValue] == 4)
          {
            v2 = v8;

            goto LABEL_15;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v2 = 0;
LABEL_15:
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSDictionary)awdlState
{
  pthread_mutex_lock(&stru_100972F48);
  v3 = [(NSDictionary *)self->_awdlState copy];
  pthread_mutex_unlock(&stru_100972F48);

  return v3;
}

- (id)addAdditionalInformationToMeCard:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = [(SDStatusMonitor *)self _myAppleID];
  if (v5)
  {
    v6 = +[SDAppleIDAgent sharedAgent];
    v7 = [v6 accountForAppleID:v5];

    if (v7)
    {
      v8 = [v4 givenName];
      v9 = [v8 length];

      if (!v9)
      {
        v10 = [v7 contactInfo];
        v11 = [v10 firstName];
        [v4 setGivenName:v11];
      }

      v50 = v5;
      v12 = [v4 familyName];
      v13 = [v12 length];

      if (!v13)
      {
        v14 = [v7 contactInfo];
        v15 = [v14 lastName];
        [v4 setFamilyName:v15];
      }

      v52 = v4;
      v16 = [v4 phoneNumbers];
      v17 = [NSMutableArray arrayWithArray:v16];

      v51 = v7;
      v18 = [v7 contactInfo];
      v19 = [v18 validatedPhoneNumbers];

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v57 objects:v70 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v58;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v58 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v57 + 1) + 8 * i);
            v26 = [CNLabeledValue alloc];
            v27 = [CNPhoneNumber phoneNumberWithStringValue:v25];
            v28 = [v26 initWithLabel:&stru_1008EFBD0 value:v27];

            [v17 addObject:v28];
          }

          v22 = [v20 countByEnumeratingWithState:&v57 objects:v70 count:16];
        }

        while (v22);
      }

      [v52 setPhoneNumbers:v17];
      v29 = [v52 emailAddresses];
      v30 = [NSMutableArray arrayWithArray:v29];

      v31 = [v7 contactInfo];
      v32 = [v31 validatedEmailAddresses];

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v33 = v32;
      v34 = [v33 countByEnumeratingWithState:&v53 objects:v69 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v54;
        do
        {
          for (j = 0; j != v35; j = j + 1)
          {
            if (*v54 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = [[CNLabeledValue alloc] initWithLabel:&stru_1008EFBD0 value:*(*(&v53 + 1) + 8 * j)];
            [v30 addObject:v38];
          }

          v35 = [v33 countByEnumeratingWithState:&v53 objects:v69 count:16];
        }

        while (v35);
      }

      v4 = v52;
      [v52 setEmailAddresses:v30];
      v39 = daemon_log();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [v52 givenName];
        v41 = [v52 familyName];
        v42 = [v20 componentsJoinedByString:{@", "}];
        v43 = [v33 componentsJoinedByString:{@", "}];
        *buf = 138413059;
        v62 = v40;
        v63 = 2112;
        v64 = v41;
        v65 = 2113;
        v66 = v42;
        v67 = 2113;
        v68 = v43;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Enhanced meCard: fn=%@,ln=%@,pnums=[%{private}@],emails=[%{private}@]", buf, 0x2Au);

        v4 = v52;
      }

      v44 = v4;
      v5 = v50;
      v7 = v51;
    }

    else
    {
      v47 = daemon_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_10023199C();
      }

      v48 = v4;
    }
  }

  else
  {
    v45 = daemon_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_100231A24();
    }

    v46 = v4;
  }

  return v4;
}

- (void)clearMyIconAndHash
{
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clear my icon and hash requested", v5, 2u);
  }

  pthread_mutex_lock(&stru_100972F48);
  v4 = [NSString stringWithUTF8String:"[SDStatusMonitor clearMyIconAndHash]"];
  [(SDStatusMonitor *)self resetMeCardWithReason:v4];

  pthread_mutex_unlock(&stru_100972F48);
}

- (id)contactsForEmailHash:(id)a3 phoneHash:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  if (v6)
  {
    v9 = [(SDAirDropContactHashManager *)self->_contactHashManager contactsForCombinedHash:v6];
    [v8 unionSet:v9];
  }

  if (v7)
  {
    v10 = [(SDAirDropContactHashManager *)self->_contactHashManager contactsForCombinedHash:v7];
    [v8 unionSet:v10];
  }

  v11 = [NSSet setWithSet:v8];

  return v11;
}

- (BOOL)contactIdentifierIsBlocked:(id)a3
{
  v11[0] = CNContactPhoneNumbersKey;
  v11[1] = CNContactEmailAddressesKey;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:v11 count:2];
  contactStore = self->_contactStore;
  v10 = 0;
  v7 = [(CNContactStore *)contactStore unifiedContactWithIdentifier:v4 keysToFetch:v5 error:&v10];

  if (v7)
  {
    v8 = [(SDStatusMonitor *)self contactIsBlocked:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)contactIsBlocked:(id)a3
{
  v3 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = [v3 emailAddresses];
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        v10 = [(objc_class *)off_100972F88() sharedPrivacyManager];
        v11 = [v9 value];
        v12 = [v10 isIncomingCommunicationBlockedForEmailAddress:v11];

        if (v12)
        {
          v13 = airdrop_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v9 value];
            *buf = 141558275;
            v40 = 1752392040;
            v41 = 2113;
            v42 = v24;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Incoming communications blocked for email address %{private, mask.hash}@", buf, 0x16u);
          }

LABEL_23:

          LOBYTE(v13) = 1;
          goto LABEL_24;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [v3 phoneNumbers];
  v13 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v13)
  {
    v28 = v3;
    v29 = *v31;
    while (2)
    {
      for (j = 0; j != v13; j = (j + 1))
      {
        if (*v31 != v29)
        {
          objc_enumerationMutation(v4);
        }

        v15 = v4;
        v16 = *(*(&v30 + 1) + 8 * j);
        v17 = [(objc_class *)off_100972F88() sharedPrivacyManager];
        v18 = off_100972F90();
        v19 = [v16 value];
        v20 = [v19 stringValue];
        v21 = off_1009731B0();
        v22 = [(objc_class *)v18 phoneNumberWithDigits:v20 countryCode:v21];
        v23 = [v17 isIncomingCommunicationBlockedForPhoneNumber:v22];

        if (v23)
        {
          v13 = airdrop_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v16 value];
            v26 = [v25 stringValue];
            *buf = 141558275;
            v40 = 1752392040;
            v41 = 2113;
            v42 = v26;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Incoming communications blocked for phone number %{private, mask.hash}@", buf, 0x16u);
          }

          v3 = v28;
          v4 = v15;
          goto LABEL_23;
        }

        v4 = v15;
      }

      v13 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v3 = v28;
  }

LABEL_24:

  return v13;
}

- (id)contactHandlesForShortHashes:(id)a3
{
  v4 = a3;
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Querying handles for short hashes %@", &v8, 0xCu);
  }

  v6 = [(SDAirDropContactHashManager *)self->_contactHashManager contactHandlesForShortHashes:v4];

  return v6;
}

- (id)contactWithPreferredIdentifierForContacts:(id)a3
{
  v4 = a3;
  v5 = [v4 anyObject];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    obj = v6;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [(SDStatusMonitor *)self meCard];
        v13 = [v12 identifier];
        v14 = [v11 identifier];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          v20 = [(SDStatusMonitor *)self meCard];
          v6 = obj;

          goto LABEL_13;
        }

        v16 = [v5 identifier];
        v17 = [v11 identifier];
        v18 = [v16 compare:v17];

        if (v18 == 1)
        {
          v19 = v11;

          v5 = v19;
        }
      }

      v6 = obj;
      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v5 = v5;
  v20 = v5;
LABEL_13:

  return v20;
}

- (id)contactsWithPhoneNumberOrEmail:(id)a3 keys:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(SDStatusMonitor *)self isEmail:v7])
  {
    v8 = [CNContact predicateForContactsMatchingEmailAddress:v7];
  }

  else
  {
    v9 = [CNPhoneNumber phoneNumberWithStringValue:v7];

    v8 = [CNContact predicateForContactsMatchingPhoneNumber:v9];
    v7 = v9;
  }

  v10 = [(CNContactStore *)self->_contactStore unifiedContactsMatchingPredicate:v8 keysToFetch:v6 error:0];

  v11 = [NSSet setWithArray:v10];

  return v11;
}

- (id)contactWithContactIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SDStatusMonitor *)self meCard];
  v6 = [v5 identifier];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = [(SDStatusMonitor *)self meCard];
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_10022651C;
    v25 = sub_10022652C;
    v26 = 0;
    v9 = [CNContactFetchRequest alloc];
    v10 = +[_TtC16DaemoniOSLibrary27SDAirDropContactHashManager GeneralContactKeysToFetch];
    v11 = [v9 initWithKeysToFetch:v10];

    v27 = v4;
    v12 = [NSArray arrayWithObjects:&v27 count:1];
    v13 = [CNContact predicateForContactsWithIdentifiers:v12];
    [v11 setPredicate:v13];

    contactStore = self->_contactStore;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100226534;
    v19[3] = &unk_1008D4D68;
    v19[4] = &v21;
    v20 = 0;
    v15 = [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v11 error:&v20 usingBlock:v19];
    v16 = v20;
    if ((v15 & 1) == 0)
    {
      v17 = airdrop_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100231A60();
      }
    }

    v8 = v22[5];

    _Block_object_dispose(&v21, 8);
  }

  return v8;
}

- (id)emailsForContact:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 emailAddresses];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) value];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)emailOrPhoneForEmailHash:(id)a3 phoneHash:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [(SDAirDropContactHashManager *)self->_contactHashManager emailOrPhoneForCombinedHash:v6];
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (!v9)
  {
    v9 = [(SDAirDropContactHashManager *)self->_contactHashManager emailOrPhoneForCombinedHash:v8];
  }

LABEL_7:

  return v9;
}

- (id)instantMessageEmailsForContact:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 instantMessageAddresses];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) value];
        v11 = [v10 username];
        [v11 rangeOfString:@"@"];
        if (v12)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (CNContact)meCard
{
  meCard = self->___meCard;
  if (!meCard)
  {
    contactStore = self->_contactStore;
    v5 = +[_TtC16DaemoniOSLibrary27SDAirDropContactHashManager GeneralContactKeysToFetch];
    v17 = 0;
    v6 = [(CNContactStore *)contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:v5 error:&v17];
    v7 = v17;

    v8 = +[NSNull null];
    v9 = [v6 isEqual:v8];

    if ((v9 & 1) != 0 || !v6)
    {
      v10 = airdrop_log();
      v11 = v10;
      if (v7)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100231ADC();
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_100231B4C();
      }

      v12 = objc_opt_new();
      v6 = v12;
    }

    v13 = airdrop_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100231B80();
    }

    v14 = [(SDStatusMonitor *)self addAdditionalInformationToMeCard:v6];
    v15 = self->___meCard;
    self->___meCard = v14;

    [(SDAirDropContactHashManager *)self->_contactHashManager setMeCard:self->___meCard];
    meCard = self->___meCard;
  }

  return meCard;
}

- (void)resetMeCardWithReason:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100226AC8;
  v5[3] = &unk_1008CE028;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (id)phoneNumbersForContact:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 phoneNumbers];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) value];
        v11 = [v10 stringValue];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (int64_t)autoHotspotState
{
  personalHotspotAutoState = self->_personalHotspotAutoState;
  if (!personalHotspotAutoState)
  {
    wifiManager = self->_wifiManager;
    AutoInstantHotspotMode = WiFiManagerClientGetAutoInstantHotspotMode();
    if (AutoInstantHotspotMode <= 2)
    {
      v6 = AutoInstantHotspotMode;
    }

    else
    {
      v6 = 0;
    }

    v7 = [NSNumber numberWithUnsignedInt:v6];
    v8 = self->_personalHotspotAutoState;
    self->_personalHotspotAutoState = v7;

    personalHotspotAutoState = self->_personalHotspotAutoState;
  }

  return [(NSNumber *)personalHotspotAutoState integerValue];
}

- (void)updateAutoHotspotState
{
  v3 = [(NSNumber *)self->_personalHotspotAutoState integerValue];
  wifiManager = self->_wifiManager;
  AutoInstantHotspotMode = WiFiManagerClientGetAutoInstantHotspotMode();
  if (AutoInstantHotspotMode <= 2)
  {
    v6 = AutoInstantHotspotMode;
  }

  else
  {
    v6 = 0;
  }

  v7 = [NSNumber numberWithUnsignedInt:v6];
  personalHotspotAutoState = self->_personalHotspotAutoState;
  self->_personalHotspotAutoState = v7;

  if (v3 != [(NSNumber *)self->_personalHotspotAutoState integerValue])
  {
    v9 = daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v3 > 2)
      {
        v10 = "?";
      }

      else
      {
        v10 = off_1008D5118[v3];
      }

      v11 = [(NSNumber *)self->_personalHotspotAutoState integerValue];
      if (v11 > 2)
      {
        v12 = "?";
      }

      else
      {
        v12 = off_1008D5118[v11];
      }

      v13 = 136315394;
      v14 = v10;
      v15 = 2080;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Auto Hotspot state changed %s -> %s", &v13, 0x16u);
    }

    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.HotspotAutoStateChanged"];
  }
}

- (void)cellularDataEnabled:(BOOL *)a3 airplaneMode:(BOOL *)a4
{
  coreTelephonyServerConnection = self->_coreTelephonyServerConnection;
  if (_CTServerConnectionGetCellularDataSettings())
  {
    v7 = daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100231BB4();
    }
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }
}

- (int64_t)familyHotspotStateForAltDSID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_personalHotspotFamilyStates)
  {
    [(SDStatusMonitor *)self updateFamilyHotspotState];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = -1;
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [(NSMutableDictionary *)self->_personalHotspotFamilyStates objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

LABEL_6:
  return v7;
}

- (void)updateFamilyHotspotState
{
  personalHotspotFamilyStates = self->_personalHotspotFamilyStates;
  if (!personalHotspotFamilyStates)
  {
    v4 = objc_opt_new();
    v5 = self->_personalHotspotFamilyStates;
    self->_personalHotspotFamilyStates = v4;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v6 = [[NSMutableString alloc] initWithString:@"Family Hotspot State: "];
  wifiManager = self->_wifiManager;
  v8 = WiFiManagerClientCopyFamilyHotspotPreferences();
  v9 = [v8 count];
  v10 = daemon_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v35) = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Family hotspot entries: %d", buf, 8u);
  }

  if (!v9)
  {
    *(v27 + 24) = 1;
  }

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1002272B4;
  v19 = &unk_1008D4D90;
  v25 = personalHotspotFamilyStates == 0;
  v11 = v6;
  v20 = v11;
  v12 = v8;
  v21 = v12;
  v22 = self;
  v23 = &v30;
  v24 = &v26;
  [v12 enumerateObjectsUsingBlock:&v16];
  personalHotspotFamilyEnabled = self->_personalHotspotFamilyEnabled;
  self->_personalHotspotFamilyEnabled = *(v27 + 24) ^ 1;
  if (!personalHotspotFamilyStates)
  {
    v14 = daemon_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v27 + 24))
      {
        v15 = @"Disabled";
      }

      else
      {
        v15 = &stru_1008EFBD0;
      }

      *buf = 138412546;
      v35 = v11;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@%@", buf, 0x16u);
    }
  }

  if ((v31[3] & 1) != 0 || personalHotspotFamilyEnabled != self->_personalHotspotFamilyEnabled)
  {
    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.HotspotFamilyStateChanged", v16, v17, v18, v19, v20];
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
}

- (BOOL)personalHotspotAllowed
{
  personalHotspotAllowed = self->_personalHotspotAllowed;
  if (!personalHotspotAllowed)
  {
    v4 = +[MCProfileConnection sharedConnection];
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isPersonalHotspotModificationAllowed]);
    v6 = self->_personalHotspotAllowed;
    self->_personalHotspotAllowed = v5;

    personalHotspotAllowed = self->_personalHotspotAllowed;
  }

  return [(NSNumber *)personalHotspotAllowed BOOLValue];
}

- (void)updatePersonalHotspotAllowed
{
  v3 = [(NSNumber *)self->_personalHotspotAllowed BOOLValue];
  v4 = +[MCProfileConnection sharedConnection];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isPersonalHotspotModificationAllowed]);
  personalHotspotAllowed = self->_personalHotspotAllowed;
  self->_personalHotspotAllowed = v5;

  if (v3 != [(NSNumber *)self->_personalHotspotAllowed BOOLValue])
  {

    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.PersonalHotspotAllowedChanged"];
  }
}

- (BOOL)simStateReady
{
  pthread_mutex_lock(&stru_100972F48);
  LOBYTE(self) = [(NSString *)self->_coreTelephonySIMStatus isEqualToString:kCTSIMSupportSIMStatusReady];
  pthread_mutex_unlock(&stru_100972F48);
  return self;
}

- (void)addPreventExitForLocaleReason:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100227784;
  v7[3] = &unk_1008CE028;
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);

  objc_sync_exit(v5);
}

- (void)pushDateForPreventExitForLocaleReason:(id)a3 expirationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = self;
    objc_sync_enter(v8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100227914;
    block[3] = &unk_1008CE900;
    v10 = v6;
    v11 = v8;
    v12 = v7;
    dispatch_async(&_dispatch_main_q, block);

    objc_sync_exit(v8);
  }
}

- (void)removePreventExitForLocaleReason:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100227A80;
  v7[3] = &unk_1008CE028;
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);

  objc_sync_exit(v5);
}

- (void)postNotification:(id)a3 userInfo:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:v6 object:0 userInfo:v5];
}

- (__WiFiManagerClient)wifiManager
{
  if (self->_wifiScheduledOnRunLoop)
  {
    return self->_wifiManager;
  }

  else
  {
    return 0;
  }
}

- (id)defaultWiFiDevice
{
  wifiDevice = self->_wifiDevice;
  if (!wifiDevice)
  {
    [(SDStatusMonitor *)self updateWirelessDevice];
    wifiDevice = self->_wifiDevice;
  }

  return wifiDevice;
}

- (id)wifiSSIDForSSIDHash:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&stru_100972F48);
  ssidHashes = self->_ssidHashes;
  if (!ssidHashes)
  {
    v6 = daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Generating SSID hashes", &v28, 2u);
    }

    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = self->_ssidHashes;
    self->_ssidHashes = v7;

    if (self->_wifiManager)
    {
      v9 = WiFiManagerClientCopyNetworks();
      if (v9)
      {
        v10 = v9;
        Count = CFArrayGetCount(v9);
        if (Count >= 1)
        {
          v12 = Count;
          for (i = 0; i != v12; ++i)
          {
            CFArrayGetValueAtIndex(v10, i);
            if (WiFiNetworkGetShareMode() == 3)
            {
              v14 = WiFiNetworkGetSSID();
              v15 = [v14 UTF8String];
              if (v15)
              {
                v16 = v15;
                v28 = 0u;
                v29 = 0u;
                v17 = strlen(v15);
                CC_SHA256(v16, v17, &v28);
                v18 = [[NSData alloc] initWithBytes:&v28 length:3];
                [(NSMutableDictionary *)self->_ssidHashes setObject:v14 forKeyedSubscript:v18, v28, v29];
              }
            }
          }
        }

        CFRelease(v10);
      }
    }

    v19 = +[SDHotspotAgent sharedAgent];
    if ([v19 isTetheringInUse])
    {
      v20 = [v19 hotspotName];
      v21 = [v20 UTF8String];
      v22 = daemon_log();
      v23 = v22;
      if (v21)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v28) = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Tethering active, adding to ssid cache.", &v28, 2u);
        }

        v28 = 0u;
        v29 = 0u;
        v24 = strlen(v21);
        CC_SHA256(v21, v24, &v28);
        v25 = [[NSData alloc] initWithBytes:&v28 length:3];
        [(NSMutableDictionary *)self->_ssidHashes setObject:v20 forKeyedSubscript:v25, v28, v29];
      }

      else
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100231C30();
        }
      }
    }

    ssidHashes = self->_ssidHashes;
  }

  v26 = [(NSMutableDictionary *)ssidHashes objectForKeyedSubscript:v4];
  pthread_mutex_unlock(&stru_100972F48);

  return v26;
}

- (void)setAirDropPublished:(BOOL)a3
{
  self->_airDropPublished = a3;
  if (a3)
  {
    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.AirDropPublished"];
  }
}

- (BOOL)bluetoothEnabledIncludingRestricted
{
  if (SFDeviceIsVirtualMachine())
  {
    return 1;
  }

  bluetoothController = self->_bluetoothController;
  if (bluetoothController)
  {
    if ([(CBController *)bluetoothController bluetoothState]== 5)
    {
      return 1;
    }

    return [(CBController *)self->_bluetoothController bluetoothState]== 10;
  }

  else
  {

    return _SFIsBluetoothEnabled();
  }
}

- (void)setBluetoothEnabled:(BOOL)a3
{
  v3 = a3;
  pthread_mutex_lock(&stru_100972F48);
  if (v3)
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  objc_initWeak(&location, self);
  bluetoothController = self->_bluetoothController;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002280A0;
  v7[3] = &unk_1008D2B80;
  objc_copyWeak(&v8, &location);
  [(CBController *)bluetoothController setPowerState:v5 completion:v7];
  pthread_mutex_unlock(&stru_100972F48);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (SDAirDropServer)finderServer
{
  pthread_mutex_lock(&stru_100972F48);
  objc_copyWeak(&to, &self->_finderServer);
  pthread_mutex_unlock(&stru_100972F48);
  v3 = objc_loadWeakRetained(&to);
  objc_destroyWeak(&to);

  return v3;
}

- (void)setFinderServer:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&stru_100972F48);
  WeakRetained = objc_loadWeakRetained(&self->_finderServer);

  objc_storeWeak(&self->_finderServer, v4);
  pthread_mutex_unlock(&stru_100972F48);
  if (WeakRetained != v4)
  {
    [(SDStatusMonitor *)self updateDiscoverableMode];

    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.FinderAirDropChanged"];
  }
}

- (void)setWirelessEnabled:(BOOL)a3
{
  pthread_mutex_lock(&stru_100972F48);
  if (self->_wifiManager)
  {
    WiFiManagerClientSetPower();
  }

  else
  {
    v4 = daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100231C6C();
    }
  }

  pthread_mutex_unlock(&stru_100972F48);
}

- (NSDictionary)awdlInfo
{
  v3 = [(SDStatusMonitor *)self awdlState];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SDStatusMonitor *)self awdlStateInfo];
  }

  v6 = v5;

  v7 = [v6 objectForKeyedSubscript:@"AWDL_INFO"];

  return v7;
}

- (NSArray)awdlPeerList
{
  v3 = [(SDStatusMonitor *)self awdlState];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SDStatusMonitor *)self awdlStateInfo];
  }

  v6 = v5;

  v7 = [v6 objectForKeyedSubscript:@"LINK_CHANGED_PEER_LIST"];

  return v7;
}

- (id)awdlStateInfo
{
  v3 = [(SDStatusMonitor *)self awdlDevice];

  if (v3)
  {
    awdlDevice = self->_awdlDevice;
    if (WiFiDeviceClientCopyInterfaceStateInfo())
    {
      v5 = daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100231CA8();
      }
    }

    else
    {
      v5 = daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100231D18();
      }
    }
  }

  else
  {
    v5 = daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100231D54();
    }
  }

  return 0;
}

- (NSData)bluetoothAddress
{
  v2 = [(SDStatusMonitor *)self systemMonitor];
  v3 = [v2 bluetoothAddressData];

  return v3;
}

- (NSString)bonjourName
{
  pthread_mutex_lock(&stru_100972F48);
  bonjourName = self->_bonjourName;
  if (bonjourName)
  {
    v4 = bonjourName;
  }

  else
  {
    v5 = SCDynamicStoreCopyComputerName(0, 0);
    v4 = [(__CFString *)v5 copy];
  }

  pthread_mutex_unlock(&stru_100972F48);

  return v4;
}

- (NSString)computerName
{
  pthread_mutex_lock(&stru_100972F48);
  computerName = self->_computerName;
  if (!computerName)
  {
    v4 = SCDynamicStoreCopyComputerName(0, 0);
    v5 = [(__CFString *)v4 copy];
    v6 = self->_computerName;
    self->_computerName = v5;

    computerName = self->_computerName;
  }

  v7 = computerName;
  pthread_mutex_unlock(&stru_100972F48);

  return v7;
}

- (void)clearComputerName
{
  pthread_mutex_lock(&stru_100972F48);
  computerName = self->_computerName;
  self->_computerName = 0;

  pthread_mutex_unlock(&stru_100972F48);
}

- (NSString)consoleUser
{
  pthread_mutex_lock(&stru_100972F48);
  v3 = self->_consoleUser;
  pthread_mutex_unlock(&stru_100972F48);

  return v3;
}

- (void)clearConsoleUser
{
  pthread_mutex_lock(&stru_100972F48);
  consoleUser = self->_consoleUser;
  self->_consoleUser = 0;

  self->_consoleUserID = -1;

  pthread_mutex_unlock(&stru_100972F48);
}

- (NSString)localHostName
{
  pthread_mutex_lock(&stru_100972F48);
  localHostName = self->_localHostName;
  if (!localHostName)
  {
    v4 = SCDynamicStoreCopyLocalHostName(0);
    v5 = self->_localHostName;
    self->_localHostName = &v4->isa;

    localHostName = self->_localHostName;
  }

  v6 = localHostName;
  pthread_mutex_unlock(&stru_100972F48);

  return v6;
}

- (void)clearLocalHostName
{
  pthread_mutex_lock(&stru_100972F48);
  localHostName = self->_localHostName;
  self->_localHostName = 0;

  pthread_mutex_unlock(&stru_100972F48);
}

- (NSString)modelName
{
  pthread_mutex_lock(&stru_100972F48);
  v2 = MGCopyAnswer();
  v3 = [(__CFString *)v2 isEqualToString:@"iPod"];
  v4 = @"iPod touch";
  if (!v3)
  {
    v4 = v2;
  }

  v5 = v4;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"iOS";
  }

  pthread_mutex_unlock(&stru_100972F48);

  return v6;
}

- (NSString)myAccountAppleID
{
  v2 = objc_alloc_init(ACAccountStore);
  v3 = sub_10001F47C(v2);
  v4 = [v3 username];

  return v4;
}

- (NSString)myAltDSID
{
  v2 = objc_alloc_init(ACAccountStore);
  v3 = sub_10001F47C(v2);
  v4 = [v3 aa_altDSID];

  return v4;
}

- (NSString)myAppleIDCommonName
{
  pthread_mutex_lock(&stru_100972F48);
  if (!self->_myAppleIDCommonName)
  {
    v3 = [(SDStatusMonitor *)self _copyMyAppleIDSecIdentity];
    if (v3)
    {
      v4 = v3;
      certificateRef = 0;
      if (SecIdentityCopyCertificate(v3, &certificateRef))
      {
        v5 = daemon_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_100231E18();
        }
      }

      else
      {
        v6 = [(SDStatusMonitor *)self commonNameForCertificate:certificateRef];
        myAppleIDCommonName = self->_myAppleIDCommonName;
        self->_myAppleIDCommonName = v6;

        CFRelease(certificateRef);
      }

      CFRelease(v4);
    }
  }

  v8 = self->_myAppleIDCommonName;
  pthread_mutex_unlock(&stru_100972F48);

  return v8;
}

- (NSArray)myAppleIDEmailAddresses
{
  pthread_mutex_lock(&stru_100972F48);
  v3 = [(SDStatusMonitor *)self _myAppleID];
  v4 = [(SDStatusMonitor *)self emailAddressesForAppleID:v3];

  pthread_mutex_unlock(&stru_100972F48);

  return v4;
}

- (NSString)myAppleIDEmailHash
{
  pthread_mutex_lock(&stru_100972F48);
  if (!self->_myEmailHashes)
  {
    v3 = [(SDStatusMonitor *)self _myAppleID];
    v4 = [(SDStatusMonitor *)self emailAddressesForAppleID:v3];

    if (v4)
    {
      Mutable = CFStringCreateMutable(0, 0);
      myEmailHashes = self->_myEmailHashes;
      self->_myEmailHashes = Mutable;

      Count = CFArrayGetCount(v4);
      if (Count >= 8)
      {
        v8 = 8;
      }

      else
      {
        v8 = Count;
      }

      if (Count >= 1)
      {
        v9 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v9);
          v11 = sub_1001F25F8(ValueAtIndex, 0);
          v12 = v11;
          if (v11)
          {
            v13 = sub_1001F0EC4(v11);
            if (v13)
            {
              v14 = v13;
              [(NSMutableString *)self->_myEmailHashes appendString:v13];
              if (v8 != 1)
              {
                [(NSMutableString *)self->_myEmailHashes appendString:@", "];
              }

              CFRelease(v14);
            }
          }

          ++v9;
          --v8;
        }

        while (v8);
      }

      CFRelease(v4);
    }
  }

  v15 = self->_myEmailHashes;
  pthread_mutex_unlock(&stru_100972F48);

  return v15;
}

- (NSString)myAppleIDPhoneHash
{
  pthread_mutex_lock(&stru_100972F48);
  if (!self->_myPhoneHashes)
  {
    v3 = [(SDStatusMonitor *)self _myAppleID];
    v4 = [(SDStatusMonitor *)self phoneNumbersForAppleID:v3];

    if (v4)
    {
      Mutable = CFStringCreateMutable(0, 0);
      myPhoneHashes = self->_myPhoneHashes;
      self->_myPhoneHashes = Mutable;

      Count = CFArrayGetCount(v4);
      if (Count >= 8)
      {
        v8 = 8;
      }

      else
      {
        v8 = Count;
      }

      if (Count >= 1)
      {
        v9 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v9);
          v11 = sub_1001F26EC(ValueAtIndex);
          if (v11)
          {
            v12 = sub_1001F0EC4(v11);
            if (v12)
            {
              v13 = v12;
              [(NSMutableString *)self->_myPhoneHashes appendString:v12];
              if (v8 != 1)
              {
                [(NSMutableString *)self->_myPhoneHashes appendString:@", "];
              }

              CFRelease(v13);
            }
          }

          ++v9;
          --v8;
        }

        while (v8);
      }

      CFRelease(v4);
    }
  }

  v14 = self->_myPhoneHashes;
  pthread_mutex_unlock(&stru_100972F48);

  return v14;
}

- (NSArray)myAppleIDPhoneNumbers
{
  pthread_mutex_lock(&stru_100972F48);
  v3 = [(SDStatusMonitor *)self _myAppleID];
  v4 = [(SDStatusMonitor *)self phoneNumbersForAppleID:v3];

  pthread_mutex_unlock(&stru_100972F48);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (NSString)myEmail
{
  pthread_mutex_lock(&stru_100972F48);
  v3 = [(SDStatusMonitor *)self meCard];
  v4 = [v3 emailAddresses];
  v5 = [v4 firstObject];
  v6 = [v5 value];

  pthread_mutex_unlock(&stru_100972F48);

  return v6;
}

- (NSString)myName
{
  pthread_mutex_lock(&stru_100972F48);
  v3 = [(SDStatusMonitor *)self meCard];
  v4 = [CNContactFormatter stringFromContact:v3 style:0];

  pthread_mutex_unlock(&stru_100972F48);

  return v4;
}

- (NSString)myGivenName
{
  pthread_mutex_lock(&stru_100972F48);
  v3 = [(SDStatusMonitor *)self meCard];
  v4 = [v3 givenName];

  pthread_mutex_unlock(&stru_100972F48);

  return v4;
}

- (NSString)myPrimaryEmail
{
  v2 = objc_alloc_init(ACAccountStore);
  v3 = sub_10001F47C(v2);
  v4 = [v3 aa_primaryEmail];

  return v4;
}

- (NSData)myMediumHashes
{
  v2 = [(SDStatusMonitor *)self unifiedAppleIDInfo];
  v3 = [_TtC16DaemoniOSLibrary27SDAirDropContactHashManager obfuscatedMediumHashDataForStrings:v2];

  return v3;
}

- (NSData)myShortHashesForAirDrop
{
  v2 = [(SDStatusMonitor *)self unifiedAppleIDInfo];
  v3 = [_TtC16DaemoniOSLibrary27SDAirDropContactHashManager btleAdvertisementDataForStrings:v2];

  return v3;
}

- (NSString)netbiosName
{
  pthread_mutex_lock(&stru_100972F48);
  if (self->_netbiosName)
  {
    v3 = 0;
  }

  else
  {
    smbPreferences = self->_smbPreferences;
    v6 = 0;
    [(SDStatusMonitor *)self smbConfiguration:smbPreferences netBiosName:&v6 workgroup:0];
    v3 = v6;
  }

  objc_storeStrong(&self->_netbiosName, v3);
  pthread_mutex_unlock(&stru_100972F48);

  return v3;
}

- (NSString)someComputerName
{
  v3 = [(SDStatusMonitor *)self computerName];
  if (!v3)
  {
    v3 = [(SDStatusMonitor *)self modelName];
  }

  return v3;
}

- (NSString)workgroup
{
  pthread_mutex_lock(&stru_100972F48);
  if (self->_workgroup)
  {
    v3 = 0;
  }

  else
  {
    smbPreferences = self->_smbPreferences;
    v6 = 0;
    [(SDStatusMonitor *)self smbConfiguration:smbPreferences netBiosName:0 workgroup:&v6];
    v3 = v6;
  }

  objc_storeStrong(&self->_workgroup, v3);
  pthread_mutex_unlock(&stru_100972F48);

  return v3;
}

- (void)updateAirDropAllowed
{
  v3 = [(NSNumber *)self->_airDropAllowed BOOLValue];
  v4 = +[MCProfileConnection sharedConnection];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isAirDropAllowed]);
  airDropAllowed = self->_airDropAllowed;
  self->_airDropAllowed = v5;

  if (v3 != [(NSNumber *)self->_airDropAllowed BOOLValue])
  {

    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.AirDropAllowedChanged"];
  }
}

- (BOOL)isLocalDeviceMeDevice
{
  v2 = [(SDStatusMonitor *)self systemMonitor];
  v3 = [v2 meDeviceIsMe];

  return v3;
}

- (BOOL)altDSIDNeedsFixing
{
  v2 = objc_alloc_init(ACAccountStore);
  v3 = sub_10001F47C(v2);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 aa_altDSID];
    if (v5)
    {
      v6 = [v4 aa_primaryEmail];
      v7 = [v5 isEqualToString:v6];

      if (v7)
      {
        v8 = tethering_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100231EC4();
        }
      }

      else
      {
        v10 = [v4 username];
        v11 = [v5 isEqualToString:v10];

        if (!v11)
        {
          v9 = 0;
          goto LABEL_13;
        }

        v8 = tethering_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100231E88();
        }
      }
    }

    else
    {
      v8 = tethering_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100231F00();
      }
    }

    v9 = 1;
LABEL_13:

    goto LABEL_14;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (BOOL)backlightOn
{
  backlightOn = self->_backlightOn;
  if (!backlightOn)
  {
    state64 = 0;
    notify_get_state(self->_backlightLevelToken, &state64);
    v4 = [NSNumber numberWithInt:state64 != 0];
    v5 = self->_backlightOn;
    self->_backlightOn = v4;

    backlightOn = self->_backlightOn;
  }

  return [(NSNumber *)backlightOn BOOLValue];
}

- (BOOL)bypassLTKeyAbort
{
  v2 = sub_10000C1F8(@"BypassLTKeyAbort", 0);
  if (v2)
  {
    LOBYTE(v2) = IsAppleInternalBuild() != 0;
  }

  return v2;
}

- (BOOL)deviceInBiolockout
{
  +[BKDeviceManager availableDevices];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = v26 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (!v3)
  {
    goto LABEL_23;
  }

  v5 = *v24;
  *&v4 = 138412290;
  v18 = v4;
  while (2)
  {
    for (i = 0; i != v3; i = i + 1)
    {
      if (*v24 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v23 + 1) + 8 * i);
      v22 = 0;
      v8 = [BKDevice deviceWithDescriptor:v7 error:&v22, v18];
      v9 = v22;
      v21 = v9;
      v10 = [v8 identitiesWithError:&v21];
      v11 = v21;

      if (v11 || !v10)
      {
        v12 = daemon_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = v18;
          v28 = v11;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error getting device identities. Error: %@", buf, 0xCu);
        }
      }

      v20 = 0;
      if (![v10 count])
      {
        goto LABEL_16;
      }

      v13 = getuid();
      v19 = v11;
      v14 = [v8 extendedBioLockoutState:&v20 forUser:v13 error:&v19];
      v15 = v19;

      if (!v14)
      {
        v11 = v15;
LABEL_16:
        v16 = daemon_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v28 = v8;
          v29 = 2112;
          v30 = v11;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Got error getting lockout state for device: %@ with error: %@", buf, 0x16u);
        }

        goto LABEL_19;
      }

      if ((v20 & 4) != 0)
      {

        LOBYTE(v3) = 1;
        goto LABEL_23;
      }

      v11 = v15;
LABEL_19:
    }

    v3 = [v2 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v3)
    {
      continue;
    }

    break;
  }

LABEL_23:

  return v3;
}

- (BOOL)deviceIsInClassD
{
  v2 = [(SDStatusMonitor *)self systemMonitor];
  v3 = [v2 firstUnlocked];

  return v3 ^ 1;
}

- (BOOL)deviceKeyBagUnlockedAndScreenOn
{
  v3 = [(SDStatusMonitor *)self deviceKeyBagUnlocked];
  if (v3)
  {

    LOBYTE(v3) = [(SDStatusMonitor *)self screenOn];
  }

  return v3;
}

- (BOOL)eduModeEnabled
{
  if (qword_10098A360 != -1)
  {
    sub_100231FAC();
  }

  return byte_10098A358;
}

- (BOOL)enableContinuity
{
  if (sub_10000C1F8(@"DisableContinuity", 0))
  {
    return 0;
  }

  return [(SDStatusMonitor *)self deviceSupportsContinuity];
}

+ (BOOL)enableOOBPCredentialLogging
{
  v2 = IsAppleInternalBuild();
  if (v2)
  {
    LOBYTE(v2) = sub_10000C1F8(@"EnableOOBPCredentialLogging", 0) != 0;
  }

  return v2;
}

- (BOOL)finderAirDropEnabled
{
  v2 = [(SDStatusMonitor *)self finderServer];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)handoffVisible
{
  pthread_mutex_lock(&stru_100972F48);
  handoffVisible = self->_handoffVisible;
  if (!handoffVisible)
  {
    v4 = [NSNumber numberWithBool:SBSEventObserverGetValueForState() != 0];
    v5 = self->_handoffVisible;
    self->_handoffVisible = v4;

    handoffVisible = self->_handoffVisible;
  }

  v6 = [(NSNumber *)handoffVisible BOOLValue];
  pthread_mutex_unlock(&stru_100972F48);
  return v6;
}

- (BOOL)lostModeEnabled
{
  if (SFLostMode())
  {
    return 1;
  }

  return _SFManagedLostMode();
}

- (BOOL)myAppleIDIsManaged
{
  v2 = objc_alloc_init(ACAccountStore);
  v3 = sub_10001F47C(v2);
  v4 = [v3 aa_isManagedAppleID];

  return v4;
}

- (BOOL)signedIntoPrimaryiCloudAccount
{
  v2 = objc_alloc_init(ACAccountStore);
  v3 = sub_10001F47C(v2);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)wirelessCarPlay
{
  pthread_mutex_lock(&stru_100972F48);
  carKitSessionStatus = self->_carKitSessionStatus;
  if (!carKitSessionStatus)
  {
    v4 = objc_alloc_init(CARSessionStatus);
    v5 = self->_carKitSessionStatus;
    self->_carKitSessionStatus = v4;

    carKitSessionStatus = self->_carKitSessionStatus;
  }

  v6 = [(CARSessionStatus *)carKitSessionStatus currentSession];
  pthread_mutex_unlock(&stru_100972F48);
  if (v6)
  {
    v7 = [(SDStatusMonitor *)self isCarKitSessionWireless:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)logAirDropTransactionForClientServer:(BOOL)a3 beginEnd:(BOOL)a4 count:(int)a5
{
  v6 = a4;
  v7 = a3;
  v8 = airdrop_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"server";
    if (v7)
    {
      v9 = @"client";
    }

    v11 = 138412802;
    v12 = v9;
    if (v6)
    {
      v10 = @"begin";
    }

    else
    {
      v10 = @"end";
    }

    v13 = 2112;
    v14 = v10;
    v15 = 1024;
    v16 = a5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AirDrop %@ transaction %@ (%d)", &v11, 0x1Cu);
  }
}

- (void)updateMediaAccessControlSetting:(BOOL)a3
{
  v3 = a3;
  v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.airplay"];
  v5 = [v8 BOOLForKey:@"accessControlLevel"];
  v6 = [v8 BOOLForKey:@"p2pAllow"];
  v7 = 3;
  if (!v5)
  {
    v7 = 1;
  }

  if (!v6)
  {
    v7 = 2;
  }

  if (self->_mediaAccessControlSetting != v7)
  {
    self->_mediaAccessControlSetting = v7;
    if (v3)
    {
      [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.MediaAccessControlSettingChanged"];
    }
  }
}

- (void)installAppleIDUsernameMonitor
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = AKAppleIDEmailsDidChangeNotification;

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_10022A65C, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)appleIDAccountInfoChanged:(id)a3
{
  v4 = daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Apple ID account info changed.", v5, 2u);
  }

  [(SDStatusMonitor *)self clearMyAppleIDInfo];
  [(SDStatusMonitor *)self updateDiscoverableMode];
  [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.AppleIDAccountInfoChanged"];
}

- (void)installAppleIDAccountInfoMonitor
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"appleIDAccountInfoChanged:" name:SFAppleIDIdentityDidChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"appleIDAccountInfoChanged:" name:SFAppleIDValidationRecordDidChangeNotification object:0];
}

- (void)forceAWDLDeviceRefresh:(__WiFiDeviceClient *)a3
{
  v4 = daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting awdlDevice to nil", v5, 2u);
  }

  self->_awdlDevice = 0;
}

- (void)updateWirelessCritical:(BOOL)a3
{
  v3 = a3;
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateWirelessCritical inCriticalState=%@", &v7, 0xCu);
  }

  self->_wirelessCritical = v3;
  [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.WirelessCriticalChanged"];
}

- (void)handleAWDLState:(id)a3
{
  v4 = a3;
  v5 = [(SDStatusMonitor *)self awdlState];
  v6 = [v5 objectForKeyedSubscript:@"AWDL_INFO"];

  v7 = [v4 objectForKeyedSubscript:@"AWDL_INFO"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = auto_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = objc_opt_class();
      v14 = 2112;
      v15 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "AWDL Info isn't a dictionary (stored info class %@, new info class %@)", &v12, 0x16u);
    }
  }

  else
  {
    if (([v6 isEqualToDictionary:v7] & 1) == 0)
    {
      v8 = auto_unlock_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AWDL Info updated %@", &v12, 0xCu);
      }
    }

    pthread_mutex_lock(&stru_100972F48);
    v9 = [v4 copy];
    awdlState = self->_awdlState;
    self->_awdlState = v9;

    pthread_mutex_unlock(&stru_100972F48);
  }
}

- (void)updateAWDLStateInfo
{
  if (![(SDStatusMonitor *)self wirelessEnabled])
  {

    [(SDStatusMonitor *)self handleAWDLState:0];
  }
}

- (void)installWirelessMonitor
{
  if (!self->_wifiDevice)
  {
    if (self->_wifiManager || (v3 = WiFiManagerClientCreate(), (self->_wifiManager = v3) != 0))
    {

      [(SDStatusMonitor *)self updateWirelessDevice];
    }

    else
    {
      v4 = daemon_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100231FC0();
      }
    }
  }
}

- (void)updateWirelessDevice
{
  pthread_mutex_lock(&stru_100972F48);
  if (self->_wifiDevice)
  {
    awdlDevice = self->_awdlDevice;
    pthread_mutex_unlock(&stru_100972F48);
    if (awdlDevice)
    {
      goto LABEL_37;
    }
  }

  else
  {
    pthread_mutex_unlock(&stru_100972F48);
  }

  pthread_mutex_lock(&stru_100972F48);
  wifiDeviceAttachmentRegistered = self->_wifiDeviceAttachmentRegistered;
  wifiManager = self->_wifiManager;
  self->_wifiDeviceAttachmentRegistered = 1;
  pthread_mutex_unlock(&stru_100972F48);
  if (!wifiDeviceAttachmentRegistered)
  {
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    WiFiManagerClientRegisterVirtInterfaceChangeCallback();
  }

  pthread_mutex_lock(&stru_100972F48);
  wifiServerRestartRegistered = self->_wifiServerRestartRegistered;
  self->_wifiServerRestartRegistered = 1;
  pthread_mutex_unlock(&stru_100972F48);
  if (!wifiServerRestartRegistered)
  {
    WiFiManagerClientRegisterServerRestartCallback();
  }

  v7 = WiFiManagerClientCopyDevices();
  if (v7)
  {
    v8 = v7;
    if (CFArrayGetCount(v7))
    {
      v29 = v8;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v9 = WiFiManagerClientCopyInterfaces();
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v31;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v31 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v30 + 1) + 8 * i);
            pthread_mutex_lock(&stru_100972F48);
            wifiDevice = self->_wifiDevice;
            pthread_mutex_unlock(&stru_100972F48);
            if (!wifiDevice)
            {
              if (WiFiDeviceClientGetInterfaceRoleIndex())
              {
                v16 = 0;
              }

              else
              {
                pthread_mutex_lock(&stru_100972F48);
                v16 = v14;
                self->_wifiDevice = v16;
                pthread_mutex_unlock(&stru_100972F48);
                WiFiDeviceClientRegisterPowerCallback();
              }

              v17 = daemon_log();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v35 = v16;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Wi-Fi device %@", buf, 0xCu);
              }
            }

            pthread_mutex_lock(&stru_100972F48);
            v18 = self->_awdlDevice;
            pthread_mutex_unlock(&stru_100972F48);
            if (!v18 && WiFiDeviceClientIsInterfaceAWDL())
            {
              pthread_mutex_lock(&stru_100972F48);
              v19 = v14;
              self->_awdlDevice = v19;
              pthread_mutex_unlock(&stru_100972F48);
              WiFiDeviceClientRegisterVirtualInterfaceStateChangeCallback();
              WiFiDeviceClientCopyInterfaceStateInfo();
              [(SDStatusMonitor *)self handleAWDLState:0];
              v20 = daemon_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v35 = v19;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "AWDL device %@", buf, 0xCu);
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v11);
      }

      v8 = v29;
    }

    else
    {
      v9 = daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100231FFC();
      }
    }

    CFRelease(v8);
  }

  else
  {
    v21 = daemon_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100232038();
    }
  }

LABEL_37:
  pthread_mutex_lock(&stru_100972F48);
  v22 = self->_wifiDevice;
  v23 = self->_wifiDeviceAttachmentRegistered;
  wifiScheduledOnRunLoop = self->_wifiScheduledOnRunLoop;
  v25 = self->_wifiManager;
  pthread_mutex_unlock(&stru_100972F48);
  if (!v22)
  {
    if (wifiScheduledOnRunLoop)
    {
      return;
    }

    v28 = daemon_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "SDStatusMonitor: WiFi device monitor started", buf, 2u);
    }

    goto LABEL_52;
  }

  if (v23)
  {
    v26 = daemon_log();
    v27 = v26;
    if (wifiScheduledOnRunLoop)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "SDStatusMonitor: WiFi device attached", buf, 2u);
      }

      [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.WiFiDeviceAttached"];
    }

    else
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_100232074();
      }
    }

    WiFiManagerClientRegisterDeviceAttachmentCallback();
    WiFiDeviceClientRegisterHostApStateChangedCallback();
    WiFiDeviceClientRegister24GHzNetworkInCriticalStateCallback();
    pthread_mutex_lock(&stru_100972F48);
    self->_wifiDeviceAttachmentRegistered = 0;
    pthread_mutex_unlock(&stru_100972F48);
  }

  if (!wifiScheduledOnRunLoop)
  {
LABEL_52:
    CFRunLoopGetMain();
    WiFiManagerClientScheduleWithRunLoop();
    pthread_mutex_lock(&stru_100972F48);
    self->_wifiScheduledOnRunLoop = 1;
    pthread_mutex_unlock(&stru_100972F48);
  }
}

- (void)installWifiInterfaceMonitor
{
  if (!self->_wifiInterfaceMonitor)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = dispatch_queue_create("com.apple.sharing.cwfinterface.queue", 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10022B6CC;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

- (void)updateWifiState:(int64_t)a3
{
  if (self->_wifiInterfaceMonitor)
  {
    pthread_mutex_lock(&stru_100972F48);
    v5 = self->_wifiInterfaceMonitor;
    pthread_mutex_unlock(&stru_100972F48);
    v6 = [(CWFInterface *)v5 channel];
    if (v6)
    {
      v7 = [(CWFInterface *)v5 channel];
      v8 = [v7 is2GHz];
    }

    else
    {
      v8 = 0;
    }

    v9 = [(CWFInterface *)v5 currentKnownNetworkProfile];
    v10 = [v9 isPersonalHotspot];

    v11 = [(CWFInterface *)v5 powerOn];
    pthread_mutex_lock(&stru_100972F48);
    self->_isUsing2GHzWifi = v8;
    self->_isWifiPersonalHotspot = v10;
    pthread_mutex_unlock(&stru_100972F48);
    v12 = daemon_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      if (v11)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      if (v8)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v20 = 138412802;
      *v21 = v14;
      *&v21[8] = 2112;
      v22 = v15;
      if (v10)
      {
        v13 = @"YES";
      }

      v23 = 2112;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "WifiState: wirelessEnabled: %@ - isUsing2GHz: %@ - isWifiPersonalHotspot: %@\n", &v20, 0x20u);
    }

    if (a3 == 8)
    {
      v16 = ([(CWFInterface *)v5 opMode]>> 3) & 1;
      v17 = ([(CWFInterface *)v5 opMode]>> 1) & 1;
      pthread_mutex_lock(&stru_100972F48);
      self->_wirelessAccessPoint = v16;
      self->_computerToComputer = v17;
      pthread_mutex_unlock(&stru_100972F48);
      v18 = daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 67109376;
        *v21 = v16;
        *&v21[4] = 1024;
        *&v21[6] = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "WifiModeChange: wirelessAccessPoint: %d computerToComputer: %d", &v20, 0xEu);
      }
    }

    pthread_mutex_lock(&stru_100972F48);
    if (self->_wirelessEnabled == v11)
    {
      pthread_mutex_unlock(&stru_100972F48);
    }

    else
    {
      self->_wirelessEnabled = v11;
      v19 = daemon_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 67109120;
        *v21 = v11;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "WifiPowerChange: wirelessEnabled: %d", &v20, 8u);
      }

      pthread_mutex_unlock(&stru_100972F48);
      [(SDStatusMonitor *)self updateDiscoverableMode];
      [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.WirelessPowerChanged"];
    }
  }
}

- (void)installBacklightMonitor
{
  if (!self->_backlightLevelToken)
  {
    handler[5] = v2;
    handler[6] = v3;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10022BDB4;
    handler[3] = &unk_1008CE690;
    handler[4] = self;
    notify_register_dispatch("com.apple.backboardd.backlight.changed", &self->_backlightLevelToken, &_dispatch_main_q, handler);
  }
}

- (void)installAirplaneModeMonitor
{
  v3 = objc_alloc_init(RadiosPreferences);
  radiosPreferences = self->_radiosPreferences;
  self->_radiosPreferences = v3;

  v5 = self->_radiosPreferences;

  [(RadiosPreferences *)v5 setDelegate:self];
}

- (void)d2dEncryptionChanged
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device to device encryption status changed", v3, 2u);
  }
}

- (void)installD2DEncryptionMonitor
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v5, &location);
  v3 = [(SDStatusMonitor *)self systemMonitor:_NSConcreteStackBlock];
  [v3 setManateeChangedHandler:&v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)bluetoothAddressChanged
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Bluetooth address changed", v3, 2u);
  }
}

- (void)installBluetoothMonitor
{
  if (!self->_bluetoothController)
  {
    v3 = objc_alloc_init(CBController);
    bluetoothController = self->_bluetoothController;
    self->_bluetoothController = v3;

    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10022C2CC;
    v13[3] = &unk_1008CDD98;
    objc_copyWeak(&v14, &location);
    [(CBController *)self->_bluetoothController setBluetoothStateChangedHandler:v13];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10022C30C;
    v11[3] = &unk_1008CDD98;
    objc_copyWeak(&v12, &location);
    [(CBController *)self->_bluetoothController setInvalidationHandler:v11];
    v5 = self->_bluetoothController;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10022C34C;
    v9[3] = &unk_1008D2B80;
    objc_copyWeak(&v10, &location);
    [(CBController *)v5 activateWithCompletion:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10022C3A8;
  v7[3] = &unk_1008CDD98;
  objc_copyWeak(&v8, &location);
  v6 = [(SDStatusMonitor *)self systemMonitor];
  [v6 setBluetoothAddressChangedHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)bluetoothStateChanged
{
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CBController *)self->_bluetoothController bluetoothState];
    if (v4 > 0xA)
    {
      v5 = "?";
    }

    else
    {
      v5 = off_1008D5130[v4];
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Bluetooth state changed %s", &v6, 0xCu);
  }

  [(SDStatusMonitor *)self updateDiscoverableMode];
  [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.BluetoothPowerChanged"];
}

- (void)bluetoothActivatedWithError:(id)a3
{
  v4 = a3;
  v5 = daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth controller failed to activate - error: %@", &v7, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth controller activated", &v7, 2u);
    }

    [(SDStatusMonitor *)self bluetoothStateChanged];
  }
}

- (void)bluetoothDidSetPowerStateWithError:(id)a3
{
  v3 = a3;
  v4 = daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 138412290;
      v10 = v3;
      v6 = "Bluetooth controller failed to set power state - error: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v9, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v9) = 0;
    v6 = "Bluetooth controller set power state";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }
}

- (void)bluetoothMonitorInvalidated
{
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Bluetooth controller invalidated, retry in 5 seconds", v5, 2u);
  }

  bluetoothController = self->_bluetoothController;
  self->_bluetoothController = 0;

  [(SDStatusMonitor *)self retryInstallBluetoothMonitor];
}

- (void)retryInstallBluetoothMonitor
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 5000000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10022C7DC;
  v3[3] = &unk_1008CDD98;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, &_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)installBonjourNameMonitor
{
  if (!self->_nameMonitor)
  {
    if (DNSServiceRegister(&self->_nameMonitor, 0, 0xFFFFFFFF, 0, "_whats-my-name._tcp.", "local.", 0, 0, 0, 0, sub_10022C90C, self))
    {
      v3 = daemon_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100232118();
      }
    }

    else
    {
      if (!DNSServiceSetDispatchQueue(self->_nameMonitor, &_dispatch_main_q))
      {
        return;
      }

      v3 = daemon_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100232188();
      }
    }
  }
}

- (void)uninstallBonjourNameMonitor
{
  nameMonitor = self->_nameMonitor;
  if (nameMonitor)
  {
    DNSServiceRefDeallocate(nameMonitor);
    self->_nameMonitor = 0;
  }
}

- (void)restartBonjourNameMonitor
{
  pthread_mutex_lock(&stru_100972F48);
  [(SDStatusMonitor *)self uninstallBonjourNameMonitor];
  [(SDStatusMonitor *)self installBonjourNameMonitor];

  pthread_mutex_unlock(&stru_100972F48);
}

- (void)carplayMonitorDiedNotification:(id)a3
{
  v4 = daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CarPlay server crashed", v5, 2u);
  }

  [(SDStatusMonitor *)self uninstallCarPlayStatusMonitor];
  [(SDStatusMonitor *)self installCarPlayStatusMonitor];
  [(SDStatusMonitor *)self carplayStatusNotification:0];
}

- (void)carplayStatusNotification:(id)a3
{
  v4 = [(objc_class *)off_100972FA8() sharedAVSystemController];
  v5 = off_100972FB0();
  v6 = [v4 attributeForKey:v5];
  v7 = [v6 BOOLValue];

  v8 = daemon_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "off";
    if (self->_carplayConnected)
    {
      v10 = "on";
    }

    else
    {
      v10 = "off";
    }

    if (v7)
    {
      v9 = "on";
    }

    v11 = 136315394;
    v12 = v10;
    v13 = 2080;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CarPlay status changed: %s -> %s", &v11, 0x16u);
  }

  self->_carplayConnected = v7;
  [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.CarPlayStatusChanged"];
}

- (void)installCarPlayStatusMonitor
{
  v3 = [(objc_class *)off_100972FA8() sharedAVSystemController];
  v4 = off_100972FB8();
  v13[0] = v4;
  v5 = off_100972FC0();
  v13[1] = v5;
  v6 = [NSArray arrayWithObjects:v13 count:2];

  v7 = off_100972FC8();
  [v3 setAttribute:v6 forKey:v7 error:0];

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = off_100972FB8();
  [v8 addObserver:self selector:"carplayMonitorDiedNotification:" name:v9 object:0];

  v10 = off_100972FC0();
  [v8 addObserver:self selector:"carplayStatusNotification:" name:v10 object:0];

  v11 = off_100972FB0();
  v12 = [v3 attributeForKey:v11];
  self->_carplayConnected = [v12 BOOLValue];
}

- (void)installWirelessCarPlayMonitor
{
  pthread_mutex_lock(&stru_100972F48);
  carKitSessionStatus = self->_carKitSessionStatus;
  if (!carKitSessionStatus)
  {
    v4 = objc_alloc_init(CARSessionStatus);
    v5 = self->_carKitSessionStatus;
    self->_carKitSessionStatus = v4;

    carKitSessionStatus = self->_carKitSessionStatus;
  }

  [(CARSessionStatus *)carKitSessionStatus setSessionObserver:self];

  pthread_mutex_unlock(&stru_100972F48);
}

- (BOOL)isCarKitSessionWireless:(id)a3
{
  v3 = [a3 configuration];
  v4 = [v3 transportType] == 3;

  return v4;
}

- (void)handleCarKitSessionStateChanged:(id)a3
{
  if ([(SDStatusMonitor *)self isCarKitSessionWireless:a3])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10022CE74;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)sessionDidConnect:(id)a3
{
  [(SDStatusMonitor *)self handleCarKitSessionStateChanged:a3];
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CarPlay session connected.", v4, 2u);
  }
}

- (void)sessionDidDisconnect:(id)a3
{
  [(SDStatusMonitor *)self handleCarKitSessionStateChanged:a3];
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CarPlay session disconnected.", v4, 2u);
  }
}

- (void)uninstallCarPlayStatusMonitor
{
  v5 = +[NSNotificationCenter defaultCenter];
  v3 = off_100972FB8();
  [v5 removeObserver:self name:v3 object:0];

  v4 = off_100972FC0();
  [v5 removeObserver:self name:v4 object:0];

  self->_carplayConnected = 0;
}

- (void)installSmartCoverStatusMonitor
{
  v3 = objc_alloc_init(SDSmartCoverMonitor);
  smartCoverMonitor = self->_smartCoverMonitor;
  self->_smartCoverMonitor = v3;
}

- (void)contactStoreDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10022D138;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)meCardChanged:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10022D234;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)installContactsMonitor
{
  v3 = objc_alloc_init(CNContactStore);
  contactStore = self->_contactStore;
  self->_contactStore = v3;

  v5 = +[_TtC16DaemoniOSLibrary27SDAirDropContactHashManager shared];
  contactHashManager = self->_contactHashManager;
  self->_contactHashManager = v5;

  v7 = [NSString stringWithUTF8String:"[SDStatusMonitor installContactsMonitor]"];
  [(SDStatusMonitor *)self resetMeCardWithReason:v7];

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = +[_TtC16DaemoniOSLibrary27SDAirDropContactHashManager kStatusContactsHashesChanged];
  [v8 addObserver:self selector:"contactStoreDidChange:" name:v9 object:0];

  v11 = +[NSNotificationCenter defaultCenter];
  v10 = +[_TtC16DaemoniOSLibrary27SDAirDropContactHashManager kStatusMeCardChanged];
  [v11 addObserver:self selector:"meCardChanged:" name:v10 object:0];
}

- (void)installCoreTelephonyMonitor
{
  self->_coreTelephonyServerConnection = _CTServerConnectionCreateOnTargetQueue();
  v3 = [CoreTelephonyClient alloc];
  v4 = CUMainQueue();
  v5 = [v3 initWithQueue:v4];
  coreTelephonyClient = self->_coreTelephonyClient;
  self->_coreTelephonyClient = v5;

  [(CoreTelephonyClient *)self->_coreTelephonyClient setDelegate:self];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10022D4E8;
  v7[3] = &unk_1008D4E00;
  v7[4] = self;
  [(SDStatusMonitor *)self fetchSubscriptionContextWithCompletion:v7];
}

- (void)fetchSubscriptionContextWithCompletion:(id)a3
{
  v4 = a3;
  coreTelephonyClient = self->_coreTelephonyClient;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10022D600;
  v7[3] = &unk_1008D4E28;
  v8 = v4;
  v6 = v4;
  [(CoreTelephonyClient *)coreTelephonyClient getPreferredDataSubscriptionContext:v7];
}

- (void)fetchLTEShows4GWithContext:(id)a3
{
  v4 = a3;
  v5 = [[CTBundle alloc] initWithBundleType:1];
  coreTelephonyClient = self->_coreTelephonyClient;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10022D7D8;
  v7[3] = &unk_1008D4E50;
  v7[4] = self;
  [(CoreTelephonyClient *)coreTelephonyClient copyCarrierBundleValueWithDefault:v4 key:@"DataIndicatorOverrideForLTE" bundleType:v5 completion:v7];
}

- (void)fetchSIMStatusWithContext:(id)a3
{
  coreTelephonyClient = self->_coreTelephonyClient;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10022D904;
  v4[3] = &unk_1008D4E78;
  v4[4] = self;
  [(CoreTelephonyClient *)coreTelephonyClient getSIMStatus:a3 completion:v4];
}

- (void)fetchDataStatusWithContext:(id)a3
{
  coreTelephonyClient = self->_coreTelephonyClient;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10022D9F0;
  v4[3] = &unk_1008D4EA0;
  v4[4] = self;
  [(CoreTelephonyClient *)coreTelephonyClient getDataStatus:a3 completion:v4];
}

- (void)fetchSignalStrengthWithContext:(id)a3
{
  coreTelephonyClient = self->_coreTelephonyClient;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10022DADC;
  v4[3] = &unk_1008D4EC8;
  v4[4] = self;
  [(CoreTelephonyClient *)coreTelephonyClient getSignalStrengthInfo:a3 completion:v4];
}

- (void)updateLTEShows4G:(BOOL)a3
{
  v3 = a3;
  pthread_mutex_lock(&stru_100972F48);
  if (self->_coreTelephonyLTEShows4G != v3)
  {
    v5 = daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating LTE shows 4G %@", &v7, 0xCu);
    }

    self->_coreTelephonyLTEShows4G = v3;
  }

  pthread_mutex_unlock(&stru_100972F48);
}

- (void)updateSIMStatus:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&stru_100972F48);
  if ([(NSString *)self->_coreTelephonySIMStatus isEqualToString:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = kCTSIMSupportSIMStatusReady;
    if ([(NSString *)self->_coreTelephonySIMStatus isEqualToString:kCTSIMSupportSIMStatusReady])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 isEqualToString:v6];
    }
  }

  if (![(NSString *)self->_coreTelephonySIMStatus isEqualToString:v4])
  {
    v7 = daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating SIM status %@", &v9, 0xCu);
    }
  }

  coreTelephonySIMStatus = self->_coreTelephonySIMStatus;
  self->_coreTelephonySIMStatus = v4;

  pthread_mutex_unlock(&stru_100972F48);
  if (v5)
  {
    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.SIMStateChanged"];
  }
}

- (void)updateDataStatus:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&stru_100972F48);
  if ([v4 isEqual:self->_coreTelephonyDataStatus])
  {
    pthread_mutex_unlock(&stru_100972F48);
  }

  else
  {
    v5 = daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating data status %@", &v8, 0xCu);
    }

    v6 = [v4 copy];
    coreTelephonyDataStatus = self->_coreTelephonyDataStatus;
    self->_coreTelephonyDataStatus = v6;

    pthread_mutex_unlock(&stru_100972F48);
    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.SIMDataChanged"];
  }
}

- (void)updateSignalStrength:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&stru_100972F48);
  v5 = [v4 displayBars];
  if ([(NSNumber *)self->_coreTelephonySignalStrength isEqualToNumber:v5])
  {
    pthread_mutex_unlock(&stru_100972F48);
  }

  else
  {
    v6 = daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = [v5 integerValue];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating signal strength %ld bars", &v9, 0xCu);
    }

    v7 = [v4 displayBars];
    coreTelephonySignalStrength = self->_coreTelephonySignalStrength;
    self->_coreTelephonySignalStrength = v7;

    pthread_mutex_unlock(&stru_100972F48);
    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.SignalStrengthChanged"];
  }
}

- (void)subscriptionInfoDidChange
{
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CoreTelephony subscription info changed", buf, 2u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10022E094;
  v4[3] = &unk_1008D4E00;
  v4[4] = self;
  [(SDStatusMonitor *)self fetchSubscriptionContextWithCompletion:v4];
}

- (void)simStatusDidChange:(id)a3 status:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10022E180;
  v4[3] = &unk_1008D4E00;
  v4[4] = self;
  [(SDStatusMonitor *)self fetchSubscriptionContextWithCompletion:v4, a4];
}

- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10022E200;
  v4[3] = &unk_1008D4E00;
  v4[4] = self;
  [(SDStatusMonitor *)self fetchSubscriptionContextWithCompletion:v4, a4];
}

- (void)signalStrengthChanged:(id)a3 info:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10022E280;
  v4[3] = &unk_1008D4E00;
  v4[4] = self;
  [(SDStatusMonitor *)self fetchSubscriptionContextWithCompletion:v4, a4];
}

- (void)handleDynamicStoreCallback:(__SCDynamicStore *)a3 changedKeys:(__CFArray *)a4
{
  cf2 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, @"awdl0", kSCEntNetLink);
  v6 = SCDynamicStoreKeyCreate(0, @"%@/%@/%@", kSCDynamicStoreDomainState, kSCCompNetwork, @"MulticastDNS");
  ComputerName = SCDynamicStoreKeyCreateComputerName(0);
  HostNames = SCDynamicStoreKeyCreateHostNames(0);
  Count = CFArrayGetCount(a4);
  if (Count < 1)
  {
    goto LABEL_21;
  }

  v10 = Count;
  v11 = 0;
  v16 = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a4, v11);
    if (CFEqual(ValueAtIndex, ComputerName))
    {
      [(SDStatusMonitor *)self clearComputerName];
      v13 = 1;
    }

    else if (CFEqual(ValueAtIndex, HostNames))
    {
      [(SDStatusMonitor *)self clearLocalHostName];
      v12 = 1;
    }

    else if (CFEqual(ValueAtIndex, v6))
    {
      BYTE4(v16) = 1;
    }

    else if (CFEqual(ValueAtIndex, cf2))
    {
      LOBYTE(v16) = 1;
    }

    else
    {
      v15 = daemon_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = a4;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "SDStatusMonitor: Unknown keys changed (%@)", buf, 0xCu);
      }
    }

    ++v11;
  }

  while (v10 != v11);
  if ((v16 & 0x100000000) != 0)
  {
    [(SDStatusMonitor *)self restartBonjourNameMonitor];
    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.MulticastDNSChanged"];
  }

  if ((v16 & 1) == 0)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_23:
    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.LocalHostNameChanged"];
    if ((v13 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.AirDropLinkStateChanged"];
  if (v12)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (v13)
  {
LABEL_20:
    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.ComputerNameChanged"];
  }

LABEL_21:
  CFRelease(ComputerName);
  CFRelease(HostNames);
  CFRelease(v6);
  CFRelease(cf2);
}

- (void)installDynamicStoreCallBack
{
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = self;
  v3 = SCDynamicStoreCreate(0, @"com.apple.sharingd", sub_10022E75C, &context);
  if (v3)
  {
    v4 = v3;
    HostNames = SCDynamicStoreKeyCreateHostNames(0);
    ComputerName = SCDynamicStoreKeyCreateComputerName(0);
    v7 = SCDynamicStoreKeyCreate(0, @"%@/%@/%@", kSCDynamicStoreDomainState, kSCCompNetwork, @"MulticastDNS");
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, @"awdl0", kSCEntNetLink);
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(Mutable, HostNames);
    CFArrayAppendValue(Mutable, ComputerName);
    CFArrayAppendValue(Mutable, v7);
    CFArrayAppendValue(Mutable, NetworkInterfaceEntity);
    if (SCDynamicStoreSetNotificationKeys(v4, Mutable, 0))
    {
      RunLoopSource = SCDynamicStoreCreateRunLoopSource(0, v4, 0);
      self->_dynamicStoreSource = RunLoopSource;
      if (RunLoopSource)
      {
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, self->_dynamicStoreSource, kCFRunLoopDefaultMode);
LABEL_13:
        CFRelease(HostNames);
        CFRelease(ComputerName);
        CFRelease(v7);
        CFRelease(NetworkInterfaceEntity);
        CFRelease(Mutable);
        CFRelease(v4);
        return;
      }

      v13 = daemon_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100232428();
      }
    }

    else
    {
      v13 = daemon_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1002324AC();
      }
    }

    goto LABEL_13;
  }

  v12 = daemon_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100232530();
  }
}

- (void)installKeyBagUnlockMonitor
{
  if (!self->_keyBagUnlockToken)
  {
    handler[5] = v2;
    handler[6] = v3;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100012880;
    handler[3] = &unk_1008CE690;
    handler[4] = self;
    notify_register_dispatch(kMobileKeyBagLockStatusNotifyToken, &self->_keyBagUnlockToken, &_dispatch_main_q, handler);
  }
}

- (NSDate)lastDeviceUnlockDate
{
  pthread_mutex_lock(&stru_100972F48);
  lastDeviceUnlockDate = self->_lastDeviceUnlockDate;
  if (!lastDeviceUnlockDate)
  {
    if (AKSIdentityGetSessionTimeWindows())
    {
      v4 = +[NSDate now];
      v5 = [v4 dateByAddingTimeInterval:0];
      v6 = self->_lastDeviceUnlockDate;
      self->_lastDeviceUnlockDate = v5;
    }

    lastDeviceUnlockDate = self->_lastDeviceUnlockDate;
  }

  v7 = lastDeviceUnlockDate;
  pthread_mutex_unlock(&stru_100972F48);

  return v7;
}

- (void)installLocaleChangeMonitor
{
  v3 = [[SDDeferrableOperation alloc] initWithIdentifier:@"preventExitForLocaleChange" queue:&_dispatch_main_q operation:&stru_1008D4F08];
  preventLocaleRestart = self->_preventLocaleRestart;
  self->_preventLocaleRestart = v3;

  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterAddObserver(LocalCenter, self, sub_10022E9D4, kCFLocaleCurrentLocaleDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)installManagedConfigurationMonitor
{
  v3 = +[MCProfileConnection sharedConnection];
  [v3 addObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"managedConfigurationSettingsChanged:" name:MCEffectiveSettingsChangedNotification object:0];

  [(SDStatusMonitor *)self managedConfigurationSettingsChanged:0];
}

- (void)managedConfigurationSettingsChanged:(id)a3
{
  [(SDStatusMonitor *)self updateAirDropAllowed];
  [(SDStatusMonitor *)self updatePersonalHotspotAllowed];

  [(SDStatusMonitor *)self updateBlacklistedAppBundleIDs];
}

- (void)updateBlacklistedAppBundleIDs
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 effectiveBlockedAppBundleIDs];

  v5 = [(SDStatusMonitor *)self effectiveBlockedAppBundleIDs];
  v8 = v4;
  v6 = v5;
  if (v8 == v6)
  {

    goto LABEL_8;
  }

  if ((v8 != 0) == (v6 == 0))
  {

    goto LABEL_7;
  }

  v7 = [v8 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    [(SDStatusMonitor *)self setEffectiveBlockedAppBundleIDs:v8];
    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.BlacklistedAppsChanged"];
  }

LABEL_8:
}

- (void)handleNameMonitorCallBack:(const char *)a3 flags:(unsigned int)a4 error:(int)a5
{
  v6 = a4;
  pthread_mutex_lock(&stru_100972F48);
  if (a5)
  {
    v9 = daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1002325B4();
    }

    DNSServiceRefDeallocate(self->_nameMonitor);
    self->_nameMonitor = 0;
  }

  else if ((v6 & 2) != 0)
  {
    v10 = CFStringCreateWithCString(0, a3, 0x8000100u);
    if (sub_100118058(self->_bonjourName, v10))
    {
      v11 = [(__CFString *)v10 copy];
      bonjourName = self->_bonjourName;
      self->_bonjourName = v11;
    }

    else
    {
      CFRelease(v10);
    }
  }

  pthread_mutex_unlock(&stru_100972F48);
}

- (void)updatePairedWatchWristState:(int64_t)a3
{
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SDStatusMonitor *)self stringForWatchWristState:a3];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Paired watch wrist state changed: %@", &v7, 0xCu);
  }

  [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.PairedWatchWristStateChanged"];
}

- (int)pairedWatchLockState
{
  v2 = +[SDPairedDeviceAgent sharedAgent];
  v3 = [v2 lockState];

  return v3;
}

- (void)updatePairedWatchLockState:(int)a3
{
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Paired watch wrist lock changed: %d", v6, 8u);
  }

  [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.PairedWatchLockStateChanged"];
}

- (void)installMISMonitor
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleMISStateChanged:" name:@"com.apple.sharingd.HotspotMISStateChanged" object:0];
}

- (void)handleMISStateChanged:(id)a3
{
  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating discoverable mode for personal hotspot change", v5, 2u);
  }

  [(SDStatusMonitor *)self updateDiscoverableMode];
}

- (void)updateLocalPowerSource:(id)a3
{
  v4 = CUMainQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10022F0E4;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)handleSleepWakeCallBack:(unsigned int)a3 messageArguement:(void *)a4
{
  HIDWORD(v6) = a3 + 536870288;
  LODWORD(v6) = a3 + 536870288;
  v5 = v6 >> 4;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v12 = daemon_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device will not sleep", v13, 2u);
      }

      v10 = @"com.apple.sharingd.SystemWillNotSleep";
    }

    else
    {
      if (v5 != 9)
      {
        return;
      }

      v9 = daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device has powered on", v14, 2u);
      }

      v10 = @"com.apple.sharingd.SystemHasPoweredOn";
    }

    [(SDStatusMonitor *)self postNotification:v10];
  }

  else
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return;
      }

      v8 = daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device will sleep", buf, 2u);
      }

      [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.SystemWillSleep"];
    }

    else
    {
      v11 = daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device can sleep", v16, 2u);
      }
    }

    IOAllowPowerChange(self->_rootPort, a4);
  }
}

- (void)installSleepWakeCallBack
{
  DeviceClass = GestaltGetDeviceClass();
  if (self->_notifyPortRef)
  {
    v4 = 1;
  }

  else
  {
    v4 = DeviceClass == 4;
  }

  if (!v4)
  {
    v5 = IORegisterForSystemPower(self, &self->_notifyPortRef, j__objc_msgSend_handleSleepWakeCallBack_messageArguement_, &self->_notifierObject);
    self->_rootPort = v5;
    if (v5)
    {
      Main = CFRunLoopGetMain();
      RunLoopSource = IONotificationPortGetRunLoopSource(self->_notifyPortRef);

      CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
    }

    else
    {
      v8 = daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100232624();
      }
    }
  }
}

- (void)reloadSMBConfInfo
{
  pthread_mutex_lock(&stru_100972F48);
  smbPreferences = self->_smbPreferences;
  v11 = 0;
  v12 = 0;
  v4 = [(SDStatusMonitor *)self smbConfiguration:smbPreferences netBiosName:&v12 workgroup:&v11];
  v5 = v12;
  v6 = v12;
  v7 = v11;
  v8 = v11;
  if (v4)
  {
    v9 = sub_100118058(self->_netbiosName, v6);
    if (v9)
    {
      objc_storeStrong(&self->_netbiosName, v5);
    }

    if (sub_100118058(self->_workgroup, v8))
    {
      objc_storeStrong(&self->_workgroup, v7);
      pthread_mutex_unlock(&stru_100972F48);
      if (v9)
      {
        [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.NetbiosNameChanged"];
      }

      v10 = @"com.apple.sharingd.WorkgroupChanged";
      goto LABEL_11;
    }

    pthread_mutex_unlock(&stru_100972F48);
    if (v9)
    {
      v10 = @"com.apple.sharingd.NetbiosNameChanged";
LABEL_11:
      [(SDStatusMonitor *)self postNotification:v10];
    }
  }

  else
  {
    pthread_mutex_unlock(&stru_100972F48);
  }
}

- (void)installSpringBoardStateMonitor
{
  SBSEventObserverInitialize();
  SBSEventObserverStartObservingEvent();
  SBSEventObserverStartObservingEvent();
  SBSEventObserverStartObservingEvent();
  SBSEventObserverStartObservingEvent();
}

- (void)installBacklightServicesMonitor
{
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Installing backlight services monitor", v5, 2u);
  }

  v4 = [(objc_class *)off_100972FA0() sharedBacklight];
  [v4 addObserver:self];
}

- (void)backlight:(id)a3 activatingWithEvent:(id)a4
{
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1002326D4();
  }

  [(SDStatusMonitor *)self screenOnStateChangedTo:1];
}

- (void)backlight:(id)a3 deactivatingWithEvent:(id)a4
{
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100232708();
  }

  [(SDStatusMonitor *)self screenOnStateChangedTo:0];
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvents:(id)a5 abortedEvents:(id)a6
{
  v8 = daemon_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10023273C(self, a4, v8);
  }

  if (CFPrefs_GetInt64())
  {
    pthread_mutex_lock(&stru_100972F48);
    v9 = [(SDStatusMonitor *)self isScreenOnForBacklightState:a4];
    screenOn = self->_screenOn;
    if (screenOn)
    {
      v11 = [(NSNumber *)screenOn BOOLValue];
      v12 = [NSNumber numberWithBool:v9];
      v13 = self->_screenOn;
      self->_screenOn = v12;

      pthread_mutex_unlock(&stru_100972F48);
      if (v9 == v11)
      {
        return;
      }
    }

    else
    {
      v14 = [NSNumber numberWithBool:v9];
      v15 = self->_screenOn;
      self->_screenOn = v14;

      pthread_mutex_unlock(&stru_100972F48);
    }

    v16 = daemon_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(NSNumber *)self->_screenOn BOOLValue];
      v18 = @"Off";
      if (v17)
      {
        v18 = @"On";
      }

      *buf = 138412290;
      v20 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Screen state changed to %@", buf, 0xCu);
    }

    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.ScreenStateChanged"];
  }
}

- (BOOL)isScreenOnForBacklightState:(int64_t)a3
{
  if (a3 >= 4)
  {
    v9 = v3;
    v10 = v4;
    v6 = daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unknown backlight state, please file a radar to Sharing | all", v8, 2u);
    }

    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = 0xCu >> (a3 & 0xF);
  }

  return v5 & 1;
}

- (void)installSystemUIMonitor
{
  if (!self->_systemUIMonitor)
  {
    v8[0] = FBSDisplayLayoutElementControlCenterIdentifier;
    v8[1] = FBSDisplayLayoutElementLockScreenIdentifier;
    v9[0] = &off_10090BFE8;
    v9[1] = &off_10090C000;
    v8[2] = FBSDisplayLayoutElementNotificationCenterIdentifier;
    v8[3] = FBSDisplayLayoutElementSiriIdentifier;
    v9[2] = &off_10090C018;
    v9[3] = &off_10090C030;
    v8[4] = SBSDisplayLayoutElementHomeScreenIdentifier;
    v8[5] = SBSDisplayLayoutElementAppSwitcherIdentifier;
    v9[4] = &off_10090C048;
    v9[5] = &off_10090C060;
    v8[6] = SBSDisplayLayoutElementSpotlightIdentifier;
    v8[7] = SBSDisplayLayoutElementNowPlayingIdentifier;
    v9[6] = &off_10090C078;
    v9[7] = &off_10090C090;
    v8[8] = SBSDisplayLayoutElementCarPlayOEMIdentifier;
    v8[9] = SBSDisplayLayoutElementLoginIdentifier;
    v9[8] = &off_10090C0A8;
    v9[9] = &off_10090C0C0;
    v8[10] = SBSDisplayLayoutElementPasscodeIdentifier;
    v8[11] = SBSDisplayLayoutElementTodayViewIdentifier;
    v9[10] = &off_10090C0D8;
    v9[11] = &off_10090C0F0;
    v8[12] = SBSDisplayLayoutElementLockScreenNavigationIdentifier;
    v8[13] = @"SBVoiceControlAlert";
    v9[12] = &off_10090C108;
    v9[13] = &off_10090C120;
    v8[14] = @"com.apple.SharingViewService";
    v8[15] = @"com.apple.camera";
    v9[14] = &off_10090C138;
    v9[15] = &off_10090C150;
    v8[16] = @"com.apple.InCallService";
    v8[17] = @"com.apple.CoreAuthUI";
    v9[16] = &off_10090C168;
    v9[17] = &off_10090C180;
    v8[18] = @"com.apple.purplebuddy";
    v8[19] = @"SBSpotlightAlert";
    v9[18] = &off_10090C198;
    v9[19] = &off_10090C078;
    v3 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:20];
    v4 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
    [v4 setNeedsUserInteractivePriority:1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100004B00;
    v7[3] = &unk_1008D4F58;
    v7[4] = v3;
    v7[5] = self;
    [v4 setTransitionHandler:v7];
    v5 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v4];
    systemUIMonitor = self->_systemUIMonitor;
    self->_systemUIMonitor = v5;
  }
}

- (void)installMirroringMonitor
{
  v3 = +[FBSDisplayLayoutMonitorConfiguration configurationForContinuityDisplay];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10022FDF8;
  v6[3] = &unk_1008D4F80;
  v6[4] = self;
  [v3 setTransitionHandler:v6];
  v4 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v3];
  mirroringMonitor = self->_mirroringMonitor;
  self->_mirroringMonitor = v4;
}

- (void)installUILockStatusMonitor
{
  if (!self->_uiLockStatusToken)
  {
    handler[5] = v2;
    handler[6] = v3;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100022FD8;
    handler[3] = &unk_1008CE690;
    handler[4] = self;
    notify_register_dispatch(kSBSLockStateNotifyKey, &self->_uiLockStatusToken, &_dispatch_main_q, handler);
  }
}

- (void)installUltraWideBandStateMonitor
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleRapportStatusChanged" name:@"com.apple.sharingd.RapportStatusChanged" object:0];
}

- (unint64_t)ultraWideBandState
{
  v2 = +[SDRapportBrowser sharedRapportBrowser];
  v3 = [v2 ultraWideBandState];

  return v3;
}

- (void)updateWatchWristState:(int64_t)a3
{
  watchWristState = self->_watchWristState;
  self->_watchWristState = a3;
  if (watchWristState != a3)
  {
    v6 = daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(SDStatusMonitor *)self stringForWatchWristState:a3];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Watch wrist state changed: %@", &v8, 0xCu);
    }

    [(SDStatusMonitor *)self postNotification:@"com.apple.sharingd.WristStateChanged"];
  }
}

- (id)stringForWatchWristState:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Unexpected";
  }

  else
  {
    return *(&off_1008D5188 + a3);
  }
}

- (void)handleWiFiPasswordSharingChanged
{
  v2 = [SFPasswordSharingAvailabilityNotification UTF8String];

  notify_post(v2);
}

- (void)installWiFiPasswordSharingMonitor
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleWiFiPasswordSharingChanged" name:@"com.apple.sharingd.BluetoothPowerChanged" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"handleWiFiPasswordSharingChanged" name:@"com.apple.sharingd.AppleIDChanged" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"handleWiFiPasswordSharingChanged" name:@"com.apple.sharingd.AppleAccountSignIn" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"handleWiFiPasswordSharingChanged" name:@"com.apple.sharingd.AppleAccountSignOut" object:0];
}

- (void)installSSIDCacheMonitor
{
  v3 = SCPreferencesCreateWithAuthorization(0, @"com.apple.sharingd", @"com.apple.wifi.plist", 0);
  if (v3)
  {
    v4 = v3;
    v9.version = 0;
    memset(&v9.retain, 0, 24);
    v9.info = self;
    v5 = SCPreferencesSetCallback(v3, sub_100230414, &v9);
    SCPreferencesSetDispatchQueue(v4, &_dispatch_main_q);
    v6 = daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "yes";
      if (!v5)
      {
        v7 = "no";
      }

      *buf = 136315138;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SSID cache monitor successfully installed: %s", buf, 0xCu);
    }

    CFRelease(v4);
  }

  else
  {
    v8 = daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100232854();
    }
  }
}

- (void)clearWirelessState
{
  pthread_mutex_lock(&stru_100972F48);
  deviceSupportsWAPI = self->_deviceSupportsWAPI;
  self->_deviceSupportsWAPI = 0;

  pthread_mutex_unlock(&stru_100972F48);
}

- (void)logWiFiPowerState
{
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(SDStatusMonitor *)self wirelessEnabled];
    v5 = "off";
    if (v4)
    {
      v5 = "on";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Wi-Fi power is now %s", &v6, 0xCu);
  }
}

- (BOOL)_isEveryoneModeExpired
{
  v2 = [(SDStatusMonitor *)self _everyoneModeExpiryDate];
  if (v2)
  {
    v3 = +[NSDate now];
    v4 = [v3 laterDate:v2];
    v5 = [v4 isEqualToDate:v3];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_everyoneModeExpiryDate
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"EveryoneModeUpdateTime"];

  if (!v4)
  {
    v5 = daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Everyone mode updated date not present", buf, 2u);
    }

    goto LABEL_8;
  }

  v5 = [NSDate dateWithTimeIntervalSinceNow:1209600.0];
  v6 = [v4 laterDate:v5];
  v7 = [v6 isEqualToDate:v4];

  if (v7)
  {
    v8 = daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Everyone mode updated date too far in future", v11, 2u);
    }

LABEL_8:
    v9 = 0;
    goto LABEL_10;
  }

  [(SDStatusMonitor *)self _everyoneModeExpiryInterval];
  v9 = [v4 dateByAddingTimeInterval:?];
LABEL_10:

  return v9;
}

- (void)_checkEveryoneModeExpiry
{
  if (SFDeviceTimeLimitEveryoneMode() && !self->_currentDiscoverableMode)
  {
    v3 = daemon_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking initial everyone mode expiry", v4, 2u);
    }

    if ([(SDStatusMonitor *)self _isEveryoneModeExpired])
    {
      [(SDStatusMonitor *)self _expireEveryoneModeAndOnlySetDefault:1];
    }

    else
    {
      [(SDStatusMonitor *)self _scheduleCheckForEveryoneModeExpiry];
    }
  }
}

- (void)_expireEveryoneModeAndOnlySetDefault:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = kSFOperationDiscoverableModeKey;
  v7 = [v5 objectForKey:kSFOperationDiscoverableModeKey];

  v8 = [v7 isEqual:kSFOperationDiscoverableModeEveryone];
  v9 = kSFOperationDiscoverableModeContactsOnly;
  if (!v8)
  {
    v9 = v7;
  }

  v10 = v9;
  v11 = daemon_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Everyone mode expired - setting to %@", &v13, 0xCu);
  }

  if (v3)
  {
    pthread_mutex_lock(&stru_100972F48);
    v12 = +[NSUserDefaults standardUserDefaults];
    [v12 setObject:v10 forKey:v6];
    [v12 synchronize];
    pthread_mutex_unlock(&stru_100972F48);
  }

  else
  {
    [(SDStatusMonitor *)self setDiscoverableMode:v10];
  }

  [(SDStatusMonitor *)self _cancelCheckForEveryoneModeExpiry];
}

- (void)_updateEveryoneModeExpiryDateOnChange:(id)a3
{
  v4 = a3;
  if (SFDeviceTimeLimitEveryoneMode())
  {
    if ([v4 isEqual:kSFOperationDiscoverableModeEveryone])
    {
      pthread_mutex_lock(&stru_100972F48);
      v5 = +[NSDate now];
      v6 = +[NSUserDefaults standardUserDefaults];
      [v6 setObject:v5 forKey:@"EveryoneModeUpdateTime"];
      [v6 synchronize];
      pthread_mutex_unlock(&stru_100972F48);
      v7 = daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating everyone mode updated date %@", &v8, 0xCu);
      }

      [(SDStatusMonitor *)self _scheduleCheckForEveryoneModeExpiry];
    }

    else
    {
      [(SDStatusMonitor *)self _cancelCheckForEveryoneModeExpiry];
    }
  }
}

- (void)_scheduleCheckForEveryoneModeExpiry
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:kSFOperationDiscoverableModeKey];

  if (!self->_airDropEveryoneModeExpiryTimer && [v4 isEqual:kSFOperationDiscoverableModeEveryone])
  {
    pthread_mutex_lock(&stru_100972F48);
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    airDropEveryoneModeExpiryTimer = self->_airDropEveryoneModeExpiryTimer;
    self->_airDropEveryoneModeExpiryTimer = v5;

    v7 = self->_airDropEveryoneModeExpiryTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100230D24;
    handler[3] = &unk_1008CDEA0;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    [(SDStatusMonitor *)self _currentEveryoneModeExpiryInterval];
    v9 = v8;
    v10 = daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [NSNumber numberWithDouble:v9];
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Scheduling everyone mode expiry handler for interval %@", buf, 0xCu);
    }

    v12 = self->_airDropEveryoneModeExpiryTimer;
    SFDispatchTimerSet();
    dispatch_resume(self->_airDropEveryoneModeExpiryTimer);
    pthread_mutex_unlock(&stru_100972F48);
  }
}

- (void)_cancelCheckForEveryoneModeExpiry
{
  if (self->_airDropEveryoneModeExpiryTimer)
  {
    pthread_mutex_lock(&stru_100972F48);
    v3 = daemon_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancelling scheduled everyone mode expiry handler", buf, 2u);
    }

    dispatch_source_cancel(self->_airDropEveryoneModeExpiryTimer);
    airDropEveryoneModeExpiryTimer = self->_airDropEveryoneModeExpiryTimer;
    self->_airDropEveryoneModeExpiryTimer = 0;

    pthread_mutex_unlock(&stru_100972F48);
  }

  else
  {
    v5 = daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Everyone mode expiry handler already cancelled", v6, 2u);
    }
  }
}

- (double)_everyoneModeExpiryInterval
{
  if (!IsAppleInternalBuild())
  {
    return 600.0;
  }

  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"EveryoneModeExpiryTimeInterval"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 600.0;
  }

  return v5;
}

- (double)_currentEveryoneModeExpiryInterval
{
  v2 = [(SDStatusMonitor *)self _everyoneModeExpiryDate];
  v3 = v2;
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    if (v4 >= 0.0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0.0;
    }
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

@end