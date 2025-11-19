uint64_t sub_100002B0C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100002B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100002BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100002C24()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002C64()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002C9C()
{
  sub_1000A24A0(v0 + 2);
  sub_1000A24A0(v0 + 7);
  sub_1000A24A0(v0 + 12);
  sub_1000A24A0(v0 + 17);
  sub_1000A24A0(v0 + 22);
  sub_1000A24A0(v0 + 27);
  sub_1000A24A0(v0 + 32);
  sub_1000A24A0(v0 + 37);
  sub_1000A24A0(v0 + 42);
  sub_1000A24A0(v0 + 47);
  sub_1000A24A0(v0 + 52);
  sub_1000A24A0(v0 + 57);
  sub_1000A24A0(v0 + 62);
  sub_1000A24A0(v0 + 67);
  sub_1000A24A0(v0 + 72);
  sub_1000A24A0(v0 + 77);
  sub_1000A24A0(v0 + 82);
  sub_1000A24A0(v0 + 87);
  sub_1000A24A0(v0 + 92);
  sub_1000A24A0(v0 + 97);
  sub_1000A24A0(v0 + 102);
  sub_1000A24A0(v0 + 107);
  sub_1000A24A0(v0 + 112);
  sub_1000A24A0(v0 + 117);

  return _swift_deallocObject(v0, 976, 7);
}

uint64_t sub_100002D8C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002DC4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002DFC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t start()
{
  MCIsDaemonProcess = 1;
  MCLoggingInitialize();
  [NSError _setFileNameLocalizationEnabled:0];
  v0 = objc_autoreleasePoolPush();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(kMCInternalAbortOnUnreadableFiles, kCFPreferencesAnyApplication, &keyExistsAndHasValidFormat);
  v2 = keyExistsAndHasValidFormat;
  MCFixHostileSymlinks();
  if (AppBooleanValue)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  v5 = MCCheckSystemGroupContainerFileReadability();
  v6 = _MCLogObjects[2];
  if (v5)
  {
    if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "System group container check complete!", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = @"unrecoverable";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "System group container check found %{public}@ errors!", buf, 0xCu);
    }

    if ((v4 & 1) == 0)
    {
      abort();
    }
  }

  objc_autoreleasePoolPop(v0);
  v7 = objc_autoreleasePoolPush();
  v8 = _MCLogObjects[2];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Service starting...", buf, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1000031B4, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  +[MCProfileStateHandler addProfileSettingsStateHandler];
  +[MCProfileStateHandler addProfileRestrictionsStateHandler];
  v10 = +[MCProfileServiceServer sharedServer];
  [v10 start];
  v11 = [NSXPCListener alloc];
  v12 = [v11 initWithMachServiceName:MCProfileServiceName];
  v13 = qword_100136A08;
  qword_100136A08 = v12;

  v14 = [NSXPCListener alloc];
  v15 = [v14 initWithMachServiceName:MCProfileServicePublicName];
  v16 = qword_100136A10;
  qword_100136A10 = v15;

  v17 = objc_opt_new();
  v18 = qword_100136A18;
  qword_100136A18 = v17;

  [qword_100136A08 setDelegate:qword_100136A18];
  [qword_100136A10 setDelegate:qword_100136A18];
  [qword_100136A08 resume];
  [qword_100136A10 resume];

  objc_autoreleasePoolPop(v7);
  v19 = +[NSRunLoop currentRunLoop];
  [v19 run];

  return 0;
}

uint64_t sub_1000031B4()
{
  v0 = _MCLogObjects[2];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "System language changed", v2, 2u);
  }

  return xpc_transaction_exit_clean();
}

void sub_100003220(id a1)
{
  qword_100136A50 = objc_alloc_init(MCProfileServiceServer);

  _objc_release_x1();
}

void sub_100003504(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  if ((MCHasMigrated() & 1) == 0)
  {
    v2 = objc_opt_new();
    v3 = [*(a1 + 32) workerQueue];
    [v2 migrateWithPostMigrationTaskQueue:v3];
  }

  v4 = (*(a1 + 32) + 12);

  os_unfair_lock_unlock(v4);
}

void sub_10000358C(uint64_t a1)
{
  v1 = a1;
  [*(a1 + 32) _workerQueuePrepareForService];
  v2 = +[MCRestrictionManagerWriter sharedManager];
  [v2 removeOrphanedClientRestrictions];
  [v2 recomputeUserRestrictionsAndEffectiveUserSettings];
  v3 = +[NSFileManager defaultManager];
  v4 = MCEffectiveUserSettingsFilePath();
  v5 = [v3 fileExistsAtPath:v4];

  if ((v5 & 1) == 0)
  {
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "EffectiveUserSettings.plist is missing. Attempting to recreate it...", buf, 2u);
    }

    [v2 recomputeEffectiveUserSettings];
  }

  if (!+[DMCMultiUserModeUtilities isSharediPad](DMCMultiUserModeUtilities, "isSharediPad") || (+[UMUserManager sharedManager](UMUserManager, "sharedManager"), v7 = objc_claimAutoreleasedReturnValue(), [v7 currentUser], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isLoginUser"), v8, v7, v9))
  {
    [*(v1 + 32) workerQueueNotifyUserLoggedIn];
  }

  v10 = +[MCPasscodeManager sharedManager];
  v11 = [v10 isPasscodeSet];

  if ((v11 & 1) == 0)
  {
    [*(v1 + 32) notifyFirstUnlock];
    [*(v1 + 32) notifyDeviceUnlockedWithCompletion:0];
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100003BA0;
  handler[3] = &unk_10011B6B0;
  handler[4] = *(v1 + 32);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, handler);
  xpc_set_event_stream_handler("com.apple.fsevents.matching", 0, &stru_10011B6F0);
  v12 = [*(v1 + 32) appWorkspace];
  [v12 addObserver:*(v1 + 32)];

  out_token = 0;
  notify_register_dispatch("com.apple.message.MailAccountsChanged", &out_token, *(*(v1 + 32) + 88), &stru_10011B730);
  [*(v1 + 32) notifyBatterySaverModeChanged];
  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:*(v1 + 32) selector:"localeChanged" name:NSCurrentLocaleDidChangeNotification object:0];

  [*(v1 + 32) reapplyAppEnforcedRestrictionsWithAssertion:*(v1 + 40)];
  v14 = +[MCProfile thisDeviceType];
  if ([MCTargetDeviceResolver purgatorySupportedForDevice:v14])
  {
    v15 = +[MCInstaller sharedInstaller];
    [v15 purgePurgatoryProfilesForTargetDevice:v14];
  }

  if ((+[DMCMultiUserModeUtilities isSharediPad](DMCMultiUserModeUtilities, "isSharediPad") & 1) == 0 && ([*(v1 + 32) _hasCompletedPostLoginWork] & 1) == 0)
  {
    v16 = +[MDMConfiguration sharedConfiguration];
    v17 = [v16 managingProfileIdentifier];

    if (!v17)
    {
      v18 = objc_opt_new();
      v19 = [DMCEnrollmentFlowController enrollmentFlowControllerWithPresenter:0 managedConfigurationHelper:v18];

      [v19 cleanUpDirtyState];
    }

    v20 = +[MDMConfiguration sharedConfiguration];
    v21 = [v20 personaID];

    if (!v21)
    {
      v40 = v1;
      v41 = v2;
      +[DMCPersonaHelper fetchDirtyPersonaIDs];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = v46 = 0u;
      v22 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v44;
        v25 = DMCEventsTopicPersona;
        do
        {
          v26 = 0;
          do
          {
            if (*v44 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v43 + 1) + 8 * v26);
            v28 = objc_opt_new();
            v51 = @"Persona Identifier";
            v52 = v27;
            v29 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
            [v28 logRegularEventForTopic:v25 reason:@"Delete Persona during orphaned persona cleanup" details:v29];

            [DMCPersonaHelper removePersonaAndAccountsWithPersonaID:v27];
            v26 = v26 + 1;
          }

          while (v23 != v26);
          v23 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
        }

        while (v23);
      }

      +[DMCPersonaHelper untrackAllDirtyPersonas];

      v1 = v40;
      v2 = v41;
    }

    v30 = +[MDMCloudConfiguration sharedConfiguration];
    if ([v30 isSupervised])
    {
      v31 = +[MDMCloudConfiguration sharedConfiguration];
      v32 = [v31 isTeslaEnrolled];

      if (!v32)
      {
LABEL_31:
        [*(v1 + 32) _markPostUserLoginWorkCompleted];
        goto LABEL_32;
      }

      v33 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v50 = "[MCProfileServiceServer start]_block_invoke_4";
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s waking up mdmd", buf, 0xCu);
      }

      v30 = +[MDMClient sharedClient];
      [v30 touchWithCompletion:&stru_10011B770];
    }

    goto LABEL_31;
  }

LABEL_32:
  v34 = +[MCManagedSettingsSynchronizer sharedSynchronizer];
  [v34 synchronize];

  v35 = [*(v1 + 32) workerQueueBackgroundTaskManager];

  if (!v35)
  {
    v36 = [MCBackgroundTaskManager alloc];
    v37 = [*(v1 + 32) workerQueue];
    v38 = [(MCBackgroundTaskManager *)v36 initWithQueue:v37];
    [*(v1 + 32) setWorkerQueueBackgroundTaskManager:v38];
  }

  v39 = [*(v1 + 32) workerQueueBackgroundTaskManager];
  [v39 start];
}

void sub_100003BA0(uint64_t a1, xpc_object_t xdict)
{
  v3 = [NSString stringWithUTF8String:xpc_dictionary_get_string(xdict, _xpc_event_key_name)];
  if ([v3 isEqualToString:@"com.apple.system.lowpowermode"])
  {
    [*(a1 + 32) notifyBatterySaverModeChanged];
  }

  else if ([v3 isEqualToString:@"GracePeriodChanged"])
  {
    [*(a1 + 32) notifyGracePeriodChanged];
  }

  else if ([v3 isEqualToString:@"ProvisioningProfileInstalled"] || objc_msgSend(v3, "isEqualToString:", @"ProvisioningProfileRemoved"))
  {
    [*(a1 + 32) notifyProvisioningProfilesChanged];
  }

  else if ([v3 isEqualToString:@"FirstUnlock"])
  {
    [*(a1 + 32) notifyFirstUnlock];
  }

  else if ([v3 isEqualToString:@"com.apple.LoginKit.isLoggedIn"])
  {
    [*(a1 + 32) notifyUserLoggedIn];
  }

  else if ([v3 isEqualToString:@"com.apple.keystore.memento.effaced"])
  {
    [*(a1 + 32) notifyMementoEffaced];
  }
}

void sub_100003D38(id a1)
{
  v1 = +[MCBatterySaverMode currentBatterySaverRestrictions];
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"Setting";
    if (!v1)
    {
      v3 = @"Removing";
    }

    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ battery saver mode restrictions", buf, 0xCu);
  }

  v4 = +[MCRestrictionManagerWriter sharedManager];
  v5 = kBatterySaverClientType;
  v6 = MCLocalizedFormat();
  v9 = 0;
  [v4 setClientRestrictions:v1 clientType:v5 clientUUID:v5 sender:@"ProfileServiceServer.NotifyBatterySaverModeChanged" localizedClientDescription:v6 localizedWarning:0 outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outRecomputedNag:0 outError:&v9];
  v7 = v9;

  if (v7)
  {
    v8 = _MCLogObjects[2];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to set battery saver restrictions with error %{public}@", buf, 0xCu);
    }
  }
}

void sub_100004030()
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = +[MCAppEnforcedRestrictions restrictionEnforcingApps];
  v0 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v0)
  {
    v1 = v0;
    v21 = *v25;
    v2 = kAppEnforcedRestrictionsClientType;
    do
    {
      v3 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v24 + 1) + 8 * v3);
        v5 = [MCAppEnforcedRestrictions enforcedRestrictionsForBundleID:v4];
        v6 = v4;
        v7 = [LSApplicationRecord alloc];
        v23 = 0;
        v8 = [v7 initWithBundleIdentifier:v6 allowPlaceholder:1 error:&v23];
        v9 = v23;
        if (v9)
        {
          v10 = v9;
          v11 = _MCLogObjects[2];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v29 = v6;
            v30 = 2114;
            v31 = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to initialize application record for %{public}@ with error %{public}@", buf, 0x16u);
          }

          v12 = v6;
          goto LABEL_10;
        }

        v12 = v6;
        if (v8)
        {
          v17 = [v8 localizedName];
          v18 = [v17 length];

          v12 = v6;
          if (v18)
          {
            v12 = [v8 localizedName];
            v10 = v6;
LABEL_10:
          }
        }

        v13 = +[MCRestrictionManagerWriter sharedManager];
        v14 = [MCAppEnforcedRestrictionUtilities clientUUIDForBundleID:v6];
        v22 = 0;
        [v13 setClientRestrictions:v5 clientType:v2 clientUUID:v14 sender:@"ProfileServiceServer.ReapplyAppEnforcedRestrictions" localizedClientDescription:v12 localizedWarning:0 outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outRecomputedNag:0 outError:&v22];
        v15 = v22;

        if (v15)
        {
          v16 = _MCLogObjects[2];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v29 = v6;
            v30 = 2114;
            v31 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to set enforced restrictions for app “%{public}@” with error %{public}@", buf, 0x16u);
          }
        }

        v3 = v3 + 1;
      }

      while (v1 != v3);
      v19 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
      v1 = v19;
    }

    while (v19);
  }
}

void sub_1000048B0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Recompute Profile Restrictions error: %@", &v4, 0xCu);
    }
  }
}

void sub_1000052F0(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C0FC0();
  }

  v2 = *(a1 + 32);
  v3 = +[MCInstaller sharedInstaller];
  v4 = [v3 verifiedMDMProfileIdentifierWithCleanUp];
  (*(v2 + 16))(v2, 0, v4);
}

void sub_10000541C(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1048();
  }

  v2 = +[MCInstaller sharedInstaller];
  v3 = [v2 popProfileDataAtHeadOfInstallationQueue];

  (*(*(a1 + 32) + 16))();
}

void sub_100005548(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C10D0();
  }

  v2 = +[MCInstaller sharedInstaller];
  v3 = [v2 peekPurgatoryProfileDataForTargetDevice:*(a1 + 40)];

  (*(*(a1 + 32) + 16))();
}

void sub_100005700(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1158();
  }

  v2 = *(a1 + 32);
  if ([v2 isEqualToString:@"com.apple.WebSheet"])
  {

    v2 = 0;
  }

  if (*(a1 + 72) != 1)
  {
    goto LABEL_11;
  }

  if (+[DMCMultiUserModeUtilities isSharediPad])
  {
    v3 = MCInstallationErrorDomain;
    v4 = MCErrorArray();
    v5 = [NSError MCErrorWithDomain:v3 code:4033 descriptionArray:v4 errorType:MCErrorTypeFatal, 0];
  }

  else
  {
    v14 = 0;
    MCSBSSpringBoardServerPort();
    MCSBGetScreenLockStatus();
    v5 = 0;
  }

  if (v5)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
LABEL_11:
    v6 = +[MCInstaller sharedInstaller];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100005950;
    v9[3] = &unk_10011B850;
    v9[4] = *(a1 + 56);
    v10 = v7;
    v13 = *(a1 + 72);
    v11 = v2;
    v12 = *(a1 + 64);
    [v6 queueProfileDataForInstallation:v10 originalFileName:v8 completion:v9];
  }
}

void sub_100005950(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v15 = a2;
  v7 = a3;
  if ([v15 MCContainsErrorDomain:MCProfileErrorDomain code:1000] && objc_msgSend(*(a1 + 32), "_isValidProvisioningProfileData:", *(a1 + 40)))
  {
    v8 = MCInstallationErrorDomain;
    v9 = MCErrorArray();
    v10 = [NSError MCErrorWithDomain:v8 code:4053 descriptionArray:v9 errorType:MCErrorTypeFatal, 0];

    v15 = v10;
  }

  if (v7 && !v15 && *(a1 + 64) == 1)
  {
    [*(a1 + 32) _handleSettingsJumpWithProfileData:*(a1 + 40) targetDeviceType:a4 bundleID:*(a1 + 48)];
  }

  v11 = *(a1 + 56);
  v12 = [v7 UUID];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_10011E740;
  }

  (*(v11 + 16))(v11, v14, a4, v15);
}

void sub_100005D48(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C11E0();
  }

  v2 = +[MCInstaller sharedInstaller];
  v3 = [v2 verifiedMDMProfileIdentifierWithCleanUp];

  v4 = +[MCInstaller sharedInstaller];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v19 = 0;
  v9 = [v4 installProfileData:v5 options:v6 interactionClient:v7 source:v8 outError:&v19];
  v10 = v19;

  [*(a1 + 48) didFinishInstallationWithIdentifier:v9 error:v10];
  v11 = [*(a1 + 64) workerQueueBackgroundTaskManager];
  [v11 scheduleProfileJanitorTask];

  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005EEC;
    block[3] = &unk_10011B8A0;
    v18 = v12;
    v15 = v9;
    v16 = v10;
    v17 = *(a1 + 72);
    dispatch_async(v13, block);
  }
}

void sub_10000604C(uint64_t *a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1268();
  }

  v2 = +[MCInstaller sharedInstaller];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v8 = 0;
  v6 = [v2 updateProfileWithIdentifier:v3 interactionClient:v4 source:v5 outError:&v8];
  v7 = v8;

  [a1[5] didFinishInstallationWithIdentifier:v6 error:v7];
  (*(a1[8] + 16))();
}

void sub_100006238(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C12F0();
  }

  v2 = +[MCInstaller sharedInstaller];
  [v2 removeProfileWithIdentifier:*(a1 + 32) installationType:*(a1 + 72) source:*(a1 + 40)];

  v3 = [*(a1 + 48) workerQueueBackgroundTaskManager];
  [v3 scheduleProfileJanitorTask];

  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100006360;
    v6[3] = &unk_10011B918;
    v8 = v4;
    v7 = *(a1 + 56);
    dispatch_async(v5, v6);
  }
}

void sub_10000647C(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1378();
  }

  v2 = +[MCInstaller sharedInstaller];
  [v2 removeUninstalledProfileWithIdentifier:*(a1 + 32) installationType:*(a1 + 56) targetDeviceType:*(a1 + 64)];

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = dispatch_get_global_queue(0, 0);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000658C;
    v5[3] = &unk_10011B918;
    v7 = v3;
    v6 = *(a1 + 40);
    dispatch_async(v4, v5);
  }
}

uint64_t sub_1000067F8(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1400();
  }

  v2 = +[MCRestrictionManagerWriter sharedManager];
  [v2 removeOrphanedClientRestrictions];

  return (*(*(a1 + 32) + 16))();
}

void sub_100006BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

id sub_100006BDC(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) memberQueueHasMigrated];
  result = [*(a1 + 32) memberQueueHasActivationRecordChangesPending];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_100006C24(uint64_t a1)
{
  v2 = _MCLogObjects[2];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Now allowing client to proceed.", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

BOOL sub_1000081CC(id a1, MailAccount *a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [(MailAccount *)v3 restrictedFromSendingExternally]^ 1;
  }

  return v4;
}

uint64_t sub_100008228(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 sourceIsManaged] && (*(a1 + 32) & 1) != 0)
  {
    v4 = 1;
  }

  else if ([v3 sourceIsManaged])
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 33);
  }

  return v4 & 1;
}

void sub_100008288(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 addObject:v3];
}

void sub_100008B68(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1488();
  }

  v2 = MCNagUIMetaFilePath();
  v3 = [NSMutableDictionary dictionaryWithContentsOfFile:v2];

  if (v3 && *(a1 + 32))
  {
    v4 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Starting password compliance by %{public}@", &v7, 0xCu);
    }

    [v3 setObject:*(a1 + 32) forKey:kMCNagMetaTimerExpiryDateKey];
    v6 = MCNagUIMetaFilePath();
    [v3 MCWriteToBinaryFile:v6];
  }

  (*(*(a1 + 48) + 16))();
}

