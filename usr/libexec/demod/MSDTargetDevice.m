@interface MSDTargetDevice
+ (MSDTargetDevice)sharedInstance;
- (BOOL)allowAccountSetup;
- (BOOL)allowSnapshotMode;
- (BOOL)allowSnapshotRevertTimer;
- (BOOL)applyStagedDevicePreferences:(id *)a3;
- (BOOL)backgroundDownloadActive;
- (BOOL)cachedBundleInstallAttempted;
- (BOOL)canRunCleanUpForBetterTogetherDevice;
- (BOOL)canStartContentUpdate;
- (BOOL)canStartOSUpdate;
- (BOOL)cleanUpPreferencesFile;
- (BOOL)clearCurrentiOSBuild;
- (BOOL)createMobileStoreDemoCache;
- (BOOL)createTemporaryPasscodeIfNeeded;
- (BOOL)criticalUpdatePrioritized;
- (BOOL)dcotaOfflineModeDevice;
- (BOOL)deactivateDevice;
- (BOOL)deleteConfigurationApp;
- (BOOL)deleteNVRam:(id)a3;
- (BOOL)deleteOperationRequest;
- (BOOL)deleteOperationRequestAndQuitHelper;
- (BOOL)deleteOperationResponse;
- (BOOL)demoModeValueForKey:(id)a3;
- (BOOL)demoSetup;
- (BOOL)holdPowerAssertion;
- (BOOL)iCloudAccountSyncNeeded;
- (BOOL)isBetterTogetherDemo;
- (BOOL)isContentFrozen;
- (BOOL)isDDLDevice;
- (BOOL)isDemoEligible;
- (BOOL)isDemoModeOn;
- (BOOL)isOfflineMode;
- (BOOL)isPasscodeModificationAllowed;
- (BOOL)isPressDemoDevice;
- (BOOL)isVerifiedDemoDevice;
- (BOOL)liftPowerAssertion;
- (BOOL)managedStoreDemoMode;
- (BOOL)migrateCellularSupportFlag;
- (BOOL)migrateDemoDeviceToDemoVolume;
- (BOOL)migratePreferenceAndWifiSettingsToDemoVolume;
- (BOOL)moveFilesToFinalDst:(id)a3 finalPath:(id)a4;
- (BOOL)proceeded;
- (BOOL)removeKeyFromPreferenceFile:(id)a3;
- (BOOL)removePerHubInfoFromPreferencesForMigration;
- (BOOL)removeTemporaryPasscodeIfNeeded;
- (BOOL)revertSnapshot;
- (BOOL)runCleanUpForBetterTogetherDevice;
- (BOOL)saveCurrentiOSBuild;
- (BOOL)saveHubCertificateIdentifer:(id)a3;
- (BOOL)saveHubHostNameList:(id)a3;
- (BOOL)saveHubSuppliedSettings:(id)a3;
- (BOOL)saveOperationError:(id)a3;
- (BOOL)sendIconStateToSB:(id)a3;
- (BOOL)setDemoDeviceFlag;
- (BOOL)setDemoEnrollmentFlag:(id)a3;
- (BOOL)setLowPowerMode:(int64_t)a3;
- (BOOL)setPOSDeviceFlag;
- (BOOL)setSEPDemoMode:(BOOL)a3;
- (BOOL)setupDemoDeviceMetadataFolder;
- (BOOL)setupDummyPreferenceFile;
- (BOOL)setupFactoryDemoDeviceMetadataFolder;
- (BOOL)shouldForgetKnownNetworkUponUnlock;
- (BOOL)snapshotRevertFlagged;
- (BOOL)toggleSEPDemoModeOnManagedPreferencesChange;
- (BOOL)turnOnDemoMode;
- (BOOL)turnOnPressDemoMode;
- (BOOL)turnOnStoreDemoMode;
- (BOOL)updateDeviceOptions:(id)a3 skipImutableKeys:(BOOL)a4;
- (BOOL)waitingForCommand;
- (MSDTargetDevice)init;
- (NSData)certificateHash;
- (NSDate)lastRebootTime;
- (NSDictionary)wifiSettings;
- (NSNumber)nandSize;
- (NSString)OSBuild;
- (NSString)OSVersion;
- (NSString)cachedBundleInstallState;
- (NSString)demodVersion;
- (NSString)hubHostName;
- (NSString)hubPort;
- (NSString)hubProtocolVersion;
- (NSString)installedFactoryBundleID;
- (NSString)name;
- (NSString)preferredStoreID;
- (NSString)productType;
- (NSString)request;
- (NSString)response;
- (NSString)serialNumber;
- (NSString)udid;
- (id)cloudPairedDevices;
- (id)decodeComponentIdx:(int)a3 forSavedString:(id)a4;
- (id)deviceInformation:(id)a3 appendPingInfo:(BOOL)a4;
- (id)getCachingHubFailureEventForPing;
- (id)getDemoEnrollmentFlag;
- (id)getDesiredIconStateFromSB;
- (id)getDeviceOptions;
- (id)getOSUpdateRequest;
- (id)getS3ServerFailureEventForPing;
- (id)getSavedError;
- (id)getSavedOSPreferencesRequest;
- (id)getSavedRequest;
- (id)getStagedOSPreferencesRequest;
- (id)hubCertificateIdentifier;
- (id)hubHostNameList;
- (id)hubSuppliedSettings;
- (id)iCloudAccountRecoveryKey;
- (id)identityServicesID;
- (id)installedDeletableSystemApps;
- (id)lastSettingsUpdatedTime;
- (id)lastShallowRefreshTime;
- (id)lastSnapshotRevertTime;
- (id)minOSVersionAvailable;
- (id)pathForDummyPreferenceFile;
- (id)previousiOSBuild;
- (id)readNVRam:(id)a3;
- (id)requiredDeletableSystemApps;
- (id)retrieveSignedManifest;
- (int)activationConfigurationFlags;
- (int)getSavedCompleteByInterval;
- (int)getSavedFlag;
- (int)mode;
- (int64_t)batteryCapacity;
- (int64_t)findMyHubRetryAtTime;
- (int64_t)getFreeSpace;
- (int64_t)hubLastOnlineTime;
- (unint64_t)backgroundDownloadState;
- (unint64_t)fetchActiveNetworkInterface;
- (unint64_t)typeOfDemoDevice;
- (void)acquireDeviceKeybagAssertionIfNeeded;
- (void)backToVirgin:(int)a3;
- (void)caLogsUploadTimerHandler:(id)a3;
- (void)cleanUpBackgroundState:(BOOL)a3;
- (void)cleanupDummyPreferenceFile;
- (void)clearMinOSVersionAvailable;
- (void)clearOSUpdateRequest;
- (void)clearSafariHistory;
- (void)clearUpF200FootprintIfNeeded;
- (void)clearUpNvramIfNeeded;
- (void)configApplePencilToEnterSleepModeIfPaired;
- (void)configureGreyMatterAutoUpdate;
- (void)configureLowPowerModeForTime:(id)a3;
- (void)configureNetworkInterface;
- (void)delayRebootForTesting;
- (void)destroyWorkFolderForBootTask;
- (void)disableLaunchdServicesIfNeededForWatch;
- (void)disableSUAutoDownloadForWatch;
- (void)enableSnapshotMode:(BOOL)a3;
- (void)forceSwitchToDemoModeIfNeeded;
- (void)installAndWaitForSystemApps;
- (void)kickOffCachedBundleInstall;
- (void)manageDataVolume:(id)a3;
- (void)manageDemoVolume:(id)a3;
- (void)manageDeviceSnapshot:(id)a3;
- (void)manageUserVolume:(id)a3;
- (void)manualUpdateMode:(BOOL *)a3 allowChange:(BOOL *)a4;
- (void)markContentInstallingInstalled;
- (void)migrateNvramToDemoVolume;
- (void)notifyCleanEnergyChargingToggled;
- (void)obliterateDeviceWithAdminCredential:(id)a3;
- (void)patchBackupFolderInStaging:(id)a3;
- (void)processNewFeatureFlags:(id)a3 oldFeatureFlags:(id)a4;
- (void)refreshStoreHoursManagerUsingSettingsAndTime:(id)a3;
- (void)registerCAHearbeatActivity;
- (void)resetSystemTimeCache;
- (void)saveDeviceOptions:(id)a3;
- (void)saveFindMyHubRetryAtTime:(int64_t)a3;
- (void)saveHubLastOnlineTime:(int64_t)a3;
- (void)saveLastSettingsUpdatedTime:(id)a3;
- (void)saveLastShallowRefreshTime:(id)a3;
- (void)saveLastSnapshotRevertTime:(id)a3;
- (void)saveMinOSVersionAvailable:(id)a3;
- (void)saveOSPreferencesRequest:(id)a3;
- (void)saveOSUpdateRequest:(id)a3;
- (void)saveRequiredDeletableSystemApps;
- (void)saveSnapshotRevertFlagged:(BOOL)a3;
- (void)saveiCloudAccountRecoveryKey:(id)a3;
- (void)saveiCloudAccountSyncNeeded:(BOOL)a3;
- (void)setBackgroundDownloadActive:(BOOL)a3;
- (void)setBackgroundDownloadState:(unint64_t)a3;
- (void)setCachedBundleInstallState:(id)a3;
- (void)setHubHostName:(id)a3;
- (void)setHubPort:(id)a3;
- (void)setHubProtocolVersion:(id)a3;
- (void)setInstalledFactoryBundleID:(id)a3;
- (void)setPreferredStoreID:(id)a3;
- (void)setProceeded:(BOOL)a3;
- (void)setRequest:(id)a3;
- (void)setResponse:(id)a3;
- (void)setWaitingForCommand:(BOOL)a3;
- (void)setWifiSettings:(id)a3;
- (void)setupCoreAnalyticsLogsUploadTimer;
- (void)setupSnapshotRevertTimer;
- (void)setupStoreHoursManager;
- (void)setupWorkFolderForBootTask;
- (void)shutdown;
- (void)snapshotRevertTimerHandler:(id)a3;
- (void)stageNewOSPreferences:(id)a3;
- (void)startWaitingForCommandTimer;
- (void)terminateConfigurationApp;
- (void)unlockDeviceKeybagIfNeeded;
- (void)waitForBuddy:(id)a3 updateStatus:(BOOL)a4;
- (void)waitForBuddyWithTimeout;
- (void)waitForNetworkReachabilityWithTimeout:(unint64_t)a3;
@end

@implementation MSDTargetDevice

+ (MSDTargetDevice)sharedInstance
{
  if (qword_1001A5778 != -1)
  {
    sub_1000D245C();
  }

  v3 = qword_1001A5770;

  return v3;
}

- (MSDTargetDevice)init
{
  v5.receiver = self;
  v5.super_class = MSDTargetDevice;
  v2 = [(MSDTargetDevice *)&v5 init];
  if (v2)
  {
    v3 = +[MSDHelperAgent sharedInstance];
    [(MSDTargetDevice *)v2 setHelperAgent:v3];

    [(MSDTargetDevice *)v2 setPowerAssertion:0];
  }

  return v2;
}

- (NSString)name
{
  v2 = MGCopyAnswer();

  return v2;
}

- (NSString)udid
{
  v2 = +[MSDPlatform sharedInstance];
  v3 = [v2 macOS];

  if (v3)
  {
    v4 = MGCopyAnswer();
    v5 = [v4 stringByPaddingToLength:25 withString:@"0" startingAtIndex:0];
    v6 = [v5 uppercaseString];
  }

  else
  {
    v6 = MGCopyAnswer();
  }

  return v6;
}

- (NSString)serialNumber
{
  v2 = MGCopyAnswer();

  return v2;
}

- (int)mode
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"demo-install-state"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)typeOfDemoDevice
{
  v3 = +[MSDKeychainManager sharedInstance];
  v4 = [v3 getItemForKey:@"com.apple.mobilestoredemo.keychainItemID"];

  if (v4)
  {
    return 6;
  }

  if ([(MSDTargetDevice *)self isVerifiedDemoDevice])
  {
    v6 = +[MSDHelperAgent sharedInstance];
    v7 = [v6 fileExistsAtPath:@"/private/var/demo_backup/Metadata/Content.plist"];

    v8 = v7 == 0;
    v9 = 4;
  }

  else
  {
    if ([(MSDTargetDevice *)self storeDemoMode])
    {
      return 3;
    }

    v8 = ![(MSDTargetDevice *)self isVerifiedPOSDevice];
    v9 = 1;
  }

  if (v8)
  {
    return v9;
  }

  else
  {
    return v9 + 1;
  }
}

- (BOOL)removeKeyFromPreferenceFile:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 removeObjectForKey:v3];

  if ((v5 & 1) == 0)
  {
    sub_1000D2470();
  }

  return v5;
}

- (NSString)request
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"msd-request"];

  return v3;
}

- (void)setRequest:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:v3 forKey:@"msd-request"];
}

- (NSString)response
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"msd-response"];

  return v3;
}

- (void)setResponse:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:v3 forKey:@"msd-response"];
}

