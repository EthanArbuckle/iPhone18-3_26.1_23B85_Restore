@interface MCProfileServiceServer
+ (id)_descriptionForServiceSubscriptionContext:(id)a3;
+ (id)_optionsForCarrierProfileInstallationForCarrierIdentifier:(id)a3 name:(id)a4;
+ (id)sharedServer;
- (BOOL)_hasCompletedPostLoginWork;
- (BOOL)_isValidProvisioningProfileData:(id)a3;
- (BOOL)isBundleBlocked:(id)a3 outHash:(id *)a4 outHashType:(id *)a5;
- (BOOL)isOpenInRestrictionInEffect;
- (BOOL)mayOpenFromManagedToUnmanaged;
- (BOOL)mayOpenFromUnmanagedToManaged;
- (BOOL)shouldApplyFilterForBundleID:(id)a3 sourceAccountManagement:(int)a4 outAllowManagedAccounts:(BOOL *)a5 outAllowUnmanagedAccounts:(BOOL *)a6;
- (BOOL)storeCloudConfigurationDetails:(id)a3 outError:(id *)a4;
- (MCProfileServiceServer)init;
- (id)URLForInstallingProfileInSettingsApp:(id)a3 returningToBundleID:(id)a4;
- (id)_badProvisioningProfileError;
- (id)_carrierNameFromContext:(id)a3;
- (id)_localProvisioningProfileError;
- (id)bookmarkDictsFromBookmarks:(id)a3;
- (id)bookmarksFromBookmarkDicts:(id)a3;
- (id)cloudConfigurationMachineInfoDataWithAdditionalInfo:(id)a3;
- (void)_debug_scheduleBackgroundTask:(id)a3 interval:(double)a4 tolerance:(double)a5 completion:(id)a6;
- (void)_handleSettingsJumpWithProfileData:(id)a3 targetDeviceType:(unint64_t)a4 bundleID:(id)a5;
- (void)_markPostUserLoginWorkCompleted;
- (void)_sendEffectiveSettingsChangedNotification;
- (void)_sendRestrictionChangedNotification;
- (void)_workerQueueCheckCarrierProfileForCarrierIdentifier:(id)a3 name:(id)a4 atPath:(id)a5 forceReinstallation:(BOOL)a6;
- (void)_workerQueueCheckCarrierProfileOnUnlockSometimes;
- (void)_workerQueueForceCheckOfCarrierProfileOnNextUnlock;
- (void)_workerQueuePrepareForService;
- (void)_workerQueueRemoveAllCarrierProfiles;
- (void)_workerQueueSignIntoFaceTimeWithUsername:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)applyPairingWatchMDMEnrollmentData:(id)a3 source:(id)a4 completion:(id)a5;
- (void)applyRestrictionDictionary:(id)a3 toSystem:(BOOL)a4 overrideRestrictions:(BOOL)a5 appsAndOptions:(id)a6 clientType:(id)a7 clientUUID:(id)a8 sender:(id)a9 localizedClientDescription:(id)a10 localizedWarningMessage:(id)a11 completion:(id)a12;
- (void)changePasscodeWithOldPasscodeContext:(id)a3 newPasscodeContext:(id)a4 isRecovery:(BOOL)a5 skipRecovery:(BOOL)a6 senderBundleID:(id)a7 completion:(id)a8;
- (void)checkCarrierProfileAndForceReinstallation:(BOOL)a3 completion:(id)a4;
- (void)checkInWithCompletion:(id)a3;
- (void)clearPasscodeWithEscrowKeybagData:(id)a3 secretContext:(id)a4 senderBundleID:(id)a5 completion:(id)a6;
- (void)clearRecoveryPasscodeWithSenderBundleID:(id)a3 completion:(id)a4;
- (void)cloudConfigurationMachineInfoDataWithAdditionalInfo:(id)a3 completion:(id)a4;
- (void)cloudConfigurationStoreDetails:(id)a3 completion:(id)a4;
- (void)cloudConfigurationStoreDetailsForPendingMigration:(id)a3 completion:(id)a4;
- (void)createActivationLockBypassCodeWithCompletion:(id)a3;
- (void)createMDMUnlockTokenIfNeededWithPasscodeContext:(id)a3 completion:(id)a4;
- (void)defaultAppBundleIDForCommunicationServiceType:(id)a3 forAccountWithIdentifier:(id)a4 completion:(id)a5;
- (void)effectiveBoolValueForWatchSetting:(id)a3 pairingID:(id)a4 pairingDataStore:(id)a5 completion:(id)a6;
- (void)effectiveValueForWatchSetting:(id)a3 pairingID:(id)a4 pairingDataStore:(id)a5 completion:(id)a6;
- (void)effectiveValuesForWatchIntersectionSetting:(id)a3 pairingID:(id)a4 pairingDataStore:(id)a5 completion:(id)a6;
- (void)effectiveValuesForWatchUnionSetting:(id)a3 pairingID:(id)a4 pairingDataStore:(id)a5 completion:(id)a6;
- (void)fetchConfigurationWithCompletionBlock:(id)a3;
- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion:(id)a3;
- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:(id)a3 completion:(id)a4;
- (void)fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion:(id)a3;
- (void)installProfileData:(id)a3 interactionClient:(id)a4 options:(id)a5 source:(id)a6 completion:(id)a7;
- (void)installProvisioningProfileData:(id)a3 managingProfileIdentifier:(id)a4 completion:(id)a5;
- (void)isPasscodeCompliantWithNamedPolicy:(id)a3 completion:(id)a4;
- (void)localeChanged;
- (void)managedSystemConfigurationServiceIDsWithCompletion:(id)a3;
- (void)managedWiFiNetworkNamesWithCompletion:(id)a3;
- (void)managingOrganizationInformationWithCompletion:(id)a3;
- (void)markStoredProfileAsInstalledWithCompletion:(id)a3;
- (void)mayShareToWhitelistedSourceUnmanagedTargetAppWithServiceName:(id)a3 originatingAppBundleID:(id)a4 originatingAccountIsManaged:(BOOL)a5 completion:(id)a6;
- (void)migrateCleanupMigratorWithContext:(int)a3 completion:(id)a4;
- (void)migrateWithContext:(int)a3 passcodeWasSetInBackup:(BOOL)a4 completion:(id)a5;
- (void)monitorEnrollmentStateForClient:(id)a3 personaID:(id)a4;
- (void)notifyBatterySaverModeChanged;
- (void)notifyDeviceUnlockedAndPasscodeRequiredWithCompletion:(id)a3;
- (void)notifyDeviceUnlockedWithCompletion:(id)a3;
- (void)notifyFirstUnlock;
- (void)notifyHaveSeenComplianceMessageWithLastLockDate:(id)a3 completion:(id)a4;
- (void)notifyMementoEffaced;
- (void)notifyProvisioningProfilesChanged;
- (void)notifyStartComplianceTimer:(id)a3 completion:(id)a4;
- (void)notifyUserLoggedIn;
- (void)openSensitiveURL:(id)a3 unlock:(BOOL)a4 completion:(id)a5;
- (void)openSettingsAppForProfileInstallation:(id)a3 bundleID:(id)a4;
- (void)peekProfileDataFromPurgatoryForDeviceType:(unint64_t)a3 withCompletion:(id)a4;
- (void)popProfileDataFromHeadOfInstallationQueueWithCompletion:(id)a3;
- (void)provisiongProfileUUIDsForSignerIdentity:(id)a3 completion:(id)a4;
- (void)queueProfileDataForInstallation:(id)a3 originalFileName:(id)a4 originatingBundleID:(id)a5 transitionToUI:(BOOL)a6 completion:(id)a7;
- (void)reapplyAppEnforcedRestrictionsWithAssertion:(id)a3;
- (void)recomputePerClientUserComplianceWithCompletion:(id)a3;
- (void)recomputeProfileRestrictionsWithCompletionBlock:(id)a3;
- (void)recomputeUserComplianceWarningWithCompletion:(id)a3;
- (void)reducedMachineInfoDataWithCompletion:(id)a3;
- (void)removeBoolSetting:(id)a3 sender:(id)a4 completion:(id)a5;
- (void)removeExpiredProfilesWithCompletion:(id)a3;
- (void)removeOrphanedClientRestrictionsWithCompletion:(id)a3;
- (void)removePostSetupAutoInstallSetAsideProfileWithCompletion:(id)a3;
- (void)removeProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 source:(id)a5 completion:(id)a6;
- (void)removeProvisioningProfileWithUUID:(id)a3 managingProfileIdentifier:(id)a4 sender:(id)a5 completion:(id)a6;
- (void)removeSetAsideCloudConfigurationProfileWithCompletion:(id)a3;
- (void)removeUninstalledProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 targetDeviceType:(unint64_t)a5 completion:(id)a6;
- (void)removeValueSetting:(id)a3 sender:(id)a4 completion:(id)a5;
- (void)rereadManagedAppAttributesWithCompletion:(id)a3;
- (void)resetAllSettingsToDefaultsIsUserInitiated:(BOOL)a3 sender:(id)a4 completion:(id)a5;
- (void)resetPasscodeMetadataWithCompletion:(id)a3;
- (void)restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:(id)a3;
- (void)setParametersForSettingsByType:(id)a3 configurationUUID:(id)a4 toSystem:(BOOL)a5 user:(BOOL)a6 credentialSet:(id)a7 senderPID:(int)a8 sender:(id)a9 completion:(id)a10;
- (void)setURLsFromUserBookmarkDictsAsSettings:(id)a3 sender:(id)a4;
- (void)setUserInfo:(id)a3 forClientUUID:(id)a4 sender:(id)a5 completion:(id)a6;
- (void)signerIdentityForBundleID:(id)a3 completion:(id)a4;
- (void)start;
- (void)storeActivationRecord:(id)a3 completion:(id)a4;
- (void)storeCertificateData:(id)a3 forIPCUIdentifier:(id)a4 completion:(id)a5;
- (void)storeProfileData:(id)a3 completion:(id)a4;
- (void)storedProfileDataWithCompletion:(id)a3;
- (void)syncTrustedCodeSigningIdentitiesWithCompletion:(id)a3;
- (void)trustedCodeSigningIdentitiesWithCompletion:(id)a3;
- (void)unstageMDMEnrollmentInfoForPairingWatchWithCompletion:(id)a3;
- (void)updateMDMEnrollmentInfoForPairingWatch:(id)a3 completion:(id)a4;
- (void)updateProfileIdentifier:(id)a3 interactionClient:(id)a4 source:(id)a5 completion:(id)a6;
- (void)validateAppBundleIDs:(id)a3 completion:(id)a4;
- (void)verifiedMDMProfileIdentifierWithCompletion:(id)a3;
- (void)waitForMigrationIncludingPostRestoreMigration:(BOOL)a3 completion:(id)a4;
- (void)workerQueueCheckForAutoInstallProfiles;
- (void)workerQueueDidRecomputeNagMessageWithResult:(BOOL)a3;
- (void)workerQueueNotifyDeviceUnlockedAndPasscodeRequired;
- (void)workerQueueNotifyUserLoggedIn;
- (void)workerQueueReadBiometricState;
- (void)workerQueueRecomputeNagMessage;
@end

