@interface MSDDemoUpdateController
+ (id)sharedInstance;
- (BOOL)PLHasCompletedMomentAnalysis;
- (BOOL)PLHasCompletedRestorePostProcessing;
- (BOOL)_kickOffContentUpdateForManifest:(id)manifest withOptions:(id)options error:(id *)error;
- (BOOL)_signedManifestMinimumOSVersionCheck:(id)check error:(id *)error;
- (BOOL)continueToContinuityLinking;
- (BOOL)continueToUpdateAccountContent;
- (BOOL)continueToUpdateAssets;
- (BOOL)continueToUpdateDemoContent;
- (BOOL)continueToUpdateOSPreferences;
- (BOOL)enrollForDeviceName:(id)name pairingCredential:(id)credential hubHostName:(id)hostName hubPort:(id)port error:(id *)error;
- (BOOL)enrolled;
- (BOOL)installCachedContentForCurrentLocale:(BOOL *)locale;
- (BOOL)setupAccounts:(id *)accounts;
- (BOOL)setupContinuityLinking:(id *)linking;
- (BOOL)updateDemoContent;
- (MSDDemoUpdateController)init;
- (id)_contentPlistPathForManifest:(id)manifest;
- (id)_selectCachedManifestWithError:(id *)error;
- (void)_configureMailAppForDemo;
- (void)_stageContentPlistForManifest:(id)manifest;
- (void)cancelDemoContentUpdate;
- (void)checkWithTimeKeeper:(id)keeper;
- (void)concludeDemoContenUpdateWithResult:(BOOL)result andError:(id)error;
- (void)getDemoUpdateInProgress:(BOOL *)progress operationAllowed:(BOOL *)allowed;
- (void)setAutomatedDeviceGroupStoreID;
@end

@implementation MSDDemoUpdateController

+ (id)sharedInstance
{
  if (qword_1001A5960 != -1)
  {
    sub_1000DF2C4();
  }

  v3 = qword_1001A5958;

  return v3;
}

- (MSDDemoUpdateController)init
{
  v6.receiver = self;
  v6.super_class = MSDDemoUpdateController;
  v2 = [(MSDDemoUpdateController *)&v6 init];
  if (v2)
  {
    v3 = +[MSDTargetDevice sharedInstance];
    [(MSDDemoUpdateController *)v2 setDevice:v3];

    v4 = +[MSDHelperAgent sharedInstance];
    [(MSDDemoUpdateController *)v2 setHelperAgent:v4];
  }

  return v2;
}

- (void)getDemoUpdateInProgress:(BOOL *)progress operationAllowed:(BOOL *)allowed
{
  *progress = 1;
  *allowed = 0;
  device = [(MSDDemoUpdateController *)self device];
  mode = [device mode];

  if (mode <= 5 && ((1 << mode) & 0x27) != 0)
  {
    *allowed = 1;
    if (![(MSDDemoUpdateController *)self busy])
    {
      *progress = 0;
    }
  }
}

- (BOOL)enrollForDeviceName:(id)name pairingCredential:(id)credential hubHostName:(id)hostName hubPort:(id)port error:(id *)error
{
  nameCopy = name;
  credentialCopy = credential;
  hostNameCopy = hostName;
  portCopy = port;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v60 = +[MSDProgressUpdater sharedInstance];
  v56 = credentialCopy;
  v57 = nameCopy;
  v59 = +[MSDServerRequestHandler sharedInstance];
  if ([(MSDDemoUpdateController *)selfCopy busy])
  {
    v55 = sub_100063A54();
    sub_1000DF394(v55);
    v32 = 0;
    v58 = 0;
    v16 = 0;
    v20 = 0;
    setDemoDeviceFlag = 0;
    goto LABEL_26;
  }

  [(MSDDemoUpdateController *)selfCopy setBusy:1];
  [v60 updateStage:1];
  v16 = objc_alloc_init(MSDEnrollRequest);
  device = [(MSDDemoUpdateController *)selfCopy device];
  getRegistrationInfoKeys = [(MSDEnrollRequest *)v16 getRegistrationInfoKeys];
  v19 = [device deviceInformation:getRegistrationInfoKeys];
  v20 = [v19 mutableCopy];

  v21 = +[MSDNPIMaskValues sharedInstance];
  LODWORD(getRegistrationInfoKeys) = [v21 isNPIDevice];

  if (getRegistrationInfoKeys)
  {
    v22 = &off_10017B200;
  }

  else
  {
    v22 = &off_10017B218;
  }

  [v20 setObject:v22 forKeyedSubscript:@"MSDDemoPingType"];
  v23 = [NSDictionary dictionaryWithDictionary:v20];
  [(MSDEnrollRequest *)v16 setRegistrationInfo:v23];

  if (hostNameCopy && portCopy)
  {
    [(MSDCommandServerRequest *)v16 setServer:hostNameCopy];
    [(MSDCommandServerRequest *)v16 setPort:portCopy];
  }

  v58 = [v59 handleRequestSync:v16];
  error = [v58 error];

  if (error)
  {
    v32 = 0;
    goto LABEL_29;
  }

  device2 = [(MSDDemoUpdateController *)selfCopy device];
  [device2 setHubHostName:hostNameCopy];

  device3 = [(MSDDemoUpdateController *)selfCopy device];
  [device3 setHubPort:portCopy];

  device4 = [(MSDDemoUpdateController *)selfCopy device];
  v28 = +[NSDate date];
  [v28 timeIntervalSinceReferenceDate];
  [device4 saveHubLastOnlineTime:v29];

  device5 = [(MSDDemoUpdateController *)selfCopy device];
  [device5 holdPowerAssertion];

  +[MSDBundleProgressTracker migratePreferencesFromFactoryDevicesIfNeeded];
  [v60 loadBundles];
  device6 = [(MSDDemoUpdateController *)selfCopy device];
  LODWORD(v28) = [device6 isBetterTogetherDemo];

  if (v28)
  {
    v32 = +[MSDPairedWatchProxy sharedInstance];
    [v32 bootstrap];
  }

  else
  {
    v32 = 0;
  }

  device7 = [(MSDDemoUpdateController *)selfCopy device];
  setDemoDeviceFlag = [device7 setDemoDeviceFlag];

  if (setDemoDeviceFlag)
  {
    device8 = [(MSDDemoUpdateController *)selfCopy device];
    [device8 setupWorkFolderForBootTask];

    v36 = +[MSDCryptoHandler sharedInstance];
    [v36 createSecretKeyIfNeeded];

    device9 = [(MSDDemoUpdateController *)selfCopy device];
    turnOnDemoMode = [device9 turnOnDemoMode];

    if (turnOnDemoMode)
    {
      device10 = [(MSDDemoUpdateController *)selfCopy device];
      [device10 configureGreyMatterAutoUpdate];

      v40 = +[MSDAnalytics sharedInstance];
      [v40 disableCoreAnalticsTransformSampling];

      device11 = [(MSDDemoUpdateController *)selfCopy device];
      isPressDemoDevice = [device11 isPressDemoDevice];

      if ((isPressDemoDevice & 1) == 0)
      {
        v43 = +[MSDConfigurationProfileManager sharedInstance];
        [v43 installDefaultConfigurationProfile];
      }

      device12 = [(MSDDemoUpdateController *)selfCopy device];
      [device12 setWaitingForCommand:1];

      v45 = +[MSDMailProcessor sharedInstance];
      [v45 setWaitingForCommand:1];

      device13 = [(MSDDemoUpdateController *)selfCopy device];
      v47 = [device13 switchModeImmediately:1];

      if (v47)
      {
        v48 = sub_100063A54();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Starting mail processor after enrolling.", buf, 2u);
        }

        v49 = +[MSDMailProcessor sharedInstance];
        [v49 start];

        v50 = sub_100063A54();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Starting mail processor ended", buf, 2u);
        }

        device14 = [(MSDDemoUpdateController *)selfCopy device];
        [device14 terminateConfigurationApp];

        v52 = sub_100063A54();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "terminateConfigurationApp ended", buf, 2u);
        }

        device15 = [(MSDDemoUpdateController *)selfCopy device];
        [device15 deleteConfigurationApp];

        sub_100063A54();
        objc_claimAutoreleasedReturnValue();
        sub_1000DF334();
        goto LABEL_24;
      }
    }

