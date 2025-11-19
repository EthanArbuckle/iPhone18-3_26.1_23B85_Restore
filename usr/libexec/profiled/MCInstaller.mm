@interface MCInstaller
+ (id)_installationFailureErrorWithUnderlyingError:(id)a3;
+ (id)considerProfilesInstalledDuringBuddyForManagement;
+ (id)deviceIsSupervisedError;
+ (id)deviceNotSupervisedError;
+ (id)notInstalledByMDMError;
+ (id)notSupportedUnderMultiUserModeError;
+ (id)sharedInstaller;
+ (void)_setPathsSystemProfileStorageDirectory:(id)a3 userProfileStorageDirectory:(id)a4;
+ (void)isInteractiveProfileInstallationAllowedBySDP:(id)a3 completion:(id)a4;
- (BOOL)_allowsPasswordPoliciesFromProfile:(id)a3 outError:(id *)a4;
- (BOOL)_overrideProfileValidation;
- (BOOL)_promptUserForComplianceWithRestrictions:(id)a3 handler:(id)a4 interactionClient:(id)a5 outPasscodeContextWrapper:(id *)a6 outError:(id *)a7;
- (BOOL)_promptUserForMAIDSignIn:(id)a3 personaID:(id)a4 handler:(id)a5 interactionClient:(id)a6 outError:(id *)a7;
- (BOOL)_showWarnings:(id)a3 interactionClient:(id)a4 outError:(id *)a5;
- (BOOL)_showWarningsForProfile:(id)a3 interactionClient:(id)a4 outError:(id *)a5;
- (BOOL)_showWarningsForUpdatingProfile:(id)a3 originalProfile:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (BOOL)deviceSupervisionRequiredForPayload:(id)a3;
- (BOOL)interactionClient:(id)a3 didRequestPreflightUserInputResponses:(id)a4 forPayloadIndex:(unint64_t)a5 outError:(id *)a6;
- (BOOL)isCertificateReference:(id)a3 aliasedInDependencyManager:(id)a4;
- (BOOL)sendPurgatoryProfileData:(id)a3 identifier:(id)a4 targetDevice:(unint64_t)a5 outError:(id *)a6;
- (MCInstaller)init;
- (id)_assumeOwnershipProfileHandler:(id)a3 options:(id)a4 source:(id)a5 outError:(id *)a6;
- (id)_badProvisioningProfileError;
- (id)_deviceLockedError;
- (id)_errorUnacceptablePayload:(id)a3;
- (id)_guardAgainstNoMDMPayloadWithNewProfile:(id)a3 oldProfile:(id)a4;
- (id)_installProfileHandler:(id)a3 options:(id)a4 interactionClient:(id)a5 source:(id)a6 outError:(id *)a7;
- (id)_installationHaltedTopLevelError;
- (id)_installedProfileWithIdentifier:(id)a3 installationType:(int64_t)a4;
- (id)_invalidInputError;
- (id)_malformedPayloadErrorInternal:(BOOL)a3;
- (id)_malformedPayloadErrorWithUnderlyingError:(id)a3;
- (id)_managingProfileIdentifierForProfileIdentifier:(id)a3;
- (id)_preflightProfileForInstallationOnHomePod:(id)a3;
- (id)_preflightProfileForInstallationOnWatch:(id)a3;
- (id)_profileDrivenEnrollmentBlocked;
- (id)_profileDrivenUserEnrollmentNotSupportedError;
- (id)_profileNotEligibleErrorWithProfile:(id)a3;
- (id)_reallyRemoveInstalledProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 options:(id)a5 source:(id)a6;
- (id)_reallyRemoveProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 profileInstalled:(BOOL)a5 targetDeviceType:(unint64_t)a6 options:(id)a7 source:(id)a8;
- (id)_targetDeviceArchivedError;
- (id)_targetDeviceErrorWithUnderlyingError:(id)a3;
- (id)_targetDeviceMismatchError;
- (id)_targetDevicePreflightFailedError;
- (id)_targetDeviceUnavailableError;
- (id)_uiProfileInstallationDisabledTopLevelErrorWithCause:(id)a3;
- (id)_userCancelledErrorWithFriendlyName:(id)a3;
- (id)_validateMDMReplacementNewProfile:(id)a3 oldProfile:(id)a4 client:(id)a5;
- (id)_validateNewMDMProfile:(id)a3 installationOption:(id)a4;
- (id)_watchInformationOutIsCellularSupported:(BOOL *)a3;
- (id)installProfileData:(id)a3 options:(id)a4 interactionClient:(id)a5 source:(id)a6 outError:(id *)a7;
- (id)pathToInstalledProfileByIdentifier:(id)a3 installationType:(int64_t)a4;
- (id)pathToInstalledProfileByUUID:(id)a3;
- (id)pathToUninstalledProfileByIdentifier:(id)a3 installationType:(int64_t)a4 targetDeviceType:(unint64_t)a5;
- (id)peekPurgatoryProfileDataForTargetDevice:(unint64_t)a3;
- (id)popProfileDataAtHeadOfInstallationQueue;
- (id)removeProvisioningProfileUUID:(id)a3 sender:(id)a4;
- (id)setAsideAccountIdentifiersForPayloadClass:(Class)a3;
- (id)setAsideDictionariesForPayloadHandlerClass:(Class)a3;
- (id)updateProfileWithIdentifier:(id)a3 interactionClient:(id)a4 installForSystem:(BOOL)a5 source:(id)a6 outError:(id *)a7;
- (id)verifiedMDMProfileIdentifierWithCleanUp;
- (int64_t)_targetValidationStatusForProfile:(id)a3;
- (void)_checkinWithMdmd;
- (void)_cleanUpAfterRemovingProfileWithIdentifier:(id)a3 installedForUser:(BOOL)a4 profileHandler:(id)a5 oldRestrictions:(id)a6;
- (void)_continueQueueingProfile:(id)a3 profileData:(id)a4 forDevice:(unint64_t)a5 completion:(id)a6;
- (void)_postPurgatoryFollowUpForProfileData:(id)a3 targetDevice:(unint64_t)a4;
- (void)_promptUserForRestoreWithAccountID:(id)a3 personaID:(id)a4 interactionClient:(id)a5;
- (void)_purgatoryWorkerQueue_didPurgePurgatory:(BOOL)a3;
- (void)_queueProfileData:(id)a3 profile:(id)a4 forDevice:(unint64_t)a5 completion:(id)a6;
- (void)_removeOrphanedCertificateDependencyManager:(id)a3 persistentID:(id)a4 persona:(id)a5;
- (void)_removeOrphanedResourcesOptions:(id)a3 includingAccounts:(BOOL)a4;
- (void)_replacePurgatoryProfilesForTargetDevice:(unint64_t)a3;
- (void)_sendMDMEnrollmentEventWithInstallationOptions:(id)a3;
- (void)_updateCDPWithNewPasscodeContextWrapper:(id)a3 passcodeType:(int)a4;
- (void)addSetAsideAccountIdentifier:(id)a3 forPayloadClass:(Class)a4;
- (void)addSetAsideDictionary:(id)a3 forPayloadHandlerClass:(Class)a4;
- (void)purgePurgatoryProfileWithIdentifier:(id)a3 targetDevice:(unint64_t)a4;
- (void)purgePurgatoryProfilesForTargetDevice:(unint64_t)a3;
- (void)queueProfileDataForInstallation:(id)a3 originalFileName:(id)a4 completion:(id)a5;
- (void)recomputeProfileRestrictionsWithCompletionBlock:(id)a3;
- (void)removeManagedProfilesIfNecessary;
- (void)removeProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 options:(id)a5 source:(id)a6;
- (void)removeUninstalledProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 targetDeviceType:(unint64_t)a5;
@end

@implementation MCInstaller

+ (id)sharedInstaller
{
  if (qword_100136B68 != -1)
  {
    sub_1000C27C4();
  }

  v3 = qword_100136B60;

  return v3;
}

- (MCInstaller)init
{
  v10.receiver = self;
  v10.super_class = MCInstaller;
  v2 = [(MCInstaller *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    queuedProfiles = v2->_queuedProfiles;
    v2->_queuedProfiles = v3;

    v5 = dispatch_queue_create("MCInstaller Purgatory worker queue", 0);
    purgatoryWorkerQueue = v2->_purgatoryWorkerQueue;
    v2->_purgatoryWorkerQueue = v5;

    v7 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.managedconfiguration.profiled"];
    followUpController = v2->_followUpController;
    v2->_followUpController = v7;
  }

  return v2;
}

- (id)pathToInstalledProfileByIdentifier:(id)a3 installationType:(int64_t)a4
{
  v5 = a3;
  v6 = +[MCManifest sharedManifest];
  v7 = [v6 allInstalledProfileIdentifiers];

  if ([v7 containsObject:v5])
  {
    if (a4 == 2)
    {
      sub_100046460();
    }

    else
    {
      sub_1000464B0();
    }
    v9 = ;
    v10 = [v5 MCHashedFilenameWithExtension:@"stub"];
    v8 = [v9 stringByAppendingPathComponent:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)pathToUninstalledProfileByIdentifier:(id)a3 installationType:(int64_t)a4 targetDeviceType:(unint64_t)a5
{
  v6 = a3;
  v7 = +[MCHoldingTankManifest sharedManifest];
  v8 = [v7 uninstalledProfileIdentifiersForDevice:a5];

  if ([v8 containsObject:v6])
  {
    v9 = +[MCHoldingTankManifest sharedManifest];
    v10 = [v9 pathToHoldingTankProfileDataForIdentifier:v6 targetDevice:a5 createDirectory:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)pathToInstalledProfileByUUID:(id)a3
{
  v25 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = +[MCManifest sharedManifest];
  v4 = [v3 allInstalledProfileIdentifiers];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v8 = &MCRestrictedBoolValueKey_ptr;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v29 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v28 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      v12 = [v8[69] sharedManifest];
      v13 = [v12 allInstalledUserProfileIdentifiers];
      v14 = [v13 containsObject:v10];

      if (v14)
      {
        sub_100046460();
      }

      else
      {
        sub_1000464B0();
      }
      v15 = ;
      v16 = [v10 MCHashedFilenameWithExtension:@"stub"];
      v17 = [v15 stringByAppendingPathComponent:v16];

      v18 = [NSData dataWithContentsOfFile:v17];
      v27 = 0;
      v19 = [MCProfile profileWithData:v18 outError:&v27];
      v20 = v19;
      if (v27)
      {
        v21 = 0;
      }

      else
      {
        v22 = [v19 UUID];
        v23 = [v22 isEqualToString:v25];

        v21 = v23 ? v17 : 0;
        v8 = &MCRestrictedBoolValueKey_ptr;
      }

      objc_autoreleasePoolPop(v11);
      if (v21)
      {
        break;
      }

      if (v6 == ++v9)
      {
        v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v21 = 0;
  }

  return v21;
}

- (id)popProfileDataAtHeadOfInstallationQueue
{
  if ([(NSMutableArray *)self->_queuedProfiles count])
  {
    v3 = [(NSMutableArray *)self->_queuedProfiles objectAtIndex:0];
    [(NSMutableArray *)self->_queuedProfiles removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_badProvisioningProfileError
{
  v2 = MCProvisioningProfileErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:25000 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (void)queueProfileDataForInstallation:(id)a3 originalFileName:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v49 = 0;
  v10 = [MCProfile profileWithData:v8 fileName:a4 allowEmptyPayload:0 outError:&v49];
  v11 = v49;
  if (!v11)
  {
    if (![v10 isStub])
    {
      goto LABEL_9;
    }

    v17 = _MCLogObjects[9];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Stub profile cannot be queued for installation", buf, 2u);
    }

    v11 = [(MCInstaller *)self _malformedPayloadErrorInternal:1];
    if (!v11)
    {
LABEL_9:
      if (![v10 targetDeviceType])
      {
        v23 = +[MCProfile thisDeviceType];
        if (v23 != 1)
        {
          v30 = v23;
          v31 = _MCLogObjects[9];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v31;
            v33 = [v10 identifier];
            *buf = 138543618;
            v51 = v33;
            v52 = 2050;
            v53 = v30;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Profile '%{public}@' does not define a target device. Assuming %{public}lu...", buf, 0x16u);
          }

          [(MCInstaller *)self _queueProfileData:v8 profile:v10 forDevice:v30 completion:v9];
          goto LABEL_30;
        }

        v24 = [(MCInstaller *)self _preflightProfileForInstallationOnWatch:v10];

        v25 = [(MCInstaller *)self _preflightProfileForInstallationOnHomePod:v10];

        v26 = _MCLogObjects[9];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v26;
          v28 = [v10 identifier];
          *buf = 138543362;
          v51 = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Profile '%{public}@' does not define a target device. Asking user to resolve...", buf, 0xCu);
        }

        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_100046ED0;
        v45[3] = &unk_10011C5D8;
        v45[4] = self;
        v46 = v8;
        v47 = v10;
        v48 = v9;
        [MCTargetDeviceResolver showResolutionPromptWithWatchOption:v24 == 0 homePodOption:v25 == 0 completionBlock:v45];

        v29 = v46;
LABEL_29:

LABEL_30:
        v12 = 0;
        goto LABEL_31;
      }

      v38 = _NSConcreteStackBlock;
      v39 = 3221225472;
      v40 = sub_100046EE4;
      v41 = &unk_10011C600;
      v42 = self;
      v18 = v10;
      v43 = v18;
      v19 = v9;
      v44 = v19;
      v20 = objc_retainBlock(&v38);
      v21 = [(MCInstaller *)self _targetValidationStatusForProfile:v18, v38, v39, v40, v41, v42];
      if (v21 <= 1)
      {
        if (!v21)
        {
          v35 = _MCLogObjects[9];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = v35;
            v37 = +[MCProfile stringForDeviceType:](MCProfile, "stringForDeviceType:", [v18 targetDeviceType]);
            *buf = 138543362;
            v51 = v37;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Profile-defined target-device-type %{public}@ successfully validated", buf, 0xCu);
          }

          -[MCInstaller _queueProfileData:profile:forDevice:completion:](self, "_queueProfileData:profile:forDevice:completion:", v8, v18, [v18 targetDeviceType], v19);
          goto LABEL_28;
        }

        if (v21 == 1)
        {
          v22 = [(MCInstaller *)self _targetDeviceMismatchError];
          goto LABEL_27;
        }
      }

      else
      {
        switch(v21)
        {
          case 2:
            v22 = [(MCInstaller *)self _targetDevicePreflightFailedError];
            goto LABEL_27;
          case 3:
            v22 = [(MCInstaller *)self _targetDeviceUnavailableError];
            goto LABEL_27;
          case 4:
            v22 = [(MCInstaller *)self _targetDeviceArchivedError];
LABEL_27:
            v34 = v22;
            (v20[2])(v20, v22);

            break;
        }
      }

LABEL_28:

      v29 = v43;
      goto LABEL_29;
    }
  }

  v12 = v11;
  v13 = [(MCInstaller *)self _malformedPayloadErrorWithUnderlyingError:v11];
  v14 = _MCLogObjects[9];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = v14;
    v16 = [v13 MCVerboseDescription];
    *buf = 138543362;
    v51 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Profile cannot be queued for installation. Error: %{public}@", buf, 0xCu);
  }

  (*(v9 + 2))(v9, v13, v10, 99);

LABEL_31:
}

- (int64_t)_targetValidationStatusForProfile:(id)a3
{
  v4 = a3;
  v5 = [v4 targetDeviceType];
  v6 = 1;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      if ((MCGestaltIsPhone() & 1) == 0)
      {
        IsAppleTV = MCGestaltIsiPad();
        goto LABEL_22;
      }

      v6 = 0;
      goto LABEL_23;
    }

    if (v5 != 2)
    {
      goto LABEL_23;
    }

    if ((MCGestaltIsPhone() & 1) != 0 || MCGestaltIsWatch())
    {
      v8 = [(MCInstaller *)self _preflightProfileForInstallationOnWatch:v4];

      if (!v8)
      {
        v9 = +[MCTargetDeviceResolver watchAvailability];
        if (v9 >= 3)
        {
          v6 = 3;
        }

        else
        {
          v6 = qword_1000DC9B8[v9];
        }

        goto LABEL_23;
      }

LABEL_17:
      v6 = 2;
      goto LABEL_23;
    }

LABEL_24:
    v6 = 1;
    goto LABEL_23;
  }

  switch(v5)
  {
    case 3:
      if ((MCGestaltIsPhone() & 1) != 0 || (MCGestaltIsiPad() & 1) != 0 || MCGestaltIsHomePod())
      {
        v10 = [(MCInstaller *)self _preflightProfileForInstallationOnHomePod:v4];

        if (!v10)
        {
          if (+[MCTargetDeviceResolver isHomePodAvailable])
          {
            v6 = 0;
          }

          else
          {
            v6 = 3;
          }

          break;
        }

        goto LABEL_17;
      }

      goto LABEL_24;
    case 4:
      IsAppleTV = MCGestaltIsAppleTV();
      goto LABEL_22;
    case 6:
      IsAppleTV = MCGestaltIsVisionDevice();
LABEL_22:
      v6 = IsAppleTV ^ 1u;
      break;
  }

LABEL_23:

  return v6;
}

+ (void)isInteractiveProfileInstallationAllowedBySDP:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MCPayload payloadsRequiringRatchetWithStolenDeviceProtection];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = v5;
  v8 = [v5 payloads];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([v7 containsObject:objc_opt_class()])
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v11 |= isKindOfClass;
          v12 |= isKindOfClass ^ 1;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  if (v12 & 1) != 0 || (v11)
  {
    [DMCRatchet isAuthorizedForOperation:v11 & ~v12 & 1 completion:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)_queueProfileData:(id)a3 profile:(id)a4 forDevice:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (a5 == 99)
  {
    v13 = _MCLogObjects[9];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v11 identifier];
      *buf = 138543362;
      v42 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Profile %{public}@ cancelled queueing for installation", buf, 0xCu);
    }

    v12[2](v12, 0, v11, 99);
  }

  else
  {
    v16 = +[MCRestrictionManager sharedManager];
    v17 = [v16 effectiveRestrictedBoolForSetting:MCFeatureUIConfigurationProfileInstallationAllowed];

    if (v17 != 2)
    {
      if (a5 == 6 && (+[DMCFeatureFlags isVisionProfileEnrollEnabled](DMCFeatureFlags, "isVisionProfileEnrollEnabled") & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v11 isMDMProfile])
      {
        v27 = _MCLogObjects[9];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = v27;
          v29 = [v11 identifier];
          v30 = [MCProfile stringForDeviceType:6];
          *buf = 138543618;
          v42 = v29;
          v43 = 2114;
          v44 = v30;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Profile %{public}@ failed queueing for %{public}@ because profile-driven MDM enrollment is blocked", buf, 0x16u);
        }

        v31 = [(MCInstaller *)self _profileDrivenEnrollmentBlocked];
        (v12)[2](v12, v31, v11, 6);
      }

      else
      {
        if (![v11 isUserEnrollmentProfile])
        {
          if (a5 == 3)
          {
            [(MCInstaller *)self _continueQueueingProfile:v11 profileData:v10 forDevice:3 completion:v12];
          }

          else
          {
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_10004787C;
            v36[3] = &unk_10011C628;
            v39 = v12;
            v36[4] = self;
            v37 = v11;
            v40 = a5;
            v38 = v10;
            [MCInstaller isInteractiveProfileInstallationAllowedBySDP:v37 completion:v36];
          }

          goto LABEL_26;
        }

        v32 = _MCLogObjects[9];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = v32;
          v34 = [v11 identifier];
          v35 = [MCProfile stringForDeviceType:a5];
          *buf = 138543618;
          v42 = v34;
          v43 = 2114;
          v44 = v35;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Profile %{public}@ failed queueing for %{public}@ because profile-driven user enrollment is not supported", buf, 0x16u);
        }

        v31 = [(MCInstaller *)self _profileDrivenUserEnrollmentNotSupportedError];
        (v12)[2](v12, v31, v11, a5);
      }

      goto LABEL_26;
    }

    v18 = MCErrorRestrictionCauseProfile;
    v19 = +[MCRestrictionManager sharedManager];
    v20 = [v19 effectiveRestrictedBoolForSetting:MCFeatureLockdownModeAllowed];

    if (v20 == 1)
    {
      v21 = MCErrorRestrictionCauseLockdownMode;

      v18 = v21;
    }

    v22 = _MCLogObjects[9];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = v22;
      v24 = [v11 identifier];
      v25 = [MCProfile stringForDeviceType:a5];
      *buf = 138543618;
      v42 = v24;
      v43 = 2114;
      v44 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Profile %{public}@ failed queueing for %{public}@ because UI profile installation is restricted", buf, 0x16u);
    }

    v26 = [(MCInstaller *)self _uiProfileInstallationDisabledTopLevelErrorWithCause:v18];
    (v12)[2](v12, v26, v11, a5);
  }