@implementation MCProfileServiceServer

+ (id)sharedServer
{
  if (qword_100136A58 != -1)
  {
    sub_1000C0FAC();
  }

  v3 = qword_100136A50;

  return v3;
}

- (MCProfileServiceServer)init
{
  v21.receiver = self;
  v21.super_class = MCProfileServiceServer;
  v2 = [(MCProfileServiceServer *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v2->_checkInLock._os_unfair_lock_opaque = 0;
    v2->_memberQueueIdleTimeInterval = 60.0;
    v4 = dispatch_queue_create("MCProfileServiceServer worker queue", 0);
    workerQueue = v3->_workerQueue;
    v3->_workerQueue = v4;

    v6 = dispatch_queue_create("MCProfileServiceServer monitor queue", &_dispatch_queue_attr_concurrent);
    monitorQueue = v3->_monitorQueue;
    v3->_monitorQueue = v6;

    v3->_workerQueueLastCarrierProfileCheckTime = 0;
    v8 = dispatch_queue_create("MCProfileServiceServer member queue", &_dispatch_queue_attr_concurrent);
    memberQueue = v3->_memberQueue;
    v3->_memberQueue = v8;

    v10 = dispatch_queue_create("MCProfileServiceServer client restriction queue", 0);
    clientRestrictionQueue = v3->_clientRestrictionQueue;
    v3->_clientRestrictionQueue = v10;

    v12 = dispatch_queue_create("MCProfileServiceServer mail accounts queue", 0);
    mailAccountsQueue = v3->_mailAccountsQueue;
    v3->_mailAccountsQueue = v12;

    v14 = +[LSApplicationWorkspace defaultWorkspace];
    appWorkspace = v3->_appWorkspace;
    v3->_appWorkspace = v14;

    v16 = [[CoreTelephonyClient alloc] initWithQueue:v3->_workerQueue];
    coreTelephonyClient = v3->_coreTelephonyClient;
    v3->_coreTelephonyClient = v16;

    v18 = [[DMCDaemonConnectionTracker alloc] initWithProcessName:@"profiled" connectionThreshold:2 requestThreshold:5];
    connectionTracker = v3->_connectionTracker;
    v3->_connectionTracker = v18;
  }

  return v3;
}

- (void)start
{
  v3 = _MCLogObjects[2];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Profile Service Server starting...", buf, 2u);
  }

  v4 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-StartServer"];
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003504;
  block[3] = &unk_10011B688;
  block[4] = self;
  dispatch_sync(workerQueue, block);
  v6 = self->_workerQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000358C;
  v8[3] = &unk_10011B798;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)notifyBatterySaverModeChanged
{
  v2 = [(MCProfileServiceServer *)self clientRestrictionQueue];
  dispatch_async(v2, &stru_10011B7B8);
}

- (void)localeChanged
{
  v3 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-LocaleChanged"];
  v4 = _MCLogObjects[2];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Locale changed: Reapplying app enforced restrictions", v5, 2u);
  }

  [(MCProfileServiceServer *)self reapplyAppEnforcedRestrictionsWithAssertion:v3];
}

- (void)reapplyAppEnforcedRestrictionsWithAssertion:(id)a3
{
  v4 = a3;
  v5 = [(MCProfileServiceServer *)self clientRestrictionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004030;
  block[3] = &unk_10011B688;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)_workerQueuePrepareForService
{
  v3 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-WorkerQueue"];
  v4 = _MCLogObjects[2];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Performing startup checks.", buf, 2u);
  }

  v5 = [(MCProfileServiceServer *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000048A4;
  block[3] = &unk_10011B688;
  block[4] = self;
  dispatch_barrier_async(v5, block);

  v6 = +[NSFileManager defaultManager];
  v7 = MCCrashDetectionFilePath();
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = _MCLogObjects[2];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cleaning up after previous crash", buf, 2u);
    }

    v10 = +[MCRestrictionManagerWriter sharedManager];
    [v10 removeOrphanedClientRestrictions];

    v11 = +[MCInstaller sharedInstaller];
    [v11 recomputeProfileRestrictionsWithCompletionBlock:&stru_10011B7D8];

    v12 = +[NSFileManager defaultManager];
    v13 = MCCrashDetectionFilePath();
    [v12 removeItemAtPath:v13 error:0];
  }

  v14 = +[MCPasscodeManager sharedManager];
  v15 = [v14 isPasscodeSet];

  if ((v15 & 1) == 0)
  {
    [(MCProfileServiceServer *)self workerQueueNotifyDeviceUnlocked];
  }

  v16 = +[NSFileManager defaultManager];
  v17 = MCOutstandingNagComputationFilePath();
  v18 = [v16 fileExistsAtPath:v17];

  if (v18)
  {
    v19 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-OutstandingNag"];
    workerQueue = self->_workerQueue;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100004960;
    v47[3] = &unk_10011B798;
    v47[4] = self;
    v48 = v19;
    v21 = v19;
    dispatch_async(workerQueue, v47);
  }

  v22 = +[NSFileManager defaultManager];
  v23 = MCSystemRestartLogPath();
  v24 = [v22 fileExistsAtPath:v23];

  if (v24)
  {
    v25 = MCSystemRestartLogPath();
    v26 = [NSString stringWithContentsOfFile:v25 encoding:4 error:0];

    v27 = _MCLogObjects[2];
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      if (v28)
      {
        *buf = 138543362;
        v51 = v26;
        v29 = "Device restarted due to MDM command at %{public}@";
        v30 = v27;
        v31 = 12;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
      }
    }

    else if (v28)
    {
      *buf = 0;
      v29 = "Device restarted due to MDM command at unknown time.";
      v30 = v27;
      v31 = 2;
      goto LABEL_17;
    }

    v32 = +[NSFileManager defaultManager];
    v33 = MCSystemRestartLogPath();
    [v32 removeItemAtPath:v33 error:0];
  }

  v34 = +[NSFileManager defaultManager];
  v35 = MCSystemShutDownLogPath();
  v36 = [v34 fileExistsAtPath:v35];

  if (!v36)
  {
    goto LABEL_27;
  }

  v37 = MCSystemShutDownLogPath();
  v38 = [NSString stringWithContentsOfFile:v37 encoding:4 error:0];

  v39 = _MCLogObjects[2];
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
  if (v38)
  {
    if (v40)
    {
      *buf = 138543362;
      v51 = v38;
      v41 = "Device shut down due to MDM command at %{public}@";
      v42 = v39;
      v43 = 12;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v41, buf, v43);
    }
  }

  else if (v40)
  {
    *buf = 0;
    v41 = "Device shut down due to MDM command at unknown time.";
    v42 = v39;
    v43 = 2;
    goto LABEL_25;
  }

  v44 = +[NSFileManager defaultManager];
  v45 = MCSystemShutDownLogPath();
  [v44 removeItemAtPath:v45 error:0];

LABEL_27:
  v46 = _MCLogObjects[2];
  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Completed startup checks.", buf, 2u);
  }
}

- (void)workerQueueDidRecomputeNagMessageWithResult:(BOOL)a3
{
  v3 = a3;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Finished recomputing nag message. Success: %d", v10, 8u);
  }

  if (v3)
  {
    v6 = +[NSFileManager defaultManager];
    v7 = MCOutstandingNagComputationFilePath();
    [v6 removeItemAtPath:v7 error:0];
  }

  else
  {
    v8 = +[NSData data];
    v9 = MCOutstandingNagComputationFilePath();
    [v8 writeToFile:v9 atomically:1];

    [(MCBackgroundTaskManager *)self->_workerQueueBackgroundTaskManager scheduleRecomputeNagMetadataTask];
  }
}

- (void)workerQueueRecomputeNagMessage
{
  v3 = _MCLogObjects[2];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Recomputing passcode requirement message", v6, 2u);
  }

  v4 = +[MCRestrictionManagerWriter sharedManager];
  v5 = [v4 recomputeNagMetadata];

  [(MCProfileServiceServer *)self workerQueueDidRecomputeNagMessageWithResult:v5];
}