LABEL_29:
    setDemoDeviceFlag = 0;
    goto LABEL_25;
  }

  sub_100063A54();
  objc_claimAutoreleasedReturnValue();
  sub_1000DF2D8();
LABEL_24:

LABEL_25:
  [(MSDDemoUpdateController *)selfCopy setBusy:0];
LABEL_26:

  objc_sync_exit(selfCopy);
  return setDemoDeviceFlag;
}

- (BOOL)installCachedContentForCurrentLocale:(BOOL *)locale
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  context = objc_autoreleasePoolPush();
  v4 = +[MSDUIHelper sharedInstance];
  v5 = +[MSDProgressUpdater sharedInstance];
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Installing cached demo content...", buf, 2u);
  }

  if (os_variant_has_internal_content() && (+[MSDTestPreferences sharedInstance](MSDTestPreferences, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 skipVerifyHashBeforeStaging], v7, v8))
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Skipping file hash verification before staging", buf, 2u);
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v76[0] = @"IsCriticalUpdate";
  v76[1] = @"ForBackgroundDownload";
  v77[0] = &__kCFBooleanFalse;
  v77[1] = &__kCFBooleanFalse;
  v76[2] = @"VerifyHashBeforeStaging";
  v11 = [NSNumber numberWithBool:v10];
  v77[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:3];

  if ([(MSDDemoUpdateController *)selfCopy busy])
  {
    v54 = sub_100063A54();
    sub_1000DF43C(v54);
    v14 = 0;
    v18 = 0;
    v51 = 0;
    goto LABEL_29;
  }

  [(MSDDemoUpdateController *)selfCopy setBusy:1];
  device = [(MSDDemoUpdateController *)selfCopy device];
  [device setCachedBundleInstallState:@"cachedBundleInstallInProgress"];

  v71 = 0;
  v14 = [(MSDDemoUpdateController *)selfCopy _selectCachedManifestWithError:&v71];
  v15 = v71;
  v16 = v15;
  if (!v14)
  {
    v50 = 0;
    goto LABEL_35;
  }

  v70 = v15;
  v17 = [(MSDDemoUpdateController *)selfCopy _signedManifestMinimumOSVersionCheck:v14 error:&v70];
  v18 = v70;

  if (!v17)
  {
LABEL_34:
    v50 = 0;
    v16 = v18;
    goto LABEL_35;
  }

  device2 = [(MSDDemoUpdateController *)selfCopy device];
  installedFactoryBundleID = [device2 installedFactoryBundleID];

  if (installedFactoryBundleID)
  {
    device3 = [(MSDDemoUpdateController *)selfCopy device];
    installedFactoryBundleID2 = [device3 installedFactoryBundleID];
    bundleID = [v14 bundleID];
    v24 = [installedFactoryBundleID2 isEqualToString:bundleID];

    if (v24)
    {
      device4 = [(MSDDemoUpdateController *)selfCopy device];
      [device4 setCachedBundleInstallState:@"cachedBundleInstallDone"];

      device12 = sub_100063A54();
      if (os_log_type_enabled(device12, OS_LOG_TYPE_DEFAULT))
      {
        getLocaleCode = [v14 getLocaleCode];
        device5 = [(MSDDemoUpdateController *)selfCopy device];
        installedFactoryBundleID3 = [device5 installedFactoryBundleID];
        *buf = 138543618;
        v73 = getLocaleCode;
        v74 = 2114;
        v75 = installedFactoryBundleID3;
        _os_log_impl(&_mh_execute_header, device12, OS_LOG_TYPE_DEFAULT, "Bundle with locale %{public}@ & bundle ID %{public}@ already installed", buf, 0x16u);
      }

      v50 = 0;
      v51 = 1;
      goto LABEL_26;
    }
  }

  helperAgent = [(MSDDemoUpdateController *)selfCopy helperAgent];
  v26 = [helperAgent stageDeviceForUpdateProcess:0];

  if ((v26 & 1) == 0)
  {
    v55 = sub_100063A54();
    sub_1000DF3E8(v55);
    goto LABEL_34;
  }

  v27 = +[MSDUIHelper sharedInstance];
  [v27 startFullScreenUIWith:@"CACHED_BUNDLE_INSTALL" allowCancel:0];

  device6 = [(MSDDemoUpdateController *)selfCopy device];
  dcotaOfflineModeDevice = [device6 dcotaOfflineModeDevice];

  if ((dcotaOfflineModeDevice & 1) == 0)
  {
    device7 = [(MSDDemoUpdateController *)selfCopy device];
    [device7 setupDummyPreferenceFile];
  }

  [v5 startBundleUpdateMonitor:v14 inMode:0];
  bundleInProgress = [v5 bundleInProgress];
  [bundleInProgress startBundleUpdateTimer];

  device8 = [(MSDDemoUpdateController *)selfCopy device];
  [device8 setBackgroundDownloadActive:0];

  v33 = sub_100063A54();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Stopping all apps running in the foreground...", buf, 2u);
  }

  v34 = +[MSDAppHelper sharedInstance];
  fullScreenUIAppId = [v4 fullScreenUIAppId];
  v36 = [NSArray arrayWithObjects:fullScreenUIAppId, @"com.apple.ist.windward", @"com.apple.ist.DemoDiscoveryApp", @"com.apple.PineBoard", 0];
  [v34 stopAllAppsExcept:v36];

  v69 = v18;
  LODWORD(v34) = [(MSDDemoUpdateController *)selfCopy _kickOffContentUpdateForManifest:v14 withOptions:v12 error:&v69];
  v16 = v69;

  if (!v34)
  {
    goto LABEL_30;
  }

  bundleInProgress2 = [v5 bundleInProgress];
  [bundleInProgress2 getBundleUpdateTime];
  v39 = v38;

  v40 = sub_100063A54();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v73 = v39;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Total time taken for this update: %f.", buf, 0xCu);
  }

  bundleInProgress3 = [v5 bundleInProgress];
  [bundleInProgress3 stopBundleUpdateTimer];

  v42 = sub_100063A54();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Done with content update, switching to real backup folder.", buf, 2u);
  }

  helperAgent2 = [(MSDDemoUpdateController *)selfCopy helperAgent];
  switchToBackupFolder = [helperAgent2 switchToBackupFolder];

  if (!switchToBackupFolder)
  {
LABEL_30:
    v50 = 1;
LABEL_35:
    v68 = v16;
    sub_1000C1424(&v68, 3727744768, @"An error has occurred.");
    v18 = v68;

    v56 = +[MSDDemoUpdateStatusHub sharedInstance];
    [v56 demoUpdateFailed:v18];

    device9 = [(MSDDemoUpdateController *)selfCopy device];
    dcotaOfflineModeDevice2 = [device9 dcotaOfflineModeDevice];

    if ((dcotaOfflineModeDevice2 & 1) == 0)
    {
      v59 = sub_100063A54();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Cleaning up keep alive file and BootTask Work folder...", buf, 2u);
      }

      device10 = [(MSDDemoUpdateController *)selfCopy device];
      [device10 cleanupDummyPreferenceFile];

      device11 = [(MSDDemoUpdateController *)selfCopy device];
      [device11 destroyWorkFolderForBootTask];
    }

    device12 = [(MSDDemoUpdateController *)selfCopy device];
    [device12 setCachedBundleInstallState:@"cachedBundleInstallDone"];
    v51 = 0;
    goto LABEL_26;
  }

  [(MSDDemoUpdateController *)selfCopy _stageContentPlistForManifest:v14];
  v45 = +[MSDLanguageAndRegionManager sharedInstance];
  [v45 saveCurrentDeviceLanguageIdentifier];

  v46 = +[MSDLanguageAndRegionManager sharedInstance];
  [v46 saveCurrentDeviceRegionCode];

  bundleID2 = [v14 bundleID];
  device13 = [(MSDDemoUpdateController *)selfCopy device];
  [device13 setInstalledFactoryBundleID:bundleID2];

  device12 = [(MSDDemoUpdateController *)selfCopy device];
  [device12 setCachedBundleInstallState:@"cachedBundleInstallWaitMigration"];
  v50 = 1;
  v51 = 1;
  v18 = v16;