LABEL_26:
}

- (void)_continueQueueingProfile:(id)a3 profileData:(id)a4 forDevice:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [MCProfile stringForDeviceType:a5];
  if ([MCTargetDeviceResolver purgatorySupportedForDevice:a5])
  {
    *v37 = 0;
    *&v37[8] = v37;
    *&v37[16] = 0x3032000000;
    v38 = sub_100047CFC;
    v39 = sub_100047D0C;
    v40 = 0;
    purgatoryWorkerQueue = self->_purgatoryWorkerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100047D14;
    block[3] = &unk_10011C650;
    block[4] = self;
    v27 = v11;
    v15 = v10;
    v29 = v37;
    v30 = a5;
    v28 = v15;
    dispatch_sync(purgatoryWorkerQueue, block);
    v16 = *(*&v37[8] + 40);
    v17 = _MCLogObjects[9];
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = [v15 identifier];
        v20 = [*(*&v37[8] + 40) MCVerboseDescription];
        *buf = 138543874;
        v32 = v19;
        v33 = 2114;
        v34 = v13;
        v35 = 2114;
        v36 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Profile %{public}@ failed queueing for %{public}@ with purgatory error: %{public}@", buf, 0x20u);
      }

      v12[2](v12, *(*&v37[8] + 40), v15, a5);
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v15 identifier];
        *buf = 138543618;
        v32 = v24;
        v33 = 2114;
        v34 = v13;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Profile %{public}@ succesfully queued in holding tank for %{public}@", buf, 0x16u);
      }

      v25 = [(MCInstaller *)self _installationHaltedTopLevelError];
      (v12)[2](v12, v25, v15, a5);
    }

    _Block_object_dispose(v37, 8);
  }

  else
  {
    [(NSMutableArray *)self->_queuedProfiles addObject:v11];
    v21 = _MCLogObjects[9];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = [v10 identifier];
      *v37 = 138543618;
      *&v37[4] = v23;
      *&v37[12] = 2114;
      *&v37[14] = v13;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Profile %{public}@ successfully queued for Settings jump for %{public}@", v37, 0x16u);
    }

    v12[2](v12, 0, v10, a5);
  }
}

- (id)_malformedPayloadErrorInternal:(BOOL)a3
{
  v3 = &MCProfileErrorDomain;
  if (!a3)
  {
    v3 = &MCInstallationErrorDomain;
  }

  v4 = *v3;
  if (a3)
  {
    v5 = 1000;
  }

  else
  {
    v5 = 4000;
  }

  v6 = MCErrorArray();
  v7 = [NSError MCErrorWithDomain:v4 code:v5 descriptionArray:v6 errorType:MCErrorTypeFatal, 0];

  return v7;
}

- (id)_malformedPayloadErrorWithUnderlyingError:(id)a3
{
  v3 = MCInstallationErrorDomain;
  v4 = a3;
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:4000 descriptionArray:v5 underlyingError:v4 errorType:MCErrorTypeFatal, 0];

  return v6;
}

- (id)_targetDeviceErrorWithUnderlyingError:(id)a3
{
  v3 = MCInstallationErrorDomain;
  v4 = a3;
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:4035 descriptionArray:v5 underlyingError:v4 errorType:MCErrorTypeFatal, 0];

  return v6;
}

- (id)_targetDeviceUnavailableError
{
  v2 = MCProfileErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:1012 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (id)_targetDeviceArchivedError
{
  v2 = MCProfileErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:1014 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (id)_targetDevicePreflightFailedError
{
  v2 = MCProfileErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:1011 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (id)_targetDeviceMismatchError
{
  v2 = MCProfileErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:1015 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (id)_uiProfileInstallationDisabledTopLevelErrorWithCause:(id)a3
{
  v3 = a3;
  v4 = MCInstallationErrorDomain;
  v5 = MCErrorArray();
  v6 = MCErrorTypeFatal;
  if (v3)
  {
    v10 = MCErrorRestrictionCauseKey;
    v11 = v3;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1, 0];
    v8 = [NSError MCErrorWithDomain:v4 code:4037 descriptionArray:v5 suggestion:0 USEnglishSuggestion:0 underlyingError:0 errorType:v6 extraUserInfo:v7];
  }

  else
  {
    v8 = [NSError MCErrorWithDomain:v4 code:4037 descriptionArray:v5 suggestion:0 USEnglishSuggestion:0 underlyingError:0 errorType:MCErrorTypeFatal extraUserInfo:0];
  }

  return v8;
}

- (id)_installationHaltedTopLevelError
{
  v2 = MCInstallationErrorDomain;
  v3 = MCErrorArray();
  v4 = MCProfileErrorDomain;
  v5 = MCErrorArray();
  v6 = MCErrorTypeFatal;
  v7 = [NSError MCErrorWithDomain:v4 code:1013 descriptionArray:v5 errorType:MCErrorTypeFatal, 0];
  v8 = [NSError MCErrorWithDomain:v2 code:4036 descriptionArray:v3 underlyingError:v7 errorType:v6];

  return v8;
}

- (id)_invalidInputError
{
  v2 = MCInstallationErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:4006 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (id)_userCancelledErrorWithFriendlyName:(id)a3
{
  v3 = MCInstallationErrorDomain;
  v4 = MCErrorArray();
  v5 = [NSError MCErrorWithDomain:v3 code:4004 descriptionArray:v4 errorType:MCErrorTypeFatal, a3, 0];

  return v5;
}

- (id)_profileDrivenEnrollmentBlocked
{
  v2 = MCInstallationErrorDomain;
  v3 = MCErrorArrayByDevice();
  v4 = [NSError MCErrorWithDomain:v2 code:4054 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (id)_profileDrivenUserEnrollmentNotSupportedError
{
  v2 = MCInstallationErrorDomain;
  v3 = MCErrorArrayByDevice();
  v4 = [NSError MCErrorWithDomain:v2 code:4055 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (BOOL)_promptUserForComplianceWithRestrictions:(id)a3 handler:(id)a4 interactionClient:(id)a5 outPasscodeContextWrapper:(id *)a6 outError:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (v15)
  {
    v16 = +[MCPasscodeManagerWriter sharedManager];
    v17 = [v16 currentPasscodeCompliesWithPolicyFromRestrictions:v13 outError:0];

    if (v17)
    {
      currentlyInstallingRestrictions = self->_currentlyInstallingRestrictions;
      self->_currentlyInstallingRestrictions = 0;

      v19 = 0;
      goto LABEL_46;
    }

    v77 = 0;
    v21 = [v15 requestCurrentPasscodeOutExtractablePasscodeContext:&v77];
    v22 = v77;
    v68 = a7;
    v71 = v22;
    if (v21)
    {
      v23 = v22;
      v24 = +[MCPasscodeManagerWriter sharedManager];
      v76 = 0;
      [v24 unlockDeviceWithPasscodeContext:v23 outError:&v76];
      v25 = v76;

      if (v25)
      {
        v19 = 0;
        goto LABEL_43;
      }

      v64 = a6;
      v65 = v14;
      objc_storeStrong(&self->_currentlyInstallingRestrictions, a3);
      v66 = +[MCPasscodeManagerWriter sharedManager];
      v28 = +[MCRestrictionManagerWriter sharedManager];
      v29 = [v28 effectiveValueForSetting:MCFeaturePasscodeKeyboardComplexity];
      v30 = [v29 intValue];

      v75 = 0;
      v31 = [MCPasscodeManagerWriter unlockScreenTypeForRestrictions:v13 outSimplePasscodeType:&v75];
      if (v31 <= v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = v31;
      }

      v33 = +[MCRestrictionManagerWriter sharedManager];
      v34 = [v33 effectiveValueForSetting:MCFeatureSimplePasscodeComplexity];
      v35 = [v34 intValue];

      v36 = v75;
      if (v75 < v35)
      {
        v75 = v35;
        v36 = v35;
      }

      if (v36)
      {
        v37 = 3;
      }

      else
      {
        v37 = 4;
      }

      if (v36 == 1)
      {
        v38 = 7;
      }

      else
      {
        v38 = v37;
      }

      if (v32)
      {
        v38 = 3;
      }

      v81[0] = @"0";
      if (v32 == 1)
      {
        v39 = 5;
      }

      else
      {
        v39 = v38;
      }

      v80[0] = kMCIDUUIDKey;
      v80[1] = kMCIDTitleKey;
      v40 = MCLocalizedString();
      v81[1] = v40;
      v80[2] = kMCIDDescriptionKey;
      v69 = MCLocalizedString();
      v81[2] = v69;
      v80[3] = kMCIDRetypeDescriptionKey;
      v41 = MCLocalizedString();
      v81[3] = v41;
      v80[4] = kMCIDMismatchDescriptionKey;
      v42 = MCLocalizedString();
      v81[4] = v42;
      v80[5] = kMCIDFinePrintKey;
      v43 = [MCPasscodeManagerWriter localizedDescriptionOfPasscodePolicyFromRestrictions:v13];
      v81[5] = v43;
      v80[6] = kMCIDFieldTypeKey;
      v44 = [NSNumber numberWithUnsignedInt:v39];
      v80[7] = kMCIDFlagsKey;
      v81[6] = v44;
      v81[7] = &off_1001271E0;
      v45 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:8];
      v46 = [v45 mutableCopy];

      v63 = v46;
      v78 = v46;
      v47 = [NSArray arrayWithObjects:&v78 count:1];
      v79 = v47;
      v70 = [NSArray arrayWithObjects:&v79 count:1];

      v48 = 0;
      v67 = kMCIDResponseKey;
      while (1)
      {
        v74 = 0;
        v49 = [v15 requestUserInput:v70 delegate:self outResult:&v74];
        v50 = v74;
        v51 = v50;
        if (!v49 || !v50)
        {
          v52 = [v65 profile];
          v57 = [v52 friendlyName];
          v25 = [(MCInstaller *)self _userCancelledErrorWithFriendlyName:v57];

          goto LABEL_37;
        }

        if (![v50 count])
        {
          v25 = [(MCInstaller *)self _invalidInputError];
          goto LABEL_38;
        }

        v52 = [v51 objectAtIndexedSubscript:0];
        if (![v52 count])
        {
          v25 = [(MCInstaller *)self _invalidInputError];
          goto LABEL_37;
        }

        v53 = [v52 objectAtIndexedSubscript:0];
        v54 = [v53 objectForKeyedSubscript:v67];
        v73 = 0;
        v19 = [MCExtractablePasscodeContextWrapper contextWrapperForExtractablePasscode:v54 outError:&v73];
        v25 = v73;

        if (v25)
        {
          break;
        }

        v55 = [v19 externalizedContext];
        v56 = [MCPasscodeManagerWriter passcodeContext:v55 compliesWithPolicyFromRestrictions:v13 checkHistory:1 outError:0];

        v48 = v19;
        if (v56)
        {
          goto LABEL_39;
        }
      }

      v48 = v19;
LABEL_37:

LABEL_38:
      v19 = v48;
      if (v25)
      {
        goto LABEL_41;
      }

LABEL_39:
      v58 = [v19 externalizedContext];
      v72 = 0;
      [v66 changePasscodeWithOldPasscodeContext:v71 newPasscodeContext:v58 skipRecovery:0 senderBundleID:@"com.apple.managedconfiguration.profiled.MCInstaller" outError:&v72];
      v25 = v72;

      if (!v25)
      {
        [(MCInstaller *)self _updateCDPWithNewPasscodeContextWrapper:v19 passcodeType:v75];
      }

LABEL_41:

      a6 = v64;
      v14 = v65;
      v26 = v66;
    }

    else
    {
      v26 = [v14 profile];
      v27 = [v26 friendlyName];
      v25 = [(MCInstaller *)self _userCancelledErrorWithFriendlyName:v27];

      v19 = 0;
    }

LABEL_43:
    v59 = self->_currentlyInstallingRestrictions;
    self->_currentlyInstallingRestrictions = 0;

    if (v25)
    {
      if (v68)
      {
        v60 = v25;
        v20 = 0;
        *v68 = v25;
      }

      else
      {
        v20 = 0;
      }

LABEL_50:

      goto LABEL_51;
    }

LABEL_46:
    if (a6)
    {
      v61 = v19;
      v25 = 0;
      *a6 = v19;
    }

    else
    {
      v25 = 0;
    }

    v20 = 1;
    goto LABEL_50;
  }

  v20 = 1;
LABEL_51:

  return v20;
}

- (void)_updateCDPWithNewPasscodeContextWrapper:(id)a3 passcodeType:(int)a4
{
  v5 = a3;
  v6 = objc_alloc_init(CDPContext);
  [v6 setType:6];
  if (a4 == -1)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = [[CDPStateController alloc] initWithContext:v6];
  v9 = [v5 passcode];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100048E68;
  v10[3] = &unk_10011C670;
  v10[4] = v7;
  [v8 localSecretChangedTo:v9 secretType:v7 completion:v10];
}

- (BOOL)_promptUserForMAIDSignIn:(id)a3 personaID:(id)a4 handler:(id)a5 interactionClient:(id)a6 outError:(id *)a7
{
  v11 = a5;
  v14 = 0;
  v12 = [a6 requestMAIDSignIn:a3 personaID:a4 outError:a7 isCancelled:&v14];
  if (a7 && (v14 & 1) != 0)
  {
    *a7 = [v11 userCancelledError];
  }

  if (a7 && v12 != 1 && !*a7)
  {
    *a7 = [NSError MCErrorWithDomain:MCInstallationErrorDomain code:4038 descriptionArray:0 errorType:MCErrorTypeFatal];
  }

  return v12;
}

- (void)_promptUserForRestoreWithAccountID:(id)a3 personaID:(id)a4 interactionClient:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _MCLogObjects[9];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting managed restore...", v11, 2u);
  }

  [v9 requestManagedRestoreWithManagedAppleID:v7 personaID:v8];
}

- (id)_validateNewMDMProfile:(id)a3 installationOption:(id)a4
{
  v5 = kMCInstallProfileOptionInstallationSource;
  v6 = a3;
  v7 = [a4 objectForKeyedSubscript:v5];
  v8 = [v6 payloadsWithClass:objc_opt_class()];

  v9 = [v8 firstObject];

  v10 = [v9 assignedManagedAppleID];
  if (v10 && ([v7 isEqualToString:kDMCProfileInstallationSourceAccountDrivenUserEnrollment] & 1) == 0)
  {
    v15 = [v7 isEqualToString:kDMCProfileInstallationSourceAccountDrivenDeviceEnrollment];

    if ((v15 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v11 = [v9 enrollmentMode];
  if ([v11 isEqualToString:kMDMEnrollmentModeBYOD] && (objc_msgSend(v7, "isEqualToString:", kDMCProfileInstallationSourceAccountDrivenUserEnrollment) & 1) == 0)
  {

LABEL_13:
    v16 = MCInstallationErrorDomain;
    v11 = [v9 friendlyName];
    v12 = MCErrorArray();
    v14 = [NSError MCErrorWithDomain:v16 code:4022 descriptionArray:v12 errorType:MCErrorTypeFatal, v11, 0];
    goto LABEL_14;
  }

  v12 = [v9 enrollmentMode];
  if ([v12 isEqualToString:kMDMEnrollmentModeADDE])
  {
    v13 = [v7 isEqualToString:kDMCProfileInstallationSourceAccountDrivenDeviceEnrollment];

    if (v13)
    {
      v14 = 0;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v14 = 0;
LABEL_14:

LABEL_15:

  return v14;
}

- (id)_validateMDMReplacementNewProfile:(id)a3 oldProfile:(id)a4 client:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 payloadsWithClass:objc_opt_class()];

  v10 = [v9 firstObject];

  v11 = [v8 payloadsWithClass:objc_opt_class()];

  v12 = [v11 firstObject];

  v13 = objc_opt_new();
  v14 = [v12 managedAppleIDName];
  if (!v14)
  {
    goto LABEL_3;
  }

  v15 = v14;
  v5 = [v10 managedAppleIDName];
  v16 = [v5 lowercaseString];
  v17 = [v12 managedAppleIDName];
  v18 = [v17 lowercaseString];
  v19 = [v16 isEqualToString:v18];

  if ((v19 & 1) == 0)
  {
    v21 = _MCLogObjects[9];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = v21;
      v5 = [v10 managedAppleIDName];
      v23 = [v12 managedAppleIDName];
      *buf = 138543618;
      *v88 = v5;
      *&v88[8] = 2114;
      v89 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "appleID doesn't match! Old managedAppleIDName:%{public}@, new managedAppleIDName: %{public}@", buf, 0x16u);
    }

    [v13 addObject:kMDMManagedAppleIDKey];
    v20 = 1;
  }

  else
  {
LABEL_3:
    v20 = 0;
  }

  v24 = [v10 enrollmentMode];
  if (!v24)
  {
    v5 = [v12 enrollmentMode];
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  v25 = [v10 enrollmentMode];
  v26 = [v12 enrollmentMode];
  v27 = [v25 isEqualToString:v26];

  if (v24)
  {

    if (v27)
    {
LABEL_11:
      v28 = 0;
      goto LABEL_16;
    }
  }

  else
  {

    if (v27)
    {
      goto LABEL_11;
    }
  }

  v29 = _MCLogObjects[9];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = v29;
    v31 = [v10 enrollmentMode];
    v32 = [v12 enrollmentMode];
    *buf = 138543618;
    *v88 = v31;
    *&v88[8] = 2114;
    v89 = v32;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "enrollmentMode doesn't match! Old enrollmentMode:%{public}@, new enrollmentMode: %{public}@", buf, 0x16u);
  }

  [v13 addObject:kMDMEnrollmentModeKey];
  v28 = 1;
LABEL_16:
  v33 = [v12 requiredAppIDForMDM];
  if (!v33)
  {
    goto LABEL_18;
  }

  v34 = v33;
  v35 = [v10 requiredAppIDForMDM];
  v36 = [v12 requiredAppIDForMDM];
  v37 = [v35 isEqualToNumber:v36];

  if ((v37 & 1) == 0)
  {
    v38 = _MCLogObjects[9];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = v38;
      v40 = [v10 requiredAppIDForMDM];
      v41 = [v12 requiredAppIDForMDM];
      *buf = 138543618;
      *v88 = v40;
      *&v88[8] = 2114;
      v89 = v41;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "requiredAppIDForMDM doesn't match! Old requiredAppIDForMDM:%{public}@, new requiredAppIDForMDM: %{public}@", buf, 0x16u);
    }

    [v13 addObject:kMDMRequiredAppIDForMDMKey];
    v86 = 1;
  }

  else
  {
LABEL_18:
    v86 = 0;
  }

  v42 = [v10 topic];
  v43 = [v12 topic];
  v44 = [v42 isEqualToString:v43];

  v45 = +[MCActivationUtilities sharedInstance];
  LODWORD(v43) = [v45 isHRNMode];

  if (v43 | 2) == 2 || (v44)
  {
    v46 = 0;
  }

  else
  {
    v60 = _MCLogObjects[9];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = v60;
      v62 = [v10 topic];
      v63 = [v12 topic];
      *buf = 138543618;
      *v88 = v62;
      *&v88[8] = 2114;
      v89 = v63;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "topic doesn't match! Old topic:%{public}@, new topic: %{public}@", buf, 0x16u);
    }

    [v13 addObject:kMDMTopicKey];
    v46 = 1;
  }

  v47 = [v10 serverURLString];
  v48 = [v12 serverURLString];
  v49 = [v47 isEqualToString:v48];

  v85 = v49;
  if ((v49 & 1) == 0)
  {
    v50 = _MCLogObjects[9];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = v50;
      v48 = [v10 serverURLString];
      v52 = [v12 serverURLString];
      *buf = 138543618;
      *v88 = v48;
      *&v88[8] = 2114;
      v89 = v52;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "serverURLString doesn't match! Old serverURLString:%{public}@, new serverURLString: %{public}@", buf, 0x16u);
    }

    [v13 addObject:kMDMServerURLKey];
  }

  v53 = [v10 checkInURLString];
  if (v53 || ([v12 checkInURLString], (v48 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v84 = v46;
    v54 = v28;
    v55 = v13;
    v56 = v20;
    v57 = [v10 checkInURLString];
    v58 = [v12 checkInURLString];
    v59 = [v57 isEqualToString:v58];

    if (v53)
    {
    }

    else
    {
    }

    v20 = v56;
    if (v59)
    {
      v64 = 0;
      v13 = v55;
    }

    else
    {
      v65 = _MCLogObjects[9];
      v13 = v55;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = v65;
        v67 = [v10 checkInURLString];
        v68 = [v12 checkInURLString];
        *buf = 138543618;
        *v88 = v67;
        *&v88[8] = 2114;
        v89 = v68;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "checkInURLString doesn't match! Old checkInURLString:%{public}@, new checkInURLString: %{public}@", buf, 0x16u);
      }

      [v55 addObject:kMDMCheckInURLKey];
      v64 = 1;
    }

    v28 = v54;
    v46 = v84;
  }

  else
  {
    v64 = 0;
  }

  v69 = [v10 supportUserChannel];
  v70 = v69 ^ [v12 supportUserChannel];
  if (v70 == 1)
  {
    v71 = _MCLogObjects[9];
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v72 = v71;
      v73 = [v10 supportUserChannel];
      v74 = [v12 supportUserChannel];
      *buf = 67109376;
      *v88 = v73;
      *&v88[4] = 1024;
      *&v88[6] = v74;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "supportUserChannel doesn't match! Old supportUserChannel:%d, new supportUserChannel: %d", buf, 0xEu);
    }

    [v13 addObject:kMDMUserChannelCapability];
  }

  if ((v70 | v28 | v20 | v46 | v86 | v64 | v85 ^ 1))
  {
    v75 = [v13 componentsJoinedByString:{@", "}];
    v76 = MCMDMErrorDomain;
    v77 = MCErrorArray();
    v78 = [NSError MCErrorWithDomain:v76 code:12012 descriptionArray:v77 errorType:MCErrorTypeFatal, v75, 0];

LABEL_49:
    goto LABEL_53;
  }

  if (!a5)
  {
    v79 = [v10 accessRights];
    v80 = ([v12 accessRights] | v79);
    if (v80 != [v10 accessRights])
    {
      v82 = MCMDMErrorDomain;
      v75 = MCErrorArray();
      v78 = [NSError MCErrorWithDomain:v82 code:12012 descriptionArray:v75 errorType:MCErrorTypeFatal, 0];
      goto LABEL_49;
    }
  }

  v78 = 0;
