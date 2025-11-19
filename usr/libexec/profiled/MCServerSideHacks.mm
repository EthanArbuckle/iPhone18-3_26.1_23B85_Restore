@interface MCServerSideHacks
+ (id)mergeArray:(id)a3 withArray:(id)a4;
+ (id)sharedHacks;
- (BOOL)_anyBoolRestrictionChangedInSet:(id)a3 oldRestrictions:(id)a4 newRestrictions:(id)a5;
- (BOOL)applyEffectiveSettings:(id)a3 toSettings:(id)a4 withOldRestrictions:(id)a5 newRestrictions:(id)a6;
- (id)recomputeAccountVPNAssociations;
- (void)_applyServerSideChangesWithOldRestrictions:(id)a3 newRestrictions:(id)a4 oldEffectiveUserSettings:(id)a5 newEffectiveUserSettings:(id)a6;
- (void)applyEffectiveSettings:(id)a3 toOtherSubsystemsWithCredentialSet:(id)a4;
- (void)applyGracePeriodSettingFromKeybagToUserSettings;
- (void)recomputeAppOptionsEffectiveUserSettings:(id)a3 outEffectiveChangeDetected:(BOOL *)a4;
- (void)recomputeAppRulesForNetworkExtension;
- (void)recomputeHacksAfterProfileChangesEffectiveUserSettings:(id)a3 sendNotifications:(BOOL)a4;
- (void)recomputeWebContentFilterEffectiveUserSettings:(id)a3 outEffectiveChangeDetected:(BOOL *)a4 outMechanismChangedDetected:(BOOL *)a5;
- (void)resetSettingsSender:(id)a3;
- (void)setUserTrackingTCCAccessOverrideForRestrictions:(id)a3;
@end

@implementation MCServerSideHacks

+ (id)sharedHacks
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___MCServerSideHacks;
  v2 = objc_msgSendSuper2(&v4, "sharedHacks");

  return v2;
}

- (BOOL)_anyBoolRestrictionChangedInSet:(id)a3 oldRestrictions:(id)a4 newRestrictions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = *v16;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if (([MCRestrictionManagerWriter restrictedBool:*(*(&v15 + 1) + 8 * i) changedBetweenOldRestrictions:v8 andNewRestrictions:v9, v15]& 1) != 0)
        {
          LOBYTE(v11) = 1;
          goto LABEL_11;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v11;
}

- (void)_applyServerSideChangesWithOldRestrictions:(id)a3 newRestrictions:(id)a4 oldEffectiveUserSettings:(id)a5 newEffectiveUserSettings:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ((byte_100136660 & 1) == 0)
  {
    v30 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Not calling out to external components.", buf, 2u);
    }

    goto LABEL_72;
  }

  if ([MCRestrictionManager BOOLSetting:MCFeatureEncryptedBackupRequired valueChangedBetweenOldSettings:v12 andNewSettings:v13])
  {
    [(MCServerSideHacks *)self _setRequriesEncryptedBackupInLockdownWithEffectiveUserSettings:v13];
  }

  v14 = MCFeatureAppInstallationAllowed;
  if ([MCRestrictionManager BOOLSetting:MCFeatureAppInstallationAllowed valueChangedBetweenOldSettings:v12 andNewSettings:v13])
  {
    v15 = [MCRestrictionManager BOOLSettingForFeature:v14 withUserSettingDictionary:v13]!= 2;
    v16 = MCLockdownOperationQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009145C;
    block[3] = &unk_10011CE68;
    v82 = v15;
    dispatch_async(v16, block);
  }

  v17 = MCFeatureAppRemovalAllowed;
  if ([MCRestrictionManager BOOLSetting:MCFeatureAppRemovalAllowed valueChangedBetweenOldSettings:v12 andNewSettings:v13])
  {
    v18 = [MCRestrictionManager BOOLSettingForFeature:v17 withUserSettingDictionary:v13]!= 2;
    v19 = MCLockdownOperationQueue();
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_1000914E4;
    v79[3] = &unk_10011CE68;
    v80 = v18;
    dispatch_async(v19, v79);
  }

  v20 = MCFeatureHostPairingAllowed;
  if ([MCRestrictionManager BOOLSetting:MCFeatureHostPairingAllowed valueChangedBetweenOldSettings:v12 andNewSettings:v13]&& [MCRestrictionManager BOOLSettingForFeature:v20 withUserSettingDictionary:v13]== 2)
  {
    v21 = MCLockdownOperationQueue();
    dispatch_async(v21, &stru_10011CE88);
  }

  if ([MCRestrictionManager unionValuesSetting:MCFeatureTrustedCodeSigningIdentities valueChangedBetweenOldSettings:v12 andNewSettings:v13])
  {
    v22 = +[MCProvisioningProfileJanitor sharedJanitor];
    [v22 updateMISTrust];
  }

  v23 = MCFeatureAllowGlobalBackgroundFetchWhenRoaming;
  if ([MCRestrictionManager BOOLSetting:MCFeatureAllowGlobalBackgroundFetchWhenRoaming valueChangedBetweenOldSettings:v12 andNewSettings:v13])
  {
    [MCRestrictionManager BOOLSettingForFeature:v23 withUserSettingDictionary:v13];
    PCSettingsSetGlobalMCCForceManualWhenRoaming();
  }

  v24 = MCFeatureAssistantAllowed;
  if ([MCRestrictionManager BOOLSetting:MCFeatureAssistantAllowed valueChangedBetweenOldSettings:v12 andNewSettings:v13]&& [MCRestrictionManager BOOLSettingForFeature:v24 withUserSettingDictionary:v13]== 2)
  {
    CFPreferencesSetAppValue(@"Assistant Enabled", kCFBooleanFalse, @"com.apple.assistant.support");
    CFPreferencesAppSynchronize(@"com.apple.assistant.support");
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kAFPreferencesDidChangeDarwinNotification", 0, 0, 1u);
  }

  v26 = MCFeatureFIPSVerificationForced;
  if ([MCRestrictionManager BOOLSetting:MCFeatureFIPSVerificationForced valueChangedBetweenOldSettings:v12 andNewSettings:v13])
  {
    if ([MCRestrictionManager BOOLSettingForFeature:v26 withUserSettingDictionary:v13]== 1)
    {
      v27 = +[NSData data];
      [v27 writeToFile:@"/var/mobile/Library/Preferences/enable_fips_mode" atomically:0];

      v28 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v29 = "Turning on FIPS verification.";
LABEL_26:
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 2u);
      }
    }

    else
    {
      v31 = +[NSFileManager defaultManager];
      [v31 removeItemAtPath:@"/var/mobile/Library/Preferences/enable_fips_mode" error:0];

      v28 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v29 = "Turning off FIPS verification.";
        goto LABEL_26;
      }
    }
  }

  v32 = MCFeatureDiagnosticsSubmissionAllowed;
  if ([MCRestrictionManager BOOLSetting:MCFeatureDiagnosticsSubmissionAllowed valueChangedBetweenOldSettings:v12 andNewSettings:v13]&& [MCRestrictionManager BOOLSettingForFeature:v32 withUserSettingDictionary:v12])
  {
    v33 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v33, @"com.apple.OTACrashCopier.SubmissionPreferenceChanged", 0, 0, 1u);
  }

  v34 = MCFeatureCloudKeychainSyncAllowed;
  if (![MCRestrictionManager restrictedBool:MCFeatureCloudKeychainSyncAllowed changedBetweenOldRestrictions:v10 andNewRestrictions:v11]|| [MCRestrictionManager restrictedBoolForFeature:v34 withRestrictionsDictionary:v11]!= 2)
  {
    goto LABEL_39;
  }

  v35 = self;
  v36 = v13;
  v37 = v12;
  v38 = objc_opt_new();
  v39 = [[OTClique alloc] initWithContextData:v38];
  v78 = 0;
  v40 = [v39 setUserControllableViewsSyncStatus:0 error:&v78];
  v41 = v78;
  v42 = _MCLogObjects[0];
  if (v40)
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v43 = "Disabled keychain sync.";
      v44 = v42;
      v45 = OS_LOG_TYPE_DEFAULT;
      v46 = 2;