- (void)workerQueueCheckForAutoInstallProfiles
{
  keyExistsAndHasValidFormat = 0;
  v3 = kMCHasCheckedForAutoInstalledProfiles;
  v4 = kMCNotBackedUpPreferencesDomain;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(kMCHasCheckedForAutoInstalledProfiles, kMCNotBackedUpPreferencesDomain, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v6 = AppBooleanValue == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = +[MCPasscodeManager sharedManager];
    v8 = [v7 isDeviceLocked];

    if (v8)
    {
      v9 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Cannot check for auto-install profiles: device is locked. Checking next time the device is unlocked.", buf, 2u);
      }
    }

    else
    {
      v40 = v3;
      v41 = v4;
      v42 = self;
      v10 = +[NSMutableArray array];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v11 = +[NSFileManager defaultManager];
      v12 = [v11 enumeratorAtPath:@"/Library/AutoInstall/Profiles/"];

      v13 = [v12 countByEnumeratingWithState:&v50 objects:v60 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v51;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v51 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [v10 addObject:*(*(&v50 + 1) + 8 * i)];
          }

          v14 = [v12 countByEnumeratingWithState:&v50 objects:v60 count:16];
        }

        while (v14);
      }

      v17 = [v10 sortedArrayUsingSelector:"compare:"];
      if ([v10 count])
      {
        v18 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
          v20 = [v10 count];
          *buf = 67109120;
          LODWORD(v58) = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Auto-installing %d profiles.", buf, 8u);
        }
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = v10;
      v21 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v47;
        v43 = kMCInstallProfileOptionIsAutoInstalled;
        do
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v47 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v46 + 1) + 8 * j);
            v26 = objc_autoreleasePoolPush();
            v27 = [v25 pathExtension];
            v28 = [v27 isEqualToString:@"mobileconfig"];

            if (v28)
            {
              v29 = _MCLogObjects[0];
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v58 = v25;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Automatically installing %{public}@", buf, 0xCu);
              }

              v30 = [@"/Library/AutoInstall/Profiles/" stringByAppendingPathComponent:v25];
              v31 = [NSData dataWithContentsOfFile:v30];
              if (v31)
              {
                v32 = +[MCInstaller sharedInstaller];
                v55 = v43;
                v56 = &__kCFBooleanTrue;
                v33 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
                v45 = 0;
                v34 = [v32 installProfileData:v31 options:v33 interactionClient:0 source:@"MCProfileServiceServer.workerQueueCheckForAutoInstalledProfiles" outError:&v45];
                v35 = v45;

                if (v35)
                {
                  v36 = _MCLogObjects[0];
                  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                  {
                    v37 = v36;
                    v38 = [v35 MCVerboseDescription];
                    *buf = 138543362;
                    v58 = v38;
                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Installation failed. Error: %{public}@", buf, 0xCu);
                  }
                }
              }
            }

            objc_autoreleasePoolPop(v26);
          }

          v22 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
        }

        while (v22);
      }

      CFPreferencesSetAppValue(v40, kCFBooleanTrue, v41);
      CFPreferencesAppSynchronize(v41);

      self = v42;
    }

    v39 = [(MCProfileServiceServer *)self workerQueueBackgroundTaskManager];
    [v39 scheduleProfileJanitorTask];
  }
}

- (void)_sendRestrictionChangedNotification
{
  v2 = _MCLogObjects[2];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Sending restriction changed notification.", v4, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, MCRestrictionChangedNotification, 0, 0, 1u);
}

- (void)_sendEffectiveSettingsChangedNotification
{
  v2 = _MCLogObjects[2];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Sending effective settings changed notification.", v4, 2u);
  }

  +[MCSignpostManager willPostEffectiveSettingsChangedNotification];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, MCEffectiveSettingsChangedNotification, 0, 0, 1u);
}

- (void)checkInWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _MCLogObjects[2];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Client waiting to check in...", buf, 2u);
  }

  os_unfair_lock_lock(&self->_checkInLock);
  if (v4)
  {
    v4[2](v4, 0);
  }

  v6 = _MCLogObjects[2];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Client checked in with profiled", v7, 2u);
  }

  os_unfair_lock_unlock(&self->_checkInLock);
}

- (void)verifiedMDMProfileIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000052F0;
  block[3] = &unk_10011B800;
  v8 = v4;
  v6 = v4;
  dispatch_async(workerQueue, block);
}

- (void)popProfileDataFromHeadOfInstallationQueueWithCompletion:(id)a3
{
  v4 = a3;
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000541C;
  block[3] = &unk_10011B800;
  v8 = v4;
  v6 = v4;
  dispatch_async(workerQueue, block);
}

- (void)peekProfileDataFromPurgatoryForDeviceType:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  workerQueue = self->_workerQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005548;
  v9[3] = &unk_10011B828;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(workerQueue, v9);
}

- (void)queueProfileDataForInstallation:(id)a3 originalFileName:(id)a4 originatingBundleID:(id)a5 transitionToUI:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  workerQueue = self->_workerQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100005700;
  v21[3] = &unk_10011B878;
  v27 = a6;
  v25 = self;
  v26 = v15;
  v22 = v14;
  v23 = v12;
  v24 = v13;
  v17 = v13;
  v18 = v12;
  v19 = v15;
  v20 = v14;
  dispatch_async(workerQueue, v21);
}

- (BOOL)_isValidProvisioningProfileData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = MISProfileCreateWithData();
    if (v4)
    {
      v5 = MCGestaltGetDeviceUUID();
      v6 = +[NSDate date];
      v7 = MISProvisioningProfileCheckValidity();
      CFRelease(v4);
      LOBYTE(v4) = v7 == 0;
      if (v7)
      {
        v8 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          v10[0] = 67109120;
          v10[1] = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Profile UI installation path encountered invalid provisioning profile with MIS error: %d", v10, 8u);
        }
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)installProfileData:(id)a3 interactionClient:(id)a4 options:(id)a5 source:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-InstallProfile"];
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005D48;
  block[3] = &unk_10011B8C8;
  v26 = v12;
  v27 = v14;
  v28 = v13;
  v29 = v15;
  v31 = v17;
  v32 = v16;
  v30 = self;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v13;
  v23 = v14;
  v24 = v12;
  dispatch_async(workerQueue, block);
}

- (void)updateProfileIdentifier:(id)a3 interactionClient:(id)a4 source:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-UpdateProfileID"];
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000604C;
  block[3] = &unk_10011B8F0;
  v22 = v10;
  v23 = v11;
  v25 = v14;
  v26 = v13;
  v24 = v12;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  dispatch_async(workerQueue, block);
}

- (void)removeProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 source:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-RemoveProfile"];
  workerQueue = self->_workerQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100006238;
  v19[3] = &unk_10011B940;
  v20 = v10;
  v21 = v11;
  v24 = v12;
  v25 = a4;
  v22 = self;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(workerQueue, v19);
}

- (void)removeUninstalledProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 targetDeviceType:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-RemoveUninstalledProfile"];
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000647C;
  block[3] = &unk_10011B968;
  v21 = a4;
  v22 = a5;
  v19 = v12;
  v20 = v11;
  v18 = v10;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(workerQueue, block);
}

- (void)applyRestrictionDictionary:(id)a3 toSystem:(BOOL)a4 overrideRestrictions:(BOOL)a5 appsAndOptions:(id)a6 clientType:(id)a7 clientUUID:(id)a8 sender:(id)a9 localizedClientDescription:(id)a10 localizedWarningMessage:(id)a11 completion:(id)a12
{
  v29 = a5;
  v30 = a4;
  v31 = a12;
  v16 = a11;
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a3;
  v23 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-ApplyRestrictions"];
  v34 = 0;
  v33 = 0;
  v24 = +[MCRestrictionManagerWriter sharedManager];
  v32 = 0;
  LOBYTE(v27) = 1;
  [v24 setClientRestrictions:v22 overrideRestrictions:v29 appsAndOptions:v21 system:v30 clientType:v20 clientUUID:v19 sender:v18 localizedClientDescription:v17 localizedWarning:v16 shouldRecomputeNag:v27 outRestrictionsChanged:&v34 + 1 outEffectiveSettingsChanged:&v34 outRecomputedNag:&v33 outError:&v32];

  v25 = v32;
  [(MCProfileServiceServer *)self workerQueueDidRecomputeNagMessageWithResult:v33];
  if (HIBYTE(v34) == 1)
  {
    [(MCProfileServiceServer *)self _sendRestrictionChangedNotification];
  }

  if (v34 == 1)
  {
    [(MCProfileServiceServer *)self _sendEffectiveSettingsChangedNotification];
    v26 = v34;
  }

  else
  {
    v26 = 0;
  }

  (*(v31 + 2))(v31, HIBYTE(v34), v26 & 1, v25);
}

- (void)removeOrphanedClientRestrictionsWithCompletion:(id)a3
{
  v4 = a3;
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000067F8;
  block[3] = &unk_10011B800;
  v8 = v4;
  v6 = v4;
  dispatch_async(workerQueue, block);
}

- (void)setUserInfo:(id)a3 forClientUUID:(id)a4 sender:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v14 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-SetUserInfo"];
  v13 = +[MCRestrictionManagerWriter sharedManager];
  [v13 setUserInfo:v12 forClientUUID:v11 sender:v10];

  v9[2](v9, 0);
}

- (void)waitForMigrationIncludingPostRestoreMigration:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = [(MCProfileServiceServer *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006BDC;
  block[3] = &unk_10011B990;
  block[4] = self;
  block[5] = &v20;
  block[6] = &v16;
  dispatch_sync(v7, block);

  if (a3)
  {
LABEL_2:
    workerQueue = self->_workerQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100006C24;
    v12[3] = &unk_10011B800;
    v13 = v6;
    dispatch_async_and_wait(workerQueue, v12);

    goto LABEL_3;
  }

  if ((v21[3] & 1) == 0)
  {
    v10 = _MCLogObjects[2];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Waiting for migration.", buf, 2u);
    }

    if ((v17[3] & 1) == 0)
    {
      goto LABEL_2;
    }

    goto LABEL_13;
  }

  if (*(v17 + 24) == 1)
  {
LABEL_13:
    v11 = _MCLogObjects[2];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Waiting for activation record change to be committed.", buf, 2u);
    }

    goto LABEL_2;
  }

  v9 = _MCLogObjects[2];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Allowing client to proceed.", buf, 2u);
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }

LABEL_3:
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

- (BOOL)isOpenInRestrictionInEffect
{
  if ([(MCProfileServiceServer *)self mayOpenFromManagedToUnmanaged])
  {
    return ![(MCProfileServiceServer *)self mayOpenFromUnmanagedToManaged];
  }

  else
  {
    return 1;
  }
}