LABEL_53:

  return v78;
}

- (id)_guardAgainstNoMDMPayloadWithNewProfile:(id)a3 oldProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 isMDMProfile];
  }

  else
  {
    v7 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !(v7 & 1 | (([v6 isMDMProfile] & 1) == 0)))
  {
    v9 = MCInstallationErrorDomain;
    v10 = [v6 friendlyName];
    v11 = MCErrorArray();
    v12 = [NSError MCErrorWithDomain:v9 code:4015 descriptionArray:v11 errorType:MCErrorTypeFatal, v10, 0];
    v8 = [v12 MCCopyAsPrimaryError];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_deviceLockedError
{
  v2 = MCInstallationErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:4009 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

+ (id)deviceNotSupervisedError
{
  v2 = MCChaperoneErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:29000 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];
  v5 = [v4 MCCopyAsPrimaryError];

  return v5;
}

+ (id)deviceIsSupervisedError
{
  v2 = MCChaperoneErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:29004 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];
  v5 = [v4 MCCopyAsPrimaryError];

  return v5;
}

+ (id)notInstalledByMDMError
{
  v2 = MCInstallationErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:4021 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

+ (id)notSupportedUnderMultiUserModeError
{
  v2 = MCInstallationErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:4047 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (id)_installProfileHandler:(id)a3 options:(id)a4 interactionClient:(id)a5 source:(id)a6 outError:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v310 = a5;
  v312 = a6;
  v318 = +[MCRestrictionManagerWriter sharedManager];
  v309 = +[MCDependencyManager sharedManager];
  v13 = +[NSMutableDictionary dictionary];
  [(MCInstaller *)self setSetAsideAccountIdentifiersByPayloadClass:v13];

  v14 = +[NSMutableDictionary dictionary];
  [(MCInstaller *)self setSetAsideDictionariesByPayloadClass:v14];

  v15 = [v11 profile];
  v316 = [v15 identifier];

  v308 = [v12 objectForKeyedSubscript:kMCInstallProfileOptionManagingProfileIdentifier];
  v306 = [v12 objectForKeyedSubscript:kMCInstallProfileOptionAdditionalManagedProfileIdentifiers];
  v16 = kMCInstallProfileOptionIsInstalledByMDM;
  v17 = [v12 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
  v18 = [v17 BOOLValue];

  v19 = [v12 objectForKeyedSubscript:kMCInstallProfileOptionsIsInstalledByDeclarativeManagement];
  v20 = [v19 BOOLValue];

  v21 = [v12 objectForKeyedSubscript:kMCInstallProfileOptionFilterFlag];
  v302 = [v21 intValue];

  v22 = [v318 currentRestrictions];
  v311 = [v22 MCDeepCopy];

  v367 = 0;
  v23 = [v12 objectForKeyedSubscript:kMCInstallProfileOptionInstallationType];
  v303 = [v23 intValue];

  v361 = 0;
  v362 = &v361;
  v363 = 0x3032000000;
  v364 = sub_100047CFC;
  v365 = sub_100047D0C;
  v366 = 0;
  v24 = kMCInstallProfileOptionPersonaID;
  v315 = [v12 objectForKeyedSubscript:kMCInstallProfileOptionPersonaID];
  v25 = _MCLogObjects[9];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Beginning profile installation...", buf, 2u);
  }

  v26 = [v12 objectForKeyedSubscript:kMCInstallProfileOptionAssumeOwnership];
  v27 = [v26 BOOLValue];

  if (v27)
  {
    v28 = _MCLogObjects[9];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Beginning profile assume ownership...", buf, 2u);
    }

    v29 = [(MCInstaller *)self _assumeOwnershipProfileHandler:v11 options:v12 source:v312 outError:a7];
    v317 = 0;
    v313 = 0;
    v304 = 0;
    goto LABEL_110;
  }

  v30 = [v318 systemProfileRestrictions];
  v300 = [v30 MCMutableDeepCopy];

  v31 = [v318 userProfileRestrictions];
  v299 = [v31 MCMutableDeepCopy];

  v32 = _MCLogObjects[5];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v316;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Beginning profile installation for %{public}@", buf, 0xCu);
  }

  v33 = +[MCManifest sharedManifest];
  v301 = [v33 installedMDMProfile];

  v34 = [v11 profile];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_14;
  }

  v35 = [v11 profile];
  v36 = [v35 isMDMProfile];

  if (!v36)
  {
LABEL_14:
    v298 = 0;
    v42 = 1;
    goto LABEL_19;
  }

  v298 = v301 != 0;
  v37 = [v11 profile];
  if (v301)
  {
    v38 = +[MCManifest sharedManifest];
    v39 = [v38 installedMDMProfile];
    v40 = [(MCInstaller *)self _validateMDMReplacementNewProfile:v37 oldProfile:v39 client:v310];
    v41 = v362[5];
    v362[5] = v40;
  }

  else
  {
    v43 = [(MCInstaller *)self _validateNewMDMProfile:v37 installationOption:v12];
    v38 = v362[5];
    v362[5] = v43;
  }

  v44 = [v12 objectForKeyedSubscript:v16];
  v45 = [v44 BOOLValue];

  if ((v45 & 1) == 0)
  {
    [(MCInstaller *)self _checkinWithMdmd];
  }

  v42 = 0;
LABEL_19:
  if (v362[5])
  {
    v317 = 0;
    v313 = 0;
LABEL_51:

    v304 = 0;
    v75 = 0;
    goto LABEL_52;
  }

  v295 = v42;
  if (v303 == 2)
  {
    v46 = 2;
  }

  else
  {
    v46 = 1;
  }

  v47 = [(MCInstaller *)self _installedProfileWithIdentifier:v316 installationType:v46];
  v297 = v47;
  if (v47)
  {
    v48 = [v11 profile];
    v49 = [(MCInstaller *)self _guardAgainstNoMDMPayloadWithNewProfile:v48 oldProfile:v47];
    v50 = v362[5];
    v362[5] = v49;

    if (v362[5])
    {
      v317 = 0;
LABEL_49:
      v313 = 0;
      goto LABEL_50;
    }

    if (!v298)
    {
      v53 = kMCDMManagedProfileToManagingProfileKey;
      v54 = [v309 dependentsOfParent:v316 inDomain:kMCDMManagedProfileToManagingProfileKey];
      v55 = [v54 count];

      if (v308 && !v55)
      {
        goto LABEL_35;
      }

      v146 = [v297 identifier];
      v147 = [v309 dependentsOfParent:v146 inDomain:v53];
      v148 = [v147 count];

      if (!(v18 & 1 | (v148 == 0)))
      {
        v149 = [v11 profile];
        v150 = [v149 friendlyName];
        v151 = MCErrorArray();
        v152 = [NSError MCErrorWithDomain:MCMDMErrorDomain code:12013 descriptionArray:v151 errorType:MCErrorTypeFatal, v150, 0];
        v153 = [v152 MCCopyAsPrimaryError];
        v154 = v362[5];
        v362[5] = v153;

        v317 = 0;
        v313 = 0;
        v61 = v149;
        goto LABEL_44;
      }

      if (v20 && v148)
      {
LABEL_35:
        v56 = [v11 profile];
        v57 = [v56 friendlyName];
        v58 = MCErrorArray();
        v59 = [NSError MCErrorWithDomain:MCMDMErrorDomain code:12013 descriptionArray:v58 errorType:MCErrorTypeFatal, v57, 0];
        v60 = v362[5];
        v362[5] = v59;

        v317 = 0;
        v313 = 0;
        v61 = v56;
LABEL_44:

LABEL_50:
        goto LABEL_51;
      }

      if (!v308)
      {
        v174 = [v12 objectForKeyedSubscript:kMCInstallProfileOptionIsOTAUpdate];
        v175 = [v174 BOOLValue];

        if ((v175 & 1) == 0)
        {
          v176 = [v11 profile];
          v177 = [v297 doesSigningAllowReplacementWithProfile:v176];

          if ((v177 & 1) == 0)
          {
            v178 = [v297 friendlyName];
            v179 = MCErrorArray();
            v180 = [NSError MCErrorWithDomain:MCInstallationErrorDomain code:4008 descriptionArray:v179 errorType:MCErrorTypeFatal, v178, 0];
            v181 = v362[5];
            v362[5] = v180;

            v182 = [v362[5] MCCopyAsPrimaryError];
            v317 = 0;
            v313 = 0;
            v61 = v362[5];
            v362[5] = v182;
            goto LABEL_44;
          }
        }
      }
    }

    v51 = _MCLogObjects[5];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v316;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Profile “%{public}@” is replacing an existing profile having the same identifier.", buf, 0xCu);
    }

    v317 = [v297 createHandler];
    [v317 setAsideWithInstaller:self];
    if ([v297 isInstalledForUser])
    {
      v52 = [v297 identifier];
      [v299 removeObjectForKey:v52];
    }

    else
    {
      v52 = [v297 identifier];
      [v300 removeObjectForKey:v52];
    }
  }

  else
  {
    v317 = 0;
  }

  if (v303 == 2)
  {
    [v299 objectForKey:v316];
  }

  else
  {
    [v300 objectForKey:v316];
  }
  v62 = ;

  if (v62)
  {
    v61 = [v11 profile];
    v63 = [v61 friendlyName];
    v64 = MCErrorArray();
    v65 = [NSError MCErrorWithDomain:MCInstallationErrorDomain code:4002 descriptionArray:v64 errorType:MCErrorTypeFatal, v63, 0];
    v66 = [v65 MCCopyAsPrimaryError];
    v67 = v362[5];
    v362[5] = v66;

LABEL_43:
    v313 = 0;
    goto LABEL_44;
  }

  v68 = [v12 objectForKeyedSubscript:kMCInstallProfileOptionIsOTAUpdate];
  v69 = [v68 BOOLValue];

  [v11 profile];
  if (v69)
    v70 = {;
    v71 = v362 + 5;
    v360 = v362[5];
    [(MCInstaller *)self _showWarningsForUpdatingProfile:v70 originalProfile:v297 interactionClient:v310 outError:&v360];
    v72 = v360;
  }

  else
    v70 = {;
    v71 = v362 + 5;
    v359 = v362[5];
    [(MCInstaller *)self _showWarningsForProfile:v70 interactionClient:v310 outError:&v359];
    v72 = v359;
  }

  v73 = v72;
  v74 = *v71;
  *v71 = v73;

  if (v362[5])
  {
    goto LABEL_49;
  }

  v144 = [v11 profile];
  v145 = v362 + 5;
  obj = v362[5];
  v294 = [v144 restrictionsWithHeuristicsAppliedOutError:&obj];
  objc_storeStrong(v145, obj);

  if (v362[5])
  {
    goto LABEL_114;
  }

  v155 = [v12 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledInteractively];
  v156 = [v155 BOOLValue];

  if (v156)
  {
    v157 = [MCRestrictionManager intersectedValuesForFeature:MCFeatureAutonomousSingleAppModePermittedAppIDs withRestrictionsDictionary:v294];
    if (v157)
    {
      v158 = MCErrorArray();
      v159 = [NSError MCErrorWithDomain:MCInstallationErrorDomain code:4020 descriptionArray:v158 errorType:MCErrorTypeFatal, 0];
      v160 = v362[5];
      v362[5] = v159;
    }
  }

  v61 = v294;
  if (v362[5])
  {
    goto LABEL_43;
  }

  if ((v18 & 1) == 0)
  {
    if (qword_100136B78 != -1)
    {
      sub_1000C27D8();
    }

    if (!os_variant_has_internal_ui() || (v61 = v294, !CFPreferencesGetAppBooleanValue(@"AllowMDMOnlyPayloadsWithoutMDM", kMCNotBackedUpPreferencesDomain, 0)))
    {
      v356 = 0u;
      v357 = 0u;
      v354 = 0u;
      v355 = 0u;
      v161 = [v11 profile];
      v314 = [v161 payloads];

      v162 = [v314 countByEnumeratingWithState:&v354 objects:v373 count:16];
      if (v162)
      {
        v163 = *v355;
        p_vtable = _TtC8profiled9MCAdapter.vtable;
        v292 = *v355;
        do
        {
          v165 = 0;
          v290 = v162;
          do
          {
            if (*v355 != v163)
            {
              objc_enumerationMutation(v314);
            }

            v305 = v165;
            v166 = *(*(&v354 + 1) + 8 * v165);
            v350 = 0u;
            v351 = 0u;
            v352 = 0u;
            v353 = 0u;
            v167 = p_vtable[366];
            v168 = [v167 countByEnumeratingWithState:&v350 objects:v372 count:16];
            if (v168)
            {
              v169 = *v351;
              while (2)
              {
                for (i = 0; i != v168; i = i + 1)
                {
                  if (*v351 != v169)
                  {
                    objc_enumerationMutation(v167);
                  }

                  v171 = *(*(&v350 + 1) + 8 * i);
                  if (objc_opt_isKindOfClass())
                  {
                    v172 = [v12 objectForKeyedSubscript:v24];
                    v173 = v172 == 0;

                    if (v173)
                    {
                      v183 = +[MCInstaller notInstalledByMDMError];
                      v184 = v362[5];
                      v362[5] = v183;

                      goto LABEL_153;
                    }
                  }
                }

                v168 = [v167 countByEnumeratingWithState:&v350 objects:v372 count:16];
                if (v168)
                {
                  continue;
                }

                break;
              }
            }

            v165 = v305 + 1;
            v163 = v292;
            p_vtable = (_TtC8profiled9MCAdapter + 24);
          }

          while ((v305 + 1) != v290);
          v163 = v292;
          v162 = [v314 countByEnumeratingWithState:&v354 objects:v373 count:16];
        }

        while (v162);
      }

LABEL_153:

      v61 = v294;
    }
  }

  if (v362[5])
  {
    goto LABEL_43;
  }

  v185 = +[MDMCloudConfiguration sharedConfiguration];
  v186 = [v185 isSupervised];

  if (v186)
  {
    v187 = [v11 profile];
    v188 = [v187 payloadsWithClass:objc_opt_class()];
    v189 = [v188 firstObject];

    if (v189 && [v189 isUserEnrollment])
    {
      v190 = +[MCInstaller deviceIsSupervisedError];
LABEL_169:
      v195 = v362[5];
      v362[5] = v190;
    }
  }

  else
  {
    v348 = 0u;
    v349 = 0u;
    v346 = 0u;
    v347 = 0u;
    v191 = [v11 profile];
    v189 = [v191 payloads];

    v192 = [v189 countByEnumeratingWithState:&v346 objects:v371 count:16];
    if (v192)
    {
      v193 = *v347;
      while (2)
      {
        for (j = 0; j != v192; j = j + 1)
        {
          if (*v347 != v193)
          {
            objc_enumerationMutation(v189);
          }

          if ([(MCInstaller *)self deviceSupervisionRequiredForPayload:*(*(&v346 + 1) + 8 * j)])
          {
            v190 = +[MCInstaller deviceNotSupervisedError];
            goto LABEL_169;
          }
        }

        v192 = [v189 countByEnumeratingWithState:&v346 objects:v371 count:16];
        if (v192)
        {
          continue;
        }

        break;
      }
    }
  }

  if (v362[5])
  {
    goto LABEL_114;
  }

  v196 = v303 == 2 ? v299 : v300;
  [v196 setObject:v294 forKey:v316];
  v197 = [v12 copy];
  v198 = [v11 profile];
  [v198 setInstallOptions:v197];

  v199 = v362 + 5;
  v345 = v362[5];
  [v11 stageForInstallationWithInstaller:self interactionClient:v310 outError:&v345];
  objc_storeStrong(v199, v345);
  if (v362[5])
  {
LABEL_114:
    v313 = 0;
LABEL_115:
    v61 = v294;
    goto LABEL_44;
  }

  v313 = v11;
  v200 = [v318 currentRestrictions];
  v29 = [v318 defaultRestrictions];
  v201 = [v318 systemClientRestrictions];
  v202 = [v318 userClientRestrictions];
  v203 = v362 + 5;
  v344 = v362[5];
  v293 = [MCRestrictionManagerWriter restrictionsWithCurrentRestrictions:v200 defaultRestrictions:v29 systemProfileRestrictions:v300 userProfileRestrictions:v299 systemClientRestrictions:v201 userClientRestrictions:v202 outRestrictionsChanged:0 outError:&v344];
  objc_storeStrong(v203, v344);

  v204 = v362 + 5;
  if (v362[5])
  {

    goto LABEL_115;
  }

  v343 = 0;
  v342 = 0;
  [(MCInstaller *)self _promptUserForComplianceWithRestrictions:v293 handler:v313 interactionClient:v310 outPasscodeContextWrapper:&v343 outError:&v342];
  v291 = v343;
  objc_storeStrong(v204, v342);
  if (v362[5])
  {
    v75 = 0;
    v304 = 0;
    v205 = 2;
    goto LABEL_284;
  }

  v287 = [v291 externalizedContext];
  v206 = [v313 profile];
  v207 = [v206 payloadsWithClass:objc_opt_class()];
  v289 = [v207 firstObject];

  if (v289)
  {
    v208 = +[MCPasscodeManager sharedManager];
    v209 = [v208 isPasscodeSet];
    if (v287)
    {
      v210 = 0;
    }

    else
    {
      v210 = v209;
    }

    if (v210)
    {
      v341 = 0;
      [v310 requestCurrentPasscodeOutPasscodeContext:&v341];
      v287 = v341;
    }

    if (v298)
    {
      v211 = [v317 profile];
      v212 = [v211 installOptions];

      v29 = kMCInstallProfileOptionIsCloudProfile;
      v213 = [v12 objectForKeyedSubscript:kMCInstallProfileOptionIsCloudProfile];
      if (v213)
      {
LABEL_189:

        goto LABEL_194;
      }

      v214 = [v212 objectForKeyedSubscript:v29];
      v215 = v214 == 0;

      if (!v215)
      {
        v213 = [v12 mutableCopy];
        v216 = [v212 objectForKeyedSubscript:v29];
        [v213 setObject:v216 forKeyedSubscript:v29];

        v217 = [v213 copy];
        v12 = v217;
        goto LABEL_189;
      }
    }

    else
    {
      if (([v289 accessRights] & 4) == 0)
      {
        goto LABEL_195;
      }

      if (MCKeybagHasMDMEscrowDataAndSecret())
      {
        v212 = 0;
      }

      else
      {
        v340[1] = 0;
        MDMEscrowWithPasscodeContext = MCKeybagCreateMDMEscrowWithPasscodeContext();
        v212 = 0;
        if ((MDMEscrowWithPasscodeContext & 1) == 0)
        {
          v283 = _MCLogObjects[2];
          if (os_log_type_enabled(v283, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v212;
            _os_log_impl(&_mh_execute_header, v283, OS_LOG_TYPE_ERROR, "Unable to create unlock token: %{public}@", buf, 0xCu);
          }

          v286 = MCErrorArray();
          v296 = [NSError MCErrorWithDomain:MCInstallationErrorDomain code:4042 descriptionArray:v286 underlyingError:v212 errorType:MCErrorTypeFatal, v316, 0];
          v284 = [v296 MCCopyAsPrimaryError];
          v285 = v362[5];
          v362[5] = v284;

          v75 = 0;
          v304 = 0;
          goto LABEL_280;
        }
      }
    }

LABEL_194:

LABEL_195:
    if (v287 && MCKeybagVerifyPasscodeContext())
    {
      v219 = [v12 mutableCopy];
      [v219 setObject:v287 forKeyedSubscript:kMDMPasscodeKey];
      v220 = [v219 copy];

      v12 = v220;
    }

    v221 = [v289 managedAppleID];
    v222 = [v221 length];

    if (v222)
    {
      v223 = _MCLogObjects[5];
      if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v223, OS_LOG_TYPE_DEFAULT, "We are doing DS 1.0 user enrollment", buf, 2u);
      }
    }

    if (v298)
    {
      v224 = [v301 payloadsWithClass:objc_opt_class()];
      v225 = [v224 firstObject];

      [v289 setIsUserEnrollment:{objc_msgSend(v225, "isUserEnrollment")}];
LABEL_204:

LABEL_211:
      [v289 setPersonaID:v315];
      if (!v362[5])
      {
        v232 = +[ACAccountStore defaultStore];
        v233 = [v232 dmc_remoteManagementAccountForManagementProfileIdentifier:v316];

        v29 = [v233 identifier];
        if (v29)
        {
          v234 = [v12 mutableCopy];
          [v234 setObject:v29 forKeyedSubscript:kMDMRMAccountIDKey];
          v235 = [v234 copy];

          v12 = v235;
        }
      }

      if (([v289 isUserEnrollment] & 1) == 0 && (+[DMCMultiUserModeUtilities isSharediPad](DMCMultiUserModeUtilities, "isSharediPad") & 1) == 0 && +[DMCMultiUserModeUtilities deviceHasMultipleUsers](DMCMultiUserModeUtilities, "deviceHasMultipleUsers"))
      {
        v236 = +[MCInstaller notSupportedUnderMultiUserModeError];
        v237 = v362[5];
        v362[5] = v236;
      }

      goto LABEL_219;
    }

    v226 = [v289 managedAppleID];
    v227 = [v226 length];

    if (!v227)
    {
      goto LABEL_211;
    }

    v286 = +[DMCPersonaHelper enterprisePersonaIdentifier];
    if (!v286)
    {
      goto LABEL_224;
    }

    v228 = _MCLogObjects[5];
    if (os_log_type_enabled(v228, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v286;
      _os_log_impl(&_mh_execute_header, v228, OS_LOG_TYPE_ERROR, "Enterprise persona (%{public}@) exists without any MDM enrollment! Cleaning up anyway...", buf, 0xCu);
    }

    v340[0] = 0;
    [DMCPersonaHelper removePersona:v286 error:v340];
    v229 = v340[0];
    if (v229)
    {
      v230 = v362;
      v231 = v229;
    }

    else
    {
LABEL_224:
      v339 = 0;
      v241 = [DMCPersonaHelper createEnterprisePersonaWithPasscodeData:v287 passcodeDataType:1 error:&v339];
      v29 = v339;

      if (v241)
      {
        [DMCPersonaHelper trackDirtyPersona:v241];
        v242 = [v289 managedAppleID];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v370 = 0;
        v332[0] = _NSConcreteStackBlock;
        v332[1] = 3221225472;
        v332[2] = sub_10004CCFC;
        v332[3] = &unk_10011C6B8;
        v337 = buf;
        v332[4] = self;
        v243 = v242;
        v333 = v243;
        v334 = v241;
        v244 = v313;
        v335 = v244;
        v336 = v310;
        v338 = &v361;
        v315 = v334;
        v225 = [DMCPersonaHelper performBlockUnderPersona:v334 block:v332];

        if (v362[5])
        {
          v245 = v362[5];
        }

        else
        {
          v245 = v225;
        }

        objc_storeStrong(v362 + 5, v245);
        if (*(*&buf[8] + 24) == 1)
        {
          v246 = +[ACAccountStore defaultStore];
          v247 = v362 + 5;
          v331 = v362[5];
          v328[0] = _NSConcreteStackBlock;
          v328[1] = 3221225472;
          v328[2] = sub_10004CD6C;
          v328[3] = &unk_10011C6E0;
          v248 = v244;
          v329 = v248;
          v330 = v289;
          [v246 dmc_updateAppleAccountWithPersonaID:v315 error:&v331 updateBlock:v328];
          objc_storeStrong(v247, v331);

          v249 = [[NSConditionLock alloc] initWithCondition:1];
          v250 = +[DMCEnrollmentFlowController enrollmentFlowController];
          v251 = [v248 profile];
          v252 = [v251 organization];
          v253 = v252;
          if (v252)
          {
            v254 = v252;
          }

          else
          {
            v254 = v243;
          }

          v255 = v254;

          v325[0] = _NSConcreteStackBlock;
          v325[1] = 3221225472;
          v325[2] = sub_10004CE38;
          v325[3] = &unk_10011C708;
          v327 = &v361;
          v29 = v249;
          v326 = v29;
          [v250 updateMDMUserEnrollmentWithManagedAppleID:v243 profileIdentifier:v316 organizationName:v255 personaID:v315 completionHandler:v325];
          [v29 lockWhenCondition:0];
          [v29 unlock];
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_204;
      }

      v282 = _MCLogObjects[5];
      if (os_log_type_enabled(v282, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v29;
        _os_log_impl(&_mh_execute_header, v282, OS_LOG_TYPE_ERROR, "Failed to create enterprise persona with error: %{public}@", buf, 0xCu);
      }

      v230 = v362;
      v231 = v29;
      v315 = 0;
    }

    v75 = 0;
    v304 = 0;
    v296 = v230[5];
    v212 = v231;
    v230[5] = v231;
LABEL_280:
    v205 = 2;
LABEL_281:

    goto LABEL_282;
  }

LABEL_219:
  if (!v362[5])
  {
    v304 = objc_alloc_init(MCKeybagUnlockAssertion);
    if (v315 && (v238 = kMDMPersonaKey, [v12 objectForKeyedSubscript:kMDMPersonaKey], v239 = objc_claimAutoreleasedReturnValue(), v240 = v239 == 0, v239, v240))
    {
      v256 = [v12 mutableCopy];
      [v256 setObject:v315 forKeyedSubscript:v238];
      v29 = [v256 copy];
    }

    else
    {
      v29 = v12;
    }

    v257 = v362 + 5;
    v324 = v362[5];
    [v313 installWithInstaller:self options:v29 interactionClient:v310 outError:&v324];
    objc_storeStrong(v257, v324);
    v212 = [v29 mutableCopy];
    [v212 removeObjectForKey:kMDMPasscodeKey];
    v12 = [v212 copy];

    v258 = v362[5];
    v75 = v258 == 0;
    if (v258)
    {
      goto LABEL_240;
    }

    v259 = objc_opt_new();
    v260 = [v313 profile];
    [v259 addEventForProfile:v260 operation:@"install" source:v312];

    if (((v295 | v298) & 1) == 0)
    {
      [(MCInstaller *)self _sendMDMEnrollmentEventWithInstallationOptions:v12];
    }

    v29 = [v313 profile];
    v261 = [v29 loggingID];
    v262 = v362 + 5;
    v323 = v362[5];
    [v318 setSystemProfileRestrictions:v300 userProfileRestrictions:v299 sender:v261 outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outAppWhitelistSettingsChanged:&v367 outRecomputedNag:0 outError:&v323];
    objc_storeStrong(v262, v323);

    if (v362[5])
    {
      v75 = 1;
LABEL_240:
      v205 = 2;
LABEL_282:

      goto LABEL_283;
    }

    v286 = +[MDMCloudConfiguration sharedConfiguration];
    if ([v286 isSupervised])
    {
      if ([v286 isTeslaEnrolled])
      {
        v263 = [v12 objectForKey:kMCInstallProfileOptionIsCloudProfile];
        v264 = [v263 BOOLValue];

        if (v264)
        {
          v265 = [v313 profile];
          v266 = [v265 containsPayloadOfClass:objc_opt_class()];

          if (v266)
          {
            v267 = [v12 objectForKey:kMCInstallProfileOptionInstallationSource];
            v268 = [v267 isEqualToString:kDMCProfileInstallationSourceMDMMigration];

            if ((v268 & 1) == 0)
            {
              v296 = +[MCInstaller considerProfilesInstalledDuringBuddyForManagement];
LABEL_250:
              v270 = [v318 currentRestrictions];
              [v313 didInstallOldGlobalRestrictions:v311 newGlobalRestrictions:v270];

              if ([v308 length] && (objc_msgSend(v308, "isEqualToString:", v316) & 1) == 0)
              {
                [v309 addDependent:v316 ofParent:v308 inDomain:kMCDMManagingProfileToManagedProfileKey reciprocalDomain:kMCDMManagedProfileToManagingProfileKey toSystem:v303 != 2 user:v303 == 2];
              }

              if ([v306 count])
              {
                v321 = 0u;
                v322 = 0u;
                v319 = 0u;
                v320 = 0u;
                v29 = v306;
                v271 = [v29 countByEnumeratingWithState:&v319 objects:v368 count:16];
                if (v271)
                {
                  v272 = *v320;
                  v288 = kMCDMManagingProfileToManagedProfileKey;
                  v273 = kMCDMManagedProfileToManagingProfileKey;
                  do
                  {
                    for (k = 0; k != v271; k = k + 1)
                    {
                      if (*v320 != v272)
                      {
                        objc_enumerationMutation(v29);
                      }

                      v275 = *(*(&v319 + 1) + 8 * k);
                      if (([v275 isEqualToString:v316] & 1) == 0 && (objc_msgSend(v296, "containsObject:", v275) & 1) == 0)
                      {
                        [v309 addDependent:v275 ofParent:v316 inDomain:v288 reciprocalDomain:v273 toSystem:v303 != 2 user:v303 == 2];
                      }
                    }

                    v271 = [v29 countByEnumeratingWithState:&v319 objects:v368 count:16];
                  }

                  while (v271);
                }
              }

              v276 = [MCRestrictionManager isWebContentFilterUIActiveWithRestrictionDictionary:v311];
              v277 = [v318 currentRestrictions];
              v278 = [MCRestrictionManager isWebContentFilterUIActiveWithRestrictionDictionary:v277];

              if (v276 != v278)
              {
                MCSendWebContentFilterUIActiveChangedNotification();
              }

              v279 = [v289 managedAppleID];
              if ([v279 length])
              {
                v280 = v298;
              }

              else
              {
                v280 = 1;
              }

              if ((v280 & 1) == 0)
              {
                v281 = [v289 managedAppleID];
                [(MCInstaller *)self _promptUserForRestoreWithAccountID:v281 personaID:v315 interactionClient:v310];
              }

              v205 = 0;
              v75 = 1;
              goto LABEL_281;
            }

            v269 = _MCLogObjects[5];
            if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v269, OS_LOG_TYPE_DEFAULT, "Not taking over unmanaged profiles during MDM migration", buf, 2u);
            }
          }
        }
      }
    }

    v296 = 0;
    goto LABEL_250;
  }

  v75 = 0;
  v304 = 0;
  v205 = 2;