LABEL_37:
      _os_log_impl(&_mh_execute_header, v44, v45, v43, buf, v46);
    }
  }

  else if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v86 = v41;
    v43 = "Unable to leave clique to disable keychain sync. Error: %{public}@";
    v44 = v42;
    v45 = OS_LOG_TYPE_ERROR;
    v46 = 12;
    goto LABEL_37;
  }

  v12 = v37;
  v13 = v36;
  self = v35;
LABEL_39:
  v72 = MCFeaturePhotoStreamAllowed;
  v73 = MCFeatureCloudPhotoLibraryAllowed;
  v84[0] = MCFeatureCloudPhotoLibraryAllowed;
  v84[1] = MCFeaturePhotoStreamAllowed;
  v70 = MCFeatureCloudBackupAllowed;
  v71 = MCFeatureSharedStreamAllowed;
  v84[2] = MCFeatureSharedStreamAllowed;
  v84[3] = MCFeatureCloudBackupAllowed;
  v47 = MCFeatureCloudDocumentSyncAllowed;
  v84[4] = MCFeatureCloudDocumentSyncAllowed;
  v48 = [NSArray arrayWithObjects:v84 count:5];
  v49 = [NSSet setWithArray:v48];
  v63 = self;
  v50 = [(MCServerSideHacks *)self _anyBoolRestrictionChangedInSet:v49 oldRestrictions:v10 newRestrictions:v11];

  if (!v50)
  {
    goto LABEL_68;
  }

  v60 = v13;
  v61 = v12;
  v62 = v10;
  +[ACAccountStore defaultStore];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v65 = v77 = 0u;
  obj = [v65 aa_appleAccounts];
  v51 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (!v51)
  {
    goto LABEL_67;
  }

  v52 = v51;
  v53 = *v75;
  v54 = kAccountDataclassCloudPhotos;
  v69 = kAccountDataclassMediaStream;
  v68 = kAccountDataclassSharedStreams;
  v67 = kAccountDataclassBackup;
  v66 = kAccountDataclassUbiquity;
  v55 = kAccountDataclassKeyValue;
  v56 = kAccountDataclassCloudPhotos;
  do
  {
    for (i = 0; i != v52; i = i + 1)
    {
      if (*v75 != v53)
      {
        objc_enumerationMutation(obj);
      }

      v58 = *(*(&v74 + 1) + 8 * i);
      if (+[MCRestrictionManagerWriter restrictedBoolForFeature:withRestrictionsDictionary:](MCRestrictionManagerWriter, "restrictedBoolForFeature:withRestrictionsDictionary:", v73, v11) == 2 && [v58 isEnabledForDataclass:v54])
      {
        [v58 setEnabled:0 forDataclass:v54];
        v59 = 1;
      }

      else
      {
        v59 = 0;
      }

      if (+[MCRestrictionManagerWriter restrictedBoolForFeature:withRestrictionsDictionary:](MCRestrictionManagerWriter, "restrictedBoolForFeature:withRestrictionsDictionary:", v72, v11) == 2 && [v58 isEnabledForDataclass:v69])
      {
        [v58 setEnabled:0 forDataclass:v69];
        v59 = 1;
      }

      if (+[MCRestrictionManagerWriter restrictedBoolForFeature:withRestrictionsDictionary:](MCRestrictionManagerWriter, "restrictedBoolForFeature:withRestrictionsDictionary:", v71, v11) == 2 && [v58 isEnabledForDataclass:v68])
      {
        [v58 setEnabled:0 forDataclass:v68];
        v59 = 1;
      }

      if (+[MCRestrictionManagerWriter restrictedBoolForFeature:withRestrictionsDictionary:](MCRestrictionManagerWriter, "restrictedBoolForFeature:withRestrictionsDictionary:", v70, v11) == 2 && [v58 isEnabledForDataclass:v67])
      {
        [v58 setEnabled:0 forDataclass:v67];
        v59 = 1;
      }

      if ([MCRestrictionManagerWriter restrictedBoolForFeature:v47 withRestrictionsDictionary:v11]!= 2)
      {
        goto LABEL_63;
      }

      if ([v58 isEnabledForDataclass:v66])
      {
        [v58 setEnabled:0 forDataclass:v66];
        v59 = 1;
      }

      if ([v58 isEnabledForDataclass:v55])
      {
        [v58 setEnabled:0 forDataclass:v55];
      }

      else
      {
LABEL_63:
        if (!v59)
        {
          goto LABEL_65;
        }
      }

      [v65 saveAccount:v58 withDataclassActions:0 doVerify:0 completion:&stru_10011CEA8];
LABEL_65:
      v54 = v56;
    }

    v52 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
  }

  while (v52);