LABEL_26:

  if (locale)
  {
    *locale = v50;
  }

  v52 = +[MSDUIHelper sharedInstance];
  [v52 stopFullScreenUI:0];

  [(MSDDemoUpdateController *)selfCopy setBusy:0];
LABEL_29:

  objc_autoreleasePoolPop(context);
  objc_sync_exit(selfCopy);

  return v51;
}

- (BOOL)updateDemoContent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  context = objc_autoreleasePoolPush();
  v3 = +[MSDProgressUpdater sharedInstance];
  v64 = +[MSDUIHelper sharedInstance];
  device = [(MSDDemoUpdateController *)selfCopy device];
  criticalUpdatePrioritized = [device criticalUpdatePrioritized];

  if (os_variant_has_internal_content() && (+[MSDTestPreferences sharedInstance](MSDTestPreferences, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 skipVerifyHashBeforeStaging], v5, v6))
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Skipping file hash verification before staging", buf, 2u);
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v72[0] = @"IsCriticalUpdate";
  v9 = [NSNumber numberWithBool:criticalUpdatePrioritized];
  v73[0] = v9;
  v73[1] = &__kCFBooleanFalse;
  v72[1] = @"ForBackgroundDownload";
  v72[2] = @"VerifyHashBeforeStaging";
  v10 = [NSNumber numberWithBool:v8];
  v73[2] = v10;
  v63 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:3];

  v60 = +[MSDPairedWatchProxy sharedInstance];
  busy = [(MSDDemoUpdateController *)selfCopy busy];
  if (busy)
  {
    v52 = sub_100063A54();
    sub_1000DF48C(v52);
    getContentUpdateType = 0;
    downloadedContentSource = 0;
    v59 = 0;
    retrieveSignedManifest = 0;
    goto LABEL_27;
  }

  [(MSDDemoUpdateController *)selfCopy setBusy:1];
  device2 = [(MSDDemoUpdateController *)selfCopy device];
  v12 = [device2 switchModeImmediately:2];

  if (!v12)
  {
    paired = 0;
LABEL_31:
    getContentUpdateType = 0;
    downloadedContentSource = 0;
    v20 = 0;
LABEL_33:
    retrieveSignedManifest = 0;
    goto LABEL_37;
  }

  device3 = [(MSDDemoUpdateController *)selfCopy device];
  if ([device3 isBetterTogetherDemo])
  {
    paired = [v60 paired];
  }

  else
  {
    paired = 0;
  }

  helperAgent = [(MSDDemoUpdateController *)selfCopy helperAgent];
  v15 = [helperAgent stageDeviceForUpdateProcess:0];

  if ((v15 & 1) == 0)
  {
    v53 = sub_100063A54();
    sub_1000DF3E8(v53);
    goto LABEL_31;
  }

  v16 = sub_100063A54();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device downloading manifest...", buf, 2u);
  }

  [v3 updateStage:2];
  device4 = [(MSDDemoUpdateController *)selfCopy device];
  retrieveSignedManifest = [device4 retrieveSignedManifest];

  if (!retrieveSignedManifest)
  {
    v69 = 0;
    sub_1000C1424(&v69, 3727740940, @"Could not download manifest.");
    v20 = v69;
    getContentUpdateType = 0;
    downloadedContentSource = 0;
    goto LABEL_33;
  }

  v68 = 0;
  v19 = [(MSDDemoUpdateController *)selfCopy _signedManifestMinimumOSVersionCheck:retrieveSignedManifest error:&v68];
  v20 = v68;
  if (v19)
  {
    [v3 startBundleUpdateMonitor:retrieveSignedManifest inMode:0];
    bundleInProgress = [v3 bundleInProgress];
    [bundleInProgress startBundleUpdateTimer];

    v22 = +[MSDAppPrivacyPermissionsHelper sharedInstance];
    [v22 savePrivacyPermissionsForAllApps:retrieveSignedManifest];

    device5 = [(MSDDemoUpdateController *)selfCopy device];
    [device5 setBackgroundDownloadActive:0];

    [v3 updateStage:21];
    v24 = sub_100063A54();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Stopping all apps running in the foreground...", buf, 2u);
    }

    v25 = +[MSDAppHelper sharedInstance];
    fullScreenUIAppId = [v64 fullScreenUIAppId];
    v27 = [NSArray arrayWithObjects:fullScreenUIAppId, @"com.apple.ist.windward", @"com.apple.ist.DemoDiscoveryApp", @"com.apple.PineBoard", @"com.apple.ist.DigitalSignage.iOS", 0];
    [v25 stopAllAppsExcept:v27];

    [v3 updateStage:22];
    v67 = v20;
    LODWORD(v25) = [(MSDDemoUpdateController *)selfCopy _kickOffContentUpdateForManifest:retrieveSignedManifest withOptions:v63 error:&v67];
    v59 = v67;

    if (v25)
    {
      getContentUpdateType = [v3 getContentUpdateType];
      bundleInProgress2 = [v3 bundleInProgress];
      downloadedContentSource = [bundleInProgress2 downloadedContentSource];

      v30 = [downloadedContentSource objectForKey:@"remote"];
      longLongValue = [v30 longLongValue];
      v32 = [downloadedContentSource objectForKey:@"local"];
      longLongValue2 = [v32 longLongValue];

      bundleInProgress3 = [v3 bundleInProgress];
      getComponentsSuccessful = [bundleInProgress3 getComponentsSuccessful];
      bundleInProgress4 = [v3 bundleInProgress];
      getAllComponentsForUpdate = [bundleInProgress4 getAllComponentsForUpdate];

      v38 = [downloadedContentSource objectForKey:@"local"];
      longLongValue3 = [v38 longLongValue];

      bundleInProgress5 = [v3 bundleInProgress];
      [bundleInProgress5 getBundleUpdateTime];
      v42 = v41;

      v43 = sub_100063A54();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v71 = v42;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Total time taken for this update: %f.", buf, 0xCu);
      }

      v44 = +[MSDAnalyticsEventHandler sharedInstance];
      [v44 sendContentUpdateCompletedEvent:&longLongValue[longLongValue2] withTimeTaken:longLongValue3 != 0 cachingHubAvailable:criticalUpdatePrioritized isCriticalUpdate:getContentUpdateType contentUpdateType:100 * getComponentsSuccessful / getAllComponentsForUpdate andComponentSuccess:v42];

      bundleInProgress6 = [v3 bundleInProgress];
      [bundleInProgress6 stopBundleUpdateTimer];

      v46 = sub_100063A54();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Done with content update, switching to real backup folder.", buf, 2u);
      }

      helperAgent2 = [(MSDDemoUpdateController *)selfCopy helperAgent];
      switchToBackupFolder = [helperAgent2 switchToBackupFolder];

      if (switchToBackupFolder)
      {
        device6 = [(MSDDemoUpdateController *)selfCopy device];
        v50 = [device6 switchModeImmediately:4];

        if (v50)
        {
          [(MSDDemoUpdateController *)selfCopy setBusy:0];
          LOBYTE(v10) = 1;
          goto LABEL_27;
        }
      }
    }

    else
    {
      getContentUpdateType = 0;
      downloadedContentSource = 0;
    }

    v20 = v59;
  }

  else
  {
    getContentUpdateType = 0;
    downloadedContentSource = 0;
  }