- (BOOL)mayOpenFromUnmanagedToManaged
{
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveRestrictedBoolForSetting:MCFeatureOpenFromUnmanagedToManagedAllowed] != 2;

  return v3;
}

- (BOOL)mayOpenFromManagedToUnmanaged
{
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveRestrictedBoolForSetting:MCFeatureOpenFromManagedToUnmanagedAllowed] != 2;

  return v3;
}

- (void)mayShareToWhitelistedSourceUnmanagedTargetAppWithServiceName:(id)a3 originatingAppBundleID:(id)a4 originatingAccountIsManaged:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v19 = 138543874;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    v23 = 1024;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Checking if app is allowed to share to %{public}@. App bundle ID: %{public}@, account is managed: %d.", &v19, 0x1Cu);
  }

  v14 = +[MDMManagedMediaReader attributesByAppID];
  v15 = [v14 allKeys];
  v16 = [NSSet setWithArray:v15];

  if (![(MCProfileServiceServer *)self isOpenInRestrictionInEffect]|| (MCIsAppExemptFromOpenInSourceRestrictions() & 1) != 0)
  {
    goto LABEL_5;
  }

  if (MCIsAppAccountBasedSourceForOpenIn())
  {
    if (v7)
    {
      goto LABEL_13;
    }

LABEL_5:
    v17 = 1;
    goto LABEL_6;
  }

  if (([v16 containsObject:v11] & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  v17 = [(MCProfileServiceServer *)self mayOpenFromManagedToUnmanaged];
LABEL_6:
  v18 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v19 = 67109120;
    LODWORD(v20) = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Result: %d", &v19, 8u);
  }

  v12[2](v12, v17, 0);
}

- (BOOL)shouldApplyFilterForBundleID:(id)a3 sourceAccountManagement:(int)a4 outAllowManagedAccounts:(BOOL *)a5 outAllowUnmanagedAccounts:(BOOL *)a6
{
  v10 = a3;
  if (![(MCProfileServiceServer *)self isOpenInRestrictionInEffect]|| (MCIsAppExemptFromOpenInSourceRestrictions() & 1) != 0)
  {
    goto LABEL_3;
  }

  if (!MCIsAppAccountBasedSourceForOpenIn())
  {
    v15 = +[MDMManagedMediaReader attributesByAppID];
    v16 = [v15 allKeys];
    v17 = [NSSet setWithArray:v16];

    LODWORD(v15) = [v17 containsObject:v10];
    if (v15)
    {
      goto LABEL_11;
    }

LABEL_12:
    v13 = [(MCProfileServiceServer *)self mayOpenFromUnmanagedToManaged];
    v11 = 1;
    v12 = 1;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    goto LABEL_12;
  }

  if (a4 == 2)
  {
LABEL_11:
    v12 = [(MCProfileServiceServer *)self mayOpenFromManagedToUnmanaged];
    v11 = 1;
    goto LABEL_4;
  }

LABEL_3:
  v11 = 0;
  v12 = 1;
LABEL_4:
  v13 = 1;
LABEL_5:
  *a5 = v13;
  *a6 = v12;

  return v11;
}

- (void)defaultAppBundleIDForCommunicationServiceType:(id)a3 forAccountWithIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v7 = [MCCommunicationServiceRulesUtilities defaultAppBundleIDForCommunicationServiceType:a3 forAccountWithIdentifier:a4];
  if (v8)
  {
    v8[2](v8, v7, 0);
  }
}

- (void)notifyStartComplianceTimer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-StartComplianceTimer"];
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008B68;
  block[3] = &unk_10011BB08;
  v15 = v8;
  v16 = v7;
  v14 = v6;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  dispatch_async(workerQueue, block);
}

- (void)notifyHaveSeenComplianceMessageWithLastLockDate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-HaveSeenComplianceMessage"];
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1510();
  }

  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008DE4;
  block[3] = &unk_10011BB08;
  v15 = v8;
  v16 = v7;
  v14 = v6;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  dispatch_async(workerQueue, block);
}

- (void)recomputeUserComplianceWarningWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-RecomputeUserComplianceWarning"];
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1598();
  }

  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008F84;
  block[3] = &unk_10011BB08;
  v10 = v5;
  v11 = v4;
  block[4] = self;
  v7 = v5;
  v8 = v4;
  dispatch_async(workerQueue, block);
}

- (void)recomputePerClientUserComplianceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-RecomputePerClientUserCompliance"];
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1620();
  }

  workerQueue = self->_workerQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000090C8;
  v9[3] = &unk_10011B918;
  v10 = v5;
  v11 = v4;
  v7 = v5;
  v8 = v4;
  dispatch_async(workerQueue, v9);
}

- (void)clearRecoveryPasscodeWithSenderBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-clearRecoveryPasscode"];
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009218;
  block[3] = &unk_10011BB08;
  v15 = v8;
  v16 = v7;
  v14 = v6;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  dispatch_async(workerQueue, block);
}

- (void)changePasscodeWithOldPasscodeContext:(id)a3 newPasscodeContext:(id)a4 isRecovery:(BOOL)a5 skipRecovery:(BOOL)a6 senderBundleID:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-ChangePasscode"];
  workerQueue = self->_workerQueue;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000094B0;
  v25[3] = &unk_10011BB30;
  v31 = a5;
  v26 = v16;
  v27 = v14;
  v32 = a6;
  v29 = v18;
  v30 = v17;
  v28 = v15;
  v20 = v18;
  v21 = v17;
  v22 = v15;
  v23 = v14;
  v24 = v16;
  dispatch_async(workerQueue, v25);
}

- (void)createMDMUnlockTokenIfNeededWithPasscodeContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-CreateMDMUnlockToken"];
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009838;
  block[3] = &unk_10011BB08;
  v15 = v8;
  v16 = v7;
  v14 = v6;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  dispatch_async(workerQueue, block);
}

- (void)clearPasscodeWithEscrowKeybagData:(id)a3 secretContext:(id)a4 senderBundleID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-ClearPasscode"];
  workerQueue = self->_workerQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100009A88;
  v21[3] = &unk_10011BB58;
  v22 = v12;
  v23 = v10;
  v24 = v11;
  v25 = self;
  v26 = v14;
  v27 = v13;
  v16 = v14;
  v17 = v13;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  dispatch_async(workerQueue, v21);
}

- (void)isPasscodeCompliantWithNamedPolicy:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  workerQueue = self->_workerQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100009C70;
  v11[3] = &unk_10011BB80;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(workerQueue, v11);
}

- (void)resetPasscodeMetadataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-ResetPasscodeMetadata"];
  workerQueue = self->_workerQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009DEC;
  v9[3] = &unk_10011B918;
  v10 = v5;
  v11 = v4;
  v7 = v5;
  v8 = v4;
  dispatch_async(workerQueue, v9);
}

- (void)managedSystemConfigurationServiceIDsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[(MCVPNPayloadHandlerBase *)MCNewVPNPayloadHandler];
  v3[2](v3, v4, 0);
}

- (void)managedWiFiNetworkNamesWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[MCNewWiFiPayloadHandler managedWiFiNetworkNames];
  v3[2](v3, v4, 0);
}

- (void)migrateWithContext:(int)a3 passcodeWasSetInBackup:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-MigrateWithContext"];
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A02C;
  block[3] = &unk_10011BBA8;
  v16 = a3;
  v17 = a4;
  v14 = v9;
  v15 = v8;
  v11 = v9;
  v12 = v8;
  dispatch_async_and_wait(workerQueue, block);
}

- (void)migrateCleanupMigratorWithContext:(int)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-MigrationCleanupWithContext"];
  workerQueue = self->_workerQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000A184;
  v11[3] = &unk_10011BBD0;
  v14 = a3;
  v12 = v7;
  v13 = v6;
  v11[4] = self;
  v9 = v7;
  v10 = v6;
  dispatch_async_and_wait(workerQueue, v11);
}

- (void)recomputeProfileRestrictionsWithCompletionBlock:(id)a3
{
  v3 = a3;
  v4 = +[MCInstaller sharedInstaller];
  [v4 recomputeProfileRestrictionsWithCompletionBlock:v3];
}

- (void)setParametersForSettingsByType:(id)a3 configurationUUID:(id)a4 toSystem:(BOOL)a5 user:(BOOL)a6 credentialSet:(id)a7 senderPID:(int)a8 sender:(id)a9 completion:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a9;
  v19 = a10;
  v20 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-SetParameterForSettings"];
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A434;
  block[3] = &unk_10011BBF8;
  block[4] = self;
  v30 = v15;
  v37 = a5;
  v38 = a6;
  v31 = v16;
  v32 = v17;
  v36 = a8;
  v33 = v18;
  v34 = v20;
  v35 = v19;
  v22 = v19;
  v23 = v20;
  v24 = v18;
  v25 = v17;
  v26 = v16;
  v27 = v15;
  dispatch_async(workerQueue, block);
}

- (void)removeBoolSetting:(id)a3 sender:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-RemoveBoolSetting"];
  workerQueue = self->_workerQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000A6E8;
  v17[3] = &unk_10011BC20;
  v18 = v8;
  v19 = v9;
  v20 = v11;
  v21 = v10;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(workerQueue, v17);
}

- (void)removeValueSetting:(id)a3 sender:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-RemoveValueForSetting"];
  workerQueue = self->_workerQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000A880;
  v17[3] = &unk_10011BC20;
  v18 = v8;
  v19 = v9;
  v20 = v11;
  v21 = v10;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(workerQueue, v17);
}

- (void)openSensitiveURL:(id)a3 unlock:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A9C4;
  block[3] = &unk_10011BC48;
  v16 = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(workerQueue, block);
}