LABEL_67:

  v12 = v61;
  v10 = v62;
  v13 = v60;
LABEL_68:
  if ([MCRestrictionManagerWriter BOOLSetting:MCFeatureVehicleUIAllowed valueChangedBetweenOldSettings:v12 andNewSettings:v13])
  {
    CRHandleCarPlayRestrictionChanged();
  }

  if ([MCRestrictionManager restrictedBool:MCFeatureLimitAdTrackingForced changedBetweenOldRestrictions:v10 andNewRestrictions:v11])
  {
    [(MCServerSideHacks *)v63 setUserTrackingTCCAccessOverrideForRestrictions:v11];
  }

LABEL_72:
}

- (void)applyEffectiveSettings:(id)a3 toOtherSubsystemsWithCredentialSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (byte_100136660)
  {
    if ([MCRestrictionManager BOOLSettingForFeature:MCFeatureAutomaticDateAndTimeForced withUserSettingDictionary:v5]== 1)
    {
      TMSetAutomaticTimeZoneEnabled();
      TMSetAutomaticTimeEnabled();
    }

    if (MCGestaltHasSEP())
    {
      v7 = +[MCRestrictionManager sharedManager];
      v8 = [v7 memberQueueRestrictions];

      v9 = [MCRestrictionManager valueForFeature:MCFeatureMaximumFailedPasscodeAttempts withRestrictionsDictionary:v8];
      v10 = [v9 unsignedIntegerValue];

      if (v10 != MCKeybagCurrentMaximumFailedPasscodeAttempts())
      {
        v11 = MCKeybagSetMaximumFailedPasscodeAttempts();
        if (v11)
        {
          v12 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v87 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to set maximum failed passcode attempts. Error: %{public}@", buf, 0xCu);
          }
        }
      }
    }

    v13 = MCFeaturePasscodeLockGraceTime;
    v14 = [MCRestrictionManager valueSettingForFeature:MCFeaturePasscodeLockGraceTime withUserSettingDictionary:v5];
    v15 = [v14 unsignedLongValue];

    v16 = MCKeybagCurrentPasscodeGracePeriod();
    if (v15 != v16)
    {
      v17 = v16;
      v18 = MCKeybagSetPasscodeGracePeriod();
      if (v18)
      {
        v19 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v87 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to set grace period. Error: %{public}@", buf, 0xCu);
        }

        v84 = MCRestrictedValueKey;
        v82 = v13;
        v80 = MCRestrictedValueValueKey;
        v20 = [NSNumber numberWithUnsignedInteger:v17];
        v81 = v20;
        v21 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v83 = v21;
        v22 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v85 = v22;
        v23 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];

        [v5 MCDeepCopyEntriesFromDictionary:v23];
      }
    }

    if (_os_feature_enabled_impl() && [MCRestrictionManager BOOLSettingForFeature:MCFeaturePasscodeRecoveryAllowed withUserSettingDictionary:v5]== 2 && MCKeybagMementoBlobExists())
    {
      v24 = +[MCPasscodeManagerWriter sharedManager];
      v25 = [v24 clearRecoveryPasscode];

      if (v25)
      {
        v26 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v87 = v25;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to clear recovery passcode. Error: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        [MCPasscodeAnalytics sendRecoveryPasscodeClearedEventWithReason:4];
      }
    }

    v66 = 0;
    v67 = 0;
    v28 = sub_100054F48(&v67, &v66);
    v29 = v67;
    v30 = v66;
    if (v28)
    {
      v31 = MCFeatureFingerprintUnlockAllowed;
      v32 = [MCRestrictionManager BOOLSettingForFeature:MCFeatureFingerprintUnlockAllowed withUserSettingDictionary:v5];
      if (!v29 || (v33 = v32, (v32 != 2) == [v29 BOOLValue]))
      {
        v34 = 0;
      }

      else
      {
        v34 = [NSNumber numberWithBool:v33 != 2];
      }

      v36 = MCFeatureFingerprintForContactlessPaymentAllowed;
      v37 = [MCRestrictionManager BOOLSettingForFeature:MCFeatureFingerprintForContactlessPaymentAllowed withUserSettingDictionary:v5];
      if (!v30 || (v38 = v37, (v37 != 2) == [v30 BOOLValue]))
      {
        v39 = 0;
      }

      else
      {
        v39 = [NSNumber numberWithBool:v38 != 2];
      }

      if (v34 | v39)
      {
        v40 = sub_10005502C(v34, v39, v6);
        if (v40)
        {
          v64 = v40;
          if (v34)
          {
            v78 = MCRestrictedBoolKey;
            v75 = v29;
            v76 = v31;
            v74 = MCRestrictedBoolValueKey;
            v41 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
            v77 = v41;
            v42 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
            v79 = v42;
            v43 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];

            [v5 MCDeepCopyEntriesFromDictionary:v43];
            v40 = v64;
          }

          if (v39)
          {
            v72 = MCRestrictedBoolKey;
            v69 = v30;
            v70 = v36;
            v68 = MCRestrictedBoolValueKey;
            v44 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
            v71 = v44;
            v45 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
            v73 = v45;
            v46 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];

            [v5 MCDeepCopyEntriesFromDictionary:v46];
            v40 = v64;
          }
        }
      }
    }

    else
    {
      v35 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Fingerprint unlock state is currently not available. Ignoring.", buf, 2u);
      }
    }

    if ([MCRestrictionManager BOOLSettingForFeature:MCFeatureWifiPowerOnEnforced withUserSettingDictionary:v5, v64]== 1)
    {
      v47 = objc_opt_new();
      [v47 activate];
      if (([v47 powerOn] & 1) == 0)
      {
        v65 = 0;
        [v47 setPower:1 error:&v65];
        v48 = v65;
        if (v48)
        {
          v49 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v87 = v48;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Could not enable WiFi: %{public}@", buf, 0xCu);
          }
        }
      }

      [v47 invalidate];
    }

    v50 = [MCRestrictionManager valueSettingForFeature:MCFeatureSafariAcceptCookies withUserSettingDictionary:v5];
    v51 = v50;
    v52 = &kMCSafariCookieAcceptPolicyExclusivelyFromMainDocumentDomain;
    if (v50)
    {
      [v50 floatValue];
      if (v53 >= 2.0)
      {
        v52 = &kMCSafariCookieAcceptPolicyAlways;
        v54 = 3;
      }

      else if (v53 >= 1.5)
      {
        v52 = &kMCSafariCookieAcceptPolicyOnlyFromMainDocumentDomain;
        v54 = 2;
      }

      else
      {
        v54 = v53 >= 1.0;
        if (v53 < 1.0)
        {
          v52 = &kMCSafariCookieAcceptPolicyNever;
        }
      }
    }

    else
    {
      v54 = 1;
    }

    v55 = *v52;
    v56 = CFPreferencesCopyAppValue(@"CookieAcceptPolicy", @"com.apple.WebUI");
    if ((MCEqualStrings() & 1) == 0)
    {
      CFPreferencesSetAppValue(@"CookieAcceptPolicy", v55, @"com.apple.WebUI");
      CFPreferencesAppSynchronize(@"com.apple.WebUI");
      v57 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
      [v57 setCookieAcceptPolicy:v54];

      MCSendSafariCookiePolicyChangedNotification();
    }

    [MCRestrictionManager BOOLSettingForFeature:MCFeatureEnterpriseBookBackupAllowed withUserSettingDictionary:v5];
    v58 = +[NSFileManager defaultManager];
    v59 = MDMManagedNonStoreBooksDirectory();
    v60 = [v58 fileExistsAtPath:v59];

    if (v60)
    {
      v61 = MDMManagedNonStoreBooksDirectory();
      v62 = MCSetSkipBackupAttributeToItemAtPath();

      if ((v62 & 1) == 0)
      {
        v63 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Failed to set backup exclusion on managed books directory", buf, 2u);
        }
      }
    }
  }

  else
  {
    v27 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Not calling out to external components.", buf, 2u);
    }
  }
}

