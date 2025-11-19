uint64_t sub_1000038D8()
{
  v0 = +[MSDLocalMessageResponder sharedInstance];
  [v0 start];

  v1 = +[MSDTestInterface sharedInstance];
  return 0;
}

uint64_t sub_100003928()
{
  v0 = +[MSDLocalEventStreamHandler sharedInstance];
  [v0 start];

  return 0;
}

uint64_t sub_100003964()
{
  v0 = +[MSDMailProcessor sharedInstance];
  [v0 start];

  return 0;
}

uint64_t start(uint64_t a1, void **a2)
{
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_100004044;
  v57 = sub_100004054;
  v58 = 0;
  v3 = +[MSDTargetDevice sharedInstance];
  v4 = +[MSDHelperAgent sharedInstance];
  v42 = +[MSDProgressUpdater sharedInstance];
  v5 = objc_alloc_init(MSDLegacyMigrationHelper);
  v6 = [v3 isVerifiedDemoDevice];
  v7 = [v3 isOfflineMode];
  v8 = [v3 dcotaOfflineModeDevice];
  v9 = [v3 isVerifiedPOSDevice];
  v10 = [v3 isBetterTogetherDemo];
  v41 = v8;
  v11 = v4;
  v12 = sub_100063A54();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *a2;
    *buf = 136446210;
    v64 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s started", buf, 0xCu);
  }

  v14 = sub_100063A54();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(MSDLegacyMigrationHelper *)v5 osVersionStr];
    *buf = 138543362;
    v64 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "OS version: %{public}@", buf, 0xCu);
  }

  v16 = sub_100063A54();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v3 demodVersion];
    *buf = 138543362;
    v64 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "demod version: %{public}@", buf, 0xCu);
  }

  v18 = sub_100063A54();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v3 packageVersion];
    *buf = 138543362;
    v64 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Package version: %{public}@", buf, 0xCu);
  }

  if ([(MSDLegacyMigrationHelper *)v5 doPreSkyMigration])
  {
    [v3 clearUpNvramIfNeeded];
  }

  if ((v6 | v9))
  {
    [v3 setupWorkFolderForBootTask];
    if ([(MSDLegacyMigrationHelper *)v5 doPreSkyMigration])
    {
      [v3 migrateDemoDeviceToDemoVolume];
      [v3 clearUpF200FootprintIfNeeded];
    }

    [v3 createMobileStoreDemoCache];
  }

  else if (v7)
  {
    [v3 setupFactoryDemoDeviceMetadataFolder];
  }

  v20 = [v3 mode];
  *(v60 + 6) = v20;
  if (v20 - 1 <= 8)
  {
    v21 = os_transaction_create();
    v22 = v54[5];
    v54[5] = v21;
  }

  if (v6)
  {
    if ([(MSDLegacyMigrationHelper *)v5 doPreSkyMigration])
    {
      +[MSDBundleProgressTracker migratePreferencesFromLegacyDevicesIfNeeded];
    }

    if ([(MSDLegacyMigrationHelper *)v5 doPreSydneyMigration])
    {
      [v3 cleanUpPreferencesFile];
      if (([v3 migrateCellularSupportFlag] & 1) == 0)
      {
        v23 = sub_100063A54();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000C4688(v23);
        }
      }
    }

    [v42 loadBundles];
  }

  v24 = +[MSDKeychainManager sharedInstance];
  v25 = [v24 getItemForKey:@"com.apple.mobilestoredemo.keychainItemID"];
  v26 = v25 != 0;

  if (v26)
  {
    v27 = +[MSDCryptoHandler sharedInstance];
    [v27 createSecretKeyIfNeeded];

    if (v10)
    {
      v28 = +[MSDPairedWatchProxy sharedInstance];
      [v28 bootstrap];
    }

    v29 = +[MSDDemoPeerPairingManager sharedInstance];
    [v29 restorePairedPeersDataIfNeeded];

    v30 = +[MSDTestPreferences sharedInstance];
    v31 = [v30 enablePeerDemoService];

    if (v31)
    {
      v32 = +[MSDDemoPeerResponder sharedInstance];
      [v32 start];
    }
  }

  if (v6)
  {
    [(MSDLegacyMigrationHelper *)v5 saveOSVerionAfterMigration];
  }

  v33 = +[MSDWorkQueueSet sharedInstance];
  v34 = [v33 demoUpdateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000405C;
  block[3] = &unk_100169B98;
  v35 = v3;
  v44 = v35;
  v46 = &v59;
  v48 = v26;
  v49 = v9;
  v36 = v11;
  v45 = v36;
  v47 = &v53;
  v50 = v41;
  v51 = v6;
  v52 = v7;
  dispatch_async(v34, block);

  v37 = +[F13Server sharedInstance];
  v38 = sub_100063A54();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Starting the xpc and mail services as soon as device boot up.", buf, 2u);
  }

  sub_100003964();
  sub_1000038D8();
  sub_100003928();
  v39 = +[NSRunLoop currentRunLoop];
  [v39 run];

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);
  return 0;
}

void sub_100003FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004044(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000405C(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) allowSnapshotMode];
  v4 = +[MSDDemoUpdateStatusHub sharedInstance];
  v5 = +[MSDDemoUpdateController sharedInstance];
  v6 = +[MSDAccountManager sharedInstance];
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DeviceMode = %d. Checking startup tasks...", buf, 8u);
  }

  if (*(a1 + 64) == 1)
  {
    v9 = +[MSDLanguageAndRegionManager sharedInstance];
    [v9 restoreDeviceLanguageAndRegionIfNeeded];

    v10 = +[MSDBluetoothHelper sharedInstance];
    [v10 restoreBTPairingRecordIfNeeded];

    v11 = +[MSDContinuityHelper sharedInstance];
    [v11 restoreContinuityPairingRecordIfNeeded];

    [*v2 configureNetworkInterface];
    [*v2 waitForNetworkReachability];
    v12 = +[MSDS3UploadHandler sharedInstance];
    [v12 uploadDemoLogsIfNeeded];

    [*v2 registerCAHearbeatActivity];
    [*v2 configureGreyMatterAutoUpdate];
  }

  v13 = +[MSDUIHelper sharedInstance];
  [v4 registerDemoUpdateStatusDelegate:v13];

  v14 = +[MSDProgressUpdater sharedInstance];
  v93 = v4;
  [v4 registerDemoUpdateStatusDelegate:v14];

  v92 = [*(a1 + 32) getSavedRequest];
  v15 = [*(a1 + 32) getSavedFlag];
  v16 = a1 + 48;
  v17 = *(*(*(a1 + 48) + 8) + 24);
  if (v17 == 4)
  {
    v18 = +[MSDProgressUpdater sharedInstance];
    [v18 updateStage:201];

    v17 = *(*(*v16 + 8) + 24);
  }

  v19 = v17 == 2 || v17 == 4;
  if (v19 || v17 == 7 && (+[MSDOSUpdaterController sharedInstance](MSDOSUpdaterController, "sharedInstance"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 isOSUpdateInProgress], v27, (v28 & 1) == 0))
  {
    v20 = [*v2 getSavedCompleteByInterval];
    v21 = +[MSDDemoUpdateTimeKeeper sharedInstance];
    v22 = [v21 setCompletionTime:v20 reserveTimeForCleanup:1];

    if (v22)
    {
      sub_1000C46CC(v22, v2, buf);
      v23 = *buf;
      v24 = v93;
      v25 = v5;
      v26 = v6;
LABEL_109:
      v31 = v92;
      goto LABEL_121;
    }
  }

  if (*(*(*v16 + 8) + 24) || *(a1 + 65) == 1)
  {
    [*v2 holdPowerAssertion];
    v25 = v5;
    if (((*(*(*v16 + 8) + 24) != 5) & v3) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v25 = v5;
  if (v3)
  {
LABEL_19:
    [*v2 manageDeviceSnapshot:@"DeleteSnapshot"];
  }

LABEL_20:
  v26 = v6;
  if ([*v2 snapshotRevertFlagged])
  {
    [*v2 resetSystemTimeCache];
    [v6 forceiCloudKeychainToSyncWithServer];
    +[MSDGreyMatterHelper restorePrivateAccessTokens];
    [*v2 saveSnapshotRevertFlagged:0];
  }

  v29 = *(*(*v16 + 8) + 24);
  if (v29 >= 4)
  {
    if (v29 > 4)
    {
      if (v29 < 6)
      {
        v30 = +[MSDProgressUpdater sharedInstance];
        [v30 updateStage:100];

        v31 = v92;
        v24 = v93;
        if (v92)
        {
          [v93 demoUpdateCompleted:v92];
        }

        [*v2 deleteOperationRequestAndQuitHelper];
        [*v2 setupCoreAnalyticsLogsUploadTimer];
        [*v2 setupStoreHoursManager];
        [*v2 setupSnapshotRevertTimer];
        v32 = +[MSDDeviceDataCollector sharedInstance];
        [v32 setupCollectAppUsageDataTimer];

        if ([v6 iCloudAccountSignedIn])
        {
          [v6 setupTrustedPeerChangeNotificationObserver];
        }

        else if (([*v2 isPressDemoDevice] & 1) == 0)
        {
          [v6 disallowAccountModification];
        }

        v56 = [*v2 backgroundDownloadActive];
        v57 = sub_100063A54();
        v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
        if (!v56)
        {
          if (v58)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Background download not enabled.", buf, 2u);
          }

          goto LABEL_120;
        }

        if (v58)
        {
          v59 = [*v2 backgroundDownloadState];
          *buf = 134217984;
          *&buf[4] = v59;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Background download enabled and its status is:%lu", buf, 0xCu);
        }

        v60 = +[MSDBackgroundDownload sharedInstance];
        [v60 kickOffBackgroundDownload];
        goto LABEL_88;
      }

      if (v29 == 6)
      {
        goto LABEL_97;
      }

      if (v29 != 7)
      {
        if (v29 == 8)
        {
LABEL_97:
          sub_1000C4B10(a1 + 48, v2, buf);
          v23 = *buf;
LABEL_108:
          v24 = v93;
          goto LABEL_109;
        }

        goto LABEL_123;
      }

      sub_1000C49D0(v2);
LABEL_107:
      v23 = 0;
      goto LABEL_108;
    }

    if ((v15 & 4) != 0)
    {
      v55 = +[MSDUIHelper sharedInstance];
      [v55 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:1 disableIdleTimer:1];

      if (![v25 continueToUpdateAccountContent])
      {
        goto LABEL_107;
      }
    }

    else if ((v15 & 0x10) != 0)
    {
      v77 = +[MSDUIHelper sharedInstance];
      [v77 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:1 disableIdleTimer:0];

      if (![v25 continueToUpdateAssets])
      {
        goto LABEL_107;
      }
    }

    else if ((v15 & 0x20) != 0)
    {
      v78 = +[MSDUIHelper sharedInstance];
      [v78 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:1 disableIdleTimer:0];

      if (![v25 continueToUpdateOSPreferences])
      {
        goto LABEL_107;
      }
    }

    else
    {
      if ((v15 & 0x40) == 0)
      {
        v49 = [*v2 getSavedError];
        v50 = v49;
        if (v49)
        {
          if ([v49 code] == 3727741185)
          {
            v51 = [v50 localizedDescription];
            v52 = [v51 isEqualToString:@"Operation canceled."];

            if (v52)
            {
              [*v2 deleteOperationResponse];
            }
          }
        }

        if ([v25 migrateDataWithBlockingUI:*(*(*v16 + 8) + 24) startMigration:1])
        {
          [*(a1 + 32) configureNetworkInterface];
          [*(a1 + 32) waitForNetworkReachability];
          [*(a1 + 40) clearStagedDeviceAfterUpdateProcess];
          v53 = +[MSDContentCacheManager sharedInstance];
          [v53 clearCache];

          [*(a1 + 32) cleanUpBackgroundState:1];
          [v25 setIOSSpecificSettings];
          [v25 setAutomatedDeviceGroupStoreID];
          if ([v25 continueToUpdateDemoContent])
          {
            v54 = *v2;
            v96[0] = _NSConcreteStackBlock;
            v96[1] = 3221225472;
            v96[2] = sub_100004F28;
            v96[3] = &unk_100169B48;
            v97 = v54;
            [v97 waitForBuddy:v96];
          }
        }

        goto LABEL_107;
      }

      v79 = +[MSDUIHelper sharedInstance];
      [v79 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:1 disableIdleTimer:1];

      if (![v25 continueToContinuityLinking])
      {
        goto LABEL_107;
      }
    }

    [*v2 switchModeImmediately:5];
    goto LABEL_107;
  }

  if (v29 > 1)
  {
    if (v29 != 2)
    {
      v90 = sub_100063A54();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "kMSDModePreRebootDataStaged is obsoleted in Azul so we should NOT reach here!", buf, 2u);
      }

      v91 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"kMSDModePreRebootDataStaged is obsoleted in Azul" userInfo:0];
      objc_exception_throw(v91);
    }

    v45 = +[MSDUIHelper sharedInstance];
    [v45 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:1];

    if ((v15 & 4) != 0)
    {
      if ([*v2 switchModeImmediately:4])
      {
        goto LABEL_107;
      }

      v61 = sub_100063A54();
      v31 = v92;
      v24 = v93;
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }
    }

    else
    {
      if ((v15 & 0x40) == 0)
      {
        v31 = v92;
        v24 = v93;
        if ((v15 & 0x10) != 0)
        {
          if ([*v2 switchModeImmediately:4])
          {
            goto LABEL_120;
          }

          v61 = sub_100063A54();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            sub_1000C47AC();
          }
        }

        else if ((v15 & 8) != 0)
        {
          v80 = sub_100063A54();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *&buf[4] = 5;
            *&buf[8] = 1024;
            *&buf[10] = 2;
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Switch to mode %d from mode %d to complete snapshot revert.", buf, 0xEu);
          }

          if ([*v2 switchModeImmediately:5])
          {
            goto LABEL_120;
          }

          v61 = sub_100063A54();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            sub_1000C4818(v61, v81, v82, v83, v84, v85, v86, v87);
          }
        }

        else
        {
          v46 = *v2;
          if ((v15 & 0x20) != 0)
          {
            if ([v46 switchModeImmediately:4])
            {
              goto LABEL_120;
            }

            v61 = sub_100063A54();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              sub_1000C488C();
            }
          }

          else
          {
            [v46 deleteConfigurationApp];
            if ([*v2 backgroundDownloadState] == 1 || objc_msgSend(*v2, "backgroundDownloadState") == 2)
            {
              [*v2 setBackgroundDownloadState:4];
              [*v2 setBackgroundDownloadActive:0];
            }

            v47 = +[MSDPlatform sharedInstance];
            if ([v47 macOS])
            {
              v48 = 1;
            }

            else
            {
              v88 = +[MSDPlatform sharedInstance];
              v48 = [v88 iOS];
            }

            if (v48 && v15 == 2)
            {
              v89 = +[MSDProgressUpdater sharedInstance];
              [v89 updateStage:17];

              v60 = +[MSDPricingUpdateController sharedInstance];
              [v60 setSwitchModeAfterCompletion:1];
              goto LABEL_88;
            }

            if (v15 & 1) == 0 || ([v25 updateDemoContent])
            {
              goto LABEL_120;
            }

            v61 = sub_100063A54();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Device is busy?", buf, 2u);
            }
          }
        }

LABEL_119:

        goto LABEL_120;
      }

      v31 = v92;
      v24 = v93;
      if ([*v2 switchModeImmediately:4])
      {
        goto LABEL_120;
      }

      v61 = sub_100063A54();
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }
    }

    sub_1000C4740();
    goto LABEL_119;
  }

  if (!v29)
  {
    v33 = [*v2 cachedBundleInstallState];
    v34 = [v33 isEqualToString:@"cachedBundleInstallWaitMigration"];

    if (v34)
    {
      v35 = os_transaction_create();
      v36 = *(*(a1 + 56) + 8);
      v37 = *(v36 + 40);
      *(v36 + 40) = v35;

      v38 = +[MSDUIHelper sharedInstance];
      [v38 startFullScreenUIWith:@"CACHED_BUNDLE_INSTALL" allowCancel:1 disableIdleTimer:1];

      v39 = sub_100063A54();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Data Migration in process, waiting to finish...", buf, 2u);
      }

      v40 = [v25 migrateDataWithBlockingUI:*(*(*(a1 + 48) + 8) + 24) startMigration:0];
      v41 = +[MSDLanguageAndRegionManager sharedInstance];
      [v41 restoreDeviceLanguageAndRegionIfNeeded];

      [*(a1 + 40) clearStagedDeviceAfterUpdateProcess];
      [*(a1 + 32) setCachedBundleInstallState:@"cachedBundleInstallDone"];
      if ((*(a1 + 66) & 1) == 0)
      {
        [*v2 cleanupDummyPreferenceFile];
        [*v2 destroyWorkFolderForBootTask];
      }

      v42 = *(*(a1 + 56) + 8);
      v43 = *(v42 + 40);
      *(v42 + 40) = 0;

      v44 = +[MSDUIHelper sharedInstance];
      [v44 stopFullScreenUI:0];

      if ((v40 & 1) == 0)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v62 = [*v2 cachedBundleInstallState];
      v63 = [v62 isEqualToString:@"cachedBundleInstallInProgress"];

      if (v63)
      {
        v64 = +[MSDWorkQueueSet sharedInstance];
        v65 = [v64 demoUpdateQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100004F68;
        block[3] = &unk_100169B70;
        v95 = *v2;
        dispatch_async(v65, block);

        goto LABEL_107;
      }
    }

    v66 = sub_100063A54();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v67 = *(a1 + 67);
      v68 = *(a1 + 68);
      v69 = *(a1 + 66);
      *buf = 67109632;
      *&buf[4] = v67;
      *&buf[8] = 1024;
      *&buf[10] = v68;
      v99 = 1024;
      v100 = v69;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Device is DCOTA device: %{BOOL}d; is Offline Mode Device: %{BOOL}d; is DCOTA Offline Mode Device:%{BOOL}d", buf, 0x14u);
    }

    v31 = v92;
    v24 = v93;
    if (*(a1 + 67) & 1) == 0 && *(a1 + 66) != 1 || (*(a1 + 64))
    {
      goto LABEL_120;
    }

    v70 = [*v2 getDemoEnrollmentFlag];

    v71 = [*v2 getDemoEnrollmentFlag];
    v72 = [v71 isEqualToString:@"enrollmentSuccess"];

    v73 = sub_100063A54();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v70 != 0;
      *&buf[8] = 1024;
      *&buf[10] = v72;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Device did attempt enrollment:  %{BOOL}d; success: %{BOOL}d", buf, 0xEu);
    }

    if ((v70 == 0) | v72 & 1)
    {
      goto LABEL_120;
    }

    v74 = os_transaction_create();
    v75 = *(*(a1 + 56) + 8);
    v76 = *(v75 + 40);
    *(v75 + 40) = v74;

    v60 = +[MSDFindMyHub sharedInstance];
    [v60 handleEnrollmentRetryUponFirstLaunch];
LABEL_88:

LABEL_120:
    v23 = 0;
    goto LABEL_121;
  }

  if (v29 != 1)
  {
LABEL_123:
    sub_1000C4AA8();
    goto LABEL_107;
  }

  v31 = v92;
  v24 = v93;
  sub_1000C48F8(v2, v93, v92, buf);
  v23 = *buf;
LABEL_121:
}