- (void)removePostSetupAutoInstallSetAsideProfileWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = MCPostSetupAutoInstallSetAsideProfilePath();
  if ([v4 fileExistsAtPath:v5])
  {
    v6 = +[NSFileManager defaultManager];
    v7 = MCPostSetupAutoInstallSetAsideProfilePath();
    v11 = 0;
    v8 = [v6 removeItemAtPath:v7 error:&v11];
    v9 = v11;

    if ((v8 & 1) == 0)
    {
      v10 = _MCLogObjects[8];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to remove set aside mdm profile. Error: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {

    v9 = 0;
  }

  if (v3)
  {
    v3[2](v3, v9);
  }
}

- (void)removeSetAsideCloudConfigurationProfileWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = MCCloudConfigurationSetAsideDetailsFilePath();
  if ([v4 fileExistsAtPath:v5])
  {
    v6 = +[NSFileManager defaultManager];
    v7 = MCCloudConfigurationSetAsideDetailsFilePath();
    v11 = 0;
    v8 = [v6 removeItemAtPath:v7 error:&v11];
    v9 = v11;

    if ((v8 & 1) == 0)
    {
      v10 = _MCLogObjects[8];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to remove set aside cloud configuration. Error: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {

    v9 = 0;
  }

  if (v3)
  {
    v3[2](v3, v9);
  }
}

- (void)_handleSettingsJumpWithProfileData:(id)a3 targetDeviceType:(unint64_t)a4 bundleID:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v10 = &kMCHomeURLProfilesInstallation;
      goto LABEL_11;
    }

    if (a4 != 4)
    {
      goto LABEL_8;
    }

LABEL_7:
    v10 = &kMCSettingsURLProfilesInstallation;
    goto LABEL_11;
  }

  if (a4 == 1)
  {
    goto LABEL_7;
  }

  if (a4 == 2)
  {
    v10 = &kMCBridgeURLProfilesInstallation;
LABEL_11:
    [(MCProfileServiceServer *)self openSettingsAppForProfileInstallation:*v10 bundleID:v9];
    goto LABEL_12;
  }

LABEL_8:
  v11 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v12 = 134217984;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Profile Settings Jump is not supported for target device type: %lu", &v12, 0xCu);
  }

LABEL_12:
}

- (id)URLForInstallingProfileInSettingsApp:(id)a3 returningToBundleID:(id)a4
{
  v4 = @"com.apple.springboard";
  if (a4)
  {
    v4 = a4;
  }

  v5 = [NSString stringWithFormat:@"%@&sender=%@", a3, v4];
  v6 = [NSURL URLWithString:v5];

  return v6;
}

- (void)openSettingsAppForProfileInstallation:(id)a3 bundleID:(id)a4
{
  v4 = @"com.apple.springboard";
  if (a4)
  {
    v4 = a4;
  }

  v5 = [NSMutableString stringWithFormat:@"%@&sender=%@", a3, v4];
  v6 = [[NSURL alloc] initWithString:v5];
  v7 = +[LSApplicationWorkspace defaultWorkspace];
  v9 = MCSBSApplicationLaunchFromURLOptionUnlockDeviceKey();
  v10 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v7 openSensitiveURL:v6 withOptions:v8];

  notify_post([MCProfileWasQueuedNotification UTF8String]);
}

- (void)_workerQueueSignIntoFaceTimeWithUsername:(id)a3
{
  v3 = a3;
  v4 = _MCLogObjects[2];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beginning call into AK + AIDA to sign into Facetime on profiled's _workerQueue...", buf, 2u);
  }

  v13 = 0;
  v5 = [MCKeychain stringFromService:kMCCCDEPFastTimeService account:kMCCCDEPFastTimeAccount label:0 description:0 useSystemKeychain:0 outError:&v13];
  v6 = v13;
  if (v6)
  {
    v7 = _MCLogObjects[2];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 description];
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error trying to retrieve credential from Keychain! \n Error:  %{public}@", buf, 0xCu);
    }
  }

  v10 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [v10 setUsername:v3];
  [v10 _setPassword:v5];
  [v10 setIsUsernameEditable:0];
  [v10 setServiceType:5];
  [v10 setAppProvidedContext:@"axmft"];
  v11 = objc_alloc_init(AKAppleIDAuthenticationController);
  [v11 authenticateWithContext:v10 completion:&stru_10011BC88];
  v12 = +[MCCloudConfigurationWriter sharedInstance];
  [v12 faceTimeSignInAttemptDidFinish];
}

- (void)_workerQueueRemoveAllCarrierProfiles
{
  v3 = _MCLogObjects[2];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Removing all carrier profiles.", buf, 2u);
  }

  v4 = [(MCProfileServiceServer *)self workerQueue];
  dispatch_assert_queue_V2(v4);

  v5 = +[MCManifest sharedManifest];
  v6 = [v5 identifiersOfProfilesWithFilterFlags:2];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = +[MCInstaller sharedInstaller];
        [v13 removeProfileWithIdentifier:v12 installationType:1 source:@"Carrier Profile Removal"];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }
}

+ (id)_descriptionForServiceSubscriptionContext:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [v3 uuid];
    [v3 slotID];

    v5 = [NSString stringWithFormat:@"[%@, %s]", v4, CTSubscriptionSlotAsString()];
  }

  else
  {
    v5 = @"<nil>";
  }

  return v5;
}

- (void)_workerQueueCheckCarrierProfileForCarrierIdentifier:(id)a3 name:(id)a4 atPath:(id)a5 forceReinstallation:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(MCProfileServiceServer *)self workerQueue];
  dispatch_assert_queue_V2(v13);

  v14 = _MCLogObjects[2];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"<nil>";
    if (v12)
    {
      v15 = v12;
    }

    *buf = 138543362;
    v58 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CheckCarrierProfile: (wq) Evaluating carrier profile at path: %{public}@", buf, 0xCu);
  }

  if (v12)
  {
    v54 = v11;
    v16 = +[MCManifest sharedManifest];
    v17 = [v16 identifiersOfProfilesWithFilterFlags:2];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 lastObject];
      v20 = [MCManifest installedProfileWithIdentifier:v19];
    }

    else
    {
      v20 = 0;
    }

    v22 = +[NSFileManager defaultManager];
    v23 = [v22 fileExistsAtPath:v12];

    if (!v23)
    {
      v33 = _MCLogObjects[2];
      v26 = v20;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "CheckCarrierProfile: No configuration profile found in carrier bundle.", buf, 2u);
      }

      v11 = v54;
      if ([v18 count])
      {
        v34 = _MCLogObjects[2];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "CheckCarrierProfile: Removing carrier configuration profile.", buf, 2u);
        }

        [(MCProfileServiceServer *)self _workerQueueRemoveAllCarrierProfiles];
      }

      goto LABEL_53;
    }

    v24 = [NSData dataWithContentsOfFile:v12];
    v25 = _MCLogObjects[2];
    v26 = v20;
    v53 = v24;
    if (!v24)
    {
      v11 = v54;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "CheckCarrierProfile: Could not load configuration profile from carrier bundle.", buf, 2u);
      }

      goto LABEL_52;
    }

    v52 = v10;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "CheckCarrierProfile: Installing carrier configuration profile if needed...", buf, 2u);
    }

    v56 = 0;
    v27 = [MCProfile profileWithData:v53 outError:&v56];
    v28 = v56;
    if (!v28)
    {
      if (!a6 && v20)
      {
        v29 = [v27 identifier];
        v30 = [v20 identifier];
        if ([v29 isEqualToString:v30])
        {
          v50 = [v27 UUID];
          [v20 UUID];
          v31 = v49 = v29;
          v48 = [v50 isEqualToString:v31];

          if (v48)
          {
            v32 = _MCLogObjects[2];
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "CheckCarrierProfile: Carrier profile was already installed.", buf, 2u);
            }

            v28 = 0;
            goto LABEL_49;
          }
        }

        else
        {
        }
      }

      v51 = v20;
      [(MCProfileServiceServer *)self _workerQueueRemoveAllCarrierProfiles];
      v35 = [objc_opt_class() _optionsForCarrierProfileInstallationForCarrierIdentifier:v52 name:v54];
      v36 = +[MCInstaller sharedInstaller];
      v55 = 0;
      v37 = [v36 installProfileData:v53 options:v35 interactionClient:0 source:@"MCProfileServiceServer._workerQueueCheckCarrierProfileAtPath" outError:&v55];
      v28 = v55;

      if (!v28)
      {
        v46 = _MCLogObjects[2];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "CheckCarrierProfile: Successfully installed carrier configuration profile.", buf, 2u);
        }

        v28 = 0;
        v11 = v54;
        v26 = v51;
        goto LABEL_50;
      }

      v26 = v20;
    }

    v38 = _MCLogObjects[2];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = v38;
      v40 = [v28 MCVerboseDescription];
      *buf = 138543362;
      v58 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "CheckCarrierProfile: Error installing carrier profile: %{public}@", buf, 0xCu);
    }

    [(MCProfileServiceServer *)self _workerQueueRemoveAllCarrierProfiles];
    v27 = [v28 domain];
    v41 = MCInstallationErrorDomain;
    if ([v27 isEqual:MCInstallationErrorDomain])
    {
      v42 = [v28 code];

      if (v42 != 4001)
      {
        v26 = v20;
        v11 = v54;
LABEL_51:

        v10 = v52;
LABEL_52:

LABEL_53:
        v47 = [(MCProfileServiceServer *)self workerQueueBackgroundTaskManager];
        [v47 scheduleProfileJanitorTask];

        goto LABEL_54;
      }

      v43 = [v28 userInfo];
      v27 = [v43 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if (v27)
      {
        objc_opt_class();
        v26 = v20;
        if (objc_opt_isKindOfClass())
        {
          v44 = [v27 domain];
          v11 = v54;
          if ([v44 isEqual:v41])
          {
            v45 = [v27 code];

            if (v45 == 4009)
            {
              [(MCProfileServiceServer *)self _workerQueueForceCheckOfCarrierProfileOnNextUnlock];
            }
          }

          else
          {
          }

          goto LABEL_50;
        }
      }

      else
      {
        v26 = v20;
      }
    }

LABEL_49:
    v11 = v54;
LABEL_50:

    goto LABEL_51;
  }

  v21 = _MCLogObjects[2];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "CheckCarrierProfile: Removing all installed carrier profiles as requested.", buf, 2u);
  }

  [(MCProfileServiceServer *)self _workerQueueRemoveAllCarrierProfiles];
  v16 = [(MCProfileServiceServer *)self workerQueueBackgroundTaskManager];
  [v16 scheduleProfileJanitorTask];