- (void)forceSwitchToDemoModeIfNeeded
{
  v3 = [(MSDTargetDevice *)self modeLock];
  objc_sync_enter(v3);
  v4 = +[MSDKeychainManager sharedInstance];
  v5 = [v4 getItemForKey:@"com.apple.mobilestoredemo.keychainItemID"];

  if (v5)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "The device is enrolled, will force to demo mode now.", buf, 2u);
    }

    if ([(MSDTargetDevice *)self mode]== 4)
    {
      v7 = +[MSDDemoUpdateController sharedInstance];
      [v7 migrateDataWithBlockingUI:-[MSDTargetDevice mode](self startMigration:{"mode"), 1}];
    }

    [(MSDTargetDevice *)self deleteConfigurationApp];
    if ([(MSDTargetDevice *)self allowSnapshotMode])
    {
      v8 = +[MSDWiFiHelper sharedInstance];
      [v8 saveCurrentWiFiSettings];
    }

    if ([(MSDTargetDevice *)self mode]== 2 || [(MSDTargetDevice *)self mode]== 4)
    {
      [(MSDTargetDevice *)self markContentInstallingInstalled];
      v9 = +[MSDHelperAgent sharedInstance];
      [v9 switchToBackupFolder];

      v10 = +[MSDProgressUpdater sharedInstance];
      v11 = [v10 bundleInProgress];
      [v11 stopBundleUpdateTimer];
    }

    if ([(MSDTargetDevice *)self mode]== 7)
    {
      [(MSDTargetDevice *)self clearOSUpdateRequest];
    }

    v12 = +[MSDProgressUpdater sharedInstance];
    [v12 updateStage:7];

    v13 = [(MSDTargetDevice *)self getSavedFlag];
    v14 = +[MSDPlatform sharedInstance];
    if (([v14 macOS] & 1) == 0)
    {
      v15 = +[MSDPlatform sharedInstance];
      if (([v15 iOS] & 1) == 0)
      {

LABEL_22:
        v17 = [(MSDTargetDevice *)self helperAgent];
        [v17 clearStagedDeviceAfterUpdateProcess];

        [(MSDTargetDevice *)self setMode:5];
        [(MSDTargetDevice *)self enableSnapshotMode:1];
        goto LABEL_23;
      }
    }

    if ((v13 & 2) != 0)
    {
      [(MSDTargetDevice *)self waitForPricing:60 forReboot:1];
    }

    goto LABEL_22;
  }

  v16 = sub_100063A54();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "The device has not been enrolled, will not force to demo mode.", v18, 2u);
  }

LABEL_23:
  objc_sync_exit(v3);
}

- (BOOL)setDemoDeviceFlag
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [NSNumber numberWithBool:1];
  v4 = [v2 setObject:v3 forKey:@"DemoDevice"];

  if ((v4 & 1) == 0)
  {
    sub_1000D265C();
  }

  return v4;
}

- (BOOL)setPOSDeviceFlag
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [NSNumber numberWithBool:1];
  v4 = [v2 setObject:v3 forKey:@"POSDevice"];

  if ((v4 & 1) == 0)
  {
    sub_1000D26B8();
  }

  return v4;
}

- (void)setPreferredStoreID:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:v3 forKey:@"PreferredStoreID"];
}

- (NSString)preferredStoreID
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"PreferredStoreID"];

  return v3;
}

- (void)obliterateDeviceWithAdminCredential:(id)a3
{
  v3 = objc_alloc_init(DDRResetOptions);
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 objectForKey:@"PreserveESimRequested"];

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Should we preserve eSim across device obliteration: %{public}@", &v9, 0xCu);
  }

  if (!v5 || ([v5 BOOLValue] & 1) == 0)
  {
    [v3 setEraseDataPlan:1];
  }

  v7 = [[DDRResetRequest alloc] initWithMode:4 options:v3 reason:@"Demod Obliterate Device"];
  v8 = +[DDRResetService sharedInstance];
  [v8 resetWithRequest:v7 completion:&stru_10016AD78];
}

- (void)backToVirgin:(int)a3
{
  v5 = dispatch_semaphore_create(0);
  v6 = [(MSDTargetDevice *)self mode];
  v7 = +[MSDDemoUpdateTimeKeeper sharedInstance];
  v26 = 0;
  v8 = [v7 shouldCleanUp:&v26];
  v9 = v26;
  v10 = v9;
  if (v8)
  {
    v8 = [v9 code] == 3727741185;
  }

  v11 = sub_100063A54();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v6 == 5 || v8)
  {
    if (v12)
    {
      *buf = 67109376;
      LODWORD(v28[0]) = v6;
      WORD2(v28[0]) = 1024;
      *(v28 + 6) = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "mode = %d, canceling is %d, need an extra reboot to complete the operation.", buf, 0xEu);
    }

    if (a3 == 9)
    {
      v19 = self;
      v20 = 8;
    }

    else
    {
      if (a3)
      {
        goto LABEL_23;
      }

      v19 = self;
      v20 = 6;
    }

    [(MSDTargetDevice *)v19 switchModeImmediately:v20];
    goto LABEL_23;
  }

  if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Clearing all nvrams/demo volume/keychain items/preference-file used by demod.", buf, 2u);
  }

  [(MSDTargetDevice *)self deleteNVRam:@"demo-install-state"];
  [(MSDTargetDevice *)self deleteNVRam:@"enable-remap-mode"];
  [(MSDTargetDevice *)self deleteNVRam:@"msd-request"];
  [(MSDTargetDevice *)self deleteNVRam:@"msd-reboot-at"];
  [(MSDTargetDevice *)self deleteNVRam:@"msd-last-auto-reboot"];
  v13 = +[MSDPreferencesFile sharedInstance];
  v14 = [v13 objectForKey:@"preserveDDLFlag"];

  if (!v14 || (v15 = [v14 BOOLValue], +[MSDPreferencesFile sharedInstance](MSDPreferencesFile, "sharedInstance"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "removeObjectForKey:", @"preserveDDLFlag"), v16, (v15 & 1) == 0))
  {
    v17 = sub_100063A54();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28[0] = "[MSDTargetDevice backToVirgin:]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s - Deleting DDL flag in nvram.", buf, 0xCu);
    }

    [(MSDTargetDevice *)self deleteNVRam:@"ownership-warning"];
  }

  v18 = +[MSDAccountManager sharedInstance];
  [v18 removeAccounts:0];

  [(MSDTargetDevice *)self manageDemoVolume:@"Delete"];
  [(MSDTargetDevice *)self unregisterCAHeartbeatActivity];
  if (a3 == 9)
  {
    [(MSDTargetDevice *)self obliterateDeviceWithAdminCredential:0];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    [(MSDTargetDevice *)self deactivateDevice];
    v21 = +[MSDCryptoHandler sharedInstance];
    [v21 deleteSecretKey];

    v22 = +[MSDAppPrivacyPermissionsHelper sharedInstance];
    [v22 revokePrivacyPermissionsForAllApps];

    v23 = [(MSDTargetDevice *)self pathForDummyPreferenceFile];
    v24 = +[NSFileManager defaultManager];
    [v24 removeItemAtPath:v23 error:0];

    v25 = +[MSDKeychainManager sharedInstance];
    [v25 deleteItemForKey:@"com.apple.mobilestoredemo.keychainItemID"];

    [(MSDTargetDevice *)self enableSnapshotMode:0];
  }

LABEL_23:
}

- (BOOL)removePerHubInfoFromPreferencesForMigration
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 removeObjectsForKeys:&off_10017BD30];

  return v3;
}

- (BOOL)cleanUpPreferencesFile
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [&off_10017BD48 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v16;
    *&v3 = 138543362;
    v14 = v3;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(&off_10017BD48);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = +[MSDPreferencesFile sharedInstance];
        v9 = [v8 objectForKey:v7];

        if (v9)
        {
          v10 = sub_100063A54();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v14;
            v20 = v7;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing legacy key %{public}@ from preference file", buf, 0xCu);
          }

          v11 = +[MSDPreferencesFile sharedInstance];
          v12 = [v11 removeObjectForKey:v7];

          if ((v12 & 1) == 0)
          {
            sub_1000D2714();
            return 0;
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [&off_10017BD48 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (BOOL)migrateDemoDeviceToDemoVolume
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MSDTargetDevice *)v2 migratePreferenceAndWifiSettingsToDemoVolume];
  if (v3)
  {
    [(MSDTargetDevice *)v2 migrateNvramToDemoVolume];
  }

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)migratePreferenceAndWifiSettingsToDemoVolume
{
  v3 = +[NSFileManager defaultManager];
  [(MSDTargetDevice *)self manageDemoVolume:@"Setup"];
  if (+[MSDPreferencesFile preferencesFileExists])
  {
    v4 = [(MSDTargetDevice *)self pathForDummyPreferenceFile];
    v5 = [v3 fileExistsAtPath:v4];

    if (v5)
    {
      v6 = sub_100063A54();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Migration already done.", buf, 2u);
      }

      v7 = 0;
      v8 = 0;
      v9 = 1;
      goto LABEL_19;
    }
  }

  if (+[MSDPreferencesFile preferencesFileExists](MSDPreferencesFile, "preferencesFileExists") || (-[MSDTargetDevice pathForDummyPreferenceFile](self, "pathForDummyPreferenceFile"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v3 fileExistsAtPath:v10], v10, !v11))
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Migration encountered unexpected error.", v19, 2u);
    }

    v7 = 0;
    v8 = 0;
    goto LABEL_18;
  }

  v12 = sub_100063A54();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Need to migrate old preferences file and other data.", v21, 2u);
  }

  v8 = [NSDictionary dictionaryWithContentsOfFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/Preferences/com.apple.MobileStoreDemo.WiFiSetting.plist"];
  [(MSDTargetDevice *)self manageDemoVolume:@"Delete"];
  v13 = [(MSDTargetDevice *)self pathForDummyPreferenceFile];
  v14 = +[MSDPreferencesFile preferencesFilePath];
  v20 = 0;
  v15 = [v3 moveItemAtPath:v13 toPath:v14 error:&v20];
  v7 = v20;

  if ((v15 & 1) == 0)
  {
    v6 = sub_100063B64();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000D27AC();
    }

    goto LABEL_18;
  }

  if (v8)
  {
    [(MSDTargetDevice *)self setWifiSettings:v8];
  }

  v16 = [(MSDTargetDevice *)self pathForDummyPreferenceFile];
  v17 = [v3 createFileAtPath:v16 contents:0 attributes:0];

  if ((v17 & 1) == 0)
  {
    v6 = sub_100063B64();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000D281C();
    }

LABEL_18:
    v9 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v9 = 1;
LABEL_20:

  return v9;
}

- (void)migrateNvramToDemoVolume
{
  v3 = [(MSDTargetDevice *)self readNVRam:@"demo-install-state"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", [v3 bytes], 4);
      -[MSDTargetDevice setMode:](self, "setMode:", [v4 intValue]);
      [(MSDTargetDevice *)self deleteNVRam:@"demo-install-state"];
    }
  }

  v5 = [(MSDTargetDevice *)self readNVRam:@"msd-reboot-at"];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MSDTargetDevice *)self deleteNVRam:@"msd-reboot-at"];
    }
  }

  [(MSDTargetDevice *)self removeKeyFromPreferenceFile:@"msd-reboot-at"];
  v6 = [(MSDTargetDevice *)self readNVRam:@"enable-remap-mode"];

  if (v6)
  {
    [(MSDTargetDevice *)self deleteNVRam:@"enable-remap-mode"];
  }

  v7 = [(MSDTargetDevice *)self readNVRam:@"msd-last-auto-reboot"];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MSDTargetDevice *)self deleteNVRam:@"msd-last-auto-reboot"];
    }
  }

  [(MSDTargetDevice *)self removeKeyFromPreferenceFile:@"msd-last-auto-reboot"];
  v9 = [(MSDTargetDevice *)self readNVRam:@"msd-request"];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[NSString alloc] initWithData:v9 encoding:4];
      [(MSDTargetDevice *)self setRequest:v8];

      [(MSDTargetDevice *)self deleteNVRam:@"msd-request"];
    }
  }
}

- (BOOL)setupDemoDeviceMetadataFolder
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = +[NSFileManager defaultManager];
  [(MSDTargetDevice *)v2 manageDemoVolume:@"Setup"];
  if (![(MSDTargetDevice *)v2 createMobileStoreDemoCache])
  {
    v8 = sub_100063B64();
    sub_1000D2850(v8, v11);
    v9 = v11[0];
LABEL_8:

    v6 = 0;
    goto LABEL_4;
  }

  v4 = [(MSDTargetDevice *)v2 pathForDummyPreferenceFile];
  v5 = [v3 createFileAtPath:v4 contents:0 attributes:0];

  if ((v5 & 1) == 0)
  {
    v9 = sub_100063B64();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(MSDTargetDevice *)v2 pathForDummyPreferenceFile];
      sub_1000D28B8(v10, v11, v9);
    }

    goto LABEL_8;
  }

  v6 = 1;
LABEL_4:

  objc_sync_exit(v2);
  return v6;
}

- (BOOL)setupFactoryDemoDeviceMetadataFolder
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up metadata folder for factory demo device...", v7, 2u);
  }

  v4 = +[MSDHelperAgent sharedInstance];
  v5 = [v4 prepareWorkDirectory:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata" writableByNonRoot:1];

  objc_sync_exit(v2);
  return v5;
}

- (id)pathForDummyPreferenceFile
{
  v2 = [@"/var/mobile/Library/Preferences" stringByAppendingPathComponent:@"com.apple.MobileStoreDemo"];
  v3 = [v2 stringByAppendingPathExtension:@"plist"];

  return v3;
}

- (BOOL)setupDummyPreferenceFile
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up dummy preference (keep alive) file for factory demo device...", v10, 2u);
  }

  v4 = +[NSFileManager defaultManager];
  v5 = [(MSDTargetDevice *)v2 pathForDummyPreferenceFile];
  v6 = [v4 createFileAtPath:v5 contents:0 attributes:0];

  if ((v6 & 1) == 0)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(MSDTargetDevice *)v2 pathForDummyPreferenceFile];
      sub_1000D28B8(v9, v10, v8);
    }
  }

  objc_sync_exit(v2);
  return v6;
}

- (void)cleanupDummyPreferenceFile
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing dummy preference (keep alive) file for factory demo device...", v6, 2u);
  }

  v4 = +[NSFileManager defaultManager];
  v5 = [(MSDTargetDevice *)self pathForDummyPreferenceFile];
  [v4 removeItemAtPath:v5 error:0];
}