id sub_100004F28(uint64_t a1)
{
  [*(a1 + 32) markContentInstallingInstalled];
  v2 = *(a1 + 32);

  return [v2 switchModeImmediately:5];
}

id sub_100004F68(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cached bundle install in progress, resuming cached bundle install", v4, 2u);
  }

  return [*(a1 + 32) kickOffCachedBundleInstall];
}

void sub_100004FEC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_10000532C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000055E4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100005644(id a1)
{
  qword_1001A5598 = objc_alloc_init(F13Server);

  _objc_release_x1();
}

void sub_100005FE4(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C4EFC(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained extension];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = v11;
  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 extension];
  v15 = [v14 _plugIn];
  if ([v15 active])
  {

LABEL_6:
    goto LABEL_7;
  }

  v28 = objc_loadWeakRetained((a1 + 32));
  v29 = [v28 appInstallationInProgress];

  if ((v29 & 1) == 0)
  {
    v30 = sub_100063A54();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C4F34(v30, v31, v32, v33, v34, v35, v36, v37);
    }

    v38 = objc_loadWeakRetained((a1 + 32));
    v39 = [v38 extension];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100006260;
    v42[3] = &unk_100169C50;
    objc_copyWeak(&v43, (a1 + 32));
    [v39 beginExtensionRequestWithInputItems:0 completion:v42];

    objc_destroyWeak(&v43);
    goto LABEL_18;
  }

LABEL_7:
  v16 = objc_loadWeakRetained((a1 + 32));
  v17 = [v16 appInstallationInProgress];

  if (v17)
  {
    v18 = sub_100063A54();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "F13Server: Extension not running, but not launching extension because app installation is in progress", v41, 2u);
    }

LABEL_13:

    goto LABEL_18;
  }

  v19 = objc_loadWeakRetained((a1 + 32));
  v20 = [v19 extension];

  if (!v20)
  {
    v18 = sub_100063A54();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C4F6C(v18, v21, v22, v23, v24, v25, v26, v27);
    }

    goto LABEL_13;
  }

LABEL_18:
  v40 = objc_loadWeakRetained((a1 + 32));
  [v40 verifyExtensionIsRunning];
}

void sub_100006260(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    WeakRetained = sub_100063A54();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "F13Server: Error launching extension: %{public}@", &v8, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setExtensionContextIdentifier:v5];
  }
}

void sub_1000063B8(uint64_t a1)
{
  v2 = [*(a1 + 32) extensionContextIdentifier];

  if (v2)
  {
    v3 = [*(a1 + 32) extension];
    v4 = [*(a1 + 32) extensionContextIdentifier];
    [v3 cancelExtensionRequestWithIdentifier:v4];

    [*(a1 + 32) setExtensionContextIdentifier:0];
    v5 = *(a1 + 32);

    [v5 setExtension:0];
  }
}

void sub_100006A2C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100006E1C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100006E8C(id a1)
{
  qword_1001A55A8 = objc_alloc_init(MSDAudioController);

  _objc_release_x1();
}

void sub_100007328(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 objectForKeyedSubscript:kFigRoutingContextNotificationPayloadKey_RouteConfigUpdateReason];
  if ([v5 isEqualToString:kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonStarted])
  {
    *a3 = 1;
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void sub_100007614(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 objectForKeyedSubscript:kFigRoutingContextNotificationPayloadKey_RouteConfigUpdateReason];
  if (([v5 isEqualToString:kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedSuccess] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedFailed))
  {
    *a3 = 1;
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

id sub_100007D8C(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MSDAudioController: Received notification of available routes changed!", v4, 2u);
  }

  [*(a1 + 32) lock];
  [*(a1 + 32) signal];
  return [*(a1 + 32) unlock];
}

void sub_10000813C(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:kFigRoutingContextNotificationPayloadKey_RouteConfigUpdateID];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MSDAudioController: Route config updated with info: %{public}@", buf, 0xCu);
  }

  if ([*(a1 + 32) isEqualToString:v4])
  {
    (*(*(a1 + 48) + 16))();
  }
}

BOOL sub_1000083A0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_100008700(id a1)
{
  qword_1001A55B8 = objc_alloc_init(MSDConfigurationProfileManager);

  _objc_release_x1();
}

void sub_100009060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009078(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5AD8();
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100009A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100009A80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100009A98(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received completion notification with info: %{public}@", &v9, 0xCu);
  }

  v5 = [v3 objectForKey:@"Result"];
  *(*(*(a1 + 40) + 8) + 24) = [v5 BOOLValue];

  v6 = [v3 objectForKey:@"Error"];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000ACF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10000AD18(uint64_t a1, void *a2)
{
  v4 = a2;
  context = objc_autoreleasePoolPush();
  v5 = [v4 setupIntraComponentDependency:(*(a1 + 48) & 1) == 0];
  v6 = *(*(a1 + 32) + 8);
  v19 = v4;
  if (*(v6 + 40))
  {
    [v4 addInstallDependency:?];
    v6 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v6 + 40), a2);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v7 objectForKey:v12];
        v14 = [*(*(*(a1 + 40) + 8) + 40) objectForKey:v12];
        if (v14)
        {
          v15 = [v13 firstObject];
          v16 = [v14 lastObject];
          v17 = sub_100063A54();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v21 = [v15 component];
            v20 = [v16 component];
            *buf = 138413058;
            v27 = v15;
            v28 = 2112;
            v29 = v21;
            v30 = 2112;
            v31 = v16;
            v32 = 2112;
            v33 = v20;
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Setting up inter-operation dependency: %@(%@) -> %@(%@)", buf, 0x2Au);
          }

          [v15 addDependency:v16];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v9);
  }

  [*(*(*(a1 + 40) + 8) + 40) addEntriesFromDictionary:v7];
  objc_autoreleasePoolPop(context);
}

void sub_10000BBB4(id a1)
{
  qword_1001A55C8 = objc_alloc_init(MSDS3UploadHandler);

  _objc_release_x1();
}

void sub_10000BF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000BF44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000BF5C(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[MSDHelperAgent sharedInstance];
  v4 = [v3 collectDemoLogsToFolder:*(a1 + 32) ofType:*(a1 + 72)];

  v5 = sub_100063A54();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Collection of logs succeeded, lets upload these logs.", buf, 2u);
    }

    v7 = objc_alloc_init(MSDS3UploadRequest);
    [(MSDS3UploadRequest *)v7 setS3url:*(a1 + 40)];
    [(MSDS3UploadRequest *)v7 setLogFilePath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/DekotaLogs.tar.gz"];
    [(MSDS3UploadRequest *)v7 setRetryAttempts:*(a1 + 80)];
    [(MSDS3UploadRequest *)v7 setHttpHeaders:*(a1 + 48)];
    v8 = +[MSDServerRequestHandler sharedInstance];
    v9 = [v8 handleRequestSync:v7];

    v10 = [v9 error];

    v11 = sub_100063A54();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = [v9 error];
        v14 = [v13 code];
        v15 = [v9 error];
        v16 = [v15 localizedDescription];
        *buf = 134218242;
        v25 = v14;
        v26 = 2114;
        v27 = v16;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Log upload failed. Inform hub of error. Error: %ld, Reason: %{public}@", buf, 0x16u);
      }

      v17 = [v9 error];
      v18 = *(*(a1 + 64) + 8);
      v11 = *(v18 + 40);
      *(v18 + 40) = v17;
    }

    else if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Log upload completed successfully.", buf, 2u);
    }

    v21 = *(*(a1 + 64) + 8);
    obj = *(v21 + 40);
    [v2 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/DekotaLogs.tar.gz" error:&obj];
    objc_storeStrong((v21 + 40), obj);
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Log collection failed. Inform hub of error.", buf, 2u);
    }

    v19 = *(*(a1 + 64) + 8);
    v22 = *(v19 + 40);
    sub_1000C1390(&v22, 3727744742, @"Failed to upload MobileStoreDemo logs to S3.");
    v20 = v22;
    v7 = *(v19 + 40);
    *(v19 + 40) = v20;
  }

  [*(a1 + 56) setUploadInProgress:0];
  [*(a1 + 56) demoLogUploadCompleted:*(*(*(a1 + 64) + 8) + 40)];
}

void sub_10000C708(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000D210(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000D254(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000D26C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
}

void sub_10000D310(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void sub_10000D378(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void sub_10000D3E0(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void sub_10000D448(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void sub_10000D8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10000D8E4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
}

void sub_10000D988(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void sub_10000DD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10000DD60(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void sub_10000DDC8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void sub_10000E020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000E048(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void sub_10000E3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000E3E8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000E664(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100063A54();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6074(v6);
    }

    v9 = v6;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 ak_redactedCopy];
    v14 = 138543362;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Account authentication completed with results: %{public}@", &v14, 0xCu);
  }

  if (![*(a1 + 32) _isAllowListedAccount:*(a1 + 40) withAuthResults:v5])
  {
    v9 = [NSError errorDomainMSDWithCode:3727741044 message:@"Account is not allowed."];
LABEL_10:
    v13 = v9;
    v12 = 0;
    goto LABEL_11;
  }

  v11 = [NSMutableDictionary dictionaryWithDictionary:v5];
  [v11 setObject:*(a1 + 48) forKeyedSubscript:AKAuthenticationRawPasswordKey];
  v12 = [v11 copy];

  v13 = 0;
LABEL_11:
  (*(*(a1 + 56) + 16))();
}

void sub_10000EAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000EB20(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = sub_100063A54();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Signing in to Apple ID completed!", v15, 2u);
    }

    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6100();
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v5 allValues];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 error];

          if (v12)
          {
            v8 = [v11 error];
            goto LABEL_17;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_17:

  (*(*(a1 + 32) + 16))();
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;
}

void sub_10000F090(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([v6 statusCode] - 200 > 0x63)
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000C61A4();
    }

    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = [NSError errorDomainMSDWithCode:3727744512 message:@"Unexpected server response."];
    }

    v11 = v13;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = v6;
    v9 = [AAiCloudTermsAgreeRequest alloc];
    v10 = [v8 agreeURL];

    v11 = [v9 initWithURLString:v10 account:*(a1 + 32)];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000F21C;
    v14[3] = &unk_100169EE0;
    v15 = *(a1 + 40);
    [v11 performRequestWithHandler:v14];
  }
}

void sub_10000F21C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = [a3 statusCode] - 200;
  v8 = sub_100063A54();
  v9 = v8;
  if (v7 > 0x63)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6214();
    }

    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = [NSError errorDomainMSDWithCode:3727744512 message:@"Unexpected server response."];
    }

    v11 = v10;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully agreed to iCloud terms!", v12, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000F574(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = sub_100063A54();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Signing out from Apple ID completed!", v13, 2u);
    }

    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6284();
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v5 allValues];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v11 error];

          if (v12)
          {
            v8 = [v11 error];
            goto LABEL_17;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_17:

  (*(*(a1 + 32) + 16))();
}

void sub_10000F734(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Signing out from Apple ID completed!", v9, 2u);
    }

    v8 = 0;
  }

  else
  {
    v8 = v5;
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000C62F4(v8);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000F9E4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6380(v5);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000FEC8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = sub_100063A54();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "iCloud account features have been successfully updated!", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1000C6480(v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100010088(uint64_t a1, char a2)
{
  v4 = sub_100063A54();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "'Find My' service has been successfully enabled!", buf, 2u);
    }

    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Toggling 'Send Last Location'...", buf, 2u);
    }

    v7 = +[FMDFMIPManager sharedInstance];
    v8 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100010224;
    v10[3] = &unk_100169F80;
    v11 = *(a1 + 32);
    [v7 setLowBatteryLocateEnabled:v8 withCompletion:v10];

    v9 = v11;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000C650C();
    }

    v9 = [NSError errorDomainMSDWithCode:3727744768 message:@"An error has occurred."];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100010224(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100063A54();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6540(v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "'Send Last Location' has been successfully toggled!", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001068C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [a2 objectForKeyedSubscript:AKAuthenticationPasswordKey];
    [v3 aa_setPassword:v4];

    v5 = [[AAFMIPAuthenticateRequest alloc] initWithAccount:*(a1 + 32)];
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending AAFMIPAuthenticateRequest...", buf, 2u);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000107FC;
    v9[3] = &unk_100169FF8;
    v11 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v5 performRequestWithHandler:v9];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 48) + 16);

    v8();
  }
}

void sub_1000107FC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = [v10 fmipWipeToken];
  v12 = v11;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000D254;
  v31 = sub_10000D264;
  v32 = 0;
  if (v10 && v11)
  {
    v13 = sub_100063A54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received AAFMIPAuthenticateResponse!", buf, 2u);
    }

    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Disabling 'Find My' service...", buf, 2u);
    }

    v15 = +[NSNotificationCenter defaultCenter];
    v16 = AAUIDeviceLocatorStateDidChangeNotification;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100010B14;
    v23[3] = &unk_100169FD0;
    v24 = *(a1 + 32);
    v26 = &v27;
    v25 = *(a1 + 40);
    v17 = [v15 addObserverForName:v16 object:0 queue:0 usingBlock:v23];
    v18 = v28[5];
    v28[5] = v17;

    [*(a1 + 32) disableInContext:2 withWipeToken:v12];
    v19 = v24;
  }

  else
  {
    v20 = sub_100063A54();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [v9 localizedDescription];
      sub_1000C6600(v21, buf, v20);
    }

    if (v9)
    {
      v22 = v9;
    }

    else
    {
      v22 = [NSError errorDomainMSDWithCode:3727741043 message:@"Failed to authenticate account with server."];
    }

    v19 = v22;
    (*(*(a1 + 40) + 16))();
  }

  _Block_object_dispose(&v27, 8);
}

void sub_100010AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010B14(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) isStateKnown];
    v4 = [*(a1 + 32) isChangingState];
    v5 = [*(a1 + 32) isEnabled];
    v11[0] = 67109632;
    v11[1] = v3;
    v12 = 1024;
    v13 = v4;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "'Find My' service state changed! isStateKnown = %{BOOL}d isChaningState = %{BOOL}d isEnabled = %{BOOL}d", v11, 0x14u);
  }

  result = [*(a1 + 32) isStateKnown];
  if (result)
  {
    result = [*(a1 + 32) isChangingState];
    if ((result & 1) == 0)
    {
      result = [*(a1 + 32) isEnabled];
      if ((result & 1) == 0)
      {
        v7 = sub_100063A54();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11[0]) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "'Find My' service is now disabled.", v11, 2u);
        }

        v8 = +[NSNotificationCenter defaultCenter];
        [v8 removeObserver:*(*(*(a1 + 48) + 8) + 40)];

        v9 = *(*(a1 + 48) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = 0;

        return (*(*(a1 + 40) + 16))();
      }
    }
  }

  return result;
}

void sub_1000116E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011710(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100063A54();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000C67E4(v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iCloud keychain has been successfully synced!", v8, 2u);
  }

  (*(*(a1 + 32) + 16))();
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_10001223C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removal of account completed with success: %@, error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000123C0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10001268C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000126B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000126CC(uint64_t a1)
{
  v2 = MISProvisioningProfileGetUUID();
  [*(*(*(a1 + 32) + 8) + 40) addObject:v2];

  return 1;
}

void sub_100012830(id a1)
{
  qword_1001A55D8 = objc_alloc_init(MSDAnalytics);

  _objc_release_x1();
}

void sub_100012C7C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100014A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100014A64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100014A7C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingPathComponent:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (([*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"/"] & 1) == 0)
  {
    v9 = [*(a1 + 32) nonContainerizedContentRoots];
    v10 = [v9 containsObject:*(*(*(a1 + 40) + 8) + 40)];

    if (v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

void sub_1000159CC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint8_t buf)
{

  _os_log_error_impl(a1, v19, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

void sub_1000159F8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

uint64_t sub_100015D64(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a6;
  v11 = 0;
  if (a1 == 1 && a2 == 1)
  {
    v12 = [NSString stringWithUTF8String:a4];
    v27 = 0;
    v13 = [NSFileManager isSQLiteFile:v12 error:&v27];
    v14 = v27;

    if (v13)
    {
      v15 = sub_100063A54();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C85A4();
      }

      v16 = [NSString stringWithUTF8String:a4];
      v17 = [NSString stringWithUTF8String:a5];
      v26 = v14;
      v18 = [NSFileManager copySQLiteFile:v16 toPath:v17 timeout:&v26 error:0.1];
      v19 = v26;

      v20 = sub_100063A54();
      v21 = v20;
      if (v18)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C86A0();
        }

        v22 = [NSString stringWithUTF8String:a5];
        [v10 addObject:v22];
        v11 = 1;
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000C8624();
        }

        v22 = sub_100063A54();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "falling back to default copyfile() behavior", v25, 2u);
        }

        v11 = 0;
      }
    }

    else
    {
      if (!v14)
      {
        v11 = 0;
        goto LABEL_22;
      }

      v23 = sub_100063A54();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000C8508(a4, v14);
      }

      v22 = sub_100063A54();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "falling back to default copyfile() behavior", v25, 2u);
      }

      v11 = 0;
      v19 = v14;
    }
  }

LABEL_22:

  return v11;
}

void *sub_100016B5C(uint64_t a1)
{

  return sub_1000C1390(v1, 0, a1);
}

void sub_100017108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100017148(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100017160(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v7 = v6;
  if (!a2 || v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000C8C80(a1, v7);
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100017378(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100018914(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100018934(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

BOOL sub_100018960(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_100018978(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_10001B0D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10001B5C8(id a1)
{
  qword_1001A55E8 = objc_alloc_init(MSDAppPrivacyPermissionsHelper);

  _objc_release_x1();
}

void sub_10001CC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001CCB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001CCD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000CA0E8();
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 name];
          v14 = [v13 isEqualToString:@"com.apple.preferences.networkprivacy"];

          if (v14)
          {
            objc_storeStrong((*(*(a1 + 32) + 8) + 40), v12);
          }
        }

        v9 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v15 = *(*(*(a1 + 32) + 8) + 40);
    if (!v15)
    {
      v16 = [[NEConfiguration alloc] initWithName:@"com.apple.preferences.networkprivacy" grade:2];
      v17 = *(*(a1 + 32) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v15 = *(*(*(a1 + 32) + 8) + 40);
    }

    v19 = [v15 pathController];

    if (!v19)
    {
      v20 = objc_alloc_init(NEPathController);
      [*(*(*(a1 + 32) + 8) + 40) setPathController:v20];
    }

    v7 = [*(*(*(a1 + 32) + 8) + 40) pathController];
    [v7 setEnabled:1];
  }

  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void sub_10001D088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10001D0AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000CA15C(v3);
    }
  }

  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void sub_100020E84(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100021218(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 120));
  _Unwind_Resume(a1);
}

void sub_10002126C(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000CA780(a1);
  }

  v3 = [NSError errorDomainMSDWithCode:3727741186 message:@"Failed to establish xpc connection to demod."];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hanldeAuthCompletionWithError:v3];
}

void sub_1000212F8(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000CA810(a1);
  }

  v3 = [NSError errorDomainMSDWithCode:3727741186 message:@"Failed to establish xpc connection to demod."];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hanldeAuthCompletionWithError:v3];
}

void sub_100021384(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hanldeAuthCompletionWithError:v3];
}

void sub_1000213E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePasswordPromptWithFlags:a2 throttleSeconds:a3];
}

void sub_1000216EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _activate];
}