LABEL_54:
}

+ (id)_optionsForCarrierProfileInstallationForCarrierIdentifier:(id)a3 name:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setValue:&off_1001270F0 forKey:kMCInstallProfileOptionFilterFlag];
  if (v5)
  {
    [v7 setValue:v5 forKey:kMCInstallProfileOptionCarrierIdentifier];
  }

  if (v6)
  {
    [v7 setValue:v6 forKey:kMCInstallProfileOptionCarrierName];
  }

  v8 = [v7 copy];

  return v8;
}

- (void)checkCarrierProfileAndForceReinstallation:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = _MCLogObjects[2];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CheckCarrierProfile: checkCarrierProfileAndForceReinstallation:completion:", buf, 2u);
  }

  coreTelephonyClient = self->_coreTelephonyClient;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000C0A0;
  v10[3] = &unk_10011BD68;
  v12 = a3;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [(CoreTelephonyClient *)coreTelephonyClient getPreferredDataSubscriptionContext:v10];
}

- (id)_carrierNameFromContext:(id)a3
{
  v4 = a3;
  v5 = [[CTBundle alloc] initWithBundleType:1];
  coreTelephonyClient = self->_coreTelephonyClient;
  v15 = 0;
  v7 = [(CoreTelephonyClient *)coreTelephonyClient copyCarrierBundleValue:v4 key:@"CarrierName" bundleType:v5 error:&v15];

  v8 = v15;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      goto LABEL_9;
    }

    v13 = _MCLogObjects[2];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "CheckCarrierProfile: Returned carrier name is not a string.", buf, 2u);
    }
  }

  else
  {
    v10 = _MCLogObjects[2];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = [v8 MCVerboseDescription];
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "CheckCarrierProfile: Could not get carrier name: %{public}@", buf, 0xCu);
    }
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (void)_workerQueueForceCheckOfCarrierProfileOnNextUnlock
{
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CheckCarrierProfile: Forcing check of carrier profile on next unlock.", v5, 2u);
  }

  v4 = [(MCProfileServiceServer *)self workerQueue];
  dispatch_assert_queue_V2(v4);

  [(MCProfileServiceServer *)self setWorkerQueueLastCarrierProfileCheckTime:0];
}

- (void)_workerQueueCheckCarrierProfileOnUnlockSometimes
{
  v4 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CheckCarrierProfile: Device was unlocked, determining if we should check.", buf, 2u);
  }

  v5 = [(MCProfileServiceServer *)self workerQueue];
  dispatch_assert_queue_V2(v5);

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10000CE18;
  v17 = &unk_10011BD90;
  v18 = self;
  v19 = a2;
  if (qword_100136A78 != -1)
  {
    dispatch_once(&qword_100136A78, &v14);
  }

  v6 = mach_continuous_time();
  if (![(MCProfileServiceServer *)self workerQueueLastCarrierProfileCheckTime:v14])
  {
    v12 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CheckCarrierProfile: Device was unlocked, never checked before, will check.", buf, 2u);
    }

    goto LABEL_17;
  }

  v7 = [(MCProfileServiceServer *)self workerQueueLastCarrierProfileCheckTime];
  if (byte_100136A70)
  {
    v8 = 86400;
  }

  else
  {
    v8 = 0;
  }

  v9 = _MCLogObjects[0];
  v10 = (v6 - v7) * dword_100136A60 / qword_100136A68;
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"will not";
    if (v10 > v8)
    {
      v11 = @"will";
    }

    *buf = 134218242;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CheckCarrierProfile: Device was unlocked, %qu seconds since last check, %@ check", buf, 0x16u);
  }

  if (v10 > v8)
  {
LABEL_17:
    v13 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CheckCarrierProfile: Device was unlocked, checking carrier profile.", buf, 2u);
    }

    [(MCProfileServiceServer *)self setWorkerQueueLastCarrierProfileCheckTime:v6];
    [(MCProfileServiceServer *)self checkCarrierProfileAndForceReinstallation:0 completion:&stru_10011BDB0];
  }
}

- (void)workerQueueReadBiometricState
{
  v7 = 0;
  sub_100054F48(&v7, 0);
  v2 = v7;
  if (v2)
  {
    v3 = +[MCRestrictionManagerWriter sharedManager];
    v4 = [v2 BOOLValue];
    [v3 setBoolValue:v4 forSetting:MCFeatureFingerprintUnlockAllowed sender:@"MCProfileServiceServer.workerQueueReadBiometricState"];
  }

  else
  {
    v5 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Fingerprint unlock state is not available yet. Ignoring.", v6, 2u);
    }
  }
}

- (void)workerQueueNotifyDeviceUnlockedAndPasscodeRequired
{
  [(MCProfileServiceServer *)self workerQueueRecomputeNagMessage];

  [(MCProfileServiceServer *)self workerQueueCheckForAutoInstallProfiles];
}

- (void)notifyDeviceUnlockedAndPasscodeRequiredWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "notifyDeviceUnlockedAndPasscodeRequiredWithCompletion:", buf, 2u);
  }

  workerQueue = self->_workerQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000D0D8;
  v8[3] = &unk_10011BB80;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(workerQueue, v8);
}

- (void)notifyDeviceUnlockedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "notifyDeviceUnlockedWithCompletion:", buf, 2u);
  }

  workerQueue = self->_workerQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000D218;
  v8[3] = &unk_10011BB80;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(workerQueue, v8);
}

- (void)notifyFirstUnlock
{
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D2E4;
  block[3] = &unk_10011B688;
  block[4] = self;
  dispatch_async(workerQueue, block);
}

- (void)notifyProvisioningProfilesChanged
{
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D3F4;
  block[3] = &unk_10011B688;
  block[4] = self;
  dispatch_async(workerQueue, block);
}

- (BOOL)_hasCompletedPostLoginWork
{
  v2 = sem_open("profiled.firstboot_check", 0);
  v3 = v2;
  if (v2 != -1)
  {
    sem_close(v2);
  }

  return v3 != -1;
}

- (void)_markPostUserLoginWorkCompleted
{
  v2 = sem_open("profiled.firstboot_check", 512, 256, 0);
  if (v2 == -1)
  {
    v3 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = __error();
      v6 = strerror(*v5);
      *buf = 136446466;
      v8 = "profiled.firstboot_check";
      v9 = 2082;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to create semaphore %{public}s: %{public}s", buf, 0x16u);
    }
  }

  else
  {

    sem_close(v2);
  }
}

- (void)notifyUserLoggedIn
{
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D6DC;
  block[3] = &unk_10011B688;
  block[4] = self;
  dispatch_async(workerQueue, block);
}

- (void)workerQueueNotifyUserLoggedIn
{
  if (+[DMCMultiUserModeUtilities isSharediPad]&& ![(MCProfileServiceServer *)self _hasCompletedPostLoginWork])
  {
    v3 = +[MCInstaller sharedInstaller];
    v4 = [v3 verifiedMDMProfileIdentifierWithCleanUp];

    v5 = +[MDMClient sharedClient];
    [v5 scheduleTokenUpdateIfNecessary];

    v6 = +[MDMUserClient sharedClient];
    [v6 scheduleTokenUpdate];

    v7 = +[MDMUserClient sharedClient];
    [v7 simulatePush];

    [(MCProfileServiceServer *)self _markPostUserLoginWorkCompleted];
  }

  v8 = [(MCProfileServiceServer *)self workerQueueBackgroundTaskManager];
  [v8 scheduleProfileJanitorTask];
}

- (void)notifyMementoEffaced
{
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received memento effaced notification. Clearing related opaque data.", buf, 2u);
  }

  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D894;
  block[3] = &unk_10011B688;
  block[4] = self;
  dispatch_async(workerQueue, block);
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D93C;
  block[3] = &unk_10011B688;
  v8 = v4;
  v6 = v4;
  dispatch_async(workerQueue, block);
}

- (void)storeCertificateData:(id)a3 forIPCUIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-StoreCertificate"];
  workerQueue = self->_workerQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000DC4C;
  v17[3] = &unk_10011BC20;
  v18 = v8;
  v19 = v9;
  v20 = v11;
  v21 = v10;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(workerQueue, v17);
}

- (id)_badProvisioningProfileError
{
  v2 = MCProvisioningProfileErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:25000 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (id)_localProvisioningProfileError
{
  v2 = MCProvisioningProfileErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:25004 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (void)installProvisioningProfileData:(id)a3 managingProfileIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-InstallProvisioningProfile"];
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DF7C;
  block[3] = &unk_10011B8F0;
  v18 = v8;
  v19 = self;
  v21 = v11;
  v22 = v10;
  v20 = v9;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(workerQueue, block);
}

- (void)removeProvisioningProfileWithUUID:(id)a3 managingProfileIdentifier:(id)a4 sender:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-RemoveProvisioningProfile"];
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E36C;
  block[3] = &unk_10011B8F0;
  v22 = v10;
  v23 = v12;
  v25 = v14;
  v26 = v13;
  v24 = v11;
  v16 = v14;
  v17 = v13;
  v18 = v11;
  v19 = v12;
  v20 = v10;
  dispatch_async(workerQueue, block);
}

- (void)trustedCodeSigningIdentitiesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[MDMProvisioningProfileTrust allTrustedSignerIdentities];
  (*(a3 + 2))(v4, v5, 0);
}

- (void)syncTrustedCodeSigningIdentitiesWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[MCProvisioningProfileJanitor sharedJanitor];
  [v4 updateMISTrustAndValidateApps:0 validateManagedApps:0 completion:v3];
}

- (void)provisiongProfileUUIDsForSignerIdentity:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [MDMProvisioningProfileTrust provisioningProfileUUIDsForSignerIdentity:a3];
  (*(a4 + 2))(v6, v7, 0);
}

