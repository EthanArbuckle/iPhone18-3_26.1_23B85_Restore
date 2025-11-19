@interface MCCloudConfigurationWriter
+ (id)sharedInstance;
+ (void)setAMFISupervisionFromCloudConfiguration:(id)a3;
- (BOOL)_isCloudConfigurationAvailableInDEP;
- (BOOL)_saveCloudConfigDetails:(id)a3 outError:(id *)a4;
- (BOOL)_savePendingCloudConfigDetails:(id)a3 outError:(id *)a4;
- (BOOL)_unpairFromDevicesIfNeededWithDetails:(id)a3 outError:(id *)a4;
- (BOOL)_validateCloudConfigDetails:(id)a3 outError:(id *)a4;
- (BOOL)_validateDetails:(id)a3 outReasonWhyInvalid:(id *)a4;
- (BOOL)_verifyActivationState:(id *)a3;
- (BOOL)_verifyCloudConfigSourceWithDetails:(id)a3 outError:(id *)a4;
- (BOOL)finalizeCloudConfigurationOutError:(id *)a3;
- (BOOL)saveCloudConfigurationDetails:(id)a3 outError:(id *)a4;
- (BOOL)saveCloudConfigurationDetailsForPendingMigration:(id)a3 outError:(id *)a4;
- (id)_applyEnforcedCloudConfigRules:(id)a3;
- (id)_updateCloudConfigDetails:(id)a3;
- (void)_saveSetAsideDetails:(id)a3;
- (void)faceTimeSignInAttemptDidFinish;
@end

@implementation MCCloudConfigurationWriter

+ (id)sharedInstance
{
  if (qword_100136C18 != -1)
  {
    sub_1000C2CD8();
  }

  v3 = qword_100136C10;

  return v3;
}

- (void)faceTimeSignInAttemptDidFinish
{
  v3 = +[MDMCloudConfiguration sharedConfiguration];
  v4 = [v3 details];
  v5 = [v4 mutableCopy];

  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:kCCAttemptedFaceTimeSignInKey];
  [(MCCloudConfigurationWriter *)self saveCloudConfigurationDetails:v5 outError:0];
}

- (BOOL)saveCloudConfigurationDetails:(id)a3 outError:(id *)a4
{
  v6 = a3;
  if ([(MCCloudConfigurationWriter *)self _verifyActivationState:a4]&& [(MCCloudConfigurationWriter *)self _validateCloudConfigDetails:v6 outError:a4]&& [(MCCloudConfigurationWriter *)self _verifyCloudConfigSourceWithDetails:v6 outError:a4])
  {
    v7 = [(MCCloudConfigurationWriter *)self _applyEnforcedCloudConfigRules:v6];

    if ([(MCCloudConfigurationWriter *)self _unpairFromDevicesIfNeededWithDetails:v7 outError:a4])
    {
      if (![v7 count])
      {
        v11 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Removing cloud configuration.", v28, 2u);
        }

        v12 = +[NSFileManager defaultManager];
        v13 = MCCloudConfigurationDetailsFilePath();
        if (([v12 fileExistsAtPath:v13] & 1) == 0)
        {

          goto LABEL_18;
        }

        v14 = +[NSFileManager defaultManager];
        v15 = MCCloudConfigurationDetailsFilePath();
        v9 = [v14 removeItemAtPath:v15 error:a4];

        if (v9)
        {
LABEL_18:
          MCSendCloudConfigurationDetailsChangedNotification();
          MDMSendSkipkeyChangedNotification();
          v16 = kCCAllowPairingKey;
          v17 = [v7 objectForKeyedSubscript:kCCAllowPairingKey];
          if (v17)
          {
            v18 = [v7 objectForKeyedSubscript:v16];
            v19 = [v18 BOOLValue];
          }

          else
          {
            v19 = 1;
          }

          v20 = +[MCRestrictionManagerWriter sharedManager];
          [v20 setBoolValue:v19 forSetting:MCFeatureHostPairingAllowed sender:@"MCCloudConfigurationWriter.SaveCloudConfiguration"];

          v21 = [v7 objectForKeyedSubscript:kCCSkipSetupKey];
          v22 = [v21 containsObject:kMCCCSkipSetupDiagnostics];

          if (v22)
          {
            v23 = +[MCRestrictionManagerWriter sharedManager];
            v24 = MCFeatureDiagnosticsSubmissionAllowed;
            if (![v23 BOOLSettingForFeature:MCFeatureDiagnosticsSubmissionAllowed])
            {
              [v23 setBoolValue:0 forSetting:v24 sender:@"MCCloudConfigurationWriter.SaveCloudConfiguration"];
            }
          }

          v25 = [v7 objectForKeyedSubscript:kCCIsSupervisedKey];
          v26 = [v25 BOOLValue];

          if (v26)
          {
            v27 = +[MCCrypto createAndStoreNewActivationLockBypassCodeAndHashIfNeeded];
            [MCCloudConfigurationWriter setAMFISupervisionFromCloudConfiguration:v7];
          }

          LOBYTE(v9) = 1;
        }

LABEL_28:
        v6 = v7;
        goto LABEL_9;
      }

      v8 = [(MCCloudConfigurationWriter *)self _updateCloudConfigDetails:v7];
      if ([(MCCloudConfigurationWriter *)self _saveCloudConfigDetails:v8 outError:a4])
      {
        [(MCCloudConfigurationWriter *)self _saveSetAsideDetails:v8];

        goto LABEL_18;
      }
    }

    LOBYTE(v9) = 0;
    goto LABEL_28;
  }

  LOBYTE(v9) = 0;