uint64_t sub_100008DE4(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = MCBackupContainsPasscodeFilePath();
  [v2 removeItemAtPath:v3 error:0];

  v4 = +[MCRestrictionManagerWriter sharedManager];
  [v4 notifyHaveSeenComplianceMessageWithLastLockDate:*(a1 + 32)];

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

uint64_t sub_100008F84(uint64_t a1)
{
  [*(a1 + 32) workerQueueRecomputeNagMessage];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t sub_1000090C8(uint64_t a1)
{
  v2 = +[MCRestrictionManagerWriter sharedManager];
  [v2 notifyClientsToRecomputeCompliance];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100009218(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C16A8();
  }

  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is attempting to clear the recovery passcode", &v7, 0xCu);
  }

  v4 = +[MCPasscodeManagerWriter sharedManager];
  v5 = [v4 clearRecoveryPasscode];

  if (!v5)
  {
    if ([MCPreferencesBundleIdentifier isEqualToString:*(a1 + 32)])
    {
      v6 = 5;
    }

    else
    {
      v6 = 6;
    }

    [MCPasscodeAnalytics sendRecoveryPasscodeClearedEventWithReason:v6];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000094B0(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1730();
  }

  v2 = *(a1 + 72);
  v3 = _MCLogObjects[0];
  v4 = os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v28 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ is attempting to change the passcode with recovery passcode", buf, 0xCu);
    }

    v6 = +[MCPasscodeManagerWriter sharedManager];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 73);
    v10 = *(a1 + 32);
    v26 = 0;
    [v6 changePasscodeWithRecoveryPasscodeContext:v7 newPasscodeContext:v8 skipRecovery:v9 senderBundleID:v10 outError:&v26];
    v11 = v26;
  }

  else
  {
    if (v4)
    {
      v12 = *(a1 + 32);
      *buf = 138412290;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ is attempting to change the passcode", buf, 0xCu);
    }

    v13 = +[MCPasscodeManagerWriter sharedManager];
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 73);
    v17 = *(a1 + 32);
    v25 = 0;
    v18 = [v13 changePasscodeWithOldPasscodeContext:v14 newPasscodeContext:v15 skipRecovery:v16 senderBundleID:v17 outError:&v25];
    v19 = v25;

    v20 = [*(a1 + 32) isEqualToString:MCSetupAssistantBundleIdentifier];
    if (v18 && v20)
    {
      v21 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Buddy is changing the passcode; attempting to create unlock token", buf, 2u);
      }

      v22 = *(a1 + 48);
      MDMEscrowWithPasscodeContext = MCKeybagCreateMDMEscrowWithPasscodeContext();
      v11 = v19;

      if ((MDMEscrowWithPasscodeContext & 1) == 0)
      {
        v24 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v28 = v11;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Can't create escrow keybag. Error: %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v11 = v19;
    }
  }

  (*(*(a1 + 64) + 16))();
}

void sub_100009838(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C17B8();
  }

  v2 = *(a1 + 32);
  MDMEscrowWithPasscodeContext = MCKeybagCreateMDMEscrowWithPasscodeContext();
  v4 = 0;
  if ((MDMEscrowWithPasscodeContext & 1) == 0)
  {
    v5 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Can't create escrow keybag. Error: %{public}@", buf, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100009A88(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1840();
  }

  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is attempting to clear the passcode", buf, 0xCu);
  }

  v4 = +[MCPasscodeManagerWriter sharedManager];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v9 = 0;
  [v4 clearPasscodeWithEscrowKeybagData:v5 secretContext:v6 senderBundleID:v7 outError:&v9];
  v8 = v9;

  [*(a1 + 56) workerQueueRecomputeNagMessage];
  (*(*(a1 + 72) + 16))();
}

void sub_100009C70(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C18C8();
  }

  v2 = +[MCPasscodeManager sharedManager];
  v3 = *(a1 + 32);
  v5 = 0;
  [v2 isPasscodeCompliantWithNamedPolicy:v3 outError:&v5];
  v4 = v5;

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100009DEC(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1950();
  }

  v2 = +[MCPasscodeManagerWriter sharedManager];
  [v2 resetPasscodeMetadata];

  return (*(*(a1 + 40) + 16))();
}

void sub_10000A02C(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C19D8();
  }

  v2 = objc_opt_new();
  [v2 migratePostDataMigratorWithContext:*(a1 + 48) passcodeWasSetInBackup:*(a1 + 52)];
  (*(*(a1 + 40) + 16))();
}

void sub_10000A184(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1A60();
  }

  v2 = objc_opt_new();
  [v2 migrateCleanupMigratorWithContext:*(a1 + 56)];
  v3 = kMCNotBackedUpPreferencesDomain;
  CFPreferencesSetAppValue(kMCHasCheckedForAutoInstalledProfiles, kCFBooleanFalse, kMCNotBackedUpPreferencesDomain);
  CFPreferencesAppSynchronize(v3);
  [*(a1 + 32) workerQueueCheckForAutoInstallProfiles];
  (*(*(a1 + 48) + 16))();
}

id sub_10000A434(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1AE8();
  }

  return [*(a1 + 32) _workerQueue_setParametersForSettingsByType:*(a1 + 40) configurationUUID:*(a1 + 48) toSystem:*(a1 + 92) user:*(a1 + 93) credentialSet:*(a1 + 56) senderPID:*(a1 + 88) sender:*(a1 + 64) assertion:*(a1 + 72) completion:*(a1 + 80)];
}

uint64_t sub_10000A6E8(void *a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1B70();
  }

  v2 = +[MCRestrictionManagerWriter sharedManager];
  [v2 removeBoolSetting:a1[4] sender:a1[5]];

  return (*(a1[7] + 16))();
}

uint64_t sub_10000A880(void *a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1BF8();
  }

  v2 = +[MCRestrictionManagerWriter sharedManager];
  [v2 removeValueSetting:a1[4] sender:a1[5]];

  return (*(a1[7] + 16))();
}

uint64_t sub_10000A9C4(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1C80();
  }

  if (*(a1 + 32))
  {
    v2 = [NSURL URLWithString:?];
    v3 = +[LSApplicationWorkspace defaultWorkspace];
    v13 = MCSBSApplicationLaunchFromURLOptionUnlockDeviceKey();
    v4 = [NSNumber numberWithBool:*(a1 + 48)];
    v14 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v6 = [v3 openSensitiveURL:v2 withOptions:v5];

    if ((v6 & 1) == 0)
    {
      v7 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        v9 = [v2 absoluteString];
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Open of URL %{public}@ reported failure", &v11, 0xCu);
      }
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_10000B324(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _MCLogObjects[2];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "authenticateWithContext Completion block...", &v11, 2u);
  }

  if (v5)
  {
    v7 = _MCLogObjects[2];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed toauthenticateWithContext with the following error: %{public}@", &v11, 0xCu);
    }
  }

  else
  {
    v8 = objc_alloc_init(AIDAMutableServiceContext);
    [v8 setAuthenticationResults:v4];
    [v8 setShouldForceOperation:0];
    [v8 setOperationUIPermissions:0];
    v9 = +[ACAccountStore defaultStore];
    v10 = [[AIDAServiceOwnersManager alloc] initWithAccountStore:v9];
    [v10 signInService:AIDAServiceTypeFaceTime withContext:v8 completion:&stru_10011BCC8];
  }
}

void sub_10000B4B8(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = _MCLogObjects[2];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "signInService Completion block...", &v10, 2u);
  }

  v6 = _MCLogObjects[2];
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v4;
      v7 = "Succesfully signed in to service AIDAServiceTypeFaceTime, error: %{public}@";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    v11 = v4;
    v7 = "Failed to sign in to service AIDAServiceTypeFaceTime with error: %{public}@";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    goto LABEL_8;
  }
}

void sub_10000C0A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000C320;
  v20[3] = &unk_10011BD18;
  v7 = *(a1 + 40);
  v20[4] = *(a1 + 32);
  v22 = *(a1 + 48);
  v21 = v7;
  v8 = objc_retainBlock(v20);
  v9 = v8;
  if (v6)
  {
    v10 = _MCLogObjects[2];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = [v6 MCVerboseDescription];
      *buf = 138543362;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "CheckCarrierProfile: Error getting data SIM: %{public}@", buf, 0xCu);
    }

    (v9)[2](v9, 0, 0, 0, 0, v6);
  }

  else if (v5)
  {
    v13 = *(*(a1 + 32) + 120);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000C4D8;
    v17[3] = &unk_10011BD40;
    v14 = v8;
    v15 = *(a1 + 32);
    v19 = v14;
    v17[4] = v15;
    v18 = v5;
    [v13 getSIMStatus:v18 completion:v17];
  }

  else
  {
    v16 = _MCLogObjects[2];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "CheckCarrierProfile: No SIM is marked as data SIM.", buf, 2u);
    }

    v9[2](v9, 1, 0, 0, 0, 0);
  }
}

void sub_10000C320(uint64_t a1, char a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [*(a1 + 32) workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C46C;
  block[3] = &unk_10011BCF0;
  v27 = a2;
  v16 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v28 = *(a1 + 48);
  v25 = v14;
  v26 = v16;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = v11;
  dispatch_async(v15, block);
}

uint64_t sub_10000C46C(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    [*(a1 + 32) _workerQueueCheckCarrierProfileForCarrierIdentifier:*(a1 + 40) name:*(a1 + 48) atPath:*(a1 + 56) forceReinstallation:*(a1 + 81)];
  }

  result = *(a1 + 72);
  if (result)
  {
    v3 = *(a1 + 64);
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10000C4D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _MCLogObjects[2];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 MCVerboseDescription];
    *buf = 138543618;
    v21 = v5;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CheckCarrierProfile: getSIMStatus status:%{public}@ error:%{public}@)", buf, 0x16u);
  }

  if (v6)
  {
    v10 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (![v5 isEqualToString:kCTSIMSupportSIMStatusNotInserted])
    {
      v11 = *(a1 + 40);
      v12 = *(*(a1 + 32) + 120);
      v13 = [[CTBundle alloc] initWithBundleType:1];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000C6E4;
      v17[3] = &unk_10011BD40;
      v14 = *(a1 + 48);
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v19 = v14;
      v17[4] = v15;
      v18 = v16;
      [v12 copyBundleLocation:v11 bundleType:v13 completion:v17];

      goto LABEL_8;
    }

    v10 = *(*(a1 + 48) + 16);
  }

  v10();
LABEL_8:
}

void sub_10000C6E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _MCLogObjects[2];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "CheckCarrierProfile: Could not find carrier bundle path. Error: %{public}@", &v16, 0xCu);
    }

    v10 = *(*(a1 + 48) + 16);
LABEL_5:
    v10();
    goto LABEL_10;
  }

  if (!v5)
  {
    v15 = _MCLogObjects[2];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "CheckCarrierProfile: Could not find carrier bundle path.", &v16, 2u);
    }

    v10 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  v11 = [*(a1 + 32) _carrierIdentifierFromContext:*(a1 + 40)];
  v12 = [*(a1 + 32) _carrierNameFromContext:*(a1 + 40)];
  v13 = [v5 stringByAppendingPathComponent:@"profile.mobileconfig"];
  v14 = _MCLogObjects[2];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CheckCarrierProfile: Evaluating carrier profile at: %{public}@", &v16, 0xCu);
  }

  (*(*(a1 + 48) + 16))();

LABEL_10:
}

void sub_10000CE18(uint64_t a1)
{
  if (mach_timebase_info(&dword_100136A60))
  {
    sub_1000C1D08(a1);
  }

  else
  {
    qword_100136A68 = (1000000000 * dword_100136A64);
  }

  byte_100136A70 = 1;
}

void sub_10000CE7C(id a1, NSError *a2)
{
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CheckCarrierProfile: Device was unlocked, check complete.", v3, 2u);
  }
}

uint64_t sub_10000D0D8(uint64_t a1)
{
  [*(a1 + 32) workerQueueNotifyDeviceUnlockedAndPasscodeRequired];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_10000D218(uint64_t a1)
{
  [*(a1 + 32) workerQueueNotifyDeviceUnlocked];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10000D2FC(id a1)
{
  v1 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Rereading grace period", v3, 2u);
  }

  v2 = +[MCServerSideHacks sharedHacks];
  [v2 applyGracePeriodSettingFromKeybagToUserSettings];
}

void sub_10000D3F4(uint64_t a1)
{
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Provisioning profiles changed", v6, 2u);
  }

  v3 = dispatch_get_global_queue(0, 0);
  dispatch_async(v3, &stru_10011BDF0);

  v4 = [*(a1 + 32) workerQueueBackgroundTaskManager];
  [v4 scheduleProfileJanitorTask];

  v5 = [*(a1 + 32) workerQueueBackgroundTaskManager];
  [v5 scheduleManagedAppValidationTask:30.0];
}

void sub_10000D4B8(id a1)
{
  v1 = +[MCProvisioningProfileJanitor sharedJanitor];
  [v1 updateMISTrust];
}

void sub_10000D93C(uint64_t a1)
{
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Applications finished installing", buf, 2u);
  }

  v3 = +[MDMManagedMediaReader attributesByAppID];
  v4 = [v3 allKeys];

  if ([v4 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
          v11 = [v4 containsObject:v10];

          if (v11)
          {

            v12 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Managed applications finished installing", buf, 2u);
            }

            v5 = +[MCProvisioningProfileJanitor sharedJanitor];
            [v5 updateMISTrust];
            goto LABEL_16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }
}

void sub_10000DC4C(void *a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1D74();
  }

  v2 = a1[4];
  v3 = a1[5];
  v4 = MCHCUSetHostCertificateDataForMappedLabel();
  v5 = +[MCDependencyManager sharedManager];
  v6 = a1[5];
  v7 = [v4 MCHexString];
  [v5 addDependent:v6 ofParent:v7 inDomain:kMCDMCertificateToHostIdentifierDependencyKey reciprocalDomain:kMCDMHostIdentifierToCertificateDependencyKey];

  [v5 commitChanges];
  (*(a1[7] + 16))();
}

void sub_10000DF7C(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1DFC();
  }

  if (*(a1 + 32))
  {
    v2 = MISProfileCreateWithData();
    if (v2)
    {
      v3 = v2;
      if (MISProvisioningProfileValidateSignature())
      {
        goto LABEL_6;
      }

      if ([*(a1 + 48) length])
      {
        if (MISProvisioningProfileIsForLocalProvisioning())
        {
          v4 = [*(a1 + 40) _localProvisioningProfileError];
          goto LABEL_7;
        }

        UUID = MISProvisioningProfileGetUUID();
        if (!UUID)
        {
LABEL_6:
          v4 = [*(a1 + 40) _badProvisioningProfileError];
LABEL_7:
          v5 = v4;
LABEL_8:
          CFRelease(v3);
          goto LABEL_10;
        }

        v9 = UUID;
        v10 = +[MCDependencyManager sharedManager];
        v11 = kMCDMManagingProfileToProvisioningProfileKey;
        v12 = [v10 dependentsOfParent:*(a1 + 48) inDomain:kMCDMManagingProfileToProvisioningProfileKey];
        if (([v12 containsObject:v9] & 1) == 0)
        {
          [v10 addDependent:v9 ofParent:*(a1 + 48) inDomain:v11 reciprocalDomain:kMCDMProvisioningProfileToManagingProfileKey];
          [v10 commitChanges];
        }
      }

      v13 = MISInstallProvisioningProfile();
      if (v13)
      {
        v14 = MCProvisioningProfileErrorDomain;
        v15 = [NSNumber numberWithInt:v13];
        v16 = MCErrorArray();
        v5 = [NSError MCErrorWithDomain:v14 code:25001 descriptionArray:v16 errorType:MCErrorTypeFatal, v15, 0];
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_8;
    }
  }

  v5 = [*(a1 + 40) _badProvisioningProfileError];
LABEL_10:
  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E20C;
    block[3] = &unk_10011BAE0;
    v20 = v6;
    v18 = v5;
    v19 = *(a1 + 56);
    dispatch_async(v7, block);
  }
}

void sub_10000E36C(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1E84();
  }

  v2 = +[MCInstaller sharedInstaller];
  v3 = [v2 removeProvisioningProfileUUID:*(a1 + 32) sender:*(a1 + 40)];

  if (v3)
  {
    v4 = MCProvisioningProfileErrorDomain;
    v5 = MCErrorArray();
    v6 = [NSError MCErrorWithDomain:v4 code:25002 descriptionArray:v5 errorType:MCErrorTypeFatal, v3, 0];
LABEL_7:

    goto LABEL_8;
  }

  if (*(a1 + 48))
  {
    v5 = +[MCDependencyManager sharedManager];
    [v5 removeDependent:*(a1 + 32) fromParent:*(a1 + 48) inDomain:kMCDMManagingProfileToProvisioningProfileKey reciprocalDomain:kMCDMProvisioningProfileToManagingProfileKey];
    [v5 commitChanges];
    v6 = 0;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E554;
    block[3] = &unk_10011BAE0;
    v12 = v7;
    v10 = v6;
    v11 = *(a1 + 56);
    dispatch_async(v8, block);
  }
}

void sub_10000E9BC(uint64_t a1)
{
  +[MCProfileJanitor removeExpiredProfiles];
  v2 = [*(a1 + 32) workerQueueBackgroundTaskManager];
  [v2 scheduleProfileJanitorTask];
}

uint64_t sub_10000EFB4(uint64_t a1)
{
  if (os_log_type_enabled(_MCLogObjects[2], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C1F0C();
  }

  v2 = +[MCRestrictionManagerWriter sharedManager];
  [v2 resetAllSettingsToDefaultsSender:*(a1 + 32)];

  if (*(a1 + 56) == 1)
  {
    v3 = +[MCServerSideHacks sharedHacks];
    [v3 resetSettingsSender:*(a1 + 32)];
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_10000F0F4(uint64_t a1)
{
  v2 = _MCLogObjects[2];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Rereading managed app attributes.", v5, 2u);
  }

  v3 = +[MCServerSideHacks sharedHacks];
  [v3 recomputeAppRulesForNetworkExtension];

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_10000F65C(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_10000F7C0(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_10000FFA4(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010034;
  block[3] = &unk_10011B688;
  block[4] = *(a1 + 32);
  dispatch_barrier_async(v2, block);
}

uint64_t sub_100010758(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100011494(uint64_t a1)
{
  v2 = [*(a1 + 32) workerQueueBackgroundTaskManager];
  [v2 _debug_scheduleBackgroundTask:*(a1 + 40) interval:*(a1 + 64) tolerance:*(a1 + 72)];

  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10001170C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_10001354C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v9 = [v6 MCShortenedObject:a3];
  v8 = [*(a1 + 40) MCShortenedObject:v7];

  [v5 setObject:v9 forKey:v8];
}

void sub_100015AA8(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:v10];
  v4 = [*(a1 + 40) objectForKeyedSubscript:v10];
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [NSSet setWithArray:v4];
    v7 = [NSMutableSet setWithArray:v3];
    v8 = v7;
    if (*(a1 + 48) == 1)
    {
      [v7 minusSet:v6];
    }

    else
    {
      [v7 intersectSet:v6];
    }

    v9 = [v8 allObjects];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
  }
}

uint64_t sub_100016458(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 count] || objc_msgSend(v4, "count"))
  {
    v5 = [v3 isEqualToDictionary:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_100016760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100016788(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MCLogObjects[8];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Request user input error. Error: %{public}@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10001686C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _receivedUserInput:v10 preflight:a3 payloadIndex:a4 delegate:*(a1 + 32) semaphore:*(a1 + 40) error:v9 outResponses:*(a1 + 48)];
}

void sub_100016C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100016C3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100016C54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MCLogObjects[8];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Request MAID login error. Error: %{public}@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100016D38(uint64_t a1, char a2, id obj, char a4)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v7 = obj;
  *(*(*(a1 + 56) + 8) + 24) = a4;
  *(*(*(a1 + 64) + 8) + 24) = 0;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100016F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100016F94(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _MCLogObjects[8];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [(NSError *)v2 MCVerboseDescription];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Request managed restore error. Error: %{public}@", &v6, 0xCu);
    }
  }
}

void sub_10001706C(void *a1, int a2, void *a3, int a4)
{
  v8 = a3;
  *(*(a1[4] + 8) + 24) = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  *(*(a1[6] + 8) + 24) = a4;
  v9 = _MCLogObjects[8];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109634;
    v10[1] = a2;
    v11 = 2114;
    v12 = v8;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Request managed restore finished with success: %d, error: %{public}@, cancelled: %d", v10, 0x18u);
  }
}

void sub_1000173CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000173F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MCLogObjects[8];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Finish preflight error. Error: %{public}@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000174D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _receivedUserInput:v10 preflight:a3 payloadIndex:a4 delegate:*(a1 + 32) semaphore:*(a1 + 40) error:v9 outResponses:*(a1 + 48)];
}