LABEL_37:
  v66 = v20;
  sub_1000C1424(&v66, 3727744768, @"An error has occurred.");
  v59 = v66;

  v54 = +[MSDDemoUpdateStatusHub sharedInstance];
  [v54 demoUpdateFailed:v59];

  v55 = +[MSDAnalyticsEventHandler sharedInstance];
  [v55 sendContentUpdateFailureEvent:v59 isFatal:1];

  if (paired)
  {
    v56 = +[MSDPairedWatchProxy sharedInstance];
    [v56 signalContentUpdateCompletion:0 andError:v59];
  }

  [(MSDDemoUpdateController *)selfCopy checkWithTimeKeeper:v59];
  [(MSDDemoUpdateController *)selfCopy setBusy:0];
  LOBYTE(v10) = 0;
LABEL_27:

  objc_autoreleasePoolPop(context);
  objc_sync_exit(selfCopy);

  return v10 & (busy ^ 1);
}

- (void)cancelDemoContentUpdate
{
  v15 = +[MSDPairedWatchProxy sharedInstance];
  device = [(MSDDemoUpdateController *)self device];
  if ([device isBetterTogetherDemo])
  {
    paired = [v15 paired];

    if (paired)
    {
      [v15 cancelOperation];
    }
  }

  else
  {
  }

  v5 = +[MSDDemoUpdateTimeKeeper sharedInstance];
  [v5 canceledByUser];

  v6 = +[MSDPlatform sharedInstance];
  if ([v6 macOS])
  {
  }

  else
  {
    v7 = +[MSDPlatform sharedInstance];
    v8 = [v7 iOS];

    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v9 = +[MSDPricingUpdateController sharedInstance];
  [v9 operationCanceled];

LABEL_9:
  componentManager = [(MSDDemoUpdateController *)self componentManager];

  if (componentManager)
  {
    componentManager2 = [(MSDDemoUpdateController *)self componentManager];
    [componentManager2 abortProcessing];
  }

  v12 = +[MSDUIHelper sharedInstance];
  [v12 fullScreenUICanceledByUser];

  v13 = +[MSDProgressUpdater sharedInstance];
  [v13 updateStage:101];

  v14 = +[MSDMailProcessor sharedInstance];
  [v14 sendImmediateDeviceInfoPing];
}

- (void)concludeDemoContenUpdateWithResult:(BOOL)result andError:(id)error
{
  resultCopy = result;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(MSDDemoUpdateController *)selfCopy busy])
  {
    v10 = sub_100063A54();
    sub_1000DF4DC(v10);
    goto LABEL_6;
  }

  [(MSDDemoUpdateController *)selfCopy setBusy:0];
  if (!resultCopy)
  {
LABEL_6:
    v12 = errorCopy;
    sub_1000C1424(&v12, 3727744768, @"An error has occurred.");
    v9 = v12;

    v11 = +[MSDDemoUpdateStatusHub sharedInstance];
    [v11 demoUpdateFailed:v9];

    [(MSDDemoUpdateController *)selfCopy checkWithTimeKeeper:v9];
    goto LABEL_4;
  }

  device = [(MSDDemoUpdateController *)selfCopy device];
  [device switchModeImmediately:5];

  v9 = errorCopy;
LABEL_4:
  objc_sync_exit(selfCopy);
}

- (BOOL)setupAccounts:(id *)accounts
{
  v4 = +[MSDAccountManager sharedInstance];
  v13 = 0;
  v5 = [v4 setupAccounts:&v13];
  v6 = v13;

  if ((v5 & 1) == 0)
  {
    v12 = v6;
    sub_1000C1424(&v12, 3727744743, @"An error has occurred.");
    v7 = v12;

    v8 = +[MSDDemoUpdateStatusHub sharedInstance];
    [v8 demoUpdateFailed:v7];

    v9 = +[MSDAnalyticsEventHandler sharedInstance];
    [v9 sendiCloudSigninFailureEvent:v7];

    if (accounts)
    {
      v10 = v7;
      *accounts = v7;
    }

    v6 = v7;
  }

  return v5;
}

- (BOOL)setupContinuityLinking:(id *)linking
{
  v4 = +[MSDAccountManager sharedInstance];
  v13 = 0;
  v5 = [v4 setupContinuityLinking:&v13];
  v6 = v13;

  if ((v5 & 1) == 0)
  {
    v12 = v6;
    sub_1000C1424(&v12, 3727744743, @"An error has occurred.");
    v7 = v12;

    v8 = +[MSDDemoUpdateStatusHub sharedInstance];
    [v8 demoUpdateFailed:v7];

    v9 = +[MSDAnalyticsEventHandler sharedInstance];
    [v9 sendContinuityLinkingFailureEvent:v7];

    if (linking)
    {
      v10 = v7;
      *linking = v7;
    }

    v6 = v7;
  }

  return v5;
}

- (BOOL)continueToUpdateAccountContent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  busy = [(MSDDemoUpdateController *)selfCopy busy];
  if (busy)
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF52C();
    }
  }

  else
  {
    [(MSDDemoUpdateController *)selfCopy setBusy:1];
    v7 = 0;
    v2 = [(MSDDemoUpdateController *)selfCopy setupAccounts:&v7];
    v5 = v7;
    if (v5)
    {
      [(MSDDemoUpdateController *)selfCopy checkWithTimeKeeper:v5];
    }

    [(MSDDemoUpdateController *)selfCopy setBusy:0];
  }

  objc_sync_exit(selfCopy);
  return (busy ^ 1) & v2;
}

- (BOOL)continueToUpdateAssets
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  busy = [(MSDDemoUpdateController *)selfCopy busy];
  if (busy)
  {
    v11 = sub_100063A54();
    sub_1000DF394(v11);
    v9 = 0;
    goto LABEL_10;
  }

  [(MSDDemoUpdateController *)selfCopy setBusy:1];
  if (!+[MSDGreyMatterHelper isOptedIn])
  {
    v9 = 0;
    goto LABEL_9;
  }

  sleep(0x1Eu);
  v5 = +[MSDAssetUpdater sharedInstance];
  v14 = 0;
  v6 = [v5 downloadAssetsWithError:&v14];
  v7 = v14;

  if ((v6 & 1) == 0)
  {
    sub_100063A54();
    objc_claimAutoreleasedReturnValue();
    sub_1000DF568();
LABEL_14:

    v13 = v7;
    sub_1000C1424(&v13, 3727744776, @"Failed to download support for Apple Intelligence");
    v9 = v13;

    v12 = +[MSDDemoUpdateStatusHub sharedInstance];
    [v12 demoUpdateFailed:v9];

    [(MSDDemoUpdateController *)selfCopy checkWithTimeKeeper:v9];
    [(MSDDemoUpdateController *)selfCopy setBusy:0];
    v2 = 0;
    goto LABEL_10;
  }

  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling waitForGMAvailability", buf, 2u);
  }

  if (!+[MSDGreyMatterHelper waitForGMAvailability])
  {
    sub_100063A54();
    objc_claimAutoreleasedReturnValue();
    sub_1000DF5C4();
    goto LABEL_14;
  }

  v9 = v7;