LABEL_283:

LABEL_284:
  if ((v205 | 2) != 2)
  {
    goto LABEL_110;
  }

LABEL_52:
  v76 = v362[5];
  if (!v76)
  {
    v91 = [v317 profile];
    v87 = [v91 installOptions];

    v92 = [v317 profile];
    v93 = [v92 isInstalledForUser];

    if (v317)
    {
      v94 = _MCLogObjects[5];
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEBUG, "Removing profiles that were set aside...", buf, 2u);
      }

      [v317 removeWithInstaller:self options:0];
      v95 = [v318 currentRestrictions];
      [v317 didRemoveOldGlobalRestrictions:v311 newGlobalRestrictions:v95];

      v96 = [v317 profile];
      v97 = [v96 identifier];

      v98 = [(MCInstaller *)self _managingProfileIdentifierForProfileIdentifier:v97];
      if (v98)
      {
        [v309 removeDependent:v97 fromParent:v98 inDomain:kMCDMManagingProfileToManagedProfileKey reciprocalDomain:kMCDMManagedProfileToManagingProfileKey fromSystem:v93 ^ 1 user:v93];
      }

      v99 = [v12 mutableCopy];
      v100 = v99;
      if (v298)
      {
        v101 = kMCInstallProfileOptionIsCloudProfile;
        v102 = [v87 objectForKeyedSubscript:kMCInstallProfileOptionIsCloudProfile];
        v103 = [v102 BOOLValue];

        if (v103)
        {
          v104 = kMCInstallProfileOptionIsCloudLocked;
          v105 = [v87 objectForKeyedSubscript:kMCInstallProfileOptionIsCloudLocked];
          v106 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v105 BOOLValue]);
          [v100 setObject:v106 forKeyedSubscript:v104];

          v107 = &__kCFBooleanTrue;
        }

        else
        {
          v107 = &__kCFBooleanFalse;
          [v100 setObject:&__kCFBooleanFalse forKeyedSubscript:kMCInstallProfileOptionIsCloudLocked];
        }

        [v100 setObject:v107 forKeyedSubscript:v101];
      }

      else
      {
        [v99 setObject:&__kCFBooleanFalse forKeyedSubscript:kMCInstallProfileOptionIsCloudLocked];
        v101 = kMCInstallProfileOptionIsCloudProfile;
        [v100 setObject:&__kCFBooleanFalse forKeyedSubscript:kMCInstallProfileOptionIsCloudProfile];
      }

      v111 = +[MCProfile newProfileSignatureVersion];
      [v100 setObject:v111 forKeyedSubscript:kMCInstallProfileOptionSignatureVersion];

      v110 = v100;
    }

    else
    {
      v108 = [v12 mutableCopy];
      v109 = +[MCProfile newProfileSignatureVersion];
      [v108 setObject:v109 forKeyedSubscript:kMCInstallProfileOptionSignatureVersion];

      v110 = v108;
      v101 = kMCInstallProfileOptionIsCloudProfile;
    }

    v112 = [v110 objectForKeyedSubscript:v101];
    if ([v112 BOOLValue])
    {
      v113 = [v110 objectForKeyedSubscript:kMCInstallProfileOptionIsCloudLocked];
      v114 = [v113 BOOLValue];

      if (!v114)
      {
        goto LABEL_83;
      }

      v115 = [v11 profile];
      [v115 setLocked:1];

      v112 = [v11 profile];
      [v112 setRemovalPasscode:0];
    }

LABEL_83:
    v116 = [v11 profile];
    [v116 setInstallOptions:v110];

    v117 = [v11 profile];
    if (v303 == 2)
    {
      sub_100046460();
    }

    else
    {
      sub_1000464B0();
    }
    v118 = ;
    [v117 writeStubToDirectory:v118];

    v119 = +[MCProfile thisDeviceType];
    if ([MCTargetDeviceResolver purgatorySupportedForDevice:v119])
    {
      [(MCInstaller *)self purgePurgatoryProfileWithIdentifier:v316 targetDevice:v119];
      v120 = [v110 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledInteractively];
      v121 = [v120 BOOLValue];

      if (v121)
      {
        v122 = [v11 profile];
        sub_1000826D8(v122);
      }
    }

    v123 = +[MCManifest sharedManifest];
    if ((~v302 & 9) != 0)
    {
      [v123 addIdentifierToSystemManifest:v316 flag:v302];
    }

    else
    {
      [v123 addIdentifierToUserManifest:v316 flag:v302];
    }

    v124 = [v317 profile];
    if ([v124 containsPayloadOfClass:objc_opt_class()])
    {
    }

    else
    {
      v125 = [v11 profile];
      v126 = [v125 containsPayloadOfClass:objc_opt_class()];

      if (!v126)
      {
        goto LABEL_96;
      }
    }

    notify_post([MCDefaultsDidChangeNotification UTF8String]);
LABEL_96:
    v127 = [v317 profile];
    if ([v127 containsPayloadOfClass:objc_opt_class()])
    {
    }

    else
    {
      v128 = [v11 profile];
      v129 = [v128 containsPayloadOfClass:objc_opt_class()];

      if (!v129)
      {
LABEL_101:
        v133 = _MCLogObjects[5];
        if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v316;
          _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "Profile “%{public}@” installed.", buf, 0xCu);
        }

        goto LABEL_104;
      }
    }

    buf[0] = 0;
    v130 = +[MCServerSideHacks sharedHacks];
    v131 = [v318 effectiveUserSettings];
    [v130 recomputeAppOptionsEffectiveUserSettings:v131 outEffectiveChangeDetected:buf];

    if (buf[0] == 1)
    {
      MCSendAppWhitelistChangedNotification();
      v132 = +[MDMClient sharedClient];
      [v132 retryNotNowResponse];
    }

    goto LABEL_101;
  }

  if (v313)
  {
    [v313 unstageFromInstallationWithInstaller:self];
  }

  if (v75)
  {
    v77 = [v318 currentRestrictions];
    v78 = [v77 copy];

    v79 = [v318 systemProfileRestrictions];
    v80 = [v79 MCMutableDeepCopy];

    v81 = [v318 userProfileRestrictions];
    v82 = [v81 MCMutableDeepCopy];

    if (v303 == 2)
    {
      v83 = v82;
    }

    else
    {
      v83 = v80;
    }

    [v83 removeObjectForKey:v316];
    v84 = [v11 profile];
    v85 = [v84 loggingID];
    [v318 setSystemProfileRestrictions:v80 userProfileRestrictions:v82 sender:v85 outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outAppWhitelistSettingsChanged:0 outRecomputedNag:0 outError:0];

    [v11 removeWithInstaller:self options:0];
    v86 = [v318 currentRestrictions];
    [v11 didRemoveOldGlobalRestrictions:v78 newGlobalRestrictions:v86];
  }

  if (v317)
  {
    [v317 unsetAside];
  }

  v87 = [MCInstaller _installationFailureErrorWithUnderlyingError:v362[5]];
  v88 = _MCLogObjects[5];
  if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
  {
    v89 = [v87 MCVerboseDescription];
    *buf = 138543618;
    *&buf[4] = v316;
    *&buf[12] = 2114;
    *&buf[14] = v89;
    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "Profile “%{public}@” failed to install with error: %{public}@", buf, 0x16u);
  }

  if (a7)
  {
    v90 = v87;
    *a7 = v87;
  }

LABEL_104:

  [(MCInstaller *)self setSetAsideAccountIdentifiersByPayloadClass:0];
  [(MCInstaller *)self setSetAsideDictionariesByPayloadClass:0];
  if ([v315 length])
  {
    [DMCPersonaHelper untrackDirtyPersona:v315];
  }

  v134 = [v11 profile];
  v135 = +[MCPayload accountPayloads];
  v136 = [v134 containsAnyPayloadOfClasses:v135];

  v137 = [v317 profile];
  v138 = +[MCPayload accountPayloads];
  LOBYTE(v135) = [v137 containsAnyPayloadOfClasses:v138];

  [(MCInstaller *)self _removeOrphanedResourcesOptions:v12 includingAccounts:(v136 | v135) & 1];
  v139 = +[MCServerSideHacks sharedHacks];
  v140 = [v318 effectiveUserSettings];
  [v139 recomputeHacksAfterProfileChangesEffectiveUserSettings:v140 sendNotifications:1];

  v141 = [v139 recomputeAccountVPNAssociations];
  if (v76)
  {
    v142 = 0;
  }

  else
  {
    v142 = [v316 copy];
  }

  v29 = v142;