void sub_1000177B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000177DC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = _MCLogObjects[8];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v4 MCVerboseDescription];
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Show user warnings error. Error: %{public}@", &v8, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000178E0(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100017B10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MCLogObjects[8];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Did finish installation error. Error: %{public}@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100017CB8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _MCLogObjects[8];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [(NSError *)v2 MCVerboseDescription];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Did update status error. Error: %{public}@", &v6, 0xCu);
    }
  }
}

void sub_100017E2C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _MCLogObjects[8];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [(NSError *)v2 MCVerboseDescription];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Did begin installating next profile error. Error: %{public}@", &v6, 0xCu);
    }
  }
}

void sub_100018278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000182A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MCLogObjects[8];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Request current passcode error. Error: %{public}@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10001838C(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v10)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
    }

    else
    {
      v16 = 0;
      v12 = [MCExtractablePasscodeContextWrapper contextWrapperForExtractablePasscode:v9 outError:&v16];
      v13 = v16;
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v12;

      if (v13)
      {
        (*(*(a1 + 40) + 16))();

        goto LABEL_8;
      }
    }

    *(*(*(a1 + 64) + 8) + 24) = a2;
    dispatch_semaphore_signal(*(a1 + 32));
  }

LABEL_8:
}

void sub_1000185E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MCLogObjects[8];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Client has disconnected with error: %@{public}", &v7, 0xCu);
    }
  }

  v5 = objc_opt_new();
  v6 = [DMCEnrollmentFlowController enrollmentFlowControllerWithPresenter:0 managedConfigurationHelper:v5];

  [v6 cleanUpDirtyState];
  dispatch_semaphore_signal(*(a1 + 32));
}

intptr_t sub_1000186E8(uint64_t a1)
{
  v2 = _MCLogObjects[8];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Enrollment has completed, stop waiting!", v4, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100019894(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Watch enrollment failed to install MDM profile: %{public}@", &v5, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100019978(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  [v5 setEnrollmentController:0];
  (*(*(a1 + 40) + 16))();
}

void sub_10001B08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001B0B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MCBackgroundTask launch handler called for task: %{public}@", buf, 0xCu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001B24C;
  v10[3] = &unk_10011B688;
  v11 = *(a1 + 32);
  [v3 setExpirationHandler:v10];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained completion];

  if (v7)
  {
    v8 = [WeakRetained completion];
    v9 = [[MCBackgroundTaskWrapper alloc] initWithTask:v3];
    (v8)[2](v8, v9);
  }

  else
  {
    [v3 setTaskCompleted];
  }
}

void sub_10001B24C(uint64_t a1)
{
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MCBackgroundTask expiration handler called for task: %{public}@", &v4, 0xCu);
  }
}

void sub_10001C514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  objc_destroyWeak((v41 + 32));
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak((v43 + 32));
  objc_destroyWeak((v42 + 32));
  objc_destroyWeak(&a39);
  objc_destroyWeak((v44 - 136));
  objc_destroyWeak((v44 - 128));
  _Unwind_Resume(a1);
}

void sub_10001C5C8(uint64_t a1, void *a2)
{
  v3 = a2;
  +[MCProfileJanitor removeExpiredProfiles];
  [v3 setTaskCompleted];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scheduleProfileJanitorTask];
}

void sub_10001C640(id a1, MCBackgroundTaskWrapper *a2)
{
  v3 = a2;
  v2 = objc_opt_new();
  [v2 removeExpiredProfileEvents];

  [(MCBackgroundTaskWrapper *)v3 setTaskCompleted];
}

void sub_10001C6A4(uint64_t a1)
{
  v2 = +[MCProvisioningProfileJanitor sharedJanitor];
  [v2 updateMISTrust];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scheduleManagedAppValidationTask:86400.0];
}

void sub_10001C714(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MCRestrictionManagerWriter sharedManager];
  [v4 clearAllPasscodeComplianceCaches];
  v7 = 0;
  v5 = [v4 recomputeNagMetadata:&v7];
  [v3 setTaskCompleted];

  if (!v5 || v7 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _schedulePasscodeExpiryTask];
  }
}

void sub_10001C7B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MCPasscodeManagerWriter sharedManager];
  v5 = [v4 clearRecoveryPasscode];

  if (v5)
  {
    [v3 setTaskCompleted];
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 MCVerboseDescription];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "MCBackgroundTaskManager failed to clear recovery passcode with error: %{public}@", &v10, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained scheduleRecoveryPasscodeExpiryTask];
  }

  else
  {
    [MCPasscodeAnalytics sendRecoveryPasscodeClearedEventWithReason:3];
    [v3 setTaskCompleted];
  }
}

void sub_10001C8F4(id a1, MCBackgroundTaskWrapper *a2)
{
  v3 = a2;
  v2 = +[MCRestrictionManagerWriter sharedManager];
  [v2 recomputeNagMetadata];

  [(MCBackgroundTaskWrapper *)v3 setTaskCompleted];
}

void sub_10001C95C(uint64_t a1)
{
  sub_1000416C8();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleDailyAnalyticsTask];
}

void sub_10001C9AC(uint64_t a1)
{
  v2 = +[MCRestrictionManagerWriter sharedManager];
  [v2 removeOrphanedClientRestrictions];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleOrphanedRestrictionsCleanupTask];
}

void sub_10001CA14(id a1, MCBackgroundTaskWrapper *a2)
{
  v2 = a2;
  +[MCCrypto clearStoredActivationLockBypassCode];
  [(MCBackgroundTaskWrapper *)v2 setTaskCompleted];
}

void sub_10001CA6C(uint64_t a1)
{
  v2 = +[MCManagedSettingsSynchronizer sharedSynchronizer];
  [v2 synchronize];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleManagedSettingsSyncTask];
}

void sub_10001CDCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 112));
  _Unwind_Resume(a1);
}

void sub_10001CE30(uint64_t a1)
{
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MCBackgroundTaskManager scheduling profile janitor tasks because profile list changed", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scheduleProfileJanitorTask];
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"MCOutputLevel", kCFPreferencesAnyApplication, &keyExistsAndHasValidFormat);
  v10 = 0;
  v5 = CFPreferencesGetAppIntegerValue(@"MCLogLevel", kCFPreferencesAnyApplication, &v10);
  if (keyExistsAndHasValidFormat && v10 && AppIntegerValue == 7 && v5 == 7)
  {
    v7 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MCBackgroundTaskManager log level is heightened. Checking MDM installation status...", v9, 2u);
    }

    v8 = +[MDMConfiguration sharedConfiguration];
    [v8 refreshDetailsFromDisk];
  }
}

void sub_10001CF6C(uint64_t a1)
{
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MCBackgroundTaskManager scheduling managed app validation & MIS trust update because managed applications changed", v5, 2u);
  }

  v3 = dispatch_get_global_queue(0, 0);
  dispatch_async(v3, &stru_10011C198);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scheduleManagedAppValidationTask:60.0];
}

void sub_10001D018(id a1)
{
  v1 = +[MCProvisioningProfileJanitor sharedJanitor];
  [v1 updateMISTrust];
}

void sub_10001D060(uint64_t a1)
{
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MCBackgroundTaskManager scheduling passcode and recovery passcode expiry checks because passcode changed", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scheduleManagedAppValidationTask:60.0];
  [WeakRetained _schedulePasscodeExpiryTask];
  [WeakRetained scheduleRecoveryPasscodeExpiryTask];
}

void sub_10001D0F8(uint64_t a1)
{
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MCBackgroundTaskManager scheduling passcode expiry check because passcode policy changed", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scheduleManagedAppValidationTask:60.0];
  [WeakRetained _schedulePasscodeExpiryTask];
}

uint64_t sub_10001F5B0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 2)
  {
    v9 = v5;
    v5 = [*(a1 + 40) _showPromptForHomePodAndWatchWithCompletionBlock:*(a1 + 32)];
  }

  else if (a2 == 1)
  {
    v7 = *(a1 + 32);
    if (!v7)
    {
      goto LABEL_9;
    }

    v9 = v5;
    v5 = (*(v7 + 16))(v7, +[MCProfile thisDeviceType]);
  }

  else
  {
    v5 = *(a1 + 32);
    if (!v5)
    {
      goto LABEL_9;
    }

    v9 = v6;
    v5 = v5[2](v5, 99);
  }

  v6 = v9;
LABEL_9:

  return _objc_release_x1(v5, v6);
}

uint64_t sub_10001F7C8(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = 99;
    if (a2 == 2)
    {
      v3 = 2;
    }

    if (a2 == 1)
    {
      v4 = 3;
    }

    else
    {
      v4 = v3;
    }

    return (*(result + 16))(result, v4);
  }

  return result;
}

uint64_t sub_10001F964(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (a2 == 2)
  {
    v7 = 3;
  }

  else if (a2 == 1)
  {
    v6 = +[MCProfile thisDeviceType];
    v5 = v10;
    v7 = v6;
  }

  else
  {
    v7 = 99;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, v5);
  }

  return _objc_release_x2();
}

uint64_t sub_10001FB60(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (a2 == 2)
  {
    v7 = 2;
  }

  else if (a2 == 1)
  {
    v6 = +[MCProfile thisDeviceType];
    v5 = v10;
    v7 = v6;
  }

  else
  {
    v7 = 99;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, v5);
  }

  return _objc_release_x2();
}

void sub_100020A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100020A9C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100020AB4(uint64_t a1, void *a2, void *a3)
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

void sub_100020D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100020D24(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_1000256AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v26 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v25 + 1) + 8 * v8);
      v10 = [v3 identifier];
      v11 = [v9 identifier];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_18;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 40);
  v13 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = *v22;
LABEL_11:
    v15 = 0;
    while (1)
    {
      if (*v22 != v14)
      {
        objc_enumerationMutation(v4);
      }

      v16 = *(*(&v21 + 1) + 8 * v15);
      v17 = [v3 identifier];
      v18 = [v16 identifier];
      v19 = [v17 isEqual:v18];

      if (v19)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v13)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    v13 = 1;
  }

LABEL_19:

  return v13;
}

void sub_10002696C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000269C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_1000269E0(void *a1, uint64_t a2, id obj)
{
  if (obj)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), obj);
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a2;
    CFRetain(*(*(a1[5] + 8) + 24));
  }

  v4 = *(*(a1[6] + 8) + 40);

  return dispatch_semaphore_signal(v4);
}

void sub_10002F414(uint64_t a1)
{
  v2 = sharedDAAccountStore();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002F4EC;
  v5[3] = &unk_10011C2D0;
  v6 = *(a1 + 48);
  v8 = *(a1 + 64);
  v7 = *(a1 + 56);
  [v2 removeAccount:v3 withDataclassActions:v4 completion:v5];
}

void sub_10002F4EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _MCLogObjects[0];
  if (a2)
  {
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v7 = *(a1 + 32);
    v14 = 138543362;
    v15 = v7;
    v8 = "Finished removing account with identifier: %{public}@";
    v9 = v6;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 12;
  }

  else
  {
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = *(a1 + 32);
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v5;
    v8 = "Couldn't remove the account with identifier %{public}@: %{public}@";
    v9 = v6;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 22;
  }

  _os_log_impl(&_mh_execute_header, v9, v10, v8, &v14, v11);
LABEL_7:
  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, a2, v5);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100031D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000331F4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _MCLogObjects[12];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Recompute Profile Restrictions error: %@", &v4, 0xCu);
    }
  }
}

void sub_1000332A4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[MCRestrictionManager sharedManager];
  v4 = [v3 currentRestrictions];

  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 effectiveUserSettings];

  v7 = +[MCServerSideHacks sharedHacks];
  [v7 setUserTrackingTCCAccessOverrideForRestrictions:v4];

  v8 = +[MCServerSideHacks sharedHacks];
  [v8 _applyServerSideChangesWithOldRestrictions:&__NSDictionary0__struct newRestrictions:v4 oldEffectiveUserSettings:&__NSDictionary0__struct newEffectiveUserSettings:v6];

  v9 = +[MCRestrictionManagerWriter sharedManager];
  [v9 recomputeEffectiveUserSettings];

  MCSendSettingsChangedNotification();
  getpid();
  MCSendEffectiveSettingsChangedNotification();
  MCSendProfileListChangedNotification();
  [*(a1 + 32) _wakeDaemonsPostMigration];

  objc_autoreleasePoolPop(v2);
}

void sub_1000374FC(id a1)
{
  v1 = MCTagsMappingFilePath();
  v2 = [NSDictionary dictionaryWithContentsOfFile:v1];
  v3 = qword_100136A90;
  qword_100136A90 = v2;

  if (qword_100136A90)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return;
    }

    v4 = qword_100136A90;
  }

  else
  {
    v4 = 0;
  }

  qword_100136A90 = 0;
}

void sub_10003A770(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCLogObjects[12];
  if (v3)
  {
    if (os_log_type_enabled(_MCLogObjects[12], OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9[0] = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Recompute Profile Restrictions error: %@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(_MCLogObjects[12], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    LODWORD(v5) = [v5 count];
    v7 = [*(a1 + 40) count];
    v8 = 67109376;
    LODWORD(v9[0]) = v5;
    WORD2(v9[0]) = 1024;
    *(v9 + 6) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Done updating. %d system profile and %d user profile restrictions processed.", &v8, 0xEu);
  }
}

void sub_10003B5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003B618(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v15 = kMCMDMLostModeLastLocationRequestDateKey;
  v16 = *(a1 + 32);
  v4 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  if ([v4 writeToURL:v3 atomically:1])
  {
    v13[0] = NSFileProtectionKey;
    v13[1] = NSURLIsExcludedFromBackupKey;
    v14[0] = NSFileProtectionNone;
    v14[1] = &__kCFBooleanTrue;
    v5 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    v10 = 0;
    v6 = [v3 setResourceValues:v5 error:&v10];
    v7 = v10;

    if ((v6 & 1) == 0)
    {
      v8 = _MCLogObjects[12];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not write device last located time interval URL resource values: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = _MCLogObjects[12];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not write device last located time interval", buf, 2u);
    }
  }
}

void sub_10003E6CC(_BYTE *a1, void *a2)
{
  v5 = a2;
  if (a1[32] == 1)
  {
    v3 = [NSNumber numberWithBool:a1[33]];
    [v5 setObject:v3 forKeyedSubscript:kMDMIsProfileLockedKey];
  }

  if (a1[34] == 1)
  {
    v4 = [NSNumber numberWithBool:a1[35]];
    [v5 setObject:v4 forKeyedSubscript:kMDMIsADEProfileKey];
  }
}

void sub_10003E9F4(uint64_t a1, void *a2)
{
  v3 = kMDMUserEnrollmentKey;
  v4 = a2;
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:v3];
  v5 = [*(a1 + 32) enrollmentID];
  [v4 setObject:v5 forKeyedSubscript:kMDMEnrollmentIDKey];

  v6 = [*(a1 + 32) iCloudEnrollmentID];
  [v4 setObject:v6 forKeyedSubscript:kMDMiCloudEnrollmentIDKey];

  v7 = [*(a1 + 32) easEnrollmentID];
  [v4 setObject:v7 forKeyedSubscript:kMDMEASEnrollmentIDKey];
}

uint64_t sub_10003F8CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003F8E4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 removeAllObjects];
  [v3 addEntriesFromDictionary:*(a1 + 32)];
}

void sub_10003F938(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100041314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100041338(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

NSDictionary *__cdecl sub_1000416DC(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  [MCDailyAnalyticsHelper addCloudConfigInfoWithEventPayload:v1];
  [MCDailyAnalyticsHelper addMDMConfigInfoWithEventPayload:v1];
  [MCDailyAnalyticsHelper addSharediPadInfoWithEventPayload:v1];
  [MCDailyAnalyticsHelper addProfileAndPayloadInfoWithEventPayload:v1];
  [MCDailyAnalyticsHelper addRestrictionInfoWithEventPayload:v1];
  [MCDailyAnalyticsHelper addSettingsInfoWithEventPayload:v1];
  [MCDailyAnalyticsHelper addPasscodeInfoWithEventPayload:v1];

  return v1;
}

void sub_100042234(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v9 = a3;
  v6 = [MCRestrictionManager restrictedBoolForFeature:a2 withRestrictionsDictionary:v5];
  v7 = *(a1 + 40);
  if (v6 == 2)
  {
    v8 = &__kCFBooleanTrue;
  }

  else
  {
    v8 = &__kCFBooleanFalse;
  }

  [*(a1 + 40) setObject:v8 forKeyedSubscript:v9];
}

void sub_1000422C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v9 = a3;
  v6 = [MCRestrictionManager restrictedBoolForFeature:a2 withRestrictionsDictionary:v5];
  v7 = *(a1 + 40);
  if (v6 == 1)
  {
    v8 = &__kCFBooleanTrue;
  }

  else
  {
    v8 = &__kCFBooleanFalse;
  }

  [*(a1 + 40) setObject:v8 forKeyedSubscript:v9];
}

void sub_10004235C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = [MCRestrictionManager objectForFeature:a2 withRestrictionsDictionary:v5];
  if (v8)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
}

void sub_100042404(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = [MCRestrictionManager intersectedValuesForFeature:a2 withRestrictionsDictionary:v5];
  if (v8)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
}

void sub_1000424AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [MCRestrictionManager valueForFeature:a2 withRestrictionsDictionary:v5];
  v8 = [v7 unsignedIntValue];

  v9 = [NSNumber numberWithUnsignedInt:v8];
  [*(a1 + 40) setObject:v9 forKeyedSubscript:v6];
}

void sub_100042A10(id a1)
{
  v4[0] = @"payload_count_airPlayConfiguration";
  v4[1] = @"payload_count_airPrintConfiguration";
  v4[2] = @"payload_count_alwaysOnVPN";
  v4[3] = @"payload_count_apn";
  v4[4] = @"payload_count_appLayerVPN";
  v4[5] = @"payload_count_calDAVAccount";
  v4[6] = @"payload_count_cardDAVAccount";
  v4[7] = @"payload_count_cellular";
  v4[8] = @"payload_count_dnsProxy";
  v4[9] = @"payload_count_dnsSettings";
  v4[10] = @"payload_count_domains";
  v4[11] = @"payload_count_exchangeAccount";
  v4[12] = @"payload_count_educationConfiguration";
  v4[13] = @"payload_count_emailAccount";
  v4[14] = @"payload_count_encryptedProfileService";
  v4[15] = @"payload_count_font";
  v4[16] = @"payload_count_globalHTTPProxy";
  v4[17] = @"payload_count_googleAccount";
  v4[18] = @"payload_count_homeScreenLayout";
  v4[19] = @"payload_count_ldapAccount";
  v4[20] = @"payload_count_logging";
  v4[21] = @"payload_count_mdm";
  v4[22] = @"payload_count_networkUsageRules";
  v4[23] = @"payload_count_notificationSettings";
  v4[24] = @"payload_count_passwordPolicy";
  v4[25] = @"payload_count_plainCertificate";
  v4[26] = @"payload_count_restriction";
  v4[27] = @"payload_count_scep";
  v4[28] = @"payload_count_selfsignedcertificate";
  v4[29] = @"payload_count_sharedDeviceConfiguration";
  v4[30] = @"payload_count_singleAppMode";
  v4[31] = @"payload_count_singleSignOnAccount";
  v4[32] = @"payload_count_subCalAccount";
  v4[33] = @"payload_count_supervisionPolicy";
  v4[34] = @"payload_count_vpn";
  v4[35] = @"payload_count_wapiIdentityCertificate";
  v4[36] = @"payload_count_webClip";
  v4[37] = @"payload_count_webContentFilter";
  v4[38] = @"payload_count_wiFiNetwork";
  v1 = [NSArray arrayWithObjects:v4 count:39];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_100136AA0;
  qword_100136AA0 = v2;
}