LABEL_9:
  [(MSDDemoUpdateController *)selfCopy setBusy:0];
  v2 = 1;
LABEL_10:
  objc_sync_exit(selfCopy);

  return v2 & (busy ^ 1);
}

- (BOOL)continueToUpdateOSPreferences
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  busy = [(MSDDemoUpdateController *)selfCopy busy];
  if (busy)
  {
    v8 = sub_100063A54();
    sub_1000DF394(v8);
    getCurrentSiriLanguage = 0;
  }

  else
  {
    [(MSDDemoUpdateController *)selfCopy setBusy:1];
    v4 = +[MSDLanguageAndRegionManager sharedInstance];
    getCurrentSiriLanguage = [v4 getCurrentSiriLanguage];

    device = [(MSDDemoUpdateController *)selfCopy device];
    [device applyStagedDevicePreferences:0];

    [(MSDDemoUpdateController *)selfCopy setBusy:0];
  }

  objc_sync_exit(selfCopy);

  return busy ^ 1;
}

- (BOOL)continueToContinuityLinking
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  busy = [(MSDDemoUpdateController *)selfCopy busy];
  if (busy)
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF52C();
    }
  }

  else
  {
    [(MSDDemoUpdateController *)selfCopy setBusy:1];
    v7 = 0;
    v2 = [(MSDDemoUpdateController *)selfCopy setupContinuityLinking:&v7];
    v5 = v7;
    if (v5)
    {
      [(MSDDemoUpdateController *)selfCopy checkWithTimeKeeper:v5];
    }

    [(MSDDemoUpdateController *)selfCopy setBusy:0];
  }

  objc_sync_exit(selfCopy);
  return (busy ^ 1) & v2;
}

- (BOOL)continueToUpdateDemoContent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  context = objc_autoreleasePoolPush();
  v47 = +[MSDPairedWatchProxy sharedInstance];
  busy = [(MSDDemoUpdateController *)selfCopy busy];
  if (busy)
  {
    v43 = sub_100063A54();
    sub_1000DF394(v43);
    v18 = 0;
    allKeys = 0;
    v25 = 0;
    v33 = 0;
    goto LABEL_37;
  }

  [(MSDDemoUpdateController *)selfCopy setBusy:1];
  v4 = +[MSDAppPrivacyPermissionsHelper sharedInstance];
  [v4 grantPrivacyPermissionsForAllApps];

  device = [(MSDDemoUpdateController *)selfCopy device];
  isPressDemoDevice = [device isPressDemoDevice];

  if ((isPressDemoDevice & 1) == 0)
  {
    v7 = +[MSDConfigurationProfileManager sharedInstance];
    [v7 installDefaultConfigurationProfile];
  }

  +[MSDGreyMatterHelper migrateOptInValue];
  v53 = 0;
  [(MSDDemoUpdateController *)selfCopy setupAccounts:&v53];
  v46 = v53;
  device2 = [(MSDDemoUpdateController *)selfCopy device];
  if (![device2 isBetterTogetherDemo])
  {

    goto LABEL_12;
  }

  paired = [v47 paired];

  if (!paired)
  {
LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  if (os_variant_has_internal_content())
  {
    v10 = +[MSDTestPreferences sharedInstance];
    contentSyncTimeoutInterval = [v10 contentSyncTimeoutInterval];

    if (contentSyncTimeoutInterval)
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v55 = contentSyncTimeoutInterval;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Override default content sync timeout interval with value: %{public}@", buf, 0xCu);
      }

      unsignedIntValue = [contentSyncTimeoutInterval unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 1800;
    }
  }

  else
  {
    unsignedIntValue = 1800;
  }

  v39 = +[MSDProgressUpdater sharedInstance];
  [v39 updateStage:32];

  v40 = sub_100063A54();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v55) = unsignedIntValue;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Wait extra %u seconds for content sync between phone and watch...", buf, 8u);
  }

  sleep(unsignedIntValue);
  v41 = sub_100063A54();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Sending content update completion signal to paired watch...", buf, 2u);
  }

  v14 = 1;
  if ([v47 signalContentUpdateCompletion:1 andError:0])
  {
LABEL_13:
    v15 = sub_100063A54();
    v44 = v14;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Re-enabling idle timer for blocking UI", buf, 2u);
    }

    v16 = +[MSDUIHelper sharedInstance];
    [v16 reenableIdleTimer];

    device3 = [(MSDDemoUpdateController *)selfCopy device];
    v52 = 0;
    [device3 applyStagedDevicePreferences:&v52];
    v18 = v52;

    device4 = [(MSDDemoUpdateController *)selfCopy device];
    getSavedOSPreferencesRequest = [device4 getSavedOSPreferencesRequest];
    allKeys = [getSavedOSPreferencesRequest allKeys];

    v22 = +[MSDLanguageAndRegionManager sharedInstance];
    if ([v22 isSiriEnabled])
    {
      v23 = [v18 containsObject:@"SystemSiriLanguage"] ^ 1;
    }

    else
    {
      v23 = 0;
    }

    if ([allKeys containsObject:@"SystemLanguage"] && objc_msgSend(allKeys, "containsObject:", @"SystemRegion"))
    {
      v24 = +[MSDPreferencesFile sharedInstance];
      [v24 removeObjectForKey:@"locale"];
      v25 = 0;
    }

    else
    {
      v26 = +[MSDPreferencesFile sharedInstance];
      v25 = [v26 objectForKey:@"locale"];

      if (!v25)
      {
        goto LABEL_24;
      }

      v24 = [v25 objectForKey:@"language"];
      v27 = [v25 objectForKey:@"region"];
      v28 = +[MSDLanguageAndRegionManager sharedInstance];
      [v28 setDeviceLanguage:v24 andRegion:v27 matchToSystemLanguage:0 sbRestartNeeded:0 sbRestartHandler:0];

      v29 = +[MSDPreferencesFile sharedInstance];
      [v29 removeObjectForKey:@"locale"];
    }

LABEL_24:
    v30 = +[MSDAnalytics sharedInstance];
    [v30 disableCoreAnalticsTransformSampling];

    if (+[MSDGreyMatterHelper isOptedIn])
    {
      sleep(0x1Eu);
      v31 = +[MSDAssetUpdater sharedInstance];
      v51 = v46;
      v32 = [v31 downloadAssetsWithError:&v51];
      v33 = v51;

      if ((v32 & 1) == 0)
      {
        v35 = sub_100063A54();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_1000DF65C();
        }

        goto LABEL_53;
      }

      v34 = sub_100063A54();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Calling waitForGMAvailability", buf, 2u);
      }

      if (!+[MSDGreyMatterHelper waitForGMAvailability])
      {
        v35 = sub_100063A54();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_1000DF698();
        }