void sub_1000217F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100021818(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100063A54();
  v5 = v4;
  if (!v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      goto LABEL_10;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v11 = 138543362;
    v12 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Handler successfully activated!", &v11, 0xCu);
LABEL_8:

    goto LABEL_9;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000CA8A0(a1, v3);
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 completionHandler];

  if (v7)
  {
    v8 = [v3 localizedDescription];
    v5 = [NSError errorDomainMSDWithCode:3727741107 message:@"Cannot authenticate demo peer." reason:v8];

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = [WeakRetained completionHandler];
    (v10)[2](v10, v5);

    goto LABEL_8;
  }

LABEL_10:
}

void sub_100021DD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchPairingSecretFromServer];
}

void sub_100021FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100022010(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000220EC;
  v7[3] = &unk_10016A1C8;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
}

void sub_1000220EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleKVStoreResponse:*(a1 + 32)];
}

void sub_100022458(id a1)
{
  qword_1001A55F8 = objc_alloc_init(MSDContinuityHelper);

  _objc_release_x1();
}

void sub_100022B3C(id a1)
{
  qword_1001A5608 = objc_alloc_init(MSDSessionMetrics);

  _objc_release_x1();
}

void sub_100022D4C(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) transactionMetrics];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 resourceFetchType] != 3)
        {
          v8 = [[MSDSessionTransactionData alloc] initWithData:v7];
          [*(a1 + 40) saveToFile:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100024DE8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_impl(a1, v17, OS_LOG_TYPE_DEFAULT, a4, &buf, 0xCu);
}

void sub_100024E1C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

BOOL sub_100024E50(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void sub_100024E88(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

void sub_100025110(id a1)
{
  qword_1001A5618 = objc_alloc_init(MSDPreferencesFile);

  _objc_release_x1();
}

void sub_100025AE8(id a1)
{
  v1 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata" stringByAppendingPathComponent:@"com.apple.MobileStoreDemo"];
  v4 = [v1 stringByAppendingPathExtension:@"plist"];

  v2 = [NSURL fileURLWithPath:v4 isDirectory:0];
  v3 = qword_1001A5628;
  qword_1001A5628 = v2;
}

void sub_100025C1C(id a1)
{
  v1 = objc_alloc_init(MSDTestInterface);
  v2 = qword_1001A5638;
  qword_1001A5638 = v1;

  v3 = qword_1001A5638;

  [v3 start];
}

void sub_1000262C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 userInfo];
  [v2 sendTestEvents:v3];
}

void sub_100026E4C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v4 groupContainerPaths];
  v7 = [v5 path];

  [v8 setObject:v7 forKey:v6];
}

void sub_100026EE0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v4 groupContainerPaths];
  v7 = [v5 path];

  [v8 setObject:v7 forKey:v6];
}

void sub_1000275B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Clearing app data container: %{public}@", &v8, 0xCu);
  }

  [*(a1 + 32) _createUninstallOperationForContainer:v5 ofType:@"AppData" containerPath:v6 isContainerized:1];
}

void sub_100027694(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Clearing plugin data container: %{public}@", &v8, 0xCu);
  }

  [*(a1 + 32) _createUninstallOperationForContainer:v5 ofType:@"ExtensionData" containerPath:v6 isContainerized:1];
}

void sub_100027778(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Clearing group data container: %{public}@", &v8, 0xCu);
  }

  [*(a1 + 32) _createUninstallOperationForContainer:v5 ofType:@"GroupData" containerPath:v6 isContainerized:1];
}

void sub_1000285D4(id a1)
{
  qword_1001A5650 = objc_alloc_init(MSDDemoPeerCommander);

  _objc_release_x1();
}

void sub_100028ADC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028BC4;
  block[3] = &unk_10016A588;
  v12 = v6;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void sub_100028BC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 localizedDescription];
    v11 = [NSError errorDomainMSDWithCode:3727741108 message:@"Cannot communicate with demo peer." reason:v3];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = [*(a1 + 40) payload];
    v5 = [v4 objectForKeyedSubscript:@"Result"];

    if (v5 && [v5 BOOLValue])
    {
      v6 = [*(a1 + 40) payload];
      v7 = [v6 mutableCopy];

      [v7 removeObjectForKey:@"Result"];
      [v7 removeObjectForKey:@"Reason"];
      v8 = *(a1 + 48);
      v9 = [NSDictionary dictionaryWithDictionary:v7];
      (*(v8 + 16))(v8, v9, 0);

      v11 = 0;
    }

    else
    {
      v10 = [*(a1 + 40) payload];
      v7 = [v10 objectForKeyedSubscript:@"Reason"];

      if (v7)
      {
        [NSError errorDomainMSDWithCode:3727741109 message:@"Cannot execute command on demo peer." reason:v7];
      }

      else
      {
        [NSError errorDomainMSDWithCode:3727741109 message:@"Cannot execute command on demo peer."];
      }
      v11 = ;
      (*(*(a1 + 48) + 16))();
    }
  }
}

void sub_1000297A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 96));
  _Unwind_Resume(a1);
}

void sub_1000297F0(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000CC4C0();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setXpcConnection:0];
}

void sub_100029850(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000CC4F4();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setXpcConnection:0];
}

void sub_1000298B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained xpcConnection];

  if (v3)
  {
    v4 = [*(a1 + 32) discoveredPeers];
    v5 = [v4 allValues];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = objc_loadWeakRetained((a1 + 40));
          v13 = [v12 xpcConnection];
          v14 = [v13 remoteObjectProxy];
          [v14 providerDidDiscoverNewPeer:v11];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }
}

void sub_100029D48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 localizedDescription];
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Pairing completed with peer: %{public}@ error: %{public}@", &v8, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
  v7 = [*(a1 + 40) pairingHandlers];
  [v7 removeObjectForKey:*(a1 + 48)];
}

void sub_10002A044(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v7 = [*(a1 + 32) discoveredPeers];
    v8 = [v7 objectForKey:*(a1 + 40)];

    if (v8)
    {
      v9 = [v21 objectForKeyedSubscript:@"DeviceInfo"];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 objectForKeyedSubscript:kMSDKPeerDemoDevicePropertyDeviceName];
        if (v11)
        {
          v12 = [v8 deviceName];
          v13 = [v11 isEqualToString:v12];

          if ((v13 & 1) == 0)
          {
            v14 = +[MSDDemoPeerPairingManager sharedInstance];
            [v14 updateDeviceNameForPairedPeerOfUUID:*(a1 + 40) withNewName:v11];
          }
        }

        v15 = [v21 objectForKeyedSubscript:@"ProtocolVersion"];
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = &off_10017AF48;
        }

        v17 = [v10 mutableCopy];
        [v17 setObject:v16 forKey:@"ProtocolVersion"];
        [v8 refreshDevicePropertiesUsingProperties:v17];
        v18 = [*(a1 + 32) xpcConnection];

        if (v18)
        {
          v19 = [*(a1 + 32) xpcConnection];
          v20 = [v19 remoteObjectProxy];
          [v20 providerDidUpdateDeviceInfoOnPeerOfID:*(a1 + 40) withNewProperties:v17];
        }

        v6 = 0;
      }

      else
      {
        v6 = [NSError errorDomainMSDWithCode:3727741109 message:@"Cannot execute command on demo peer."];
      }
    }

    else
    {
      v6 = [NSError errorDomainMSDWithCode:3727741104 message:@"Cannot find specified demo peer."];
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10002AC78(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v23 = a1;
    v10 = [a2 objectForKeyedSubscript:@"AppArchiveList"];
    v11 = [NSMutableArray arrayWithCapacity:0];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v8 = 0;
      v15 = *v26;
LABEL_5:
      v16 = 0;
      v17 = v8;
      while (1)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v25 + 1) + 8 * v16);
        v19 = objc_opt_class();
        v24 = v17;
        v20 = [NSKeyedUnarchiver unarchivedObjectOfClass:v19 fromData:v18 error:&v24];
        v8 = v24;

        if (!v20)
        {
          break;
        }

        [v11 addObject:v20];

        v16 = v16 + 1;
        v17 = v8;
        if (v14 == v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v14)
          {
            goto LABEL_5;
          }

          goto LABEL_17;
        }
      }

      v21 = sub_100063A54();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000CC528(v8);
      }

      v22 = [v8 localizedDescription];
      v7 = [NSError errorDomainMSDWithCode:3727741108 message:@"Cannot communicate with demo peer." reason:v22];

      v6 = 0;
      if (v7)
      {
        v9 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v8 = 0;
LABEL_17:

      v6 = 0;
    }

    v9 = [NSArray arrayWithArray:v11];
    v7 = 0;
LABEL_19:

    a1 = v23;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10002B0F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = [a2 objectForKeyedSubscript:@"AppIconArchiveDict"];
    v11 = [NSSet setWithObject:objc_opt_class()];
    v12 = [NSSet setWithObject:objc_opt_class()];
    v15 = 0;
    v8 = [NSKeyedUnarchiver unarchivedDictionaryWithKeysOfClasses:v11 objectsOfClasses:v12 fromData:v10 error:&v15];
    v9 = v15;

    v7 = 0;
    if (!v8)
    {
      v13 = sub_100063A54();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000CC5AC();
      }

      v14 = [v9 localizedDescription];
      v7 = [NSError errorDomainMSDWithCode:3727741108 message:@"Cannot communicate with demo peer." reason:v14];
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10002B6D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v23 = a1;
    v10 = [a2 objectForKeyedSubscript:@"EnvArchiveList"];
    v11 = [NSMutableArray arrayWithCapacity:0];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v8 = 0;
      v15 = *v26;
LABEL_5:
      v16 = 0;
      v17 = v8;
      while (1)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v25 + 1) + 8 * v16);
        v19 = objc_opt_class();
        v24 = v17;
        v20 = [NSKeyedUnarchiver unarchivedObjectOfClass:v19 fromData:v18 error:&v24];
        v8 = v24;

        if (!v20)
        {
          break;
        }

        [v11 addObject:v20];

        v16 = v16 + 1;
        v17 = v8;
        if (v14 == v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v14)
          {
            goto LABEL_5;
          }

          goto LABEL_17;
        }
      }

      v21 = sub_100063A54();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000CC620(v8);
      }

      v22 = [v8 localizedDescription];
      v7 = [NSError errorDomainMSDWithCode:3727741108 message:@"Cannot communicate with demo peer." reason:v22];

      v6 = 0;
      if (v7)
      {
        v9 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v8 = 0;
LABEL_17:

      v6 = 0;
    }

    v9 = [NSArray arrayWithArray:v11];
    v7 = 0;
LABEL_19:

    a1 = v23;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10002BEB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v23 = a1;
    v10 = [a2 objectForKeyedSubscript:@"TestScriptArchiveList"];
    v11 = [NSMutableArray arrayWithCapacity:0];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v8 = 0;
      v15 = *v26;
LABEL_5:
      v16 = 0;
      v17 = v8;
      while (1)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v25 + 1) + 8 * v16);
        v19 = objc_opt_class();
        v24 = v17;
        v20 = [NSKeyedUnarchiver unarchivedObjectOfClass:v19 fromData:v18 error:&v24];
        v8 = v24;

        if (!v20)
        {
          break;
        }

        [v11 addObject:v20];

        v16 = v16 + 1;
        v17 = v8;
        if (v14 == v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v14)
          {
            goto LABEL_5;
          }

          goto LABEL_17;
        }
      }

      v21 = sub_100063A54();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000CC6A4(v8);
      }

      v22 = [v8 localizedDescription];
      v7 = [NSError errorDomainMSDWithCode:3727741108 message:@"Cannot communicate with demo peer." reason:v22];

      v6 = 0;
      if (v7)
      {
        v9 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v8 = 0;
LABEL_17:

      v6 = 0;
    }

    v9 = [NSArray arrayWithArray:v11];
    v7 = 0;
LABEL_19:

    a1 = v23;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10002C40C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = [a2 objectForKeyedSubscript:@"GKResultsArchive"];
    v13 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v13];
    v8 = v13;
    v7 = 0;
    if (!v9)
    {
      v11 = sub_100063A54();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000CC728(v8);
      }

      v12 = [v8 localizedDescription];
      v7 = [NSError errorDomainMSDWithCode:3727741108 message:@"Cannot communicate with demo peer." reason:v12];
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10002C64C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = [a2 objectForKeyedSubscript:@"GKMetricsArchive"];
    v13 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v13];
    v8 = v13;
    v7 = 0;
    if (!v9)
    {
      v11 = sub_100063A54();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000CC7AC(v8);
      }

      v12 = [v8 localizedDescription];
      v7 = [NSError errorDomainMSDWithCode:3727741108 message:@"Cannot communicate with demo peer." reason:v12];
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10002C88C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10 = [a2 objectForKeyedSubscript:@"LSMeasurementsData"];
    if (v10)
    {
      v9 = v10;
      v8 = 0;
      goto LABEL_6;
    }

    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000CC830();
    }

    v7 = [NSError errorDomainMSDWithCode:3727741108 message:@"Cannot communicate with demo peer."];
  }

  v8 = v7;
  v9 = 0;
LABEL_6:
  (*(*(a1 + 32) + 16))();
}

void sub_10002CA48(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"HSCoachingSuggestion"];
  (*(*(a1 + 32) + 16))();
}

void sub_10002CBB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = [a2 objectForKeyedSubscript:@"IPDStatusArchive"];
    v13 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v13];
    v8 = v13;
    v7 = 0;
    if (!v9)
    {
      v11 = sub_100063A54();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000CC864(v8);
      }

      v12 = [v8 localizedDescription];
      v7 = [NSError errorDomainMSDWithCode:3727741108 message:@"Cannot communicate with demo peer." reason:v12];
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10002CFDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = &off_10017BFD0;
  }

  else
  {
    v9 = [a2 objectForKeyedSubscript:@"FinalIPD"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = v9;
      v7 = 0;
    }

    else
    {
      v10 = sub_100063A54();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000CC8E8();
      }

      v7 = [NSError errorDomainMSDWithCode:3727741108 message:@"Cannot communicate with demo peer."];
      v8 = &off_10017BFD0;
    }
  }

  v11 = *(a1 + 32);
  [v8 doubleValue];
  (*(v11 + 16))(v11, v7);
}

void sub_10002D1E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = &off_10017AF60;
  }

  else
  {
    v9 = [a2 objectForKeyedSubscript:@"IPDResetStage"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = v9;
      v7 = 0;
    }

    else
    {
      v10 = sub_100063A54();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000CC91C();
      }

      v7 = [NSError errorDomainMSDWithCode:3727741108 message:@"Cannot communicate with demo peer."];
      v8 = &off_10017AF60;
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v8 unsignedIntegerValue], v7);
}

void sub_10002D3E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = [a2 objectForKeyedSubscript:@"AXSettingsArchive"];
    v13 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v13];
    v8 = v13;
    v7 = 0;
    if (!v9)
    {
      v11 = sub_100063A54();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000CC950(v8);
      }

      v12 = [v8 localizedDescription];
      v7 = [NSError errorDomainMSDWithCode:3727741108 message:@"Cannot communicate with demo peer." reason:v12];
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10002E1FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[MSDDemoPeerCommander getMuseBuddyResetValueOnPeer:withCompletion:]_block_invoke";
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s - Error: %{public}@", &v8, 0x16u);
    }
  }

  else
  {
    v7 = [a2 valueForKey:@"Value"];
    [v7 BOOLValue];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10002E3CC(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 40) nearbyObjects];
  v4 = [v3 objectForKey:v2];

  if (!v4)
  {
    v5 = [*(a1 + 40) nearbyObjects];
    [v5 setObject:*(a1 + 32) forKey:v2];
  }

  v6 = [*(a1 + 40) discoveredPeers];
  v7 = [v6 objectForKey:v2];

  if (v7)
  {
    v8 = [*(a1 + 32) isInBubble];
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Peer '%{public}@' is in bubble: %{BOOL}d", buf, 0x12u);
    }

    [v7 setIsInBubble:v8];
    v10 = [*(a1 + 40) xpcConnection];

    if (v10)
    {
      v11 = [NSNumber numberWithBool:v8, kMSDKPeerDemoDevicePropertyIsInBubble];
      v16 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

      v13 = [*(a1 + 40) xpcConnection];
      v14 = [v13 remoteObjectProxy];
      [v14 providerDidUpdateDeviceInfoOnPeerOfID:v2 withNewProperties:v12];
    }
  }
}

void sub_10002E680(uint64_t a1)
{
  v2 = [[MSDKPeerDemoDevice alloc] initWithMSDRapportDevice:*(a1 + 32)];
  [*(a1 + 40) _handleDiscoveryOfNewPeer:v2];
}

void sub_10002E794(uint64_t a1)
{
  v2 = [*(a1 + 32) discoveredPeers];
  v3 = [*(a1 + 40) identifier];
  v5 = [v2 objectForKey:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) _handleLossOfExistingPeer:v5];
    v4 = v5;
  }
}

void sub_10002E8DC(uint64_t a1)
{
  v2 = [*(a1 + 32) discoveredPeers];
  v3 = [*(a1 + 40) identifier];
  v5 = [v2 objectForKey:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) _handleUpdateOfExistingPeer:v5];
    v4 = v5;
  }
}

void sub_10002EB1C(id *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v10 = 138543618;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Received event message: %{public}@ from device: %{public}@", &v10, 0x16u);
  }

  v5 = [a1[6] discoveredPeers];
  v6 = [a1[5] identifier];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = [a1[4] identifier];
    v9 = [v8 isEqualToString:@"com.apple.MobileStoreDemo.UpdateDeviceInfo"];

    if (v9)
    {
      [a1[6] _handleUpdateDeviceEventMessage:a1[4] fromPeer:v7];
    }
  }
}

void sub_10002EDE8(id a1)
{
  qword_1001A5658 = objc_alloc_init(MSDPairedWatchProxy);

  _objc_release_x1();
}

void sub_10002EF5C(id a1, PSYSyncSession *a2, NSSet *a3, NSError *a4)
{
  v4 = a4;
  if (v4)
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000CCB74(v4, v5);
    }
  }
}

void sub_10002FC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002FDD0(id a1)
{
  qword_1001A5668 = objc_alloc_init(MSDBluetoothHelper);

  _objc_release_x1();
}

void sub_100030B5C(id a1)
{
  qword_1001A5678 = objc_alloc_init(MSDPushNotificationHandler);

  _objc_release_x1();
}