void sub_100042C7C(id a1)
{
  v3[0] = kMCAirPlayPayloadType;
  v3[1] = kMCAirPrintPayloadType;
  v4[0] = @"payload_count_airPlayConfiguration";
  v4[1] = @"payload_count_airPrintConfiguration";
  v3[2] = kMCAlwaysOnVPNPayloadType;
  v3[3] = kMCAPNPayloadType;
  v4[2] = @"payload_count_alwaysOnVPN";
  v4[3] = @"payload_count_apn";
  v3[4] = kMCAppLayerVPNPayloadType;
  v3[5] = kMCCardDAVAccountPayloadType;
  v4[4] = @"payload_count_appLayerVPN";
  v4[5] = @"payload_count_cardDAVAccount";
  v3[6] = kMCCalDAVAccountPayloadType;
  v3[7] = kMCCellularPayloadType;
  v4[6] = @"payload_count_calDAVAccount";
  v4[7] = @"payload_count_cellular";
  v3[8] = kMCChaperonePayloadType;
  v3[9] = kMCCPRootType;
  v4[8] = @"payload_count_supervisionPolicy";
  v4[9] = @"payload_count_plainCertificate";
  v3[10] = kMCCPPKCS12Type;
  v3[11] = kMCCPPKCS1Type;
  v4[10] = @"payload_count_plainCertificate";
  v4[11] = @"payload_count_plainCertificate";
  v3[12] = kMCCPPEMType;
  v3[13] = kMCCWAPIType;
  v4[12] = @"payload_count_plainCertificate";
  v4[13] = @"payload_count_wapiIdentityCertificate";
  v3[14] = kMCDNSProxyPayloadType;
  v3[15] = kMCDNSSettingsPayloadType;
  v4[14] = @"payload_count_dnsProxy";
  v4[15] = @"payload_count_dnsSettings";
  v3[16] = kMCDomainsPayloadType;
  v3[17] = kMCEASAccountPayloadType;
  v4[16] = @"payload_count_domains";
  v4[17] = @"payload_count_exchangeAccount";
  v3[18] = kMCEncryptedProfileServicePayloadType;
  v3[19] = kMCEmailAccountPayloadType;
  v4[18] = @"payload_count_encryptedProfileService";
  v4[19] = @"payload_count_emailAccount";
  v3[20] = kMCFontPayloadType;
  v3[21] = kMCGlobalHTTPProxyPayloadType;
  v4[20] = @"payload_count_font";
  v4[21] = @"payload_count_globalHTTPProxy";
  v3[22] = kMCGmailAccountLegacyPayloadType;
  v3[23] = kMCGmailAccountPayloadType;
  v4[22] = @"payload_count_googleAccount";
  v4[23] = @"payload_count_googleAccount";
  v3[24] = kMCHomeScreenLayoutPayloadType;
  v3[25] = kMCLDAPAccountPayloadType;
  v4[24] = @"payload_count_homeScreenLayout";
  v4[25] = @"payload_count_ldapAccount";
  v3[26] = kMCLoggingPayloadType;
  v3[27] = kMCMDMPayloadType;
  v4[26] = @"payload_count_logging";
  v4[27] = @"payload_count_mdm";
  v3[28] = kMCNetworkUsageRulesPayloadType;
  v3[29] = kMCNotificationSettingsPayloadType;
  v4[28] = @"payload_count_networkUsageRules";
  v4[29] = @"payload_count_notificationSettings";
  v3[30] = kMCPasswordPolicyPayloadType;
  v3[31] = kMCRestrictionsPayloadType;
  v4[30] = @"payload_count_passwordPolicy";
  v4[31] = @"payload_count_restriction";
  v3[32] = kMCSCEPPayloadType;
  v3[33] = kMCSelfSignedCertificatePayloadType;
  v4[32] = @"payload_count_scep";
  v4[33] = @"payload_count_selfsignedcertificate";
  v3[34] = kMCSharedDeviceConfigurationPayloadType;
  v3[35] = kMCSingleAppPayloadType;
  v4[34] = @"payload_count_sharedDeviceConfiguration";
  v4[35] = @"payload_count_singleAppMode";
  v3[36] = kMCSingleSignOnPayloadType;
  v3[37] = kMCSubCalAccountPayloadType;
  v4[36] = @"payload_count_singleSignOnAccount";
  v4[37] = @"payload_count_subCalAccount";
  v3[38] = kMCVPNPayloadType;
  v3[39] = kMCWebClipPayloadType;
  v4[38] = @"payload_count_vpn";
  v4[39] = @"payload_count_webClip";
  v3[40] = kMCWebContentFilterPayloadType;
  v3[41] = kMCWiFiPayloadType;
  v4[40] = @"payload_count_webContentFilter";
  v4[41] = @"payload_count_wiFiNetwork";
  v3[42] = kMCEDUClassroomPayloadType;
  v4[42] = @"payload_count_educationConfiguration";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:43];
  v2 = qword_100136AB0;
  qword_100136AB0 = v1;
}

void sub_100043154(id a1)
{
  v3[0] = MCFeatureAccountModificationAllowed;
  v3[1] = MCFeatureActivityContinuationAllowed;
  v4[0] = @"restriction_allowAccountModification";
  v4[1] = @"restriction_allowActivityContinuation";
  v3[2] = MCFeatureAppInstallationAllowed;
  v3[3] = MCFeatureAppRemovalAllowed;
  v4[2] = @"restriction_allowAppInstallation";
  v4[3] = @"restriction_allowAppRemoval";
  v3[4] = MCFeatureAutoCorrectionAllowed;
  v3[5] = MCFeatureBluetoothModificationAllowed;
  v4[4] = @"restriction_allowAutoCorrection";
  v4[5] = @"restriction_allowBluetoothModification";
  v3[6] = MCFeatureCameraAllowed;
  v3[7] = MCFeatureCloudBackupAllowed;
  v4[6] = @"restriction_allowCamera";
  v4[7] = @"restriction_allowCloudBackup";
  v3[8] = MCFeatureCloudDocumentSyncAllowed;
  v3[9] = MCFeatureDefinitionLookupAllowed;
  v4[8] = @"restriction_allowCloudDocumentSync";
  v4[9] = @"restriction_allowDefinitionLookup";
  v3[10] = MCFeatureSelectedTextSharingAllowed;
  v3[11] = MCFeatureDeviceNameModificationAllowed;
  v4[10] = @"restriction_allowSelectedTextSharing";
  v4[11] = @"restriction_allowDeviceNameModification";
  v3[12] = MCFeatureEnablingRestrictionsAllowed;
  v3[13] = MCFeatureEnterpriseAppTrustAllowed;
  v4[12] = @"restriction_allowEnablingRestrictions";
  v4[13] = @"restriction_allowEnterpriseAppTrust";
  v3[14] = MCFeatureEnterpriseBookBackupAllowed;
  v3[15] = MCFeatureEnterpriseBookMetadataSyncAllowed;
  v4[14] = @"restriction_allowEnterpriseBookBackup";
  v4[15] = @"restriction_allowEnterpriseBookMetadataSync";
  v3[16] = MCFeatureEraseContentAndSettingsAllowed;
  v3[17] = MCFeatureFingerprintUnlockAllowed;
  v4[16] = @"restriction_allowEraseContentAndSettings";
  v4[17] = @"restriction_allowFingerprintForUnlock";
  v3[18] = MCFeatureHostPairingAllowed;
  v3[19] = MCFeatureManagedAppsCloudSyncAllowed;
  v4[18] = @"restriction_allowHostPairing";
  v4[19] = @"restriction_allowManagedAppsCloudSync";
  v3[20] = MCFeatureOpenFromManagedToUnmanagedAllowed;
  v3[21] = MCFeatureOpenFromUnmanagedToManagedAllowed;
  v4[20] = @"restriction_allowOpenFromManagedToUnmanaged";
  v4[21] = @"restriction_allowOpenFromUnmanagedToManaged";
  v3[22] = MCFeaturePairedWatchAllowed;
  v3[23] = MCFeaturePasscodeModificationAllowed;
  v4[22] = @"restriction_allowPairedWatch";
  v4[23] = @"restriction_allowPasscodeModification";
  v3[24] = MCFeaturePasscodeRecoveryAllowed;
  v3[25] = MCFeaturePredictiveKeyboardAllowed;
  v4[24] = @"restriction_allowPasscodeRecovery";
  v4[25] = @"restriction_allowPredictiveKeyboard";
  v3[26] = MCFeatureRemoteScreenObservationAllowed;
  v3[27] = MCFeatureSafariAllowed;
  v4[26] = @"restriction_allowRemoteScreenObservation";
  v4[27] = @"restriction_allowSafari";
  v3[28] = MCFeatureScreenShotAllowed;
  v3[29] = MCFeatureSpellCheckAllowed;
  v4[28] = @"restriction_allowScreenShot";
  v4[29] = @"restriction_allowSpellCheck";
  v3[30] = MCFeatureUIAppInstallationAllowed;
  v3[31] = MCFeatureAppClipsAllowed;
  v4[30] = @"restriction_allowUIAppInstallation";
  v4[31] = @"restriction_allowAppClips";
  v3[32] = MCFeatureUIConfigurationProfileInstallationAllowed;
  v3[33] = MCFeatureUntrustedTLSPromptAllowed;
  v4[32] = @"restriction_allowUIConfigurationProfileInstallation";
  v4[33] = @"restriction_allowUntrustedTLSPrompt";
  v3[34] = MCFeatureUSBRestrictedModeAllowed;
  v3[35] = MCFeatureWallpaperModificationAllowed;
  v4[34] = @"restriction_allowUSBRestrictedMode";
  v4[35] = @"restriction_allowWallpaperModification";
  v3[36] = MCFeatureiPhoneWidgetsOnMacAllowed;
  v3[37] = MCFeatureHiddenAppsAllowed;
  v4[36] = @"restriction_allowiPhoneWidgetsOnMac";
  v4[37] = @"restriction_allowHidingApps";
  v3[38] = MCFeatureLockedAppsAllowed;
  v4[38] = @"restriction_allowLockingApps";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:39];
  v2 = qword_100136AC0;
  qword_100136AC0 = v1;
}

void sub_1000435DC(id a1)
{
  v3[0] = MCFeatureAirDropUnmanagedForced;
  v3[1] = MCFeatureDelayedSoftwareUpdatesForced;
  v4[0] = @"restriction_forceAirDropUnmanaged";
  v4[1] = @"restriction_forceDelayedSoftwareUpdates";
  v3[2] = MCFeatureEncryptedBackupRequired;
  v3[3] = MCFeatureLimitAdTrackingForced;
  v4[2] = @"restriction_forceEncryptedBackup";
  v4[3] = @"restriction_forceLimitAdTracking";
  v3[4] = MCFeatureUnpairedExternalBootToRecoveryAllowed;
  v3[5] = MCFeatureWatchWristDetectRequired;
  v4[4] = @"restriction_allowUnpairedExternalBootToRecovery";
  v4[5] = @"restriction_forceWatchWristDetection";
  v3[6] = MCFeatureWiFiWhitelistingForced;
  v4[6] = @"restriction_forceWiFiWhitelisting";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:7];
  v2 = qword_100136AD0;
  qword_100136AD0 = v1;
}

void sub_100043740(id a1)
{
  v3[0] = MCFeatureBlacklistedAppBundleIDs;
  v3[1] = MCFeatureAppLockBundleIDs;
  v4[0] = @"restriction_blacklistedAppBundleIDs";
  v4[1] = @"restriction_whitelistedAppBundleIDs";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_100136AE0;
  qword_100136AE0 = v1;
}

void sub_100043828(id a1)
{
  v3 = MCFeatureAutonomousSingleAppModePermittedAppIDs;
  v4 = @"restriction_autonomousSingleAppModePermittedAppIDs";
  v1 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  v2 = qword_100136AF0;
  qword_100136AF0 = v1;
}

void sub_1000438F8(id a1)
{
  v3[0] = MCFeatureAutoLockTime;
  v3[1] = MCFeatureMinimumPasscodeLength;
  v4[0] = @"restriction_autoLockTime";
  v4[1] = @"restriction_minimumPasscodeLength";
  v3[2] = MCFeaturePasscodeHistoryCount;
  v3[3] = MCFeaturePasscodeLockGraceTime;
  v4[2] = @"restriction_passcodeHistory";
  v4[3] = @"restriction_passcodeLockGraceTime";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_100136B00;
  qword_100136B00 = v1;
}

void sub_100043A10(id a1)
{
  v4[0] = @"settings_allowPasscodeRecovery";
  v4[1] = @"settings_allowUSBRestrictedMode";
  v1 = [NSArray arrayWithObjects:v4 count:2];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_100136B10;
  qword_100136B10 = v2;
}

void sub_100043B00(id a1)
{
  v3[0] = MCFeaturePasscodeRecoveryAllowed;
  v3[1] = MCFeatureUSBRestrictedModeAllowed;
  v4[0] = @"settings_allowPasscodeRecovery";
  v4[1] = @"settings_allowUSBRestrictedMode";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_100136B20;
  qword_100136B20 = v1;
}

void sub_100043BE8(id a1)
{
  v4[0] = @"settings_allowLockdownMode";
  v4[1] = @"settings_forceLimitAdTracking";
  v1 = [NSArray arrayWithObjects:v4 count:2];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_100136B30;
  qword_100136B30 = v2;
}

void sub_100043CD8(id a1)
{
  v3[0] = MCFeatureLockdownModeAllowed;
  v3[1] = MCFeatureLimitAdTrackingForced;
  v4[0] = @"settings_allowLockdownMode";
  v4[1] = @"settings_forceLimitAdTracking";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_100136B40;
  qword_100136B40 = v1;
}

void sub_100045DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100045DE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100045DFC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) complete];
}

void sub_10004615C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100046184(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) complete];
}

void sub_100046228(id a1)
{
  v1 = objc_alloc_init(MCInstaller);
  v2 = qword_100136B60;
  qword_100136B60 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100046460()
{
  v0 = qword_100136B58;
  if (!qword_100136B58)
  {
    v1 = MCUserProfileStorageDirectory();
    v2 = qword_100136B58;
    qword_100136B58 = v1;

    v0 = qword_100136B58;
  }

  return v0;
}

id sub_1000464B0()
{
  v0 = qword_100136B50;
  if (!qword_100136B50)
  {
    v1 = MCSystemProfileStorageDirectory();
    v2 = qword_100136B50;
    qword_100136B50 = v1;

    v0 = qword_100136B50;
  }

  return v0;
}

void sub_100046EE4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _targetDeviceErrorWithUnderlyingError:a2];
  v4 = _MCLogObjects[9];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 40);
    v6 = v4;
    v7 = +[MCProfile stringForDeviceType:](MCProfile, "stringForDeviceType:", [v5 targetDeviceType]);
    v8 = [v3 MCVerboseDescription];
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Profile-defined target-device-type %{public}@ error: %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, *(a1 + 40), [*(a1 + 40) targetDeviceType]);
}

void sub_10004787C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v9 = [*(a1 + 32) _uiProfileInstallationDisabledTopLevelErrorWithCause:MCErrorRestrictionCauseStolenDeviceProtection];
    (*(v3 + 16))(v3, v9, *(a1 + 40), *(a1 + 64));
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(a1 + 56);
    v6 = *(a1 + 64);
    v8 = *(a1 + 48);

    [v4 _continueQueueingProfile:v5 profileData:v8 forDevice:v6 completion:v7];
  }
}

void sub_100047CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100047CFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100047D14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) identifier];
  v5 = *(a1 + 64);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  [v2 sendPurgatoryProfileData:v3 identifier:v4 targetDevice:v5 outError:&obj];
  objc_storeStrong((v6 + 40), obj);
}

void sub_100048E68(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _MCLogObjects[9];
  if (v4)
  {
    if (os_log_type_enabled(_MCLogObjects[9], OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v12 = 134349314;
      v13 = v6;
      v14 = 2114;
      v15 = v4;
      v7 = "MCInstaller failed to update CDP with new passcode of type %{public}lu with error: %{public}@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(_MCLogObjects[9], OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = 134349056;
    v13 = v11;
    v7 = "MCInstaller successfully updated CDP with new passcode of type: %{public}lu";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 12;
    goto LABEL_6;
  }
}

void sub_10004CC5C(id a1)
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v3 count:3];
  v2 = qword_100136B70;
  qword_100136B70 = v1;
}

void sub_10004CCFC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = *(a1[10] + 8);
  obj = *(v7 + 40);
  v8 = [v2 _promptUserForMAIDSignIn:v3 personaID:v4 handler:v5 interactionClient:v6 outError:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[9] + 8) + 24) = v8;
}

void sub_10004CD6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  v4 = [v3 profile];
  v5 = [v4 organization];
  [v7 setAccountDescription:v5];

  [v7 setManagingOwnerIdentifier:kMCAccountManagingOwnerIdentifier];
  v6 = [*(a1 + 40) friendlyName];
  [v7 setManagingSourceName:v6];

  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"MCAccountIsManaged"];
}

void sub_10004CE38(uint64_t a1, int a2, int a3, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  [*(a1 + 32) lock];
  [*(a1 + 32) unlockWithCondition:0];
}

void sub_10004FC08(id a1)
{
  v1 = +[MCPayload remoteQueueableWatchPayloadClasses];
  v2 = qword_100136B80;
  qword_100136B80 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100053598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005382C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100053848(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 installOptions];
  v5 = [v4 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v3 identifier];
    if ([v8 isEqualToString:*(a1 + 32)])
    {
      v7 = 0;
    }

    else
    {
      v7 = [v3 containsOnlyPayloadsOfClasses:*(a1 + 40)];
    }
  }

  v9 = [v3 isInstalledForSystem];

  return v7 & v9;
}

uint64_t sub_10005390C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 installOptions];
  v5 = kMCInstallProfileOptionIsInstalledByMDM;
  v6 = [v4 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    v8 = [v4 mutableCopy];
    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:v5];
    [v8 setObject:a1[4] forKeyedSubscript:kMCInstallProfileOptionManagingProfileIdentifier];
    if (v8)
    {
      v9 = [v8 copy];
      [v3 setInstallOptions:v9];

      v10 = MCSystemProfileStorageDirectory();
      [v3 writeStubToDirectory:v10];
    }

    v11 = a1[5];
    v12 = [v3 identifier];
    [v11 addObject:v12];

    v13 = +[MCDependencyManager sharedManager];
    v14 = [v3 identifier];
    [v13 addDependent:v14 ofParent:a1[4] inDomain:kMCDMManagingProfileToManagedProfileKey reciprocalDomain:kMCDMManagedProfileToManagingProfileKey];

    *(*(a1[6] + 8) + 24) = 1;
  }

  return 1;
}

void sub_1000542AC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054354;
  block[3] = &unk_10011C7A0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  dispatch_sync(v2, block);
}

id sub_100054354(uint64_t a1)
{
  sub_1000826D8(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 purgePurgatoryProfilesForTargetDevice:v3];
}

BOOL sub_100054F48(uint64_t *a1, uint64_t *a2)
{
  v4 = MCBiometricKitClass();
  if (!v4)
  {
    return 0;
  }

  v5 = [v4 manager];
  v6 = [v5 getProtectedConfiguration];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"BKUserCfgTouchIDUnlockEnabled"];
    v9 = [v7 objectForKeyedSubscript:@"BKUserCfgTouchIDApplePayEnabled"];
    v10 = (v8 | v9) != 0;
    if (v8 | v9)
    {
      if (a1)
      {
        v11 = v8;
        *a1 = v8;
      }

      if (a2)
      {
        v12 = v9;
        *a2 = v9;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_10005502C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MCBiometricKitClass();
  if (v8)
  {
    v9 = [v8 manager];
    v10 = [NSMutableDictionary dictionaryWithCapacity:2];
    v11 = v10;
    if (v5)
    {
      [v10 setObject:v5 forKeyedSubscript:@"BKUserCfgTouchIDUnlockEnabled"];
    }

    if (v6)
    {
      [v11 setObject:v6 forKeyedSubscript:@"BKUserCfgTouchIDApplePayEnabled"];
    }

    if (v7)
    {
      v25 = @"BKOptionAuthWithCredentialSet";
      v26 = v7;
      v12 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    }

    else
    {
      v12 = 0;
    }

    v14 = [v9 setProtectedConfiguration:v11 withOptions:v12];
    v15 = _MCLogObjects[0];
    if (v14)
    {
      v16 = v14;
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v22 = v11;
        v23 = 1024;
        v24 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not set fingerprint options: %{public}@ Status: %d", buf, 0x12u);
      }

      v17 = MCPasscodeErrorDomain;
      v18 = [NSNumber numberWithInt:v16];
      v19 = MCErrorArray();
      v13 = [NSError MCErrorWithDomain:v17 code:5016 descriptionArray:v19 errorType:MCErrorTypeFatal, v18, 0];
    }

    else
    {
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v22 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Set fingerprint options: %{public}@", buf, 0xCu);
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

uint64_t sub_100057A8C(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100057CF0(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000584BC(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10005A780(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 count] != 0, v5);
}

void sub_10005ABD0(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking for any MDM NotNow response to retry...", v5, 2u);
    }

    v4 = +[MDMClient sharedClient];
    [v4 retryNotNowResponse];
  }
}

void sub_10005B2AC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005B380;
    block[3] = &unk_10011C890;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

void sub_10005B398(uint64_t a1, int a2, void *a3)
{
  v13 = a3;
  v5 = *(a1 + 32);
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v6 = MCFeaturePromptErrorDomain;
        v7 = MCErrorArray();
        v8 = MCErrorTypeFatal;
        v9 = v6;
        v10 = 50000;
LABEL_10:
        v12 = [NSError MCErrorWithDomain:v9 code:v10 descriptionArray:v7 errorType:v8, 0];
        (*(v5 + 16))(v5, 0, v12);

        goto LABEL_12;
      }

LABEL_9:
      v11 = MCFeaturePromptErrorDomain;
      v7 = MCErrorArray();
      v8 = MCErrorTypeFatal;
      v9 = v11;
      v10 = 50001;
      goto LABEL_10;
    }

LABEL_8:
    (*(v5 + 16))(v5, 1, 0);
    goto LABEL_12;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (*(v5 + 16))(v5, 2, 0);
LABEL_12:
}