- (BOOL)moveFilesToFinalDst:(id)a3 finalPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSDTargetDevice *)self helperAgent];
  v9 = [v8 moveStagingToFinal:v6 finalPath:v7];

  if ((v9 & 1) == 0)
  {
    sub_1000D2908();
  }

  return v9;
}

- (void)patchBackupFolderInStaging:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v33[0] = v4;
  v33[1] = @"/var/mobile/Library/Mobile Documents";
  v6 = [NSArray arrayWithObjects:v33 count:2];
  v7 = [NSString pathWithComponents:v6];

  v8 = [(MSDTargetDevice *)self pathForDummyPreferenceFile];
  v9 = [v4 stringByAppendingPathComponent:v8];
  if ([v5 fileExistsAtPath:v9])
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Preference file already in backup path, removing it.", buf, 2u);
    }

    v26 = 0;
    v11 = [v5 removeItemAtPath:v9 error:&v26];
    v12 = v26;
    v13 = v12;
    if ((v11 & 1) == 0)
    {
      v21 = sub_100063A54();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000D29C0();
      }

      v15 = 0;
      goto LABEL_18;
    }

    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v9 stringByDeletingLastPathComponent];
  if (([v5 fileExistsAtPath:v15] & 1) == 0)
  {
    v25 = v14;
    v16 = [v5 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v25];
    v13 = v25;

    if ((v16 & 1) == 0)
    {
      v21 = sub_100063A54();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000D29F4(v13);
      }

      goto LABEL_18;
    }

    v14 = v13;
  }

  v24 = v14;
  v17 = [v5 copyItemAtPath:v8 toPath:v9 error:&v24];
  v13 = v24;

  if ((v17 & 1) == 0)
  {
    v21 = sub_100063A54();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [v13 localizedDescription];
      *buf = 138543874;
      v28 = v8;
      v29 = 2114;
      v30 = v9;
      v31 = 2114;
      v32 = v22;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Cannot copy preference file to backup path (from %{public}@ to %{public}@ - %{public}@)", buf, 0x20u);
    }

    goto LABEL_18;
  }

  if ([v5 fileExistsAtPath:v7])
  {
    v23 = v13;
    v18 = [v5 removeItemAtPath:v7 error:&v23];
    v19 = v23;

    v20 = sub_100063A54();
    v21 = v20;
    if (v18)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = v7;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Removed folder at %{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000D2A80();
    }

    v13 = v19;
LABEL_18:
  }
}

- (void)shutdown
{
  v2 = dispatch_semaphore_create(0);
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device shutting down...", v6, 2u);
  }

  v4 = [[FBSShutdownOptions alloc] initWithReason:@"demod shutdown device"];
  [v4 setRebootType:0];
  v5 = +[FBSSystemService sharedService];
  [v5 shutdownWithOptions:v4];

  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)configApplePencilToEnterSleepModeIfPaired
{
  v2 = objc_alloc_init(HIDManager);
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Configuring Apple Pencil (if any) before device reboot...", buf, 2u);
  }

  [v2 setDeviceMatching:&off_10017C030];
  [v2 setDispatchQueue:&_dispatch_main_q];
  [v2 open];
  [v2 activate];
  v4 = [v2 devices];
  if ([v4 count] == 1)
  {
    buf[2] = 1;
    *buf = 676;
    v5 = [v4 firstObject];
    [v5 open];
    [v5 activate];
    v12 = 0;
    v6 = [v5 setReport:buf reportLength:3 withIdentifier:164 forType:2 error:&v12];
    v7 = v12;
    v8 = sub_100063A54();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "HID Report successfully sent to Apple Pencil!", v11, 2u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000D2AF0(v7);
    }

    [v5 close];
  }

  else
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 count];
      *buf = 134217984;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No or multiple matching Apple Pencil device(s) found: %lu", buf, 0xCu);
    }
  }

  [v2 close];
}

- (void)manualUpdateMode:(BOOL *)a3 allowChange:(BOOL *)a4
{
  if (a3 && a4)
  {
    v7 = [(MSDTargetDevice *)self mode];
    if (v7 >= 2)
    {
      *a3 = 0;
      *a4 = v7 == 5;
    }

    else
    {
      *a3 = 1;
      *a4 = [(MSDTargetDevice *)self allowEnteringDemoMode];
    }
  }

  else
  {
    sub_1000D2B7C();
  }
}

- (id)deviceInformation:(id)a3 appendPingInfo:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [NSMutableDictionary dictionaryWithCapacity:0];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100049F70;
  v16 = &unk_10016ADA0;
  v7 = v17 = self;
  v18 = v7;
  [v6 enumerateObjectsUsingBlock:&v13];

  if (v4)
  {
    v8 = [MSDAccountManager sharedInstance:v13];
    v9 = [v8 existingAccounts];
    v10 = [v9 mutableCopy];

    if (v10)
    {
      [v7 setObject:v10 forKey:@"MSDExistingAccounts"];
    }
  }

  if ([v7 count])
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)getCachingHubFailureEventForPing
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  if (byte_1001A5780)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(MSDTargetDevice *)self localHubFailureReason];

    if (v5)
    {
      v6 = [(MSDTargetDevice *)self localHubFailureReason];
    }

    else
    {
      v6 = @"Default:Local Hub Not Reachable";
    }

    v7 = [NSDictionary dictionaryWithObjectsAndKeys:@"CACHING_HUB_FAILURE", @"error", v6, @"reason", 0];
    v8 = [(MSDTargetDevice *)self udid];
    v9 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v8, @"UniqueDeviceID", v7, @"MSDCachingHubEvent", 0];

    byte_1001A5780 = 1;
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Reporting event:%{public}@", buf, 0xCu);
    }

    v3 = v9;
    v4 = v3;
  }

  return v4;
}

- (id)getS3ServerFailureEventForPing
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  v4 = [(MSDTargetDevice *)self s3ServerFailureReason];

  if (v4)
  {
    v5 = [(MSDTargetDevice *)self s3ServerFailureReason];
  }

  else
  {
    v5 = @"Default:S3 Server Not Reachable";
  }

  v6 = [NSDictionary dictionaryWithObjectsAndKeys:@"S3_SERVER_FAILURE", @"error", v5, @"reason", 0];
  v7 = [(MSDTargetDevice *)self udid];
  v8 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v7, @"UniqueDeviceID", v6, @"MSDS3ServerEvent", 0];

  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Reporting event:%{public}@", buf, 0xCu);
  }

  return v8;
}

- (BOOL)criticalUpdatePrioritized
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"criticalContentUpdateOnly"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)saveOperationError:(id)a3
{
  v4 = a3;
  v5 = [(MSDTargetDevice *)self getSavedRequest];
  if (v5)
  {
    v6 = [v4 localizedFailureReason];

    v7 = [v4 domain];
    v8 = [v4 code];
    v9 = [v4 localizedDescription];
    v10 = v9;
    if (v6)
    {
      v11 = [v4 localizedFailureReason];
      v12 = [NSString stringWithFormat:@"demoUpdateFailed: %@:0x%lx: %@ - %@", v7, v8, v10, v11];
    }

    else
    {
      v12 = [NSString stringWithFormat:@"demoUpdateFailed: %@:0x%lx: %@", v7, v8, v9];
    }

    v13 = sub_100063A54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Saving error message: %{public}@", buf, 0xCu);
    }

    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%08lX", [v4 code]);
    v15 = [v4 domain];
    v16 = [v4 localizedDescription];
    v17 = [NSString stringWithFormat:@"%@:%@:%@", v14, v15, v16];
    [(MSDTargetDevice *)self setResponse:v17];
  }

  else
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000D2C50();
    }
  }

  return v5 != 0;
}

- (BOOL)deleteOperationResponse
{
  v3 = [(MSDTargetDevice *)self response];

  if (!v3)
  {
    return 1;
  }

  return [(MSDTargetDevice *)self removeKeyFromPreferenceFile:@"msd-response"];
}

- (id)decodeComponentIdx:(int)a3 forSavedString:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 componentsSeparatedByString:@":"];
    v8 = sub_100063A54();
    v9 = a3;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 objectAtIndexedSubscript:a3];
      v15[0] = 67109378;
      v15[1] = a3;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "components[%d] = %{public}@", v15, 0x12u);
    }

    if ([v7 count] > a3 && (objc_msgSend(v7, "objectAtIndexedSubscript:", a3), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, v13))
    {
      v11 = [v7 objectAtIndexedSubscript:v9];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)getSavedRequest
{
  v3 = [(MSDTargetDevice *)self request];
  v4 = [(MSDTargetDevice *)self decodeComponentIdx:0 forSavedString:v3];

  return v4;
}

- (int)getSavedFlag
{
  v3 = [(MSDTargetDevice *)self request];
  v4 = [(MSDTargetDevice *)self decodeComponentIdx:3 forSavedString:v3];

  if (v4)
  {
    v5 = [v4 intValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (int)getSavedCompleteByInterval
{
  v3 = [(MSDTargetDevice *)self request];
  v4 = [(MSDTargetDevice *)self decodeComponentIdx:4 forSavedString:v3];

  if (v4)
  {
    v5 = [v4 intValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getSavedError
{
  v3 = [(MSDTargetDevice *)self response];
  v4 = [(MSDTargetDevice *)self decodeComponentIdx:0 forSavedString:v3];

  v5 = [(MSDTargetDevice *)self response];
  v6 = [(MSDTargetDevice *)self decodeComponentIdx:1 forSavedString:v5];

  v7 = [(MSDTargetDevice *)self response];
  v8 = [(MSDTargetDevice *)self decodeComponentIdx:2 forSavedString:v7];

  v15 = 0;
  v9 = [NSScanner scannerWithString:v4];
  v10 = v9;
  if (v4)
  {
    if ([v9 scanHexInt:&v15])
    {
      v11 = v15;
      v18 = NSLocalizedDescriptionKey;
      v19 = v8;
      v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v13 = [NSError errorWithDomain:v6 code:v11 userInfo:v12];
    }

    else
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = v4;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unable to decode saved error code: %{public}@; ignoring", buf, 0xCu);
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSDate)lastRebootTime
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = 16;
  *v7 = 0x1500000001;
  if (sysctl(v7, 2u, v6, &v5, 0, 0) == -1 || v6[0] == 0)
  {
    sub_1000D2C84();
    v3 = 0;
  }

  else
  {
    v3 = [NSDate dateWithTimeIntervalSince1970:v6[0]];
  }

  return v3;
}

- (NSNumber)nandSize
{
  *mainPort = 0;
  if (IOMasterPort(0, &mainPort[1]))
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000D2CE0();
    }
  }

  else
  {
    v2 = IOBSDNameMatching(mainPort[1], 0, "disk0");
    if (v2)
    {
      if (IOServiceGetMatchingServices(mainPort[1], v2, mainPort))
      {
        v6 = sub_100063A54();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1000D2D14();
        }
      }

      else if (mainPort[0])
      {
        v3 = IOIteratorNext(mainPort[0]);
        if (v3)
        {
          CFProperty = IORegistryEntryCreateCFProperty(v3, @"Size", kCFAllocatorDefault, 0);
          if (CFProperty)
          {
            goto LABEL_7;
          }

          v6 = sub_100063A54();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_1000D2D48();
          }
        }

        else
        {
          v6 = sub_100063A54();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_1000D2D7C();
          }
        }
      }

      else
      {
        v6 = sub_100063A54();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1000D2DB0();
        }
      }
    }

    else
    {
      v6 = sub_100063A54();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000D2DE4();
      }
    }
  }

  CFProperty = 0;
LABEL_7:
  if (mainPort[0])
  {
    IOObjectRelease(mainPort[0]);
  }

  return CFProperty;
}

- (NSString)OSVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

- (NSString)OSBuild
{
  v2 = MGCopyAnswer();

  return v2;
}

- (NSString)demodVersion
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 objectForInfoDictionaryKey:@"CFBundleVersion"];

  return v3;
}

- (NSString)productType
{
  v2 = MGCopyAnswer();

  return v2;
}

- (int64_t)batteryCapacity
{
  v2 = MGCopyAnswer();
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)demoSetup
{
  if ([(MSDTargetDevice *)self mode])
  {
    return 1;
  }

  v4 = [(MSDTargetDevice *)self request];

  return v4 != 0;
}

- (int)activationConfigurationFlags
{
  v2 = MAECopyActivationRecordWithError();
  v3 = 0;
  if (v3)
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000D2E18(v3);
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000D2EA4();
    }

LABEL_9:
    v5 = 0;
    goto LABEL_4;
  }

  v4 = [v2 objectForKeyedSubscript:@"DeviceConfigurationFlags"];
  v5 = [v4 intValue];
LABEL_4:

  return v5;
}

- (BOOL)isVerifiedDemoDevice
{
  if (os_variant_has_internal_content() && (+[MSDTestPreferences sharedInstance](MSDTestPreferences, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 fakeActivationDemoBit], v3, v4))
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device is running internal build and wants to fake demo bit; Pass as demo device!", v8, 2u);
    }

    LOBYTE(v6) = 1;
  }

  else
  {
    return ([(MSDTargetDevice *)self activationConfigurationFlags]>> 1) & 1;
  }

  return v6;
}

- (BOOL)isPressDemoDevice
{
  if (!+[MSDOSFeatureFlags isPressDemoModeEnabled])
  {
    v4 = [(MSDTargetDevice *)self hubSuppliedSettings];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKey:@"DemoMode"];
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = [v6 isEqualToString:@"press"];
LABEL_15:

          return v3;
        }
      }
    }

    v7 = [(MSDTargetDevice *)self getDeviceOptions];
    v6 = v7;
    if (v7)
    {
      v8 = [v7 objectForKey:@"demo_mode"];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v3 = [v8 isEqualToString:@"press"];
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_15;
  }

  return 1;
}