- (void)signerIdentityForBundleID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [MDMProvisioningProfileTrust appSignerIdentityForBundleID:a3];
  (*(a4 + 2))(v6, v7, 0);
}

- (BOOL)isBundleBlocked:(id)a3 outHash:(id *)a4 outHashType:(id *)a5
{
  v6 = a3;
  if (v6)
  {
    v7 = MISQueryBlacklistForBundle();
    v8 = _MCLogObjects[2];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v11 = v6;
      v12 = 1026;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MCProfileServiceServer asked MIS if bundle '%{public}@' is blocked: %{public}d", buf, 0x12u);
    }

    if (a5)
    {
      *a5 = [NSNumber numberWithInt:?];
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)removeExpiredProfilesWithCompletion:(id)a3
{
  v4 = a3;
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E9BC;
  block[3] = &unk_10011B688;
  block[4] = self;
  dispatch_async(workerQueue, block);
  if (v4)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000EA18;
    v7[3] = &unk_10011B800;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

- (void)storeProfileData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MCLogObjects[2];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Forgetting post-setup profile.", buf, 2u);
    }

    v14 = +[NSFileManager defaultManager];
    v15 = MCPostSetupAutoInstallProfilePathNF();
    [v14 removeItemAtPath:v15 error:0];

    v16 = +[NSFileManager defaultManager];
    v17 = MCPostSetupAutoInstallSetAsideProfilePath();
    [v16 removeItemAtPath:v17 error:0];

    v11 = 0;
    if (v7)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remembering post-setup profile.", buf, 2u);
  }

  v10 = MCPostSetupAutoInstallProfilePathNF();
  v25 = 0;
  [v6 writeToFile:v10 options:0 error:&v25];
  v11 = v25;

  if (v11)
  {
    v12 = _MCLogObjects[2];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 138543362;
    v27 = v11;
    v13 = "Failed to store profile data with error: %{public}@";
    goto LABEL_14;
  }

  v18 = MCPostSetupAutoInstallSetAsideProfilePath();
  v24 = 0;
  [v6 writeToFile:v18 options:0 error:&v24];
  v11 = v24;

  if (!v11)
  {
    v19 = MCPostSetupAutoInstallSetAsideProfilePath();
    MCSetSkipBackupAttributeToItemAtPath();

    v20 = +[MDMCloudConfiguration sharedConfiguration];
    v21 = [v20 details];
    v22 = [v21 mutableCopy];

    v23 = 0;
    [(MCProfileServiceServer *)self storeCloudConfigurationDetails:v22 outError:&v23];
    v11 = v23;

    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v12 = _MCLogObjects[2];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v27 = v11;
    v13 = "Failed to store set aside profile data with error: %{public}@";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
  }

LABEL_15:
  if (v7)
  {
LABEL_16:
    v7[2](v7, v11);
  }

LABEL_17:
}

- (void)storedProfileDataWithCompletion:(id)a3
{
  v8 = a3;
  v3 = +[NSFileManager defaultManager];
  v4 = MCPostSetupAutoInstallProfilePathNF();
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = MCPostSetupAutoInstallProfilePathNF();
    v7 = [NSData dataWithContentsOfFile:v6];
  }

  else
  {
    v7 = 0;
  }

  v8[2](v8, v7, 0);
}

- (void)markStoredProfileAsInstalledWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MCCloudConfigurationDetailsFilePath();
  v6 = [NSMutableDictionary dictionaryWithContentsOfFile:v5];

  if (v6)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:kCCPostSetupProfileWasInstalledKey];
    v8 = 0;
    [(MCProfileServiceServer *)self storeCloudConfigurationDetails:v6 outError:&v8];
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  v4[2](v4, v7);
}

- (void)resetAllSettingsToDefaultsIsUserInitiated:(BOOL)a3 sender:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-ResetSettingsToDefault"];
  workerQueue = self->_workerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000EFB4;
  v15[3] = &unk_10011BE18;
  v19 = a3;
  v17 = v10;
  v18 = v9;
  v16 = v8;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(workerQueue, v15);
}

- (void)rereadManagedAppAttributesWithCompletion:(id)a3
{
  v4 = a3;
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F0F4;
  block[3] = &unk_10011B800;
  v8 = v4;
  v6 = v4;
  dispatch_async(workerQueue, block);
}

- (void)fetchConfigurationWithCompletionBlock:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1, 0, 0);
  }
}

- (void)reducedMachineInfoDataWithCompletion:(id)a3
{
  v6 = @"PRODUCT";
  v7 = @"VERSION";
  v8 = @"LANGUAGE";
  v9 = @"OS_VERSION";
  v10 = @"SUPPLEMENTAL_BUILD_VERSION";
  v11 = @"SUPPLEMENTAL_OS_VERSION_EXTRA";
  v12 = @"SOFTWARE_UPDATE_DEVICE_ID";
  v3 = a3;
  v4 = [NSArray arrayWithObjects:&v6 count:7];
  v5 = [MCMachineInfo machineInfoWithKeys:v4 outError:0, v6, v7, v8, v9, v10, v11, v12];
  v3[2](v3, v5, 0);
}

- (id)cloudConfigurationMachineInfoDataWithAdditionalInfo:(id)a3
{
  v7 = @"UDID";
  v8 = @"SERIAL";
  v9 = @"PRODUCT";
  v10 = @"VERSION";
  v11 = @"IMEI";
  v12 = @"MEID";
  v13 = @"LANGUAGE";
  v14 = @"OS_VERSION";
  v15 = @"SUPPLEMENTAL_BUILD_VERSION";
  v16 = @"SUPPLEMENTAL_OS_VERSION_EXTRA";
  v17 = @"SOFTWARE_UPDATE_DEVICE_ID";
  v3 = a3;
  v4 = [NSArray arrayWithObjects:&v7 count:11];
  v5 = [MCMachineInfo machineInfoWithKeys:v4 challenge:0 identity:0 additionalInfo:v3 outError:0, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17];

  return v5;
}

- (void)cloudConfigurationMachineInfoDataWithAdditionalInfo:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(MCProfileServiceServer *)self cloudConfigurationMachineInfoDataWithAdditionalInfo:a3];
  v6[2](v6, v7, 0);
}

- (BOOL)storeCloudConfigurationDetails:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = +[MCCloudConfigurationWriter sharedInstance];
  LOBYTE(a4) = [v6 saveCloudConfigurationDetails:v5 outError:a4];

  return a4;
}

- (void)cloudConfigurationStoreDetails:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-CloudConfigStoreDetails"];
  v18 = 0;
  [(MCProfileServiceServer *)self storeCloudConfigurationDetails:v7 outError:&v18];

  v9 = v18;
  v10 = dispatch_get_global_queue(0, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000F65C;
  v14[3] = &unk_10011BAE0;
  v16 = v8;
  v17 = v6;
  v15 = v9;
  v11 = v8;
  v12 = v9;
  v13 = v6;
  dispatch_async(v10, v14);
}

- (void)cloudConfigurationStoreDetailsForPendingMigration:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-CloudConfigStoreDetailsForMigration"];
  v8 = +[MCCloudConfigurationWriter sharedInstance];
  v18 = 0;
  [v8 saveCloudConfigurationDetailsForPendingMigration:v6 outError:&v18];

  v9 = v18;
  v10 = dispatch_get_global_queue(0, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000F7C0;
  v14[3] = &unk_10011BAE0;
  v16 = v7;
  v17 = v5;
  v15 = v9;
  v11 = v7;
  v12 = v9;
  v13 = v5;
  dispatch_async(v10, v14);
}

- (void)restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _MCLogObjects[2];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Restoring cloud config & mdm profile from set aside data...", buf, 2u);
  }

  v5 = +[NSFileManager defaultManager];
  v6 = MDMCloudConfigurationSetAsideDetailsFilePath();
  if (([v5 fileExistsAtPath:v6] & 1) == 0)
  {

    goto LABEL_11;
  }

  v7 = MDMCloudConfigurationDetailsFilePath();
  v8 = [v5 fileExistsAtPath:v7];

  if (v8)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v9 = _MCLogObjects[2];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Restoring set aside cloud config...", buf, 2u);
  }

  v10 = MDMCloudConfigurationSetAsideDetailsFilePath();
  v11 = MDMCloudConfigurationDetailsFilePath();
  DMCSafelyCopyItemAtPathToDestinationPathFM();
  v12 = 0;

  if (!v12)
  {
    v14 = 1;
LABEL_12:
    v15 = MDMPostSetupAutoInstallSetAsideProfilePath();
    if ([v5 fileExistsAtPath:v15])
    {
      v16 = MDMPostSetupAutoInstallProfilePath();
      v17 = [v5 fileExistsAtPath:v16];

      if (v17)
      {
        v12 = 0;
        if (!v14)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v18 = _MCLogObjects[2];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Restoring set aside mdm profile...", buf, 2u);
      }

      v19 = MDMPostSetupAutoInstallSetAsideProfilePath();
      v20 = MDMPostSetupAutoInstallProfilePath();
      DMCSafelyCopyItemAtPathToDestinationPathFM();
      v12 = 0;

      if (!v12)
      {
        goto LABEL_24;
      }

      v21 = _MCLogObjects[2];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to restore set aside mdm profile", buf, 2u);
      }
    }

    else
    {

      v12 = 0;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    MCSendCloudConfigurationDetailsChangedNotification();
    goto LABEL_25;
  }

  v13 = _MCLogObjects[2];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to restore set aside cloud config", buf, 2u);
  }

LABEL_25:
  if (v3)
  {
    v3[2](v3, v12);
  }
}

- (void)createActivationLockBypassCodeWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-CreateActivationLockBypass"];
  v5 = +[MDMCloudConfiguration sharedConfiguration];
  v6 = [v5 isSupervised];

  if (v6)
  {
    v7 = +[MCCrypto createAndStoreNewActivationLockBypassCodeAndHashIfNeeded];
  }

  v10 = 0;
  v8 = [MCCrypto storedActivationLockBypassCodeWithOutError:&v10];
  v9 = v10;
  if (v3)
  {
    v3[2](v3, v8, v9);
  }
}