LABEL_9:

  return v9;
}

- (BOOL)saveCloudConfigurationDetailsForPendingMigration:(id)a3 outError:(id *)a4
{
  v6 = a3;
  if (![(MCCloudConfigurationWriter *)self _verifyActivationState:a4]|| ![(MCCloudConfigurationWriter *)self _validateCloudConfigDetails:v6 outError:a4]|| ![(MCCloudConfigurationWriter *)self _verifyCloudConfigSourceWithDetails:v6 outError:a4])
  {
    goto LABEL_6;
  }

  if (![v6 count])
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Removing pending cloud configuration.", v17, 2u);
    }

    v12 = +[NSFileManager defaultManager];
    v13 = MDMCloudConfigurationPendingMigrationDetailsFilePath();
    v14 = [v12 fileExistsAtPath:v13];

    if (v14)
    {
      v15 = +[NSFileManager defaultManager];
      v16 = MDMCloudConfigurationPendingMigrationDetailsFilePath();
      [v15 removeItemAtPath:v16 error:0];
    }

    goto LABEL_12;
  }

  v7 = [(MCCloudConfigurationWriter *)self _updateCloudConfigDetails:v6];
  v8 = [(MCCloudConfigurationWriter *)self _savePendingCloudConfigDetails:v7 outError:a4];

  if (v8)
  {
LABEL_12:
    MDMSendPendingMigrationCloudConfigurationDetailsChangedNotification();
    v9 = 1;
    goto LABEL_7;
  }

LABEL_6:
  v9 = 0;
LABEL_7:

  return v9;
}

- (BOOL)finalizeCloudConfigurationOutError:(id *)a3
{
  v4 = +[NSFileManager defaultManager];
  v5 = MCCloudConfigurationSetAsideDetailsFilePath();
  if (([v4 fileExistsAtPath:v5] & 1) == 0)
  {

    v9 = 0;
    goto LABEL_8;
  }

  v6 = +[NSFileManager defaultManager];
  v7 = MCCloudConfigurationSetAsideDetailsFilePath();
  v14 = 0;
  v8 = [v6 removeItemAtPath:v7 error:&v14];
  v9 = v14;

  if (v8)
  {
LABEL_8:
    v12 = 1;
    goto LABEL_9;
  }

  v10 = _MCLogObjects[8];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to remove set aside cloud configuration. Error: %{public}@", buf, 0xCu);
  }

  if (a3)
  {
    v11 = v9;
    v12 = 0;
    *a3 = v9;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:

  return v12;
}

+ (void)setAMFISupervisionFromCloudConfiguration:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:kCCConfigurationSourceKey];
  v4 = [v3 intValue];

  switch(v4)
  {
    case 5u:
      v5 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
      {
        LOWORD(v7[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AMFI/SEP setting internal supervision to mimic configurator supervision", v7, 2u);
      }

      +[MDMProvisioningProfileTrust didSuperviseThroughConfigurator];
      break;
    case 2u:

      +[MDMProvisioningProfileTrust didSuperviseThroughConfigurator];
      break;
    case 1u:

      +[MDMProvisioningProfileTrust didSuperviseThroughADE];
      break;
    default:
      v6 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v7[0] = 67240192;
        v7[1] = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "AMFI/SEP ignoring supervision source: %{public}d", v7, 8u);
      }

      break;
  }
}