uint64_t sub_100031BD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100031BF0(uint64_t a1, void *a2, const char *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = objc_autoreleasePoolPush();
  v9 = [MSDSignedManifest getComponentFromPath:v7 forManifestVersion:*(a1 + 32)];
  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v48 = a3;
    v49 = 2114;
    v50 = v7;
    v51 = 2114;
    v52 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%lu] Building component for signed manifest item: %{public}@(%{public}@)", buf, 0x20u);
  }

  if (!v9)
  {
    v23 = 0;
    v11 = 0;
    goto LABEL_53;
  }

  if (![*(a1 + 40) getComponentProgressStatus:v9])
  {
    v15 = [*(a1 + 48) signedManifest];
    v16 = [v15 isItemBackup:v7];

    v17 = [*(a1 + 48) signedManifest];
    v18 = v17;
    if (v16)
    {
      v19 = [v17 isItemDeviceSettings:v9];

      if (v19)
      {
        v20 = sub_100063A54();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v48 = "[MSDComponentBuilder buildComponentsFromManifest]_block_invoke";
          v49 = 2114;
          v50 = v9;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s - building settings dict for component %{public}@", buf, 0x16u);
        }

        v21 = [*(*(*(a1 + 64) + 8) + 40) buildSettingsOperationWithIdentifier:v9];
      }

      else
      {
        v21 = [*(*(*(a1 + 64) + 8) + 40) buildBackupOperationsWithPath:v7 andIndex:a3];
      }
    }

    else
    {
      v22 = [v17 isItemSystemAppData:v7];

      if (v22)
      {
        v21 = [*(*(*(a1 + 64) + 8) + 40) buildSystemAppOperationsWithIdentifier:v9];
      }

      else
      {
        v37 = [*(a1 + 48) signedManifest];
        v38 = [v37 isItemApp:v7];

        if (v38)
        {
          v39 = *(*(*(a1 + 64) + 8) + 40);
          v40 = [*(a1 + 48) appItemToDefer];
          v11 = [v39 buildAppOperationsWithIdentifier:v9 shouldDeferApp:{objc_msgSend(v40, "isEqualToString:", v9)}];

          if (([*(a1 + 48) forBackgroundDownload] & 1) == 0 && objc_msgSend(*(a1 + 56), "containsObject:", v9) && (objc_msgSend(v9, "isEqualToString:", @"com.apple.ist.windward") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"com.apple.ist.DemoDiscoveryApp") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"com.apple.ist.demoloop") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"com.apple.ist.DigitalSignage.iOS") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"com.apple.ist.dast") & 1) == 0)
          {
            v41 = sub_100063A54();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v48 = v9;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Building remove operations for app: %{public}@", buf, 0xCu);
            }

            v23 = [*(*(*(a1 + 64) + 8) + 40) buildAppRemovalOperationsWithIdentifier:v9];
            if (!v23)
            {
              goto LABEL_53;
            }

            goto LABEL_18;
          }

LABEL_17:
          v23 = 0;
LABEL_18:
          if (v11)
          {
            v24 = [[MSDComponent alloc] initWithName:v9 andOperations:v11];
            if (v24)
            {
              v25 = v24;
              if (v23)
              {
                [(MSDComponent *)v24 addRemoveOperations:v23];
              }

              v26 = [*(a1 + 48) appItemToDefer];
              if (v26)
              {
                v27 = v26;
                v28 = [*(a1 + 48) appItemToDefer];
                if ([v28 isEqualToString:v9])
                {
                  [*(a1 + 48) signedManifest];
                  v29 = v23;
                  v31 = v30 = v8;
                  v46 = [v31 isItemApp:v7];

                  v8 = v30;
                  v23 = v29;

                  if (v46)
                  {
                    v32 = sub_100063A54();
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Deferring the update of app item as requested.", buf, 2u);
                    }

                    v33 = *(*(a1 + 72) + 8);
                    v34 = *(v33 + 40);
                    *(v33 + 40) = v25;
                    v35 = v25;

LABEL_32:
                    goto LABEL_33;
                  }
                }

                else
                {
                }
              }

              v36 = sub_100063A54();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v48 = v25;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Component built successfully: %{public}@", buf, 0xCu);
              }

              [*(*(*(a1 + 80) + 8) + 40) addObject:v25];
              goto LABEL_32;
            }
          }

LABEL_53:
          v45 = sub_100063A54();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            sub_1000CD350(v45);
          }

          *a4 = 1;
          *(*(*(a1 + 88) + 8) + 24) = 0;
          goto LABEL_32;
        }

        v42 = [*(a1 + 48) signedManifest];
        v43 = [v42 isItemConfigurationProfile:v7];

        v11 = sub_100063A54();
        v44 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (!v43)
        {
          if (!v44)
          {
            goto LABEL_33;
          }

          *buf = 0;
          v12 = "Ignore unrecognized item in signed manifest.";
          v13 = v11;
          v14 = 2;
          goto LABEL_7;
        }

        if (v44)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Building config profile operation.", buf, 2u);
        }

        v21 = [*(*(*(a1 + 64) + 8) + 40) buildConfigurationProfileOperationsWithIdentifier:v9];
      }
    }

    v11 = v21;
    goto LABEL_17;
  }

  v11 = sub_100063A54();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v48 = v9;
    v12 = "Skip already processed component: %{public}@";
    v13 = v11;
    v14 = 12;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
  }

LABEL_33:

  objc_autoreleasePoolPop(v8);
}

void sub_100033CD8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_100033FFC(id a1)
{
  qword_1001A5688 = objc_alloc_init(MSDCache);

  _objc_release_x1();
}

void sub_100034BA0(id a1)
{
  qword_1001A5698 = objc_alloc_init(MSDLocalMessageResponder);

  _objc_release_x1();
}

void sub_100035178(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) xpcListener];
  v5 = v3;
  v6 = sub_100063B64();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CDED4();
  }

  type = xpc_get_type(v5);
  v8 = sub_100063B64();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CDF10();
  }

  if (type != &_xpc_type_connection)
  {
    if (v5 == &_xpc_error_termination_imminent)
    {
      v13 = sub_100063B64();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      LOWORD(v18) = 0;
      v14 = "XPC connection will be closed";
    }

    else
    {
      v13 = sub_100063B64();
      v15 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v5 != &_xpc_error_connection_invalid)
      {
        if (v15)
        {
          LODWORD(v18) = 136446210;
          *(&v18 + 4) = xpc_dictionary_get_string(v5, _xpc_error_key_description);
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Got XPC error on listener connection: %{public}s", &v18, 0xCu);
        }

        v16 = +[MSDLocalMessageResponder sharedInstance];
        v17 = [v16 xpcListener];
        xpc_connection_cancel(v17);

        exit(1);
      }

      if (!v15)
      {
LABEL_18:

        exit(0);
      }

      LOWORD(v18) = 0;
      v14 = "No XPC connection, exiting";
    }

    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &v18, 2u);
    goto LABEL_18;
  }

  v9 = sub_100063B64();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CDF4C();
  }

  v10 = v5;
  v11 = sub_100063B64();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Start to deal with new connection", &v18, 2u);
  }

  *&v18 = _NSConcreteStackBlock;
  *(&v18 + 1) = 3221225472;
  v19 = sub_10003ABAC;
  v20 = &unk_10016A7E8;
  v21 = v10;
  v12 = v10;
  xpc_connection_set_event_handler(v12, &v18);
  xpc_connection_resume(v12);
}

void sub_100038F60(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100039200(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100039218(uint64_t a1)
{
  v2 = sub_100063B64();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[MSDLocalMessageResponder handleMessage:from:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: waiting for buddy to quit.", buf, 0xCu);
  }

  [*(a1 + 32) waitForBuddyWithTimeout];
  v3 = +[MSDUIHelper sharedInstance];
  [v3 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:1];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(*(a1 + 88) + 8);
  obj = *(v9 + 40);
  v10 = [v4 enrollForDeviceName:v5 pairingCredential:v6 hubHostName:v7 hubPort:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  *(*(*(a1 + 80) + 8) + 24) = v10;
  if (*(*(*(a1 + 80) + 8) + 24) != 1 || ([*(a1 + 32) setDemoEnrollmentFlag:@"enrollmentSuccess"], (*(*(*(a1 + 80) + 8) + 24) & 1) == 0))
  {
    sub_1000CEC08((a1 + 32), a1 + 88);
  }
}

void sub_100039390(uint64_t a1)
{
  v2 = +[MSDUIHelper sharedInstance];
  [v2 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:1];

  v3 = +[MSDDemoUpdateTimeKeeper sharedInstance];
  v4 = [v3 setCompletionTime:*(a1 + 48) reserveTimeForCleanup:1];

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) updateDemoContent];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device is busy?", v6, 2u);
    }
  }
}

void sub_100039474(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  if ([*(a1 + 40) isContentFrozen])
  {
    [*(a1 + 40) manageDeviceSnapshot:@"CommitSnapshot"];
  }

  else
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Snapshot commit not allowed in current state.", v4, 2u);
    }
  }

  xpc_dictionary_set_BOOL(reply, "Acknowledged", 1);
  xpc_connection_send_message(*(a1 + 48), reply);
}

id sub_10003954C(uint64_t a1)
{
  v2 = [*(a1 + 32) getDemoEnrollmentFlag];

  if ([*(a1 + 32) isVerifiedDemoDevice])
  {
    if (!v2)
    {
      [*(a1 + 32) setupDemoDeviceMetadataFolder];
      [*(a1 + 32) setDemoEnrollmentFlag:@"enrollmentStarted"];
    }
  }

  else if ([*(a1 + 32) isVerifiedPOSDevice])
  {
    [*(a1 + 32) setupDemoDeviceMetadataFolder];
    [*(a1 + 32) setPOSDeviceFlag];
  }

  xpc_connection_send_message(*(a1 + 40), *(a1 + 48));
  if ([*(a1 + 32) isVerifiedDemoDevice])
  {
    if (v2)
    {
      sub_1000CEC60();
      return [*(a1 + 64) setDemoPrepareInProgress:0];
    }

    [*(a1 + 32) setDemoDeviceFlag];
    [*(a1 + 32) registerCAHearbeatActivity];
    v3 = +[MSDKeychainManager sharedInstance];
    v4 = [v3 getItemForKey:@"com.apple.mobilestoredemo.keychainItemID"];

    if (!v4)
    {
      v5 = sub_100063B64();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v29 = "[MSDLocalMessageResponder handleMessage:from:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: waiting for buddy to quit.", buf, 0xCu);
      }

      [*(a1 + 32) waitForBuddyWithTimeout];
      v6 = +[MSDUIHelper sharedInstance];
      [v6 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:0];

      string = xpc_dictionary_get_string(*(a1 + 56), "SSID");
      if (string)
      {
        v8 = string;
        v9 = xpc_dictionary_get_string(*(a1 + 56), "Password");
        if (v9)
        {
          v10 = [NSString stringWithUTF8String:v9];
        }

        else
        {
          v10 = 0;
        }

        v16 = sub_100063B64();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v29 = v8;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Setting up WiFi: ssid = %{public}s", buf, 0xCu);
        }

        for (i = 4; i > 1; --i)
        {
          v18 = +[MSDWiFiHelper sharedInstance];
          v19 = [NSString stringWithUTF8String:v8];
          *(*(*(a1 + 72) + 8) + 24) = [v18 configureWiFi:v19 password:v10];

          if (*(*(*(a1 + 72) + 8) + 24))
          {
            goto LABEL_26;
          }

          sleep(5u);
        }

        if (*(*(*(a1 + 72) + 8) + 24))
        {
LABEL_26:
          [*(a1 + 32) waitForNetworkReachability];

          goto LABEL_27;
        }

        sub_1000CED08();
      }

      else
      {
LABEL_27:
        v20 = xpc_dictionary_get_string(*(a1 + 56), "PreferredStoreID");
        if (v20)
        {
          v21 = [NSString stringWithUTF8String:v20];
          [*(a1 + 32) setPreferredStoreID:v21];
        }

        v22 = sub_100063B64();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v29 = "[MSDLocalMessageResponder handleMessage:from:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: requesting discoverAndEnrollWithHub.", buf, 0xCu);
        }

        v23 = +[MSDFindMyHub sharedInstance];
        v24 = *(*(a1 + 80) + 8);
        obj = *(v24 + 40);
        v25 = [v23 discoverAndEnrollWithHub:&obj];
        objc_storeStrong((v24 + 40), obj);
        *(*(*(a1 + 72) + 8) + 24) = v25;

        if (*(*(*(a1 + 72) + 8) + 24) == 1)
        {
          [*(a1 + 32) setDemoEnrollmentFlag:@"enrollmentSuccess"];
        }
      }

      if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
      {
        [*(a1 + 32) setDemoEnrollmentFlag:@"enrollmentFailed"];
        v15 = +[MSDUIHelper sharedInstance];
        [v15 stopFullScreenUI:*(*(*(a1 + 80) + 8) + 40)];
LABEL_35:
      }
    }
  }

  else
  {
    v11 = +[MSDTargetDevice sharedInstance];
    v12 = [v11 isVerifiedPOSDevice];

    if (!v12)
    {
      v14 = sub_100063B64();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "This device is not a demo device.", buf, 2u);
      }

      v15 = +[MSDUIHelper sharedInstance];
      [v15 startFullScreenUIWith:@"NOT_VERIFIED" allowCancel:1];
      goto LABEL_35;
    }

    v13 = +[F13Server sharedInstance];
  }

  return [*(a1 + 64) setDemoPrepareInProgress:0];
}

void sub_100039A4C(uint64_t a1)
{
  [*(a1 + 32) switchModeImmediately:7];
  v1 = +[MSDOSUpdaterController sharedInstance];
  [v1 startOSUpdate];
}

id sub_100039AA0(uint64_t a1)
{
  [*(a1 + 32) kickOffCachedBundleInstall];
  v2 = *(a1 + 40);

  return [v2 setDemoPrepareInProgress:0];
}

uint64_t sub_100039AE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) != &_xpc_type_string)
  {
    goto LABEL_14;
  }

  string_ptr = xpc_string_get_string_ptr(v4);
  if (!strncmp(string_ptr, "CurrentWiFiSSID", 0x10uLL))
  {
    v7 = +[MSDWiFiHelper sharedInstance];
    v8 = [v7 getCurrentWiFiSsid];
  }

  else
  {
    if (strncmp(string_ptr, "PersistentWiFiSSID", 0x13uLL))
    {
      if (!strncmp(string_ptr, "EmbeddedSIMInstalled", 0x15uLL))
      {
        v11 = +[MSDCellularHelper sharedInstance];
        v12 = [v11 embeddedSIMInstalled];

        xpc_dictionary_set_BOOL(*(a1 + 32), string_ptr, v12);
      }

      else if (!strncmp(string_ptr, "ActiveNetworkInterface", 0x17uLL))
      {
        xpc_dictionary_set_uint64(*(a1 + 32), string_ptr, [*(a1 + 40) fetchActiveNetworkInterface]);
      }

      else
      {
        v6 = sub_100063A54();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136446210;
          v14 = string_ptr;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received unrecognized key for network info: %{public}s", &v13, 0xCu);
        }
      }

      goto LABEL_14;
    }

    v7 = +[MSDWiFiHelper sharedInstance];
    v8 = [v7 getPersistentWiFiSsid];
  }

  v9 = v8;

  if (v9)
  {
    xpc_dictionary_set_string(*(a1 + 32), string_ptr, [v9 UTF8String]);
  }

LABEL_14:
  return 1;
}

void sub_10003A074(uint64_t a1, BOOL a2, BOOL a3, uint64_t a4)
{
  xdict = xpc_dictionary_create_reply(*(a1 + 32));
  xpc_dictionary_set_BOOL(xdict, "Result", a4 == 0);
  if (!a4)
  {
    xpc_dictionary_set_BOOL(xdict, "Eligible", a2);
    xpc_dictionary_set_BOOL(xdict, "ShowUI", a3);
  }

  xpc_connection_send_message(*(a1 + 40), xdict);
}

void sub_10003A1F0(uint64_t a1, uint64_t a2)
{
  message = xpc_dictionary_create_reply(*(a1 + 32));
  xpc_dictionary_set_BOOL(message, "Result", a2 == 0);
  xpc_connection_send_message(*(a1 + 40), message);
}

void sub_10003A468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10003A4A4(void *a1, void *a2, void *a3)
{
  *(*(a1[4] + 8) + 24) = a3 == 0;
  if (a2)
  {
    v5 = *(*(a1[5] + 8) + 40);
    v6 = *(*(a1[4] + 8) + 24);
    v11 = a3;
    v7 = a2;
    xpc_dictionary_set_BOOL(v5, "Result", v6);
    v8 = *(*(a1[5] + 8) + 40);
    v9 = [v7 bytes];
    v10 = [v7 length];

    xpc_dictionary_set_data(v8, "ResultData", v9, v10);
    xpc_connection_send_message(*(*(a1[6] + 8) + 40), *(*(a1[5] + 8) + 40));
  }
}

intptr_t sub_10003AA78(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "iPad layout reset operation completed", v4, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10003ABAC(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  v5 = sub_100063B64();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CDF10();
  }

  v6 = sub_100063B64();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (type == &_xpc_type_error)
  {
    if (v7)
    {
      sub_1000CEECC();
    }

    if (v3 == &_xpc_error_connection_invalid)
    {
      v10 = sub_100063B64();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "XPC disconnected by client", buf, 2u);
      }

      v9 = +[MSDLocalMessageResponder sharedInstance];
      [v9 lostClientConnection:*(a1 + 32)];
    }

    else
    {
      if (v3 != &_xpc_error_termination_imminent)
      {
        goto LABEL_10;
      }

      v9 = sub_100063B64();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "XPC connection will be closed", v11, 2u);
      }
    }
  }

  else
  {
    if (v7)
    {
      sub_1000CEE28();
    }

    if (type != &_xpc_type_dictionary)
    {
      sub_1000CEE64();
    }

    v8 = +[MSDLocalMessageResponder sharedInstance];
    [v8 handleMessage:v3 from:*(a1 + 32)];

    v9 = sub_100063B64();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CEE90();
    }
  }

LABEL_10:
}

BOOL sub_10003ADE0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_10003B574(id a1)
{
  v1 = objc_alloc_init(MSDAirPlayAssistedSender);
  v2 = qword_1001A56B0;
  qword_1001A56B0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10003B814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003B82C(uint64_t a1)
{
  result = [*(a1 + 32) state];
  *(*(*(a1 + 40) + 8) + 24) = result == 1;
  return result;
}

void sub_10003BA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003BAAC(uint64_t a1)
{
  result = [*(a1 + 32) _activateSenderUsingParameters:*(a1 + 40) discoveryMode:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_10003C3E8(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) _NSStringFromSenderState:{objc_msgSend(*(a1 + 32), "state")}];
    v11 = 138543362;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MSDAirPlayAssistedSender: Received AV output device changed notification when in state: %{public}@", &v11, 0xCu);
  }

  if ([*(a1 + 32) state] != 1)
  {
    if ([*(a1 + 32) state] == 2)
    {
      [*(a1 + 32) _stopActivation];
    }

    v4 = [*(a1 + 32) _isAirPlayStreaming];
    v5 = *(a1 + 32);
    if (v4)
    {
      [v5 setState:3];
      v6 = +[MSDAudioController sharedInstance];
      v7 = [v6 addRouteToSystemMusicForSpeaker];

      if (v7)
      {
        return;
      }

      v8 = sub_100063A54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000CF3A0();
      }
    }

    else
    {
      [v5 setState:1];
      v9 = +[MSDAudioController sharedInstance];
      v10 = [v9 removeRouteToSystemMusicForSpeaker];

      if (v10)
      {
        return;
      }

      v8 = sub_100063A54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000CF360();
      }
    }
  }
}

void sub_10003CA28(id a1)
{
  v1 = objc_alloc_init(MSDPricingUpdateController);
  v2 = qword_1001A56B8;
  qword_1001A56B8 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10003D04C(uint64_t a1)
{
  v2 = [*(a1 + 32) heartBeatMonitor];

  if (v2)
  {
    v3 = [*(a1 + 32) heartBeatMonitor];
    [v3 invalidate];
  }

  v4 = *(a1 + 32);

  return [v4 setHeartBeatMonitor:0];
}

void sub_10003D164(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = 120;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting timer for Pricing (will trigger in %d seconds).", v4, 8u);
  }

  v3 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"pricingUpdateTimeOut:" selector:0 userInfo:0 repeats:120.0];
  [*(a1 + 32) setHeartBeatMonitor:v3];
}