void sub_10005B6CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10005B798;
    v6[3] = &unk_10011B918;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

uint64_t sub_10005BC30(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10005F874()
{
  v0 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "eapolConfigurationAPIEnabled: returning FALSE", v1, 2u);
  }
}

void sub_10006503C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100065078(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_1000650AC(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = sharedDAAccountStore();
  v6 = [*(a1 + 32) backingAccountInfo];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100065190;
  v8[3] = &unk_10011C8E0;
  v9 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  [v5 saveVerifiedAccount:v6 withCompletionHandler:v8];

  return dispatch_semaphore_wait(*(*(*(a1 + 40) + 8) + 40), 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t sub_100065190(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    v4 = MCSubCalErrorDomain;
    v5 = a3;
    v6 = MCErrorArray();
    v7 = [NSError MCErrorWithDomain:v4 code:16000 descriptionArray:v6 underlyingError:v5 errorType:MCErrorTypeFatal, 0];

    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v10);
}

void sub_1000657C0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 identifier];
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to save set aside account %{public}@ back in place", &v10, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100066F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100066F90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100066FA8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10006752C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100067584(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = sharedDAAccountStore();
  v6 = [*(a1 + 32) backingAccountInfo];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100067668;
  v8[3] = &unk_10011C8E0;
  v9 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  [v5 saveVerifiedAccount:v6 withCompletionHandler:v8];

  return dispatch_semaphore_wait(*(*(*(a1 + 40) + 8) + 40), 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t sub_100067668(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    v4 = MCCalDAVErrorDomain;
    v5 = a3;
    v6 = MCErrorArray();
    v7 = [NSError MCErrorWithDomain:v4 code:17000 descriptionArray:v6 underlyingError:v5 errorType:MCErrorTypeFatal, 0];

    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v10);
}

void sub_100067C98(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 identifier];
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to save set aside account %{public}@ back in place", &v10, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100067FE8(id a1)
{
  v1 = objc_alloc_init(MCProvisioningProfileJanitor);
  v2 = qword_100136B98;
  qword_100136B98 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100068138(uint64_t a1)
{
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveUnionValuesForSetting:MCFeatureTrustedCodeSigningIdentities];

  v4 = _MCLogObjects[11];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MCProvisioningProfileJanitor updating MIS trust with MC signers: %@", &v9, 0xCu);
  }

  v5 = [*(a1 + 32) profileTrust];
  [v5 updateTrustedCodeSigningIdentities:v3 validateBundleIDs:*(a1 + 40) validateManagedApps:*(a1 + 64)];

  v6 = *(a1 + 32);
  v7 = [NSSet setWithArray:v3];
  [v6 syncMCTrustedCodeSigningIdentities:v7];

  v8 = *(a1 + 56);
  if (v8)
  {
    (*(v8 + 16))(v8, 0);
  }
}

void sub_100068790(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueSystemDomainsDict];
  v3 = +[MCDependencyReader systemStoragePath];
  [v2 MCWriteToBinaryFile:v3];

  v4 = [*(a1 + 32) memberQueueUserDomainsDict];
  v5 = +[MCDependencyReader userStoragePath];
  [v4 MCWriteToBinaryFile:v5];

  v6 = [*(a1 + 32) memberQueueSystemOrphansDict];
  [v6 removeAllObjects];

  v7 = [*(a1 + 32) memberQueueUserOrphansDict];
  [v7 removeAllObjects];

  MCSendDependencyChangedNotification();
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    dispatch_async(v9, v8);
  }
}

void sub_100068E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100068E18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100068E30(uint64_t a1)
{
  v9 = [*(a1 + 32) memberQueueOrphanedParentsInSystemDomain:*(a1 + 40)];
  v2 = [*(a1 + 32) memberQueueOrphanedParentsInUserDomain:*(a1 + 40)];
  if (v9 | v2)
  {
    v3 = +[NSMutableSet set];
    if (v9)
    {
      v4 = [v9 allObjects];
      [v3 addObjectsFromArray:v4];
    }

    if (v2)
    {
      v5 = [v2 allObjects];
      [v3 addObjectsFromArray:v5];
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = [v3 copy];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_100069058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100069070(uint64_t a1)
{
  v5 = [*(a1 + 32) memberQueueOrphanedParentsInSystemDomain:*(a1 + 40)];
  v2 = [v5 copy];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100069204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006921C(uint64_t a1)
{
  v5 = [*(a1 + 32) memberQueueOrphanedParentsInUserDomain:*(a1 + 40)];
  v2 = [v5 copy];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000699E0(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueDependentsOfParent:*(a1 + 40) inSystemDomain:*(a1 + 48)];
  v3 = [v2 count];

  v4 = [*(a1 + 32) memberQueueDependentsOfParent:*(a1 + 40) inUserDomain:*(a1 + 48)];
  v5 = [v4 count];

  [*(a1 + 32) memberQueueRemoveDependent:*(a1 + 56) fromParent:*(a1 + 40) inDomain:*(a1 + 48) fromSystem:*(a1 + 64) user:*(a1 + 65)];
  v6 = [*(a1 + 32) memberQueueDependentsOfParent:*(a1 + 40) inSystemDomain:*(a1 + 48)];
  v7 = [v6 count];

  v8 = [*(a1 + 32) memberQueueDependentsOfParent:*(a1 + 40) inUserDomain:*(a1 + 48)];
  v9 = [v8 count];

  if (v3)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v5)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  if ((v11 & 1) != 0 || v13)
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);

    [v14 memberQueueAddOrphanParent:v15 inDomain:v16 toSystem:? user:?];
  }
}

id sub_100069F3C(uint64_t a1)
{
  [*(a1 + 32) memberQueueAddDependent:*(a1 + 40) toParent:*(a1 + 48) inDomain:*(a1 + 56) toSystem:*(a1 + 72) user:*(a1 + 73)];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 73);

  return [v4 memberQueueAddDependent:v2 toParent:v3 inDomain:v5 toSystem:v6 user:v7];
}

id sub_10006A0E0(uint64_t a1)
{
  [*(a1 + 32) memberQueueRemoveDependent:*(a1 + 40) fromParent:*(a1 + 48) inDomain:*(a1 + 56) fromSystem:*(a1 + 72) user:*(a1 + 73)];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 73);

  return [v4 memberQueueRemoveDependent:v2 fromParent:v3 inDomain:v5 fromSystem:v6 user:v7];
}

void sub_10006B83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006B864(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006B87C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10006BE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10006BE98(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = sharedDAAccountStore();
  v6 = [*(a1 + 32) backingAccountInfo];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006BF7C;
  v8[3] = &unk_10011C8E0;
  v9 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  [v5 saveVerifiedAccount:v6 withCompletionHandler:v8];

  return dispatch_semaphore_wait(*(*(*(a1 + 40) + 8) + 40), 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t sub_10006BF7C(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    v4 = MCLDAPErrorDomain;
    v5 = a3;
    v6 = MCErrorArray();
    v7 = [NSError MCErrorWithDomain:v4 code:19000 descriptionArray:v6 underlyingError:v5 errorType:MCErrorTypeFatal, 0];

    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v10);
}

void sub_10006C5AC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 identifier];
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to save set aside account %{public}@ back in place", &v10, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10006DF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006DF68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006DF80(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10006E544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10006E59C(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = sharedDAAccountStore();
  v6 = [*(a1 + 32) backingAccountInfo];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006E680;
  v8[3] = &unk_10011C8E0;
  v9 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  [v5 saveVerifiedAccount:v6 withCompletionHandler:v8];

  return dispatch_semaphore_wait(*(*(*(a1 + 40) + 8) + 40), 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t sub_10006E680(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    v4 = MCCardDAVErrorDomain;
    v5 = a3;
    v6 = MCErrorArray();
    v7 = [NSError MCErrorWithDomain:v4 code:20000 descriptionArray:v6 underlyingError:v5 errorType:MCErrorTypeFatal, 0];

    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v10);
}

void sub_10006ECB0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 identifier];
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to save set aside account %{public}@ back in place", &v10, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10006EF20(id a1)
{
  v1 = objc_alloc_init(MCWatchSettingsMirror);
  v2 = qword_100136BA8;
  qword_100136BA8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10006F938(id a1)
{
  v75[0] = @"com.apple.aac";
  v73[0] = @"bundlePath";
  v73[1] = @"loaderClass";
  v74[0] = @"/System/Library/PrivateFrameworks/AACCore.framework/AACCore";
  v74[1] = @"AEAssessmentAgentService";
  v73[2] = @"loaderSelector";
  v73[3] = @"canOverrideRestrictions";
  v74[2] = @"setOfActiveRestrictionUUIDs:";
  v74[3] = &__kCFBooleanTrue;
  v26 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:4];
  v76[0] = v26;
  v75[1] = @"com.apple.accessibility.unmanaged.asam";
  v71[0] = @"bundlePath";
  v71[1] = @"loaderClass";
  v72[0] = @"/System/Library/PrivateFrameworks/AccessibilityUtilities.framework/AccessibilityUtilities";
  v72[1] = @"AXMobileConfigurationInterface";
  v71[2] = @"loaderSelector";
  v72[2] = @"activeRestrictionIdentifiers";
  v25 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:3];
  v76[1] = v25;
  v75[2] = @"com.apple.batterysaver";
  v69[0] = @"bundlePath";
  v69[1] = @"loaderClass";
  v70[0] = @"/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration";
  v70[1] = @"MCBatterySaverMode";
  v69[2] = @"loaderSelector";
  v70[2] = @"setOfActiveRestrictionUUIDs";
  v24 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:3];
  v76[2] = v24;
  v75[3] = @"com.apple.carousel.noplaytime";
  v67 = @"neverOrphanCheck";
  v68 = &__kCFBooleanTrue;
  v23 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v76[3] = v23;
  v75[4] = @"com.apple.dmd";
  v65[0] = @"bundlePath";
  v65[1] = @"loaderClass";
  v66[0] = @"/System/Library/PrivateFrameworks/DeviceManagement.framework/DeviceManagement";
  v66[1] = @"DMFConfigurationSourceClient";
  v65[2] = @"loaderSelector";
  v65[3] = @"orphanCheckMayFail";
  v66[2] = @"setOfActiveRestrictionUUIDs";
  v66[3] = &__kCFBooleanTrue;
  v22 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:4];
  v76[4] = v22;
  v75[5] = @"com.apple.FaceTime";
  v63 = @"neverOrphanCheck";
  v64 = &__kCFBooleanTrue;
  v21 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  v76[5] = v21;
  v75[6] = @"com.apple.eas.account";
  v61[0] = @"bundlePath";
  v61[1] = @"loaderClass";
  v62[0] = @"/System/Library/PrivateFrameworks/DataAccess.framework/DataAccess";
  v62[1] = @"DAAccount";
  v61[2] = @"loaderSelector";
  v61[3] = @"recomputeComplianceSelector";
  v62[2] = @"oneshotListOfAccountIDs";
  v62[3] = @"reacquireClientRestrictions:";
  v20 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:4];
  v76[6] = v20;
  v75[7] = @"com.apple.itunesstored";
  v59[0] = @"bundlePath";
  v59[1] = @"loaderClass";
  v60[0] = @"/System/Library/PrivateFrameworks/StoreServices.framework/StoreServices";
  v60[1] = @"SSRestrictions";
  v59[2] = @"loaderSelector";
  v60[2] = @"setOfActiveRestrictionUUIDs";
  v19 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:3];
  v76[7] = v19;
  v75[8] = @"com.apple.lsd.appremoval";
  v57 = @"neverOrphanCheck";
  v58 = &__kCFBooleanTrue;
  v18 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  v76[8] = v18;
  v75[9] = @"com.apple.managedconfiguration.profilectl";
  v55[0] = @"neverOrphanCheck";
  v55[1] = @"canOverrideRestrictions";
  v56[0] = &__kCFBooleanTrue;
  v56[1] = &__kCFBooleanTrue;
  v17 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
  v76[9] = v17;
  v75[10] = @"com.apple.ManagedSettings";
  v53[0] = @"bundlePath";
  v53[1] = @"loaderClass";
  v54[0] = @"/System/Library/PrivateFrameworks/ManagedSettingsObjC.framework/ManagedSettingsObjC";
  v54[1] = @"MOEffectiveSettingsStore";
  v53[2] = @"loaderSelector";
  v53[3] = @"orphanCheckMayFail";
  v54[2] = @"setOfActiveRestrictionUUIDs";
  v54[3] = &__kCFBooleanTrue;
  v16 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:4];
  v76[10] = v16;
  v75[11] = @"com.apple.mobilestoredemod";
  v51 = @"neverOrphanCheck";
  v52 = &__kCFBooleanTrue;
  v15 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v76[11] = v15;
  v75[12] = @"com.apple.NanoBooksRestrictions";
  v49 = @"neverOrphanCheck";
  v50 = &__kCFBooleanTrue;
  v14 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  v76[12] = v14;
  v75[13] = @"com.apple.Passbook";
  v47[0] = @"bundlePath";
  v47[1] = @"loaderClass";
  v48[0] = @"/System/Library/PrivateFrameworks/PassKitCore.framework/PassKitCore";
  v48[1] = @"PKWalletVisibility";
  v47[2] = @"loaderSelector";
  v48[2] = @"setOfActiveRestrictionUUIDs";
  v13 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:3];
  v76[13] = v13;
  v75[14] = @"com.apple.Preferences";
  v45 = @"neverOrphanCheck";
  v46 = &__kCFBooleanTrue;
  v12 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  v76[14] = v12;
  v75[15] = @"com.apple.profiled.appenforced";
  v43[0] = @"bundlePath";
  v43[1] = @"loaderClass";
  v44[0] = @"/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration";
  v44[1] = @"MCAppEnforcedRestrictions";
  v43[2] = @"loaderSelector";
  v44[2] = @"setOfActiveRestrictionUUIDs";
  v11 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:3];
  v76[15] = v11;
  v75[16] = @"com.apple.profiled.trustedcodesigningidentities";
  v41 = @"neverOrphanCheck";
  v42 = &__kCFBooleanTrue;
  v10 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v76[16] = v10;
  v75[17] = @"com.apple.remotemanagementd";
  v39 = @"neverOrphanCheck";
  v40 = &__kCFBooleanTrue;
  v1 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v76[17] = v1;
  v75[18] = @"com.apple.siri.parsec.HashtagImagesApp";
  v37[0] = @"bundlePath";
  v37[1] = @"loaderClass";
  v38[0] = @"/System/Library/PrivateFrameworks/CoreParsec.framework/CoreParsec";
  v38[1] = @"PARHashtagImagesVisibility";
  v37[2] = @"loaderSelector";
  v38[2] = @"setOfActiveRestrictionUUIDs";
  v2 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];
  v76[18] = v2;
  v75[19] = @"com.apple.siri.parsec.news";
  v35[0] = @"bundlePath";
  v35[1] = @"loaderClass";
  v36[0] = @"/System/Library/PrivateFrameworks/CoreParsec.framework/CoreParsec";
  v36[1] = @"PARNewsVisibility";
  v35[2] = @"loaderSelector";
  v36[2] = @"setOfActiveRestrictionUUIDs";
  v3 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:3];
  v76[19] = v3;
  v75[20] = @"com.apple.springboard";
  v33 = @"neverOrphanCheck";
  v34 = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v76[20] = v4;
  v75[21] = @"com.apple.studentd";
  v31[0] = @"bundlePath";
  v31[1] = @"loaderClass";
  v32[0] = @"/System/Library/PrivateFrameworks/ClassroomKit.framework/ClassroomKit";
  v32[1] = @"CRKClassroomConfiguration";
  v31[2] = @"loaderSelector";
  v32[2] = @"setOfActiveRestrictionUUIDs:";
  v5 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
  v76[21] = v5;
  v75[22] = @"com.apple.WatchListKit.isTVAllowed";
  v29 = @"neverOrphanCheck";
  v30 = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v76[22] = v6;
  v75[23] = @"NanoPreferencesSync";
  v27 = @"neverOrphanCheck";
  v28 = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v76[23] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:24];
  v9 = qword_100136BB8;
  qword_100136BB8 = v8;
}

void sub_100072DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100072E1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100072E34(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10007315C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100073178(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 7);
    v9 = +[DASharedAccountProperties DAAccountDoNotSaveReason];
    [v8 removeAccountPropertyForKey:v9];

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, v11, v5);
    }
  }
}

void sub_100073488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000734AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100073550;
  v5[3] = &unk_10011C258;
  v7 = *(a1 + 64);
  v4 = *(a1 + 48);
  v3 = v4;
  v6 = v4;
  [v1 _preflightWithPreflighter:v2 completionHandler:v5];
}

void sub_100073550(uint64_t a1, void *a2, void *a3)
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

void sub_100074814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 152), 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100074884(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = sharedDAAccountStore();
  v6 = [*(a1 + 32) backingAccountInfo];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100074968;
  v8[3] = &unk_10011C8E0;
  v9 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  [v5 saveVerifiedAccount:v6 withCompletionHandler:v8];

  return dispatch_semaphore_wait(*(*(*(a1 + 40) + 8) + 40), 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t sub_100074968(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    v4 = MCEASErrorDomain;
    v5 = a3;
    v6 = MCErrorArray();
    v7 = [NSError MCErrorWithDomain:v4 code:21004 descriptionArray:v6 underlyingError:v5 errorType:MCErrorTypeFatal, 0];

    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v10);
}

void sub_100074E18(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 identifier];
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to save set aside account %{public}@ back in place", &v10, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100075660(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(a1);
    v4 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *(v2 - 160) = 138543362;
      *(v2 - 156) = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Caught exception %{public}@ while attempting to remove an account restrictions.", (v2 - 160), 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x100075604);
  }

  _Unwind_Resume(a1);
}

void sub_100075768(uint64_t a1)
{
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 64);
    *buf = 136315650;
    v14 = "[MCNewEASAccountPayloadHandler remove]_block_invoke";
    v15 = 2114;
    v16 = v3;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s - Will reset credential for account: %{public}@, use old password? %d", buf, 0x1Cu);
  }

  v5 = 56;
  if (*(a1 + 64))
  {
    v5 = 48;
  }

  v6 = *(a1 + v5);
  v7 = [*(a1 + 40) backingAccountInfo];
  [v7 setCredential:v6];

  v8 = [*(a1 + 40) backingAccountInfo];
  [v8 setAuthenticated:1];

  v9 = sharedDAAccountStore();
  v10 = [*(a1 + 40) backingAccountInfo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100075918;
  v11[3] = &unk_10011CAE8;
  v12 = *(a1 + 40);
  [v9 saveVerifiedAccount:v10 withCompletionHandler:v11];
}

void sub_100075918(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 backingAccountInfo];
      v10 = [v9 identifier];
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error saving account %{public}@. Error: %{public}@", &v11, 0x16u);
    }
  }
}