- (void)storeActivationRecord:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-StoreActivationRecord"];
  v9 = [v7 objectForKeyedSubscript:kDMCActivationRecordDeviceFlagsKey];

  v10 = [DMCFeatureOverrides activationRecordFlagsWithFlags:v9];

  if (v10)
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [v10 intValue];
      v12 = &kCFBooleanTrue;
      if ((v11 & 1) == 0)
      {
        v12 = &kCFBooleanFalse;
      }

      v13 = kMCNotBackedUpPreferencesDomain;
      CFPreferencesSetAppValue(kMCPreferencesLockdownActivationIndicatesCloudConfigurationAvailableKey, *v12, kMCNotBackedUpPreferencesDomain);
      CFPreferencesSetAppValue(kMCPreferencesLockdownCloudConfigurationAvailableKey, 0, v13);
      v14 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Wait for preferences to flush its caches", buf, 2u);
      }

      _CFPreferencesFlushCachesForIdentifier();
      v15 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Saved activation configuration.", buf, 2u);
      }

      v16 = [(MCProfileServiceServer *)self memberQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000FF98;
      block[3] = &unk_10011B688;
      block[4] = self;
      dispatch_barrier_async(v16, block);

      workerQueue = self->_workerQueue;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10000FFA4;
      v23[3] = &unk_10011B798;
      v23[4] = self;
      v24 = v8;
      dispatch_async(workerQueue, v23);

      goto LABEL_16;
    }

    v18 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "The activation record configuration flags entry is invalid.", buf, 2u);
    }
  }

  v19 = kMCNotBackedUpPreferencesDomain;
  v20 = kMCPreferencesMobileUserName;
  CFPreferencesSetValue(kMCPreferencesLockdownActivationIndicatesCloudConfigurationAvailableKey, kCFBooleanFalse, kMCNotBackedUpPreferencesDomain, kMCPreferencesMobileUserName, kCFPreferencesCurrentHost);
  CFPreferencesSetValue(kMCPreferencesLockdownCloudConfigurationAvailableKey, kCFBooleanFalse, v19, v20, kCFPreferencesCurrentHost);
  v21 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Wait for preferences to flush its caches", buf, 2u);
  }

  _CFPreferencesFlushCachesForIdentifier();
  v22 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No activation configuration was received.", buf, 2u);
  }

LABEL_16:
  MCSendActivationRecordStoredNotification();
  v6[2](v6, 0);
}

- (void)setURLsFromUserBookmarkDictsAsSettings:(id)a3 sender:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableDictionary dictionary];
  v8 = +[NSMutableDictionary dictionary];
  [v7 setObject:v8 forKeyedSubscript:MCIntersectionKey];
  v9 = +[NSMutableDictionary dictionary];
  [v8 setObject:v9 forKeyedSubscript:MCFeatureWebContentFilterWhitelistedURLs];
  if (v5)
  {
    v20 = v6;
    v10 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v5 count]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v5;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      v15 = kMCWCFAddressKey;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = [*(*(&v22 + 1) + 8 * v16) objectForKeyedSubscript:v15];
          if (v17)
          {
            [v10 addObject:v17];
          }

          v16 = v16 + 1;
        }

        while (v13 != v16);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    v18 = [v10 allObjects];
    [v9 setObject:v18 forKeyedSubscript:MCSettingParameterValuesKey];

    v6 = v20;
    v5 = v21;
  }

  v19 = +[MCRestrictionManagerWriter sharedManager];
  [v19 setParametersForSettingsByType:v7 sender:v6];
}

- (id)bookmarksFromBookmarkDicts:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [MCBookmark alloc];
          v13 = [v12 initWithSerializableDictionary:{v11, v15}];
          if (v13)
          {
            [v5 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)bookmarkDictsFromBookmarks:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * i) serializableDictionary];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)validateAppBundleIDs:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MCProvisioningProfileJanitor sharedJanitor];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010758;
  v9[3] = &unk_10011BE40;
  v10 = v5;
  v8 = v5;
  [v7 updateMISTrustAndValidateApps:v6 validateManagedApps:1 completion:v9];
}

- (void)monitorEnrollmentStateForClient:(id)a3 personaID:(id)a4
{
  v6 = a3;
  v7 = a4;
  monitorQueue = self->_monitorQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100010830;
  v11[3] = &unk_10011B798;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(monitorQueue, v11);
}

- (void)managingOrganizationInformationWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[MDMConfiguration sharedConfiguration];
  [v4 refreshDetailsFromDisk];
  v5 = [v4 organizationInfo];
  if (v5)
  {
    v6 = v5;
    goto LABEL_3;
  }

  v7 = +[MDMCloudConfiguration sharedConfiguration];
  v8 = [v7 details];

  v9 = kCCOrganizationNameKey;
  v10 = [v8 objectForKeyedSubscript:kCCOrganizationNameKey];

  if (v10)
  {
    v6 = +[NSMutableDictionary dictionary];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v28 = v9;
    v37[0] = v9;
    v37[1] = kCCOrganizationShortNameKey;
    v37[2] = kCCOrganizationDepartmentKey;
    v37[3] = kCCOrganizationAddressKey;
    v37[4] = kCCOrganizationAddressLine1Key;
    v37[5] = kCCOrganizationAddressLine2Key;
    v37[6] = kCCOrganizationAddressLine3Key;
    v37[7] = kCCOrganizationCityKey;
    v37[8] = kCCOrganizationRegionKey;
    v37[9] = kCCOrganizationZipCodeKey;
    v37[10] = kCCOrganizationCountryKey;
    v37[11] = kCCOrganizationPhoneKey;
    v37[12] = kCCOrganizationEmailKey;
    v37[13] = kCCOrganizationSupportPhoneKey;
    v37[14] = kCCOrganizationSupportEmailKey;
    v11 = [NSArray arrayWithObjects:v37 count:15];
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v17 = [v8 objectForKeyedSubscript:v16];

          if (v17)
          {
            v18 = [v8 objectForKeyedSubscript:v16];
            [v6 setObject:v18 forKeyedSubscript:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v13);
    }

    v9 = v28;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  v19 = +[MCManifest sharedManifest];
  v20 = [v4 managingProfileIdentifier];
  v21 = [v19 installedProfileWithIdentifier:v20];

  v22 = [v21 organization];

  if (v22)
  {
    v35 = v9;
    v23 = [v21 organization];
    v36 = v23;
    v6 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  v24 = [v4 serverURL];
  v25 = [v24 host];

  if (v25)
  {
    v33 = v9;
    v26 = [v4 serverURL];
    v27 = [v26 host];
    v34 = v27;
    v6 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  }

  else
  {
    v6 = 0;
  }

LABEL_3:
  v3[2](v3, v6, 0);
}

- (void)unstageMDMEnrollmentInfoForPairingWatchWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 unstageMDMEnrollmentInfoForPairingWatchWithCompletion:v3];
}

- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion:v3];
}

- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:v6 completion:v5];
}

- (void)fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion:v3];
}

- (void)applyPairingWatchMDMEnrollmentData:(id)a3 source:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = objc_opt_new();
  v11 = +[MDMCloudConfiguration sharedConfiguration];
  v12 = +[MCCloudConfigurationWriter sharedInstance];
  [v13 applyPairingWatchMDMEnrollmentData:v10 source:v9 usingProfileInstaller:self cloudConfigReader:v11 cloudConfigWriter:v12 completion:v8];
}

- (void)updateMDMEnrollmentInfoForPairingWatch:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 updateMDMEnrollmentInfoForPairingWatch:v6 completion:v5];
}

- (void)effectiveBoolValueForWatchSetting:(id)a3 pairingID:(id)a4 pairingDataStore:(id)a5 completion:(id)a6
{
  v16 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = +[MCWatchSettingsMirror sharedMirror];
  v13 = [v12 effectiveBoolValueForSetting:v11 pairingID:v10 pairingDataStore:v9];

  if (v16)
  {
    v14 = &__kCFBooleanTrue;
    if (v13 != 1)
    {
      v14 = 0;
    }

    if (v13 == 2)
    {
      v15 = &__kCFBooleanFalse;
    }

    else
    {
      v15 = v14;
    }

    v16[2](v16, v15, 0);
  }
}

- (void)effectiveValueForWatchSetting:(id)a3 pairingID:(id)a4 pairingDataStore:(id)a5 completion:(id)a6
{
  v14 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = +[MCWatchSettingsMirror sharedMirror];
  v13 = [v12 effectiveValueForSetting:v11 pairingID:v10 pairingDataStore:v9];

  if (v14)
  {
    v14[2](v14, v13, 0);
  }
}

- (void)effectiveValuesForWatchIntersectionSetting:(id)a3 pairingID:(id)a4 pairingDataStore:(id)a5 completion:(id)a6
{
  v14 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = +[MCWatchSettingsMirror sharedMirror];
  v13 = [v12 effectiveIntersectionValuesForSetting:v11 pairingID:v10 pairingDataStore:v9];

  if (v14)
  {
    v14[2](v14, v13, 0);
  }
}

- (void)effectiveValuesForWatchUnionSetting:(id)a3 pairingID:(id)a4 pairingDataStore:(id)a5 completion:(id)a6
{
  v14 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = +[MCWatchSettingsMirror sharedMirror];
  v13 = [v12 effectiveUnionValuesForSetting:v11 pairingID:v10 pairingDataStore:v9];

  if (v14)
  {
    v14[2](v14, v13, 0);
  }
}

- (void)_debug_scheduleBackgroundTask:(id)a3 interval:(double)a4 tolerance:(double)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-DebugScheduleBackgroundTask"];
  workerQueue = self->_workerQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100011494;
  v17[3] = &unk_10011BE68;
  v17[4] = self;
  v18 = v10;
  v21 = a4;
  v22 = a5;
  v19 = v12;
  v20 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(workerQueue, v17);
}

@end