id sub_10003E808()
{
  if (qword_1001A56D0 != -1)
  {
    sub_1000CF8A0();
  }

  v1 = qword_1001A56C8;

  return v1;
}

void sub_10003E84C(id a1)
{
  v1 = +[MSDPlatform sharedInstance];
  v2 = [v1 watchOS];

  if (v2)
  {
    [NSArray arrayWithObjects:@"/var/mobile/Demo.mov", @"/var/mobile/Demo.plist", @"/var/mobile/Media", @"/var/mobile/Library/AddressBook", @"/var/mobile/Library/Alarms", @"/var/mobile/Library/Calendar", @"/var/mobile/Library/CallHistoryDB", @"/var/mobile/Library/Carousel", @"/var/mobile/Library/Health", @"/var/mobile/Library/Maps", @"/var/mobile/Library/MapsHistory.plist", @"/var/mobile/Library/NanoMailKit", @"/var/mobile/Library/NanoMusicSync", @"/var/mobile/Library/NanoNotes/DemoBackup/NotesLocalDemoData", @"/var/mobile/Library/NanoPasses", @"/var/mobile/Library/NanoPodcasts", @"/var/mobile/Library/NanoPhotos", @"/var/mobile/Library/NanoWeatherDemo", @"/var/mobile/Library/News", @"/var/mobile/Library/RetailDemo", @"/var/mobile/Library/Reminders", @"/var/mobile/Library/SMS", @"/var/mobile/Library/UserConfigurationProfiles", @"/var/mobile/Library/Preferences/.GlobalPreferences.plist", @"/var/mobile/Library/Preferences/.GlobalPreferences_m.plist", @"/var/mobile/Library/Preferences/com.apple.Accessibility.plist", @"/var/mobile/Library/Preferences/com.apple.ActivitySharing.plist", @"/var/mobile/Library/Preferences/com.apple.AppleMediaServices.plist", @"/var/mobile/Library/Preferences/com.apple.assistant.backedup.plist", @"/var/mobile/Library/Preferences/com.apple.assistant.nano.plist", @"/var/mobile/Library/Preferences/com.apple.assistant.support.plist", @"/var/mobile/Library/Preferences/com.apple.backboardd.plist", @"/var/mobile/Library/Preferences/com.apple.Carousel.plist", @"/var/mobile/Library/Preferences/com.apple.coremedia.plist", @"/var/mobile/Library/Preferences/com.apple.ControlCenter.plist", @"/var/mobile/Library/Preferences/com.apple.DeepBreathing.plist", @"/var/mobile/Library/Preferences/com.apple.demo-settings.plist", @"/var/mobile/Library/Preferences/com.apple.findmy.plist", @"/var/mobile/Library/Preferences/com.apple.healthd.plist", @"/var/mobile/Library/Preferences/com.apple.ids.plist", @"/var/mobile/Library/Preferences/com.apple.locationd.plist", @"/var/mobile/Library/Preferences/com.apple.mobileme.fmf1.plist", @"/var/mobile/Library/Preferences/com.apple.mobilephone.plist", @"/var/mobile/Library/Preferences/com.apple.mobilephone.speeddial.plist", @"/var/mobile/Library/Preferences/com.apple.mobiletimer.plist", @"/var/mobile/Library/Preferences/com.apple.nanobuddy.plist", @"/var/mobile/Library/Preferences/com.apple.nanolifestyle.plist", @"/var/mobile/Library/Preferences/com.apple.nanolifestyle.privacy.plist", @"/var/mobile/Library/Preferences/com.apple.NanoMediaUI.plist", @"/var/mobile/Library/Preferences/com.apple.NanoMusicSync.plist", @"/var/mobile/Library/Preferences/com.apple.NanoNotes.plist", @"/var/mobile/Library/Preferences/com.apple.nanopassbook.plist", @"/var/mobile/Library/Preferences/com.apple.nanophotos.plist", @"/var/mobile/Library/Preferences/com.apple.nanonews.sync.plist", @"/var/mobile/Library/Preferences/com.apple.Noise.plist", @"/var/mobile/Library/Preferences/com.apple.podcasts.plist", @"/var/mobile/Library/Preferences/com.apple.SessionTrackerApp.plist", @"/var/mobile/Library/Preferences/com.apple.stockholm.plist", @"/var/mobile/Library/Preferences/com.apple.system.prefs.plist", @"/var/mobile/Library/Preferences/com.apple.timed.plist", @"/var/mobile/Library/Preferences/com.apple.voicememod.plist"];
  }

  else
  {
    v3 = +[MSDPlatform sharedInstance];
    v4 = [v3 tvOS];

    if (!v4)
    {
      return;
    }

    [NSArray arrayWithObjects:@"/var/mobile/Media/DCIM", @"/var/mobile/Media/PhotoData", @"/var/mobile/Library/Preferences/com.apple.demo-settings.plist", @"/var/MobileDevice/ProvisioningProfiles", @"/var/mobile/Library/com.apple.HeadBoard/HBDemoModeAppOrder", @"/var/mobile/Library/com.apple.HeadBoard/AppOrder.plist", @"/var/mobile/Library/Preferences/.GlobalPreferences.plist", @"/var/mobile/Library/Preferences/.GlobalPreferences_m.plist", @"/var/mobile/Library/DemoLoop", 0, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57];
  }
  v5 = ;
  v6 = qword_1001A56C8;
  qword_1001A56C8 = v5;

  _objc_release_x1(v5, v6);
}

id sub_10003ECA4()
{
  if (qword_1001A56E0 != -1)
  {
    sub_1000CF8B4();
  }

  v1 = qword_1001A56D8;

  return v1;
}

void sub_10003ECE8(id a1)
{
  v1 = +[MSDPlatform sharedInstance];
  v2 = [v1 watchOS];

  if (v2)
  {
    v3 = [NSArray arrayWithObjects:@"/var/mobile/Library/Caches/sharedCaches/com.apple.WatchListKit.NSURLCache", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/VaryState.db-shm", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/VaryState.db-wal", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/VaryState.db", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/Cache.db", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/Cache.db-wal", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/Cache.db-shm", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/fsCachedData", 0];
  }

  else
  {
    v4 = +[MSDPlatform sharedInstance];
    v5 = [v4 tvOS];

    if (!v5)
    {
      return;
    }

    v3 = +[NSArray array];
  }

  v6 = qword_1001A56D8;
  qword_1001A56D8 = v3;

  _objc_release_x1(v3, v6);
}

id sub_10003EDFC()
{
  if (qword_1001A56F0 != -1)
  {
    sub_1000CF8C8();
  }

  v1 = qword_1001A56E8;

  return v1;
}

void sub_10003EE40(id a1)
{
  v1 = +[MSDPlatform sharedInstance];
  v2 = [v1 watchOS];

  if (v2)
  {
    v3 = [NSArray arrayWithObjects:@"systemgroup.com.apple.configurationprofiles", 0];
  }

  else
  {
    v4 = +[MSDPlatform sharedInstance];
    v5 = [v4 tvOS];

    if (!v5)
    {
      return;
    }

    v3 = +[NSArray array];
  }

  v6 = qword_1001A56E8;
  qword_1001A56E8 = v3;

  _objc_release_x1(v3, v6);
}

id sub_10003EF10()
{
  if (qword_1001A5700 != -1)
  {
    sub_1000CF8DC();
  }

  v1 = qword_1001A56F8;

  return v1;
}

void sub_10003EF54(id a1)
{
  v1 = [NSArray arrayWithObjects:@"/.com.apple.mobile_container_manager.metadata.plist", @"/Library/Caches", @"/Library/SyncedPreferences", @"/Library/Saved Application State", @"/SystemData/com.apple.AuthenticationServices", 0];
  v2 = qword_1001A56F8;
  qword_1001A56F8 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10003EFD0()
{
  if (qword_1001A5710 != -1)
  {
    sub_1000CF8F0();
  }

  v1 = qword_1001A5708;

  return v1;
}

void sub_10003F014(id a1)
{
  v1 = [NSArray arrayWithObjects:@"/.com.apple.mobile_container_manager.metadata.plist", @"/Library/Caches", @"/Library/SyncedPreferences", @"/Library/Saved Application State", @"/SystemData/com.apple.AuthenticationServices", 0];
  v2 = qword_1001A5708;
  qword_1001A5708 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10003F090()
{
  v4[0] = @"ContentRootDomain";
  v0 = sub_10003E808();
  v4[1] = @"SystemContainerDomain";
  v5[0] = v0;
  v1 = sub_10003EDFC();
  v5[1] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

void sub_10003F19C(id a1)
{
  v1 = objc_alloc_init(MSDAppSwitcherManager);
  v2 = qword_1001A5720;
  qword_1001A5720 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10004036C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000CFDFC(v4);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000403D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000CFE88(v4);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100040488(id a1)
{
  v1 = objc_alloc_init(MSDAVFlashlight);
  v2 = qword_1001A5730;
  qword_1001A5730 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100040670(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setFlashTimer:*(a1 + 40)];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _startFlash];
}

void sub_100040974(id a1)
{
  v1 = objc_alloc_init(MSDDemoPeerPairingManager);
  v2 = qword_1001A5740;
  qword_1001A5740 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10004124C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100041278(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100041290(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000D09C4(a1, v4, v5);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000414D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100041508(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000D0A40();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained pairingManager];
  [v4 invalidate];
}

void sub_100041574(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000D0A7C();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPairingManager:0];
}

void sub_1000417E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 88), 8);
  _Unwind_Resume(a1);
}

void sub_100041814(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100041A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100041AC0(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100041B20(id a1, CUPairedPeer *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(CUPairedPeer *)v5 detailedDescription];
    v8 = 134218242;
    v9 = a3;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerPairingManager: [%lu] %{public}@", &v8, 0x16u);
  }
}

void sub_100041DD8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1000433C0(id a1)
{
  v1 = objc_alloc_init(MSDWallpaperManager);
  v2 = qword_1001A5750;
  qword_1001A5750 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10004396C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [v4 changed];
    v6 = PRSWallpaperObserverLocationsDescription();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Poster config changed with transition: %{public}@", &v7, 0xCu);
  }

  [*(a1 + 32) _handleWallpaperConfigChange];
}

void sub_100043CC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1AF8(v3);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100044334(id a1)
{
  v1 = objc_alloc_init(MSDCellularHelper);
  v2 = qword_1001A5758;
  qword_1001A5758 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000445A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000445C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000445D8(uint64_t a1)
{
  v6 = [*(a1 + 32) cellularSlotsInfo];
  v2 = [v6 copy];
  v3 = [NSDictionary dictionaryWithObject:v2 forKey:@"Slots"];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100044790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000447A8(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) cellularSlotsInfo];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * i) objectForKeyedSubscript:@"SimType"];
        if (v7)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v7 isEqual:&off_10017AFF0])
            {
              *(*(*(a1 + 40) + 8) + 24) = 1;

              goto LABEL_13;
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void sub_1000459CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _activate];
}

void sub_100045AD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deactivate];
}

void sub_100045F0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v7 - 96));
  _Unwind_Resume(a1);
}

void sub_100045F84(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000D1B90();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deactivate];
}

void sub_100045FE0(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000D1BD0();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deactivate];
}

void sub_10004603C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRPCompanionLinkDeviceFound:v3];
}

void sub_100046098(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRPCompanionLinkDeviceLost:v3];
}

void sub_1000460F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRPCompanionLinkDeviceChanged:v5 withChanges:a3];
}

void sub_100046160(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100063A54();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1C10(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [WeakRetained rpClient];
    v8 = [v7 activeDevices];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceExplorer: Known devices: %@", &v9, 0xCu);
  }
}

void sub_10004691C(uint64_t a1)
{
  if ([*(a1 + 32) droppedByRapport])
  {
    v2 = [*(a1 + 40) devices];
    [v2 removeObject:*(a1 + 32)];

    v3 = [*(a1 + 40) observer];

    if (v3)
    {
      v5 = [*(a1 + 40) observer];
      [v5 explorerDidLoseDevice:*(a1 + 32)];
    }
  }

  else
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceExplorer: Ignore device lost event as device was found again after it was reportedly dropped.", buf, 2u);
    }
  }
}

void sub_100046E78(int a1, int a2, CFStringRef theString1)
{
  if (CFStringCompare(theString1, @"com.apple.purplebuddy.setupdone", 0) == kCFCompareEqualTo)
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received notification: buddy finished setup", v5, 2u);
    }

    v4 = +[MSDTargetDevice sharedInstance];
    [v4 invokeHandler:1];
  }
}

void sub_100046F5C(id a1)
{
  v1 = objc_alloc_init(MSDTargetDevice);
  v2 = qword_1001A5770;
  qword_1001A5770 = v1;

  [qword_1001A5770 setModeLock:&off_10017B020];
  v3 = qword_1001A5770;

  [v3 setBuddyCompletionHandlerLock:&off_10017B020];
}

void sub_100048360(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request to wipeOutDevice failed =  %{public}@", &v4, 0xCu);
    }
  }
}

void sub_100049F70(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[MSDTargetDevice sharedInstance];
    v5 = v3;
    if ([(__CFString *)v5 isEqualToString:@"MSDDemoManualUpdateState"])
    {
      v80 = 0;
      [*(a1 + 32) manualUpdateMode:&v80 + 1 allowChange:&v80];
      v6 = *(a1 + 40);
      v7 = [NSNumber numberWithBool:HIBYTE(v80)];
      [v6 setObject:v7 forKey:@"MSDDemoManualUpdateCurrentMode"];

      v8 = *(a1 + 40);
      v9 = [NSNumber numberWithBool:v80];
      v10 = @"MSDDemoManualUpdateAllowChange";
      v11 = v8;
LABEL_4:
      v12 = v9;
LABEL_5:
      [v11 setObject:v12 forKey:v10];
LABEL_22:

      goto LABEL_23;
    }

    if ([(__CFString *)v5 isEqualToString:@"MSDDemoContentStatus"])
    {
      v13 = +[MSDProgressUpdater sharedInstance];

      if (!v13)
      {
LABEL_23:

        goto LABEL_24;
      }

      v14 = *(a1 + 40);
      v15 = +[MSDProgressUpdater sharedInstance];
      v16 = [v15 getContentStatus];
      [v14 setObject:v16 forKey:@"MSDDemoContentStatus"];

      v17 = *(a1 + 40);
      v18 = +[MSDProgressUpdater sharedInstance];
      v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v18 getInternalStatus]);
      [v17 setObject:v19 forKey:@"InternalStatus"];