- (BOOL)applyEffectiveSettings:(id)a3 toSettings:(id)a4 withOldRestrictions:(id)a5 newRestrictions:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = MCFeaturePasscodeLockGraceTime;
  if (![MCRestrictionManager restrictedValue:MCFeaturePasscodeLockGraceTime changedBetweenOldRestrictions:a5 andNewRestrictions:a6])
  {
    goto LABEL_3;
  }

  v12 = [MCRestrictionManager valueSettingForFeature:v11 withUserSettingDictionary:v9];
  v13 = [v12 unsignedLongValue];

  v14 = [MCRestrictionManager valueSettingForFeature:v11 withUserSettingDictionary:v10];
  v15 = [v14 unsignedLongValue];

  if (v13 != v15)
  {
    v26 = MCRestrictedValueKey;
    v24 = v11;
    v22 = MCRestrictedValueValueKey;
    v17 = [NSNumber numberWithUnsignedInteger:v13];
    v23 = v17;
    v16 = 1;
    v18 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v25 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v27 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    [v10 MCDeepCopyEntriesFromDictionary:v20];
  }

  else
  {
LABEL_3:
    v16 = 0;
  }

  return v16;
}

- (void)recomputeAppOptionsEffectiveUserSettings:(id)a3 outEffectiveChangeDetected:(BOOL *)a4
{
  v82 = a3;
  v4 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Recomputing app options.", buf, 2u);
  }

  v86 = +[MCManifest sharedManifest];
  v5 = [v86 allInstalledProfileIdentifiers];
  v6 = +[NSMutableDictionary dictionary];
  v83 = +[NSMutableDictionary dictionary];
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  obj = v5;
  v87 = [obj countByEnumeratingWithState:&v133 objects:v145 count:16];
  if (v87)
  {
    v7 = *v134;
    v8 = kMCAppWhitelistIdentifierKey;
    v9 = &MCRestrictedBoolValueKey_ptr;
    v10 = &MCRestrictedBoolValueKey_ptr;
    v84 = *v134;
    do
    {
      v11 = 0;
      do
      {
        if (*v134 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v90 = v11;
        v12 = *(*(&v133 + 1) + 8 * v11);
        context = objc_autoreleasePoolPush();
        v13 = [v86 installedProfileWithIdentifier:v12];
        v14 = v9[47];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = +[NSMutableDictionary dictionary];
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          v132 = 0u;
          v88 = v13;
          v103 = [v13 payloads];
          v16 = [v103 countByEnumeratingWithState:&v129 objects:v144 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v130;
            v91 = *v130;
            v95 = v15;
            do
            {
              v19 = 0;
              v99 = v17;
              do
              {
                if (*v130 != v18)
                {
                  objc_enumerationMutation(v103);
                }

                v20 = *(*(&v129 + 1) + 8 * v19);
                v21 = v10[37];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v22 = [v20 whitelistedAppsAndOptions];
                  if (v22)
                  {
                    v23 = [v20 UUID];
                    [v15 setObject:v22 forKey:v23];

                    v127 = 0u;
                    v128 = 0u;
                    v125 = 0u;
                    v126 = 0u;
                    v24 = v22;
                    v25 = [v24 countByEnumeratingWithState:&v125 objects:v143 count:16];
                    if (v25)
                    {
                      v26 = v25;
                      v27 = *v126;
                      do
                      {
                        for (i = 0; i != v26; i = i + 1)
                        {
                          if (*v126 != v27)
                          {
                            objc_enumerationMutation(v24);
                          }

                          v29 = *(*(&v125 + 1) + 8 * i);
                          v30 = [v29 objectForKey:v8];
                          if (v30)
                          {
                            [v6 setObject:v29 forKey:v30];
                          }
                        }

                        v26 = [v24 countByEnumeratingWithState:&v125 objects:v143 count:16];
                      }

                      while (v26);
                    }

                    v10 = &MCRestrictedBoolValueKey_ptr;
                    v18 = v91;
                    v15 = v95;
                    v17 = v99;
                  }
                }

                v19 = v19 + 1;
              }

              while (v19 != v17);
              v17 = [v103 countByEnumeratingWithState:&v129 objects:v144 count:16];
            }

            while (v17);
          }

          if ([v15 count])
          {
            v31 = [v88 identifier];
            [v83 setObject:v15 forKey:v31];
          }

          v7 = v84;
          v9 = &MCRestrictedBoolValueKey_ptr;
          v13 = v88;
        }

        objc_autoreleasePoolPop(context);
        v11 = v90 + 1;
      }

      while ((v90 + 1) != v87);
      v87 = [obj countByEnumeratingWithState:&v133 objects:v145 count:16];
    }

    while (v87);
  }

  +[MCRestrictionManagerWriter sharedManager];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v104 = v124 = 0u;
  v92 = [v104 memberQueueUserClientRestrictions];
  v100 = [v92 countByEnumeratingWithState:&v121 objects:v142 count:16];
  if (v100)
  {
    v96 = *v122;
    v32 = kMCAppWhitelistIdentifierKey;
    do
    {
      for (j = 0; j != v100; j = j + 1)
      {
        if (*v122 != v96)
        {
          objc_enumerationMutation(v92);
        }

        v34 = [v104 memberQueueAppsAndOptionsForClientUUID:*(*(&v121 + 1) + 8 * j)];
        v35 = v34;
        if (v34)
        {
          v119 = 0u;
          v120 = 0u;
          v117 = 0u;
          v118 = 0u;
          v36 = [v34 countByEnumeratingWithState:&v117 objects:v141 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v118;
            do
            {
              for (k = 0; k != v37; k = k + 1)
              {
                if (*v118 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = *(*(&v117 + 1) + 8 * k);
                v41 = [v40 objectForKey:v32];
                if (v41)
                {
                  v42 = [v6 objectForKeyedSubscript:v41];

                  if (!v42)
                  {
                    [v6 setObject:v40 forKey:v41];
                  }
                }
              }

              v37 = [v35 countByEnumeratingWithState:&v117 objects:v141 count:16];
            }

            while (v37);
          }
        }
      }

      v100 = [v92 countByEnumeratingWithState:&v121 objects:v142 count:16];
    }

    while (v100);
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v93 = [v104 memberQueueSystemClientRestrictions];
  v101 = [v93 countByEnumeratingWithState:&v113 objects:v140 count:16];
  if (v101)
  {
    v97 = *v114;
    v43 = kMCAppWhitelistIdentifierKey;
    do
    {
      for (m = 0; m != v101; m = m + 1)
      {
        if (*v114 != v97)
        {
          objc_enumerationMutation(v93);
        }

        v45 = [v104 memberQueueAppsAndOptionsForClientUUID:*(*(&v113 + 1) + 8 * m)];
        v46 = v45;
        if (v45)
        {
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v47 = [v45 countByEnumeratingWithState:&v109 objects:v139 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v110;
            do
            {
              for (n = 0; n != v48; n = n + 1)
              {
                if (*v110 != v49)
                {
                  objc_enumerationMutation(v46);
                }

                v51 = *(*(&v109 + 1) + 8 * n);
                v52 = [v51 objectForKey:v43];
                if (v52)
                {
                  v53 = [v6 objectForKeyedSubscript:v52];

                  if (!v53)
                  {
                    [v6 setObject:v51 forKey:v52];
                  }
                }
              }

              v48 = [v46 countByEnumeratingWithState:&v109 objects:v139 count:16];
            }

            while (v48);
          }
        }
      }

      v101 = [v93 countByEnumeratingWithState:&v113 objects:v140 count:16];
    }

    while (v101);
  }

  v54 = +[NSFileManager defaultManager];
  v55 = [v6 count];
  v56 = MCSystemAppOptionsByBundleIDFilePath();
  v57 = v83;
  if (v55)
  {
    [v6 writeToFile:v56 atomically:1];
  }

  else
  {
    [v54 removeItemAtPath:v56 error:0];
  }

  v58 = [v83 count];
  v59 = MCSystemAppWhitelistByProfileFilePath();
  if (v58)
  {
    [v83 writeToFile:v59 atomically:1];
  }

  else
  {
    [v54 removeItemAtPath:v59 error:0];

    v59 = MCSystemEffectiveAppWhitelistFilePath();
    [v54 removeItemAtPath:v59 error:0];
  }

  v60 = MCSystemEffectiveAppWhitelistFilePath();
  v61 = [NSData dataWithContentsOfFile:v60];

  if (v61)
  {
    v62 = [NSPropertyListSerialization MCSafePropertyListWithData:v61 options:0 format:0 error:0];
  }

  else
  {
    v62 = 0;
  }

  if ([v6 count])
  {
    v63 = [MCRestrictionManager intersectedValuesSettingForFeature:MCFeatureAppLockBundleIDs withUserSettingDectionary:v82];
    if ([v63 count])
    {
      v94 = v62;
      v98 = v61;
      v102 = v54;
      v64 = [NSSet setWithArray:v63];
      v65 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v63 count]);
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v66 = v6;
      v67 = [v66 countByEnumeratingWithState:&v105 objects:v138 count:16];
      if (v67)
      {
        v68 = v67;
        v69 = *v106;
        do
        {
          for (ii = 0; ii != v68; ii = ii + 1)
          {
            if (*v106 != v69)
            {
              objc_enumerationMutation(v66);
            }

            v71 = *(*(&v105 + 1) + 8 * ii);
            v72 = [v66 objectForKey:v71];
            if ([v64 containsObject:v71])
            {
              [v65 addObject:v72];
            }
          }

          v68 = [v66 countByEnumeratingWithState:&v105 objects:v138 count:16];
        }

        while (v68);
      }

      if ([v65 count])
      {
        v73 = MCSystemEffectiveAppWhitelistFilePath();
        v74 = 1;
        [v65 writeToFile:v73 atomically:1];

        v57 = v83;
        v61 = v98;
        v54 = v102;
        v62 = v94;
        goto LABEL_97;
      }

      v57 = v83;
      v61 = v98;
      v54 = v102;
      v62 = v94;
    }

    else
    {
      v65 = 0;
    }
  }

  else
  {
    v65 = 0;
  }

  v63 = MCSystemEffectiveAppWhitelistFilePath();
  [v54 removeItemAtPath:v63 error:0];
  v74 = 0;