LABEL_53:

        v46 = v33;
        goto LABEL_47;
      }
    }

    else if (v23)
    {
      v36 = +[MSDAssetUpdater sharedInstance];
      v50 = v46;
      v37 = [v36 handleSiriAssetsWithError:&v50];
      v33 = v50;

      if ((v37 & 1) == 0)
      {
        v35 = sub_100063A54();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_1000DF620();
        }

        goto LABEL_53;
      }
    }

    else
    {
      v33 = v46;
    }

    [(MSDDemoUpdateController *)selfCopy setBusy:0];
    v2 = 1;
    goto LABEL_37;
  }

  v44 = 1;
  v18 = 0;
  allKeys = 0;
  v25 = 0;
LABEL_47:
  v49 = v46;
  sub_1000C1424(&v49, 3727744768, @"An error has occurred.");
  v33 = v49;

  v42 = +[MSDDemoUpdateStatusHub sharedInstance];
  [v42 demoUpdateFailed:v33];

  if (v44)
  {
    [v47 signalContentUpdateCompletion:0 andError:v33];
  }

  [(MSDDemoUpdateController *)selfCopy checkWithTimeKeeper:v33];
  [(MSDDemoUpdateController *)selfCopy setBusy:0];
  v2 = 0;
LABEL_37:

  objc_autoreleasePoolPop(context);
  objc_sync_exit(selfCopy);

  return v2 & (busy ^ 1);
}

- (void)checkWithTimeKeeper:(id)keeper
{
  keeperCopy = keeper;
  v4 = +[MSDDemoUpdateTimeKeeper sharedInstance];
  v14 = 0;
  v5 = [v4 shouldCleanUp:&v14];
  v6 = v14;
  v7 = v6;
  if (v5)
  {
    if ([v6 code] != 3727741184)
    {
      v8 = sub_100063A54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unknown clean up reason!", buf, 2u);
      }
    }

    v9 = +[MSDTargetDevice sharedInstance];
    [v9 forceSwitchToDemoModeIfNeeded];
    goto LABEL_9;
  }

  if ([keeperCopy code] == 3727740939)
  {
    v9 = +[MSDProgressUpdater sharedInstance];
    [v9 updateStage:24];
LABEL_9:

    goto LABEL_16;
  }

  v10 = +[MSDTestPreferences sharedInstance];
  timeShowingFatalError = [v10 timeShowingFatalError];

  if (timeShowingFatalError)
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v16 = timeShowingFatalError;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Override MSDTimeShowingFatalError timeout: %u", buf, 8u);
    }
  }

  else
  {
    timeShowingFatalError = 900;
  }

  v13 = [v4 setCompletionTimeForFatalError:timeShowingFatalError];
LABEL_16:
}

- (BOOL)PLHasCompletedRestorePostProcessing
{
  v12 = 0;
  v2 = [PLAssetsdClient alloc];
  v3 = +[PLPhotoLibraryPathManager systemLibraryURL];
  v4 = [v2 initWithPhotoLibraryURL:v3];

  demoClient = [v4 demoClient];
  v11 = 0;
  v6 = [demoClient hasCompletedRestorePostProcessing:&v12 error:&v11];
  v7 = v11;

  if (v6)
  {
    v8 = v12;
  }

  else
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF6D4();
    }

    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)PLHasCompletedMomentAnalysis
{
  v12 = 0;
  v2 = [PLAssetsdClient alloc];
  v3 = +[PLPhotoLibraryPathManager systemLibraryURL];
  v4 = [v2 initWithPhotoLibraryURL:v3];

  demoClient = [v4 demoClient];
  v11 = 0;
  v6 = [demoClient hasCompletedMomentAnalysis:&v12 error:&v11];
  v7 = v11;

  if (v6)
  {
    v8 = v12;
  }

  else
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF744();
    }

    v8 = 0;
  }

  return v8 & 1;
}

- (void)setAutomatedDeviceGroupStoreID
{
  v3 = +[MSDTargetDevice sharedInstance];
  getDeviceOptions = [v3 getDeviceOptions];

  if (getDeviceOptions)
  {
    v5 = [getDeviceOptions objectForKey:@"store_id"];
  }

  else
  {
    v5 = 0;
  }

  device = [(MSDDemoUpdateController *)self device];
  serialNumber = [device serialNumber];

  v8 = +[OSASystemConfiguration automatedDeviceGroup];
  if (!v8)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF95C();
    }

    v11 = 0;
    v9 = 0;
    goto LABEL_26;
  }

  v9 = v8;
  if (!v5)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF8D0();
    }

    goto LABEL_25;
  }

  if (!serialNumber)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF850();
    }

    goto LABEL_25;
  }

  if ([(__CFString *)v8 containsString:v5]&& [(__CFString *)v9 containsString:serialNumber])
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v16 = @"AutomatedDeviceGroup";
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v5;
      v21 = 2114;
      v22 = serialNumber;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ key with value %{public}@ already contains store ID %{public}@ and serial number %{public}@, skip appending store ID and serial number again", buf, 0x2Au);
    }

LABEL_25:
    v11 = 0;
LABEL_26:

    v12 = v9;
    goto LABEL_27;
  }

  v12 = [NSString stringWithFormat:@"%@_%@_%@", v9, v5, serialNumber];

  [OSASystemConfiguration setAutomatedDeviceGroup:v12];
  v13 = sub_100063A54();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Set new AutomatedDeviceGroup %@", buf, 0xCu);
  }

  v14 = +[OSASystemConfiguration automatedDeviceGroup];
  v11 = v14;
  if (!v14 || ([v14 isEqualToString:v12] & 1) == 0)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF7B4();
    }

    v9 = v12;
    goto LABEL_26;
  }

LABEL_27:
}

- (void)_configureMailAppForDemo
{
  v2 = dispatch_semaphore_create(0);
  v3 = objc_alloc_init(EMDaemonInterface);
  [v3 launchDaemon];
  clientState = [v3 clientState];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008BEA8;
  v8[3] = &unk_10016BAA0;
  v5 = v2;
  v9 = v5;
  [clientState setStateForDemoMode:v8];

  v6 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF9E8();
    }
  }
}