LABEL_9:
      goto LABEL_23;
    }

    if ([(__CFString *)v5 isEqualToString:@"MSDDemoLastRebootTime"])
    {
      v20 = [v4 lastRebootTime];
      if (!v20)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    if ([(__CFString *)v5 isEqualToString:@"MSDDemoLastRevertTime"])
    {
      v20 = [*(a1 + 32) lastSnapshotRevertTime];
      if (!v20)
      {
        goto LABEL_23;
      }

LABEL_18:
      v9 = v20;
      v21 = *(a1 + 40);
      v22 = [v20 toString];
LABEL_19:
      v23 = v22;
      v24 = v21;
      v25 = v23;
      v26 = v5;
LABEL_20:
      [v24 setObject:v25 forKey:v26];
LABEL_21:

      goto LABEL_22;
    }

    if ([(__CFString *)v5 isEqualToString:@"MSDLastShallowRefreshTime"])
    {
      v20 = [*(a1 + 32) lastShallowRefreshTime];
      if (!v20)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    if ([(__CFString *)v5 isEqualToString:@"MSDDemoNANDSize"])
    {
      v27 = +[MSDNPIMaskValues sharedInstance];
      v28 = [v27 isNPIDevice];

      if (v28)
      {
        v29 = +[MSDNPIMaskValues sharedInstance];
        v30 = [v29 getMaskValueForKey:@"MSDDemoNANDSize"];

        if (v30)
        {
          objc_opt_class();
          v18 = v30;
          if (objc_opt_isKindOfClass())
          {
LABEL_35:
            [*(a1 + 40) setObject:v18 forKey:v5];
            goto LABEL_9;
          }
        }
      }

      else
      {
        v30 = 0;
      }

      v18 = [v4 nandSize];

      if (!v18)
      {
        goto LABEL_23;
      }

      goto LABEL_35;
    }

    v31 = +[MSDPlatform sharedInstance];
    if ([v31 macOS])
    {
      v32 = [(__CFString *)v5 isEqualToString:@"MSDPricingRequestUpdate"];

      if (!v32)
      {
        goto LABEL_42;
      }

LABEL_38:
      v35 = +[MSDPricingUpdateController sharedInstance];
      v36 = [v35 needUpdate];

      v37 = *(a1 + 40);
      v38 = [NSNumber numberWithBool:v36];
      goto LABEL_39;
    }

    v33 = +[MSDPlatform sharedInstance];
    if ([v33 iOS])
    {
      v34 = [(__CFString *)v5 isEqualToString:@"MSDPricingRequestUpdate"];

      if (v34)
      {
        goto LABEL_38;
      }
    }

    else
    {
    }

LABEL_42:
    if ([(__CFString *)v5 isEqualToString:@"MSDDemoAcceptUATContent"])
    {
      v39 = +[MSDPlatform sharedInstance];
      v40 = [v39 macOS];

      if (v40)
      {
        v9 = &__kCFBooleanFalse;
      }

      else
      {
        v9 = MGCopyAnswer();
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      v21 = *(a1 + 40);
      v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 BOOLValue] ^ 1);
      goto LABEL_19;
    }

    if ([(__CFString *)v5 isEqualToString:@"MSDDemoProductDescription"])
    {
      v41 = +[MSDNPIMaskValues sharedInstance];
      v42 = [v41 isNPIDevice];

      if (v42)
      {
        v43 = +[MSDNPIMaskValues sharedInstance];
        v9 = [v43 getMaskValueForKey:@"MSDDemoProductDescription"];

        if (v9)
        {
          objc_opt_class();
          v44 = v9;
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        v9 = 0;
      }

      v50 = MGCopyAnswer();
      v23 = v50;
      if (v50)
      {
        v44 = [v50 objectForKey:@"ArtworkDeviceProductDescription"];

        if (v44)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            v9 = v44;
LABEL_66:
            v11 = *(a1 + 40);
            v12 = v44;
            goto LABEL_67;
          }
        }

        v62 = sub_100063A54();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          sub_1000D2BE8();
        }

        v9 = v44;
      }

      else
      {
        v62 = sub_100063A54();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          sub_1000D2C1C();
        }
      }

      goto LABEL_21;
    }

    if (([(__CFString *)v5 isEqualToString:@"MSDDemoCarrierBundleID"]& 1) != 0 || [(__CFString *)v5 isEqualToString:@"MSDDemoCarrierBundleVersion"])
    {
      v45 = MGCopyAnswer();
      v9 = v45;
      if (v45 && [v45 count])
      {
        v46 = [v9 objectAtIndex:0];
        v47 = [(__CFString *)v5 isEqualToString:@"MSDDemoCarrierBundleID"];
        v48 = &kCFBundleIdentifierKey;
        if (!v47)
        {
          v48 = &kCFBundleVersionKey;
        }

        v49 = [v46 objectForKey:*v48];
        if (v49)
        {
          [*(a1 + 40) setObject:v49 forKey:v5];
        }
      }

      goto LABEL_22;
    }

    if ([(__CFString *)v5 isEqualToString:@"MSDHubSuppliedSettingsID"])
    {
      v9 = [v4 hubSuppliedSettings];
      if (!v9)
      {
        goto LABEL_22;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_22;
      }

      v51 = [v9 objectForKey:@"SettingsID"];
      v23 = v51;
      if (!v51 || ![v51 length])
      {
        goto LABEL_21;
      }

      v24 = *(a1 + 40);
      v26 = @"SettingsID";
      goto LABEL_74;
    }

    if ([(__CFString *)v5 isEqualToString:@"MSDNetworkInterfacesEnabled"])
    {
      v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) fetchActiveNetworkInterface]);
      v11 = *(a1 + 40);
      v10 = @"MSDNetworkInterfacesEnabled";
      goto LABEL_4;
    }

    if ([(__CFString *)v5 isEqualToString:@"MSDCurrentWiFiSSID"])
    {
      v52 = +[MSDWiFiHelper sharedInstance];
      v9 = [v52 getCurrentWiFiSsid];

      if (!v9)
      {
        goto LABEL_22;
      }

      v11 = *(a1 + 40);
      v10 = @"MSDCurrentWiFiSSID";
      goto LABEL_4;
    }

    if ([(__CFString *)v5 isEqualToString:@"MSDPersistentWiFiSSID"])
    {
      v53 = +[MSDWiFiHelper sharedInstance];
      v9 = [v53 getPersistentWiFiSsid];

      if (!v9)
      {
        goto LABEL_22;
      }

      v11 = *(a1 + 40);
      v10 = @"MSDPersistentWiFiSSID";
      goto LABEL_4;
    }

    if ([(__CFString *)v5 isEqualToString:@"MSDCellularConfiguration"])
    {
      v54 = +[MSDNPIMaskValues sharedInstance];
      v55 = [v54 isNPIDevice];

      if (v55)
      {
        v56 = +[MSDNPIMaskValues sharedInstance];
        v57 = [v56 getMaskValueForKey:@"MSDCellularConfiguration"];

        if (v57)
        {
          objc_opt_class();
          v18 = v57;
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v57 = 0;
      }

      v59 = +[MSDCellularHelper sharedInstance];
      v18 = [v59 cellularInfo];

      if (!v18)
      {
        goto LABEL_23;
      }

      goto LABEL_35;
    }

    if ([(__CFString *)v5 isEqualToString:@"MinOSVersionAvailable"])
    {
      v58 = [v4 minOSVersionAvailable];
      goto LABEL_90;
    }

    if ([(__CFString *)v5 isEqualToString:@"MSDApnsKey"])
    {
      v60 = +[MSDPushNotificationHandler sharedInstance];
      v61 = [v60 apsToken];
      goto LABEL_115;
    }

    if ([(__CFString *)v5 isEqualToString:@"SystemLanguage"])
    {
      v60 = +[MSDLanguageAndRegionManager sharedInstance];
      v61 = [v60 getCurrentDevicePreferredLanguage];
      goto LABEL_115;
    }

    if ([(__CFString *)v5 isEqualToString:@"SystemRegion"])
    {
      v60 = +[MSDLanguageAndRegionManager sharedInstance];
      v61 = [v60 getCurrentDeviceRegion];
      goto LABEL_115;
    }

    if ([(__CFString *)v5 isEqualToString:@"SystemSiriLanguage"])
    {
      v60 = +[MSDLanguageAndRegionManager sharedInstance];
      v61 = [v60 getCurrentSiriLanguage];
      goto LABEL_115;
    }

    if ([(__CFString *)v5 isEqualToString:@"PreferencesLanguage"])
    {
      v60 = +[MSDLanguageAndRegionManager sharedInstance];
      v61 = [v60 getDemoPreferencesLanguage];
      goto LABEL_115;
    }

    if ([(__CFString *)v5 isEqualToString:@"PreferencesSiriLanguage"])
    {
      v60 = +[MSDLanguageAndRegionManager sharedInstance];
      v61 = [v60 getDemoPreferencesSiriLanguage];
      goto LABEL_115;
    }

    if ([(__CFString *)v5 isEqualToString:@"PreferencesRegion"])
    {
      v60 = +[MSDLanguageAndRegionManager sharedInstance];
      v61 = [v60 getDemoPreferencesRegion];
LABEL_115:
      v9 = v61;

      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_116;
    }

    if ([(__CFString *)v5 isEqualToString:@"IdleDuration"])
    {
      v63 = +[MSDSystemMonitor sharedInstance];
      v64 = [v63 systemIdleDuration];

      v37 = *(a1 + 40);
      v38 = [NSNumber numberWithUnsignedInteger:v64];
      goto LABEL_39;
    }

    if ([(__CFString *)v5 isEqualToString:@"IdentityServicesID"])
    {
      v58 = [*(a1 + 32) identityServicesID];
      goto LABEL_90;
    }

    if ([(__CFString *)v5 isEqualToString:@"CloudPairedDevices"])
    {
      v58 = [*(a1 + 32) cloudPairedDevices];
LABEL_90:
      v9 = v58;
      if (!v58)
      {
        goto LABEL_22;
      }

LABEL_116:
      v11 = *(a1 + 40);
      goto LABEL_40;
    }

    if (![(__CFString *)v5 isEqualToString:@"MSDTotalStorageAvailable"])
    {
      if ([(__CFString *)v5 isEqualToString:@"UniqueDeviceID"])
      {
        v66 = *(a1 + 40);
        v67 = [*(a1 + 32) udid];
        [v66 setObject:v67 forKey:v5];

        goto LABEL_23;
      }

      if ([(__CFString *)v5 isEqualToString:@"PairedDeviceInfo"])
      {
        v9 = +[MSDPairedWatchProxy sharedInstance];
        if (![*(a1 + 32) isBetterTogetherDemo] || !objc_msgSend(v9, "paired"))
        {
          goto LABEL_22;
        }

        v23 = objc_alloc_init(NSMutableDictionary);
        v68 = [v9 udid];
        [v23 setObject:v68 forKey:@"UniqueDeviceID"];

        v69 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 reachable]);
        [v23 setObject:v69 forKey:@"IsReachable"];

        if (([v9 reachable] & 1) == 0)
        {
          v70 = [v9 lastSeenDate];

          if (v70)
          {
            v71 = [v9 lastSeenDate];
            [v23 setObject:v71 forKey:@"LastSeenDate"];
          }
        }

        v24 = *(a1 + 40);
        v26 = @"PairedDeviceInfo";
LABEL_74:
        v25 = v23;
        goto LABEL_20;
      }

      if ([(__CFString *)v5 isEqualToString:@"xRyzf9zFE/ycr/wJPweZvQ"])
      {
        v9 = MGCopyAnswer();
        if (!v9)
        {
          goto LABEL_22;
        }

        v11 = *(a1 + 40);
        v10 = @"InternationalMobileEquipmentIdentity2";
        goto LABEL_4;
      }

      v72 = [(__CFString *)v5 isEqualToString:@"PartNumber"];
      v73 = +[MSDNPIMaskValues sharedInstance];
      v74 = [v73 isNPIDevice];

      if (v72)
      {
        if (v74)
        {
          v75 = +[MSDNPIMaskValues sharedInstance];
          v18 = [v75 getMaskValueForKey:v5];
        }

        else
        {
          v75 = MGCopyAnswer();
          v78 = MGCopyAnswer();
          v18 = [v75 stringByAppendingString:v78];
        }

        goto LABEL_35;
      }

      if (!v74 || (+[MSDNPIMaskValues sharedInstance](MSDNPIMaskValues, "sharedInstance"), v76 = objc_claimAutoreleasedReturnValue(), [v76 getMaskValueForKey:v5], v9 = objc_claimAutoreleasedReturnValue(), v76, !v9))
      {
        v77 = MGCopyAnswer();
        if (!v77)
        {
          goto LABEL_23;
        }

        v9 = v77;
      }

      goto LABEL_116;
    }

    v65 = MGCopyAnswer();
    if (!v65)
    {
      goto LABEL_23;
    }

    v79 = 0;
    sub_10004AD18(v65, kMGQDiskUsageTotalDataAvailable, &v79);
    v37 = *(a1 + 40);
    v38 = [NSNumber numberWithLongLong:v79];
LABEL_39:
    v9 = v38;
    v11 = v37;
LABEL_40:
    v12 = v9;
LABEL_67:
    v10 = v5;
    goto LABEL_5;
  }

LABEL_24:
}

const __CFNumber *sub_10004AD18(const __CFDictionary *a1, const void *a2, void *a3)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    result = CFNumberGetTypeID();
    if (v6 == result)
    {

      return CFNumberGetValue(v5, kCFNumberSInt64Type, a3);
    }
  }

  return result;
}

void sub_10004DBE4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 bundleIdentifier];
  v4 = [LSApplicationProxy applicationProxyForIdentifier:v3];

  if ([v4 isDeletable])
  {
    v5 = *(a1 + 32);
    v6 = [v7 bundleIdentifier];
    [v5 addObject:v6];
  }
}

void sub_10004DE10(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(a1 + 32);
  v4 = [v10 bundleIdentifier];
  LODWORD(v3) = [v3 containsObject:v4];

  v5 = v10;
  if (v3)
  {
    v6 = [v10 bundleIdentifier];
    v7 = [LSApplicationProxy applicationProxyForIdentifier:v6];

    if ([v7 isInstalled] && (objc_msgSend(v7, "isPlaceholder") & 1) == 0)
    {
      v8 = *(a1 + 40);
      v9 = [v10 bundleIdentifier];
      [v8 addObject:v9];
    }

    v5 = v10;
  }
}

void sub_10004E2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004E2DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 bundleIdentifier];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [v3 bundleIdentifier];
    v7 = [LSApplicationProxy applicationProxyForIdentifier:v6];

    if ([v7 isInstalled] && (objc_msgSend(v7, "isPlaceholder") & 1) == 0)
    {
      v8 = *(a1 + 32);
      v9 = [v3 bundleIdentifier];
      [v8 removeObject:v9];

      v10 = sub_100063A54();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v3 bundleIdentifier];
        v12 = 138543362;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "System app %{public}@ has been installed.", &v12, 0xCu);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }
}

id sub_10004FC20(uint64_t a1)
{
  v2 = +[MSDStoreHoursManager sharedInstance];
  [v2 evaluateStoreStatusAgainstCurrentTime];

  v3 = +[MSDStoreHoursManager sharedInstance];
  [v3 setupStoreOpenCloseTimers];

  result = [*(a1 + 32) isContentFrozen];
  if (result)
  {
    v5 = *(a1 + 32);

    return [v5 setupSnapshotRevertTimer];
  }

  return result;
}

void sub_10004FD0C(id a1)
{
  v1 = sub_100063A54();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "It's time to submit CoreAnalytics logs!", v4, 2u);
  }

  v2 = +[MSDAnalytics sharedInstance];
  [v2 rollOverCoreAnalyticsLogs];

  v3 = +[MSDAnalytics sharedInstance];
  [v3 uploadCoreAnalyticsLogs];
}

void sub_10004FE48(uint64_t a1)
{
  v2 = [NSDate dateWithTimeIntervalSinceNow:30.0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained caLogsUploadTimer];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 caLogsUploadTimer];
    [v6 invalidate];

    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 setCaLogsUploadTimer:0];
  }

  if (os_variant_has_internal_content())
  {
    v8 = +[MSDTestPreferences sharedInstance];
    [v8 caLogsUploadInterval];
    v10 = v9;

    if (v10 <= 0.0)
    {
      v10 = 7200.0;
    }
  }

  else
  {
    v10 = 7200.0;
  }

  v11 = sub_100063A54();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134217984;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CoreAnalytics logs upload timer interval set to: %f (seconds)", &v19, 0xCu);
  }

  v12 = [NSTimer alloc];
  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v12 initWithFireDate:v2 interval:v13 target:"caLogsUploadTimerHandler:" selector:0 userInfo:1 repeats:v10];
  v15 = objc_loadWeakRetained((a1 + 32));
  [v15 setCaLogsUploadTimer:v14];

  v16 = +[NSRunLoop currentRunLoop];
  v17 = objc_loadWeakRetained((a1 + 32));
  v18 = [v17 caLogsUploadTimer];
  [v16 addTimer:v18 forMode:NSDefaultRunLoopMode];
}

void sub_10005016C(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "It's time for snapshot revert!", v11, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained isBetterTogetherDemo] & 1) == 0)
  {

LABEL_10:
    v10 = objc_loadWeakRetained((a1 + 32));
    [v10 revertSnapshot];
    goto LABEL_11;
  }

  v4 = +[MSDPairedWatchProxy sharedInstance];
  v5 = [v4 paired];

  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = +[MSDPairedWatchProxy sharedInstance];
  v7 = [v6 revertSnapshot];

  if (v7)
  {
    goto LABEL_10;
  }

  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000D376C();
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 saveOperationRequest:@"Restart" requestFlag:0 completeBy:0];

  v10 = objc_loadWeakRetained((a1 + 32));
  [v10 reboot];
LABEL_11:
}

void sub_10005035C(uint64_t a1)
{
  v2 = +[MSDStoreHoursManager sharedInstance];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained snapshotRevertTimer];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 snapshotRevertTimer];
    [v6 invalidate];

    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 setSnapshotRevertTimer:0];
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 allowSnapshotRevertTimer];

  if (v9)
  {
    v10 = [v2 nextContentRevertDate];
    v11 = +[NSDate distantFuture];
    v12 = [v10 isEqualToDate:v11];

    if (v12)
    {
      v13 = sub_100063A54();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Disable snapshot revert timer for the near future.", &v22, 2u);
      }
    }

    else
    {
      v14 = [NSTimer alloc];
      v15 = objc_loadWeakRetained((a1 + 32));
      v16 = [v14 initWithFireDate:v10 interval:v15 target:"snapshotRevertTimerHandler:" selector:0 userInfo:0 repeats:0.0];
      v17 = objc_loadWeakRetained((a1 + 32));
      [v17 setSnapshotRevertTimer:v16];

      v18 = +[NSRunLoop currentRunLoop];
      v19 = objc_loadWeakRetained((a1 + 32));
      v20 = [v19 snapshotRevertTimer];
      [v18 addTimer:v20 forMode:NSDefaultRunLoopMode];

      v13 = sub_100063A54();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v10 toString];
        v22 = 138543362;
        v23 = v21;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Periodic snapshot revert timer scheduled: %{public}@", &v22, 0xCu);
      }
    }
  }
}

void sub_100050B7C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_activity_get_state(v2) == 2)
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D38D4();
    }

    v4 = +[MSDAnalyticsEventHandler sharedInstance];
    [v4 sendHeartbeatEvent];

    xpc_activity_set_state(v2, 5);
  }
}

id sub_1000511AC(uint64_t a1)
{
  v2 = [*(a1 + 32) waitForCommandTimer];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setWaitForCommandTimer:0];
}

void sub_100051270(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100051318;
  v3[3] = &unk_10016AEA0;
  v3[4] = *(a1 + 32);
  v2 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v3 block:300.0];
  [*(a1 + 32) setWaitForCommandTimer:v2];
}

void sub_100051318(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Didn't receive a valid command within given time, go to demo mode now.", v4, 2u);
  }

  [*(a1 + 32) setWaitingForCommand:0];
  [*(a1 + 32) setWaitForCommandTimer:0];
  v3 = +[MSDPairedWatchProxy sharedInstance];
  if ([*(a1 + 32) isBetterTogetherDemo] && objc_msgSend(v3, "paired"))
  {
    [v3 lockSnapshot];
  }

  [*(a1 + 32) lockSnapshot];
}

void sub_100052044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100052090(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000520A8(void *a1)
{
  [*(*(a1[4] + 8) + 40) lock];
  *(*(a1[5] + 8) + 24) = [*(*(a1[6] + 8) + 40) fetchActiveNetworkInterface];
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1[5] + 8) + 24);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Found active network interfaces: %lu", &v5, 0xCu);
  }

  [*(*(a1[4] + 8) + 40) signal];
  return [*(*(a1[4] + 8) + 40) unlock];
}

void sub_100052294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000522B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (nw_path_get_status(*(a1 + 32)) == nw_path_status_satisfied)
  {
    v4 = nw_interface_get_type(v3) - 1;
    if (v4 <= 2)
    {
      *(*(*(a1 + 40) + 8) + 24) |= qword_100112190[v4];
    }
  }

  return 1;
}

unsigned __int8 *sub_1000559DC(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v4 = sub_100055A40(a2);
  v5 = v4;
  if (v4)
  {
    v4 = sub_100055A40(a3);
    if (v4)
    {
      for (i = 0; i != 20; ++i)
      {
        v5[i] ^= v4[i];
      }
    }
  }

  free(v4);
  return v5;
}

unsigned __int8 *sub_100055A40(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CFBooleanGetTypeID())
  {
    v3 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
    data = CFBooleanGetValue(a1);
    p_data = &data;
    Length = 1;
LABEL_4:
    CC_SHA1(p_data, Length, v3);
    return v3;
  }

  if (v2 == CFStringGetTypeID())
  {
    v3 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
    v6 = CFStringGetLength(a1) + 1;
    v7 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
    CFStringGetCString(a1, v7, v6, 0x8000100u);
    CC_SHA1(v7, v6, v3);
    free(v7);
    return v3;
  }

  if (v2 == CFDateGetTypeID())
  {
    v3 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
    AbsoluteTime = CFDateGetAbsoluteTime(a1);
    p_data = &AbsoluteTime;
    Length = 8;
    goto LABEL_4;
  }

  if (v2 == CFDataGetTypeID())
  {
    v3 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    p_data = BytePtr;
    goto LABEL_4;
  }

  if (v2 == CFArrayGetTypeID())
  {

    return sub_100055FE8(a1);
  }

  if (v2 == CFDictionaryGetTypeID())
  {

    return sub_10005616C(a1);
  }

  if (v2 != CFNumberGetTypeID())
  {
    return 0;
  }

  return sub_100056300(a1);
}

CFDataRef sub_100055C80(const __CFAllocator *a1, const __CFString *a2, CFStringRef theString1, uint64_t a4, void (*a5)(uint64_t, double, float), uint64_t a6)
{
  memset(&c, 0, sizeof(c));
  if (CFStringCompare(theString1, @"SHA-1", 0) == kCFCompareEqualTo)
  {
    v13 = CFURLCreateWithFileSystemPath(a1, a2, kCFURLPOSIXPathStyle, 0);
    if (!v13)
    {
      v11 = sub_100063A54();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000D4688();
      }

      goto LABEL_4;
    }

    v14 = v13;
    v15 = CFReadStreamCreateWithFile(a1, v13);
    if (!v15)
    {
      v25 = sub_100063A54();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000D4620();
      }

      v12 = 0;
      goto LABEL_40;
    }

    v16 = v15;
    if (CFReadStreamOpen(v15))
    {
      if (a5)
      {
        a5(a6, 0.0, -1.0);
      }

      CC_SHA1_Init(&c);
      v17 = malloc_type_calloc(1uLL, 0x10000uLL, 0x100004077774924uLL);
      if (v17)
      {
        v18 = v17;
        v29.tv_sec = 0;
        *&v29.tv_usec = 0;
        gettimeofday(&v29, 0);
        v19 = CFReadStreamRead(v16, v18, 0x10000);
        if (v19 < 1)
        {
LABEL_18:
          CC_SHA1_Final(md, &c);
          v23 = CFDataCreate(a1, md, 20);
          if (v23)
          {
            v12 = v23;
            v24 = sub_1000558DC(md);
            if (v24)
            {
              CFRelease(v24);
            }

            if (a5)
            {
              a5(a6, 1.0, -1.0);
            }

            goto LABEL_38;
          }

          v27 = sub_100063A54();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_1000D4538();
          }
        }

        else
        {
          v20 = v19;
          v21 = 0;
          while (1)
          {
            CC_SHA1_Update(&c, v18, v20);
            v21 += v20;
            v22.n128_u32[0] = -1.0;
            if (a4)
            {
              v22.n128_f32[0] = v21 / a4;
            }

            if (a5 && (a5)(a6, v22, -1.0))
            {
              break;
            }

            v20 = CFReadStreamRead(v16, v18, 0x10000);
            if (v20 <= 0)
            {
              goto LABEL_18;
            }
          }

          v27 = sub_100063A54();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_1000D44C4();
          }
        }

        v12 = 0;