uint64_t sub_100077290(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000772A8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100078F90(id a1)
{
  v1 = MCGetBaseResourcePath();
  v2 = [v1 stringByAppendingPathComponent:@"enforcedAppWhitelistRestrictions.plist"];
  v5 = [NSData dataWithContentsOfFile:v2];

  v3 = [NSPropertyListSerialization MCSafePropertyListWithData:v5 options:0 format:0 error:0];
  v4 = qword_100136BC8;
  qword_100136BC8 = v3;
}

void sub_100079354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007937C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100079394(uint64_t a1)
{
  v52 = 0;
  v2 = [*(a1 + 32) memberQueueRestrictions];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) memberQueueCombinedSystemProfileRestrictions];
  v5 = [v4 copy];

  v6 = [*(a1 + 32) memberQueueRestrictions];
  v7 = [*(a1 + 32) defaultRestrictions];
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = [*(a1 + 32) memberQueueSystemClientRestrictions];
  v11 = [*(a1 + 32) memberQueueUserClientRestrictions];
  v51 = 0;
  v12 = [MCRestrictionManagerWriter restrictionsWithCurrentRestrictions:v6 defaultRestrictions:v7 systemProfileRestrictions:v9 userProfileRestrictions:v8 systemClientRestrictions:v10 userClientRestrictions:v11 outRestrictionsChanged:&v52 outError:&v51];
  v13 = v51;

  if (!v12)
  {
    goto LABEL_28;
  }

  v50 = v5;
  v49 = [*(a1 + 32) applyConfiguration:*(a1 + 40) toDomain:6 inNamespace:0 fromSender:*(a1 + 56)];
  [*(a1 + 32) applyConfiguration:*(a1 + 48) toDomain:7 inNamespace:0 fromSender:*(a1 + 56)];
  [*(a1 + 32) applyConfiguration:v12 toDomain:5 inNamespace:0 fromSender:*(a1 + 56)];
  v14 = *(a1 + 40);
  v15 = MCSystemProfileRestrictionsFilePath();
  [v14 MCWriteToBinaryFile:v15];

  v16 = *(a1 + 48);
  v17 = MCUserProfileRestrictionsFilePath();
  [v16 MCWriteToBinaryFile:v17];

  [*(a1 + 32) memberQueueCommitRestrictionsToDisk];
  v18 = [*(a1 + 32) memberQueueEffectiveUserSettings];
  v19 = [v18 MCDeepCopy];

  v20 = [*(a1 + 32) memberQueueRecomputeEffectiveUserSettingsWithCredentialSet:0];
  v21 = +[MCHacks sharedHacks];
  v22 = [*(a1 + 32) memberQueueEffectiveUserSettings];
  [v21 _applyServerSideChangesWithOldRestrictions:v3 newRestrictions:v12 oldEffectiveUserSettings:v19 newEffectiveUserSettings:v22];

  v23 = [*(a1 + 32) memberQueueSystemUserSettings];
  v24 = [v23 MCMutableDeepCopy];

  v25 = +[MCServerSideHacks sharedHacks];
  v26 = [*(a1 + 32) memberQueueEffectiveUserSettings];
  v27 = [v25 applyEffectiveSettings:v26 toSettings:v24 withOldRestrictions:v3 newRestrictions:v12];

  if (v20 && v27)
  {
    [*(a1 + 32) applyConfiguration:v24 toDomain:0 inNamespace:0 fromSender:*(a1 + 56)];
    [*(a1 + 32) memberQueueCommitUserSettingsToDisk];
  }

  if (v52 == 1)
  {
    MCSendRestrictionChangedNotification();
    if ([MCPasscodeManagerWriter didPasscodePolicyChangeWithOldRestrictions:v3 newRestrictions:v12])
    {
      [*(a1 + 32) memberQueueClearPasscodeHistoryIfNecessary];
      [*(a1 + 32) memberQueueClearRestrictionPasscodeComplianceCache];
      [*(a1 + 32) memberQueueClearProfileRestrictionPasscodeComplianceCache];
      MCSendPasscodePolicyChangedNotification();
    }

    if (*(a1 + 80))
    {
      v28 = MCFeatureAppLockBundleIDs;
      v29 = [*(a1 + 32) memberQueueEffectiveUserSettings];
      if (([MCRestrictionManagerWriter intersectedValuesSetting:v28 valueChangedBetweenOldSettings:v19 andNewSettings:v29]& 1) != 0)
      {
LABEL_16:

LABEL_17:
        **(a1 + 80) = 1;
        goto LABEL_18;
      }

      v30 = MCFeatureAppLockMultipleAppsAllowed;
      v31 = [*(a1 + 32) memberQueueEffectiveUserSettings];
      if (([MCRestrictionManagerWriter BOOLSetting:v30 valueChangedBetweenOldSettings:v19 andNewSettings:v31]& 1) != 0)
      {
LABEL_15:

        goto LABEL_16;
      }

      v48 = v31;
      v32 = MCFeatureAppLockAccessWithoutPasscodeAllowed;
      v33 = [*(a1 + 32) memberQueueEffectiveUserSettings];
      if (([MCRestrictionManagerWriter BOOLSetting:v32 valueChangedBetweenOldSettings:v19 andNewSettings:v33]& 1) != 0)
      {
LABEL_14:

        v31 = v48;
        goto LABEL_15;
      }

      v47 = v33;
      v34 = MCFeatureAppLockGrantSupervisorAccessForced;
      v35 = [*(a1 + 32) memberQueueEffectiveUserSettings];
      v36 = v34;
      v37 = v35;
      if (([MCRestrictionManagerWriter BOOLSetting:v36 valueChangedBetweenOldSettings:v19 andNewSettings:?]& 1) != 0)
      {

        goto LABEL_14;
      }

      v45 = MCFeatureAppLockLogoutAllowed;
      v44 = [*(a1 + 32) memberQueueEffectiveUserSettings];
      v46 = [MCRestrictionManagerWriter BOOLSetting:v45 valueChangedBetweenOldSettings:v19 andNewSettings:v44];

      if (v46)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v49)
  {
    v38 = [*(a1 + 32) memberQueuePasscodeCompliesWithProfileRestrictions];

    if (v38)
    {
      v39 = [*(a1 + 32) memberQueueCombinedSystemProfileRestrictions];
      if ([MCPasscodeManagerWriter didPasscodePolicyChangeWithOldRestrictions:v50 newRestrictions:v39])
      {
        [*(a1 + 32) memberQueueClearProfileRestrictionPasscodeComplianceCache];
      }
    }
  }

  v40 = *(a1 + 88);
  if (v40)
  {
    *v40 = v52;
  }

  v41 = *(a1 + 96);
  if (v41)
  {
    *v41 = v20;
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;

  v5 = v50;
LABEL_28:
  v42 = *(*(a1 + 72) + 8);
  v43 = *(v42 + 40);
  *(v42 + 40) = v13;
}

void sub_100079B60(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueUserClientRestrictions];
  v12 = [v2 MCMutableDeepCopy];

  v3 = [v12 objectForKeyedSubscript:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
LABEL_4:
    if ([*(a1 + 48) count])
    {
      v8 = *(a1 + 48);
    }

    else
    {
      v8 = 0;
    }

    [v5 setObject:v8 forKeyedSubscript:kMCClientRestrictionsUserInfo];
    if (v4)
    {
      v9 = [*(a1 + 32) memberQueueSystemClientRestrictions];
      v10 = v12;
    }

    else
    {
      v9 = v12;
      v10 = [*(a1 + 32) memberQueueUserClientRestrictions];
    }

    v11 = v10;
    [*(a1 + 32) memberQueueSetSystemClientRestrictions:v9 userClientRestrictions:v10 sender:*(a1 + 56) outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outError:0];

    goto LABEL_11;
  }

  v6 = [*(a1 + 32) memberQueueSystemClientRestrictions];
  v7 = [v6 MCMutableDeepCopy];

  v5 = [v7 objectForKeyedSubscript:*(a1 + 40)];
  v12 = v7;
  if (v5)
  {
    goto LABEL_4;
  }

LABEL_11:
}

void sub_10007A240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_10007A268(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = a1[10];
  obj = 0;
  v7 = [v2 memberQueueSetAllClientRestrictions:v3 sender:v4 outRestrictionsChanged:v5 outEffectiveSettingsChanged:v6 outError:&obj];
  v8 = obj;
  *(*(a1[7] + 8) + 24) = v7;
  objc_storeStrong((*(a1[8] + 8) + 40), v8);
}

void sub_10007A658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_10007A688(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    v2 = [qword_100136BD8 objectForKeyedSubscript:*(a1 + 32)];
    v3 = [v2 objectForKeyedSubscript:@"canOverrideRestrictions"];
    if (([v3 BOOLValue] & 1) == 0)
    {
      v27 = MCClientRestrictionsErrorDomain;
      v42 = *(a1 + 32);
      v28 = MCErrorArray();
      v9 = [NSError MCErrorWithDomain:v27 code:63000 descriptionArray:v28 errorType:MCErrorTypeFatal, v42, 0];

      goto LABEL_32;
    }

    v4 = [*(a1 + 40) memberQueueOverridingRestrictionClientUUID];
    if (v4)
    {
      v5 = *(a1 + 48);
      if (!MCEqualStrings())
      {
        v29 = MCClientRestrictionsErrorDomain;
        v30 = MCErrorArray();
        v9 = [NSError MCErrorWithDomain:v29 code:63001 descriptionArray:v30 errorType:MCErrorTypeFatal, 0];

LABEL_31:
        goto LABEL_32;
      }
    }
  }

  v2 = [*(a1 + 56) MCMutableDeepCopy];
  v6 = +[MCHacks sharedHacks];
  [v6 _applyHeuristicsToRestrictions:v2 forProfile:0 ignoresUnrestrictableApps:*(a1 + 128)];

  v41 = *(a1 + 64);
  v3 = MCLocalizedErrorFormatByDevice();
  v7 = +[MCDeviceCapabilities currentDevice];
  v46 = 0;
  v8 = [v7 validateCapabilitiesRequiredByRestrictions:v2 localizedIncompatibilityMessage:v3 outError:&v46];
  v9 = v46;

  if (v8)
  {
    v4 = [*(a1 + 40) memberQueueClientRestrictionsForClientUUID:*(a1 + 48)];
    v10 = [*(a1 + 40) memberQueueClientTypeForClientUUID:*(a1 + 48)];
    v11 = [*(a1 + 40) memberQueueOverridingRestrictionClientUUID];
    v12 = *(a1 + 128);
    v13 = *(a1 + 48);
    v14 = MCEqualStrings();
    if (sub_100016458(v4, v2) && (v15 = *(a1 + 32), MCEqualStrings()) && v12 == v14 || !(v4 | v10) && ![*(a1 + 56) count])
    {
      *(*(*(a1 + 96) + 8) + 24) = 1;
LABEL_30:

      goto LABEL_31;
    }

    v43 = v10;
    v16 = [*(a1 + 40) memberQueueSystemClientRestrictions];
    v17 = [v16 MCMutableDeepCopy];

    v18 = [*(a1 + 40) memberQueueUserClientRestrictions];
    v19 = [v18 MCMutableDeepCopy];

    if (*(a1 + 129))
    {
      v20 = v17;
    }

    else
    {
      v20 = v19;
    }

    v21 = v20;
    v44 = v21;
    if (![*(a1 + 56) count])
    {
      [v21 setObject:0 forKeyedSubscript:*(a1 + 48)];
      v31 = *(a1 + 48);
      if (MCEqualStrings())
      {
        [*(a1 + 40) setMemberQueueOverridingRestrictionClientUUID:0];
      }

      goto LABEL_27;
    }

    v47[0] = kMCClientRestrictionsTruth;
    v47[1] = kMCClientRestrictionsType;
    v22 = *(a1 + 32);
    v48[0] = v2;
    v48[1] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
    v24 = [v23 mutableCopy];

    [v24 setObject:*(a1 + 64) forKeyedSubscript:kMCClientRestrictionsLocalizedClientDescription];
    [v24 setObject:*(a1 + 72) forKeyedSubscript:kMCClientRestrictionsLocalizedWarning];
    [v24 setObject:*(a1 + 80) forKeyedSubscript:kMCClientRestrictionsAppsAndOptions];
    if (*(a1 + 128) == 1)
    {
      [v24 setObject:&__kCFBooleanTrue forKeyedSubscript:kMCClientRestrictionsOverrideRestrictions];
      v25 = *(a1 + 48);
      v26 = v44;
    }

    else
    {
      v32 = *(a1 + 48);
      v26 = v44;
      if (!MCEqualStrings())
      {
LABEL_26:
        [v26 setObject:v24 forKeyedSubscript:*(a1 + 48)];

LABEL_27:
        v33 = *(a1 + 40);
        v34 = *(a1 + 88);
        v35 = *(a1 + 112);
        v36 = *(a1 + 120);
        v45 = v9;
        v37 = [v33 memberQueueSetSystemClientRestrictions:v17 userClientRestrictions:v19 sender:v34 outRestrictionsChanged:v35 outEffectiveSettingsChanged:v36 outError:&v45];
        v38 = v45;

        *(*(*(a1 + 96) + 8) + 24) = v37;
        if ((*(*(*(a1 + 96) + 8) + 24) & 1) == 0)
        {
          [*(a1 + 40) setMemberQueueOverridingRestrictionClientUUID:v11];
        }

        v9 = v38;
        v10 = v43;
        goto LABEL_30;
      }

      v25 = 0;
    }

    [*(a1 + 40) setMemberQueueOverridingRestrictionClientUUID:v25];
    goto LABEL_26;
  }

LABEL_32:

  v39 = *(*(a1 + 104) + 8);
  v40 = *(v39 + 40);
  *(v39 + 40) = v9;
}

void sub_10007B53C(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) memberQueueSystemClientRestrictions];
  v3 = [v2 copy];

  v4 = [*(v1 + 32) orphanedClientUUIDsForClientRestrictionDictionary:v3];
  v5 = [*(v1 + 32) memberQueueUserClientRestrictions];
  v6 = [v5 copy];

  v7 = [*(v1 + 32) orphanedClientUUIDsForClientRestrictionDictionary:v6];
  if ([v4 count] || objc_msgSend(v7, "count"))
  {
    v39 = v4;
    v41 = v1;
    v42 = v7;
    v43 = v6;
    if ([v4 count])
    {
      v8 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v58 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found orphaned system client uuids %{public}@. Removing them", buf, 0xCu);
      }

      v44 = v3;
      v9 = [v3 MCMutableDeepCopy];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v10 = v4;
      v11 = [v10 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v52;
        v15 = kMCClientRestrictionsOverrideRestrictions;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v52 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v17 = *(*(&v51 + 1) + 8 * i);
            v18 = [v9 objectForKeyedSubscript:v15];
            v19 = [v18 BOOLValue];

            v13 |= v19;
            [v9 setObject:0 forKeyedSubscript:v17];
          }

          v12 = [v10 countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v12);
      }

      else
      {
        v13 = 0;
      }

      v3 = [v9 copy];
      v7 = v42;
      v6 = v43;
      v1 = v41;
    }

    else
    {
      v13 = 0;
    }

    if ([v7 count])
    {
      v20 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v58 = v7;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found orphaned user client uuids %{public}@. Removing them", buf, 0xCu);
      }

      v45 = v3;
      v21 = [v6 MCMutableDeepCopy];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v22 = v7;
      v23 = [v22 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v48;
        v26 = kMCClientRestrictionsOverrideRestrictions;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v48 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v47 + 1) + 8 * j);
            v29 = [v21 objectForKeyedSubscript:v26];
            v30 = [v29 BOOLValue];

            v13 |= v30;
            [v21 setObject:0 forKeyedSubscript:v28];
          }

          v24 = [v22 countByEnumeratingWithState:&v47 objects:v55 count:16];
        }

        while (v24);
      }

      v6 = [v21 copy];
      v3 = v45;
      v1 = v41;
      v7 = v42;
    }

    v31 = *(v1 + 32);
    v46 = 0;
    v32 = [v31 memberQueueSetSystemClientRestrictions:v3 userClientRestrictions:v6 sender:@"MCRestrictionManagerWriter.RemoveOrphanedClientRestrictions" outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outError:&v46];
    v33 = v46;
    if (v32)
    {
      if (v13)
      {
        v34 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          v35 = *(v1 + 32);
          v36 = v34;
          v37 = [v35 memberQueueOverridingRestrictionClientUUID];
          *buf = 138543362;
          v58 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Removing override client UUID %{public}@", buf, 0xCu);
        }

        [*(v1 + 32) setMemberQueueOverridingRestrictionClientUUID:0];
      }
    }

    else
    {
      v38 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v58 = v33;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to set new client restrictions. Error: %{public}@", buf, 0xCu);
      }
    }

    v4 = v40;
  }
}

void sub_10007BB30(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueRecomputePasscodeComplianceForClientUUID];
  if (!v2 || (v3 = v2, [*(a1 + 32) memberQueueRecomputePasscodeComplianceForClientUUID], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v3, v5))
  {
    [*(a1 + 32) memberQueueCacheClientRestrictionPasscodeCompliance];
  }

  v6 = [*(a1 + 32) memberQueueCheckPasscodeCompliesWithCurrentRestrictions];
  v7 = *(a1 + 40);
  if (v7)
  {
    *v7 = v6;
  }

  if (v6)
  {
    v8 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Current passcode complies with restrictions. Removing nag.", buf, 2u);
    }

    v9 = +[NSFileManager defaultManager];
    v10 = MCNagUIMetaFilePath();
    v11 = [v9 fileExistsAtPath:v10];

    v12 = +[NSFileManager defaultManager];
    if (!v11)
    {
      v23 = MCPasscodeNagKeepAliveFilePath();
      [v12 removeItemAtPath:v23 error:0];

      return;
    }

    v13 = MCNagUIMetaFilePath();
    [v12 removeItemAtPath:v13 error:0];

    v14 = +[NSFileManager defaultManager];
    v15 = MCPasscodeNagKeepAliveFilePath();
    [v14 removeItemAtPath:v15 error:0];

    goto LABEL_22;
  }

  v16 = *(a1 + 32);
  v38 = 0;
  v17 = [v16 memberQueueIsPasscodeComplianceMandatoryWithOutLocalizedWarning:&v38];
  v18 = v38;
  v19 = MCNagUIMetaFilePath();
  v20 = [NSMutableDictionary dictionaryWithContentsOfFile:v19];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = +[NSMutableDictionary dictionary];
  }

  v24 = v22;

  v25 = kMCNagMetaMandatoryKey;
  v26 = [v24 objectForKeyedSubscript:kMCNagMetaMandatoryKey];
  v27 = v26;
  if (v26 && v17 == [v26 BOOLValue])
  {
    v29 = 0;
  }

  else
  {
    v28 = [NSNumber numberWithBool:v17];
    [v24 setObject:v28 forKeyedSubscript:v25];

    v29 = 1;
  }

  [v24 setObject:v18 forKeyedSubscript:kMCNagMetaMessageKey];
  [v24 setObject:0 forKeyedSubscript:kMCNagMetaLastLockDateKey];
  v30 = +[NSLocale currentLocale];
  v31 = [v30 localeIdentifier];
  [v24 setObject:v31 forKeyedSubscript:kMCNagMetaLastLocaleKey];

  v32 = MCNagUIMetaFilePath();
  [v24 MCWriteToBinaryFile:v32];

  v33 = +[NSFileManager defaultManager];
  v34 = MCPasscodeNagKeepAliveFilePath();
  v35 = [v33 fileExistsAtPath:v34];

  if ((v35 & 1) == 0)
  {
    v36 = objc_opt_new();
    v37 = MCPasscodeNagKeepAliveFilePath();
    [v36 MCWriteToBinaryFile:v37];
  }

  if (v29)
  {
LABEL_22:
    MCSendPasscodeComplianceChangedNotification();
  }
}

void sub_10007D2C8(id a1)
{
  v1 = MCNagUIMetaFilePath();
  v3 = [NSMutableDictionary dictionaryWithContentsOfFile:v1];

  if (v3)
  {
    [v3 removeObjectForKey:kMCNagMetaLastLockDateKey];
    v2 = MCNagUIMetaFilePath();
    [v3 MCWriteToBinaryFile:v2];
  }
}

void sub_10007D410(uint64_t a1)
{
  v2 = MCNagUIMetaFilePath();
  v6 = [NSMutableDictionary dictionaryWithContentsOfFile:v2];

  v3 = v6;
  if (v6)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      [v6 setObject:v4 forKey:kMCNagMetaLastLockDateKey];
      v5 = MCNagUIMetaFilePath();
      [v6 MCWriteToBinaryFile:v5];

      v3 = v6;
    }
  }
}

void sub_10007E71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10007E734(uint64_t a1)
{
  result = [*(a1 + 32) memberQueueSetParametersForSettingsByType:*(a1 + 40) configurationUUID:*(a1 + 48) toSystem:*(a1 + 80) user:*(a1 + 81) credentialSet:*(a1 + 56) sender:*(a1 + 64)];
  *(*(*(a1 + 72) + 8) + 24) = result;
  return result;
}

void sub_10007EE94(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueSystemUserSettings];
  v6 = [v2 mutableCopy];

  v3 = MCRestrictedBoolKey;
  v4 = [v6 objectForKey:MCRestrictedBoolKey];
  v5 = [v4 mutableCopy];

  if (v5)
  {
    [v5 removeObjectForKey:*(a1 + 40)];
    [v6 setObject:v5 forKey:v3];
    [*(a1 + 32) applyConfiguration:v6 toDomain:0 inNamespace:0 fromSender:*(a1 + 48)];
    [*(a1 + 32) memberQueueCommitUserSettingsToDisk];
    [*(a1 + 32) memberQueueRecomputeEffectiveUserSettingsWithCredentialSet:0];
  }
}