LABEL_97:

  if (v81)
  {
    v75 = v74 ^ 1;
    if (!v62)
    {
      v75 = 0;
    }

    if (v75)
    {
      goto LABEL_102;
    }

    v76 = v62;
    v77 = [NSSet setWithArray:v62];
    v78 = [NSSet setWithArray:v65];
    v79 = [v77 isEqualToSet:v78];

    v62 = v76;
    if ((v79 & 1) == 0)
    {
LABEL_102:
      *v81 = 1;
    }
  }
}

- (void)recomputeAppRulesForNetworkExtension
{
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Recomputing app rules for NetworkExtension.", buf, 2u);
  }

  v3 = +[MDMManagedMediaReader attributesByAppID];
  v4 = [v3 allKeys];
  v5 = MCNEProfileIngestionHandlerClassForPayload();
  if ([v5 lockConfigurations])
  {
    [v5 loadConfigurationsForceReloadFromDisk];
    [v5 updatePerAppMappingRules:v3];
    [v5 updateManagedAppRules:v4];
    [v5 unlockConfigurations];
  }

  else
  {
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "recomputeAppRulesForNetworkExtension could not get NetworkExtension store lock.", v7, 2u);
    }
  }
}

- (id)recomputeAccountVPNAssociations
{
  v45 = +[NSMutableDictionary dictionary];
  v2 = +[MCManifest sharedManifest];
  [v2 allInstalledProfileIdentifiers];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v55 = 0u;
  v3 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = &MCRestrictedBoolValueKey_ptr;
    v6 = *v53;
    v7 = @"Credential";
    v36 = *v53;
    v37 = v2;
    do
    {
      v8 = 0;
      v38 = v4;
      do
      {
        if (*v53 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v52 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [v2 installedProfileWithIdentifier:v9];
        v12 = v5[47];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = v10;
          v42 = v8;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v40 = v11;
          v46 = [v11 payloads];
          v13 = [v46 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v49;
            v43 = *v49;
            do
            {
              v16 = 0;
              v44 = v14;
              do
              {
                if (*v49 != v15)
                {
                  objc_enumerationMutation(v46);
                }

                v17 = *(*(&v48 + 1) + 8 * v16);
                if ([v17 conformsToProtocol:v7[124].data])
                {
                  v18 = v17;
                  v19 = [v18 VPNUUID];
                  if (v19)
                  {
                    if (objc_opt_respondsToSelector())
                    {
                      v20 = [v18 mailAccountIdentifiers];
                    }

                    else
                    {
                      v20 = 0;
                    }

                    if (objc_opt_respondsToSelector())
                    {
                      v21 = [v18 contactsAccountIdentifiers];
                    }

                    else
                    {
                      v21 = 0;
                    }

                    if (objc_opt_respondsToSelector())
                    {
                      v22 = [v18 calendarAccountIdentifiers];
                    }

                    else
                    {
                      v22 = 0;
                    }

                    if ([v20 count] || objc_msgSend(v21, "count") || objc_msgSend(v22, "count"))
                    {
                      v23 = [v45 objectForKeyedSubscript:v19];
                      if (!v23)
                      {
                        v23 = objc_opt_new();
                        [v45 setObject:v23 forKeyedSubscript:v19];
                      }

                      v24 = [v23 mailAccountIdentifiers];
                      v25 = [MCServerSideHacks mergeArray:v24 withArray:v20];
                      [v23 setMailAccountIdentifiers:v25];

                      v26 = [v23 contactsAccountIdentifiers];
                      v27 = [MCServerSideHacks mergeArray:v26 withArray:v21];
                      [v23 setContactsAccountIdentifiers:v27];

                      v28 = [v23 calendarAccountIdentifiers];
                      v29 = [MCServerSideHacks mergeArray:v28 withArray:v22];
                      [v23 setCalendarAccountIdentifiers:v29];

                      v7 = @"Credential";
                      v15 = v43;
                      v14 = v44;
                    }
                  }
                }

                v16 = v16 + 1;
              }

              while (v14 != v16);
              v14 = [v46 countByEnumeratingWithState:&v48 objects:v56 count:16];
            }

            while (v14);
          }

          v2 = v37;
          v4 = v38;
          v5 = &MCRestrictedBoolValueKey_ptr;
          v6 = v36;
          v10 = v41;
          v8 = v42;
          v11 = v40;
        }

        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v8 != v4);
      v4 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v4);
  }

  v30 = MCNEProfileIngestionHandlerClassForPayload();
  [v30 loadConfigurationsForceReloadFromDisk];
  if ([v30 updateAccountIdentifiers:v45])
  {
    v31 = 0;
  }

  else
  {
    v32 = MCVPNErrorDomain;
    v33 = MCErrorArray();
    v31 = [NSError MCErrorWithDomain:v32 code:15004 descriptionArray:v33 errorType:MCErrorTypeFatal, 0];

    v34 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "recomputeAccountVPNAssociations failed to update associations.", buf, 2u);
    }
  }

  return v31;
}