LABEL_38:
        free(v18);
        goto LABEL_39;
      }

      v26 = sub_100063A54();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000D4578();
      }
    }

    else
    {
      v26 = sub_100063A54();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000D45B8();
      }
    }

    v12 = 0;
LABEL_39:
    CFReadStreamClose(v16);
    CFRelease(v16);
LABEL_40:
    CFRelease(v14);
    return v12;
  }

  v11 = sub_100063A54();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1000D4484();
  }

LABEL_4:

  return 0;
}

uint64_t sub_100055FE8(const __CFArray *a1)
{
  if (!CFArrayGetCount(a1))
  {
    return 0;
  }

  memset(&c, 0, sizeof(c));
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v3 = Count;
    v4 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      v16.location = 0;
      v16.length = v3;
      if (CFArrayGetCountOfValue(a1, v16, ValueAtIndex) >= 2)
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_6;
      }
    }

    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failing to hash due to duplicate array entries", v14, 2u);
    }

    return 0;
  }

LABEL_6:
  v6 = sub_100055A40(@"array");
  CC_SHA1_Init(&c);
  if (CFArrayGetCount(a1) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = CFArrayGetValueAtIndex(a1, v7);
      v9 = sub_100055A40(v8);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      CC_SHA1_Update(&c, v9, 0x14u);
      CC_SHA1_Final(v10, &c);
      if (v6)
      {
        for (i = 0; i != 20; ++i)
        {
          *(v6 + i) ^= v10[i];
        }
      }

      free(v10);
      ++v7;
    }

    while (CFArrayGetCount(a1) > v7);
  }

  return v6;
}

uint64_t sub_10005616C(const __CFDictionary *a1)
{
  if (!CFDictionaryGetCount(a1))
  {
    return 0;
  }

  memset(&v12, 0, sizeof(v12));
  v2 = sub_100055A40(@"dictionary");
  Count = CFDictionaryGetCount(a1);
  v4 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  CFDictionaryGetKeysAndValues(a1, v4, 0);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v6 = sub_100055A40(v4[i]);
      Value = CFDictionaryGetValue(a1, v4[i]);
      v8 = sub_100055A40(Value);
      CC_SHA1_Init(&v12);
      v9 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
      if (v6)
      {
        CC_SHA1_Update(&v12, v6, 0x14u);
        free(v6);
      }

      if (v8)
      {
        CC_SHA1_Update(&v12, v8, 0x14u);
        free(v8);
      }

      CC_SHA1_Final(v9, &v12);
      if (v2 && v9)
      {
        for (j = 0; j != 20; ++j)
        {
          *(v2 + j) ^= v9[j];
        }
      }

      free(v9);
    }
  }

  free(v4);
  return v2;
}

unsigned __int8 *sub_100056300(const __CFNumber *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
  if ((valuePtr + 1) >= 0xE)
  {
    v3 = 8;
  }

  else
  {
    v3 = 4;
  }

  if ((valuePtr + 1) < 0xE)
  {
    v4 = kCFNumberSInt32Type;
  }

  else
  {
    v4 = kCFNumberSInt64Type;
  }

  v5 = malloc_type_calloc(1uLL, v3, 0x100004077774924uLL);
  CFNumberGetValue(a1, v4, v5);
  CC_SHA1(v5, v3, v2);
  free(v5);
  return v2;
}

void sub_100056844(id a1)
{
  v1 = objc_alloc_init(MSDFindMyHub);
  v2 = qword_1001A5788;
  qword_1001A5788 = v1;

  v3 = +[MSDTargetDevice sharedInstance];
  [qword_1001A5788 setDevice:v3];

  v4 = objc_opt_new();
  [qword_1001A5788 setStoresSearched:v4];
}

void sub_100057448(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  v5 = [v3 eligible];
  v6 = [v3 showUI];

  if (!v4)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully checked in device to DU; saving device eligibility: %d", v11, 8u);
    }

    v8 = +[MSDPreferencesFile sharedInstance];
    v9 = [NSNumber numberWithBool:v5];
    [v8 setObject:v9 forKey:@"DemoEligible"];
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6, v4);
  }
}

void sub_100057740(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

void sub_100057A50(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 data];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

id sub_100057BD4(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cellular plan did change, retrying enrollment in Offline Mode", v4, 2u);
  }

  return [*(a1 + 32) handleEnrollmentRetryUponFirstLaunch];
}

void sub_1000580CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005810C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100058124(uint64_t a1, char a2, int a3, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v7 = obj;
  **(a1 + 48) = a2;
  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void sub_100058D50(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) toString];
    v4 = *(a1 + 48);
    v18 = 138543618;
    v19 = v3;
    v20 = 1026;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMH retry timer scheduled: %{public}@, isFirstLaunch: %{public, BOOL}d", &v18, 0x12u);
  }

  v5 = [*(a1 + 40) retryTimer];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 40) retryTimer];
    v8 = [v7 isValid];

    if (v8)
    {
      v9 = [*(a1 + 40) retryTimer];
      [v9 invalidate];

      [*(a1 + 40) setRetryTimer:0];
    }
  }

  v10 = [NSTimer alloc];
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = [NSNumber numberWithBool:*(a1 + 48)];
  v14 = [NSDictionary dictionaryWithObject:v13 forKey:@"isFirstLaunch"];
  v15 = [v10 initWithFireDate:v11 interval:v12 target:"handleRetryTimerFireForEnrollment:" selector:v14 userInfo:0 repeats:0.0];
  [*(a1 + 40) setRetryTimer:v15];

  v16 = +[NSRunLoop currentRunLoop];
  v17 = [*(a1 + 40) retryTimer];
  [v16 addTimer:v17 forMode:NSDefaultRunLoopMode];
}

void sub_100059F14(id a1)
{
  v1 = objc_alloc_init(MSDDeviceDataCollector);
  v2 = qword_1001A5798;
  qword_1001A5798 = v1;

  v4 = +[NSUUID UUID];
  v3 = [v4 UUIDString];
  [qword_1001A5798 setSessionUUID:v3];
}

void sub_10005A4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005A4EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D4FD8(v3, v4);
  }

  v17 = [v3 objectForKeyedSubscript:@"bundleID"];
  v5 = [v3 objectForKeyedSubscript:@"executableName"];
  v6 = *(a1 + 32);
  v7 = [v3 objectForKeyedSubscript:@"sessionStartTime"];
  v8 = [v6 stringFromDate:v7];

  v9 = [v3 objectForKeyedSubscript:@"sessionEndTime"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [*(a1 + 32) stringFromDate:v9];
  }

  else
  {
    v10 = @"<NOT_SET>";
  }

  v11 = [v3 objectForKeyedSubscript:@"appDuration"];
  v12 = +[MSDAnalyticsEventHandler sharedInstance];
  v13 = *(a1 + 56);
  v14 = *(a1 + 40);
  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 24);
  *(v15 + 24) = v16 + 1;
  [v11 doubleValue];
  [v12 sendAppUsageDataEvent:v17 withExecutable:v5 sessionUUID:v14 sessionStart:v8 sessionEnd:v10 sessionDuration:v13 appOrder:v16 appDuration:?];
}

void sub_10005AF18(id a1)
{
  v1 = [MSDNPIMaskValues alloc];
  v4 = +[MSDPreferencesFile sharedInstance];
  v2 = [(MSDNPIMaskValues *)v1 initWithPreferencesFile:v4];
  v3 = qword_1001A57A8;
  qword_1001A57A8 = v2;
}

void sub_10005D1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005D2B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005D2CC(void *a1, uint64_t a2)
{
  v3 = [*(*(a1[4] + 8) + 40) objectAtIndex:a2];
  v4 = [*(*(a1[5] + 8) + 40) objectForKey:v3];
  v5 = *(*(a1[6] + 8) + 40);
  v6 = *(a1[7] + 8);
  obj = *(v6 + 40);
  v7 = [v5 createSymbolicLinkAtPath:v3 withDestinationPath:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if ((v7 & 1) == 0)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(*(a1[7] + 8) + 40) localizedDescription];
      *buf = 138543874;
      v12 = v3;
      v13 = 2114;
      v14 = v4;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Could not create link from %{public}@ to %{public}@ - %{public}@", buf, 0x20u);
    }

    *(*(a1[8] + 8) + 24) = 0;
  }
}

void sub_10005D43C(void *a1, uint64_t a2)
{
  v3 = [*(*(a1[4] + 8) + 40) objectAtIndex:a2];
  v4 = [*(*(a1[5] + 8) + 40) objectForKey:v3];
  if ([v4 isEqualToString:@"ZERO_SIZE"])
  {
    if (([*(*(a1[6] + 8) + 40) createFileAtPath:v3 contents:0 attributes:0] & 1) == 0)
    {
      v5 = [NSError errorDomainMSDWithCode:3727740944 message:@"Cannot write file."];
      v6 = *(a1[7] + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = sub_100063A54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v3;
        v9 = "Could not create empty file at %{public}@";
        v10 = v8;
        v11 = 12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v12, v11);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else if (([*(*(a1[8] + 8) + 40) copyFileIfPresentInCache:v4 toLocation:v3 verifyHash:*(*(a1[9] + 8) + 24)] & 1) == 0)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = v4;
      v14 = 2114;
      v15 = v3;
      v9 = "Could not copy file %{public}@ from content cache to %{public}@";
      v10 = v8;
      v11 = 22;
      goto LABEL_9;
    }

LABEL_10:

    *(*(a1[10] + 8) + 24) = 0;
  }
}

BOOL sub_10005DA84(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t sub_10005F0A8()
{

  return objc_opt_isKindOfClass();
}

BOOL sub_100060264(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSURL *)v4 path];
    v9 = 136315906;
    v10 = "[MSDManifest enumerateAndCollectMetaData:relativeTo:skip:superSet:handler:]_block_invoke";
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Could not enumerate %{public}@, url=%{public}@, error=%{public}@", &v9, 0x2Au);
  }

  return 1;
}

void sub_100061148(uint64_t a1)
{
  if ([*(a1 + 32) downloadedSize] >= 1)
  {
    v2 = [*(a1 + 32) downloadSource];

    if (v2)
    {
      v3 = [*(a1 + 32) downloadSource];
      v4 = [v3 isEqualToString:@"localCachingHub"];
      v5 = @"remote";
      if (v4)
      {
        v5 = @"local";
      }

      v6 = v5;

      v7 = +[MSDProgressUpdater sharedInstance];
      v8 = [v7 bundleInProgress];

      [v8 updateDownloadedContent:objc_msgSend(*(a1 + 32) fromSource:{"downloadedSize"), v6}];
    }
  }
}

id sub_100061248(id *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] fileInfo];
    v4 = [v3 fileHash];
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Attempting to download file again: %{public}@", &v11, 0xCu);
  }

  v5 = sub_100063BEC();
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7 = [WeakRetained signpostId];

  if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = [a1[4] fileInfo];
    v9 = [v8 fileHash];
    v11 = 138412290;
    v12 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, v7, "Retry File Download", "File download retry: %{xcode:string}@", &v11, 0xCu);
  }

  [a1[4] setRetryCount:{objc_msgSend(a1[4], "retryCount") - 1}];
  return [a1[5] _dispatchRequest:a1[4]];
}

void sub_100061A7C(id a1)
{
  v1 = objc_alloc_init(MSDTestPreferences);
  v2 = qword_1001A57C0;
  qword_1001A57C0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100062AD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _activate];
}

void sub_100062BDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deactivate];
}

void sub_1000630B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  _Unwind_Resume(a1);
}

void sub_1000630F4(id a1)
{
  v1 = sub_100063A54();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1000D6668(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_100063138(id a1)
{
  v1 = sub_100063A54();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceAdvertiser: XPC connection to RPCompanionLinkClient invalidated!", v2, 2u);
  }
}

void sub_1000631A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLocalDeviceUpdated];
}

void sub_1000631E0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRPCompanionClientActivateCompletionWithError:v3];
}

void sub_10006323C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000D66A0(v2);
  }
}

void sub_100063290(id a1)
{
  v1 = sub_100063A54();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1000D6728(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_1000632D4(id a1)
{
  v1 = sub_100063A54();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1000D6760(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_100063318(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleShowPassword:v5 withFlags:a2];
}

void sub_100063384(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleHidePasswordWithFlags:a2];
}

id sub_100063A54()
{
  if (qword_1001A57D8 != -1)
  {
    sub_1000D6820();
  }

  v1 = qword_1001A57D0;

  return v1;
}

void sub_100063A98(id a1)
{
  v1 = os_log_create("com.apple.MobileStoreDemo", "Default");
  v2 = qword_1001A57D0;
  qword_1001A57D0 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100063ADC()
{
  if (qword_1001A57E8 != -1)
  {
    sub_1000D6834();
  }

  v1 = qword_1001A57E0;

  return v1;
}

void sub_100063B20(id a1)
{
  v1 = os_log_create("com.apple.MobileStoreDemo", "ScreenSaver");
  v2 = qword_1001A57E0;
  qword_1001A57E0 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100063B64()
{
  if (qword_1001A57F8 != -1)
  {
    sub_1000D6848();
  }

  v1 = qword_1001A57F0;

  return v1;
}

void sub_100063BA8(id a1)
{
  v1 = os_log_create("com.apple.MobileStoreDemo", "Message");
  v2 = qword_1001A57F0;
  qword_1001A57F0 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100063BEC()
{
  if (qword_1001A5808 != -1)
  {
    sub_1000D685C();
  }

  v1 = qword_1001A5800;

  return v1;
}

void sub_100063C30(id a1)
{
  if (os_variant_has_internal_content())
  {
    v1 = os_log_create("com.apple.MobileStoreDemo", "Signpost");
  }

  else
  {
    v1 = &_os_log_disabled;
    v2 = &_os_log_disabled;
  }

  v3 = qword_1001A5800;
  qword_1001A5800 = v1;
}

void sub_100063CA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = +[MSDLogModel sharedInstance];
  [v10 logWithFormat:v9 andArgs:&a9];
}

void sub_100063D44(id a1)
{
  v1 = objc_alloc_init(MSDLogModel);
  v2 = qword_1001A5810;
  qword_1001A5810 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000642DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000642F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006430C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v14 = [*(a1 + 32) stringByAppendingFormat:@"/%@", a2];
  v6 = [*(a1 + 40) description];
  NSLog(@"Checking existing log file (full path) %@ against %@", v14, v6);

  v7 = [*(a1 + 48) attributesOfItemAtPath:v14 error:0];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(*(*(a1 + 56) + 8) + 40) fileCreationDate];
  v11 = [v10 compare:*(a1 + 40)];

  if (v11 == -1)
  {
    v12 = [*(*(*(a1 + 56) + 8) + 40) fileCreationDate];
    v13 = [v12 description];
    NSLog(@"Removing %@ whose creation date is %@.", v14, v13);

    [*(a1 + 48) removeItemAtPath:v14 error:0];
  }

  *a4 = 0;
}

void sub_1000645D4(id a1)
{
  v1 = objc_alloc_init(MSDMailProcessor);
  v2 = qword_1001A5820;
  qword_1001A5820 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100064A7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained pingTimer];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 pingTimer];
    [v5 invalidate];
  }

  v10 = objc_loadWeakRetained((a1 + 32));
  v6 = [v10 pingInterval];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [NSTimer scheduledTimerWithTimeInterval:v7 target:"handlePingTimerTicking:" selector:0 userInfo:1 repeats:v6];
  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 setPingTimer:v8];
}

void sub_100064DDC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = sub_100063B64();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ping and process command (if any)", buf, 2u);
  }

  v5 = [*(a1 + 32) pingWithType:*(a1 + 40)];
  if (v5)
  {
    v6 = sub_100063B64();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received a request: %{public}@", buf, 0xCu);
    }

    v7 = +[MSDWorkQueueSet sharedInstance];
    v8 = [v7 messageQueue];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100064FEC;
    v12 = &unk_10016A258;
    v13 = *(a1 + 32);
    v14 = v5;
    dispatch_async(v8, &v9);
  }

  [*(a1 + 32) setQueuedPingType:{objc_msgSend(*(a1 + 32), "queuedPingType", v9, v10, v11, v12, v13) & ~*(a1 + 40)}];

  objc_sync_exit(v3);
  objc_autoreleasePoolPop(v2);
}

void sub_100064FEC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) processRequest:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_100066DB8(uint64_t a1)
{
  if (*(a1 + 44) == 1 && ([*(a1 + 32) updateContentWithDeadline:*(a1 + 40)] & 1) == 0)
  {
    v3 = sub_100063B64();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000D7070();
    }
  }

  else
  {
    v1 = +[MSDDemoUpdateController sharedInstance];
    v2 = [v1 updateDemoContent];

    if (v2)
    {
      return;
    }

    v3 = sub_100063B64();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000D70AC();
    }
  }
}

void sub_100066E64(id a1)
{
  v1 = +[MSDOSUpdaterController sharedInstance];
  [v1 startOSUpdate];
}

void sub_100066EAC(uint64_t a1)
{
  v2 = +[MSDDemoUpdateController sharedInstance];
  [v2 continueToUpdateOSPreferences];

  v3 = [*(a1 + 32) device];
  [v3 switchModeImmediately:5];
}

void sub_100067754(id a1)
{
  v1 = objc_alloc_init(MSDKeychainManager);
  v2 = qword_1001A5830;
  qword_1001A5830 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100068D9C(id a1)
{
  v1 = objc_alloc_init(MSDLocalEventStreamHandler);
  v2 = qword_1001A5848;
  qword_1001A5848 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10006A40C(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 operation:*(a1 + 32) didProduceNewOperation:*(a1 + 40) forRollback:*(a1 + 48)];
}

void sub_10006A95C(id a1)
{
  v1 = objc_alloc_init(MSDProcessTestEvents);
  v2 = qword_1001A5858;
  qword_1001A5858 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10006B4BC(id a1)
{
  v1 = objc_alloc_init(MSDAccountManager);
  v2 = qword_1001A5868;
  qword_1001A5868 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10006B6EC(id a1, int a2)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received notification for trusted peer change!", v4, 2u);
  }

  v3 = +[MSDTargetDevice sharedInstance];
  [v3 saveiCloudAccountSyncNeeded:1];
}

void sub_10006BD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006BD90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_10006BDA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [v2 setupContinuityAccounts:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v4;
  return dispatch_semaphore_signal(*(a1 + 40));
}

void *sub_10006DBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1000C1390(v3, 3727744512, a3);
}

BOOL sub_10006DBC8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_10006DBEC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