- (BOOL)isContentFrozen
{
  if ([(MSDTargetDevice *)self mode]!= 5)
  {
    return 0;
  }

  return [(MSDTargetDevice *)self allowSnapshotMode];
}

- (BOOL)isBetterTogetherDemo
{
  v2 = [(MSDTargetDevice *)self getDeviceOptions];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"enable_better_together"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 BOOLValue];
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

  return v6;
}

- (BOOL)deactivateDevice
{
  v2 = MAEDeactivateDeviceWithError();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deactivation failed with error - %{public}@", buf, 0xCu);
    }
  }

  return v2;
}

- (NSData)certificateHash
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"CertificateHash"];

  return v3;
}

- (BOOL)isDemoEligible
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"DemoEligible"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isOfflineMode
{
  v3 = [(MSDTargetDevice *)self typeOfDemoDevice];
  v4 = [(MSDTargetDevice *)self getDemoEnrollmentFlag];
  v5 = [v4 isEqualToString:@"enrollmentSuccess"];

  if (![(MSDTargetDevice *)self mode]&& (v3 == 5 || v3 == 3))
  {
    return v5 ^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)dcotaOfflineModeDevice
{
  v3 = [(MSDTargetDevice *)self isDemoEligible];
  v4 = [(MSDTargetDevice *)self typeOfDemoDevice];
  v5 = [(MSDTargetDevice *)self isOfflineMode];
  if (v4 == 5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 & v3;
}

- (BOOL)cachedBundleInstallAttempted
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"CachedBundleInstallState"];
  v4 = v3 != 0;

  return v4;
}

- (NSString)cachedBundleInstallState
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"CachedBundleInstallState"];

  return v3;
}

- (void)setCachedBundleInstallState:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:v3 forKey:@"CachedBundleInstallState"];
}

- (NSString)installedFactoryBundleID
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"InstalledFactoryBundleID"];

  if (v3)
  {
    goto LABEL_5;
  }

  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.demo-settings"];
  v3 = [v4 objectForKey:@"InstalledFactoryBundleID"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

LABEL_5:
      v3 = v3;
      v5 = v3;
      goto LABEL_6;
    }

    sub_1000D2ED8();
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (void)setInstalledFactoryBundleID:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:v3 forKey:@"InstalledFactoryBundleID"];
}

- (void)kickOffCachedBundleInstall
{
  v22 = 0;
  v3 = [(MSDTargetDevice *)self isOfflineMode];
  v4 = [(MSDTargetDevice *)self isVerifiedDemoDevice];
  v5 = [(MSDTargetDevice *)self dcotaOfflineModeDevice];
  v6 = [(MSDTargetDevice *)self getDemoEnrollmentFlag];

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Kicking off cached bundle install for current device locale", buf, 2u);
  }

  v8 = os_transaction_create();
  if (!v6)
  {
    if (v4)
    {
      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting up demo device metadata folder for DCOTA managed device", v20, 2u);
      }

      [(MSDTargetDevice *)self setupDemoDeviceMetadataFolder];
    }

    else if (v3)
    {
      v10 = sub_100063A54();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting up metadata folder for non-DCOTA managed device", v19, 2u);
      }

      [(MSDTargetDevice *)self setupFactoryDemoDeviceMetadataFolder];
    }
  }

  v11 = sub_100063A54();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Waiting for buddy to quit...", v18, 2u);
  }

  [(MSDTargetDevice *)self waitForBuddyWithTimeout];
  v12 = +[MSDDemoUpdateController sharedInstance];
  [v12 installCachedContentForCurrentLocale:&v22];

  if (v5)
  {
    if (!v6)
    {
      v13 = sub_100063A54();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setting up device to perform enrollment retries", v17, 2u);
      }

      [(MSDTargetDevice *)self setDemoEnrollmentFlag:@"enrollmentStarted"];
    }

    v14 = +[MSDFindMyHub sharedInstance];
    [v14 setupOfflineModeEnrollmentRetry];
  }

  if (v22 == 1)
  {
    if (os_variant_has_internal_content())
    {
      [(MSDTargetDevice *)self delayRebootForTesting];
    }

    v15 = sub_100063A54();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Rebooting device after cached bundle install", v16, 2u);
    }

    [(MSDTargetDevice *)self reboot];
  }
}

- (id)hubCertificateIdentifier
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"HubCertificateIdentifier"];

  return v3;
}

- (BOOL)saveHubCertificateIdentifer:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:v3 forKey:@"HubCertificateIdentifier"];

  v5 = +[MSDPreferencesFile sharedInstance];
  LOBYTE(v3) = [v5 removeObjectsForKeys:&off_10017BD60];

  return v3;
}

- (NSString)hubHostName
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"HubHostName"];

  return v3;
}

- (void)setHubHostName:(id)a3
{
  v3 = a3;
  if (+[MSDPreferencesFile preferencesFileExists])
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Saving hub host name: %{public}@", &v6, 0xCu);
    }

    v5 = +[MSDPreferencesFile sharedInstance];
    [v5 setObject:v3 forKey:@"HubHostName"];
  }
}

- (id)hubHostNameList
{
  v3 = +[MSDPreferencesFile sharedInstance];
  v4 = [v3 objectForKey:@"HubHostNameList"];

  if (!v4)
  {
    v5 = [(MSDTargetDevice *)self hubHostName];
    if (v5)
    {
      [NSArray arrayWithObject:v5];
    }

    else
    {
      +[NSArray array];
    }
    v4 = ;
    [(MSDTargetDevice *)self saveHubHostNameList:v4];
  }

  return v4;
}

- (BOOL)saveHubHostNameList:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v3 = +[NSArray array];
  }

  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 setObject:v3 forKey:@"HubHostNameList"];

  return v5;
}

- (NSString)hubPort
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"HubPort"];

  return v3;
}

- (void)setHubPort:(id)a3
{
  v3 = a3;
  if (+[MSDPreferencesFile preferencesFileExists])
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Saving hub port: %{public}@", &v6, 0xCu);
    }

    v5 = +[MSDPreferencesFile sharedInstance];
    [v5 setObject:v3 forKey:@"HubPort"];
  }
}

- (void)saveFindMyHubRetryAtTime:(int64_t)a3
{
  v5 = +[MSDPreferencesFile sharedInstance];
  if (a3 <= 0)
  {
    [v5 removeObjectForKey:@"FMHRetryAtTime"];
  }

  else
  {
    v4 = [NSNumber numberWithInteger:a3];
    [v5 setObject:v4 forKey:@"FMHRetryAtTime"];
  }
}

- (void)saveHubLastOnlineTime:(int64_t)a3
{
  v5 = +[MSDPreferencesFile sharedInstance];
  if (a3 <= 0)
  {
    [v5 removeObjectForKey:@"HubLastOnlineTime"];
  }

  else
  {
    v4 = [NSString stringWithFormat:@"%ld", a3];
    [v5 setObject:v4 forKey:@"HubLastOnlineTime"];
  }
}

- (id)lastSnapshotRevertTime
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"LastSnapshotRevertTime"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = +[NSDate distantPast];
  }

  v5 = v4;

  return v5;
}

- (void)saveLastSnapshotRevertTime:(id)a3
{
  v5 = a3;
  v3 = +[MSDPreferencesFile sharedInstance];
  v4 = v3;
  if (v5)
  {
    [v3 setObject:v5 forKey:@"LastSnapshotRevertTime"];
  }

  else
  {
    [v3 removeObjectForKey:@"LastSnapshotRevertTime"];
  }
}

- (void)saveSnapshotRevertFlagged:(BOOL)a3
{
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = v4;
  if (a3)
  {
    [v4 setObject:&__kCFBooleanTrue forKey:@"SnapshotRevertFlagged"];
  }

  else
  {
    [v4 removeObjectForKey:@"SnapshotRevertFlagged"];
  }
}

- (id)lastShallowRefreshTime
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"LastShallowRefreshTime"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = +[NSDate distantPast];
  }

  v5 = v4;

  return v5;
}

- (void)saveLastShallowRefreshTime:(id)a3
{
  v5 = a3;
  v3 = +[MSDPreferencesFile sharedInstance];
  v4 = v3;
  if (v5)
  {
    [v3 setObject:v5 forKey:@"LastShallowRefreshTime"];
  }

  else
  {
    [v3 removeObjectForKey:@"LastShallowRefreshTime"];
  }
}

- (id)lastSettingsUpdatedTime
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"LastSettingsUpdatedTime"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = +[NSDate distantPast];
  }

  v5 = v4;

  return v5;
}

- (void)saveLastSettingsUpdatedTime:(id)a3
{
  v5 = a3;
  v3 = +[MSDPreferencesFile sharedInstance];
  v4 = v3;
  if (v5)
  {
    [v3 setObject:v5 forKey:@"LastSettingsUpdatedTime"];
  }

  else
  {
    [v3 removeObjectForKey:@"LastSettingsUpdatedTime"];
  }
}

- (id)identityServicesID
{
  v2 = +[MSDPreferencesFile sharedInstance];
  [v2 reload];

  v3 = +[MSDPreferencesFile sharedInstance];
  v4 = [v3 objectForKey:@"IdentityServicesID"];

  return v4;
}

- (id)cloudPairedDevices
{
  v2 = +[MSDAccountManager sharedInstance];
  v3 = [v2 cloudPairedDevices];

  return v3;
}

- (id)iCloudAccountRecoveryKey
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"iCloudAccountRecoveryKey"];

  return v3;
}

- (void)saveiCloudAccountRecoveryKey:(id)a3
{
  v5 = a3;
  v3 = +[MSDPreferencesFile sharedInstance];
  v4 = v3;
  if (v5)
  {
    [v3 setObject:v5 forKey:@"iCloudAccountRecoveryKey"];
  }

  else
  {
    [v3 removeObjectForKey:@"iCloudAccountRecoveryKey"];
  }
}

- (BOOL)iCloudAccountSyncNeeded
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"iCloudAccountSyncNeeded"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)saveiCloudAccountSyncNeeded:(BOOL)a3
{
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = v4;
  if (a3)
  {
    [v4 setObject:&__kCFBooleanTrue forKey:@"iCloudAccountSyncNeeded"];
  }

  else
  {
    [v4 removeObjectForKey:@"iCloudAccountSyncNeeded"];
  }
}

- (id)getSavedOSPreferencesRequest
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"OSPreferences"];

  return v3;
}

- (void)saveOSPreferencesRequest:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:v3 forKey:@"OSPreferences"];
}

- (id)getStagedOSPreferencesRequest
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"StagedOSPreferences"];

  return v3;
}

- (void)stageNewOSPreferences:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:v3 forKey:@"StagedOSPreferences"];
}

- (BOOL)applyStagedDevicePreferences:(id *)a3
{
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(MSDTargetDevice *)self getStagedOSPreferencesRequest];
  v7 = sub_100063A54();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Applying staged OS Preferences:\n%{public}@", buf, 0xCu);
    }

    v8 = [v6 objectForKey:@"SystemLanguage"];
    v9 = [v6 objectForKey:@"SystemRegion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = +[MSDLanguageAndRegionManager sharedInstance];
        v11 = [v10 setDeviceLanguage:v8 andRegion:v9 matchToSystemLanguage:0 sbRestartNeeded:0 sbRestartHandler:0];

        if (v11)
        {
          [v5 setObject:v8 forKey:@"SystemLanguage"];
          [v5 setObject:v9 forKey:@"SystemRegion"];
        }
      }
    }

    v12 = [v6 objectForKey:@"SystemSiriLanguage"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (+[MSDLanguageAndRegionManager sharedInstance](MSDLanguageAndRegionManager, "sharedInstance"), v13 = objc_claimAutoreleasedReturnValue(), [v6 objectForKey:@"SystemSiriLanguage"], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "setSiriLanguage:", v14), v14, v13, v15))
    {
      [v5 setObject:v12 forKey:@"SystemSiriLanguage"];
      v16 = +[MSDAssetUpdater sharedInstance];
      v23 = 0;
      [v16 handleSiriAssetsWithError:&v23];
      v17 = v23;

      if (v17)
      {
        v18 = sub_100063A54();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000D2F8C();
        }

        v19 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v17 = 0;
    }

    v19 = 1;
LABEL_16:
    v20 = [v5 copy];
    [(MSDTargetDevice *)self saveOSPreferencesRequest:v20];

    v21 = +[MSDPreferencesFile sharedInstance];
    [v21 removeObjectForKey:@"StagedOSPreferences"];

    if (a3)
    {
      *a3 = [v5 allKeys];
    }

    goto LABEL_22;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000D2FC0();
  }

  v19 = 0;
  v17 = 0;
LABEL_22:

  return v19;
}

- (void)saveRequiredDeletableSystemApps
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [NSMutableArray arrayWithCapacity:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004DBE4;
  v6 = v5[3] = &unk_10016ADC8;
  v3 = v6;
  [v2 enumerateBundlesOfType:7 block:v5];

  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:v3 forKey:@"RequiredDeletableSystemApps"];
}

- (id)requiredDeletableSystemApps
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"RequiredDeletableSystemApps"];

  return v3;
}

- (id)installedDeletableSystemApps
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [(MSDTargetDevice *)self requiredDeletableSystemApps];
  v5 = [v4 mutableCopy];

  [NSMutableArray arrayWithCapacity:0];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10004DE10;
  v13 = &unk_10016ADF0;
  v15 = v14 = v5;
  v6 = v15;
  v7 = v5;
  [v3 enumerateBundlesOfType:1 block:&v10];
  v8 = [NSArray arrayWithArray:v6, v10, v11, v12, v13];

  return v8;
}