LABEL_110:
  _Block_object_dispose(&v361, 8);

  return v29;
}

- (BOOL)deviceSupervisionRequiredForPayload:(id)a3
{
  v3 = a3;
  +[MCPayload supervisedRequiredPayloads];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {

          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 vpnType], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", kMCVPNPayloadBaseVPNTypeAlwaysOn), v10, (v11))
  {
LABEL_13:
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)addSetAsideAccountIdentifier:(id)a3 forPayloadClass:(Class)a4
{
  v10 = a3;
  v6 = NSStringFromClass(a4);
  v7 = [(MCInstaller *)self setAsideAccountIdentifiersByPayloadClass];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v8 = +[NSMutableSet set];
    v9 = [(MCInstaller *)self setAsideAccountIdentifiersByPayloadClass];
    [v9 setObject:v8 forKeyedSubscript:v6];
  }

  [v8 addObject:v10];
}

- (id)setAsideAccountIdentifiersForPayloadClass:(Class)a3
{
  v4 = NSStringFromClass(a3);
  v5 = [(MCInstaller *)self setAsideAccountIdentifiersByPayloadClass];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v6 allObjects];

  return v7;
}

- (void)addSetAsideDictionary:(id)a3 forPayloadHandlerClass:(Class)a4
{
  v8 = a3;
  v6 = NSStringFromClass(a4);
  v7 = [(NSMutableDictionary *)self->_setAsideDictionariesByPayloadClass objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = +[NSMutableSet set];
    [(NSMutableDictionary *)self->_setAsideDictionariesByPayloadClass setObject:v7 forKeyedSubscript:v6];
  }

  [v7 addObject:v8];
}

- (id)setAsideDictionariesForPayloadHandlerClass:(Class)a3
{
  v4 = NSStringFromClass(a3);
  v5 = [(NSMutableDictionary *)self->_setAsideDictionariesByPayloadClass objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)_showWarningsForProfile:(id)a3 interactionClient:(id)a4 outError:(id *)a5
{
  v8 = a4;
  v9 = [a3 installationWarnings];
  LOBYTE(a5) = [(MCInstaller *)self _showWarnings:v9 interactionClient:v8 outError:a5];

  return a5;
}

- (BOOL)_showWarningsForUpdatingProfile:(id)a3 originalProfile:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [a4 installationWarnings];
  v13 = [v11 installationWarnings];

  v14 = [v13 mutableCopy];
  [v14 removeObjectsInArray:v12];
  LOBYTE(a6) = [(MCInstaller *)self _showWarnings:v14 interactionClient:v10 outError:a6];

  return a6;
}

- (BOOL)_showWarnings:(id)a3 interactionClient:(id)a4 outError:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v8)
  {
    goto LABEL_10;
  }

  v14 = 0;
  v10 = [v8 showUserWarnings:v7 outResult:&v14];
  if (v14 == 1 && v10 != 0)
  {
    v8 = 0;
LABEL_10:
    v12 = 1;
    goto LABEL_11;
  }

  v8 = +[MCProfileHandler userCancelledError];
  v12 = v8 == 0;
  if (a5 && v8)
  {
    v8 = v8;
    v12 = 0;
    *a5 = v8;
  }

LABEL_11:

  return v12;
}

- (id)installProfileData:(id)a3 options:(id)a4 interactionClient:(id)a5 source:(id)a6 outError:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = kMCInstallProfileOptionFilterFlag;
  v15 = [v11 objectForKeyedSubscript:kMCInstallProfileOptionFilterFlag];
  v16 = [v15 intValue];

  if (v16 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v11 objectForKeyedSubscript:kMCInstallProfileOptionInstallationType];
  v19 = [v18 intValue];

  if (v19 == 2)
  {
    v20 = 8;
  }

  else
  {
    v20 = 16;
  }

  if (v11)
  {
    v21 = [v11 mutableCopy];
  }

  else
  {
    v21 = +[NSMutableDictionary dictionary];
  }

  v22 = v21;
  v23 = [NSNumber numberWithUnsignedInt:v20 | v17];
  [v22 setObject:v23 forKeyedSubscript:v14];

  if (v12)
  {
    v24 = &__kCFBooleanTrue;
  }

  else
  {
    v24 = &__kCFBooleanFalse;
  }

  [v22 setObject:v24 forKeyedSubscript:kMCInstallProfileOptionIsInstalledInteractively];
  v25 = +[MCProfile newProfileSignatureVersion];
  [v22 setObject:v25 forKeyedSubscript:kMCInstallProfileOptionSignatureVersion];

  v26 = +[MCDependencyManager sharedManager];
  [v26 commitChanges];
  v189 = 0;
  v27 = [MCProfile profileWithData:v10 options:v22 outError:&v189];
  v28 = v189;
  v173 = v22;
  if (v28)
  {
    v29 = v28;
    v30 = 0;
    goto LABEL_79;
  }

  v169 = v12;
  v188 = 0;
  v31 = [v27 mayInstallWithOptions:v22 hasInteractionClient:v12 != 0 outError:&v188];
  v32 = v27;
  v33 = v31;
  v29 = v188;
  if (!v33)
  {
    v30 = 0;
    v27 = v32;
    goto LABEL_78;
  }

  v168 = v13;
  v27 = v32;
  v34 = [v32 createHandler];
  if (!v34)
  {
    v37 = [(MCInstaller *)self _malformedPayloadErrorInternal:0];
    v38 = 0;
    goto LABEL_76;
  }

  v167 = v27;
  v35 = +[MCPasscodeManagerWriter sharedManager];
  v36 = [v35 isDeviceLocked];

  if (v36)
  {
    v37 = [(MCInstaller *)self _deviceLockedError];
    v38 = 0;
LABEL_19:
    v27 = v167;
    goto LABEL_76;
  }

  v27 = v167;
  if ([v167 targetDeviceType])
  {
    if ([v167 targetDeviceType])
    {
      v39 = [v167 targetDeviceType];
      v40 = v39 == +[MCProfile thisDeviceType];
      v27 = v167;
      if (!v40)
      {
        v50 = [(MCInstaller *)self _targetDeviceMismatchError];
        v37 = [(MCInstaller *)self _targetDeviceErrorWithUnderlyingError:v50];

        v38 = 0;
        v29 = v50;
        goto LABEL_76;
      }
    }
  }

  if ([v27 isStub])
  {
    v41 = v27;
    v42 = MCProfileErrorDomain;
    v171 = [v41 friendlyName];
    v43 = MCErrorArray();
    v44 = [NSError MCErrorWithDomain:v42 code:1000 descriptionArray:v43 underlyingError:0 errorType:MCErrorTypeFatal, v171, 0];
    v45 = v34;
    v46 = [v44 MCCopyAsPrimaryError];

    v38 = 0;
    v29 = v171;
    v27 = v41;
    v37 = v46;
    v34 = v45;
    goto LABEL_76;
  }

  v47 = +[MDMCloudConfiguration sharedConfiguration];
  v48 = [v47 userMode];

  if (v48 != 1)
  {
    v30 = v29;
    v27 = v167;
    goto LABEL_50;
  }

  v49 = +[MCPayload unavailablePayloadsInEphemeralMultiUser];
  v13 = v168;
  if (v19 == 2)
  {
    +[MCPayload unavailableUserPayloadsInEphemeralMultiUser];
  }

  else
  {
    +[MCPayload unavailableSystemPayloadsInEphemeralMultiUser];
  }
  v165 = ;
  v186 = 0u;
  v187 = 0u;
  v185 = 0u;
  v184 = 0u;
  obj = [v167 payloads];
  v51 = [obj countByEnumeratingWithState:&v184 objects:v193 count:16];
  if (!v51)
  {
    goto LABEL_49;
  }

  v52 = v51;
  v161 = v10;
  v53 = *v185;
  while (2)
  {
    for (i = 0; i != v52; i = i + 1)
    {
      if (*v185 != v53)
      {
        objc_enumerationMutation(obj);
      }

      v55 = *(*(&v184 + 1) + 8 * i);
      if ([v49 containsObject:objc_opt_class()])
      {
        v56 = 4029;
LABEL_47:
        v160 = MCInstallationErrorDomain;
        v57 = [v55 type];
        v58 = MCErrorArray();
        v59 = [NSError MCErrorWithDomain:v160 code:v56 descriptionArray:v58 errorType:MCErrorTypeFatal, v57, 0];

        v29 = v59;
        goto LABEL_48;
      }

      if ([v165 containsObject:objc_opt_class()])
      {
        if (v19 == 2)
        {
          v56 = 4032;
        }

        else
        {
          v56 = 4031;
        }

        goto LABEL_47;
      }
    }

    v52 = [obj countByEnumeratingWithState:&v184 objects:v193 count:16];
    if (v52)
    {
      continue;
    }

    break;
  }

LABEL_48:
  v10 = v161;
  v13 = v168;
LABEL_49:

  v30 = 0;
  v27 = v167;
  if (v29)
  {
    goto LABEL_77;
  }

LABEL_50:
  v166 = v34;
  v60 = v30;
  if ([v27 containsPayloadOfClass:objc_opt_class()])
  {
    v61 = objc_opt_class();
    v62 = [v27 identifier];
    v29 = [(MCInstaller *)self existingProfileContainingPayloadClass:v61 excludingProfileIdentifier:v62];

    if (v29)
    {
      v63 = MCInstallationErrorDomain;
      v64 = [v29 friendlyName];
      v158 = v64;
      v65 = MCErrorArray();
      v66 = MCErrorTypeFatal;
      v67 = v63;
      v68 = 4017;
      goto LABEL_74;
    }

    if ([v27 countOfPayloadsOfClass:objc_opt_class()] >= 2)
    {
      v30 = NSError;
      v69 = MCInstallationErrorDomain;
      v70 = [v27 friendlyName];
      v71 = MCErrorArray();
      v72 = [NSError MCErrorWithDomain:v69 code:4017 descriptionArray:v71 errorType:MCErrorTypeFatal, v70, 0];

      v60 = v72;
    }
  }

  if ([v27 containsPayloadOfClass:objc_opt_class()])
  {
    v73 = objc_opt_class();
    v74 = [v27 identifier];
    v29 = [(MCInstaller *)self existingProfileContainingPayloadClass:v73 excludingProfileIdentifier:v74];

    if (v29)
    {
      v75 = MCInstallationErrorDomain;
      v64 = [v29 friendlyName];
      v158 = v64;
      v65 = MCErrorArray();
      v66 = MCErrorTypeFatal;
      v67 = v75;
      v68 = 4019;
      goto LABEL_74;
    }

    if ([v27 countOfPayloadsOfClass:objc_opt_class()] >= 2)
    {
      v30 = NSError;
      v76 = MCInstallationErrorDomain;
      v77 = [v27 friendlyName];
      v78 = MCErrorArray();
      v79 = [NSError MCErrorWithDomain:v76 code:4019 descriptionArray:v78 errorType:MCErrorTypeFatal, v77, 0];

      v60 = v79;
    }
  }

  if ([v27 containsPayloadOfClass:objc_opt_class()])
  {
    if (v19 == 2)
    {
      v30 = 9;
    }

    else
    {
      v30 = 19;
    }

    v80 = objc_opt_class();
    v81 = [v27 identifier];
    v29 = [(MCInstaller *)self existingProfileContainingPayloadClass:v80 inProfilesWithFilterFlags:v30 excludingProfileIdentifier:v81];

    if (v29)
    {
      v82 = MCInstallationErrorDomain;
      v64 = [v29 friendlyName];
      v158 = v64;
      v65 = MCErrorArray();
      v66 = MCErrorTypeFatal;
      v67 = v82;
      v68 = 4027;
      goto LABEL_74;
    }

    if ([v27 countOfPayloadsOfClass:objc_opt_class()] >= 2)
    {
      v30 = NSError;
      v83 = MCInstallationErrorDomain;
      v84 = [v27 friendlyName];
      v85 = MCErrorArray();
      v86 = [NSError MCErrorWithDomain:v83 code:4027 descriptionArray:v85 errorType:MCErrorTypeFatal, v84, 0];

      v60 = v86;
    }
  }

  if (![v27 containsPayloadOfClass:objc_opt_class()])
  {
LABEL_93:
    if (([v27 containsPayloadOfClass:objc_opt_class()] & 1) != 0 || objc_msgSend(v27, "containsPayloadOfClass:", objc_opt_class()))
    {
      v108 = objc_opt_class();
      v109 = [v27 identifier];
      v30 = self;
      v29 = [(MCInstaller *)self existingProfileContainingPayloadClass:v108 excludingProfileIdentifier:v109];

      if (v29 || (v110 = objc_opt_class(), [v27 identifier], v111 = objc_claimAutoreleasedReturnValue(), -[MCInstaller existingProfileContainingPayloadClass:excludingProfileIdentifier:](self, "existingProfileContainingPayloadClass:excludingProfileIdentifier:", v110, v111), v29 = objc_claimAutoreleasedReturnValue(), v111, v29))
      {
        v112 = MCInstallationErrorDomain;
        v113 = [v29 friendlyName];
        v114 = MCErrorArray();
        v115 = [NSError MCErrorWithDomain:v112 code:4018 descriptionArray:v114 errorType:MCErrorTypeFatal, v113, 0];

LABEL_98:
        v38 = 0;
        v37 = v115;
        goto LABEL_75;
      }

      v116 = [v27 countOfPayloadsOfClass:objc_opt_class()];
      if (&v116[[v27 countOfPayloadsOfClass:objc_opt_class()]] >= 2)
      {
        v124 = MCInstallationErrorDomain;
        v29 = [v27 friendlyName];
        v113 = MCErrorArray();
        v115 = [NSError MCErrorWithDomain:v124 code:4018 descriptionArray:v113 errorType:MCErrorTypeFatal, v29, 0];
        v114 = v60;
        goto LABEL_98;
      }
    }

    if ([v27 containsPayloadOfClass:objc_opt_class()])
    {
      v117 = objc_opt_class();
      v118 = [v27 identifier];
      v29 = [(MCInstaller *)self existingProfileContainingPayloadClass:v117 excludingProfileIdentifier:v118];

      if (v29)
      {
        v119 = MCInstallationErrorDomain;
        v120 = [v29 friendlyName];
        v159 = v120;
LABEL_128:
        v135 = MCErrorArray();
        v136 = [NSError MCErrorWithDomain:v119 code:4034 descriptionArray:v135 errorType:MCErrorTypeFatal, v159, 0];

        v38 = 0;
        v37 = v136;
        goto LABEL_75;
      }

      if ([v27 countOfPayloadsOfClass:objc_opt_class()] >= 2)
      {
        v119 = MCInstallationErrorDomain;
        v120 = [v27 friendlyName];
        v159 = v120;
        goto LABEL_128;
      }
    }

    if ([v27 containsPayloadOfClass:objc_opt_class()])
    {
      v183 = v60;
      v121 = [(MCInstaller *)self _allowsPasswordPoliciesFromProfile:v27 outError:&v183];
      v29 = v183;

      if (!v121)
      {
        v30 = 0;
        v13 = v168;
        v34 = v166;
        goto LABEL_77;
      }

      v60 = v29;
    }

    if ([v27 containsPayloadOfClass:objc_opt_class()])
    {
      v122 = objc_opt_class();
      v123 = [v27 identifier];
      v29 = [(MCInstaller *)self existingProfileContainingPayloadClass:v122 excludingProfileIdentifier:v123];

      if (v29)
      {
        v119 = MCInstallationErrorDomain;
        v120 = [v29 friendlyName];
        v159 = v120;
        goto LABEL_128;
      }

      if ([v27 countOfPayloadsOfClass:objc_opt_class()] >= 2)
      {
        v119 = MCInstallationErrorDomain;
        v120 = [v27 friendlyName];
        v159 = v120;
        goto LABEL_128;
      }
    }

    v29 = [v27 removalDate];
    if (v29)
    {
      v125 = +[NSDate date];
      v126 = [v29 compare:v125];

      if (v126 == -1)
      {
        v133 = MCInstallationErrorDomain;
        v131 = [v27 friendlyName];
        v134 = MCErrorArray();
        v37 = [NSError MCErrorWithDomain:v133 code:4025 descriptionArray:v134 errorType:MCErrorTypeFatal, v131, 0];

        goto LABEL_125;
      }
    }

    v127 = [v11 objectForKeyedSubscript:kMCInstallProfileOptionsIsRMUserEnrollment];
    v128 = [v127 BOOLValue];
    if (v128)
    {
      goto LABEL_117;
    }

    v30 = [v11 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
    if ([v30 BOOLValue])
    {
      obj = +[MDMConfiguration sharedConfiguration];
      if ([obj isUserEnrollment])
      {
        v27 = v167;
LABEL_117:
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((v128 & 1) == 0)
        {
        }

        if (isKindOfClass)
        {
          v130 = MCInstallationErrorDomain;
          v131 = [v27 friendlyName];
          v132 = MCErrorArray();
          v37 = [NSError MCErrorWithDomain:v130 code:4040 descriptionArray:v132 errorType:MCErrorTypeFatal, v131, 0];

LABEL_125:
          v38 = 0;
LABEL_126:

          goto LABEL_75;
        }

LABEL_131:
        v137 = +[MCActivationUtilities sharedInstance];
        v138 = [v137 isHRNMode];

        v162 = v10;
        if (v138 > 1)
        {
          v37 = v60;
        }

        else
        {
          v139 = +[MCPayload hrnRequiredPayloads];
          v179 = 0u;
          v180 = 0u;
          v181 = 0u;
          v182 = 0u;
          v140 = [v27 payloads];
          v141 = [v140 countByEnumeratingWithState:&v179 objects:v192 count:16];
          if (v141)
          {
            v142 = v141;
            v143 = *v180;
            while (2)
            {
              for (j = 0; j != v142; j = j + 1)
              {
                if (*v180 != v143)
                {
                  objc_enumerationMutation(v140);
                }

                v145 = *(*(&v179 + 1) + 8 * j);
                if ([v139 containsObject:objc_opt_class()])
                {
                  obja = MCInstallationErrorDomain;
                  v146 = [v145 type];
                  v147 = MCErrorArray();
                  v148 = [NSError MCErrorWithDomain:obja code:4044 descriptionArray:v147 errorType:MCErrorTypeFatal, v146, 0];

                  v37 = v148;
                  goto LABEL_143;
                }
              }

              v142 = [v140 countByEnumeratingWithState:&v179 objects:v192 count:16];
              if (v142)
              {
                continue;
              }

              break;
            }
          }

          v37 = v60;
LABEL_143:
        }

        v34 = v166;
        if (v37)
        {
          v38 = 0;
          v10 = v162;
          goto LABEL_19;
        }

        v149 = MCLocalizedString();
        [v169 setDefaultStatus:v149];

        objc_opt_class();
        v150 = v166;
        if (objc_opt_isKindOfClass())
        {
          v178 = 0;
          [(MCInstaller *)self _showWarningsForProfile:v167 interactionClient:v169 outError:&v178];
          v151 = v178;
          if (v151)
          {
            v37 = v151;
            v38 = 0;
            v10 = v162;
            v27 = v167;
            goto LABEL_76;
          }

          v176 = 0;
          v177 = 0;
          v152 = [v166 fetchFinalProfileWithClient:v169 outProfileData:&v177 outError:&v176];
          v131 = v177;
          v153 = v176;
          if (v153)
          {
            v37 = v153;
LABEL_160:

            v38 = 0;
            v166 = v34;
            v27 = v167;
            v10 = v162;
            goto LABEL_126;
          }

          v154 = v152;

          v167 = v154;
          v34 = [v154 createHandler];

          v155 = _MCLogObjects[9];
          if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v191 = v154;
            _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEBUG, "Retrieved Final profile: %{public}@", buf, 0xCu);
          }

          [v173 setObject:&__kCFBooleanTrue forKeyedSubscript:kMCInstallProfileOptionIsOTAInstallation];
          v175 = 0;
          v156 = [v154 mayInstallWithOptions:v173 hasInteractionClient:v169 != 0 outError:&v175];
          v37 = v175;
          if (!v156)
          {
            goto LABEL_160;
          }

          if (v169 && ([v169 didBeginInstallingNextProfileData:v131] & 1) == 0)
          {
            v157 = [v34 userCancelledError];

            v37 = v157;
            goto LABEL_160;
          }

          v150 = v34;
        }

        else
        {
          v37 = 0;
        }

        v166 = v150;
        v131 = v37;
        v174 = v37;
        v38 = [(MCInstaller *)self _installProfileHandler:v34 options:v173 interactionClient:v169 source:v168 outError:&v174];
        v37 = v174;
        v10 = v162;
        v27 = v167;
        goto LABEL_126;
      }

      v27 = v167;
    }

    goto LABEL_131;
  }

  if (v19 == 2)
  {
    v87 = 9;
  }

  else
  {
    v87 = 19;
  }

  v88 = objc_opt_class();
  v89 = [v27 identifier];
  v29 = [(MCInstaller *)self existingProfileContainingPayloadClass:v88 inProfilesWithFilterFlags:v87 excludingProfileIdentifier:v89];

  if (!v29)
  {
    if ([v27 countOfPayloadsOfClass:objc_opt_class()] >= 2)
    {
      v104 = MCInstallationErrorDomain;
      v105 = [v27 friendlyName];
      v106 = MCErrorArray();
      v107 = [NSError MCErrorWithDomain:v104 code:4028 descriptionArray:v106 errorType:MCErrorTypeFatal, v105, 0];

      v60 = v107;
    }

    goto LABEL_93;
  }

  v90 = MCInstallationErrorDomain;
  v64 = [v29 friendlyName];
  v158 = v64;
  v65 = MCErrorArray();
  v66 = MCErrorTypeFatal;
  v67 = v90;
  v68 = 4028;