- (BOOL)_isCloudConfigurationAvailableInDEP
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = objc_opt_new();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008089C;
  v10[3] = &unk_10011CCD0;
  v12 = &v13;
  v10[4] = self;
  v5 = v3;
  v11 = v5;
  [v4 fetchConfigurationWithCompletionBlock:v10];
  if (dispatch_semaphore_wait(v5, 0x1BF08EB000uLL))
  {
    *(v14 + 24) = 1;
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Activation indicates device must be configured using DEP.", v9, 2u);
    }
  }

  v7 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v7;
}

- (BOOL)_verifyActivationState:(id *)a3
{
  v4 = [(MCCloudConfigurationWriter *)self _isActivated];
  if (!v4)
  {
    v5 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Cannot store cloud configuration because this device is not activated.", buf, 2u);
    }

    v6 = MCCloudConfigErrorDomain;
    v7 = MCErrorArray();
    v8 = [NSError MCErrorWithDomain:v6 code:33003 descriptionArray:v7 errorType:MCErrorTypeFatal, 0];

    if (a3)
    {
      v9 = v8;
      *a3 = v8;
    }
  }

  return v4;
}

- (BOOL)_validateCloudConfigDetails:(id)a3 outError:(id *)a4
{
  v13 = 0;
  v5 = [(MCCloudConfigurationWriter *)self _validateDetails:a3 outReasonWhyInvalid:&v13];
  v6 = v13;
  if (!v5)
  {
    v7 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot store cloud configuration because it is invalid: %@", buf, 0xCu);
    }

    v8 = MCCloudConfigErrorDomain;
    v9 = MCErrorArray();
    v10 = [NSError MCErrorWithDomain:v8 code:33002 descriptionArray:v9 errorType:MCErrorTypeFatal, 0];

    if (a4)
    {
      v11 = v10;
      *a4 = v10;
    }
  }

  return v5;
}

- (BOOL)_validateDetails:(id)a3 outReasonWhyInvalid:(id *)a4
{
  v5 = a3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_10008146C;
  v41 = sub_10008147C;
  v42 = 0;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100081484;
      v34[3] = &unk_10011CCF8;
      v6 = v5;
      v35 = v6;
      v36 = &v37;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100081548;
      v32[3] = &unk_10011CD20;
      v7 = objc_retainBlock(v34);
      v33 = v7;
      v8 = objc_retainBlock(v32);
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000815B4;
      v30[3] = &unk_10011CD20;
      v9 = v7;
      v31 = v9;
      v10 = objc_retainBlock(v30);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100081620;
      v28[3] = &unk_10011CD20;
      v11 = v9;
      v29 = v11;
      v12 = objc_retainBlock(v28);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10008168C;
      v25[3] = &unk_10011CCF8;
      v26 = v6;
      v27 = &v37;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100081860;
      v23[3] = &unk_10011CD20;
      v13 = objc_retainBlock(v25);
      v24 = v13;
      v14 = objc_retainBlock(v23);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000818CC;
      v21[3] = &unk_10011CD20;
      v15 = v13;
      v22 = v15;
      v16 = objc_retainBlock(v21);
      if ((v12[2])(v12, kCCOrganizationNameKey) && (v12[2])(v12, kCCOrganizationShortNameKey) && (v12[2])(v12, kCCOrganizationDepartmentKey) && (v12[2])(v12, kCCOrganizationAddressKey) && (v12[2])(v12, kCCOrganizationAddressLine1Key) && (v12[2])(v12, kCCOrganizationAddressLine2Key) && (v12[2])(v12, kCCOrganizationAddressLine3Key) && (v12[2])(v12, kCCOrganizationCityKey) && (v12[2])(v12, kCCOrganizationRegionKey) && (v12[2])(v12, kCCOrganizationZipCodeKey) && (v12[2])(v12, kCCOrganizationCountryKey) && (v12[2])(v12, kCCOrganizationPhoneKey) && (v12[2])(v12, kCCOrganizationMagicKey) && (v12[2])(v12, kCCOrganizationEmailKey) && (v12[2])(v12, kCCOrganizationSupportPhoneKey) && (v12[2])(v12, kCCOrganizationSupportEmailKey) && (v10[2])(v10, kCCMDMProtocolVersionKey) && (v8[2])(v8, kCCIsSupervisedKey) && (v8[2])(v8, kCCAllowPairingKey) && (v8[2])(v8, kCCIsMandatoryKey) && (v8[2])(v8, kCCIsMDMUnremovable) && (v8[2])(v8, kCCAwaitDeviceConfiguredKey) && (v8[2])(v8, kCCDeviceConfiguredKey) && (v8[2])(v8, kCCCloudConfigurationUICompleteKey) && (v8[2])(v8, kCCCloudConfigurationWasAppliedKey) && (v8[2])(v8, kCCPostSetupProfileWasInstalledKey) && (v8[2])(v8, kCCAttemptedFaceTimeSignInKey) && (v10[2])(v10, kCCConfigurationSourceKey) && (v14[2])(v14, kCCAnchorCertificatesKey) && (v14[2])(v14, kCCSupervisorHostCertificatesKey) && (v12[2])(v12, kCCConfigurationURLKey) && (v12[2])(v12, kCCConfigurationWebURLKey) && (v16[2])(v16, kCCSkipSetupKey) && (v8[2])(v8, kCCIsMultiUserKey) && (v8[2])(v8, kCCAutoAdvanceSetup) && (v12[2])(v12, kCCMAIDUsernameKey) && (v8[2])(v8, kCCMAIDHasCredentialKey) && (v12[2])(v12, kCCLanguageKey) && (v12[2])(v12, kCCRegionKey) && (v12[2])(v12, kCCLanguageScriptKey))
      {
        (v10[2])(v10, kCCProvisionalEnrollmentExpiryKey);
      }

      v17 = v35;
    }

    else
    {
      v17 = v38[5];
      v38[5] = @"not a dictionary";
    }
  }

  v18 = v38[5];
  if (a4 && v18)
  {
    v18 = v18;
    *a4 = v18;
  }

  v19 = v18 == 0;
  _Block_object_dispose(&v37, 8);

  return v19;
}