+ (id)mergeArray:(id)a3 withArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [NSSet setWithArray:v5];
      v9 = [v8 setByAddingObjectsFromArray:v7];
      v10 = [v9 allObjects];

      goto LABEL_7;
    }

    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  v10 = v11;
LABEL_7:

  return v10;
}

- (void)recomputeWebContentFilterEffectiveUserSettings:(id)a3 outEffectiveChangeDetected:(BOOL *)a4 outMechanismChangedDetected:(BOOL *)a5
{
  v7 = a3;
  v8 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Recomputing web content filter.", buf, 2u);
  }

  v9 = +[NSFileManager defaultManager];
  v10 = MCWebContentFilterOutputPath();
  v11 = [v9 fileExistsAtPath:v10];

  v125 = v7;
  v122 = a4;
  v123 = v9;
  v121 = a5;
  if (v11)
  {
    v12 = MCWebContentFilterOutputPath();
    v13 = [NSDictionary dictionaryWithContentsOfFile:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = +[NSMutableDictionary dictionary];
  v15 = +[MCBookmarkManager sharedManager];
  v16 = [v15 userBookmarks];

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v158 objects:v169 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v159;
    v21 = kMCWCFAddressKey;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v159 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = [*(*(&v158 + 1) + 8 * i) serializableDictionary];
        v24 = [v23 objectForKeyedSubscript:v21];
        if (v24)
        {
          [v14 setObject:v23 forKeyedSubscript:v24];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v158 objects:v169 count:16];
    }

    while (v19);
  }

  v124 = v13;
  v120 = v17;

  v25 = +[MCDependencyManager sharedManager];
  v26 = [v25 parentsInDomain:kMCDMProfileWithWebContentFilterToPayloadUUIDDependencyKey];

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  obj = v26;
  v129 = [obj countByEnumeratingWithState:&v154 objects:v168 count:16];
  if (v129)
  {
    v127 = *v155;
    v27 = kMCWCFAddressKey;
    v28 = &MCRestrictedBoolValueKey_ptr;
    do
    {
      v29 = 0;
      do
      {
        if (*v155 != v127)
        {
          objc_enumerationMutation(obj);
        }

        v133 = v29;
        v30 = *(*(&v154 + 1) + 8 * v29);
        v31 = +[MCManifest sharedManifest];
        v32 = [v31 installedProfileWithIdentifier:v30];

        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v131 = v32;
        v140 = [v32 payloads];
        v33 = [v140 countByEnumeratingWithState:&v150 objects:v167 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v151;
          v135 = *v151;
          do
          {
            v36 = 0;
            v137 = v34;
            do
            {
              if (*v151 != v35)
              {
                objc_enumerationMutation(v140);
              }

              v37 = *(*(&v150 + 1) + 8 * v36);
              v38 = objc_autoreleasePoolPush();
              v39 = v28[95];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v40 = [v37 allowListBookmarks];
                v146 = 0u;
                v147 = 0u;
                v148 = 0u;
                v149 = 0u;
                v41 = [v40 countByEnumeratingWithState:&v146 objects:v166 count:16];
                if (v41)
                {
                  v42 = v41;
                  v43 = *v147;
                  do
                  {
                    for (j = 0; j != v42; j = j + 1)
                    {
                      if (*v147 != v43)
                      {
                        objc_enumerationMutation(v40);
                      }

                      v45 = *(*(&v146 + 1) + 8 * j);
                      v46 = [v45 objectForKeyedSubscript:v27];
                      [v14 setObject:v45 forKeyedSubscript:v46];
                    }

                    v42 = [v40 countByEnumeratingWithState:&v146 objects:v166 count:16];
                  }

                  while (v42);
                }

                v28 = &MCRestrictedBoolValueKey_ptr;
                v35 = v135;
                v34 = v137;
              }

              objc_autoreleasePoolPop(v38);
              v36 = v36 + 1;
            }

            while (v36 != v34);
            v34 = [v140 countByEnumeratingWithState:&v150 objects:v167 count:16];
          }

          while (v34);
        }

        v29 = v133 + 1;
      }

      while ((v133 + 1) != v129);
      v129 = [obj countByEnumeratingWithState:&v154 objects:v168 count:16];
    }

    while (v129);
  }

  v47 = [MCRestrictionManager intersectedValuesSettingForFeature:MCFeatureWebContentFilterWhitelistedBookmarks withUserSettingDectionary:v125];
  v134 = MCFeatureWebContentFilterWhitelistedURLs;
  v48 = [MCRestrictionManager intersectedValuesSettingForFeature:"intersectedValuesSettingForFeature:withUserSettingDectionary:" withUserSettingDectionary:?];
  v49 = [v48 count];
  if (v49 == [v47 count] && objc_msgSend(v48, "count"))
  {
    v50 = 0;
    v51 = kMCWCFAddressKey;
    v52 = kMCWCFPageTitleKey;
    do
    {
      v53 = [v48 objectAtIndexedSubscript:v50];
      v165[0] = v53;
      v164[0] = v51;
      v164[1] = v52;
      v54 = [v47 objectAtIndexedSubscript:v50];
      v165[1] = v54;
      v55 = [NSDictionary dictionaryWithObjects:v165 forKeys:v164 count:2];
      [v14 setObject:v55 forKeyedSubscript:v53];

      ++v50;
    }

    while (v50 < [v48 count]);
  }

  v132 = v47;
  v141 = +[NSMutableDictionary dictionary];
  v57 = v124;
  v56 = v125;
  if ((+[DMCMultiUserModeUtilities isSharediPad]& 1) == 0)
  {
    v58 = +[MOWebContentSettingsGroup blockedByFilterMetadata];
    v59 = [v58 responsibleClients];

    if ([v59 count] != 1 || (objc_msgSend(v59, "containsObject:", @"com.apple.ScreenTime") & 1) == 0)
    {
      [v141 setObject:&__kCFBooleanTrue forKeyedSubscript:@"noOverridingAllowed"];
    }
  }

  v60 = [MCRestrictionManager BOOLSettingForFeature:MCFeatureWebContentFilterAutoForced withUserSettingDictionary:v125];
  v61 = [NSNumber numberWithBool:v60 == 1];
  [v141 setObject:v61 forKeyedSubscript:@"useContentFilter"];

  v62 = [MCRestrictionManager intersectedValuesSettingForFeature:MCFeatureWebContentFilterAutoPermittedURLs withUserSettingDectionary:v125];
  v136 = v62;
  if (v62)
  {
    v63 = v62;
  }

  else
  {
    v63 = &__NSArray0__struct;
  }

  [v141 setObject:v63 forKeyedSubscript:@"filterWhitelist"];
  v138 = v60;
  if (v48)
  {
    v64 = [MCRestrictionManager intersectedValuesSettingForFeature:v134 withUserSettingDectionary:v125];
    v65 = [NSSet setWithArray:v64];

    v66 = [v14 allKeys];
    v67 = [NSMutableSet setWithArray:v66];

    [v67 intersectSet:v65];
    v68 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v67 count]);
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v69 = v67;
    v70 = [v69 countByEnumeratingWithState:&v142 objects:v163 count:16];
    if (v70)
    {
      v71 = v70;
      v72 = *v143;
      do
      {
        for (k = 0; k != v71; k = k + 1)
        {
          if (*v143 != v72)
          {
            objc_enumerationMutation(v69);
          }

          v74 = [v14 objectForKeyedSubscript:*(*(&v142 + 1) + 8 * k)];
          [v68 addObject:v74];
        }

        v71 = [v69 countByEnumeratingWithState:&v142 objects:v163 count:16];
      }

      while (v71);
    }

    [v141 setObject:v68 forKeyedSubscript:@"siteWhitelist"];
    v57 = v124;
    v56 = v125;
    v60 = v138;
  }

  v75 = [NSNumber numberWithBool:v48 != 0];
  [v141 setObject:v75 forKeyedSubscript:@"whitelistEnabled"];

  v76 = [MCRestrictionManager unionValuesSettingForFeature:MCFeatureWebContentFilterBlacklistedURLs withUserSettingDictionary:v56];
  v77 = v76;
  v78 = &__NSArray0__struct;
  if (v76)
  {
    v78 = v76;
  }

  v79 = v78;

  v80 = [v79 count];
  v81 = v48 | v80;
  v82 = v136 | v80;
  v130 = v79;
  [v141 setObject:v79 forKeyedSubscript:@"filterBlacklist"];
  v83 = [NSNumber numberWithBool:v82 != 0];
  [v141 setObject:v83 forKeyedSubscript:@"useContentFilterOverrides"];

  v84 = v60 == 1;
  v85 = v60 == 1;
  v86 = v84 || v81 != 0;
  v87 = [NSNumber numberWithBool:v86];
  [v141 setObject:v87 forKeyedSubscript:@"restrictWeb"];

  v88 = [v57 objectForKeyedSubscript:@"whitelistEnabled"];
  v89 = (v48 != 0) ^ [v88 BOOLValue];

  v90 = [v57 objectForKeyedSubscript:@"useContentFilter"];
  LODWORD(v88) = v85 ^ [v90 BOOLValue];

  v91 = [v57 objectForKeyedSubscript:@"restrictWeb"];
  LODWORD(v90) = v86 ^ [v91 BOOLValue];

  v119 = v89 | v88 | v90;
  if (v119)
  {
    sub_10009AAE4();
  }

  v92 = [v141 objectForKeyedSubscript:@"filterWhitelist"];
  v93 = v92;
  if (v92)
  {
    v94 = v92;
  }

  else
  {
    v94 = &__NSArray0__struct;
  }

  v139 = v94;

  v95 = [v57 objectForKeyedSubscript:@"filterWhitelist"];
  v96 = v95;
  if (v95)
  {
    v97 = v95;
  }

  else
  {
    v97 = &__NSArray0__struct;
  }

  v98 = v97;

  v99 = [v141 objectForKeyedSubscript:@"filterBlacklist"];
  v100 = v99;
  if (v99)
  {
    v101 = v99;
  }

  else
  {
    v101 = &__NSArray0__struct;
  }

  v102 = v101;

  v103 = [v57 objectForKeyedSubscript:@"filterBlacklist"];
  v104 = v103;
  if (v103)
  {
    v105 = v103;
  }

  else
  {
    v105 = &__NSArray0__struct;
  }

  v106 = v105;

  v107 = [v141 objectForKeyedSubscript:@"siteWhitelist"];
  v108 = v107;
  if (v107)
  {
    v109 = v107;
  }

  else
  {
    v109 = &__NSArray0__struct;
  }

  v110 = v109;

  v111 = [v57 objectForKeyedSubscript:@"siteWhitelist"];
  v112 = v111;
  if (v111)
  {
    v113 = v111;
  }

  else
  {
    v113 = &__NSArray0__struct;
  }

  v114 = v113;

  v128 = v98;
  v115 = [v139 isEqualToArray:v98];
  v116 = [v102 isEqualToArray:v106];
  v117 = [v110 isEqualToArray:v114];
  if (!v115 || !v116 || (v117 & 1) == 0)
  {
    [v139 count];
    [v102 count];
    [v110 count];
    sub_10009A8CC();
  }

  if (v121)
  {
    *v121 = v119 & 1;
  }

  if (v122)
  {
    *v122 = [v124 isEqualToDictionary:v141] ^ 1;
  }

  v118 = MCWebContentFilterOutputPath();
  [v141 MCWriteToBinaryFile:v118];
}