LABEL_74:
  v37 = [NSError MCErrorWithDomain:v67 code:v68 descriptionArray:v65 errorType:v66, v158, 0];

  v38 = 0;
LABEL_75:
  v34 = v166;
LABEL_76:

  v30 = v38;
  v29 = v37;
  v13 = v168;
LABEL_77:

LABEL_78:
  v12 = v169;
LABEL_79:

  [v26 commitChanges];
  if (v30)
  {
    MCSendProfileListChangedNotification();
  }

  if (v29)
  {
    v91 = v26;
    v92 = v12;
    v93 = v13;
    v94 = v10;
    v95 = MCInstallationErrorDomain;
    v96 = MCErrorArray();
    v97 = [NSError MCErrorWithDomain:v95 code:4001 descriptionArray:v96 underlyingError:v29 errorType:MCErrorTypeFatal, 0];

    v98 = _MCLogObjects[9];
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      v99 = v98;
      v100 = [v97 MCVerboseDescription];
      *buf = 138543362;
      v191 = v100;
      _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "Installation failed. Error: %{public}@", buf, 0xCu);
    }

    v10 = v94;
    v13 = v93;
    if (a7)
    {
      v101 = v97;
      *a7 = v97;
    }

    v102 = 0;
    v12 = v92;
    v26 = v91;
  }

  else
  {
    v102 = v30;
  }

  return v102;
}

- (id)_assumeOwnershipProfileHandler:(id)a3 options:(id)a4 source:(id)a5 outError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v59 = a5;
  v12 = [v10 profile];
  v13 = [v12 identifier];

  v14 = [v11 objectForKeyedSubscript:kMCInstallProfileOptionInstallationType];
  LODWORD(a5) = [v14 intValue];

  v58 = +[MCDependencyManager sharedManager];
  v57 = a5;
  if (a5 == 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v16 = [(MCInstaller *)self _installedProfileWithIdentifier:v13 installationType:v15];
  v17 = kMCInstallProfileOptionsIsInstalledByDeclarativeManagement;
  v18 = [v11 objectForKeyedSubscript:kMCInstallProfileOptionsIsInstalledByDeclarativeManagement];
  v19 = [v18 BOOLValue];

  if ((v19 & 1) == 0)
  {
    v20 = MCInstallationErrorDomain;
    v21 = MCErrorArray();
    v22 = [NSError MCErrorWithDomain:v20 code:4048 descriptionArray:v21 errorType:MCErrorTypeFatal, 0];
    v23 = [v22 MCCopyAsPrimaryError];

    if (v23)
    {
      goto LABEL_19;
    }
  }

  v24 = [v10 profile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [v10 profile];
    v26 = [v25 isMDMProfile];

    if (v26)
    {
      v27 = MCInstallationErrorDomain;
      MCErrorArray();
      v29 = v28 = a6;
      v30 = [NSError MCErrorWithDomain:v27 code:4049 descriptionArray:v29 errorType:MCErrorTypeFatal, 0];
      v23 = [v30 MCCopyAsPrimaryError];

      a6 = v28;
      if (v23)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
  }

  if (v16)
  {
    goto LABEL_12;
  }

  v42 = MCInstallationErrorDomain;
  MCErrorArray();
  v44 = v43 = a6;
  v45 = [NSError MCErrorWithDomain:v42 code:4050 descriptionArray:v44 errorType:MCErrorTypeFatal, v13, 0];
  v23 = [v45 MCCopyAsPrimaryError];

  a6 = v43;
  if (!v23)
  {
LABEL_12:
    if ([v16 isManagedByMDM])
    {
      v23 = 0;
    }

    else
    {
      v31 = MCInstallationErrorDomain;
      MCErrorArray();
      v33 = v32 = a6;
      v34 = [NSError MCErrorWithDomain:v31 code:4051 descriptionArray:v33 errorType:MCErrorTypeFatal, v13, 0];
      v23 = [v34 MCCopyAsPrimaryError];

      a6 = v32;
      if (v23)
      {
        goto LABEL_19;
      }
    }

    if (v16)
    {
      v35 = [v16 installOptions];
      v36 = [v35 mutableCopy];

      v37 = kMCInstallProfileOptionManagingProfileIdentifier;
      v38 = [v36 objectForKeyedSubscript:kMCInstallProfileOptionManagingProfileIdentifier];
      [v36 setObject:0 forKeyedSubscript:v37];
      v39 = kMCInstallProfileOptionInstalledBy;
      v40 = [v11 objectForKeyedSubscript:kMCInstallProfileOptionInstalledBy];
      [v36 setObject:v40 forKeyedSubscript:v39];

      [v36 setObject:&__kCFBooleanTrue forKeyedSubscript:v17];
      v41 = [v11 objectForKeyedSubscript:@"RemoteManagement.UserInfo"];
      [v36 setObject:v41 forKeyedSubscript:@"RemoteManagement.UserInfo"];

      [v16 setInstallOptions:v36];
      if (v57 == 2)
      {
        sub_100046460();
      }

      else
      {
        sub_1000464B0();
      }
      v53 = ;
      v50 = v58;
      v49 = v59;
      [v16 writeStubToDirectory:v53];

      v54 = [v16 identifier];
      [v58 removeDependent:v54 fromParent:v38 inDomain:kMCDMManagingProfileToManagedProfileKey reciprocalDomain:kMCDMManagedProfileToManagingProfileKey fromSystem:1 user:1];

      [v58 commitChanges];
      v55 = objc_opt_new();
      [v55 addEventForProfile:v16 operation:@"assume-ownership" source:v59];

      v52 = v13;
      v23 = 0;
      goto LABEL_26;
    }
  }

LABEL_19:
  v46 = _MCLogObjects[9];
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    v47 = v46;
    v48 = [v23 MCVerboseDescription];
    *buf = 138543362;
    v61 = v48;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Installation failed. Error: %{public}@", buf, 0xCu);
  }

  v50 = v58;
  v49 = v59;
  if (a6)
  {
    v51 = v23;
    v52 = 0;
    *a6 = v23;
  }

  else
  {
    v52 = 0;
  }

LABEL_26:

  return v52;
}

- (BOOL)_allowsPasswordPoliciesFromProfile:(id)a3 outError:(id *)a4
{
  v5 = a3;
  if ((+[MCRestrictionManager mayChangePasscode]& 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [v5 payloadsOfKindOfClass:objc_opt_class()];
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v22 = a4;
      v23 = v5;
      v10 = 0;
      v11 = *v26;
LABEL_5:
      v12 = 0;
      v13 = v10;
      while (1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v25 + 1) + 8 * v12);
        v15 = +[MCPasscodeManagerWriter sharedManager];
        v16 = [v14 restrictions];
        v24 = v13;
        v17 = [v15 currentPasscodeCompliesWithPolicyFromRestrictions:v16 outError:&v24];
        v10 = v24;

        if ((v17 & 1) == 0)
        {
          break;
        }

        v12 = v12 + 1;
        v13 = v10;
        if (v9 == v12)
        {
          v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          v6 = 1;
          goto LABEL_15;
        }
      }

      v6 = v22;
      if (v22)
      {
        v18 = MCInstallationErrorDomain;
        v5 = v23;
        v19 = [v23 friendlyName];
        v20 = MCErrorArray();
        *v22 = [NSError MCErrorWithDomain:v18 code:4026 descriptionArray:v20 underlyingError:v10 errorType:MCErrorTypeFatal, v19, 0];

        v6 = 0;
        goto LABEL_16;
      }

LABEL_15:
      v5 = v23;
    }

    else
    {
      v10 = 0;
      v6 = 1;
    }

LABEL_16:
  }

  return v6;
}

- (BOOL)_overrideProfileValidation
{
  result = 0;
  if (os_variant_has_internal_ui())
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(kMCInternalOverrideProfileValidationKey, kCFPreferencesAnyApplication, &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat && AppBooleanValue != 0)
    {
      return 1;
    }
  }

  return result;
}

- (id)_errorUnacceptablePayload:(id)a3
{
  v3 = MCInstallationErrorDomain;
  v4 = [a3 type];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:4022 descriptionArray:v5 errorType:MCErrorTypeFatal, v4, 0];

  return v6;
}

- (id)_preflightProfileForInstallationOnHomePod:(id)a3
{
  v4 = a3;
  if ([(MCInstaller *)self _overrideProfileValidation])
  {
    v5 = _MCLogObjects[9];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Overriding profile validation for HomePod", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    v7 = +[MCPayload remoteQueueableHomePodPayloadClasses];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [v4 payloads];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          if (([v7 containsObject:objc_opt_class()] & 1) == 0)
          {
            v14 = _MCLogObjects[9];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v14;
              v16 = objc_opt_class();
              v17 = NSStringFromClass(v16);
              v18 = [v13 type];
              *buf = 138543618;
              v25 = v17;
              v26 = 2114;
              v27 = v18;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Payload class %{public}@ (%{public}@) is not available on HomePod", buf, 0x16u);
            }

            v6 = [(MCInstaller *)self _errorUnacceptablePayload:v13];
            goto LABEL_17;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_17:
  }

  return v6;
}

- (id)_preflightProfileForInstallationOnWatch:(id)a3
{
  v4 = a3;
  if ([(MCInstaller *)self _overrideProfileValidation])
  {
    v5 = _MCLogObjects[9];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Overriding profile validation for Watch", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    v33 = 1;
    v7 = [(MCInstaller *)self _watchInformationOutIsCellularSupported:&v33];
    if (qword_100136B88 != -1)
    {
      sub_1000C2800();
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = [v4 payloads];
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v40 count:16];
    if (v9)
    {
      v10 = v9;
      v28 = self;
      v11 = *v30;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          if (([qword_100136B80 containsObject:objc_opt_class()] & 1) == 0)
          {
            v16 = _MCLogObjects[9];
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_29;
            }

            v17 = v16;
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            v20 = [v13 type];
            *buf = 138543618;
            v35 = v19;
            v36 = 2114;
            v37 = v20;
            v21 = "Payload class %{public}@ (%{public}@) is not available on Watch";
            goto LABEL_27;
          }

          if ([v7 count] && (objc_msgSend(v13, "isSupportedByWatchVersions:", v7) & 1) == 0)
          {
            v22 = _MCLogObjects[9];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v17 = v22;
              v23 = objc_opt_class();
              v19 = NSStringFromClass(v23);
              v20 = [v13 type];
              v24 = [v7 description];
              *buf = 138543874;
              v35 = v19;
              v36 = 2114;
              v37 = v20;
              v38 = 2114;
              v39 = v24;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Payload class %{public}@ (%{public}@) is not supported on any Watch version: %{public}@", buf, 0x20u);

              goto LABEL_28;
            }

LABEL_29:
            v6 = [(MCInstaller *)v28 _errorUnacceptablePayload:v13, v28];
            goto LABEL_30;
          }

          if ((v33 & 1) == 0)
          {
            v14 = +[MCPayload cellularRequiredPayloads];
            v15 = [v14 containsObject:objc_opt_class()];

            if (v15)
            {
              v25 = _MCLogObjects[9];
              if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_29;
              }

              v17 = v25;
              v26 = objc_opt_class();
              v19 = NSStringFromClass(v26);
              v20 = [v13 type];
              *buf = 138543618;
              v35 = v19;
              v36 = 2114;
              v37 = v20;
              v21 = "Payload class %{public}@ (%{public}@) requires a cellular-capable Watch";
LABEL_27:
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v21, buf, 0x16u);
LABEL_28:

              goto LABEL_29;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v29 objects:v40 count:16];
        v6 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_30:
  }

  return v6;
}

- (id)_watchInformationOutIsCellularSupported:(BOOL *)a3
{
  v4 = +[NSMutableArray array];
  v5 = +[NRPairedDeviceRegistry sharedInstance];
  v6 = +[NRPairedDeviceRegistry pairedDevicesSelectorBlock];
  v7 = [v5 getAllDevicesWithArchivedAltAccountDevicesMatching:v6];

  if ([v7 count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v14 = [NSNumber numberWithUnsignedInt:NRWatchOSVersionForRemoteDevice()];
          [v4 addObject:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v10);
    }
  }

  if (v7 && [v7 count])
  {
    v23 = a3;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      while (2)
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v24 + 1) + 8 * j);
          v21 = [[NSUUID alloc] initWithUUIDString:@"4AA3FF3B-3224-42E6-995E-481F49AE9260"];
          LODWORD(v20) = [v20 supportsCapability:v21];

          if (v20)
          {
            *v23 = 1;
            goto LABEL_22;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  return v4;
}

- (id)_profileNotEligibleErrorWithProfile:(id)a3
{
  v3 = MCInstallationErrorDomain;
  v4 = [a3 friendlyName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:4012 descriptionArray:v5 errorType:MCErrorTypeFatal, v4, 0];

  return v6;
}

- (id)updateProfileWithIdentifier:(id)a3 interactionClient:(id)a4 installForSystem:(BOOL)a5 source:(id)a6 outError:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v57 = a6;
  v12 = +[MCDependencyManager sharedManager];
  v13 = +[MCManifest sharedManifest];
  v14 = [v13 allInstalledUserProfileIdentifiers];

  v15 = [v14 containsObject:v10];
  if (v15)
  {
    MCUserProfileStorageDirectory();
  }

  else
  {
    MCSystemProfileStorageDirectory();
  }
  v16 = ;
  v17 = [v10 MCHashedFilenameWithExtension:@"stub"];
  v18 = [v16 stringByAppendingPathComponent:v17];

  v19 = [NSData dataWithContentsOfFile:v18];
  v61 = 0;
  v20 = [MCProfile profileWithData:v19 outError:&v61];
  v21 = v61;
  if (v21)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = [(MCInstaller *)self _profileNotEligibleErrorWithProfile:v20];
LABEL_10:
    v24 = v21;
    v25 = 0;
    goto LABEL_11;
  }

  v55 = [v20 OTAProfile];
  if (v55)
  {
    v54 = v11;
    v22 = +[MCPasscodeManagerWriter sharedManager];
    v23 = [v22 isDeviceLocked];

    if (v23)
    {
      v24 = [(MCInstaller *)self _deviceLockedError];
      v25 = 0;
      v11 = v54;
    }

    else
    {
      v33 = MCLocalizedString();
      [v54 setDefaultStatus:v33];

      v11 = v54;
      v59 = 0;
      v60 = 0;
      v51 = [v55 createHandler];
      v53 = [v51 fetchFinalProfileWithClient:v54 outProfileData:&v60 outError:&v59];
      v52 = v60;
      v34 = v59;
      if (v34)
      {
        v24 = v34;
        v25 = 0;
      }

      else
      {
        v35 = [v53 identifier];
        v36 = [v20 identifier];
        v49 = [v35 isEqualToString:v36];

        if (v49)
        {
          v50 = [v53 createHandler];
          if (v50)
          {
            v11 = v54;
            if (v54 && ([v54 didBeginInstallingNextProfileData:v52] & 1) == 0)
            {
              v42 = v50;
              v24 = [v50 userCancelledError];
              v25 = 0;
            }

            else
            {
              v37 = +[NSMutableDictionary dictionary];
              v38 = [v20 identifier];
              v46 = self;
              v39 = [(MCInstaller *)self _managingProfileIdentifierForProfileIdentifier:v38];

              v48 = v39;
              if (v39)
              {
                [v37 setObject:v39 forKeyedSubscript:kMCInstallProfileOptionManagingProfileIdentifier];
              }

              if (v15)
              {
                v40 = &off_1001271F8;
              }

              else
              {
                v40 = &off_100127210;
              }

              [v37 setObject:v40 forKeyedSubscript:kMCInstallProfileOptionFilterFlag];
              [v37 setObject:&__kCFBooleanTrue forKeyedSubscript:kMCInstallProfileOptionIsOTAInstallation];
              [v37 setObject:&__kCFBooleanTrue forKeyedSubscript:kMCInstallProfileOptionIsOTAUpdate];
              v41 = +[MCProfile newProfileSignatureVersion];
              [v37 setObject:v41 forKeyedSubscript:kMCInstallProfileOptionSignatureVersion];

              v58 = 0;
              v42 = v50;
              v11 = v54;
              v25 = [(MCInstaller *)v46 _installProfileHandler:v50 options:v37 interactionClient:v54 source:v57 outError:&v58];
              v47 = v37;
              v24 = v58;
            }
          }

          else
          {
            v24 = [(MCInstaller *)self _malformedPayloadErrorInternal:0];
            v25 = 0;
            v11 = v54;
            v42 = 0;
          }
        }

        else
        {
          v43 = MCInstallationErrorDomain;
          v42 = MCErrorArray();
          v24 = [NSError MCErrorWithDomain:v43 code:4010 descriptionArray:v42 errorType:MCErrorTypeFatal, 0];
          v25 = 0;
          v11 = v54;
        }
      }
    }
  }

  else
  {
    v24 = [(MCInstaller *)self _profileNotEligibleErrorWithProfile:v20];
    v25 = 0;
  }

LABEL_11:
  [v12 commitChanges];
  if (v25)
  {
    MCSendProfileListChangedNotification();
  }

  if (v24)
  {
    v26 = MCInstallationErrorDomain;
    if (v20)
    {
      v18 = [v20 friendlyName];
      v44 = v18;
      v45 = 0;
    }

    else
    {
      v44 = 0;
    }

    v27 = MCErrorArray();
    v29 = [NSError MCErrorWithDomain:v26 code:4013 descriptionArray:v27 underlyingError:v24 errorType:MCErrorTypeFatal, v44, v45];
    if (v20)
    {

      v27 = v18;
    }

    v30 = _MCLogObjects[9];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v63 = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Profile update failed: %{public}@", buf, 0xCu);
    }

    if (a7)
    {
      v31 = v29;
      *a7 = v29;
    }

    v28 = 0;
  }

  else
  {
    v28 = v25;
  }

  return v28;
}