- (void)installAndWaitForSystemApps
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [(MSDTargetDevice *)self requiredDeletableSystemApps];
  v5 = [v4 mutableCopy];

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if (os_variant_has_internal_content())
  {
    v7 = +[MSDTestPreferences sharedInstance];
    v8 = [v7 systemAppTimeoutInterval];

    if (v8)
    {
      v9 = sub_100063A54();
      v10 = v8;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v29 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Override system app timeout interval: %lu", buf, 0xCu);
      }
    }

    else
    {
      v10 = 1800;
    }

    v12 = +[MSDTestPreferences sharedInstance];
    v11 = [v12 systemAppPollingInterval];

    if (v11)
    {
      v13 = sub_100063A54();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Override system app polling interval: %lu", buf, 0xCu);
      }
    }

    else
    {
      v11 = 30;
    }
  }

  else
  {
    v11 = 30;
    v10 = 1800;
  }

  *&v6 = 138543362;
  v20 = v6;
  while ([v5 count])
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10004E2DC;
    v21[3] = &unk_10016AE18;
    v14 = v5;
    v22 = v14;
    v23 = &v24;
    [v3 enumerateBundlesOfType:1 block:v21];
    if (![v14 count])
    {
      v16 = sub_100063A54();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v17 = "All system apps have been installed. Move forward.";
        v18 = v16;
        v19 = 2;
        goto LABEL_24;
      }

LABEL_25:

      break;
    }

    if (v25[3] >= v10)
    {
      v16 = sub_100063A54();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v29 = v10;
        v30 = 2114;
        v31 = v5;
        v17 = "Waited %lu seconds for system apps to install. Now moving forward. Still missing the following apps - %{public}@";
        v18 = v16;
        v19 = 22;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      }

      goto LABEL_25;
    }

    sleep(v11);
    v25[3] += v11;
    v15 = sub_100063A54();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v20;
      v29 = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Still waiting for system apps %{public}@", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v24, 8);
}

- (BOOL)isPasscodeModificationAllowed
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 isPasscodeModificationAllowed];

  return v3;
}

- (BOOL)createTemporaryPasscodeIfNeeded
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating temporary device passcode...", buf, 2u);
  }

  if (([v3 isPasscodeSet] & 1) == 0)
  {
    v7 = [(MSDTargetDevice *)self isPasscodeModificationAllowed];
    if (v7)
    {
      goto LABEL_9;
    }

    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Passcode modification is NOT allowed. Temporarily lifting the restriction!", v12, 2u);
    }

    if ([(MSDTargetDevice *)self setPasscodeModificationAllowed:1])
    {
LABEL_9:
      v11 = 0;
      v6 = [v3 changePasscodeFrom:0 to:@"123456" outError:&v11];
      v9 = v11;
      v5 = v9;
      if (v6)
      {
        if (v7)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1000D30EC(v9);
        if (v7)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    [(MSDTargetDevice *)self setPasscodeModificationAllowed:0];
    goto LABEL_12;
  }

  v5 = 0;
  v6 = 1;
LABEL_12:

  return v6;
}

- (BOOL)removeTemporaryPasscodeIfNeeded
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing temporary device passcode...", buf, 2u);
  }

  if (![v3 isPasscodeSet])
  {
    v8 = 0;
    v9 = 1;
    goto LABEL_15;
  }

  v5 = [(MSDTargetDevice *)self isPasscodeModificationAllowed];
  if ((v5 & 1) == 0)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Passcode modification is NOT allowed. Temporarily lifting the restriction!", v13, 2u);
    }

    if (![(MSDTargetDevice *)self setPasscodeModificationAllowed:1])
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_10;
    }
  }

  v12 = 0;
  v7 = [v3 changePasscodeFrom:@"123456" to:0 outError:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = 1;
    if ((v5 & 1) == 0)
    {
LABEL_10:
      [(MSDTargetDevice *)self setPasscodeModificationAllowed:0];
    }
  }

  else
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3194(v8);
    }

    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (BOOL)isDDLDevice
{
  v2 = [(MSDTargetDevice *)self readNVRam:@"ownership-warning"];
  if (!v2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    sub_1000D32E8();
    v3 = 0;
LABEL_12:
    v6 = 0;
    goto LABEL_9;
  }

  v3 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", [v2 bytes], 4);
  v4 = sub_100063A54();
  v5 = v4;
  if (!v3)
  {
    sub_1000D3294(v4);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D3220();
  }

  if ([v3 isEqualToString:@"1"])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v3 isEqualToString:@"2"];
  }

LABEL_9:

  return v6;
}

- (id)readNVRam:(id)a3
{
  v3 = a3;
  mainPort = 0;
  if (IOMasterPort(bootstrap_port, &mainPort))
  {
    sub_1000D3384();
  }

  else
  {
    v4 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
    if (v4)
    {
      v5 = v4;
      CFProperty = IORegistryEntryCreateCFProperty(v4, v3, kCFAllocatorDefault, 0);
      IOObjectRelease(v5);
      goto LABEL_4;
    }

    sub_1000D33E0();
  }

  CFProperty = 0;
LABEL_4:

  return CFProperty;
}

- (BOOL)deleteNVRam:(id)a3
{
  v4 = a3;
  v5 = [(MSDTargetDevice *)self helperAgent];
  v6 = [v5 deleteNvram:v4];

  return v6;
}

- (BOOL)setSEPDemoMode:(BOOL)a3
{
  v3 = a3;
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting SEP demo mode to: %{BOOL}d", v8, 8u);
  }

  v5 = AMFIDemoModeSetState();
  if (v5)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000D343C();
    }
  }

  return v5 == 0;
}

- (BOOL)toggleSEPDemoModeOnManagedPreferencesChange
{
  v3 = [(MSDTargetDevice *)self managedStoreDemoMode];

  return [(MSDTargetDevice *)self setSEPDemoMode:v3];
}

- (BOOL)turnOnDemoMode
{
  if ([(MSDTargetDevice *)self isPressDemoDevice])
  {

    return [(MSDTargetDevice *)self turnOnPressDemoMode];
  }

  else
  {

    return [(MSDTargetDevice *)self turnOnStoreDemoMode];
  }
}

- (BOOL)turnOnStoreDemoMode
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Turning on Store Demo Mode.", v6, 2u);
  }

  if (![(MSDTargetDevice *)self storeDemoMode])
  {
    v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.demo-settings"];
    [v4 setObject:&__kCFBooleanTrue forKey:@"StoreDemoMode"];
    [v4 setObject:&__kCFBooleanTrue forKey:@"LockIcons"];
    [v4 synchronize];
  }

  return 1;
}

- (BOOL)turnOnPressDemoMode
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Turning on Press Demo Mode.", v6, 2u);
  }

  if (![(MSDTargetDevice *)self pressDemoMode])
  {
    v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.demo-settings"];
    [v4 setObject:&__kCFBooleanTrue forKey:@"PressDemoMode"];
    [v4 synchronize];
  }

  return 1;
}

- (BOOL)isDemoModeOn
{
  if ([(MSDTargetDevice *)self isPressDemoDevice])
  {

    return [(MSDTargetDevice *)self pressDemoMode];
  }

  else
  {

    return [(MSDTargetDevice *)self storeDemoMode];
  }
}

- (BOOL)managedStoreDemoMode
{
  IsForced = CFPreferencesAppValueIsForced(@"StoreDemoMode", @"com.apple.demo-settings");
  if (IsForced)
  {
    LOBYTE(IsForced) = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0) != 0;
  }

  return IsForced;
}

- (BOOL)demoModeValueForKey:(id)a3
{
  v3 = a3;
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.demo-settings"];
  v5 = [v4 objectForKey:v3];
  if (!v5)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1000D34B0();
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = [v5 BOOLValue];
LABEL_6:

  return v6;
}

- (void)enableSnapshotMode:(BOOL)a3
{
  v3 = a3;
  if (![(MSDTargetDevice *)self allowSnapshotMode])
  {
    v5 = self;
    v6 = 27;
    goto LABEL_5;
  }

  if (v3)
  {
    [(MSDTargetDevice *)self removeTemporaryPasscodeIfNeeded];
    [(MSDTargetDevice *)self manageDeviceSnapshot:@"CreateSnapshot"];
    v5 = self;
    v6 = 8;
LABEL_5:

    [(MSDTargetDevice *)v5 rebootForStage:v6];
    return;
  }

  [(MSDTargetDevice *)self rebootWithSnapshotRevertForStage:0];
}

- (void)manageDeviceSnapshot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"UnmountSnapshot"])
  {
    [(MSDTargetDevice *)self manageUserVolume:v4];
    [(MSDTargetDevice *)self manageDataVolume:v4];
  }

  else
  {
    [(MSDTargetDevice *)self manageDataVolume:v4];
    [(MSDTargetDevice *)self manageUserVolume:v4];
  }
}

- (void)manageDataVolume:(id)a3
{
  v4 = a3;
  v5 = [(MSDTargetDevice *)self helperAgent];
  [v5 manageDataVolume:v4];
}

- (void)manageDemoVolume:(id)a3
{
  v4 = a3;
  v5 = [(MSDTargetDevice *)self helperAgent];
  [v5 manageDemoVolume:v4];
}

- (void)manageUserVolume:(id)a3
{
  v4 = a3;
  v5 = [(MSDTargetDevice *)self helperAgent];
  [v5 manageUserVolume:v4 forUser:@"mobile"];
}

- (void)disableLaunchdServicesIfNeededForWatch
{
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.demo-settings"];
  if ([v4 integerForKey:@"FProgramNumber"] != 300)
  {
    v3 = [(MSDTargetDevice *)self helperAgent];
    [v3 disableLaunchdServicesForWatch];
  }
}

- (void)disableSUAutoDownloadForWatch
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.subridge"];
  [v2 setObject:&__kCFBooleanTrue forKey:@"SUDisableAutoScan"];
  [v2 setObject:&__kCFBooleanTrue forKey:@"SkipAutoDownload"];
  [v2 synchronize];
}

- (void)setupWorkFolderForBootTask
{
  v3 = [(MSDTargetDevice *)self helperAgent];
  [v3 prepareWorkDirectory:@"/private/var/demo_backup" writableByNonRoot:0];

  v4 = +[MSDPlatform sharedInstance];
  v5 = [v4 macOS];

  if (v5)
  {
    v6 = [(MSDTargetDevice *)self helperAgent];
    [v6 prepareWorkDirectory:@"/private/var/dekota" writableByNonRoot:0];
  }
}

- (void)destroyWorkFolderForBootTask
{
  v3 = [(MSDTargetDevice *)self helperAgent];
  [v3 removeWorkDirectory:@"/private/var/demo_backup"];

  v4 = +[MSDPlatform sharedInstance];
  v5 = [v4 macOS];

  if (v5)
  {
    v6 = [(MSDTargetDevice *)self helperAgent];
    [v6 removeWorkDirectory:@"/private/var/dekota"];
  }
}

- (BOOL)deleteConfigurationApp
{
  v2 = [IXAppInstallCoordinator uninstallAppWithBundleID:@"com.apple.DemoUpdate" error:0];
  v3 = sub_100063A54();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Configuration app deleted.", v6, 2u);
    }
  }

  else
  {
    sub_1000D3568(v3);
  }

  return v2;
}

- (void)markContentInstallingInstalled
{
  v2 = +[MSDProgressUpdater sharedInstance];
  [v2 markBundleInProgressAsBundleCompleted];
}

- (BOOL)holdPowerAssertion
{
  p_powerAssertion = &self->_powerAssertion;
  if (self->_powerAssertion)
  {
    return 1;
  }

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Taking power assertion to prevent device sleep.", v6, 2u);
  }

  if (!IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.demod.noSleep", p_powerAssertion))
  {
    return 1;
  }

  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000D3600();
  }

  return 0;
}

- (BOOL)liftPowerAssertion
{
  if (!self->_powerAssertion)
  {
    return 1;
  }

  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Lifting power assertion to enable device sleep.", v6, 2u);
  }

  if (IOPMAssertionRelease(self->_powerAssertion))
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3634();
    }

    return 0;
  }

  else
  {
    self->_powerAssertion = 0;
    return 1;
  }
}