- (BOOL)_signedManifestMinimumOSVersionCheck:(id)check error:(id *)error
{
  checkCopy = check;
  getInfo = [checkCopy getInfo];
  v8 = [getInfo objectForKey:@"MinimumOSVersion"];

  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    getInfo2 = [checkCopy getInfo];
    v11 = [getInfo2 objectForKey:@"PartNumber"];
    getInfo3 = [checkCopy getInfo];
    v13 = [getInfo3 objectForKey:@"Revision"];
    v19 = 138543874;
    v20 = v11;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Manifest partnumber/revision: %{public}@_%{public}@, minimum OS version is %{public}@", &v19, 0x20u);
  }

  if (v8 && (-[MSDDemoUpdateController device](self, "device"), v14 = objc_claimAutoreleasedReturnValue(), [v14 OSVersion], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v8, "higherVersionThan:", v15), v15, v14, v16))
  {
    sub_1000DFAB0(v8, self, error);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (BOOL)_kickOffContentUpdateForManifest:(id)manifest withOptions:(id)options error:(id *)error
{
  manifestCopy = manifest;
  optionsCopy = options;
  v9 = [optionsCopy mutableCopy];
  v10 = +[MSDPlatform sharedInstance];
  if ([v10 macOS])
  {
  }

  else
  {
    v11 = +[MSDPlatform sharedInstance];
    v12 = [v11 iOS];

    if (!v12)
    {
      goto LABEL_14;
    }
  }

  getAppList = [manifestCopy getAppList];
  v14 = [getAppList objectForKey:@"com.retailtech.arkenstone"];
  if (v14 || ([getAppList objectForKey:@"com.apple.retailtech.experiences.mac"], (v14 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(getAppList, "objectForKey:", @"com.apple.ist.windward"), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
LABEL_8:
    device = [(MSDDemoUpdateController *)self device];
    getSavedFlag = [device getSavedFlag];

    if ((getSavedFlag & 2) != 0)
    {
      v18 = +[MSDPricingUpdateController sharedInstance];
      completed = [v18 completed];

      if ((completed & 1) == 0)
      {
        v20 = sub_100063A54();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v66 = v15;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Request builder to defer the update of app: %{public}@", buf, 0xCu);
        }

        [v9 setObject:v15 forKey:@"AppItemToDefer"];
      }
    }

    goto LABEL_13;
  }

  v15 = [getAppList objectForKey:@"com.apple.ist.DemoDiscoveryApp"];
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_13:

LABEL_14:
  v21 = [[MSDComponentBuilder alloc] initWithSignedManifest:manifestCopy andOptions:v9];
  v22 = +[MSDConfigurationProfileManager sharedInstance];
  [v22 uninstallAllDemoBundleConfigurationProfiles];

  buildComponentsNotInManifest = [(MSDComponentBuilder *)v21 buildComponentsNotInManifest];
  if (buildComponentsNotInManifest)
  {
    buildComponentsFromManifest = [(MSDComponentBuilder *)v21 buildComponentsFromManifest];
    if (buildComponentsFromManifest)
    {
      v25 = buildComponentsFromManifest;
      errorCopy = error;
      v50 = v9;
      v51 = optionsCopy;

      v26 = +[MSDDemoUpdateTimeKeeper sharedInstance];
      date = [v26 date];

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v48 = v25;
      v49 = buildComponentsNotInManifest;
      v63[0] = buildComponentsNotInManifest;
      v63[1] = v25;
      obj = [NSArray arrayWithObjects:v63 count:2];
      v27 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
      if (!v27)
      {
        v29 = 0;
LABEL_32:

        v21 = 0;
        manifestCopy = 0;
        v42 = 1;
        v9 = v50;
        optionsCopy = v51;
        v43 = v48;
        buildComponentsNotInManifest = v49;
        goto LABEL_33;
      }

      v28 = v27;
      v29 = 0;
      v30 = *v58;
LABEL_18:
      v31 = 0;
      while (1)
      {
        if (*v58 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v57 + 1) + 8 * v31);
        v33 = objc_autoreleasePoolPush();
        if ([v32 count])
        {
          v34 = +[MSDDemoUpdateTimeKeeper sharedInstance];
          v56 = v29;
          v35 = [v34 shouldCleanUp:&v56];
          v36 = v56;

          if (v35)
          {
            v37 = sub_100063A54();
            if (os_log_type_enabled(&v37->super, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v66 = "[MSDDemoUpdateController _kickOffContentUpdateForManifest:withOptions:error:]";
              _os_log_impl(&_mh_execute_header, &v37->super, OS_LOG_TYPE_DEFAULT, "%s - Content update has been cancelled by users request", buf, 0xCu);
            }

            v29 = v36;
LABEL_38:
            v9 = v50;
            optionsCopy = v51;
            error = errorCopy;
            v43 = v48;
            buildComponentsNotInManifest = v49;

            objc_autoreleasePoolPop(v33);
            v21 = 0;
            manifestCopy = 0;
            if (!errorCopy)
            {
              goto LABEL_45;
            }

LABEL_39:
            v45 = v29;
            v42 = 0;
            *error = v29;
            goto LABEL_33;
          }

          v37 = [[MSDComponentProcessor alloc] initWithQoS:33];
          v38 = [[MSDComponentManager alloc] initWithComponents:v32 andProcessor:v37];
          [(MSDDemoUpdateController *)self setComponentManager:v38];
          componentManager = [(MSDDemoUpdateController *)self componentManager];
          [componentManager startProcessingAllComponents];

          componentManager2 = [(MSDDemoUpdateController *)self componentManager];
          v55 = v36;
          v41 = [componentManager2 waitForProcessingCompletionTillDate:date outError:&v55];
          v29 = v55;

          if ((v41 & 1) == 0 && ([v29 code] == 3727741184 || objc_msgSend(v29, "code") == 3727741185))
          {

            goto LABEL_38;
          }
        }

        else
        {
          v37 = 0;
          v38 = 0;
        }

        objc_autoreleasePoolPop(v33);
        if (v28 == ++v31)
        {
          v28 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
          if (v28)
          {
            goto LABEL_18;
          }

          goto LABEL_32;
        }
      }
    }

    v61 = 0;
    sub_1000C1390(&v61, 3727740938, @"Manifest is corrupted.");
    v46 = v61;
  }

  else
  {
    v62 = 0;
    sub_1000C1390(&v62, 3727740938, @"Manifest is corrupted.");
    v46 = v62;
  }

  v29 = v46;
  v43 = 0;
  date = 0;
  if (error)
  {
    goto LABEL_39;
  }

LABEL_45:
  v42 = 0;
LABEL_33:

  return v42;
}

- (void)_stageContentPlistForManifest:(id)manifest
{
  manifestCopy = manifest;
  v5 = +[NSFileManager defaultManager];
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Staging Content.plist...", buf, 2u);
  }

  v7 = [(MSDDemoUpdateController *)self _contentPlistPathForManifest:manifestCopy];

  if (!v7)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000DFE14();
    }

    goto LABEL_25;
  }

  v8 = [v5 fileExistsAtPath:v7];
  v9 = sub_100063A54();
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000DFBB0();
    }

LABEL_25:
    stringByDeletingLastPathComponent = 0;
    fileHash = 0;
    v12 = 0;
LABEL_35:

    goto LABEL_20;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v27 = v7;
    v28 = 2114;
    v29 = @"/private/var/mobile/backup/var/mobile/Media/Content.plist";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Copying %{public}@ to %{public}@...", buf, 0x16u);
  }

  stringByDeletingLastPathComponent = [@"/private/var/mobile/backup/var/mobile/Media/Content.plist" stringByDeletingLastPathComponent];
  if ([v5 fileExistsAtPath:stringByDeletingLastPathComponent])
  {
    v12 = 0;
  }

  else
  {
    v13 = sub_100063A54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = stringByDeletingLastPathComponent;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Creating %{public}@...", buf, 0xCu);
    }

    v25 = 0;
    v14 = [v5 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v25];
    v12 = v25;
    if ((v14 & 1) == 0)
    {
      v10 = sub_100063A54();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000DFC20();
      }

      fileHash = 0;
      goto LABEL_35;
    }
  }

  v15 = [NSURL fileURLWithString:v7];
  fileHash = [v15 fileHash];

  helperAgent = [(MSDDemoUpdateController *)self helperAgent];
  v18 = [helperAgent cloneFile:v7 to:@"/private/var/mobile/backup/var/mobile/Media/Content.plist" expectingHash:fileHash];

  v19 = sub_100063A54();
  v10 = v19;
  if ((v18 & 1) == 0)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000DFC9C();
    }

    goto LABEL_35;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v27 = v7;
    v28 = 2114;
    v29 = @"/private/var/demo_backup/Metadata/.Content.plist";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Copying %{public}@ to %{public}@...", buf, 0x16u);
  }

  if (([v5 fileExistsAtPath:@"/private/var/demo_backup/Metadata"] & 1) == 0)
  {
    v20 = sub_100063A54();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = @"/private/var/demo_backup/Metadata";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Creating %{public}@...", buf, 0xCu);
    }

    helperAgent2 = [(MSDDemoUpdateController *)self helperAgent];
    v22 = [helperAgent2 prepareWorkDirectory:@"/private/var/demo_backup/Metadata" writableByNonRoot:0];

    if ((v22 & 1) == 0)
    {
      v10 = sub_100063A54();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000DFD18();
      }

      goto LABEL_35;
    }
  }

  helperAgent3 = [(MSDDemoUpdateController *)self helperAgent];
  v24 = [helperAgent3 cloneFile:v7 to:@"/private/var/demo_backup/Metadata/.Content.plist" expectingHash:fileHash];

  if ((v24 & 1) == 0)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000DFD98();
    }

    goto LABEL_35;
  }