- (BOOL)interactionClient:(id)a3 didRequestPreflightUserInputResponses:(id)a4 forPayloadIndex:(unint64_t)a5 outError:(id *)a6
{
  v8 = a4;
  if ([v8 count])
  {
    v9 = [v8 objectAtIndex:0];
    v10 = [v9 objectForKey:kMCIDResponseKey];
    if (v10)
    {
      currentlyInstallingRestrictions = self->_currentlyInstallingRestrictions;
      v20 = 0;
      v12 = [MCPasscodeManagerWriter passcode:v10 compliesWithPolicyFromRestrictions:currentlyInstallingRestrictions checkHistory:1 outError:&v20];
      v13 = v20;
      v14 = v13;
      if (a6)
      {
        if (v12)
        {
          v15 = 1;
        }

        else
        {
          v15 = v13 == 0;
        }

        if (!v15)
        {
          v16 = [v13 userInfo];
          v17 = [v16 mutableCopy];

          [v17 setObject:MCErrorTypeNeedsRetry forKey:MCErrorTypeKey];
          v18 = [v14 domain];
          *a6 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v18, [v14 code], v17);
        }
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)_removeOrphanedResourcesOptions:(id)a3 includingAccounts:(BOOL)a4
{
  v82 = a4;
  v84 = a3;
  v5 = +[MCDependencyManager sharedManager];
  v6 = kMCDMManagedProfileToManagingProfileKey;
  v83 = [v5 orphanedParentsForDomain:kMCDMManagedProfileToManagingProfileKey];
  if ([v83 count])
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v7 = v83;
    v8 = [v7 countByEnumeratingWithState:&v114 objects:v126 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v115;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v115 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v114 + 1) + 8 * i);
          v13 = [v5 dependentsOfParent:v12 inSystemDomain:v6];
          v14 = [v13 count];

          if (!v14)
          {
            v15 = [(MCInstaller *)self _reallyRemoveInstalledProfileWithIdentifier:v12 installationType:1 options:0 source:@"Orphaned Resource Removal"];
          }

          v16 = [v5 dependentsOfParent:v12 inUserDomain:v6];
          v17 = [v16 count];

          if (!v17)
          {
            v18 = [(MCInstaller *)self _reallyRemoveInstalledProfileWithIdentifier:v12 installationType:2 options:0 source:@"Orphaned Resource Removal"];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v114 objects:v126 count:16];
      }

      while (v9);
    }

    v19 = +[MCServerSideHacks sharedHacks];
    v20 = +[MCRestrictionManager sharedManager];
    v21 = [v20 effectiveUserSettings];
    [v19 recomputeHacksAfterProfileChangesEffectiveUserSettings:v21 sendNotifications:1];
  }

  v22 = kMCDMProvisioningProfileToManagingProfileKey;
  [v5 orphanedParentsForDomain:kMCDMProvisioningProfileToManagingProfileKey];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = v113 = 0u;
  v23 = [obj countByEnumeratingWithState:&v110 objects:v125 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v111;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v111 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v110 + 1) + 8 * j);
        v28 = [v5 dependentsOfParent:v27 inDomain:v22];
        v29 = [v28 count];

        if (!v29)
        {
          v30 = [(MCInstaller *)self removeProvisioningProfileUUID:v27 sender:@"MCInstaller.removeOrphanedResources"];
        }
      }

      v24 = [obj countByEnumeratingWithState:&v110 objects:v125 count:16];
    }

    while (v24);
  }

  v31 = [v5 orphanedParentsForDomain:kMCDMCertificateToPayloadUUIDDependencyKey];
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v32 = [v31 countByEnumeratingWithState:&v106 objects:v124 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v107;
    do
    {
      for (k = 0; k != v33; k = k + 1)
      {
        if (*v107 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(MCInstaller *)self _removeOrphanedCertificateDependencyManager:v5 persistentID:*(*(&v106 + 1) + 8 * k) persona:0];
      }

      v33 = [v31 countByEnumeratingWithState:&v106 objects:v124 count:16];
    }

    while (v33);
  }

  v81 = v31;
  v36 = [v5 orphanedParentsForDomain:kMCDMEnterpriseCertificateToPayloadUUIDDependencyKey];
  if ([v36 count])
  {
    v37 = kMDMPersonaKey;
    v38 = [v84 objectForKeyedSubscript:kMDMPersonaKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [v84 objectForKeyedSubscript:v37];
    }

    else
    {
      v39 = 0;
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v40 = v36;
    v41 = [v40 countByEnumeratingWithState:&v102 objects:v123 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v103;
      do
      {
        for (m = 0; m != v42; m = m + 1)
        {
          if (*v103 != v43)
          {
            objc_enumerationMutation(v40);
          }

          [(MCInstaller *)self _removeOrphanedCertificateDependencyManager:v5 persistentID:*(*(&v102 + 1) + 8 * m) persona:v39];
        }

        v42 = [v40 countByEnumeratingWithState:&v102 objects:v123 count:16];
      }

      while (v42);
    }
  }

  v80 = v36;
  v45 = +[MCRestrictionManagerWriter sharedManager];
  [v45 removeOrphanedClientRestrictions];

  +[MCAirPlayPayloadHandler recomputeAirPlaySettings];
  [v5 orphanedParentsForDomain:kMCDMAirPlayPasswordDeviceNameToPayloadUUIDDependencyKey];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v86 = v101 = 0u;
  v46 = [v86 countByEnumeratingWithState:&v98 objects:v122 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v99;
    v49 = kMCAirPlayPasswordServiceKey;
    v50 = kMCAppleKeychainGroup;
    do
    {
      for (n = 0; n != v47; n = n + 1)
      {
        if (*v99 != v48)
        {
          objc_enumerationMutation(v86);
        }

        v52 = *(*(&v98 + 1) + 8 * n);
        v53 = _MCLogObjects[9];
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v121 = v52;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Removing AirPlay password for device name %{public}@", buf, 0xCu);
        }

        [MCKeychain removeItemForService:v49 account:v52 label:0 description:0 useSystemKeychain:1 group:v50];
      }

      v47 = [v86 countByEnumeratingWithState:&v98 objects:v122 count:16];
    }

    while (v47);
  }

  v54 = kMCDMFontURLToProfileIdentifierKey;
  v55 = [v5 orphanedParentsForDomain:kMCDMFontURLToProfileIdentifierKey];
  v85 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v55 count]);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v88 = v55;
  v56 = [v88 countByEnumeratingWithState:&v94 objects:v119 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v95;
    do
    {
      for (ii = 0; ii != v57; ii = ii + 1)
      {
        if (*v95 != v58)
        {
          objc_enumerationMutation(v88);
        }

        v60 = *(*(&v94 + 1) + 8 * ii);
        v61 = [v5 dependentsOfParent:v60 inDomain:v54];
        v62 = [v61 count];

        if (!v62)
        {
          v63 = [NSURL URLWithString:v60];
          v64 = +[NSFileManager defaultManager];
          v65 = [v63 path];
          v66 = [v64 fileExistsAtPath:v65];

          if (v66)
          {
            v67 = _MCLogObjects[9];
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v121 = v63;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "Removing font at %{public}@", buf, 0xCu);
            }

            [v85 addObject:v63];
          }
        }
      }

      v57 = [v88 countByEnumeratingWithState:&v94 objects:v119 count:16];
    }

    while (v57);
  }

  v68 = _MCLogObjects[9];
  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    v69 = v68;
    v70 = [v88 count];
    *buf = 134217984;
    v121 = v70;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Unregistering %lu fonts.", buf, 0xCu);
  }

  cf = 0;
  GSFontUnregisterPersistentURLs();
  v71 = _MCLogObjects[9];
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v121 = cf;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEBUG, "Results: %{public}@", buf, 0xCu);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v72 = v85;
  v73 = [v72 countByEnumeratingWithState:&v89 objects:v118 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v90;
    do
    {
      for (jj = 0; jj != v74; jj = jj + 1)
      {
        if (*v90 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = *(*(&v89 + 1) + 8 * jj);
        GSFontUnregisterURL();
        v78 = +[NSFileManager defaultManager];
        [v78 removeItemAtURL:v77 error:0];
      }

      v74 = [v72 countByEnumeratingWithState:&v89 objects:v118 count:16];
    }

    while (v74);
  }

  if (v82)
  {
    v79 = _MCLogObjects[9];
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "Fixing orphaned accounts...", buf, 2u);
    }

    +[MCAccountUtilities checkAccountConsistencyAndReleaseOrphanedAccounts];
  }
}

- (void)_removeOrphanedCertificateDependencyManager:(id)a3 persistentID:(id)a4 persona:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 dependentsOfParent:v9 inDomain:kMCDMCertificateToHostIdentifierDependencyKey];
  v12 = [v11 count];

  if (!v12)
  {
    v13 = [(MCInstaller *)self isCertificateReference:v9 aliasedInDependencyManager:v8];
    v14 = _MCLogObjects[9];
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        *buf = 138543362;
        v23 = v9;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping aliased certificate with persistent ID %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (v15)
      {
        *buf = 138543362;
        v23 = v9;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removing certificate with persistent ID %{public}@", buf, 0xCu);
      }

      v16 = [NSData MCDataWithHexString:v9];
      v17 = [MCKeychain copyCertificateWithPersistentID:v16 useSystemKeychain:1];
      if (v17)
      {
        v18 = v17;
        if (SecCertificateIsSelfSignedCA())
        {
          SecTrustStoreForDomain();
          SecTrustStoreRemoveCertificate();
        }

        CFRelease(v18);
      }

      if ([v10 length])
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1000513B4;
        v20[3] = &unk_10011B688;
        v21 = v16;
        v19 = [DMCPersonaHelper performBlockUnderPersona:v10 block:v20];
      }

      else
      {
        [MCKeychain removeItemWithPersistentID:v16 useSystemKeychain:1];
      }
    }
  }
}

- (id)_managingProfileIdentifierForProfileIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[MCDependencyManager sharedManager];
  v5 = [v4 dependentsOfParent:v3 inDomain:kMCDMManagedProfileToManagingProfileKey];

  if ([v5 count])
  {
    v6 = [v5 objectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_reallyRemoveInstalledProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 options:(id)a5 source:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(MCInstaller *)self _reallyRemoveProfileWithIdentifier:v12 installationType:a4 profileInstalled:1 targetDeviceType:+[MCProfile options:"thisDeviceType"]source:v11, v10];

  return v13;
}

- (id)_reallyRemoveProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 profileInstalled:(BOOL)a5 targetDeviceType:(unint64_t)a6 options:(id)a7 source:(id)a8
{
  v11 = a5;
  v14 = a3;
  v15 = a7;
  v16 = a8;
  if (!v14)
  {
    v30 = _MCLogObjects[5];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Profile identifier is nil.", buf, 2u);
    }

    goto LABEL_21;
  }

  if (v11)
  {
    v17 = [(MCInstaller *)self pathToInstalledProfileByIdentifier:v14 installationType:a4];
    if (v17)
    {
      v18 = v17;
      v19 = [NSData dataWithContentsOfFile:v17];
      if (!v19)
      {
        v35 = _MCLogObjects[5];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Cannot load profile to uninstall.", buf, 2u);
        }

        v27 = 0;
        v56 = 0;
        v28 = 0;
        v29 = 0;
        v57 = 1;
LABEL_30:

        [(MCInstaller *)self _cleanUpAfterRemovingProfileWithIdentifier:v14 installedForUser:a4 == 2 profileHandler:v29 oldRestrictions:v27];
        if (v28)
        {
          v44 = _MCLogObjects[9];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = v44;
            v46 = [v29 profile];
            v47 = [v46 identifier];
            *buf = 138543362;
            v61 = v47;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Profile “%{public}@“ removed", buf, 0xCu);
          }

          if (v56)
          {
            notify_post([MCDefaultsDidChangeNotification UTF8String]);
          }

          if (HIDWORD(v56))
          {
            MDMSendDevicePostureChangedNotification();
          }

          v48 = +[NSFileManager defaultManager];
          [v48 removeItemAtPath:v18 error:0];
        }

        v33 = v57;
        if (a4 == 2)
        {
          goto LABEL_39;
        }

        goto LABEL_20;
      }

      v59 = 0;
      v20 = [MCProfile profileWithData:v19 outError:&v59];
      v21 = v59;
      v54 = v21;
      v55 = v20;
      if (v21)
      {
        v22 = v21;
        v23 = _MCLogObjects[5];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = v23;
          v25 = [v22 MCVerboseDescription];
          *buf = 138543362;
          v61 = v25;
          v26 = "Cannot parse profile to uninstall. Error: %{public}@";
LABEL_8:
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v26, buf, 0xCu);
        }
      }

      else
      {
        v36 = [v20 createHandler];
        if (v36)
        {
          v29 = v36;
          v53 = v19;
          v37 = +[MCRestrictionManager sharedManager];
          v38 = [v37 currentRestrictions];
          v27 = [v38 MCDeepCopy];

          v39 = _MCLogObjects[5];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = v39;
            v58 = [v29 profile];
            v41 = [v58 identifier];
            *buf = 138543618;
            v61 = v41;
            v62 = 2114;
            v63 = v16;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Removing profile “%{public}@” on behalf of “%{public}@”...", buf, 0x16u);
          }

          [v29 removeWithInstaller:self options:v15];
          v42 = objc_opt_new();
          v43 = [v29 profile];
          [v42 addEventForProfile:v43 operation:@"remove" source:v16];

          LODWORD(v56) = [v55 containsPayloadOfClass:objc_opt_class()];
          HIDWORD(v56) = [v55 containsPayloadOfClass:objc_opt_class()];
          v57 = 0;
          v28 = 1;
          v19 = v53;
          goto LABEL_29;
        }

        v52 = _MCLogObjects[5];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v24 = v52;
          v25 = [v20 friendlyName];
          *buf = 138543362;
          v61 = v25;
          v26 = "Cannot create handler for profile ‚“%{public}@”.";
          goto LABEL_8;
        }
      }

      v27 = 0;
      v56 = 0;
      v28 = 0;
      v29 = 0;
      v57 = 1;
LABEL_29:

      goto LABEL_30;
    }

    goto LABEL_16;
  }

  v31 = [(MCInstaller *)self pathToUninstalledProfileByIdentifier:v14 installationType:a4 targetDeviceType:a6];
  if (!v31)
  {
LABEL_16:
    v32 = _MCLogObjects[5];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v61 = v14;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Profile “%{public}@” is not installed. Ignoring.", buf, 0xCu);
    }

    if (v11)
    {
      [(MCInstaller *)self _cleanUpAfterRemovingProfileWithIdentifier:v14 installedForUser:a4 == 2 profileHandler:0 oldRestrictions:0];
      v29 = 0;
      v18 = 0;
      v27 = 0;
      v33 = 1;
      if (a4 == 2)
      {
LABEL_39:
        v34 = +[MCManifest sharedManifest];
        [v34 removeIdentifierFromUserManifest:v14 flag:3];
LABEL_40:

        if ((v33 & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_41;
      }

LABEL_20:
      v34 = +[MCManifest sharedManifest];
      [v34 removeIdentifierFromSystemManifest:v14 flag:3];
      goto LABEL_40;
    }

LABEL_21:
    v27 = 0;
    v18 = 0;
    v29 = 0;
LABEL_41:
    v49 = _MCLogObjects[5];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v61 = v14;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Removed profile “%{public}@” from manifest anyway", buf, 0xCu);
    }

    goto LABEL_43;
  }

  v18 = v31;
  if ([MCTargetDeviceResolver purgatorySupportedForDevice:a6])
  {
    [(MCInstaller *)self purgePurgatoryProfileWithIdentifier:v14 targetDevice:a6];
  }

  v27 = 0;
  v29 = 0;
LABEL_43:
  v50 = [v29 profile];

  return v50;
}

- (void)_cleanUpAfterRemovingProfileWithIdentifier:(id)a3 installedForUser:(BOOL)a4 profileHandler:(id)a5 oldRestrictions:(id)a6
{
  v45 = a4;
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v11 = +[MCRestrictionManagerWriter sharedManager];
  v12 = +[MCDependencyManager sharedManager];
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v14 = [v11 currentRestrictions];
    v13 = [v14 MCDeepCopy];
  }

  v15 = [v11 systemProfileRestrictions];
  v16 = [v15 MCMutableDeepCopy];

  v17 = [v11 userProfileRestrictions];
  v18 = [v17 MCMutableDeepCopy];

  if (v45)
  {
    v19 = v18;
  }

  else
  {
    v19 = v16;
  }

  [v19 removeObjectForKey:v8];
  v20 = [v9 profile];
  v21 = [v20 loggingID];
  v44 = v18;
  [v11 setSystemProfileRestrictions:v16 userProfileRestrictions:v18 sender:v21 outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outAppWhitelistSettingsChanged:0 outRecomputedNag:0 outError:0];

  v22 = [v11 currentRestrictions];
  [v9 didRemoveOldGlobalRestrictions:v13 newGlobalRestrictions:v22];

  v23 = kMCDMManagingProfileToManagedProfileKey;
  v24 = [v12 dependentsOfParent:v8 inDomain:kMCDMManagingProfileToManagedProfileKey];
  v25 = kMCDMManagingProfileToProvisioningProfileKey;
  v47 = [v12 dependentsOfParent:v8 inDomain:kMCDMManagingProfileToProvisioningProfileKey];
  if ([v24 count] || objc_msgSend(v47, "count"))
  {
    v40 = v16;
    v41 = v13;
    v43 = v10;
    v46 = v9;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v39 = v24;
    v26 = [v24 copy];
    v27 = [v26 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v53;
      v30 = kMCDMManagedProfileToManagingProfileKey;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v53 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [v12 removeDependent:*(*(&v52 + 1) + 8 * i) fromParent:v8 inDomain:v23 reciprocalDomain:v30 fromSystem:1 user:1];
        }

        v28 = [v26 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v28);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v32 = [v47 copy];
    v33 = [v32 countByEnumeratingWithState:&v48 objects:v56 count:16];
    v16 = v40;
    if (v33)
    {
      v34 = v33;
      v35 = *v49;
      v36 = kMCDMProvisioningProfileToManagingProfileKey;
      do
      {
        for (j = 0; j != v34; j = j + 1)
        {
          if (*v49 != v35)
          {
            objc_enumerationMutation(v32);
          }

          [v12 removeDependent:*(*(&v48 + 1) + 8 * j) fromParent:v8 inDomain:v25 reciprocalDomain:v36 fromSystem:1 user:1];
        }

        v34 = [v32 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v34);
    }

    v9 = v46;
    v13 = v41;
    v10 = v43;
    v24 = v39;
  }

  else
  {
    v38 = [(MCInstaller *)self _managingProfileIdentifierForProfileIdentifier:v8];
    if (v38)
    {
      [v12 removeDependent:v8 fromParent:v38 inDomain:v23 reciprocalDomain:kMCDMManagedProfileToManagingProfileKey fromSystem:!v45 user:?];
    }
  }
}

- (void)removeProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 options:(id)a5 source:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v25 = +[MCDependencyManager sharedManager];
  [v25 commitChanges];
  v13 = +[MCRestrictionManager sharedManager];
  v14 = [v13 currentRestrictions];
  v15 = [v14 MCDeepCopy];

  v16 = [(MCInstaller *)self _reallyRemoveInstalledProfileWithIdentifier:v12 installationType:a4 options:v11 source:v10];

  v17 = +[MCPayload accountPayloads];
  v18 = [v17 setByAddingObject:objc_opt_class()];

  -[MCInstaller _removeOrphanedResourcesOptions:includingAccounts:](self, "_removeOrphanedResourcesOptions:includingAccounts:", v11, [v16 containsAnyPayloadOfClasses:v18]);
  v19 = +[MCServerSideHacks sharedHacks];
  v20 = +[MCRestrictionManager sharedManager];
  v21 = [v20 effectiveUserSettings];
  [v19 recomputeHacksAfterProfileChangesEffectiveUserSettings:v21 sendNotifications:1];

  v22 = [v19 recomputeAccountVPNAssociations];
  LODWORD(v20) = [MCRestrictionManager isWebContentFilterUIActiveWithRestrictionDictionary:v15];
  v23 = +[MCRestrictionManager sharedManager];
  v24 = [v23 currentRestrictions];
  LODWORD(v21) = [MCRestrictionManager isWebContentFilterUIActiveWithRestrictionDictionary:v24];

  if (v20 != v21)
  {
    MCSendWebContentFilterUIActiveChangedNotification();
  }

  [v25 commitChanges];
  MCSendProfileListChangedNotification();
}

- (void)removeUninstalledProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 targetDeviceType:(unint64_t)a5
{
  v12 = a3;
  v8 = +[MCHoldingTankManifest sharedManifest];
  v9 = [v8 uninstalledProfileDataWithIdentifier:v12 targetDevice:a5];

  v10 = [MCProfile profileWithData:v9 outError:0];
  sub_1000826D8(v10);
  v11 = [(MCInstaller *)self _reallyRemoveProfileWithIdentifier:v12 installationType:a4 profileInstalled:0 targetDeviceType:a5 options:0 source:@"Uninstalled Profile Removal"];
  MCSendProfileListChangedNotification();
}

- (void)removeManagedProfilesIfNecessary
{
  v3 = +[MCDependencyManager sharedManager];
  v4 = [v3 parentsInDomain:kMCDMManagingProfileToManagedProfileKey];
  v8 = [v4 firstObject];

  v5 = v8;
  if (v8)
  {
    v6 = +[MCManifest sharedManifest];
    v7 = [v6 installedSystemProfileWithIdentifier:v8];

    if (!v7)
    {
      [(MCInstaller *)self removeProfileWithIdentifier:v8 installationType:1 source:@"Managed Profile Removal"];
    }

    v5 = v8;
  }
}