- (BOOL)createMobileStoreDemoCache
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[MSDCache sharedInstance];
  if (([v2 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob"] & 1) == 0 && (objc_msgSend(v3, "createContainer:", @"com.apple.mobilestoredemo.blob") & 1) == 0)
  {
    v8 = sub_100063B64();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3668();
    }

    v4 = 0;
    goto LABEL_12;
  }

  if (([v2 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata"] & 1) == 0)
  {
    v9 = 0;
    v5 = 1;
    v6 = [v2 createDirectoryAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata" withIntermediateDirectories:1 attributes:0 error:&v9];
    v4 = v9;
    if (v6)
    {
      goto LABEL_6;
    }

    v8 = sub_100063B64();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000D369C();
    }

LABEL_12:

    v5 = 0;
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 1;
LABEL_6:

  return v5;
}

- (void)clearUpNvramIfNeeded
{
  v5 = +[NSFileManager defaultManager];
  if (!-[MSDTargetDevice storeDemoMode](self, "storeDemoMode") || (-[MSDTargetDevice pathForDummyPreferenceFile](self, "pathForDummyPreferenceFile"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v5 fileExistsAtPath:v3], v3, (v4 & 1) == 0))
  {
    [(MSDTargetDevice *)self deleteNVRam:@"demo-install-state"];
    [(MSDTargetDevice *)self deleteNVRam:@"enable-remap-mode"];
    [(MSDTargetDevice *)self deleteNVRam:@"msd-request"];
    [(MSDTargetDevice *)self deleteNVRam:@"msd-reboot-at"];
    [(MSDTargetDevice *)self deleteNVRam:@"msd-last-auto-reboot"];
  }
}

- (void)clearUpF200FootprintIfNeeded
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = +[NSFileManager defaultManager];
  if ([v3 fileExistsAtPath:@"/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/F200EventsData"])
  {
    v8 = 0;
    v4 = [v3 removeItemAtPath:@"/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/F200EventsData" error:&v8];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = sub_100063A54();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000D36D0(v5);
      }
    }
  }

  v7 = [v2 objectForKey:@"F200EventDbCleanupTime"];

  if (v7)
  {
    [v2 removeObjectForKey:@"F200EventDbCleanupTime"];
  }
}

- (void)refreshStoreHoursManagerUsingSettingsAndTime:(id)a3
{
  v4 = a3;
  v8 = +[MSDStoreHoursManager sharedInstance];
  v5 = [(MSDTargetDevice *)self hubSuppliedSettings];
  v6 = [v5 objectForKey:@"StoreHours"];

  v7 = [(MSDTargetDevice *)self lastSettingsUpdatedTime];
  [v8 updateStoreHours:v6 lastSettingsUpdatedDate:v7];
  [(MSDTargetDevice *)self configureLowPowerModeForTime:v4];

  [v8 setupStoreOpenCloseTimers];
}

- (void)setupStoreHoursManager
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up store hours manager!", buf, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = +[NSOperationQueue mainQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004FC20;
  v15[3] = &unk_100169CE8;
  v15[4] = self;
  v6 = [v4 addObserverForName:@"com.apple.MobileStoreDemo.StoreHours.Expired" object:0 queue:v5 usingBlock:v15];

  v7 = +[NSNotificationCenter defaultCenter];
  v8 = +[NSOperationQueue mainQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004FCAC;
  v14[3] = &unk_100169CE8;
  v14[4] = self;
  v9 = [v7 addObserverForName:@"com.apple.MobileStoreDemo.StoreHours.StoreOpen" object:0 queue:v8 usingBlock:v14];

  v10 = +[NSNotificationCenter defaultCenter];
  v11 = +[NSOperationQueue mainQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004FCB4;
  v13[3] = &unk_100169CE8;
  v13[4] = self;
  v12 = [v10 addObserverForName:@"com.apple.MobileStoreDemo.StoreHours.StoreClosed" object:0 queue:v11 usingBlock:v13];

  [(MSDTargetDevice *)self refreshStoreHoursManagerUsingSettingsAndTime:0];
}

- (void)caLogsUploadTimerHandler:(id)a3
{
  v3 = dispatch_get_global_queue(9, 0);
  dispatch_async(v3, &stru_10016AE38);
}

- (void)setupCoreAnalyticsLogsUploadTimer
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10004FE48;
  v2[3] = &unk_100169C78;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)snapshotRevertTimerHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[MSDWorkQueueSet sharedInstance];
  v6 = [v5 messageQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005016C;
  v7[3] = &unk_100169C78;
  objc_copyWeak(&v8, &location);
  dispatch_async(v6, v7);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)setupSnapshotRevertTimer
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10005035C;
  v2[3] = &unk_100169C78;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)unlockDeviceKeybagIfNeeded
{
  v2 = MKBGetDeviceLockState();
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device keybag lock state: %d", v7, 8u);
  }

  if (v2)
  {
    v4 = [@"123456" dataUsingEncoding:4];
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unlocking device keybag using default passcode.", v7, 2u);
    }

    if (MKBUnlockDevice())
    {
      v6 = sub_100063A54();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000D37A0();
      }
    }
  }
}

- (void)acquireDeviceKeybagAssertionIfNeeded
{
  if (![(MSDTargetDevice *)self deviceLockAssertion])
  {
    v9 = @"MKBAssertionKey";
    v10 = @"Other";
    v3 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = 0;
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Acquiring device keybag lock assertion.", v7, 2u);
    }

    [(MSDTargetDevice *)self setDeviceLockAssertion:MKBDeviceLockAssertion()];
    if (![(MSDTargetDevice *)self deviceLockAssertion])
    {
      v5 = v8;
      v6 = sub_100063A54();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000D3814(v5);
      }
    }
  }
}

- (void)configureGreyMatterAutoUpdate
{
  if ([(MSDTargetDevice *)self isVerifiedDemoDevice])
  {
    if ([(MSDTargetDevice *)self mode]== 2)
    {
      v3 = sub_100063A54();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315394;
        v10 = "[MSDTargetDevice configureGreyMatterAutoUpdate]";
        v11 = 1024;
        v12 = 2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s - Disable auto update since we're in mode %d", &v9, 0x12u);
      }

      v4 = 0;
    }

    else
    {
      v4 = +[MSDHubFeatureFlags enableAIModelAutoUpdate]|| [(MSDTargetDevice *)self mode]== 7 || [(MSDTargetDevice *)self mode]!= 5;
    }

    if (os_variant_has_internal_content())
    {
      v6 = +[MSDTestPreferences sharedInstance];
      v7 = [v6 enableAIModelAutoUpdate];

      if (v7)
      {
        v8 = sub_100063A54();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v9) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found test preference for enabling AI model auto update!", &v9, 2u);
        }

        v4 = 1;
      }
    }

    [MSDGreyMatterHelper configureAutoUpdate:v4];
  }

  else
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not toggling the Pallas URL!  Device is not a verified demo device.", &v9, 2u);
    }
  }
}

- (void)registerCAHearbeatActivity
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D38A0();
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, 7200);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, 300);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, 0);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_activity_register("com.apple.MobileStoreDemo.heartbeat", v3, &stru_10016AE78);
}

- (id)previousiOSBuild
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"PreviousOSBuild"];

  return v3;
}

- (BOOL)saveCurrentiOSBuild
{
  v3 = +[MSDPreferencesFile sharedInstance];
  v4 = [(MSDTargetDevice *)self OSBuild];
  v5 = [v3 setObject:v4 forKey:@"PreviousOSBuild"];

  return v5;
}

- (BOOL)clearCurrentiOSBuild
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 removeObjectForKey:@"PreviousOSBuild"];

  return v3;
}

- (id)minOSVersionAvailable
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"MinOSVersionAvailable"];

  return v3;
}

- (void)saveMinOSVersionAvailable:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:v3 forKey:@"MinOSVersionAvailable"];
}

- (void)clearMinOSVersionAvailable
{
  v2 = +[MSDPreferencesFile sharedInstance];
  [v2 removeObjectForKey:@"MinOSVersionAvailable"];
}

- (void)saveOSUpdateRequest:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:v3 forKey:@"OSUpdateRequest"];
}

- (id)getOSUpdateRequest
{
  if (!os_variant_has_internal_content())
  {
    goto LABEL_13;
  }

  v2 = +[MSDTestPreferences sharedInstance];
  v3 = [v2 mockOSUpdateRequestFile];

  if (!v3)
  {
LABEL_12:

LABEL_13:
    v3 = +[MSDPreferencesFile sharedInstance];
    v5 = [v3 objectForKey:@"OSUpdateRequest"];
    goto LABEL_14;
  }

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Loading mock OS update request from file: %{public}@", &v9, 0xCu);
  }

  v5 = [[NSDictionary alloc] initWithContentsOfFile:v3];
  v6 = sub_100063A54();
  v7 = v6;
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3908();
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Mock OS update request successfully loaded: %{public}@", &v9, 0xCu);
  }

LABEL_14:

  return v5;
}

- (void)clearOSUpdateRequest
{
  v2 = +[MSDPreferencesFile sharedInstance];
  [v2 removeObjectForKey:@"OSUpdateRequest"];
}

- (void)setWaitingForCommand:(BOOL)a3
{
  v3 = a3;
  if ([(MSDTargetDevice *)self waitingForCommand]!= a3)
  {
    v5 = +[MSDPreferencesFile sharedInstance];
    v6 = v5;
    if (v3)
    {
      [v5 setObject:&__kCFBooleanTrue forKey:@"WaitingForCommand"];

      [(MSDTargetDevice *)self startWaitingForCommandTimer];
    }

    else
    {
      [v5 removeObjectForKey:@"WaitingForCommand"];

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000511AC;
      block[3] = &unk_100169B70;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)startWaitingForCommandTimer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051270;
  block[3] = &unk_100169B70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)waitForBuddy:(id)a3 updateStatus:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if (DarwinNotifyCenter)
  {
    v8 = DarwinNotifyCenter;
    [(MSDTargetDevice *)self setBuddyCompletionHandler:v6];
    CFNotificationCenterAddObserver(v8, 0, sub_100046E78, @"com.apple.purplebuddy.setupdone", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v9 = BYSetupAssistantNeedsToRun();
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109120;
      v13[1] = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Assistant needs to run: %{BOOL}d", v13, 8u);
    }

    if (v9)
    {
      if (v4)
      {
        v11 = +[MSDProgressUpdater sharedInstance];
        [v11 updateStage:16];
      }
    }

    else
    {
      v12 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterRemoveObserver(v12, 0, @"com.apple.purplebuddy.setupdone", 0);
      [(MSDTargetDevice *)self invokeHandler:1];
    }
  }

  else
  {
    sub_1000D393C();
  }
}

- (void)waitForBuddyWithTimeout
{
  v3 = dispatch_semaphore_create(0);
  v4 = dispatch_time(0, 60000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000516A0;
  v7[3] = &unk_100169B48;
  v5 = v3;
  v8 = v5;
  [(MSDTargetDevice *)self waitForBuddy:v7];
  if (dispatch_semaphore_wait(v5, v4))
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = 60;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Buddy setup timed out after %d seconds.", buf, 8u);
    }
  }
}

- (void)terminateConfigurationApp
{
  v2 = [RBSProcessPredicate predicateMatchingBundleIdentifier:@"com.apple.DemoUpdate"];
  v18 = 0;
  v3 = [RBSProcessHandle handleForPredicate:v2 error:&v18];
  v4 = v18;

  if (v3)
  {
    v5 = [v3 currentState];
    v6 = [v5 taskState];

    v7 = v6 > 1;
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  if ([v4 code] != 3)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3998();
    }
  }

LABEL_9:
  if (v7)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Trying to terminate configuration app...", buf, 2u);
    }

    v10 = +[FBSSystemService sharedService];
    [v10 terminateApplication:@"com.apple.DemoUpdate" forReason:1 andReport:0 withDescription:0];

    v11 = 11;
    while (1)
    {
      v12 = [v3 currentState];
      v13 = [v12 taskState];

      if (v13 < 2)
      {
        break;
      }

      sleep(1u);
      if (--v11 <= 1)
      {
        v14 = sub_100063A54();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        *buf = 0;
        v15 = "Terminating configuration app timeout.";
        v16 = v14;
        v17 = 2;
        goto LABEL_19;
      }
    }

    v14 = sub_100063A54();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 67109120;
    v20 = v13;
    v15 = "Configuration app terminated with state == %d";
    v16 = v14;
    v17 = 8;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
LABEL_20:
  }
}

- (BOOL)allowSnapshotMode
{
  v2 = [(MSDTargetDevice *)self getDeviceOptions];
  v3 = [v2 objectForKey:@"disable_snapshot_mode"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 BOOLValue])
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device snapshot mode is disabled as requested by DeviceOptions.", v7, 2u);
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)allowSnapshotRevertTimer
{
  if (+[MSDHubFeatureFlags disableNightlySnapshotRevert])
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Snapshot revert timer is disabled by feature flag!", v8, 2u);
    }

    return 0;
  }

  if ([(MSDTargetDevice *)self isPressDemoDevice]|| ![(MSDTargetDevice *)self allowSnapshotMode])
  {
    return 0;
  }

  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.demo-settings"];
  v5 = [v4 objectForKey:@"DisableNightlyRefresh"];
  v6 = 1;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 BOOLValue])
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)allowAccountSetup
{
  v3 = MGCopyAnswer();
  if ([v3 BOOLValue])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(MSDTargetDevice *)self isDemoModeOn];
  }

  return v4;
}

- (void)configureNetworkInterface
{
  v3 = +[MSDWiFiHelper sharedInstance];
  [v3 enableWiFi:1];
  v4 = [v3 getPersistentWiFiSsid];

  if (v4)
  {
    [v3 configureWiFiWithPersistentSettings];
  }

  else if ([(MSDTargetDevice *)self isContentFrozen])
  {
    [v3 disassociateAndForgetWiFi];
  }

  else if ([(MSDTargetDevice *)self shouldForgetKnownNetworkUponUnlock])
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Forgetting known wifi network after device unlock...", v6, 2u);
    }

    [v3 disassociateAndForgetWiFi];
    [(MSDTargetDevice *)self setShouldForgetKnownNetworkUponUnlock:0];
  }
}

- (void)waitForNetworkReachabilityWithTimeout:(unint64_t)a3
{
  v5 = [NSDate dateWithTimeIntervalSinceNow:a3];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100052090;
  v24 = sub_1000520A0;
  v25 = objc_alloc_init(NSCondition);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_100052090;
  v14[4] = sub_1000520A0;
  v15 = self;
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Waiting for network to become reachable...", buf, 2u);
  }

  v7 = nw_path_monitor_create();
  if (v7)
  {
    v8 = &_dispatch_main_q;
    nw_path_monitor_set_queue(v7, &_dispatch_main_q);

    update_handler[0] = _NSConcreteStackBlock;
    update_handler[1] = 3221225472;
    update_handler[2] = sub_1000520A8;
    update_handler[3] = &unk_10016AEC8;
    update_handler[4] = &v20;
    update_handler[5] = &v16;
    update_handler[6] = v14;
    nw_path_monitor_set_update_handler(v7, update_handler);
    nw_path_monitor_start(v7);
    [v21[5] lock];
    while (!v17[3])
    {
      if (([v21[5] waitUntilDate:v5] & 1) == 0)
      {
        v9 = sub_100063A54();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v27 = a3;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Timeout waiting %lus for desired network interface to come up.", buf, 0xCu);
        }

        break;
      }
    }

    [v21[5] unlock];
    nw_path_monitor_cancel(v7);
  }

  else
  {
    v12 = sub_100063A54();
    sub_1000D3A18(v12);
  }

  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v17[3] != 0;
    *buf = 67109120;
    LODWORD(v27) = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Network reachability after wait: %{BOOL}d", buf, 8u);
  }

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