- (void)recomputeHacksAfterProfileChangesEffectiveUserSettings:(id)a3 sendNotifications:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(MCServerSideHacks *)self recomputeAppRulesForNetworkExtension];
  v10 = 0;
  [(MCServerSideHacks *)self recomputeAppOptionsEffectiveUserSettings:v6 outEffectiveChangeDetected:&v10];
  v9 = 0;
  v8 = 0;
  [(MCServerSideHacks *)self recomputeWebContentFilterEffectiveUserSettings:v6 outEffectiveChangeDetected:&v9 outMechanismChangedDetected:&v8];

  if (v4)
  {
    if (v10 == 1)
    {
      MCSendAppWhitelistChangedNotification();
    }

    if (v8 == 1)
    {
      MCSendWebContentFilterTypeChangedNotification();
    }

    if (v9 == 1)
    {
      MCSendWebContentFilterChangedNotification();
    }
  }

  if (v10 == 1)
  {
    v7 = +[MDMClient sharedClient];
    [v7 retryNotNowResponse];
  }
}

- (void)applyGracePeriodSettingFromKeybagToUserSettings
{
  v2 = +[MCRestrictionManagerWriter sharedManager];
  v3 = MCFeaturePasscodeLockGraceTime;
  v4 = [v2 valueSettingForFeature:MCFeaturePasscodeLockGraceTime];
  v5 = [v4 unsignedIntegerValue];

  v6 = MCKeybagCurrentPasscodeGracePeriod();
  if (v5 != v6)
  {
    v7 = v6;
    v8 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting grace period to %u to match keybag value.", v10, 8u);
    }

    v9 = [NSNumber numberWithUnsignedInteger:v7];
    [v2 setValue:v9 forSetting:v3 sender:@"MCServerSideHacks.ApplyGracePeriodSettingFromKeybag"];
  }
}

- (void)resetSettingsSender:(id)a3
{
  v3 = a3;
  v4 = +[MCRestrictionManagerWriter sharedManager];
  [v4 setBoolValue:0 forSetting:MCFeatureDiagnosticsSubmissionAllowed sender:v3];
  [v4 setBoolValue:0 forSetting:MCFeatureAppAnalyticsAllowed sender:v3];
}

- (void)setUserTrackingTCCAccessOverrideForRestrictions:(id)a3
{
  v3 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureLimitAdTrackingForced withRestrictionsDictionary:a3]== 1;
  v4 = kTCCServiceUserTracking;

  _TCCAccessSetOverride(v4, v3);
}

@end