void sub_10007F048(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueSystemUserSettings];
  v6 = [v2 mutableCopy];

  v3 = MCRestrictedValueKey;
  v4 = [v6 objectForKey:MCRestrictedValueKey];
  v5 = [v4 mutableCopy];

  if (v5)
  {
    [v5 removeObjectForKey:*(a1 + 40)];
    [v6 setObject:v5 forKey:v3];
    [*(a1 + 32) applyConfiguration:v6 toDomain:0 inNamespace:0 fromSender:*(a1 + 48)];
    [*(a1 + 32) memberQueueCommitUserSettingsToDisk];
    [*(a1 + 32) memberQueueRecomputeEffectiveUserSettingsWithCredentialSet:0];
  }
}

id sub_10007F1D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 defaultSettings];
  [v2 applyConfiguration:v3 toDomain:0 inNamespace:0 fromSender:*(a1 + 40)];

  [*(a1 + 32) memberQueueCommitUserSettingsToDisk];
  v4 = *(a1 + 32);

  return [v4 memberQueueRecomputeEffectiveUserSettingsWithCredentialSet:0];
}

void sub_10007F36C(uint64_t a1)
{
  v18 = 0;
  v2 = [*(a1 + 32) memberQueueRestrictions];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) memberQueueRestrictions];
  v5 = [*(a1 + 32) defaultRestrictions];
  v6 = [*(a1 + 32) memberQueueSystemProfileRestrictions];
  v7 = [*(a1 + 32) memberQueueUserProfileRestrictions];
  v8 = [*(a1 + 32) memberQueueSystemClientRestrictions];
  v9 = [*(a1 + 32) memberQueueUserClientRestrictions];
  v17 = 0;
  v10 = [MCRestrictionManagerWriter restrictionsWithCurrentRestrictions:v4 defaultRestrictions:v5 systemProfileRestrictions:v6 userProfileRestrictions:v7 systemClientRestrictions:v8 userClientRestrictions:v9 outRestrictionsChanged:&v18 outError:&v17];
  v11 = v17;

  if (v10)
  {
    [*(a1 + 32) applyConfiguration:v10 toDomain:5 inNamespace:0 fromSender:@"MCRestrictionManagerWriter.RecomputeUserRestrictions"];
    [*(a1 + 32) memberQueueCommitRestrictionsToDisk];
    v12 = [*(a1 + 32) memberQueueEffectiveUserSettings];
    v13 = [v12 MCDeepCopy];

    [*(a1 + 32) memberQueueRecomputeEffectiveUserSettingsWithCredentialSet:0];
    v14 = +[MCHacks sharedHacks];
    v15 = [*(a1 + 32) memberQueueEffectiveUserSettings];
    [v14 _applyServerSideChangesWithOldRestrictions:v3 newRestrictions:v10 oldEffectiveUserSettings:v13 newEffectiveUserSettings:v15];

    if (v18 == 1)
    {
      MCSendRestrictionChangedNotification();
      if ([MCPasscodeManagerWriter didPasscodePolicyChangeWithOldRestrictions:v3 newRestrictions:v10])
      {
        [*(a1 + 32) memberQueueClearPasscodeHistoryIfNecessary];
        [*(a1 + 32) memberQueueClearAllPasscodeComplianceCaches];
        MCSendPasscodePolicyChangedNotification();
      }
    }
  }

  else
  {
    v16 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Failed to recompute user restrictions. Error: %{public}@", buf, 0xCu);
    }
  }
}

void sub_10007F7A8(id a1)
{
  v1 = +[MCClientTypeLoaders clientTypeLoaders];
  v2 = qword_100136BD8;
  qword_100136BD8 = v1;

  qword_100136BE8 = CFDictionaryCreateMutable(kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
  qword_100136BF0 = CFDictionaryCreateMutable(kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
  qword_100136BF8 = CFDictionaryCreateMutable(kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
  v35 = +[NSMutableSet set];
  v34 = +[NSMutableSet set];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = qword_100136BD8;
  v38 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v38)
  {
    v37 = *v40;
    *&v3 = 138543874;
    v33 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v40 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v39 + 1) + 8 * v4);
        v6 = [qword_100136BD8 objectForKey:{v5, v33}];
        v7 = [v6 objectForKey:@"bundlePath"];
        v8 = [v6 objectForKey:@"loaderClass"];
        v9 = [v6 objectForKey:@"loaderSelector"];
        v10 = [v6 objectForKey:@"recomputeComplianceSelector"];
        v11 = [v6 objectForKey:@"neverOrphanCheck"];
        v12 = [v6 objectForKey:@"orphanCheckMayFail"];
        if (v11 && [v11 BOOLValue])
        {
          v13 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v44 = v5;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Client type %{public}@ is denoted as never orphan check. Skipping client loader.", buf, 0xCu);
          }

          [v35 addObject:v5];
        }

        else
        {
          if (v7)
          {
            v14 = v8 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (v14 || v9 == 0)
          {
            v16 = _MCLogObjects[0];
            if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_29;
            }

            *buf = 138543618;
            v44 = v5;
            v45 = 2114;
            v46 = v6;
            v17 = v16;
            v18 = OS_LOG_TYPE_ERROR;
            v19 = "Could not find a client type loader for client type %{public}@. Found a loader dict of %{public}@";
LABEL_21:
            v20 = 22;
LABEL_28:
            _os_log_impl(&_mh_execute_header, v17, v18, v19, buf, v20);
            goto LABEL_29;
          }

          if (!dlopen([(NSString *)v7 cStringUsingEncoding:1], 2))
          {
            v23 = _MCLogObjects[0];
            if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_29;
            }

            *buf = 138543362;
            v44 = v7;
            v17 = v23;
            v18 = OS_LOG_TYPE_ERROR;
            v19 = "Could not find a bundle at %{public}@";
            v20 = 12;
            goto LABEL_28;
          }

          v21 = NSClassFromString(v8);
          if (v21)
          {
            CFDictionarySetValue(qword_100136BE8, v5, v21);
            v22 = NSSelectorFromString(v9);
            if (v22)
            {
              CFDictionarySetValue(qword_100136BF0, v5, v22);
            }

            else
            {
              v25 = _MCLogObjects[0];
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
              {
                *buf = v33;
                v44 = v7;
                v45 = 2114;
                v46 = v9;
                v47 = 2114;
                v48 = v8;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Bundle at path %{public}@ does not have selector %{public}@ for class %{public}@.", buf, 0x20u);
              }
            }

            if (v12 && [v12 BOOLValue])
            {
              [v34 addObject:v5];
            }

            if (v10)
            {
              v26 = NSSelectorFromString(v10);
              if (v26)
              {
                CFDictionarySetValue(qword_100136BF8, v5, v26);
              }

              else
              {
                v27 = _MCLogObjects[0];
                if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
                {
                  *buf = v33;
                  v44 = v7;
                  v45 = 2114;
                  v46 = v10;
                  v47 = 2114;
                  v48 = v8;
                  v17 = v27;
                  v18 = OS_LOG_TYPE_INFO;
                  v19 = "Bundle at path %{public}@ does not have selector %{public}@ for class %{public}@.";
                  v20 = 32;
                  goto LABEL_28;
                }
              }
            }
          }

          else
          {
            v24 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v44 = v8;
              v45 = 2114;
              v46 = v7;
              v17 = v24;
              v18 = OS_LOG_TYPE_ERROR;
              v19 = "Could not find class %{public}@ in bundle at path %{public}@";
              goto LABEL_21;
            }
          }
        }

LABEL_29:

        v4 = v4 + 1;
      }

      while (v38 != v4);
      v28 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
      v38 = v28;
    }

    while (v28);
  }

  v29 = [v35 copy];
  v30 = qword_100136BE0;
  qword_100136BE0 = v29;

  v31 = [v34 copy];
  v32 = qword_100136C00;
  qword_100136C00 = v31;
}

void sub_10007FDE8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100136C10;
  qword_100136C10 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100080884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008089C(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _isCloudConfigurationActuallyAvailable];
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v9 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "This device must be configured using DEP.", v11, 2u);
      }
    }
  }

  else
  {
    v10 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not retrieve DEP configuration.", buf, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_10008146C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100081484(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [NSString stringWithFormat:@"%@ value is not a %@", v6, v7];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t sub_100081548(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = (*(v2 + 16))(v2, v3, v4, @"BOOLean");

  return v5;
}

uint64_t sub_1000815B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = (*(v2 + 16))(v2, v3, v4, @"number");

  return v5;
}

uint64_t sub_100081620(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = (*(v2 + 16))(v2, v3, v4, @"string");

  return v5;
}

uint64_t sub_10008168C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v19 = [NSString stringWithFormat:@"%@ value is not an array", v6];
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v15 = 0;
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v16 = [NSString stringWithFormat:@"%@ element is not a %@", v6, v7, v23];
            v17 = *(*(a1 + 40) + 8);
            v18 = *(v17 + 40);
            *(v17 + 40) = v16;

            v15 = 0;
            goto LABEL_13;
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = 1;
LABEL_13:
  }

  return v15;
}

uint64_t sub_100081860(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = (*(v2 + 16))(v2, v3, v4, @"data");

  return v5;
}

uint64_t sub_1000818CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = (*(v2 + 16))(v2, v3, v4, @"string");

  return v5;
}

void sub_1000825EC(void *a1)
{
  v2 = a1;
  v1 = v2;
  AnalyticsSendEventLazy();
}

id sub_100082680(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [MCProfileAnalyticsHelper addContainsPayloadInfoWithProfile:*(a1 + 32) eventPayload:v2];

  return v2;
}

void sub_1000826D8(void *a1)
{
  v2 = a1;
  v1 = v2;
  AnalyticsSendEventLazy();
}

id sub_100082774(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [MCProfileAnalyticsHelper addContainsPayloadInfoWithProfile:*(a1 + 32) eventPayload:v2];
  v3 = [NSNumber numberWithInt:*(a1 + 40)];
  [v2 setObject:v3 forKeyedSubscript:@"exitReason"];

  return v2;
}

void sub_100082A58(id a1)
{
  v3[0] = kMCEASAccountPayloadType;
  v3[1] = kMCEmailAccountPayloadType;
  v4[0] = @"profile_containsPayload_mailAccount";
  v4[1] = @"profile_containsPayload_mailAccount";
  v3[2] = kMCGmailAccountLegacyPayloadType;
  v3[3] = kMCGmailAccountPayloadType;
  v4[2] = @"profile_containsPayload_mailAccount";
  v4[3] = @"profile_containsPayload_mailAccount";
  v3[4] = kMCMDMPayloadType;
  v3[5] = kMCPasswordPolicyPayloadType;
  v4[4] = @"profile_containsPayload_mdm";
  v4[5] = @"profile_containsPayload_passwordPolicy";
  v3[6] = kMCRestrictionsPayloadType;
  v4[6] = @"profile_containsPayload_restrictions";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:7];
  v2 = qword_100136C20;
  qword_100136C20 = v1;
}

void sub_100084150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100084168(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100084180(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = 24005;
  }

  else
  {
    if (a2 != 2)
    {
      goto LABEL_6;
    }

    v3 = 24007;
  }

  v4 = MCOTAProfilesErrorDomain;
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v4 code:v3 descriptionArray:v5 errorType:MCErrorTypeFatal, 0];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

LABEL_6:
  v9 = *(a1 + 32);

  return [v9 complete];
}

void sub_100084310(id a1)
{
  v1 = +[ACAccountStore defaultStore];
  v2 = qword_100136C30;
  qword_100136C30 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100084774(uint64_t a1)
{
  v2 = [*(a1 + 32) accountStore];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100084820;
  v4[3] = &unk_10011CAE8;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 removeAccount:v3 withCompletionHandler:v4];
}

void sub_100084820(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Couldn't remove the account: %{public}@", &v6, 0xCu);
    }
  }
}

void sub_100088DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100088DF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100088E10(uint64_t a1)
{
  v2 = [*(a1 + 32) _installWithAccountDictionary:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1000893B8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _MCLogObjects[0];
  v7 = os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v13 = 138543362;
      v14 = v8;
      v9 = "Removed Google account %{public}@";
      v10 = v6;
      v11 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v9, &v13, v11);
    }
  }

  else if (v7)
  {
    v12 = *(a1 + 32);
    v13 = 138543618;
    v14 = v12;
    v15 = 2114;
    v16 = v5;
    v9 = "Failed to remove Google account %{public}@ with error: %{public}@";
    v10 = v6;
    v11 = 22;
    goto LABEL_6;
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_100089FB8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MISProvisioningProfileGetName();
  v4 = MISProvisioningProfileGetUUID();
  v5 = MISProvisioningProfileGetExpirationDate();
  v6 = v5;
  if (v5 && ([v5 earlierDate:*(a1 + 32)], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v6))
  {
    v10 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Provisioning profile “%{public}@” has expired and will be removed.", &v12, 0xCu);
    }

    [*(a1 + 40) addObject:v4];
  }

  else
  {
    v8 = *(a1 + 48);
    if (!MISProvisioningProfileIncludesDevice())
    {
      v9 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Provisioning profile “%{public}@” is not valid for this device and will be removed.", &v12, 0xCu);
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  return 1;
}

void sub_10008A464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008A4A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10008A4B8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MISProvisioningProfileGetExpirationDate();
  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  if (!*(v5 + 40))
  {
    goto LABEL_5;
  }

  if (v3)
  {
    v6 = [v3 earlierDate:?];

    if (v6 == v4)
    {
      v5 = *(*(a1 + 32) + 8);
LABEL_5:
      objc_storeStrong((v5 + 40), v4);
    }
  }

  objc_autoreleasePoolPop(v2);
  return 1;
}

void sub_100090454(id a1)
{
  v4 = MCNewsBundleIdentifier;
  v1 = MCNewsServicesFrameworkPath();
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = qword_100136C40;
  qword_100136C40 = v2;
}

uint64_t sub_10009145C(uint64_t a1)
{
  result = lockdown_connect();
  if (result)
  {
    v3 = result;
    v4 = &kCFBooleanFalse;
    if (!*(a1 + 32))
    {
      v4 = &kCFBooleanTrue;
    }

    v5 = *v4;
    lockdown_set_value();

    return _lockdown_disconnect(v3);
  }

  return result;
}

uint64_t sub_1000914E4(uint64_t a1)
{
  result = lockdown_connect();
  if (result)
  {
    v3 = result;
    v4 = &kCFBooleanFalse;
    if (!*(a1 + 32))
    {
      v4 = &kCFBooleanTrue;
    }

    v5 = *v4;
    lockdown_set_value();

    return _lockdown_disconnect(v3);
  }

  return result;
}

void sub_100091570(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not save account. Error: %{public}@", &v6, 0xCu);
    }
  }
}

void sub_100094F5C(id a1)
{
  v1 = dispatch_queue_create("MCKeybagUnlockAssertion serialization queue", 0);
  v2 = qword_100136C50;
  qword_100136C50 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100094FE4(id a1)
{
  if (byte_100136C60 == 1)
  {
    v1 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(keys[0]) = 0;
    v2 = "Attempting to recursively hold keybag unlock assertion. Ignoring.";
    v3 = keys;
    v4 = v1;
    v5 = OS_LOG_TYPE_ERROR;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v4, v5, v2, v3, 2u);
    return;
  }

  cf = 0;
  valuePtr = 600;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *keys = *&off_10011CF08;
  values[0] = @"RemoteProfile";
  values[1] = v6;
  v7 = CFDictionaryCreate(0, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  qword_100136C68 = MKBDeviceLockAssertion();
  CFRelease(v7);
  CFRelease(v6);
  if (qword_100136C68)
  {
    byte_100136C60 = 1;
    v8 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v2 = "Holding keybag unlock assertion.";
    v3 = buf;
    v4 = v8;
    v5 = OS_LOG_TYPE_INFO;
    goto LABEL_7;
  }

  v9 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = cf;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not hold keybag lock assertion. Error: %{public}@", buf, 0xCu);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_100095210(id a1)
{
  if (byte_100136C60 == 1)
  {
    v1 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Releasing keybag unlock assertion.", v2, 2u);
    }

    CFRelease(qword_100136C68);
    qword_100136C68 = 0;
    byte_100136C60 = 0;
  }
}

uint64_t sub_100095A0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          v13 = [v5 UUID];
          v14 = [v12 UUID];
          v15 = [v13 isEqualToString:v14];

          if (v15)
          {
            v16 = 0;
            goto LABEL_12;
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v16 = 1;
LABEL_12:
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

uint64_t sub_100097980(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100097998(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyCertificateWithPayloadUUID:*(a1 + 40) intoKeychainAccessGroup:*(a1 + 48) personaID:*(a1 + 56)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

id sub_100098638(uint64_t a1)
{
  v13[0] = @"isClearingPasscode";
  v2 = [NSNumber numberWithBool:*(a1 + 56)];
  v14[0] = v2;
  v13[1] = @"newPasscodeUnlockScreenType";
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
  v14[1] = v3;
  v13[2] = @"newPasscodeSimpleType";
  v4 = [NSNumber numberWithInt:*(a1 + 52)];
  v14[2] = v4;
  v13[3] = @"oldPasscodeExists";
  v5 = [NSNumber numberWithBool:*(a1 + 57)];
  v14[3] = v5;
  v13[4] = @"passcodeChangeType";
  v6 = [NSNumber numberWithInteger:*(a1 + 40)];
  v14[4] = v6;
  v13[5] = @"passcodeRecoveryRestricted";
  v7 = [NSNumber numberWithBool:*(a1 + 58)];
  v14[5] = v7;
  v13[6] = @"passcodeRecoverySupported";
  v8 = [NSNumber numberWithBool:*(a1 + 59)];
  v14[6] = v8;
  v13[7] = @"recoverySkipped";
  v9 = [NSNumber numberWithBool:*(a1 + 60)];
  v13[8] = @"senderBundleID";
  v10 = *(a1 + 32);
  v14[7] = v9;
  v14[8] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:9];

  return v11;
}

id sub_1000988A8(uint64_t a1)
{
  v4 = @"clearReason";
  v1 = [NSNumber numberWithInteger:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

uint64_t sub_100099BD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v26 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v25 + 1) + 8 * v8);
      v10 = [v3 identifier];
      v11 = [v9 identifier];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_18;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 40);
  v13 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = *v22;
LABEL_11:
    v15 = 0;
    while (1)
    {
      if (*v22 != v14)
      {
        objc_enumerationMutation(v4);
      }

      v16 = *(*(&v21 + 1) + 8 * v15);
      v17 = [v3 identifier];
      v18 = [v16 identifier];
      v19 = [v17 isEqual:v18];

      if (v19)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v13)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    v13 = 1;
  }

LABEL_19:

  return v13;
}

void sub_100099FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009A010(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009A028(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10009A7D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _MCLogObjects[2];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to remove application with bundle ID: %{public}@, error: %{public}@", &v10, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
  }
}

id sub_10009A950(uint64_t a1)
{
  v10[0] = @"autoPermitList_changed";
  v2 = [NSNumber numberWithBool:*(a1 + 56)];
  v11[0] = v2;
  v10[1] = @"autoPermitList_count";
  v3 = [NSNumber numberWithUnsignedLong:*(a1 + 32)];
  v11[1] = v3;
  v10[2] = @"blacklist_changed";
  v4 = [NSNumber numberWithBool:*(a1 + 57)];
  v11[2] = v4;
  v10[3] = @"blacklist_count";
  v5 = [NSNumber numberWithUnsignedLong:*(a1 + 40)];
  v11[3] = v5;
  v10[4] = @"whitelist_changed";
  v6 = [NSNumber numberWithBool:*(a1 + 58)];
  v11[4] = v6;
  v10[5] = @"whitelist_count";
  v7 = [NSNumber numberWithUnsignedLong:*(a1 + 48)];
  v11[5] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

id sub_10009AB6C(unsigned __int8 *a1)
{
  v10[0] = @"autoFilter_changed";
  v2 = [NSNumber numberWithBool:a1[32]];
  v11[0] = v2;
  v10[1] = @"autoFilter_enabled";
  v3 = [NSNumber numberWithBool:a1[33]];
  v11[1] = v3;
  v10[2] = @"restrictWeb_changed";
  v4 = [NSNumber numberWithBool:a1[34]];
  v11[2] = v4;
  v10[3] = @"restrictWeb_enabled";
  v5 = [NSNumber numberWithBool:a1[35]];
  v11[3] = v5;
  v10[4] = @"whitelist_changed";
  v6 = [NSNumber numberWithBool:a1[36]];
  v11[4] = v6;
  v10[5] = @"whitelist_enabled";
  v7 = [NSNumber numberWithBool:a1[37]];
  v11[5] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

uint64_t sub_10009AD00()
{
  v0 = MAERecertifyDeviceWithError();
  v1 = 0;
  v2 = _MCLogObjects[0];
  if (v0)
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "Recertification succeeded.";
      v4 = v2;
      v5 = OS_LOG_TYPE_DEFAULT;
      v6 = 2;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, v5, v3, buf, v6);
    }
  }

  else if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v9 = v1;
    v3 = "Recertification failed: %{public}@";
    v4 = v2;
    v5 = OS_LOG_TYPE_ERROR;
    v6 = 12;
    goto LABEL_6;
  }

  return v0;
}