- (unint64_t)fetchActiveNetworkInterface
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = nw_parameters_create();
  nw_parameters_set_multipath_service(v2, nw_multipath_service_handover);
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000522B4;
  v7[3] = &unk_10016AEF0;
  v4 = nw_path_evaluator_copy_path();
  v8 = v4;
  v9 = &v10;
  nw_path_enumerate_interfaces(v4, v7);
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

- (BOOL)migrateCellularSupportFlag
{
  v3 = [(MSDTargetDevice *)self getDeviceOptions];
  v4 = [v3 objectForKey:@"enable_cellular_support"];
  if ([v4 BOOLValue])
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = @"enable_cellular_support";
      v11 = 1024;
      v12 = [v4 BOOLValue];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@=%{BOOL}d; disconnecting & forgetting all wifi SSID...", &v9, 0x12u);
    }

    v6 = +[MSDWiFiHelper sharedInstance];
    [v6 disassociateAndForgetWiFi];

    v7 = [(MSDTargetDevice *)self updateDeviceOptions:v3 skipImutableKeys:1];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)resetSystemTimeCache
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting system time cache...", v4, 2u);
  }

  if (!TMResetToFirstLaunch())
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3A6C();
    }
  }
}

- (int64_t)getFreeSpace
{
  v5 = 0;
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = v2;
    sub_10004AD18(v2, kMGQDiskUsageTotalDataAvailable, &v5);
    CFRelease(v3);
    return v5;
  }

  else
  {
    sub_1000D3AA0();
    return 0;
  }
}

- (BOOL)updateDeviceOptions:(id)a3 skipImutableKeys:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating device options dictionary on device", buf, 2u);
  }

  v7 = +[MSDPreferencesFile sharedInstance];
  v8 = [v7 objectForKey:@"device_options"];

  v9 = objc_alloc_init(NSMutableDictionary);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v50 count:16];
  v40 = v8;
  if (v11)
  {
    v12 = v11;
    v39 = 0;
    v13 = *v43;
    v41 = v9;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v42 + 1) + 8 * v14);
        if (([v15 isEqualToString:@"disable_snapshot_mode"] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"enable_better_together"))
        {
          if (v4)
          {
            v16 = [v8 objectForKey:v15];

            if (!v16)
            {
              goto LABEL_20;
            }

            v17 = v8;
          }

          else
          {
            v17 = v10;
          }

          v18 = [v17 objectForKey:v15];
        }

        else
        {
          if ([v15 isEqualToString:@"enable_cellular_support"])
          {
            v18 = &__kCFBooleanFalse;
LABEL_19:
            [v9 setObject:v18 forKey:v15];

            goto LABEL_20;
          }

          if (![v15 isEqualToString:@"enable_do_not_buy"])
          {
            v24 = [v15 isEqualToString:@"device_info"];
            v18 = [v10 objectForKey:v15];
            if (v24)
            {
              v25 = +[MSDNPIMaskValues sharedInstance];
              [v25 saveDeviceInfo:v18];
            }

            goto LABEL_32;
          }

          v19 = [v10 objectForKey:v15];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

LABEL_31:
            v18 = [v8 objectForKey:v15];
            goto LABEL_32;
          }

          v20 = [v10 objectForKey:v15];
          v21 = [v20 BOOLValue];

          v8 = v40;
          if (!v21)
          {
            goto LABEL_31;
          }

          v18 = [v10 objectForKey:v15];
          v22 = [v10 objectForKey:@"store_type"];

          if (v22)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v36 = sub_100063A54();
              v9 = v41;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                sub_1000D3AFC();
              }

              goto LABEL_59;
            }

            v23 = v22;
          }

          else
          {
            v26 = sub_100063A54();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v47 = "[MSDTargetDevice updateDeviceOptions:skipImutableKeys:]";
              v48 = 2114;
              v49 = @"retail";
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s - Device has do not buy enabled but store type is not set.  Default to %{public}@", buf, 0x16u);
            }

            v23 = @"retail";
          }

          v27 = sub_100063A54();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v47 = "[MSDTargetDevice updateDeviceOptions:skipImutableKeys:]";
            v48 = 2114;
            v49 = v23;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s - device_options has do not buy enabled with store type:  %{public}@", buf, 0x16u);
          }

          v39 = v23;
          if ([(__CFString *)v23 isEqualToString:@"retail"])
          {
            v28 = +[MSDHelperAgent sharedInstance];
            v29 = [v28 writeNvram:@"ownership-warning" withValue:@"1"];

            if ((v29 & 1) == 0)
            {
              v36 = sub_100063A54();
              v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
              v9 = v41;
              if (v37)
              {
                sub_1000D3BFC();
              }

              goto LABEL_58;
            }

            goto LABEL_43;
          }

          if ([(__CFString *)v23 isEqualToString:@"channel"])
          {
            v30 = +[MSDHelperAgent sharedInstance];
            v31 = [v30 writeNvram:@"ownership-warning" withValue:@"2"];

            if ((v31 & 1) == 0)
            {
              v36 = sub_100063A54();
              v9 = v41;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                sub_1000D3B7C();
              }

LABEL_58:
              v22 = v39;
LABEL_59:

              v34 = 0;
              goto LABEL_51;
            }

LABEL_43:
            v8 = v40;
LABEL_32:
            v9 = v41;
            goto LABEL_15;
          }

          v32 = sub_100063A54();
          v9 = v41;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v47 = "[MSDTargetDevice updateDeviceOptions:skipImutableKeys:]";
            v48 = 2114;
            v49 = v39;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s - Ignore do-not-buy for unrecognized store type:  %{public}@", buf, 0x16u);
          }

          v8 = v40;
        }

LABEL_15:
        if (v18)
        {
          goto LABEL_19;
        }

LABEL_20:
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v33 = [v10 countByEnumeratingWithState:&v42 objects:v50 count:16];
      v12 = v33;
      if (!v33)
      {
        goto LABEL_50;
      }
    }
  }

  v39 = 0;
LABEL_50:

  [(MSDTargetDevice *)self saveDeviceOptions:v9];
  v34 = 1;
  v22 = v39;
LABEL_51:

  return v34;
}

- (void)saveDeviceOptions:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:v3 forKey:@"device_options"];
}

- (id)getDeviceOptions
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"device_options"];
  v4 = [v3 mutableCopy];

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = objc_alloc_init(NSMutableDictionary);

    v4 = v5;
  }

  v6 = +[MSDNPIMaskValues sharedInstance];
  v7 = [v6 isNPIDevice];

  if (v7)
  {
    v8 = +[MSDNPIMaskValues sharedInstance];
    v9 = [v8 getMaskValueForKey:@"ProductType"];

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 setObject:v9 forKey:@"product_type"];
      }
    }

    v10 = +[MSDNPIMaskValues sharedInstance];
    v11 = [v10 getMaskValueForKey:@"part_description"];

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 setObject:v9 forKey:@"part_description"];
      }
    }

    v12 = +[MSDNPIMaskValues sharedInstance];
    v13 = [v12 getMaskValueForKey:@"device_family"];

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 setObject:v9 forKey:@"device_family"];
      }
    }
  }

  else
  {
    v9 = MGCopyAnswer();
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 setObject:v9 forKey:@"product_type"];
      }
    }
  }

  if (os_variant_has_internal_content())
  {
    v14 = +[MSDTestPreferences sharedInstance];
    v15 = [v14 mockForBetterTogetherDemo];

    if (v15)
    {
      [v4 setObject:&__kCFBooleanTrue forKey:@"enable_better_together"];
    }
  }

  return v4;
}

- (void)processNewFeatureFlags:(id)a3 oldFeatureFlags:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[MSDHubFeatureFlags supportedFeatureFlags];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v23;
    *&v9 = 138543874;
    v20 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v7 objectForKey:{v13, v20}];
        v15 = [v14 BOOLValue];

        v16 = [v6 objectForKey:v13];
        v17 = [v16 BOOLValue];

        if (v15 != v17)
        {
          v18 = sub_100063A54();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v20;
            v27 = v13;
            v28 = 1024;
            v29 = v15;
            v30 = 1024;
            v31 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Feature flag '%{public}@' has new value set: %{BOOL}d -> %{BOOL}d", buf, 0x18u);
          }

          if ([v13 isEqualToString:@"DisableNightlySnapshotRevert"])
          {
            if ([(MSDTargetDevice *)self isContentFrozen])
            {
              [(MSDTargetDevice *)self setupSnapshotRevertTimer];
            }
          }

          else if ([v13 isEqualToString:@"DisableNightlyLowPowerMode"])
          {
            if ([(MSDTargetDevice *)self mode]== 5)
            {
              [(MSDTargetDevice *)self configureLowPowerModeForTime:0];
            }
          }

          else if ([v13 isEqualToString:@"DisableCleanEnergyCharging"])
          {
            [(MSDTargetDevice *)self notifyCleanEnergyChargingToggled];
          }

          else if (([v13 isEqualToString:@"DisableScreenDarkHours"] & 1) == 0 && objc_msgSend(v13, "isEqualToString:", @"EnableAIModelAutoUpdate"))
          {
            v19 = +[MSDAssetUpdater sharedInstance];
            [v19 handleGMFeatureFlag];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v10);
  }
}

- (BOOL)setDemoEnrollmentFlag:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 setObject:v3 forKey:@"enrollmentFlag"];

  return v5;
}

- (id)getDemoEnrollmentFlag
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"enrollmentFlag"];

  return v3;
}

- (BOOL)revertSnapshot
{
  [(MSDTargetDevice *)self saveOperationRequest:@"RevertSnapshot" requestFlag:8 completeBy:0];

  return [(MSDTargetDevice *)self switchModeImmediately:2];
}

- (BOOL)runCleanUpForBetterTogetherDevice
{
  v3 = [(MSDTargetDevice *)self hubHostName];
  if (v3)
  {
    v4 = v3;
    v5 = [(MSDTargetDevice *)self hubPort];

    if (v5)
    {
      v6 = objc_alloc_init(MSDUnEnrollRequest);
      [(MSDUnEnrollRequest *)v6 setObliterate:1];
      v7 = +[MSDServerRequestHandler sharedInstance];
      v8 = [v7 handleRequestSync:v6];
    }
  }

  [(MSDTargetDevice *)self manageDemoVolume:@"Delete"];
  return 1;
}

- (BOOL)canStartContentUpdate
{
  v3 = [(MSDTargetDevice *)self mode];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(MSDTargetDevice *)self mode]== 5;
  }

  return v3;
}

- (BOOL)canStartOSUpdate
{
  v3 = [(MSDTargetDevice *)self mode];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(MSDTargetDevice *)self mode]== 5;
  }

  return v3;
}

- (BOOL)canRunCleanUpForBetterTogetherDevice
{
  v3 = +[MSDPlatform sharedInstance];
  if ([v3 watchOS])
  {
    v4 = [(MSDTargetDevice *)self isBetterTogetherDemo];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldForgetKnownNetworkUponUnlock
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"ForgetKnownNetworkUponUnlock"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)backgroundDownloadActive
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"BackgroundDownloadActive"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setBackgroundDownloadActive:(BOOL)a3
{
  v3 = a3;
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting bg:%d", v11, 8u);
  }

  v5 = +[MSDPreferencesFile sharedInstance];
  v6 = v5;
  if (v3)
  {
    v7 = [NSNumber numberWithBool:1];
    v8 = [v6 setObject:v7 forKey:@"BackgroundDownloadActive"];

    if ((v8 & 1) == 0)
    {
      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000D3CB0();
      }

LABEL_11:
    }
  }

  else
  {
    v10 = [v5 removeObjectForKey:@"BackgroundDownloadActive"];

    if ((v10 & 1) == 0)
    {
      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000D3C7C();
      }

      goto LABEL_11;
    }
  }
}

- (void)setBackgroundDownloadState:(unint64_t)a3
{
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setting background download state:%lu", &v8, 0xCu);
  }

  v6 = +[MSDProgressUpdater sharedInstance];
  v7 = [v6 backgroundBundle];
  [v7 setBundleStateAs:a3];

  if (a3 - 3 <= 1)
  {
    [(MSDTargetDevice *)self setBackgroundDownloadActive:0];
  }
}

- (void)setHubProtocolVersion:(id)a3
{
  v3 = a3;
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting hub proto version:%{public}@", &v6, 0xCu);
  }

  v5 = +[MSDPreferencesFile sharedInstance];
  [v5 setObject:v3 forKey:@"HubProtocolVersion"];
}

- (NSString)hubProtocolVersion
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"HubProtocolVersion"];

  if (v3)
  {
    v4 = +[MSDPreferencesFile sharedInstance];
    v5 = [v4 objectForKey:@"HubProtocolVersion"];
  }

  else
  {
    v5 = @"2";
  }

  return v5;
}

- (BOOL)proceeded
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"Proceeded"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setProceeded:(BOOL)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = v4;
  if (v3)
  {
    v6 = [NSNumber numberWithBool:1];
    v7 = [v5 setObject:v6 forKey:@"Proceeded"];

    if (v7)
    {
      return;
    }

    goto LABEL_3;
  }

  v8 = [v4 removeObjectForKey:@"Proceeded"];

  if ((v8 & 1) == 0)
  {
LABEL_3:
    sub_1000D3CE4();
  }
}