- (BOOL)_verifyCloudConfigSourceWithDetails:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 objectForKeyedSubscript:kCCConfigurationSourceKey], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "intValue"), v8, v9 != 1) && -[MCCloudConfigurationWriter _activationRecordIndicatesCloudConfigurationIsAvailable](self, "_activationRecordIndicatesCloudConfigurationIsAvailable") && -[MCCloudConfigurationWriter _isCloudConfigurationAvailableInDEP](self, "_isCloudConfigurationAvailableInDEP"))
  {
    v10 = MCCloudConfigErrorDomain;
    v11 = MCErrorArray();
    v12 = [NSError MCErrorWithDomain:v10 code:33004 descriptionArray:v11 errorType:MCErrorTypeFatal, 0];

    if (a4)
    {
      v13 = v12;
      *a4 = v12;
    }

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)_unpairFromDevicesIfNeededWithDetails:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = kCCAllowPairingKey;
  v7 = [v5 objectForKeyedSubscript:kCCAllowPairingKey];
  if (!v7 || (v8 = v7, [v5 objectForKeyedSubscript:v6], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v8, (v10 & 1) != 0) || (MCLockdownDeletePairingRecords() & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v13 = MCCloudConfigErrorDomain;
    v14 = MCErrorArray();
    v15 = [NSError MCErrorWithDomain:v13 code:33015 descriptionArray:v14 errorType:MCErrorTypeFatal, 0];

    if (a4)
    {
      v16 = v15;
      *a4 = v15;
    }

    v11 = 0;
  }

  return v11;
}