LABEL_20:
}

- (id)_selectCachedManifestWithError:(id *)error
{
  v4 = +[NSFileManager defaultManager];
  v5 = +[MSDTargetDevice sharedInstance];
  manifestPath = [v5 manifestPath];

  stringByDeletingLastPathComponent = [manifestPath stringByDeletingLastPathComponent];
  v60 = objc_opt_new();
  v8 = +[MSDLanguageAndRegionManager sharedInstance];
  getCurrentDevicePreferredLanguage = [v8 getCurrentDevicePreferredLanguage];

  v9 = +[MSDLanguageAndRegionManager sharedInstance];
  getCurrentDeviceRegion = [v9 getCurrentDeviceRegion];

  v11 = sub_100063A54();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = getCurrentDevicePreferredLanguage;
    v71 = 2114;
    v72 = getCurrentDeviceRegion;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Selecting cached bundle with preferred language code %{public}@; region %{public}@", buf, 0x16u);
  }

  v12 = [MSDSignedManifestFactoryMetadata loadManifestMetadata:@"/var/MSDWorkContainer/.MSD_cache_content_plist"];
  v56 = stringByDeletingLastPathComponent;
  v57 = v4;
  v55 = v12;
  if (!v12 && [0 count])
  {
    sub_1000DFE50();
    v16 = 0;
    v32 = 0;
    goto LABEL_61;
  }

  selfCopy = self;
  v59 = manifestPath;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v64 objects:v75 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v65;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v65 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v64 + 1) + 8 * i);
        supportedRegions = [v19 supportedRegions];
        v21 = [supportedRegions containsObject:getCurrentDeviceRegion];

        if (v21)
        {
          [v60 addObject:v19];
        }

        if ([v19 isPrimaryBundle])
        {
          v22 = v19;

          v23 = sub_100063A54();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found default primary bundle: %{public}@", buf, 0xCu);
          }

          v16 = v22;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v64 objects:v75 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  manifestPath = v59;
  if ([v60 count])
  {
    v24 = sub_100063A54();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v60 count];
      *buf = 134218498;
      *&buf[4] = v25;
      v71 = 2114;
      v72 = getCurrentDeviceRegion;
      v73 = 2114;
      v74 = v60;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Found %lu bundles for region %{public}@: %{public}@", buf, 0x20u);
    }

    v26 = [MSDSignedManifestFactoryMetadata languageIdentifiersForMetadataList:v60];
    v69 = getCurrentDevicePreferredLanguage;
    v27 = [NSArray arrayWithObjects:&v69 count:1];
    v28 = [NSLocale matchedLanguagesFromAvailableLanguages:v26 forPreferredLanguages:v27];

    if ([v28 count])
    {
      firstObject = [v28 firstObject];
      v30 = sub_100063A54();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = firstObject;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Found matched language code: %{public}@", buf, 0xCu);
      }

      v31 = [MSDSignedManifestFactoryMetadata metadataWithLanugageIdentifier:firstObject fromList:v60];
      if (v31)
      {
        v32 = v31;

        goto LABEL_35;
      }

      v33 = sub_100063A54();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1000DFEEC();
      }
    }
  }

  v34 = sub_100063A54();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Did not find matching bundle; selecting default primary bundle", buf, 2u);
  }

  v32 = v16;
LABEL_35:
  v35 = sub_100063A54();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Selected bundle metadata: %{public}@", buf, 0xCu);
  }

  fileName = [v32 fileName];

  if (!fileName)
  {
    sub_1000E01C0();
LABEL_61:
    v41 = 0;
    v39 = 0;
    v47 = *buf;
    goto LABEL_62;
  }

  v68[0] = @"/var/MSDWorkContainer/.MSD_cache_manifest";
  fileName2 = [v32 fileName];
  v68[1] = fileName2;
  v38 = [NSArray arrayWithObjects:v68 count:2];
  v39 = [NSString pathWithComponents:v38];

  v40 = sub_100063A54();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v39;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Loading manifest file from path %{public}@", buf, 0xCu);
  }

  v41 = [MSDSignedManifestFactory createSignedManifestFromManifestFile:v39];
  v42 = sub_100063A54();
  v43 = v42;
  if (!v41)
  {
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1000E0150();
    }

    v63 = 0;
    sub_1000C1390(&v63, 3727740942, @"Failed to load cached manifest file");
    v47 = v63;
    v41 = 0;
    goto LABEL_62;
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v39;
    v71 = 2114;
    v72 = v59;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Copying manifest file from %{public}@ to %{public}@", buf, 0x16u);
  }

  if ([v57 fileExistsAtPath:v56] & 1) != 0 || (-[MSDDemoUpdateController helperAgent](selfCopy, "helperAgent"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "prepareWorkDirectory:writableByNonRoot:", v56, 1), v44, (v45))
  {
    if ([v57 fileExistsAtPath:v59])
    {
      v62 = 0;
      v46 = [v57 removeItemAtPath:v59 error:&v62];
      v47 = v62;
      if ((v46 & 1) == 0)
      {
        sub_1000E0000();
        goto LABEL_62;
      }
    }

    else
    {
      v47 = 0;
    }

    v48 = v47;
    v61 = v47;
    v49 = [v57 copyItemAtPath:v39 toPath:v59 error:&v61];
    v47 = v61;

    if (v49)
    {
      v41 = v41;
      v50 = v41;
      manifestPath = v59;
      goto LABEL_51;
    }

    sub_1000E00B8();
    manifestPath = v59;
  }

  else
  {
    sub_1000DFF5C();
    v47 = 0;
  }

LABEL_62:
  if (error)
  {
    v52 = v47;
    v50 = 0;
    *error = v47;
  }

  else
  {
    v50 = 0;
  }

LABEL_51:

  return v50;
}

- (id)_contentPlistPathForManifest:(id)manifest
{
  manifestCopy = manifest;
  getInfo = [manifestCopy getInfo];
  v5 = [getInfo objectForKey:@"PartNumber"];

  getInfo2 = [manifestCopy getInfo];

  v7 = [getInfo2 objectForKey:@"Revision"];

  if (v5)
  {
    if (v7)
    {
      v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%@_%d.plist", @"/var/MSDWorkContainer/.MSD_cache_content_plist", v5, [v7 intValue]);
      goto LABEL_4;
    }

    sub_1000E025C();
  }

  else
  {
    sub_1000E02F8();
  }

  v8 = 0;
LABEL_4:

  return v8;
}

- (BOOL)enrolled
{
  v2 = +[MSDKeychainManager sharedInstance];
  v3 = [v2 getItemForKey:@"com.apple.mobilestoredemo.keychainItemID"];

  if (v3)
  {
    v4 = objc_alloc_init(MSDIsEnrolledRequest);
    v5 = +[MSDServerRequestHandler sharedInstance];
    v6 = [v5 handleRequestSync:v4];

    error = [v6 error];
    if (error)
    {
      isEnrolled = 0;
    }

    else
    {
      isEnrolled = [v6 isEnrolled];
    }
  }

  else
  {
    isEnrolled = 0;
  }

  return isEnrolled;
}

@end