void sub_10006E6F8(id a1)
{
  v1 = objc_alloc_init(MSDAppHelper);
  v2 = qword_1001A5878;
  qword_1001A5878 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10006F3A0(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKey:@"bundleIDs"];

  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received app registered notification with bundle IDs: %{public}@", &v6, 0xCu);
  }

  [*(a1 + 32) lock];
  [*(a1 + 32) signal];
  [*(a1 + 32) unlock];
}

void sub_10006FC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006FCA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) demuxQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006FD68;
  v6[3] = &unk_10016A1C8;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_barrier_sync(v4, v6);

  objc_destroyWeak(&v8);
}

void sub_10006FD68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleDownloadPaused:*(a1 + 32)];
}

void sub_10006FDB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) demuxQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006FE80;
  v6[3] = &unk_10016A1C8;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_barrier_sync(v4, v6);

  objc_destroyWeak(&v8);
}

void sub_10006FE80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleDownloadAborted:*(a1 + 32)];
}

void sub_100072A14(id a1)
{
  v1 = objc_alloc_init(MSDAnalyticsEventHandler);
  v2 = qword_1001A5888;
  qword_1001A5888 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100074DEC(id a1)
{
  v1 = objc_alloc_init(MSDBAAInterface);
  v2 = qword_1001A5898;
  qword_1001A5898 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100075114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100075144(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v7 = a4;
  if (a2 && v11)
  {
    [*(a1 + 32) setPrivateKey:a2];
    v8 = [v11 mutableCopy];
    [*(a1 + 32) setClientCertArray:v8];

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = [*(a1 + 32) clientCertArray];
    (*(v9 + 16))(v9, v10, [*(a1 + 32) privateKey], v7);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100076804(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000DA6C4(v3);
    }
  }

  v5 = [*(a1 + 32) semaphore];
  dispatch_semaphore_signal(v5);
}

void sub_100076EEC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100076F3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100076F54(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000DA8CC();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v7 = [*(a1 + 32) semaphore];
  dispatch_semaphore_signal(v7);
}

void sub_100076FE8(uint64_t a1, void *a2, char a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000DA934();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  *(*(*(a1 + 48) + 8) + 24) = a3;
  v8 = [*(a1 + 32) semaphore];
  dispatch_semaphore_signal(v8);
}

void sub_100077094(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000DA99C();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v6 = [*(a1 + 32) semaphore];
  dispatch_semaphore_signal(v6);
}

void sub_100077688(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

BOOL sub_1000776B4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void sub_1000792C8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_error_impl(a1, v13, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

void sub_10007932C(id a1)
{
  v1 = objc_alloc_init(MSDBackgroundDownload);
  v2 = qword_1001A58A8;
  qword_1001A58A8 = v1;

  v3 = +[MSDProgressUpdater sharedInstance];
  v4 = [v3 backgroundBundle];
  [qword_1001A58A8 setBundleDownloadInProgress:v4];

  v5 = qword_1001A58A8;

  [v5 setIsBackgroundDownloadQueueEmpty:1];
}

void sub_1000794E8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[MSDSystemMonitor sharedInstance];
  v4 = +[MSDHelperAgent sharedInstance];
  v5 = +[MSDTargetDevice sharedInstance];
  [*(a1 + 32) setDevice:v5];

  v6 = [*(a1 + 32) device];
  [v6 setBackgroundDownloadActive:1];

  v7 = [*(a1 + 32) device];
  [v7 manageDeviceSnapshot:@"MountSnapshot"];

  v8 = +[MSDProgressUpdater sharedInstance];
  v9 = [v8 backgroundBundle];
  [*(a1 + 32) setBundleDownloadInProgress:v9];

  v10 = [*(a1 + 32) bundleDownloadInProgress];
  [v10 startBundleUpdateTimer];

  if (![v4 stageDeviceForUpdateProcess:1])
  {
    v26 = sub_100063A54();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1000DB208(v26);
    }

    goto LABEL_17;
  }

  v11 = [*(a1 + 32) initiateBackgroundDownload];
  if (!v11)
  {
    v12 = 0;
    do
    {
      v13 = sub_100063A54();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000DB24C(&buf, v34, v13);
      }

      v14 = v12 + 1;
      sleep(0x3Cu);
      v15 = [*(a1 + 32) initiateBackgroundDownload];
      v11 = v15;
      if (v15)
      {
        break;
      }
    }

    while (v12++ < 4);
    if (!v15)
    {
      v26 = sub_100063A54();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000DB310(v14, v26);
      }

LABEL_17:

      v19 = 0;
      v18 = 0;
      goto LABEL_18;
    }
  }

  v17 = [[MSDComponentBuilder alloc] initWithSignedManifest:v11 andOptions:&off_10017C080];
  v18 = [(MSDComponentBuilder *)v17 buildComponentsFromManifest];
  if (!v18)
  {
    sub_1000DB28C(v11, v17);
    v19 = 0;
    goto LABEL_12;
  }

  v19 = [[MSDComponentProcessor alloc] initWithQoS:9];
  v20 = [[MSDComponentManager alloc] initWithComponents:v18 andProcessor:v19];
  [*(a1 + 32) setComponentManager:v20];

  [v3 registerObserver:*(a1 + 32)];
  [v3 startSystemIdleDetection];
  v21 = [*(a1 + 32) componentManager];
  [v21 startProcessingAllComponents];

  v22 = [*(a1 + 32) componentManager];
  v23 = [v22 waitForProcessingCompletionTillDate:0 outError:0];

  [v3 unregisterObserver];
  [v3 stopSystemIdleDetection];
  if (v23)
  {
LABEL_12:
    v24 = 3;
    v25 = 3;
    goto LABEL_19;
  }

LABEL_18:
  v25 = 4;
  v24 = 4;
LABEL_19:
  v27 = [*(a1 + 32) bundleDownloadInProgress];
  [v27 setBundleStateAs:v25];

  v28 = [*(a1 + 32) device];
  [v28 setBackgroundDownloadState:v24];

  v29 = [*(a1 + 32) device];
  [v29 manageDeviceSnapshot:@"UnmountSnapshot"];

  v30 = [*(a1 + 32) bundleDownloadInProgress];
  [v30 stopBundleUpdateTimer];

  v31 = sub_100063A54();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Can not continue background download. Exiting...", v32, 2u);
  }

  [*(a1 + 32) setIsBackgroundDownloadQueueEmpty:1];
  objc_autoreleasePoolPop(v2);
}

void sub_10007AAD4(id a1)
{
  v1 = objc_alloc_init(MSDLanguageAndRegionManager);
  v2 = qword_1001A58B8;
  qword_1001A58B8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10007AE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007AE3C(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 24) != -1)
  {
    v1 = result;
    v2 = sub_100063A54();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Deadline for Springboard restart passed.", v3, 2u);
    }

    [*(v1 + 32) cancelNotifyToken:*(*(*(v1 + 48) + 8) + 24)];
    result = *(v1 + 40);
    if (result)
    {
      return (*(result + 16))(result, 0);
    }
  }

  return result;
}

uint64_t sub_10007AEE8(uint64_t a1)
{
  out_token = 0;
  notify_register_check("com.apple.springboard.finishedstartup", &out_token);
  result = out_token;
  if (out_token != -1)
  {
    state64 = 0;
    result = notify_get_state(out_token, &state64);
    if (state64)
    {
      v3 = sub_100063A54();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Springboard restarted.", v4, 2u);
      }

      [*(a1 + 32) cancelNotifyToken:*(*(*(a1 + 48) + 8) + 24)];
      result = *(a1 + 40);
      if (result)
      {
        return (*(result + 16))(result, 1);
      }
    }
  }

  return result;
}

void sub_10007C20C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) completion];

  if (v6)
  {
    v7 = [*(a1 + 32) completion];
    v8 = [*(a1 + 32) parseResponseForError:v9 andPayload:v5];
    (v7)[2](v7, v8);
  }
}

void sub_10007C558(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) completion];

  if (v6)
  {
    v7 = [*(a1 + 32) completion];
    v8 = [*(a1 + 32) parseResponseForError:v9 andPayload:v5];
    (v7)[2](v7, v8);
  }
}

void sub_10007C67C(id a1)
{
  v1 = objc_alloc_init(MSDLocalization);
  v2 = qword_1001A58C8;
  qword_1001A58C8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10007CAE0(uint64_t a1)
{
  v2 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/MobileStoreDemoKit.framework"];
  v29 = +[NSMutableDictionary dictionary];
  v3 = &OBJC_METACLASS___MSDGetContinuitySettingsRequest;
  v39 = 0;
  v40 = 0;
  v4 = [MSDLocalization getWarningKeys:&v40 andPlaceHolderWarnings:&v39 forOwnershipWarningFlag:*(a1 + 32)];
  v5 = v40;
  v6 = v39;
  if (v2)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000DC7E0();
    }
  }

  else
  {
    v9 = [v2 localizations];
    v8 = v9;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = sub_100063A54();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1000DC870();
      }

      v28 = v6;

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v8 = v8;
      v32 = [v8 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v32)
      {
        v31 = *v36;
        v34 = kMMSDPropertyClaimTitleKey;
        v33 = kMMSDPropertyClaimBodyKey;
        v12 = kMMSDPropertyClaimLinkKey;
        *&v11 = 138543362;
        v27 = v11;
        obj = v8;
        do
        {
          v13 = 0;
          do
          {
            if (*v36 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v35 + 1) + 8 * v13);
            v15 = [v5 objectForKey:{v34, v27}];
            v16 = [v2 localizedStringForKey:v15 value:0 table:0 localization:v14];

            v17 = [v5 objectForKey:v33];
            v18 = [v2 localizedStringForKey:v17 value:0 table:0 localization:v14];

            v19 = [v5 objectForKey:v12];
            v20 = [v2 localizedStringForKey:v19 value:0 table:0 localization:v14];

            if (!v20 || ([v5 objectForKey:v12], v21 = objc_claimAutoreleasedReturnValue(), v22 = -[__CFString isEqualToString:](v20, "isEqualToString:", v21), v21, v22))
            {

              v20 = &stru_10016D9D8;
            }

            if (v16 && v18)
            {
              v43[0] = v34;
              v43[1] = v33;
              v44[0] = v16;
              v44[1] = v18;
              v43[2] = v12;
              v44[2] = v20;
              v23 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:3];
              [v29 setObject:v23 forKey:v14];
              if ([v14 isEqualToString:@"en"])
              {
                v23 = v23;

                v28 = v23;
              }
            }

            else
            {
              v23 = sub_100063A54();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = v27;
                v42 = v14;
                _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "ERROR - Either title, body or link localized text is missing for locale:  %{public}@", buf, 0xCu);
              }
            }

            v13 = v13 + 1;
          }

          while (v32 != v13);
          v8 = obj;
          v32 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
        }

        while (v32);
      }

      v3 = &OBJC_METACLASS___MSDGetContinuitySettingsRequest;
      v6 = v28;
    }

    else
    {
      v24 = sub_100063A54();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000DC8F4();
      }
    }
  }

  [&v3[11] fillInMissingLocales:v29 withOwnershipWarningMsg:v6];
  v25 = [NSDictionary dictionaryWithDictionary:v29];
  v26 = qword_1001A58D8;
  qword_1001A58D8 = v25;
}

void sub_10007D0B4(id a1)
{
  v1 = qword_1001A58E8;
  qword_1001A58E8 = &off_10017BE50;
}

void sub_10007D690(id a1)
{
  v1 = objc_alloc_init(MSDStoreHoursManager);
  v2 = qword_1001A58F8;
  qword_1001A58F8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10007D858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007D87C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained expirationTimer];
  [v1 fire];
}

void sub_10007EBEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained expirationTimer];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 expirationTimer];
    [v5 invalidate];

    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 setExpirationTimer:0];
  }

  v7 = [NSTimer alloc];
  v8 = *(a1 + 32);
  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v7 initWithFireDate:v8 interval:v9 target:"storeHourSettingsExpirationHandler:" selector:0 userInfo:0 repeats:0.0];
  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 setExpirationTimer:v10];

  v12 = +[NSRunLoop currentRunLoop];
  v13 = objc_loadWeakRetained((a1 + 40));
  v14 = [v13 expirationTimer];
  [v12 addTimer:v14 forMode:NSDefaultRunLoopMode];

  v15 = sub_100063A54();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 32) toString];
    v17 = 138543362;
    v18 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Store hour settings will expire on %{public}@", &v17, 0xCu);
  }
}

void sub_10007EF40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained storeOpenTimer];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 storeOpenTimer];
    [v5 invalidate];

    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 setStoreOpenTimer:0];
  }

  v7 = [NSTimer alloc];
  v8 = *(a1 + 32);
  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v7 initWithFireDate:v8 interval:v9 target:"storeOpenHandler:" selector:0 userInfo:0 repeats:0.0];
  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 setStoreOpenTimer:v10];

  v14 = +[NSRunLoop currentRunLoop];
  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 storeOpenTimer];
  [v14 addTimer:v13 forMode:NSDefaultRunLoopMode];
}

void sub_10007F20C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained storeCloseTimer];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 storeCloseTimer];
    [v5 invalidate];

    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 setStoreCloseTimer:0];
  }

  v7 = [NSTimer alloc];
  v8 = *(a1 + 32);
  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v7 initWithFireDate:v8 interval:v9 target:"storeCloseHandler:" selector:0 userInfo:0 repeats:0.0];
  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 setStoreCloseTimer:v10];

  v14 = +[NSRunLoop currentRunLoop];
  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 storeCloseTimer];
  [v14 addTimer:v13 forMode:NSDefaultRunLoopMode];
}

void sub_10007F57C(id a1)
{
  v1 = [MSDAssetUpdater alloc];
  v4 = +[MSDUAFUpdater sharedInstance];
  v2 = [(MSDAssetUpdater *)v1 initWithUAFConnection:v4];
  v3 = qword_1001A5908;
  qword_1001A5908 = v2;
}

void sub_10007F9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007FA10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10007FA28(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10007FC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10007FCA8(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDAssetUpdater downloadAssetsWithError:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - Completion called", &v6, 0xCu);
  }
}

void sub_10007FFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10007FFF8(uint64_t a1, void *a2)
{
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDAssetUpdater downloadSiriAssetsWithError:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - Completion called", &v6, 0xCu);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_10008040C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_100080448(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100080670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10008069C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetTypes];
  [v2 toggleAutoUpdate:1 forAssetTypes:v3];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [*(a1 + 32) assetTypes];
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v26;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        v10 = v7;
        if (*v26 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v7 = [*(a1 + 32) runQueryWithAssetType:v11];

        if (v7 && [v7 count])
        {
          v12 = sub_100063A54();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v30 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ is missing assets", buf, 0xCu);
          }

          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100080A4C;
          v22[3] = &unk_10016B7F8;
          v13 = *(a1 + 32);
          v14 = *(a1 + 40);
          v22[4] = v11;
          v22[5] = v13;
          v23 = v7;
          v24 = *(a1 + 56);
          [v14 addOperationWithBlock:v22];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [*(a1 + 40) waitUntilAllOperationsAreFinished];
  v15 = sub_100063A54();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "All operations finished", buf, 2u);
  }

  if ([*(*(*(a1 + 64) + 8) + 40) count] || objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count"))
  {
    v16 = [*(*(*(a1 + 64) + 8) + 40) count];
    if (&v16[[*(*(*(a1 + 56) + 8) + 40) count]] > 5)
    {
      +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu Failed Asset Downloads. %lu Timed-out Asset Downloads.", [*(*(*(a1 + 64) + 8) + 40) count], objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count"));
    }

    else
    {
      [NSString stringWithFormat:@"Failed Asset Downloads: %@. Timed-out Asset Downloads: %@", *(*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 56) + 8) + 40)];
    }
    v17 = ;
    v21 = 0;
    sub_1000C1390(&v21, 3727744776, v17);
    v18 = v21;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a1 + 32);
  v20 = [v19 assetTypes];
  [v19 toggleAutoUpdate:0 forAssetTypes:v20];

  (*(*(a1 + 48) + 16))();
}

void sub_100080A4C(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138543362;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "======= Starting to download Asset type: %{public}@ ==========", buf, 0xCu);
  }

  v4 = a1[5];
  v5 = a1[6];
  v14 = 0;
  v6 = [v4 downloadAssets:v5 withError:&v14];
  v7 = v14;
  v8 = v7;
  if (v6)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "======= Asset type %{public}@ downloaded =========", buf, 0xCu);
    }
  }

  else
  {
    if (v7 && [v7 code] == 3727744775)
    {
      v11 = sub_100063A54();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000DCFC8(a1);
      }

      v12 = a1[7];
    }

    else
    {
      v13 = sub_100063A54();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000DD040(a1);
      }

      v12 = a1[8];
    }

    [*(*(v12 + 8) + 40) addObject:a1[4]];
  }
}

void sub_100080F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100080FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100063A54();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000DD174(a1);
    }

    v6 = *(*(a1 + 48) + 8);
    obj = *(v6 + 40);
    v7 = [NSString stringWithFormat:@"Asset download failed with status %ld", a2];
    sub_1000C1424(&obj, 3727744776, v7);
    objc_storeStrong((v6 + 40), obj);

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1000DD224(a1, v5);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100081C8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained queryTimer];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 queryTimer];
    [v5 invalidate];
  }

  v10 = objc_loadWeakRetained((a1 + 32));
  v6 = [v10 queryInterval];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [NSTimer scheduledTimerWithTimeInterval:v7 target:"informTimerFired" selector:0 userInfo:1 repeats:v6];
  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 setQueryTimer:v8];
}

void sub_100081E78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained queryTimer];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 queryTimer];
    [v5 invalidate];

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 setQueryTimer:0];
  }
}

void sub_100081FB4(uint64_t a1)
{
  if (![*(a1 + 32) assetsAvailable])
  {
    v3 = [*(a1 + 32) assetTypes];
    v4 = [v3 count];

    if (!v4)
    {
      [*(a1 + 32) collectAllAssetTypes];
      v5 = [*(a1 + 32) assetTypes];
      v4 = [v5 count];

      v6 = sub_100063A54();
      v7 = v6;
      if (!v4)
      {
        sub_1000DD420(v6, buf);
        goto LABEL_30;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Continuing asset query with %lu assets", buf, 0xCu);
      }
    }

    v8 = *(a1 + 32);
    v9 = [v8 assetTypes];
    [v8 toggleAutoUpdate:1 forAssetTypes:v9];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [*(a1 + 32) assetTypes];
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = 0;
      v15 = *v25;
      *&v12 = 138543362;
      v23 = v12;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          if ([*(a1 + 32) assetsAvailable])
          {
            v20 = sub_100063A54();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Available assets found in previous assetType query.", buf, 2u);
            }

            [*(a1 + 32) stopAssetQueryTimer];
            goto LABEL_26;
          }

          v18 = [*(a1 + 32) runQueryWithAssetType:v17];

          if (!v18)
          {
            v19 = sub_100063A54();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = v23;
              *&buf[4] = v17;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to query asset %{public}@", buf, 0xCu);
            }

            ++v14;
          }
        }

        v13 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_26:

      if (v14)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

    sub_1000DD368(v4, buf);
LABEL_30:

LABEL_27:
    v21 = *(a1 + 32);
    v22 = [v21 assetTypes];
    [v21 toggleAutoUpdate:0 forAssetTypes:v22];

    return;
  }

  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Previous asset query already indicated update available.", buf, 2u);
  }

  [*(a1 + 32) stopAssetQueryTimer];
}