- (id)_updateCloudConfigDetails:(id)a3
{
  v3 = [a3 mutableCopy];
  v4 = kCCIsMDMUnremovable;
  v5 = [v3 objectForKeyedSubscript:kCCIsMDMUnremovable];
  if ([v5 BOOLValue])
  {
    v6 = [v3 objectForKeyedSubscript:kCCIsSupervisedKey];
    v7 = [v6 BOOLValue];

    if ((v7 & 1) == 0)
    {
      [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:v4];
    }
  }

  else
  {
  }

  v8 = kCCAwaitDeviceConfiguredKey;
  v9 = [v3 objectForKeyedSubscript:kCCAwaitDeviceConfiguredKey];
  if ([v9 BOOLValue])
  {
    v10 = [v3 objectForKeyedSubscript:kCCIsSupervisedKey];
    v11 = [v10 BOOLValue];

    if ((v11 & 1) == 0)
    {
      [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:v8];
    }
  }

  else
  {
  }

  v12 = [v3 objectForKeyedSubscript:kCCIsRapidReturnToServiceKey];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:v8];
  }

  v14 = kCCIsMultiUserKey;
  v15 = [v3 objectForKeyedSubscript:kCCIsMultiUserKey];
  if ([v15 BOOLValue])
  {
    if (MCGestaltSupportsMultiUser())
    {
      v16 = [v3 objectForKeyedSubscript:kCCIsSupervisedKey];
      v17 = [v16 BOOLValue];

      if (v17)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    [v3 removeObjectForKey:v14];
  }

  else
  {
  }

LABEL_18:
  v18 = +[MCActivationUtilities sharedInstance];
  v19 = [v18 isHRNMode];

  if ((v19 | 2) == 2)
  {
    v20 = kMCCCIsMultiUserKey;
    v21 = [v3 objectForKeyedSubscript:kMCCCIsMultiUserKey];
    v22 = [v21 BOOLValue];

    if (v22)
    {
      v23 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Cannot configure device for Shared iPad mode when in HRN mode. Ignoring Shared iPad flag.", v26, 2u);
      }

      [v3 removeObjectForKey:v20];
    }
  }

  v24 = [v3 copy];

  return v24;
}

- (id)_applyEnforcedCloudConfigRules:(id)a3
{
  v3 = [a3 mutableCopy];
  v4 = [v3 objectForKeyedSubscript:kCCIsRapidReturnToServiceKey];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:kCCAwaitDeviceConfiguredKey];
  }

  v6 = [v3 copy];

  return v6;
}

- (BOOL)_saveCloudConfigDetails:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = kCCIsSupervisedKey;
    v9 = v7;
    v10 = [v6 objectForKeyedSubscript:v8];
    *buf = 138543362;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Storing cloud configuration. (supervised: %{public}@)", buf, 0xCu);
  }

  v11 = MCCloudConfigurationDetailsFilePath();
  v12 = [(MCCloudConfigurationWriter *)self _writeDetails:v6 toFile:v11];

  if (!v12)
  {
    v13 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not store cloud configuration.", buf, 2u);
    }

    v14 = MCCloudConfigErrorDomain;
    v15 = MCErrorArray();
    v16 = [NSError MCErrorWithDomain:v14 code:33023 descriptionArray:v15 errorType:MCErrorTypeFatal, 0];

    if (a4)
    {
      v17 = v16;
      *a4 = v16;
    }
  }

  return v12;
}

- (void)_saveSetAsideDetails:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating CloudConfigUIComplete, CloudConfigWasApplied, and PostSetupProfileWasInstalled keys for set aside details.", buf, 2u);
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:kCCCloudConfigurationUICompleteKey];
  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:kCCCloudConfigurationWasAppliedKey];
  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:kCCPostSetupProfileWasInstalledKey];
  v6 = MCCloudConfigurationSetAsideDetailsFilePath();
  v7 = [(MCCloudConfigurationWriter *)self _writeDetails:v4 toFile:v6];

  if ((v7 & 1) == 0)
  {
    v8 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not store set aside details.", v13, 2u);
    }
  }

  v9 = MCCloudConfigurationSetAsideDetailsFilePath();
  v10 = MCSetSkipBackupAttributeToItemAtPath();

  if ((v10 & 1) == 0)
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Could not mark set aside cloud configuration to be excluded from backup.", v12, 2u);
    }
  }
}

- (BOOL)_savePendingCloudConfigDetails:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Storing pending cloud configuration for migration", buf, 2u);
  }

  v8 = MDMCloudConfigurationPendingMigrationDetailsFilePath();
  v9 = [(MCCloudConfigurationWriter *)self _writeDetails:v6 toFile:v8];

  if (v9)
  {
    v10 = MDMCloudConfigurationPendingMigrationDetailsFilePath();
    v11 = MCSetSkipBackupAttributeToItemAtPath();

    if ((v11 & 1) == 0)
    {
      v12 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not mark pending cloud configuration to be excluded from backup.", v19, 2u);
      }
    }
  }

  else
  {
    v13 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not store pending cloud configuration.", v20, 2u);
    }

    v14 = MCCloudConfigErrorDomain;
    v15 = MCErrorArray();
    v16 = [NSError MCErrorWithDomain:v14 code:33023 descriptionArray:v15 errorType:MCErrorTypeFatal, 0];

    if (a4)
    {
      v17 = v16;
      *a4 = v16;
    }
  }

  return v9;
}

@end