uint64_t sub_10009D944(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009D95C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009DA2C;
  v6[3] = &unk_10011D0C8;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v5 = *(a1 + 64);
  v4 = v5;
  v9 = v5;
  [v2 insertAccountType:v3 withCompletionHandler:v6];
}

void sub_10009DA2C(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    [*(a1 + 32) setAccountTypeGUID:*(a1 + 40)];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10009DAAC(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009DBA4;
  block[3] = &unk_10011D118;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v4 = *(a1 + 56);
  v3 = v4;
  v9 = v4;
  dispatch_async(v2, block);

  dispatch_semaphore_wait(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL);
}

void sub_10009DBA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009DC74;
  v6[3] = &unk_10011D0C8;
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v5 = *(a1 + 56);
  v4 = v5;
  v9 = v5;
  [v2 saveVerifiedAccount:v3 withCompletionHandler:v6];
}

void sub_10009DC74(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (a2)
  {
    v6 = [*(a1 + 40) identifier];
    [*(a1 + 32) setAccountGUID:v6];
  }

  else
  {
    v7 = *(*(a1 + 56) + 8);
    v8 = v5;
    v6 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10009DD08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009DD98;
  v3[3] = &unk_10011CAE8;
  v4 = *(a1 + 48);
  [v1 removeAccount:v2 withCompletionHandler:v3];
}

void sub_10009DD98(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _MCLogObjects[0];
  if (a2)
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      v7 = "Rolled back Kerberos account.";
      v8 = v6;
      v9 = OS_LOG_TYPE_INFO;
      v10 = 2;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v11, v10);
    }
  }

  else if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v11 = 138543362;
    v12 = v5;
    v7 = "Warning: unable to remove Kerberos account while rolling back installation. Error: %{public}@";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 12;
    goto LABEL_6;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10009DE94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009DF24;
  v3[3] = &unk_10011CAE8;
  v4 = *(a1 + 48);
  [v1 removeAccountType:v2 withCompletionHandler:v3];
}

void sub_10009DF24(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _MCLogObjects[0];
  if (a2)
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      v7 = "Rolled back Kerberos account type.";
      v8 = v6;
      v9 = OS_LOG_TYPE_INFO;
      v10 = 2;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v11, v10);
    }
  }

  else if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v11 = 138543362;
    v12 = v5;
    v7 = "Warning: unable to remove Kerberos account type while rolling back installation. Error: %{public}@";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 12;
    goto LABEL_6;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10009E5F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009E6A0;
  v4[3] = &unk_10011C908;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 removeAccount:v3 withCompletionHandler:v4];
}

void sub_10009E6A0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _MCLogObjects[0];
  if (a2)
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Remove SSO payload: account removal complete", &v10, 2u);
    }
  }

  else if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 humanReadableName];
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Warning: Failed to remove Kerberos account for “%{public}@”. Ignoring. Error: %{public}@", &v10, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10009E7D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009E880;
  v4[3] = &unk_10011C908;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 removeAccountType:v3 withCompletionHandler:v4];
}

void sub_10009E880(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _MCLogObjects[0];
  if (a2)
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Remove SSO payload: account type removal complete", &v10, 2u);
    }
  }

  else if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 humanReadableName];
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Warning: Failed to remove Kerberos account type for “%{public}@”. Ignoring. Error: %{public}@", &v10, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_10009F7D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10009F7E8(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyCertificateWithPayloadUUID:*(a1 + 40) intoKeychainAccessGroup:*(a1 + 48) personaID:*(a1 + 56)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

uint64_t sub_1000A1218()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v13 - v7;
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  URL.init(fileURLWithPath:isDirectory:)();
  URL.appendingPathComponent(_:isDirectory:)();
  v11 = *(v1 + 8);
  v11(v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  v11(v8, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (v11)(v10, v0);
}

uint64_t sub_1000A13EC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000A1428()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000A147C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000A14F8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000A1570(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000A15F0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000A1634(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1000A16BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000A1704(uint64_t a1)
{
  v2 = sub_1000A1958(&qword_1001367B0);
  v3 = sub_1000A1958(&qword_1001367B8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void sub_1000A17C4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t type metadata accessor for SynchronizerLocations()
{
  result = qword_100136760;
  if (!qword_100136760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A1884()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000A1958(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Name(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000A19D8(void *a1)
{
  v2 = sub_1000A4C88();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyExternalIntelligenceIntegrations settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B43A0(&v9);

    sub_1000A24EC(&v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000A1B40(void *a1)
{
  v2 = sub_1000A4DEC();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyGenmoji settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B43A0(v9);

    sub_1000A24EC(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000A1CA8(void *a1)
{
  v2 = sub_1000A4F50();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyImagePlayground settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B43A0(v9);

    sub_1000A24EC(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000A1E10(void *a1)
{
  v2 = sub_1000A50B4();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyImageWand settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B43A0(v9);

    sub_1000A24EC(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000A1F78(void *a1)
{
  v2 = sub_1000A5218();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyWritingTools settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B43A0(v9);

    sub_1000A24EC(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

uint64_t sub_1000A20E0()
{
  v0 = [objc_allocWithZone(NSMutableDictionary) init];
  sub_1000A19D8(v0);
  sub_1000A1B40(v0);
  sub_1000A1CA8(v0);
  sub_1000A1E10(v0);
  sub_1000A1F78(v0);
  v1 = v0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000A21D4(uint64_t a1, void *a2)
{
  if (qword_1001366C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000A2468(v4, qword_100136A28);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Applying effective intelligence settings", v7, 2u);
  }

  v8 = sub_1000A20E0();
  if (*(v8 + 16))
  {
    sub_1000B3940(v8, a1, a2);
  }

  else
  {

    sub_1000B3940(0, a1, a2);
  }
}

uint64_t sub_1000A2468(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000A24A0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_1000A2540(void *a1)
{
  v2 = sub_1000A537C();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying lockFindMyFriends settings: %{BOOL,public}d", v7, 8u);
    }

    v8 = [objc_opt_self() findMyFriendsModificationAllowed];
    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();

      v8 = v9;
    }

    v10 = v8;
    [a1 MCSetBoolRestriction:? value:?];
  }
}

void sub_1000A26E0()
{
  if (qword_1001366C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000A2468(v0, qword_100136A28);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Applying effective Find My settings", v3, 2u);
  }

  v4 = [objc_allocWithZone(NSMutableDictionary) init];
  sub_1000A2540(v4);
  v5 = v4;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000A2A20(void *a1)
{
  v2 = sub_1000A54E0();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyAirDrop settings: %{BOOL,public}d", v7, 8u);
    }

    v8 = [objc_opt_self() airDropAllowed];
    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();

      v8 = v9;
    }

    v10 = v8;
    [a1 MCSetBoolRestriction:? value:?];
  }
}

void sub_1000A2BC0()
{
  if (qword_1001366C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000A2468(v0, qword_100136A28);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Applying effective Air Drop settings", v3, 2u);
  }

  v4 = [objc_allocWithZone(NSMutableDictionary) init];
  sub_1000A2A20(v4);
  v5 = v4;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000A2F00()
{
  v0 = type metadata accessor for Logger();
  sub_1000A2F80(v0, qword_100136A28);
  sub_1000A2468(v0, qword_100136A28);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_1000A2F80(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_1000A2FE4(void *a1)
{
  v2 = sub_1000A5644();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyBookstore settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4698(&v9);

    sub_1000A461C(&v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000A314C(void *a1)
{
  v2 = sub_1000A57A8();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyBookstoreErotica settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4698(v9);

    sub_1000A461C(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000A32B4(void *a1)
{
  v2 = sub_1000A590C();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyExplicitContent settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4698(v9);

    sub_1000A461C(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000A341C(void *a1)
{
  v2 = sub_1000A5A70();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyiTunes settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4698(v9);

    sub_1000A461C(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000A3584(void *a1)
{
  v2 = sub_1000A5BD4();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyMediaPurchase setting: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4698(v9);

    sub_1000A461C(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000A36EC(void *a1)
{
  v2 = sub_1000A5D38();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyMusicArtistActivity settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4698(v9);

    sub_1000A461C(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000A3854(void *a1)
{
  v2 = sub_1000A5E9C();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyMusicService settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4698(v9);

    sub_1000A461C(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000A39BC(void *a1)
{
  v2 = sub_1000A6000();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyMusicVideos settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4698(v9);

    sub_1000A461C(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000A3B24(void *a1)
{
  v2 = sub_1000A6164();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyPodcasts setting: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4698(v9);

    sub_1000A461C(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000A3C8C(void *a1)
{
  v2 = sub_1000A62C8();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying lockSpeakerVolumeLimit settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4698(v9);

    sub_1000A461C(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000A3DF4(void *a1)
{
  v2 = sub_1000A642C();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying lockTVProvider settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4698(v9);

    sub_1000A461C(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000A3F5C(void *a1)
{
  v2 = sub_1000A6590();
  if (v2 != v3)
  {
    v4 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000A2468(v5, qword_100136A28);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134349056;
      *(v8 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v6, v7, "Applying maximumMovieRating settings: %{public}ld", v8, 0xCu);
    }

    sub_1000B4698(v11);

    sub_1000A461C(v11);
    v9 = String._bridgeToObjectiveC()();

    v10 = [objc_allocWithZone(NSNumber) initWithInteger:v4];
    [a1 MCSetValueRestriction:v9 value:v10];
  }
}

void sub_1000A40D8(void *a1)
{
  v2 = sub_1000A66EC();
  if (v2 != v3)
  {
    v4 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000A2468(v5, qword_100136A28);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134349056;
      *(v8 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v6, v7, "Applying maximumTVShowRating settings: %{public}ld", v8, 0xCu);
    }

    sub_1000B4698(v11);

    sub_1000A461C(v11);
    v9 = String._bridgeToObjectiveC()();

    v10 = [objc_allocWithZone(NSNumber) initWithInteger:v4];
    [a1 MCSetValueRestriction:v9 value:v10];
  }
}

uint64_t sub_1000A4254()
{
  v0 = [objc_allocWithZone(NSMutableDictionary) init];
  sub_1000A2FE4(v0);
  sub_1000A314C(v0);
  sub_1000A32B4(v0);
  sub_1000A341C(v0);
  sub_1000A3584(v0);
  sub_1000A36EC(v0);
  sub_1000A3854(v0);
  sub_1000A39BC(v0);
  sub_1000A3B24(v0);
  sub_1000A3C8C(v0);
  sub_1000A3DF4(v0);
  sub_1000A3F5C(v0);
  sub_1000A40D8(v0);
  v1 = v0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000A4388(uint64_t a1, void *a2)
{
  if (qword_1001366C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000A2468(v4, qword_100136A28);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Applying effective media settings", v7, 2u);
  }

  v8 = sub_1000A4254();
  if (*(v8 + 16))
  {
    sub_1000B3940(v8, a1, a2);
  }

  else
  {

    sub_1000B3940(0, a1, a2);
  }
}

id sub_1000A4670()
{
  result = [objc_allocWithZone(MOEffectiveSettingsStore) init];
  qword_1001367C0 = result;
  return result;
}

void sub_1000A46CC(void *a1@<X8>)
{
  a1[3] = &type metadata for EffectiveManagedSettings.SupportedAccountSettings;
  a1[4] = &off_10011D8F8;
  a1[8] = &type metadata for EffectiveManagedSettings.SupportedAirDropSettings;
  a1[9] = &off_10011D8E8;
  a1[13] = &type metadata for EffectiveManagedSettings.SupportedAllowedClientSettings;
  a1[14] = &off_10011D8D8;
  a1[18] = &type metadata for EffectiveManagedSettings.SupportedApplicationSettings;
  a1[19] = &off_10011D8A0;
  a1[23] = &type metadata for EffectiveManagedSettings.SupportedAppStoreSettings;
  a1[24] = &off_10011D868;
  a1[28] = &type metadata for EffectiveManagedSettings.SupportedCalculatorSettings;
  a1[29] = &off_10011D828;
  a1[33] = &type metadata for EffectiveManagedSettings.SupportedCameraSettings;
  a1[34] = &off_10011D810;
  a1[38] = &type metadata for EffectiveManagedSettings.SupportedCarPlaySettings;
  a1[39] = &off_10011D800;
  a1[43] = &type metadata for EffectiveManagedSettings.SupportedCellularSettings;
  a1[44] = &off_10011D7E0;
  a1[48] = &type metadata for EffectiveManagedSettings.SupportedDateAndTimeSettings;
  a1[49] = &off_10011D7D0;
  a1[53] = &type metadata for EffectiveManagedSettings.SupportedFaceTimeSettings;
  a1[54] = &off_10011D7B8;
  a1[58] = &type metadata for EffectiveManagedSettings.SupportedFindMySettings;
  a1[59] = &off_10011D7A8;
  a1[63] = &type metadata for EffectiveManagedSettings.SupportedGameCenterSettings;
  a1[64] = &off_10011D758;
  a1[68] = &type metadata for EffectiveManagedSettings.SupportedIntelligenceSettings;
  a1[69] = &off_10011D728;
  a1[73] = &type metadata for EffectiveManagedSettings.SupportedKeyboardSettings;
  a1[74] = &off_10011D710;
  a1[78] = &type metadata for EffectiveManagedSettings.SupportedMediaSettings;
  a1[79] = &off_10011D6A0;
  a1[83] = &type metadata for EffectiveManagedSettings.SupportedMessagesSettings;
  a1[84] = &off_10011D690;
  a1[88] = &type metadata for EffectiveManagedSettings.SupportedNewsSettings;
  a1[89] = &off_10011D680;
  a1[93] = &type metadata for EffectiveManagedSettings.SupportedNotificationSettings;
  a1[94] = &off_10011D670;
  a1[98] = &type metadata for EffectiveManagedSettings.SupportedPasscodeSettings;
  a1[99] = &off_10011D660;
  a1[103] = &type metadata for EffectiveManagedSettings.SupportedPrivacySettings;
  a1[104] = &off_10011D650;
  a1[108] = &type metadata for EffectiveManagedSettings.SupportedSafariSettings;
  a1[109] = &off_10011D600;
  a1[113] = &type metadata for EffectiveManagedSettings.SupportedSiriSettings;
  a1[114] = &off_10011D5E0;
  a1[118] = &type metadata for EffectiveManagedSettings.SupportedWebContentSettings;
  a1[119] = &off_10011D5D0;
}

void sub_1000A48DC(uint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, SEL *a5)
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000AC8B8(0, a2, a3);
    sub_1000AC900(a4, a2, a3);
    Set.Iterator.init(_cocoa:)();
    v6 = v31;
    v10 = v32;
    v12 = v33;
    v11 = v34;
    v13 = v35;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v12 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v11 = 0;
  }

  v28 = _swiftEmptyArrayStorage;
  while (v6 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000AC8B8(0, a2, a3), swift_dynamicCast(), (v19 = v36) == 0))
    {
LABEL_24:
      sub_1000A74B8();
      return;
    }

LABEL_17:
    v20 = [v19 *a5];
    if (v20)
    {
      v21 = v20;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1000A4B7C(0, *(v28 + 2) + 1, 1, v28);
      }

      v25 = *(v28 + 2);
      v24 = *(v28 + 3);
      if (v25 >= v24 >> 1)
      {
        v28 = sub_1000A4B7C((v24 > 1), v25 + 1, 1, v28);
      }

      *(v28 + 2) = v25 + 1;
      v26 = &v28[16 * v25];
      *(v26 + 4) = v27;
      *(v26 + 5) = v23;
    }

    else
    {
    }
  }

  v17 = v11;
  v18 = v13;
  if (v13)
  {
LABEL_13:
    v13 = (v18 - 1) & v18;
    v19 = *(*(v6 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v19)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v11 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v11 >= ((v12 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v18 = *(v10 + 8 * v11);
    ++v17;
    if (v18)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

char *sub_1000A4B7C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000A74C0(&qword_1001367D8, &unk_1000DCC10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000A4C88()
{
  if (qword_1001366D0 != -1)
  {
    swift_once();
  }

  v0 = [qword_1001367C0 intelligence];
  v1 = [v0 denyExternalIntelligenceIntegrations];

  if (v1)
  {
    v2 = [objc_opt_self() denyExternalIntelligenceIntegrationsMetadata];
    v3 = [v2 defaultValue];

    v4 = [v1 BOOLValue];
    v5 = [v3 BOOLValue];

    if (v5)
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    return v6 | v4;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A4DEC()
{
  if (qword_1001366D0 != -1)
  {
    swift_once();
  }

  v0 = [qword_1001367C0 intelligence];
  v1 = [v0 denyGenmoji];

  if (v1)
  {
    v2 = [objc_opt_self() denyGenmojiMetadata];
    v3 = [v2 defaultValue];

    v4 = [v1 BOOLValue];
    v5 = [v3 BOOLValue];

    if (v5)
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    return v6 | v4;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A4F50()
{
  if (qword_1001366D0 != -1)
  {
    swift_once();
  }

  v0 = [qword_1001367C0 intelligence];
  v1 = [v0 denyImagePlayground];

  if (v1)
  {
    v2 = [objc_opt_self() denyImagePlaygroundMetadata];
    v3 = [v2 defaultValue];

    v4 = [v1 BOOLValue];
    v5 = [v3 BOOLValue];

    if (v5)
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    return v6 | v4;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A50B4()
{
  if (qword_1001366D0 != -1)
  {
    swift_once();
  }

  v0 = [qword_1001367C0 intelligence];
  v1 = [v0 denyImageWand];

  if (v1)
  {
    v2 = [objc_opt_self() denyImageWandMetadata];
    v3 = [v2 defaultValue];

    v4 = [v1 BOOLValue];
    v5 = [v3 BOOLValue];

    if (v5)
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    return v6 | v4;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A5218()
{
  if (qword_1001366D0 != -1)
  {
    swift_once();
  }

  v0 = [qword_1001367C0 intelligence];
  v1 = [v0 denyWritingTools];

  if (v1)
  {
    v2 = [objc_opt_self() denyWritingToolsMetadata];
    v3 = [v2 defaultValue];

    v4 = [v1 BOOLValue];
    v5 = [v3 BOOLValue];

    if (v5)
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    return v6 | v4;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A537C()
{
  if (qword_1001366D0 != -1)
  {
    swift_once();
  }

  v0 = [qword_1001367C0 findMy];
  v1 = [v0 lockFindMyFriends];

  if (v1)
  {
    v2 = [objc_opt_self() lockFindMyFriendsMetadata];
    v3 = [v2 defaultValue];

    v4 = [v1 BOOLValue];
    v5 = [v3 BOOLValue];

    if (v5)
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    return v6 | v4;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A54E0()
{
  if (qword_1001366D0 != -1)
  {
    swift_once();
  }

  v0 = [qword_1001367C0 airDrop];
  v1 = [v0 denyAirDrop];

  if (v1)
  {
    v2 = [objc_opt_self() denyAirDropMetadata];
    v3 = [v2 defaultValue];

    v4 = [v1 BOOLValue];
    v5 = [v3 BOOLValue];

    if (v5)
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    return v6 | v4;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A5644()
{
  if (qword_1001366D0 != -1)
  {
    swift_once();
  }

  v0 = [qword_1001367C0 media];
  v1 = [v0 denyBookstore];

  if (v1)
  {
    v2 = [objc_opt_self() denyBookstoreMetadata];
    v3 = [v2 defaultValue];

    v4 = [v1 BOOLValue];
    v5 = [v3 BOOLValue];

    if (v5)
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    return v6 | v4;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}