- (void)cleanUpBackgroundState:(BOOL)a3
{
  if (a3)
  {
    v4 = +[MSDPreferencesFile sharedInstance];
    [v4 removeObjectsForKeys:&off_10017BD78];
  }

  [MSDBundleProgressTracker removeBundleFromPreferences:@"Content.Downloading"];
  v5 = +[MSDProgressUpdater sharedInstance];
  [v5 resetTrackerForBundleType:1];

  [(MSDTargetDevice *)self setBackgroundDownloadActive:0];
}

- (NSDictionary)wifiSettings
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"WiFiSettings"];

  return v3;
}

- (void)setWifiSettings:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 setObject:v3 forKey:@"WiFiSettings"];
  }

  else
  {
    v6 = [v4 removeObjectForKey:@"WiFiSettings"];
  }

  v7 = v6;

  if ((v7 & 1) == 0)
  {
    sub_1000D3CE4();
  }
}

- (id)getDesiredIconStateFromSB
{
  SBSSpringBoardBlockableServerPort();
  if (SBGetPendingIconState())
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3D8C();
    }
  }

  return 0;
}

- (BOOL)sendIconStateToSB:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    SBSSpringBoardBlockableServerPort();
    [v4 bytes];
    [v4 length];
    v5 = SBSetIconState();
    v6 = v5 == 0;
    v7 = sub_100063A54();
    v8 = v7;
    if (v5)
    {
      sub_1000D3E00(v7);
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Desired icon state is restored.", v10, 2u);
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)delayRebootForTesting
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[MSDTestPreferences sharedInstance];
  v4 = [v3 rebootDelayForStaging];

  if (v4)
  {
    if (([v2 fileExistsAtPath:@"/tmp/rebootDelayEntered"] & 1) == 0)
    {
      [v2 createFileAtPath:@"/tmp/rebootDelayEntered" contents:0 attributes:0];
    }

    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Waiting for %u seconds to run test.", v6, 8u);
    }

    sleep(v4);
  }
}

- (void)configureLowPowerModeForTime:(id)a3
{
  v4 = a3;
  v5 = +[MSDStoreHoursManager sharedInstance];
  v6 = +[MSDPreferencesFile sharedInstance];
  v7 = [v6 objectForKey:@"LowPowerModeConfigured"];
  v8 = [v7 BOOLValue];

  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Configuring low power mode...", buf, 2u);
  }

  if (+[MSDHubFeatureFlags disableNightlyLowPowerMode])
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Nightly low power mode is disabled by feature flag!", v11, 2u);
    }

    if (v8)
    {
      [(MSDTargetDevice *)self setLowPowerMode:0];
      [v6 removeObjectForKey:@"LowPowerModeConfigured"];
    }
  }

  else
  {
    if (v4)
    {
      [v5 evaluateStoreStatusAgainstPointInTime:v4];
    }

    else
    {
      [v5 evaluateStoreStatusAgainstCurrentTime];
    }

    -[MSDTargetDevice setLowPowerMode:](self, "setLowPowerMode:", [v5 isStoreOpenNow] ^ 1);
    [v6 setObject:&__kCFBooleanTrue forKey:@"LowPowerModeConfigured"];
  }
}

- (BOOL)setLowPowerMode:(int64_t)a3
{
  v4 = +[_PMLowPowerMode sharedInstance];
  v5 = [v4 getPowerMode];

  v6 = v5 == a3;
  if (v5 == a3)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Low power mode already set to: %ld", &v11, 0xCu);
    }

    goto LABEL_9;
  }

  v8 = +[_PMLowPowerMode sharedInstance];
  v9 = [v8 setPowerMode:a3 fromSource:@"MobileStoreDemo"];

  if ((v9 & 1) == 0)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3E94();
    }

LABEL_9:

    return v6;
  }

  return 1;
}

- (void)notifyCleanEnergyChargingToggled
{
  v2 = +[NSDistributedNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MSDNotificationCleanEnergyCharging" object:0 userInfo:0 deliverImmediately:1];
}

- (id)retrieveSignedManifest
{
  v3 = +[MSDFileDownloadCredentials sharedInstance];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:@"/var/MSDWorkContainer/.MSD_cache_manifest"];

  v6 = +[NSFileManager defaultManager];
  v7 = [(MSDTargetDevice *)self manifestPath];
  v8 = [v6 fileExistsAtPath:v7];

  if (!v8 || ([(MSDTargetDevice *)self manifestPath], v9 = objc_claimAutoreleasedReturnValue(), [MSDSignedManifestFactory createSignedManifestFromManifestFile:v9], v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v11 = objc_alloc_init(MSDDownloadManifestRequest);
    v12 = [v3 manifestInfo];
    [(MSDDownloadManifestRequest *)v11 setManifestInfo:v12];

    v13 = [(MSDTargetDevice *)self manifestPath];
    [(MSDServerRequest *)v11 setSavePath:v13];

    v14 = +[MSDServerRequestHandler sharedInstance];
    v15 = [v14 handleRequestSync:v11];

    v16 = [v15 error];

    if (v16)
    {
      v40 = 0;
    }

    else
    {
      v17 = [(MSDTargetDevice *)self manifestPath];
      v10 = [MSDSignedManifestFactory createSignedManifestFromManifestFile:v17];

      if (v10)
      {

        goto LABEL_6;
      }

      v44 = 0;
      sub_1000C1390(&v44, 3727740938, @"Manifest is corrupted.");
      v40 = v44;
    }

    v10 = 0;
LABEL_26:

    v43 = v40;
    sub_1000C1424(&v43, 3727740940, @"Could not download manifest.");
    v29 = v43;

    v28 = +[MSDDemoUpdateStatusHub sharedInstance];
    [v28 demoUpdateFailed:v29];
    v38 = 0;
    goto LABEL_17;
  }

LABEL_6:
  v18 = [(MSDTargetDevice *)self helperAgent];
  v19 = [v18 updateSignedManifest];

  if ((v19 & 1) == 0)
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(&v11->super.super.super.super, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3F04();
    }

    v40 = 0;
    goto LABEL_26;
  }

  v41 = v5;
  v20 = +[MSDPreferencesFile sharedInstance];
  v21 = [v20 objectForKey:@"MSDCacheManifestVersion"];

  v22 = [v10 getInfo];
  v23 = [v22 objectForKey:@"PartNumber"];
  v24 = [v10 getInfo];
  v25 = [v24 objectForKey:@"Revision"];
  v42 = v3;
  v26 = [v3 manifestInfo];
  v27 = [v26 objectForKey:@"SigningKey"];
  v28 = [NSString stringWithFormat:@"%@_%@_%@", v23, v25, v27];

  v29 = v21;
  if (v21 && ([v21 isEqualToString:v28] & 1) == 0)
  {
    v34 = sub_100063A54();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v46 = v28;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "This is a new manifest (%{public}@). Discard this cache and reset timer.", buf, 0xCu);
    }

    v35 = +[MSDContentCacheManager sharedInstance];
    v36 = [v10 getAllFileHash];
    [v35 clearCacheExceptFileHashes:v36];

    [(MSDTargetDevice *)self cleanUpBackgroundState:1];
    v3 = v42;
    p_superclass = MSDS3UploadHandler.superclass;
  }

  else
  {
    v3 = v42;
    p_superclass = (MSDS3UploadHandler + 8);
    if (v41)
    {
      v31 = sub_100063A54();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Factory cache exists. Discard this cache.", buf, 2u);
      }

      v32 = +[MSDContentCacheManager sharedInstance];
      v33 = [v10 getAllFileHash];
      [v32 clearCacheExceptFileHashes:v33];
    }
  }

  v37 = [p_superclass + 189 sharedInstance];
  [v37 setObject:v28 forKey:@"MSDCacheManifestVersion"];

  v10 = v10;
  v38 = v10;
LABEL_17:

  return v38;
}

- (void)clearSafariHistory
{
  v2 = SFProcessIDForProcessNamed();
  if (v2 < 0)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D3F38();
    }
  }

  else
  {
    v3 = v2;
    v4 = kill(v2, 1);
    v5 = sub_100063A54();
    v6 = v5;
    if (v4 == -1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000D3F6C();
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v50) = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Killed com.apple.Safari.History (%i)", buf, 8u);
    }
  }

  v7 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.mobilesafari"];
  v8 = [v7 dataContainerURL];
  v9 = [v8 path];

  v37 = [v9 stringByAppendingPathComponent:@"Library/Caches"];
  v43 = [v9 stringByAppendingPathComponent:@"Library/Cookies"];
  v35 = [v9 stringByAppendingPathComponent:@"Library/WebKit/WebsiteData"];
  v41 = v9;
  v42 = [v9 stringByAppendingPathComponent:@"Library/Caches/WebKit"];
  v40 = NSHomeDirectory();
  v33 = [v40 stringByAppendingPathComponent:@"Library/Safari/History.db"];
  v39 = NSHomeDirectory();
  v31 = [v39 stringByAppendingPathComponent:@"Library/Safari/History.db-shm"];
  v36 = NSHomeDirectory();
  v30 = [v36 stringByAppendingPathComponent:@"Library/Safari/History.db-wal"];
  v34 = NSHomeDirectory();
  v29 = [v34 stringByAppendingPathComponent:@"Library/Safari/SafariTabs.db"];
  v32 = NSHomeDirectory();
  v10 = [v32 stringByAppendingPathComponent:@"Library/Safari/SafariTabs.db-shm"];
  v11 = NSHomeDirectory();
  v12 = [v11 stringByAppendingPathComponent:@"Library/Safari/SafariTabs.db-wal"];
  v13 = NSHomeDirectory();
  v14 = [v13 stringByAppendingPathComponent:@"Library/Safari/LastSession.plist"];
  v15 = NSHomeDirectory();
  v16 = [v15 stringByAppendingPathComponent:@"Library/Safari/RecentlyClosedTabs.plist"];
  v38 = [NSArray arrayWithObjects:v37, v43, v35, v42, v33, v31, v30, v29, v10, v12, v14, v16, 0];

  v17 = +[NSFileManager defaultManager];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v18 = v38;
  v19 = [v18 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v46;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v45 + 1) + 8 * i);
        v24 = [v17 fileExistsAtPath:v23];
        v25 = sub_100063A54();
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (!v24)
        {
          if (v26)
          {
            *buf = 138543362;
            v50 = v23;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "File not found for Safari: %{public}@", buf, 0xCu);
          }

          v28 = 0;
          goto LABEL_23;
        }

        if (v26)
        {
          *buf = 138543362;
          v50 = v23;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Removing item for Safari: %{public}@", buf, 0xCu);
        }

        v44 = 0;
        v27 = [v17 removeItemAtPath:v23 error:&v44];
        v28 = v44;
        if ((v27 & 1) == 0)
        {
          v25 = sub_100063A54();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v50 = v23;
            v51 = 2114;
            v52 = v28;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to remove item for Safari: %{public}@, Error: %{public}@", buf, 0x16u);
          }

LABEL_23:
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v20);
  }
}

- (BOOL)deleteOperationRequest
{
  v3 = [(MSDTargetDevice *)self request];

  if (!v3 || (+[MSDPreferencesFile sharedInstance](MSDPreferencesFile, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), [v4 removeObjectForKey:@"criticalContentUpdateOnly"], v4, v5 = -[MSDTargetDevice removeKeyFromPreferenceFile:](self, "removeKeyFromPreferenceFile:", @"msd-request")))
  {
    v6 = [(MSDTargetDevice *)self response];

    if (v6)
    {

      LOBYTE(v5) = [(MSDTargetDevice *)self removeKeyFromPreferenceFile:@"msd-response"];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)deleteOperationRequestAndQuitHelper
{
  v3 = [(MSDTargetDevice *)self deleteOperationRequest];
  if (v3)
  {
    v4 = [(MSDTargetDevice *)self helperAgent];
    v5 = [v4 quitHelper];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (int64_t)findMyHubRetryAtTime
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"FMHRetryAtTime"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)hubLastOnlineTime
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"HubLastOnlineTime"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)snapshotRevertFlagged
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"SnapshotRevertFlagged"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)hubSuppliedSettings
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"HubSuppliedSettings"];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 objectForKey:@"SettingsID"];

      if (v4)
      {
        v5 = v3;
        goto LABEL_5;
      }

      v7 = sub_100063A54();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315138;
        v10 = "[MSDTargetDevice hubSuppliedSettings]";
        sub_100033CD8(&_mh_execute_header, v7, v8, "%s: Hub supplied settings not in right format.", &v9);
      }
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (BOOL)saveHubSuppliedSettings:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = [v4 objectForKey:@"SettingsID"];

  if (!v5)
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[MSDTargetDevice saveHubSuppliedSettings:]";
      sub_100033CD8(&_mh_execute_header, v12, v13, "%s: Hub supplied settings not in right format.", &v14);
    }

    goto LABEL_10;
  }

  v6 = +[MSDPreferencesFile sharedInstance];
  v7 = [v6 setObject:v4 forKey:@"HubSuppliedSettings"];

  if (!v7)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_6;
  }

  v8 = +[NSDate date];
  [(MSDTargetDevice *)self saveLastSettingsUpdatedTime:v8];

  v9 = +[NSDistributedNotificationCenter defaultCenter];
  [v9 postNotificationName:@"com.apple.MobileStoreDemo.SettingsUpdated" object:0 userInfo:0 options:3];

  v10 = 1;
LABEL_6:

  return v10;
}

- (BOOL)waitingForCommand
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"WaitingForCommand"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)backgroundDownloadState
{
  v2 = +[MSDProgressUpdater sharedInstance];
  v3 = [v2 backgroundBundle];

  if (v3)
  {
    v4 = [v3 bundleState];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end