- (id)removeProvisioningProfileUUID:(id)a3 sender:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _MCLogObjects[2];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MCInstaller removing provisioning profile UUID %{public}@ on behalf of %{public}@", &v11, 0x16u);
  }

  v8 = MISRemoveProvisioningProfile();
  if (v8)
  {
    v9 = [NSNumber numberWithInt:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)verifiedMDMProfileIdentifierWithCleanUp
{
  v3 = _MCLogObjects[9];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MCInstaller checking for MDM profile...", buf, 2u);
  }

  v4 = +[MCManifest sharedManifest];
  v5 = [v4 identifiersOfProfilesWithFilterFlags:3];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = v5;
  v31 = [v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (!v31)
  {

LABEL_23:
    v18 = _MCLogObjects[9];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "MCInstaller could not find an MDM profile. Removing MDM-related files...", buf, 2u);
    }

    v19 = +[MDMConfiguration sharedConfiguration];
    [v19 refreshDetailsFromDisk];

    v20 = +[MDMConfiguration sharedConfiguration];
    v21 = [v20 managingProfileIdentifier];

    if (v21)
    {
      v22 = _MCLogObjects[9];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "MCInstaller uprooting MDM", buf, 2u);
      }

      v23 = +[MDMClient sharedClient];
      [v23 uprootMDM];
    }

    v24 = +[NSFileManager defaultManager];
    v25 = MDMOutstandingActivitiesFilePath();
    [v24 removeItemAtPath:v25 error:0];

    v26 = MDMUserOutstandingActivitiesFilePath();
    [v24 removeItemAtPath:v26 error:0];

    [(MCInstaller *)self removeManagedProfilesIfNecessary];
    MDMSendManagingOrgInfoChangedNotification();

    v7 = 0;
    goto LABEL_30;
  }

  v29 = self;
  v7 = 0;
  v30 = *v37;
  do
  {
    for (i = 0; i != v31; i = i + 1)
    {
      if (*v37 != v30)
      {
        objc_enumerationMutation(v6);
      }

      v9 = *(*(&v36 + 1) + 8 * i);
      v10 = [MCManifest installedProfileWithIdentifier:v9, v29];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v11 = [v10 payloads];
      v12 = [v11 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v33;
        while (2)
        {
          for (j = 0; j != v13; j = j + 1)
          {
            if (*v33 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v32 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = v9;

              v7 = v17;
              goto LABEL_18;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }

    v31 = [v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
  }

  while (v31);

  self = v29;
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_30:
  v27 = _MCLogObjects[9];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "MCInstaller finished checking for MDM profile", buf, 2u);
  }

  return v7;
}

- (void)recomputeProfileRestrictionsWithCompletionBlock:(id)a3
{
  v48 = a3;
  v3 = _MCLogObjects[9];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Recomputing profile restrictions...", buf, 2u);
  }

  v50 = +[NSMutableDictionary dictionary];
  v47 = +[NSMutableDictionary dictionary];
  v49 = +[NSMutableDictionary dictionary];
  v4 = +[NSMutableDictionary dictionary];
  v5 = +[MCManifest sharedManifest];
  v6 = [v5 allInstalledProfileIdentifiers];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v66;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v66 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v65 + 1) + 8 * i);
        v12 = sub_1000464B0();
        v13 = [v11 MCHashedFilenameWithExtension:@"stub"];
        v14 = [v12 stringByAppendingPathComponent:v13];

        [v4 setObject:v14 forKey:v11];
      }

      v8 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v8);
  }

  v15 = +[MCManifest sharedManifest];
  v16 = [v15 allInstalledUserProfileIdentifiers];

  v64 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v51 = v16;
  v17 = [v51 countByEnumeratingWithState:&v61 objects:v74 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v62;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v62 != v19)
        {
          objc_enumerationMutation(v51);
        }

        v21 = *(*(&v61 + 1) + 8 * j);
        v22 = sub_100046460();
        v23 = [v21 MCHashedFilenameWithExtension:@"stub"];
        v24 = [v22 stringByAppendingPathComponent:v23];

        [v4 setObject:v24 forKey:v21];
      }

      v18 = [v51 countByEnumeratingWithState:&v61 objects:v74 count:16];
    }

    while (v18);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v25 = v4;
  v26 = [v25 countByEnumeratingWithState:&v57 objects:v73 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v53 = *v58;
    do
    {
      for (k = 0; k != v27; k = k + 1)
      {
        if (*v58 != v53)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v57 + 1) + 8 * k);
        v31 = [v25 objectForKey:v30];
        v32 = [NSData dataWithContentsOfFile:v31];
        if (v32)
        {
          v56 = v28;
          v33 = [MCProfile profileWithData:v32 outError:&v56];
          v34 = v56;

          if (v34)
          {
            v35 = _MCLogObjects[9];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v36 = v35;
              v37 = [v34 MCVerboseDescription];
              *buf = 138543618;
              v70 = v30;
              v71 = 2114;
              v72 = v37;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Error parsing stub for profile ID %{public}@. Error:%{public}@", buf, 0x16u);
            }
          }

          else
          {
            v55 = 0;
            v39 = [v33 restrictionsWithHeuristicsAppliedOutError:&v55];
            v34 = v55;
            v40 = [v33 identifier];
            if (v39)
            {
              [v50 setObject:v39 forKey:v40];
            }

            else
            {
              [v50 removeObjectForKey:v40];
            }

            v41 = [v33 appAccessibilityParameters];
            if (v41)
            {
              [v49 addEntriesFromDictionary:v41];
            }
          }

          v28 = v34;
        }

        else
        {
          v38 = _MCLogObjects[9];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v70 = v30;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Can't read stub for profile ID %{public}@", buf, 0xCu);
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v57 objects:v73 count:16];
    }

    while (v27);
  }

  else
  {
    v28 = 0;
  }

  v42 = MCSystemAppAccessibilityParametersFilePath();
  [v49 MCWriteToBinaryFile:v42];

  v43 = +[MCRestrictionManagerWriter sharedManager];
  v54 = 0;
  [v43 setSystemProfileRestrictions:v50 userProfileRestrictions:v47 sender:@"MCInstaller.RecomputeProfileRestrictions" outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outAppWhitelistSettingsChanged:0 outRecomputedNag:0 outError:&v54];
  v44 = v54;
  v45 = +[MCServerSideHacks sharedHacks];
  v46 = [v43 effectiveUserSettings];
  [v45 recomputeHacksAfterProfileChangesEffectiveUserSettings:v46 sendNotifications:1];

  if (v48)
  {
    v48[2](v48, v44);
  }
}

+ (void)_setPathsSystemProfileStorageDirectory:(id)a3 userProfileStorageDirectory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = qword_100136B50;
  qword_100136B50 = v5;
  v9 = v5;

  v8 = qword_100136B58;
  qword_100136B58 = v6;
}

+ (id)_installationFailureErrorWithUnderlyingError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:ACErrorDomain])
  {
    [v3 code];
  }

  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:MCInstallationErrorDomain code:4001 descriptionArray:v5 underlyingError:v3 errorType:MCErrorTypeFatal, 0];

  return v6;
}

- (id)_installedProfileWithIdentifier:(id)a3 installationType:(int64_t)a4
{
  v5 = a3;
  v6 = +[MCManifest sharedManifest];
  v7 = v6;
  if (a4 == 2)
  {
    v8 = [v6 identifiersOfProfilesWithFilterFlags:9];

    if ([v8 containsObject:v5])
    {
      v9 = sub_100046460();
LABEL_6:
      v10 = v9;
      v11 = [v5 MCHashedFilenameWithExtension:@"stub"];
      v12 = [v10 stringByAppendingPathComponent:v11];

      goto LABEL_8;
    }
  }

  else
  {
    v8 = [v6 identifiersOfProfilesWithFilterFlags:19];

    if ([v8 containsObject:v5])
    {
      v9 = sub_1000464B0();
      goto LABEL_6;
    }
  }

  v12 = 0;
LABEL_8:

  if (v12)
  {
    v13 = [NSData dataWithContentsOfFile:v12];
    v14 = [MCProfile profileWithData:v13 outError:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_sendMDMEnrollmentEventWithInstallationOptions:(id)a3
{
  v3 = a3;
  v9 = +[MDMCloudConfiguration sharedConfiguration];
  v4 = +[MDMConfiguration sharedConfiguration];
  [v9 refreshDetailsFromDisk];
  [v4 refreshDetailsFromDisk];
  [v9 isSupervised];
  [v9 isTeslaEnrolled];
  if ([v9 userMode] != 1)
  {
    +[DMCMultiUserModeUtilities isSharediPad];
  }

  [v4 personaID];

  [v4 isUserEnrollment];
  v5 = [v4 enrollmentMode];
  if (([v5 isEqualToString:kMDMEnrollmentModeBYOD] & 1) == 0)
  {
    v6 = [v4 enrollmentMode];
    [v6 isEqualToString:kMDMEnrollmentModeADDE];
  }

  v7 = [v3 objectForKeyedSubscript:kMCInstallProfileOptionInstallationSource];
  [v7 isEqualToString:kDMCProfileInstallationSourceReturnToService];

  v8 = [v3 objectForKeyedSubscript:kMCInstallProfileOptionIsESSOEnrollment];

  [v8 BOOLValue];
  DMCAnalyticsSendEnrollmentEvent();
}

- (void)_checkinWithMdmd
{
  v2 = _MCLogObjects[9];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Checking in with mdmd...", buf, 2u);
  }

  *buf = 0;
  v13 = buf;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = +[MDMClient sharedClient];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000535B0;
  v9[3] = &unk_10011BFA0;
  v11 = buf;
  v5 = v3;
  v10 = v5;
  [v4 touchWithCompletion:v9];

  v6 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v5, v6);
  if ((v13[24] & 1) == 0)
  {
    v7 = _MCLogObjects[9];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "mdmd didn't respond within 30 seconds, give up waiting.", v8, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
}

+ (id)considerProfilesInstalledDuringBuddyForManagement
{
  v2 = +[MDMCloudConfiguration sharedConfiguration];
  if ([v2 isTeslaEnrolled])
  {
    v3 = [v2 isSupervised];
  }

  else
  {
    v3 = 0;
  }

  v4 = MDMFilePath();
  v5 = [NSDictionary dictionaryWithContentsOfFile:v4];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:kMDMManagingProfileIdentifierKey];
  }

  else
  {
    v6 = 0;
  }

  v7 = +[MCPayload mdmAdoptablePayloads];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = objc_opt_new();
  if (v3 && [v6 length])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100053848;
    v17[3] = &unk_10011C750;
    v9 = v6;
    v18 = v9;
    v19 = v7;
    v10 = objc_retainBlock(v17);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005390C;
    v13[3] = &unk_10011C778;
    v14 = v9;
    v15 = v8;
    v16 = &v20;
    [MCInstaller _enumerateProfilesWithCriteria:v10 filterFlags:17 block:v13];
  }

  if (*(v21 + 24) == 1)
  {
    v11 = +[MCDependencyManager sharedManager];
    [v11 commitChanges];
  }

  _Block_object_dispose(&v20, 8);

  return v8;
}

- (BOOL)sendPurgatoryProfileData:(id)a3 identifier:(id)a4 targetDevice:(unint64_t)a5 outError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  [(MCInstaller *)self _replacePurgatoryProfilesForTargetDevice:a5];
  v12 = +[MCHoldingTankManifest sharedManifest];
  v18 = 0;
  v13 = [v12 addPurgatoryProfileData:v10 identifier:v11 targetDevice:a5 outError:&v18];

  v14 = v18;
  if (v13)
  {
    [(MCInstaller *)self _postPurgatoryFollowUpForProfileData:v10 targetDevice:a5];
    MCSendProfileListChangedNotification();
  }

  else if (a6)
  {
    v15 = MCInstallationErrorDomain;
    v16 = MCErrorArray();
    *a6 = [NSError MCErrorWithDomain:v15 code:4043 descriptionArray:v16 underlyingError:v14 errorType:MCErrorTypeFatal, 0];
  }

  return v13;
}

- (void)_postPurgatoryFollowUpForProfileData:(id)a3 targetDevice:(unint64_t)a4
{
  v47 = 0;
  v6 = [MCProfile profileWithData:a3 outError:&v47];
  v7 = v47;
  if (v7)
  {
    v8 = v7;
    v9 = _MCLogObjects[9];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v50 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Profile purgatory followUp failed to create MCProfile with error: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    sub_1000825EC(v6);
    v10 = [(MCInstaller *)self followUpController];
    v46 = 0;
    v11 = [v10 clearPendingFollowUpItems:&v46];
    v12 = v46;

    if ((v11 & 1) == 0)
    {
      v13 = _MCLogObjects[9];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v50 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Profile purgatory followUp failed to clear pending followUp items with error: %{public}@", buf, 0xCu);
      }
    }

    v14 = objc_opt_new();
    v15 = objc_opt_new();
    if ([v6 isUserEnrollmentProfile])
    {
      v38 = [v6 organization];
      v16 = MCLocalizedFormat();

      v17 = [NSURL URLWithString:kMCSettingsURLOnsiteProfileInstallation, v38];
      [v14 setUrl:v17];
    }

    else
    {
      MCLocalizedString();
      v18 = self;
      v19 = v41 = v14;
      v20 = kMDMSettingsURLDownloadedProfile;
      v21 = v15;
      v22 = v12;
      v23 = a4;
      v24 = kMDMSettingsURLResourceID;
      v17 = [v6 identifier];
      v40 = v24;
      a4 = v23;
      v12 = v22;
      v15 = v21;
      v39 = v20;
      v16 = v19;
      v14 = v41;
      self = v18;
      v25 = [NSString stringWithFormat:@"%@?%@=%@", v39, v40, v17];
      v26 = [NSURL URLWithString:v25];
      [v41 setUrl:v26];
    }

    v27 = MCLocalizedString();
    [v14 setLabel:v27];

    [v15 setTitle:v16];
    [v15 setDisplayStyle:18];
    v48 = v14;
    v28 = [NSArray arrayWithObjects:&v48 count:1];
    [v15 setActions:v28];

    [v15 setGroupIdentifier:FLGroupIdentifierDevice];
    [v15 setUniqueIdentifier:@"com.apple.managedconfiguration.ios-purgatory"];
    v29 = [(MCInstaller *)self followUpController];
    v45 = v12;
    v30 = [v29 postFollowUpItem:v15 error:&v45];
    v8 = v45;

    if ((v30 & 1) == 0)
    {
      v31 = _MCLogObjects[9];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v50 = v8;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Profile purgatory followUp failed to post with error: %{public}@", buf, 0xCu);
      }
    }

    v32 = [(MCInstaller *)self purgatoryTimer];
    [v32 invalidate];

    v33 = [NSTimer alloc];
    v34 = [NSDate dateWithTimeIntervalSinceNow:480.0];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000542AC;
    v42[3] = &unk_10011C7C8;
    v42[4] = self;
    v43 = v6;
    v44 = a4;
    v35 = [v33 initWithFireDate:v34 interval:0 repeats:v42 block:0.0];
    [(MCInstaller *)self setPurgatoryTimer:v35];

    v36 = +[NSRunLoop mainRunLoop];
    v37 = [(MCInstaller *)self purgatoryTimer];
    [v36 addTimer:v37 forMode:NSRunLoopCommonModes];
  }
}

- (void)_replacePurgatoryProfilesForTargetDevice:(unint64_t)a3
{
  v4 = +[MCHoldingTankManifest sharedManifest];
  v5 = [v4 uninstalledProfileIdentifiersForDevice:a3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
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

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v4 uninstalledProfileDataWithIdentifier:v10 targetDevice:a3];
        v12 = [MCProfile profileWithData:v11 outError:0];
        v13 = v12;
        if (v12)
        {
          sub_1000826D8(v12);
        }

        [v4 removeProfileDataWithIdentifier:v10 fromHoldingTankForDevice:a3];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)purgePurgatoryProfilesForTargetDevice:(unint64_t)a3
{
  v4 = _MCLogObjects[9];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Purging purgatory profiles", buf, 2u);
  }

  v5 = +[MCHoldingTankManifest sharedManifest];
  v6 = [v5 uninstalledProfileIdentifiersForDevice:a3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = _MCLogObjects[9];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v19 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Purging purgatory profile data for identifier: %@", buf, 0xCu);
        }

        [v5 removeProfileDataWithIdentifier:v11 fromHoldingTankForDevice:a3];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }

  -[MCInstaller _purgatoryWorkerQueue_didPurgePurgatory:](self, "_purgatoryWorkerQueue_didPurgePurgatory:", [v6 count] != 0);
}

- (void)purgePurgatoryProfileWithIdentifier:(id)a3 targetDevice:(unint64_t)a4
{
  v6 = a3;
  v7 = +[MCHoldingTankManifest sharedManifest];
  v8 = [v7 uninstalledProfileIdentifiersForDevice:a4];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 isEqualToString:v6])
        {
          [v7 removeProfileDataWithIdentifier:v13 fromHoldingTankForDevice:a4];
          purgatoryWorkerQueue = self->_purgatoryWorkerQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100054894;
          block[3] = &unk_10011B688;
          block[4] = self;
          dispatch_sync(purgatoryWorkerQueue, block);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)_purgatoryWorkerQueue_didPurgePurgatory:(BOOL)a3
{
  v3 = a3;
  v5 = [(MCInstaller *)self purgatoryTimer];
  [v5 invalidate];

  [(MCInstaller *)self setPurgatoryTimer:0];
  v6 = _MCLogObjects[9];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Profile purgatory clearing pending follow up items...", buf, 2u);
    }

    v8 = [(MCInstaller *)self followUpController];
    v12 = 0;
    v9 = [v8 clearPendingFollowUpItems:&v12];
    v10 = v12;

    if ((v9 & 1) == 0)
    {
      v11 = _MCLogObjects[9];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Profile purgatory failed to clear pending follow up items with error: %@", buf, 0xCu);
      }
    }

    MCSendProfileListChangedNotification();
  }

  else if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Profile purgatory is empty - skipping call to clear pending follow up items.", buf, 2u);
  }
}

- (id)peekPurgatoryProfileDataForTargetDevice:(unint64_t)a3
{
  v4 = +[MCHoldingTankManifest sharedManifest];
  v5 = [v4 uninstalledProfileIdentifiersForDevice:a3];
  if ([v5 count])
  {
    v6 = [v5 firstObject];
    v7 = [v4 uninstalledProfileDataWithIdentifier:v6 targetDevice:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCertificateReference:(id)a3 aliasedInDependencyManager:(id)a4
{
  v5 = a4;
  v6 = [NSData MCDataWithHexString:a3];
  v7 = [MCKeychain canonicalPersistentReferenceForItemWithPersistentReference:v6 inSystemKeychain:1];
  v8 = [v5 parentsInDomain:kMCDMCertificateToPayloadUUIDDependencyKey];
  v9 = [NSSet setWithArray:v8];

  v10 = [v7 MCHexString];
  if ([v9 containsObject:v10])
  {
    v11 = _MCLogObjects[9];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v6 MCHexString];
      v14 = [v7 MCHexString];
      *buf = 138543618;
      v36 = v13;
      v37 = 2114;
      v38 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Certificate ID %{public}@ is aliased to canonical ID %{public}@, which is still referenced.", buf, 0x16u);
    }

    v15 = 1;
  }

  else
  {
    v28 = v10;
    v29 = v5;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      while (2)
      {
        v20 = 0;
        v21 = v7;
        do
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = [NSData MCDataWithHexString:*(*(&v30 + 1) + 8 * v20), v28, v29, v30];
          v7 = [MCKeychain canonicalPersistentReferenceForItemWithPersistentReference:v22 inSystemKeychain:1];

          if ([v7 isEqualToData:v6])
          {
            v23 = _MCLogObjects[9];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = v23;
              v25 = [v6 MCHexString];
              v26 = [v7 MCHexString];
              *buf = 138543618;
              v36 = v25;
              v37 = 2114;
              v38 = v26;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Certificate ID %{public}@ is aliased to non-canonical ID %{public}@, which is still referenced.", buf, 0x16u);
            }

            v15 = 1;
            goto LABEL_17;
          }

          v20 = v20 + 1;
          v21 = v7;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_17:
    v10 = v28;
    v5 = v29;
  }

  return v15;
}

@end