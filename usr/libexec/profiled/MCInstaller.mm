@interface MCInstaller
+ (id)_installationFailureErrorWithUnderlyingError:(id)error;
+ (id)considerProfilesInstalledDuringBuddyForManagement;
+ (id)deviceIsSupervisedError;
+ (id)deviceNotSupervisedError;
+ (id)notInstalledByMDMError;
+ (id)notSupportedUnderMultiUserModeError;
+ (id)sharedInstaller;
+ (void)_setPathsSystemProfileStorageDirectory:(id)directory userProfileStorageDirectory:(id)storageDirectory;
+ (void)isInteractiveProfileInstallationAllowedBySDP:(id)p completion:(id)completion;
- (BOOL)_allowsPasswordPoliciesFromProfile:(id)profile outError:(id *)error;
- (BOOL)_overrideProfileValidation;
- (BOOL)_promptUserForComplianceWithRestrictions:(id)restrictions handler:(id)handler interactionClient:(id)client outPasscodeContextWrapper:(id *)wrapper outError:(id *)error;
- (BOOL)_promptUserForMAIDSignIn:(id)in personaID:(id)d handler:(id)handler interactionClient:(id)client outError:(id *)error;
- (BOOL)_showWarnings:(id)warnings interactionClient:(id)client outError:(id *)error;
- (BOOL)_showWarningsForProfile:(id)profile interactionClient:(id)client outError:(id *)error;
- (BOOL)_showWarningsForUpdatingProfile:(id)profile originalProfile:(id)originalProfile interactionClient:(id)client outError:(id *)error;
- (BOOL)deviceSupervisionRequiredForPayload:(id)payload;
- (BOOL)interactionClient:(id)client didRequestPreflightUserInputResponses:(id)responses forPayloadIndex:(unint64_t)index outError:(id *)error;
- (BOOL)isCertificateReference:(id)reference aliasedInDependencyManager:(id)manager;
- (BOOL)sendPurgatoryProfileData:(id)data identifier:(id)identifier targetDevice:(unint64_t)device outError:(id *)error;
- (MCInstaller)init;
- (id)_assumeOwnershipProfileHandler:(id)handler options:(id)options source:(id)source outError:(id *)error;
- (id)_badProvisioningProfileError;
- (id)_deviceLockedError;
- (id)_errorUnacceptablePayload:(id)payload;
- (id)_guardAgainstNoMDMPayloadWithNewProfile:(id)profile oldProfile:(id)oldProfile;
- (id)_installProfileHandler:(id)handler options:(id)options interactionClient:(id)client source:(id)source outError:(id *)error;
- (id)_installationHaltedTopLevelError;
- (id)_installedProfileWithIdentifier:(id)identifier installationType:(int64_t)type;
- (id)_invalidInputError;
- (id)_malformedPayloadErrorInternal:(BOOL)internal;
- (id)_malformedPayloadErrorWithUnderlyingError:(id)error;
- (id)_managingProfileIdentifierForProfileIdentifier:(id)identifier;
- (id)_preflightProfileForInstallationOnHomePod:(id)pod;
- (id)_preflightProfileForInstallationOnWatch:(id)watch;
- (id)_profileDrivenEnrollmentBlocked;
- (id)_profileDrivenUserEnrollmentNotSupportedError;
- (id)_profileNotEligibleErrorWithProfile:(id)profile;
- (id)_reallyRemoveInstalledProfileWithIdentifier:(id)identifier installationType:(int64_t)type options:(id)options source:(id)source;
- (id)_reallyRemoveProfileWithIdentifier:(id)identifier installationType:(int64_t)type profileInstalled:(BOOL)installed targetDeviceType:(unint64_t)deviceType options:(id)options source:(id)source;
- (id)_targetDeviceArchivedError;
- (id)_targetDeviceErrorWithUnderlyingError:(id)error;
- (id)_targetDeviceMismatchError;
- (id)_targetDevicePreflightFailedError;
- (id)_targetDeviceUnavailableError;
- (id)_uiProfileInstallationDisabledTopLevelErrorWithCause:(id)cause;
- (id)_userCancelledErrorWithFriendlyName:(id)name;
- (id)_validateMDMReplacementNewProfile:(id)profile oldProfile:(id)oldProfile client:(id)client;
- (id)_validateNewMDMProfile:(id)profile installationOption:(id)option;
- (id)_watchInformationOutIsCellularSupported:(BOOL *)supported;
- (id)installProfileData:(id)data options:(id)options interactionClient:(id)client source:(id)source outError:(id *)error;
- (id)pathToInstalledProfileByIdentifier:(id)identifier installationType:(int64_t)type;
- (id)pathToInstalledProfileByUUID:(id)d;
- (id)pathToUninstalledProfileByIdentifier:(id)identifier installationType:(int64_t)type targetDeviceType:(unint64_t)deviceType;
- (id)peekPurgatoryProfileDataForTargetDevice:(unint64_t)device;
- (id)popProfileDataAtHeadOfInstallationQueue;
- (id)removeProvisioningProfileUUID:(id)d sender:(id)sender;
- (id)setAsideAccountIdentifiersForPayloadClass:(Class)class;
- (id)setAsideDictionariesForPayloadHandlerClass:(Class)class;
- (id)updateProfileWithIdentifier:(id)identifier interactionClient:(id)client installForSystem:(BOOL)system source:(id)source outError:(id *)error;
- (id)verifiedMDMProfileIdentifierWithCleanUp;
- (int64_t)_targetValidationStatusForProfile:(id)profile;
- (void)_checkinWithMdmd;
- (void)_cleanUpAfterRemovingProfileWithIdentifier:(id)identifier installedForUser:(BOOL)user profileHandler:(id)handler oldRestrictions:(id)restrictions;
- (void)_continueQueueingProfile:(id)profile profileData:(id)data forDevice:(unint64_t)device completion:(id)completion;
- (void)_postPurgatoryFollowUpForProfileData:(id)data targetDevice:(unint64_t)device;
- (void)_promptUserForRestoreWithAccountID:(id)d personaID:(id)iD interactionClient:(id)client;
- (void)_purgatoryWorkerQueue_didPurgePurgatory:(BOOL)purgatory;
- (void)_queueProfileData:(id)data profile:(id)profile forDevice:(unint64_t)device completion:(id)completion;
- (void)_removeOrphanedCertificateDependencyManager:(id)manager persistentID:(id)d persona:(id)persona;
- (void)_removeOrphanedResourcesOptions:(id)options includingAccounts:(BOOL)accounts;
- (void)_replacePurgatoryProfilesForTargetDevice:(unint64_t)device;
- (void)_sendMDMEnrollmentEventWithInstallationOptions:(id)options;
- (void)_updateCDPWithNewPasscodeContextWrapper:(id)wrapper passcodeType:(int)type;
- (void)addSetAsideAccountIdentifier:(id)identifier forPayloadClass:(Class)class;
- (void)addSetAsideDictionary:(id)dictionary forPayloadHandlerClass:(Class)class;
- (void)purgePurgatoryProfileWithIdentifier:(id)identifier targetDevice:(unint64_t)device;
- (void)purgePurgatoryProfilesForTargetDevice:(unint64_t)device;
- (void)queueProfileDataForInstallation:(id)installation originalFileName:(id)name completion:(id)completion;
- (void)recomputeProfileRestrictionsWithCompletionBlock:(id)block;
- (void)removeManagedProfilesIfNecessary;
- (void)removeProfileWithIdentifier:(id)identifier installationType:(int64_t)type options:(id)options source:(id)source;
- (void)removeUninstalledProfileWithIdentifier:(id)identifier installationType:(int64_t)type targetDeviceType:(unint64_t)deviceType;
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

- (id)pathToInstalledProfileByIdentifier:(id)identifier installationType:(int64_t)type
{
  identifierCopy = identifier;
  v6 = +[MCManifest sharedManifest];
  allInstalledProfileIdentifiers = [v6 allInstalledProfileIdentifiers];

  if ([allInstalledProfileIdentifiers containsObject:identifierCopy])
  {
    if (type == 2)
    {
      sub_100046460();
    }

    else
    {
      sub_1000464B0();
    }
    v9 = ;
    v10 = [identifierCopy MCHashedFilenameWithExtension:@"stub"];
    v8 = [v9 stringByAppendingPathComponent:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)pathToUninstalledProfileByIdentifier:(id)identifier installationType:(int64_t)type targetDeviceType:(unint64_t)deviceType
{
  identifierCopy = identifier;
  v7 = +[MCHoldingTankManifest sharedManifest];
  v8 = [v7 uninstalledProfileIdentifiersForDevice:deviceType];

  if ([v8 containsObject:identifierCopy])
  {
    v9 = +[MCHoldingTankManifest sharedManifest];
    v10 = [v9 pathToHoldingTankProfileDataForIdentifier:identifierCopy targetDevice:deviceType createDirectory:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)pathToInstalledProfileByUUID:(id)d
{
  dCopy = d;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = +[MCManifest sharedManifest];
  allInstalledProfileIdentifiers = [v3 allInstalledProfileIdentifiers];

  obj = allInstalledProfileIdentifiers;
  v5 = [allInstalledProfileIdentifiers countByEnumeratingWithState:&v28 objects:v32 count:16];
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
      sharedManifest = [v8[69] sharedManifest];
      allInstalledUserProfileIdentifiers = [sharedManifest allInstalledUserProfileIdentifiers];
      v14 = [allInstalledUserProfileIdentifiers containsObject:v10];

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
        uUID = [v19 UUID];
        v23 = [uUID isEqualToString:dCopy];

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

- (void)queueProfileDataForInstallation:(id)installation originalFileName:(id)name completion:(id)completion
{
  installationCopy = installation;
  completionCopy = completion;
  v49 = 0;
  v10 = [MCProfile profileWithData:installationCopy fileName:name allowEmptyPayload:0 outError:&v49];
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
            identifier = [v10 identifier];
            *buf = 138543618;
            v51 = identifier;
            v52 = 2050;
            v53 = v30;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Profile '%{public}@' does not define a target device. Assuming %{public}lu...", buf, 0x16u);
          }

          [(MCInstaller *)self _queueProfileData:installationCopy profile:v10 forDevice:v30 completion:completionCopy];
          goto LABEL_30;
        }

        v24 = [(MCInstaller *)self _preflightProfileForInstallationOnWatch:v10];

        v25 = [(MCInstaller *)self _preflightProfileForInstallationOnHomePod:v10];

        v26 = _MCLogObjects[9];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v26;
          identifier2 = [v10 identifier];
          *buf = 138543362;
          v51 = identifier2;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Profile '%{public}@' does not define a target device. Asking user to resolve...", buf, 0xCu);
        }

        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_100046ED0;
        v45[3] = &unk_10011C5D8;
        v45[4] = self;
        v46 = installationCopy;
        v47 = v10;
        v48 = completionCopy;
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
      selfCopy = self;
      v18 = v10;
      v43 = v18;
      v19 = completionCopy;
      v44 = v19;
      v20 = objc_retainBlock(&v38);
      selfCopy = [(MCInstaller *)self _targetValidationStatusForProfile:v18, v38, v39, v40, v41, selfCopy];
      if (selfCopy <= 1)
      {
        if (!selfCopy)
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

          -[MCInstaller _queueProfileData:profile:forDevice:completion:](self, "_queueProfileData:profile:forDevice:completion:", installationCopy, v18, [v18 targetDeviceType], v19);
          goto LABEL_28;
        }

        if (selfCopy == 1)
        {
          _targetDeviceMismatchError = [(MCInstaller *)self _targetDeviceMismatchError];
          goto LABEL_27;
        }
      }

      else
      {
        switch(selfCopy)
        {
          case 2:
            _targetDeviceMismatchError = [(MCInstaller *)self _targetDevicePreflightFailedError];
            goto LABEL_27;
          case 3:
            _targetDeviceMismatchError = [(MCInstaller *)self _targetDeviceUnavailableError];
            goto LABEL_27;
          case 4:
            _targetDeviceMismatchError = [(MCInstaller *)self _targetDeviceArchivedError];
LABEL_27:
            v34 = _targetDeviceMismatchError;
            (v20[2])(v20, _targetDeviceMismatchError);

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
    mCVerboseDescription = [v13 MCVerboseDescription];
    *buf = 138543362;
    v51 = mCVerboseDescription;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Profile cannot be queued for installation. Error: %{public}@", buf, 0xCu);
  }

  (*(completionCopy + 2))(completionCopy, v13, v10, 99);

LABEL_31:
}

- (int64_t)_targetValidationStatusForProfile:(id)profile
{
  profileCopy = profile;
  targetDeviceType = [profileCopy targetDeviceType];
  v6 = 1;
  if (targetDeviceType <= 2)
  {
    if (targetDeviceType == 1)
    {
      if ((MCGestaltIsPhone() & 1) == 0)
      {
        IsAppleTV = MCGestaltIsiPad();
        goto LABEL_22;
      }

      v6 = 0;
      goto LABEL_23;
    }

    if (targetDeviceType != 2)
    {
      goto LABEL_23;
    }

    if ((MCGestaltIsPhone() & 1) != 0 || MCGestaltIsWatch())
    {
      v8 = [(MCInstaller *)self _preflightProfileForInstallationOnWatch:profileCopy];

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

  switch(targetDeviceType)
  {
    case 3:
      if ((MCGestaltIsPhone() & 1) != 0 || (MCGestaltIsiPad() & 1) != 0 || MCGestaltIsHomePod())
      {
        v10 = [(MCInstaller *)self _preflightProfileForInstallationOnHomePod:profileCopy];

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

+ (void)isInteractiveProfileInstallationAllowedBySDP:(id)p completion:(id)completion
{
  pCopy = p;
  completionCopy = completion;
  v7 = +[MCPayload payloadsRequiringRatchetWithStolenDeviceProtection];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = pCopy;
  payloads = [pCopy payloads];
  v9 = [payloads countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(payloads);
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

      v10 = [payloads countByEnumeratingWithState:&v18 objects:v22 count:16];
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
    [DMCRatchet isAuthorizedForOperation:v11 & ~v12 & 1 completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)_queueProfileData:(id)data profile:(id)profile forDevice:(unint64_t)device completion:(id)completion
{
  dataCopy = data;
  profileCopy = profile;
  completionCopy = completion;
  if (device == 99)
  {
    v13 = _MCLogObjects[9];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      identifier = [profileCopy identifier];
      *buf = 138543362;
      v42 = identifier;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Profile %{public}@ cancelled queueing for installation", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0, profileCopy, 99);
  }

  else
  {
    v16 = +[MCRestrictionManager sharedManager];
    v17 = [v16 effectiveRestrictedBoolForSetting:MCFeatureUIConfigurationProfileInstallationAllowed];

    if (v17 != 2)
    {
      if (device == 6 && (+[DMCFeatureFlags isVisionProfileEnrollEnabled](DMCFeatureFlags, "isVisionProfileEnrollEnabled") & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [profileCopy isMDMProfile])
      {
        v27 = _MCLogObjects[9];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = v27;
          identifier2 = [profileCopy identifier];
          v30 = [MCProfile stringForDeviceType:6];
          *buf = 138543618;
          v42 = identifier2;
          v43 = 2114;
          v44 = v30;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Profile %{public}@ failed queueing for %{public}@ because profile-driven MDM enrollment is blocked", buf, 0x16u);
        }

        _profileDrivenEnrollmentBlocked = [(MCInstaller *)self _profileDrivenEnrollmentBlocked];
        (completionCopy)[2](completionCopy, _profileDrivenEnrollmentBlocked, profileCopy, 6);
      }

      else
      {
        if (![profileCopy isUserEnrollmentProfile])
        {
          if (device == 3)
          {
            [(MCInstaller *)self _continueQueueingProfile:profileCopy profileData:dataCopy forDevice:3 completion:completionCopy];
          }

          else
          {
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_10004787C;
            v36[3] = &unk_10011C628;
            v39 = completionCopy;
            v36[4] = self;
            v37 = profileCopy;
            deviceCopy = device;
            v38 = dataCopy;
            [MCInstaller isInteractiveProfileInstallationAllowedBySDP:v37 completion:v36];
          }

          goto LABEL_26;
        }

        v32 = _MCLogObjects[9];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = v32;
          identifier3 = [profileCopy identifier];
          v35 = [MCProfile stringForDeviceType:device];
          *buf = 138543618;
          v42 = identifier3;
          v43 = 2114;
          v44 = v35;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Profile %{public}@ failed queueing for %{public}@ because profile-driven user enrollment is not supported", buf, 0x16u);
        }

        _profileDrivenEnrollmentBlocked = [(MCInstaller *)self _profileDrivenUserEnrollmentNotSupportedError];
        (completionCopy)[2](completionCopy, _profileDrivenEnrollmentBlocked, profileCopy, device);
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
      identifier4 = [profileCopy identifier];
      v25 = [MCProfile stringForDeviceType:device];
      *buf = 138543618;
      v42 = identifier4;
      v43 = 2114;
      v44 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Profile %{public}@ failed queueing for %{public}@ because UI profile installation is restricted", buf, 0x16u);
    }

    v26 = [(MCInstaller *)self _uiProfileInstallationDisabledTopLevelErrorWithCause:v18];
    (completionCopy)[2](completionCopy, v26, profileCopy, device);
  }

LABEL_26:
}

- (void)_continueQueueingProfile:(id)profile profileData:(id)data forDevice:(unint64_t)device completion:(id)completion
{
  profileCopy = profile;
  dataCopy = data;
  completionCopy = completion;
  v13 = [MCProfile stringForDeviceType:device];
  if ([MCTargetDeviceResolver purgatorySupportedForDevice:device])
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
    v27 = dataCopy;
    v15 = profileCopy;
    v29 = v37;
    deviceCopy = device;
    v28 = v15;
    dispatch_sync(purgatoryWorkerQueue, block);
    v16 = *(*&v37[8] + 40);
    v17 = _MCLogObjects[9];
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        identifier = [v15 identifier];
        mCVerboseDescription = [*(*&v37[8] + 40) MCVerboseDescription];
        *buf = 138543874;
        v32 = identifier;
        v33 = 2114;
        v34 = v13;
        v35 = 2114;
        v36 = mCVerboseDescription;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Profile %{public}@ failed queueing for %{public}@ with purgatory error: %{public}@", buf, 0x20u);
      }

      completionCopy[2](completionCopy, *(*&v37[8] + 40), v15, device);
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [v15 identifier];
        *buf = 138543618;
        v32 = identifier2;
        v33 = 2114;
        v34 = v13;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Profile %{public}@ succesfully queued in holding tank for %{public}@", buf, 0x16u);
      }

      _installationHaltedTopLevelError = [(MCInstaller *)self _installationHaltedTopLevelError];
      (completionCopy)[2](completionCopy, _installationHaltedTopLevelError, v15, device);
    }

    _Block_object_dispose(v37, 8);
  }

  else
  {
    [(NSMutableArray *)self->_queuedProfiles addObject:dataCopy];
    v21 = _MCLogObjects[9];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      identifier3 = [profileCopy identifier];
      *v37 = 138543618;
      *&v37[4] = identifier3;
      *&v37[12] = 2114;
      *&v37[14] = v13;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Profile %{public}@ successfully queued for Settings jump for %{public}@", v37, 0x16u);
    }

    completionCopy[2](completionCopy, 0, profileCopy, device);
  }
}

- (id)_malformedPayloadErrorInternal:(BOOL)internal
{
  v3 = &MCProfileErrorDomain;
  if (!internal)
  {
    v3 = &MCInstallationErrorDomain;
  }

  v4 = *v3;
  if (internal)
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

- (id)_malformedPayloadErrorWithUnderlyingError:(id)error
{
  v3 = MCInstallationErrorDomain;
  errorCopy = error;
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:4000 descriptionArray:v5 underlyingError:errorCopy errorType:MCErrorTypeFatal, 0];

  return v6;
}

- (id)_targetDeviceErrorWithUnderlyingError:(id)error
{
  v3 = MCInstallationErrorDomain;
  errorCopy = error;
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:4035 descriptionArray:v5 underlyingError:errorCopy errorType:MCErrorTypeFatal, 0];

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

- (id)_uiProfileInstallationDisabledTopLevelErrorWithCause:(id)cause
{
  causeCopy = cause;
  v4 = MCInstallationErrorDomain;
  v5 = MCErrorArray();
  v6 = MCErrorTypeFatal;
  if (causeCopy)
  {
    v10 = MCErrorRestrictionCauseKey;
    v11 = causeCopy;
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

- (id)_userCancelledErrorWithFriendlyName:(id)name
{
  v3 = MCInstallationErrorDomain;
  v4 = MCErrorArray();
  v5 = [NSError MCErrorWithDomain:v3 code:4004 descriptionArray:v4 errorType:MCErrorTypeFatal, name, 0];

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

- (BOOL)_promptUserForComplianceWithRestrictions:(id)restrictions handler:(id)handler interactionClient:(id)client outPasscodeContextWrapper:(id *)wrapper outError:(id *)error
{
  restrictionsCopy = restrictions;
  handlerCopy = handler;
  clientCopy = client;
  if (clientCopy)
  {
    v16 = +[MCPasscodeManagerWriter sharedManager];
    v17 = [v16 currentPasscodeCompliesWithPolicyFromRestrictions:restrictionsCopy outError:0];

    if (v17)
    {
      currentlyInstallingRestrictions = self->_currentlyInstallingRestrictions;
      self->_currentlyInstallingRestrictions = 0;

      v19 = 0;
      goto LABEL_46;
    }

    v77 = 0;
    v21 = [clientCopy requestCurrentPasscodeOutExtractablePasscodeContext:&v77];
    v22 = v77;
    errorCopy = error;
    v71 = v22;
    if (v21)
    {
      v23 = v22;
      v24 = +[MCPasscodeManagerWriter sharedManager];
      v76 = 0;
      [v24 unlockDeviceWithPasscodeContext:v23 outError:&v76];
      _invalidInputError = v76;

      if (_invalidInputError)
      {
        v19 = 0;
        goto LABEL_43;
      }

      wrapperCopy = wrapper;
      v65 = handlerCopy;
      objc_storeStrong(&self->_currentlyInstallingRestrictions, restrictions);
      v66 = +[MCPasscodeManagerWriter sharedManager];
      v28 = +[MCRestrictionManagerWriter sharedManager];
      v29 = [v28 effectiveValueForSetting:MCFeaturePasscodeKeyboardComplexity];
      intValue = [v29 intValue];

      v75 = 0;
      v31 = [MCPasscodeManagerWriter unlockScreenTypeForRestrictions:restrictionsCopy outSimplePasscodeType:&v75];
      if (v31 <= intValue)
      {
        v32 = intValue;
      }

      else
      {
        v32 = v31;
      }

      v33 = +[MCRestrictionManagerWriter sharedManager];
      v34 = [v33 effectiveValueForSetting:MCFeatureSimplePasscodeComplexity];
      intValue2 = [v34 intValue];

      v36 = v75;
      if (v75 < intValue2)
      {
        v75 = intValue2;
        v36 = intValue2;
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
      v43 = [MCPasscodeManagerWriter localizedDescriptionOfPasscodePolicyFromRestrictions:restrictionsCopy];
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
        v49 = [clientCopy requestUserInput:v70 delegate:self outResult:&v74];
        v50 = v74;
        v51 = v50;
        if (!v49 || !v50)
        {
          profile = [v65 profile];
          friendlyName = [profile friendlyName];
          _invalidInputError = [(MCInstaller *)self _userCancelledErrorWithFriendlyName:friendlyName];

          goto LABEL_37;
        }

        if (![v50 count])
        {
          _invalidInputError = [(MCInstaller *)self _invalidInputError];
          goto LABEL_38;
        }

        profile = [v51 objectAtIndexedSubscript:0];
        if (![profile count])
        {
          _invalidInputError = [(MCInstaller *)self _invalidInputError];
          goto LABEL_37;
        }

        v53 = [profile objectAtIndexedSubscript:0];
        v54 = [v53 objectForKeyedSubscript:v67];
        v73 = 0;
        v19 = [MCExtractablePasscodeContextWrapper contextWrapperForExtractablePasscode:v54 outError:&v73];
        _invalidInputError = v73;

        if (_invalidInputError)
        {
          break;
        }

        externalizedContext = [v19 externalizedContext];
        v56 = [MCPasscodeManagerWriter passcodeContext:externalizedContext compliesWithPolicyFromRestrictions:restrictionsCopy checkHistory:1 outError:0];

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
      if (_invalidInputError)
      {
        goto LABEL_41;
      }

LABEL_39:
      externalizedContext2 = [v19 externalizedContext];
      v72 = 0;
      [v66 changePasscodeWithOldPasscodeContext:v71 newPasscodeContext:externalizedContext2 skipRecovery:0 senderBundleID:@"com.apple.managedconfiguration.profiled.MCInstaller" outError:&v72];
      _invalidInputError = v72;

      if (!_invalidInputError)
      {
        [(MCInstaller *)self _updateCDPWithNewPasscodeContextWrapper:v19 passcodeType:v75];
      }

LABEL_41:

      wrapper = wrapperCopy;
      handlerCopy = v65;
      profile2 = v66;
    }

    else
    {
      profile2 = [handlerCopy profile];
      friendlyName2 = [profile2 friendlyName];
      _invalidInputError = [(MCInstaller *)self _userCancelledErrorWithFriendlyName:friendlyName2];

      v19 = 0;
    }

LABEL_43:
    v59 = self->_currentlyInstallingRestrictions;
    self->_currentlyInstallingRestrictions = 0;

    if (_invalidInputError)
    {
      if (errorCopy)
      {
        v60 = _invalidInputError;
        v20 = 0;
        *errorCopy = _invalidInputError;
      }

      else
      {
        v20 = 0;
      }

LABEL_50:

      goto LABEL_51;
    }

LABEL_46:
    if (wrapper)
    {
      v61 = v19;
      _invalidInputError = 0;
      *wrapper = v19;
    }

    else
    {
      _invalidInputError = 0;
    }

    v20 = 1;
    goto LABEL_50;
  }

  v20 = 1;
LABEL_51:

  return v20;
}

- (void)_updateCDPWithNewPasscodeContextWrapper:(id)wrapper passcodeType:(int)type
{
  wrapperCopy = wrapper;
  v6 = objc_alloc_init(CDPContext);
  [v6 setType:6];
  if (type == -1)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = [[CDPStateController alloc] initWithContext:v6];
  passcode = [wrapperCopy passcode];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100048E68;
  v10[3] = &unk_10011C670;
  v10[4] = v7;
  [v8 localSecretChangedTo:passcode secretType:v7 completion:v10];
}

- (BOOL)_promptUserForMAIDSignIn:(id)in personaID:(id)d handler:(id)handler interactionClient:(id)client outError:(id *)error
{
  handlerCopy = handler;
  v14 = 0;
  v12 = [client requestMAIDSignIn:in personaID:d outError:error isCancelled:&v14];
  if (error && (v14 & 1) != 0)
  {
    *error = [handlerCopy userCancelledError];
  }

  if (error && v12 != 1 && !*error)
  {
    *error = [NSError MCErrorWithDomain:MCInstallationErrorDomain code:4038 descriptionArray:0 errorType:MCErrorTypeFatal];
  }

  return v12;
}

- (void)_promptUserForRestoreWithAccountID:(id)d personaID:(id)iD interactionClient:(id)client
{
  dCopy = d;
  iDCopy = iD;
  clientCopy = client;
  v10 = _MCLogObjects[9];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting managed restore...", v11, 2u);
  }

  [clientCopy requestManagedRestoreWithManagedAppleID:dCopy personaID:iDCopy];
}

- (id)_validateNewMDMProfile:(id)profile installationOption:(id)option
{
  v5 = kMCInstallProfileOptionInstallationSource;
  profileCopy = profile;
  v7 = [option objectForKeyedSubscript:v5];
  v8 = [profileCopy payloadsWithClass:objc_opt_class()];

  firstObject = [v8 firstObject];

  assignedManagedAppleID = [firstObject assignedManagedAppleID];
  if (assignedManagedAppleID && ([v7 isEqualToString:kDMCProfileInstallationSourceAccountDrivenUserEnrollment] & 1) == 0)
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

  enrollmentMode = [firstObject enrollmentMode];
  if ([enrollmentMode isEqualToString:kMDMEnrollmentModeBYOD] && (objc_msgSend(v7, "isEqualToString:", kDMCProfileInstallationSourceAccountDrivenUserEnrollment) & 1) == 0)
  {

LABEL_13:
    v16 = MCInstallationErrorDomain;
    enrollmentMode = [firstObject friendlyName];
    enrollmentMode2 = MCErrorArray();
    v14 = [NSError MCErrorWithDomain:v16 code:4022 descriptionArray:enrollmentMode2 errorType:MCErrorTypeFatal, enrollmentMode, 0];
    goto LABEL_14;
  }

  enrollmentMode2 = [firstObject enrollmentMode];
  if ([enrollmentMode2 isEqualToString:kMDMEnrollmentModeADDE])
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

- (id)_validateMDMReplacementNewProfile:(id)profile oldProfile:(id)oldProfile client:(id)client
{
  oldProfileCopy = oldProfile;
  profileCopy = profile;
  v9 = [oldProfileCopy payloadsWithClass:objc_opt_class()];

  firstObject = [v9 firstObject];

  v11 = [profileCopy payloadsWithClass:objc_opt_class()];

  firstObject2 = [v11 firstObject];

  v13 = objc_opt_new();
  managedAppleIDName = [firstObject2 managedAppleIDName];
  if (!managedAppleIDName)
  {
    goto LABEL_3;
  }

  v15 = managedAppleIDName;
  managedAppleIDName2 = [firstObject managedAppleIDName];
  lowercaseString = [managedAppleIDName2 lowercaseString];
  managedAppleIDName3 = [firstObject2 managedAppleIDName];
  lowercaseString2 = [managedAppleIDName3 lowercaseString];
  v19 = [lowercaseString isEqualToString:lowercaseString2];

  if ((v19 & 1) == 0)
  {
    v21 = _MCLogObjects[9];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = v21;
      managedAppleIDName2 = [firstObject managedAppleIDName];
      managedAppleIDName4 = [firstObject2 managedAppleIDName];
      *buf = 138543618;
      *v88 = managedAppleIDName2;
      *&v88[8] = 2114;
      v89 = managedAppleIDName4;
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

  enrollmentMode = [firstObject enrollmentMode];
  if (!enrollmentMode)
  {
    managedAppleIDName2 = [firstObject2 enrollmentMode];
    if (!managedAppleIDName2)
    {
      goto LABEL_11;
    }
  }

  enrollmentMode2 = [firstObject enrollmentMode];
  enrollmentMode3 = [firstObject2 enrollmentMode];
  v27 = [enrollmentMode2 isEqualToString:enrollmentMode3];

  if (enrollmentMode)
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
    enrollmentMode4 = [firstObject enrollmentMode];
    enrollmentMode5 = [firstObject2 enrollmentMode];
    *buf = 138543618;
    *v88 = enrollmentMode4;
    *&v88[8] = 2114;
    v89 = enrollmentMode5;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "enrollmentMode doesn't match! Old enrollmentMode:%{public}@, new enrollmentMode: %{public}@", buf, 0x16u);
  }

  [v13 addObject:kMDMEnrollmentModeKey];
  v28 = 1;
LABEL_16:
  requiredAppIDForMDM = [firstObject2 requiredAppIDForMDM];
  if (!requiredAppIDForMDM)
  {
    goto LABEL_18;
  }

  v34 = requiredAppIDForMDM;
  requiredAppIDForMDM2 = [firstObject requiredAppIDForMDM];
  requiredAppIDForMDM3 = [firstObject2 requiredAppIDForMDM];
  v37 = [requiredAppIDForMDM2 isEqualToNumber:requiredAppIDForMDM3];

  if ((v37 & 1) == 0)
  {
    v38 = _MCLogObjects[9];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = v38;
      requiredAppIDForMDM4 = [firstObject requiredAppIDForMDM];
      requiredAppIDForMDM5 = [firstObject2 requiredAppIDForMDM];
      *buf = 138543618;
      *v88 = requiredAppIDForMDM4;
      *&v88[8] = 2114;
      v89 = requiredAppIDForMDM5;
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

  topic = [firstObject topic];
  topic2 = [firstObject2 topic];
  v44 = [topic isEqualToString:topic2];

  v45 = +[MCActivationUtilities sharedInstance];
  LODWORD(topic2) = [v45 isHRNMode];

  if (topic2 | 2) == 2 || (v44)
  {
    v46 = 0;
  }

  else
  {
    v60 = _MCLogObjects[9];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = v60;
      topic3 = [firstObject topic];
      topic4 = [firstObject2 topic];
      *buf = 138543618;
      *v88 = topic3;
      *&v88[8] = 2114;
      v89 = topic4;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "topic doesn't match! Old topic:%{public}@, new topic: %{public}@", buf, 0x16u);
    }

    [v13 addObject:kMDMTopicKey];
    v46 = 1;
  }

  serverURLString = [firstObject serverURLString];
  serverURLString2 = [firstObject2 serverURLString];
  v49 = [serverURLString isEqualToString:serverURLString2];

  v85 = v49;
  if ((v49 & 1) == 0)
  {
    v50 = _MCLogObjects[9];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = v50;
      serverURLString2 = [firstObject serverURLString];
      serverURLString3 = [firstObject2 serverURLString];
      *buf = 138543618;
      *v88 = serverURLString2;
      *&v88[8] = 2114;
      v89 = serverURLString3;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "serverURLString doesn't match! Old serverURLString:%{public}@, new serverURLString: %{public}@", buf, 0x16u);
    }

    [v13 addObject:kMDMServerURLKey];
  }

  checkInURLString = [firstObject checkInURLString];
  if (checkInURLString || ([firstObject2 checkInURLString], (serverURLString2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v84 = v46;
    v54 = v28;
    v55 = v13;
    v56 = v20;
    checkInURLString2 = [firstObject checkInURLString];
    checkInURLString3 = [firstObject2 checkInURLString];
    v59 = [checkInURLString2 isEqualToString:checkInURLString3];

    if (checkInURLString)
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
        checkInURLString4 = [firstObject checkInURLString];
        checkInURLString5 = [firstObject2 checkInURLString];
        *buf = 138543618;
        *v88 = checkInURLString4;
        *&v88[8] = 2114;
        v89 = checkInURLString5;
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

  supportUserChannel = [firstObject supportUserChannel];
  v70 = supportUserChannel ^ [firstObject2 supportUserChannel];
  if (v70 == 1)
  {
    v71 = _MCLogObjects[9];
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v72 = v71;
      supportUserChannel2 = [firstObject supportUserChannel];
      supportUserChannel3 = [firstObject2 supportUserChannel];
      *buf = 67109376;
      *v88 = supportUserChannel2;
      *&v88[4] = 1024;
      *&v88[6] = supportUserChannel3;
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

  if (!client)
  {
    accessRights = [firstObject accessRights];
    v80 = ([firstObject2 accessRights] | accessRights);
    if (v80 != [firstObject accessRights])
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

- (id)_guardAgainstNoMDMPayloadWithNewProfile:(id)profile oldProfile:(id)oldProfile
{
  profileCopy = profile;
  oldProfileCopy = oldProfile;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isMDMProfile = [profileCopy isMDMProfile];
  }

  else
  {
    isMDMProfile = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !(isMDMProfile & 1 | (([oldProfileCopy isMDMProfile] & 1) == 0)))
  {
    v9 = MCInstallationErrorDomain;
    friendlyName = [oldProfileCopy friendlyName];
    v11 = MCErrorArray();
    v12 = [NSError MCErrorWithDomain:v9 code:4015 descriptionArray:v11 errorType:MCErrorTypeFatal, friendlyName, 0];
    mCCopyAsPrimaryError = [v12 MCCopyAsPrimaryError];
  }

  else
  {
    mCCopyAsPrimaryError = 0;
  }

  return mCCopyAsPrimaryError;
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
  mCCopyAsPrimaryError = [v4 MCCopyAsPrimaryError];

  return mCCopyAsPrimaryError;
}

+ (id)deviceIsSupervisedError
{
  v2 = MCChaperoneErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:29004 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];
  mCCopyAsPrimaryError = [v4 MCCopyAsPrimaryError];

  return mCCopyAsPrimaryError;
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

- (id)_installProfileHandler:(id)handler options:(id)options interactionClient:(id)client source:(id)source outError:(id *)error
{
  handlerCopy = handler;
  optionsCopy = options;
  clientCopy = client;
  sourceCopy = source;
  v318 = +[MCRestrictionManagerWriter sharedManager];
  v309 = +[MCDependencyManager sharedManager];
  v13 = +[NSMutableDictionary dictionary];
  [(MCInstaller *)self setSetAsideAccountIdentifiersByPayloadClass:v13];

  v14 = +[NSMutableDictionary dictionary];
  [(MCInstaller *)self setSetAsideDictionariesByPayloadClass:v14];

  profile = [handlerCopy profile];
  identifier = [profile identifier];

  v308 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionManagingProfileIdentifier];
  v306 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionAdditionalManagedProfileIdentifiers];
  v16 = kMCInstallProfileOptionIsInstalledByMDM;
  v17 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
  bOOLValue = [v17 BOOLValue];

  v19 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionsIsInstalledByDeclarativeManagement];
  bOOLValue2 = [v19 BOOLValue];

  v21 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionFilterFlag];
  intValue = [v21 intValue];

  currentRestrictions = [v318 currentRestrictions];
  mCDeepCopy = [currentRestrictions MCDeepCopy];

  v367 = 0;
  v23 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionInstallationType];
  intValue2 = [v23 intValue];

  v361 = 0;
  v362 = &v361;
  v363 = 0x3032000000;
  v364 = sub_100047CFC;
  v365 = sub_100047D0C;
  v366 = 0;
  v24 = kMCInstallProfileOptionPersonaID;
  v315 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionPersonaID];
  v25 = _MCLogObjects[9];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Beginning profile installation...", buf, 2u);
  }

  v26 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionAssumeOwnership];
  bOOLValue3 = [v26 BOOLValue];

  if (bOOLValue3)
  {
    v28 = _MCLogObjects[9];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Beginning profile assume ownership...", buf, 2u);
    }

    defaultRestrictions = [(MCInstaller *)self _assumeOwnershipProfileHandler:handlerCopy options:optionsCopy source:sourceCopy outError:error];
    createHandler = 0;
    v313 = 0;
    v304 = 0;
    goto LABEL_110;
  }

  systemProfileRestrictions = [v318 systemProfileRestrictions];
  mCMutableDeepCopy = [systemProfileRestrictions MCMutableDeepCopy];

  userProfileRestrictions = [v318 userProfileRestrictions];
  mCMutableDeepCopy2 = [userProfileRestrictions MCMutableDeepCopy];

  v32 = _MCLogObjects[5];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = identifier;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Beginning profile installation for %{public}@", buf, 0xCu);
  }

  v33 = +[MCManifest sharedManifest];
  installedMDMProfile = [v33 installedMDMProfile];

  profile2 = [handlerCopy profile];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_14;
  }

  profile3 = [handlerCopy profile];
  isMDMProfile = [profile3 isMDMProfile];

  if (!isMDMProfile)
  {
LABEL_14:
    v298 = 0;
    v42 = 1;
    goto LABEL_19;
  }

  v298 = installedMDMProfile != 0;
  profile4 = [handlerCopy profile];
  if (installedMDMProfile)
  {
    v38 = +[MCManifest sharedManifest];
    installedMDMProfile2 = [v38 installedMDMProfile];
    v40 = [(MCInstaller *)self _validateMDMReplacementNewProfile:profile4 oldProfile:installedMDMProfile2 client:clientCopy];
    v41 = v362[5];
    v362[5] = v40;
  }

  else
  {
    v43 = [(MCInstaller *)self _validateNewMDMProfile:profile4 installationOption:optionsCopy];
    v38 = v362[5];
    v362[5] = v43;
  }

  v44 = [optionsCopy objectForKeyedSubscript:v16];
  bOOLValue4 = [v44 BOOLValue];

  if ((bOOLValue4 & 1) == 0)
  {
    [(MCInstaller *)self _checkinWithMdmd];
  }

  v42 = 0;
LABEL_19:
  if (v362[5])
  {
    createHandler = 0;
    v313 = 0;
LABEL_51:

    v304 = 0;
    v75 = 0;
    goto LABEL_52;
  }

  v295 = v42;
  if (intValue2 == 2)
  {
    v46 = 2;
  }

  else
  {
    v46 = 1;
  }

  v47 = [(MCInstaller *)self _installedProfileWithIdentifier:identifier installationType:v46];
  v297 = v47;
  if (v47)
  {
    profile5 = [handlerCopy profile];
    v49 = [(MCInstaller *)self _guardAgainstNoMDMPayloadWithNewProfile:profile5 oldProfile:v47];
    v50 = v362[5];
    v362[5] = v49;

    if (v362[5])
    {
      createHandler = 0;
LABEL_49:
      v313 = 0;
      goto LABEL_50;
    }

    if (!v298)
    {
      v53 = kMCDMManagedProfileToManagingProfileKey;
      v54 = [v309 dependentsOfParent:identifier inDomain:kMCDMManagedProfileToManagingProfileKey];
      v55 = [v54 count];

      if (v308 && !v55)
      {
        goto LABEL_35;
      }

      identifier2 = [v297 identifier];
      v147 = [v309 dependentsOfParent:identifier2 inDomain:v53];
      v148 = [v147 count];

      if (!(bOOLValue & 1 | (v148 == 0)))
      {
        profile6 = [handlerCopy profile];
        friendlyName = [profile6 friendlyName];
        v151 = MCErrorArray();
        v152 = [NSError MCErrorWithDomain:MCMDMErrorDomain code:12013 descriptionArray:v151 errorType:MCErrorTypeFatal, friendlyName, 0];
        mCCopyAsPrimaryError = [v152 MCCopyAsPrimaryError];
        v154 = v362[5];
        v362[5] = mCCopyAsPrimaryError;

        createHandler = 0;
        v313 = 0;
        profile9 = profile6;
        goto LABEL_44;
      }

      if (bOOLValue2 && v148)
      {
LABEL_35:
        profile7 = [handlerCopy profile];
        friendlyName2 = [profile7 friendlyName];
        v58 = MCErrorArray();
        v59 = [NSError MCErrorWithDomain:MCMDMErrorDomain code:12013 descriptionArray:v58 errorType:MCErrorTypeFatal, friendlyName2, 0];
        v60 = v362[5];
        v362[5] = v59;

        createHandler = 0;
        v313 = 0;
        profile9 = profile7;
LABEL_44:

LABEL_50:
        goto LABEL_51;
      }

      if (!v308)
      {
        v174 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsOTAUpdate];
        bOOLValue5 = [v174 BOOLValue];

        if ((bOOLValue5 & 1) == 0)
        {
          profile8 = [handlerCopy profile];
          v177 = [v297 doesSigningAllowReplacementWithProfile:profile8];

          if ((v177 & 1) == 0)
          {
            friendlyName3 = [v297 friendlyName];
            v179 = MCErrorArray();
            v180 = [NSError MCErrorWithDomain:MCInstallationErrorDomain code:4008 descriptionArray:v179 errorType:MCErrorTypeFatal, friendlyName3, 0];
            v181 = v362[5];
            v362[5] = v180;

            mCCopyAsPrimaryError2 = [v362[5] MCCopyAsPrimaryError];
            createHandler = 0;
            v313 = 0;
            profile9 = v362[5];
            v362[5] = mCCopyAsPrimaryError2;
            goto LABEL_44;
          }
        }
      }
    }

    v51 = _MCLogObjects[5];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = identifier;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Profile “%{public}@” is replacing an existing profile having the same identifier.", buf, 0xCu);
    }

    createHandler = [v297 createHandler];
    [createHandler setAsideWithInstaller:self];
    if ([v297 isInstalledForUser])
    {
      identifier3 = [v297 identifier];
      [mCMutableDeepCopy2 removeObjectForKey:identifier3];
    }

    else
    {
      identifier3 = [v297 identifier];
      [mCMutableDeepCopy removeObjectForKey:identifier3];
    }
  }

  else
  {
    createHandler = 0;
  }

  if (intValue2 == 2)
  {
    [mCMutableDeepCopy2 objectForKey:identifier];
  }

  else
  {
    [mCMutableDeepCopy objectForKey:identifier];
  }
  v62 = ;

  if (v62)
  {
    profile9 = [handlerCopy profile];
    friendlyName4 = [profile9 friendlyName];
    v64 = MCErrorArray();
    v65 = [NSError MCErrorWithDomain:MCInstallationErrorDomain code:4002 descriptionArray:v64 errorType:MCErrorTypeFatal, friendlyName4, 0];
    mCCopyAsPrimaryError3 = [v65 MCCopyAsPrimaryError];
    v67 = v362[5];
    v362[5] = mCCopyAsPrimaryError3;

LABEL_43:
    v313 = 0;
    goto LABEL_44;
  }

  v68 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsOTAUpdate];
  bOOLValue6 = [v68 BOOLValue];

  [handlerCopy profile];
  if (bOOLValue6)
    v70 = {;
    v71 = v362 + 5;
    v360 = v362[5];
    [(MCInstaller *)self _showWarningsForUpdatingProfile:v70 originalProfile:v297 interactionClient:clientCopy outError:&v360];
    v72 = v360;
  }

  else
    v70 = {;
    v71 = v362 + 5;
    v359 = v362[5];
    [(MCInstaller *)self _showWarningsForProfile:v70 interactionClient:clientCopy outError:&v359];
    v72 = v359;
  }

  v73 = v72;
  v74 = *v71;
  *v71 = v73;

  if (v362[5])
  {
    goto LABEL_49;
  }

  profile10 = [handlerCopy profile];
  v145 = v362 + 5;
  obj = v362[5];
  v294 = [profile10 restrictionsWithHeuristicsAppliedOutError:&obj];
  objc_storeStrong(v145, obj);

  if (v362[5])
  {
    goto LABEL_114;
  }

  v155 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledInteractively];
  bOOLValue7 = [v155 BOOLValue];

  if (bOOLValue7)
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

  profile9 = v294;
  if (v362[5])
  {
    goto LABEL_43;
  }

  if ((bOOLValue & 1) == 0)
  {
    if (qword_100136B78 != -1)
    {
      sub_1000C27D8();
    }

    if (!os_variant_has_internal_ui() || (profile9 = v294, !CFPreferencesGetAppBooleanValue(@"AllowMDMOnlyPayloadsWithoutMDM", kMCNotBackedUpPreferencesDomain, 0)))
    {
      v356 = 0u;
      v357 = 0u;
      v354 = 0u;
      v355 = 0u;
      profile11 = [handlerCopy profile];
      payloads = [profile11 payloads];

      v162 = [payloads countByEnumeratingWithState:&v354 objects:v373 count:16];
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
              objc_enumerationMutation(payloads);
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
                    v172 = [optionsCopy objectForKeyedSubscript:v24];
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
          v162 = [payloads countByEnumeratingWithState:&v354 objects:v373 count:16];
        }

        while (v162);
      }

LABEL_153:

      profile9 = v294;
    }
  }

  if (v362[5])
  {
    goto LABEL_43;
  }

  v185 = +[MDMCloudConfiguration sharedConfiguration];
  isSupervised = [v185 isSupervised];

  if (isSupervised)
  {
    profile12 = [handlerCopy profile];
    v188 = [profile12 payloadsWithClass:objc_opt_class()];
    firstObject = [v188 firstObject];

    if (firstObject && [firstObject isUserEnrollment])
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
    profile13 = [handlerCopy profile];
    firstObject = [profile13 payloads];

    v192 = [firstObject countByEnumeratingWithState:&v346 objects:v371 count:16];
    if (v192)
    {
      v193 = *v347;
      while (2)
      {
        for (j = 0; j != v192; j = j + 1)
        {
          if (*v347 != v193)
          {
            objc_enumerationMutation(firstObject);
          }

          if ([(MCInstaller *)self deviceSupervisionRequiredForPayload:*(*(&v346 + 1) + 8 * j)])
          {
            v190 = +[MCInstaller deviceNotSupervisedError];
            goto LABEL_169;
          }
        }

        v192 = [firstObject countByEnumeratingWithState:&v346 objects:v371 count:16];
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

  v196 = intValue2 == 2 ? mCMutableDeepCopy2 : mCMutableDeepCopy;
  [v196 setObject:v294 forKey:identifier];
  v197 = [optionsCopy copy];
  profile14 = [handlerCopy profile];
  [profile14 setInstallOptions:v197];

  v199 = v362 + 5;
  v345 = v362[5];
  [handlerCopy stageForInstallationWithInstaller:self interactionClient:clientCopy outError:&v345];
  objc_storeStrong(v199, v345);
  if (v362[5])
  {
LABEL_114:
    v313 = 0;
LABEL_115:
    profile9 = v294;
    goto LABEL_44;
  }

  v313 = handlerCopy;
  currentRestrictions2 = [v318 currentRestrictions];
  defaultRestrictions = [v318 defaultRestrictions];
  systemClientRestrictions = [v318 systemClientRestrictions];
  userClientRestrictions = [v318 userClientRestrictions];
  v203 = v362 + 5;
  v344 = v362[5];
  v293 = [MCRestrictionManagerWriter restrictionsWithCurrentRestrictions:currentRestrictions2 defaultRestrictions:defaultRestrictions systemProfileRestrictions:mCMutableDeepCopy userProfileRestrictions:mCMutableDeepCopy2 systemClientRestrictions:systemClientRestrictions userClientRestrictions:userClientRestrictions outRestrictionsChanged:0 outError:&v344];
  objc_storeStrong(v203, v344);

  v204 = v362 + 5;
  if (v362[5])
  {

    goto LABEL_115;
  }

  v343 = 0;
  v342 = 0;
  [(MCInstaller *)self _promptUserForComplianceWithRestrictions:v293 handler:v313 interactionClient:clientCopy outPasscodeContextWrapper:&v343 outError:&v342];
  v291 = v343;
  objc_storeStrong(v204, v342);
  if (v362[5])
  {
    v75 = 0;
    v304 = 0;
    v205 = 2;
    goto LABEL_284;
  }

  externalizedContext = [v291 externalizedContext];
  profile15 = [v313 profile];
  v207 = [profile15 payloadsWithClass:objc_opt_class()];
  firstObject2 = [v207 firstObject];

  if (firstObject2)
  {
    v208 = +[MCPasscodeManager sharedManager];
    isPasscodeSet = [v208 isPasscodeSet];
    if (externalizedContext)
    {
      v210 = 0;
    }

    else
    {
      v210 = isPasscodeSet;
    }

    if (v210)
    {
      v341 = 0;
      [clientCopy requestCurrentPasscodeOutPasscodeContext:&v341];
      externalizedContext = v341;
    }

    if (v298)
    {
      profile16 = [createHandler profile];
      installOptions = [profile16 installOptions];

      defaultRestrictions = kMCInstallProfileOptionIsCloudProfile;
      v213 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsCloudProfile];
      if (v213)
      {
LABEL_189:

        goto LABEL_194;
      }

      v214 = [installOptions objectForKeyedSubscript:defaultRestrictions];
      v215 = v214 == 0;

      if (!v215)
      {
        v213 = [optionsCopy mutableCopy];
        v216 = [installOptions objectForKeyedSubscript:defaultRestrictions];
        [v213 setObject:v216 forKeyedSubscript:defaultRestrictions];

        v217 = [v213 copy];
        optionsCopy = v217;
        goto LABEL_189;
      }
    }

    else
    {
      if (([firstObject2 accessRights] & 4) == 0)
      {
        goto LABEL_195;
      }

      if (MCKeybagHasMDMEscrowDataAndSecret())
      {
        installOptions = 0;
      }

      else
      {
        v340[1] = 0;
        MDMEscrowWithPasscodeContext = MCKeybagCreateMDMEscrowWithPasscodeContext();
        installOptions = 0;
        if ((MDMEscrowWithPasscodeContext & 1) == 0)
        {
          v283 = _MCLogObjects[2];
          if (os_log_type_enabled(v283, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = installOptions;
            _os_log_impl(&_mh_execute_header, v283, OS_LOG_TYPE_ERROR, "Unable to create unlock token: %{public}@", buf, 0xCu);
          }

          v286 = MCErrorArray();
          v296 = [NSError MCErrorWithDomain:MCInstallationErrorDomain code:4042 descriptionArray:v286 underlyingError:installOptions errorType:MCErrorTypeFatal, identifier, 0];
          mCCopyAsPrimaryError4 = [v296 MCCopyAsPrimaryError];
          v285 = v362[5];
          v362[5] = mCCopyAsPrimaryError4;

          v75 = 0;
          v304 = 0;
          goto LABEL_280;
        }
      }
    }

LABEL_194:

LABEL_195:
    if (externalizedContext && MCKeybagVerifyPasscodeContext())
    {
      v219 = [optionsCopy mutableCopy];
      [v219 setObject:externalizedContext forKeyedSubscript:kMDMPasscodeKey];
      v220 = [v219 copy];

      optionsCopy = v220;
    }

    managedAppleID = [firstObject2 managedAppleID];
    v222 = [managedAppleID length];

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
      v224 = [installedMDMProfile payloadsWithClass:objc_opt_class()];
      firstObject3 = [v224 firstObject];

      [firstObject2 setIsUserEnrollment:{objc_msgSend(firstObject3, "isUserEnrollment")}];
LABEL_204:

LABEL_211:
      [firstObject2 setPersonaID:v315];
      if (!v362[5])
      {
        v232 = +[ACAccountStore defaultStore];
        v233 = [v232 dmc_remoteManagementAccountForManagementProfileIdentifier:identifier];

        defaultRestrictions = [v233 identifier];
        if (defaultRestrictions)
        {
          v234 = [optionsCopy mutableCopy];
          [v234 setObject:defaultRestrictions forKeyedSubscript:kMDMRMAccountIDKey];
          v235 = [v234 copy];

          optionsCopy = v235;
        }
      }

      if (([firstObject2 isUserEnrollment] & 1) == 0 && (+[DMCMultiUserModeUtilities isSharediPad](DMCMultiUserModeUtilities, "isSharediPad") & 1) == 0 && +[DMCMultiUserModeUtilities deviceHasMultipleUsers](DMCMultiUserModeUtilities, "deviceHasMultipleUsers"))
      {
        v236 = +[MCInstaller notSupportedUnderMultiUserModeError];
        v237 = v362[5];
        v362[5] = v236;
      }

      goto LABEL_219;
    }

    managedAppleID2 = [firstObject2 managedAppleID];
    v227 = [managedAppleID2 length];

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
      v241 = [DMCPersonaHelper createEnterprisePersonaWithPasscodeData:externalizedContext passcodeDataType:1 error:&v339];
      defaultRestrictions = v339;

      if (v241)
      {
        [DMCPersonaHelper trackDirtyPersona:v241];
        managedAppleID3 = [firstObject2 managedAppleID];
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
        v243 = managedAppleID3;
        v333 = v243;
        v334 = v241;
        v244 = v313;
        v335 = v244;
        v336 = clientCopy;
        v338 = &v361;
        v315 = v334;
        firstObject3 = [DMCPersonaHelper performBlockUnderPersona:v334 block:v332];

        if (v362[5])
        {
          v245 = v362[5];
        }

        else
        {
          v245 = firstObject3;
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
          v330 = firstObject2;
          [v246 dmc_updateAppleAccountWithPersonaID:v315 error:&v331 updateBlock:v328];
          objc_storeStrong(v247, v331);

          v249 = [[NSConditionLock alloc] initWithCondition:1];
          v250 = +[DMCEnrollmentFlowController enrollmentFlowController];
          profile17 = [v248 profile];
          organization = [profile17 organization];
          v253 = organization;
          if (organization)
          {
            v254 = organization;
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
          defaultRestrictions = v249;
          v326 = defaultRestrictions;
          [v250 updateMDMUserEnrollmentWithManagedAppleID:v243 profileIdentifier:identifier organizationName:v255 personaID:v315 completionHandler:v325];
          [defaultRestrictions lockWhenCondition:0];
          [defaultRestrictions unlock];
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_204;
      }

      v282 = _MCLogObjects[5];
      if (os_log_type_enabled(v282, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = defaultRestrictions;
        _os_log_impl(&_mh_execute_header, v282, OS_LOG_TYPE_ERROR, "Failed to create enterprise persona with error: %{public}@", buf, 0xCu);
      }

      v230 = v362;
      v231 = defaultRestrictions;
      v315 = 0;
    }

    v75 = 0;
    v304 = 0;
    v296 = v230[5];
    installOptions = v231;
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
    if (v315 && (v238 = kMDMPersonaKey, [optionsCopy objectForKeyedSubscript:kMDMPersonaKey], v239 = objc_claimAutoreleasedReturnValue(), v240 = v239 == 0, v239, v240))
    {
      v256 = [optionsCopy mutableCopy];
      [v256 setObject:v315 forKeyedSubscript:v238];
      defaultRestrictions = [v256 copy];
    }

    else
    {
      defaultRestrictions = optionsCopy;
    }

    v257 = v362 + 5;
    v324 = v362[5];
    [v313 installWithInstaller:self options:defaultRestrictions interactionClient:clientCopy outError:&v324];
    objc_storeStrong(v257, v324);
    installOptions = [defaultRestrictions mutableCopy];
    [installOptions removeObjectForKey:kMDMPasscodeKey];
    optionsCopy = [installOptions copy];

    v258 = v362[5];
    v75 = v258 == 0;
    if (v258)
    {
      goto LABEL_240;
    }

    v259 = objc_opt_new();
    profile18 = [v313 profile];
    [v259 addEventForProfile:profile18 operation:@"install" source:sourceCopy];

    if (((v295 | v298) & 1) == 0)
    {
      [(MCInstaller *)self _sendMDMEnrollmentEventWithInstallationOptions:optionsCopy];
    }

    defaultRestrictions = [v313 profile];
    loggingID = [defaultRestrictions loggingID];
    v262 = v362 + 5;
    v323 = v362[5];
    [v318 setSystemProfileRestrictions:mCMutableDeepCopy userProfileRestrictions:mCMutableDeepCopy2 sender:loggingID outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outAppWhitelistSettingsChanged:&v367 outRecomputedNag:0 outError:&v323];
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
        v263 = [optionsCopy objectForKey:kMCInstallProfileOptionIsCloudProfile];
        bOOLValue8 = [v263 BOOLValue];

        if (bOOLValue8)
        {
          profile19 = [v313 profile];
          v266 = [profile19 containsPayloadOfClass:objc_opt_class()];

          if (v266)
          {
            v267 = [optionsCopy objectForKey:kMCInstallProfileOptionInstallationSource];
            v268 = [v267 isEqualToString:kDMCProfileInstallationSourceMDMMigration];

            if ((v268 & 1) == 0)
            {
              v296 = +[MCInstaller considerProfilesInstalledDuringBuddyForManagement];
LABEL_250:
              currentRestrictions3 = [v318 currentRestrictions];
              [v313 didInstallOldGlobalRestrictions:mCDeepCopy newGlobalRestrictions:currentRestrictions3];

              if ([v308 length] && (objc_msgSend(v308, "isEqualToString:", identifier) & 1) == 0)
              {
                [v309 addDependent:identifier ofParent:v308 inDomain:kMCDMManagingProfileToManagedProfileKey reciprocalDomain:kMCDMManagedProfileToManagingProfileKey toSystem:intValue2 != 2 user:intValue2 == 2];
              }

              if ([v306 count])
              {
                v321 = 0u;
                v322 = 0u;
                v319 = 0u;
                v320 = 0u;
                defaultRestrictions = v306;
                v271 = [defaultRestrictions countByEnumeratingWithState:&v319 objects:v368 count:16];
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
                        objc_enumerationMutation(defaultRestrictions);
                      }

                      v275 = *(*(&v319 + 1) + 8 * k);
                      if (([v275 isEqualToString:identifier] & 1) == 0 && (objc_msgSend(v296, "containsObject:", v275) & 1) == 0)
                      {
                        [v309 addDependent:v275 ofParent:identifier inDomain:v288 reciprocalDomain:v273 toSystem:intValue2 != 2 user:intValue2 == 2];
                      }
                    }

                    v271 = [defaultRestrictions countByEnumeratingWithState:&v319 objects:v368 count:16];
                  }

                  while (v271);
                }
              }

              v276 = [MCRestrictionManager isWebContentFilterUIActiveWithRestrictionDictionary:mCDeepCopy];
              currentRestrictions4 = [v318 currentRestrictions];
              v278 = [MCRestrictionManager isWebContentFilterUIActiveWithRestrictionDictionary:currentRestrictions4];

              if (v276 != v278)
              {
                MCSendWebContentFilterUIActiveChangedNotification();
              }

              managedAppleID4 = [firstObject2 managedAppleID];
              if ([managedAppleID4 length])
              {
                v280 = v298;
              }

              else
              {
                v280 = 1;
              }

              if ((v280 & 1) == 0)
              {
                managedAppleID5 = [firstObject2 managedAppleID];
                [(MCInstaller *)self _promptUserForRestoreWithAccountID:managedAppleID5 personaID:v315 interactionClient:clientCopy];
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
    profile20 = [createHandler profile];
    installOptions2 = [profile20 installOptions];

    profile21 = [createHandler profile];
    isInstalledForUser = [profile21 isInstalledForUser];

    if (createHandler)
    {
      v94 = _MCLogObjects[5];
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEBUG, "Removing profiles that were set aside...", buf, 2u);
      }

      [createHandler removeWithInstaller:self options:0];
      currentRestrictions5 = [v318 currentRestrictions];
      [createHandler didRemoveOldGlobalRestrictions:mCDeepCopy newGlobalRestrictions:currentRestrictions5];

      profile22 = [createHandler profile];
      identifier4 = [profile22 identifier];

      v98 = [(MCInstaller *)self _managingProfileIdentifierForProfileIdentifier:identifier4];
      if (v98)
      {
        [v309 removeDependent:identifier4 fromParent:v98 inDomain:kMCDMManagingProfileToManagedProfileKey reciprocalDomain:kMCDMManagedProfileToManagingProfileKey fromSystem:isInstalledForUser ^ 1 user:isInstalledForUser];
      }

      v99 = [optionsCopy mutableCopy];
      v100 = v99;
      if (v298)
      {
        v101 = kMCInstallProfileOptionIsCloudProfile;
        v102 = [installOptions2 objectForKeyedSubscript:kMCInstallProfileOptionIsCloudProfile];
        bOOLValue9 = [v102 BOOLValue];

        if (bOOLValue9)
        {
          v104 = kMCInstallProfileOptionIsCloudLocked;
          v105 = [installOptions2 objectForKeyedSubscript:kMCInstallProfileOptionIsCloudLocked];
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
      v108 = [optionsCopy mutableCopy];
      v109 = +[MCProfile newProfileSignatureVersion];
      [v108 setObject:v109 forKeyedSubscript:kMCInstallProfileOptionSignatureVersion];

      v110 = v108;
      v101 = kMCInstallProfileOptionIsCloudProfile;
    }

    profile24 = [v110 objectForKeyedSubscript:v101];
    if ([profile24 BOOLValue])
    {
      v113 = [v110 objectForKeyedSubscript:kMCInstallProfileOptionIsCloudLocked];
      bOOLValue10 = [v113 BOOLValue];

      if (!bOOLValue10)
      {
        goto LABEL_83;
      }

      profile23 = [handlerCopy profile];
      [profile23 setLocked:1];

      profile24 = [handlerCopy profile];
      [profile24 setRemovalPasscode:0];
    }

LABEL_83:
    profile25 = [handlerCopy profile];
    [profile25 setInstallOptions:v110];

    profile26 = [handlerCopy profile];
    if (intValue2 == 2)
    {
      sub_100046460();
    }

    else
    {
      sub_1000464B0();
    }
    v118 = ;
    [profile26 writeStubToDirectory:v118];

    v119 = +[MCProfile thisDeviceType];
    if ([MCTargetDeviceResolver purgatorySupportedForDevice:v119])
    {
      [(MCInstaller *)self purgePurgatoryProfileWithIdentifier:identifier targetDevice:v119];
      v120 = [v110 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledInteractively];
      bOOLValue11 = [v120 BOOLValue];

      if (bOOLValue11)
      {
        profile27 = [handlerCopy profile];
        sub_1000826D8(profile27);
      }
    }

    v123 = +[MCManifest sharedManifest];
    if ((~intValue & 9) != 0)
    {
      [v123 addIdentifierToSystemManifest:identifier flag:intValue];
    }

    else
    {
      [v123 addIdentifierToUserManifest:identifier flag:intValue];
    }

    profile28 = [createHandler profile];
    if ([profile28 containsPayloadOfClass:objc_opt_class()])
    {
    }

    else
    {
      profile29 = [handlerCopy profile];
      v126 = [profile29 containsPayloadOfClass:objc_opt_class()];

      if (!v126)
      {
        goto LABEL_96;
      }
    }

    notify_post([MCDefaultsDidChangeNotification UTF8String]);
LABEL_96:
    profile30 = [createHandler profile];
    if ([profile30 containsPayloadOfClass:objc_opt_class()])
    {
    }

    else
    {
      profile31 = [handlerCopy profile];
      v129 = [profile31 containsPayloadOfClass:objc_opt_class()];

      if (!v129)
      {
LABEL_101:
        v133 = _MCLogObjects[5];
        if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = identifier;
          _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "Profile “%{public}@” installed.", buf, 0xCu);
        }

        goto LABEL_104;
      }
    }

    buf[0] = 0;
    v130 = +[MCServerSideHacks sharedHacks];
    effectiveUserSettings = [v318 effectiveUserSettings];
    [v130 recomputeAppOptionsEffectiveUserSettings:effectiveUserSettings outEffectiveChangeDetected:buf];

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
    currentRestrictions6 = [v318 currentRestrictions];
    v78 = [currentRestrictions6 copy];

    systemProfileRestrictions2 = [v318 systemProfileRestrictions];
    mCMutableDeepCopy3 = [systemProfileRestrictions2 MCMutableDeepCopy];

    userProfileRestrictions2 = [v318 userProfileRestrictions];
    mCMutableDeepCopy4 = [userProfileRestrictions2 MCMutableDeepCopy];

    if (intValue2 == 2)
    {
      v83 = mCMutableDeepCopy4;
    }

    else
    {
      v83 = mCMutableDeepCopy3;
    }

    [v83 removeObjectForKey:identifier];
    profile32 = [handlerCopy profile];
    loggingID2 = [profile32 loggingID];
    [v318 setSystemProfileRestrictions:mCMutableDeepCopy3 userProfileRestrictions:mCMutableDeepCopy4 sender:loggingID2 outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outAppWhitelistSettingsChanged:0 outRecomputedNag:0 outError:0];

    [handlerCopy removeWithInstaller:self options:0];
    currentRestrictions7 = [v318 currentRestrictions];
    [handlerCopy didRemoveOldGlobalRestrictions:v78 newGlobalRestrictions:currentRestrictions7];
  }

  if (createHandler)
  {
    [createHandler unsetAside];
  }

  installOptions2 = [MCInstaller _installationFailureErrorWithUnderlyingError:v362[5]];
  v88 = _MCLogObjects[5];
  if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
  {
    mCVerboseDescription = [installOptions2 MCVerboseDescription];
    *buf = 138543618;
    *&buf[4] = identifier;
    *&buf[12] = 2114;
    *&buf[14] = mCVerboseDescription;
    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "Profile “%{public}@” failed to install with error: %{public}@", buf, 0x16u);
  }

  if (error)
  {
    v90 = installOptions2;
    *error = installOptions2;
  }

LABEL_104:

  [(MCInstaller *)self setSetAsideAccountIdentifiersByPayloadClass:0];
  [(MCInstaller *)self setSetAsideDictionariesByPayloadClass:0];
  if ([v315 length])
  {
    [DMCPersonaHelper untrackDirtyPersona:v315];
  }

  profile33 = [handlerCopy profile];
  v135 = +[MCPayload accountPayloads];
  v136 = [profile33 containsAnyPayloadOfClasses:v135];

  profile34 = [createHandler profile];
  v138 = +[MCPayload accountPayloads];
  LOBYTE(v135) = [profile34 containsAnyPayloadOfClasses:v138];

  [(MCInstaller *)self _removeOrphanedResourcesOptions:optionsCopy includingAccounts:(v136 | v135) & 1];
  v139 = +[MCServerSideHacks sharedHacks];
  effectiveUserSettings2 = [v318 effectiveUserSettings];
  [v139 recomputeHacksAfterProfileChangesEffectiveUserSettings:effectiveUserSettings2 sendNotifications:1];

  recomputeAccountVPNAssociations = [v139 recomputeAccountVPNAssociations];
  if (v76)
  {
    v142 = 0;
  }

  else
  {
    v142 = [identifier copy];
  }

  defaultRestrictions = v142;

LABEL_110:
  _Block_object_dispose(&v361, 8);

  return defaultRestrictions;
}

- (BOOL)deviceSupervisionRequiredForPayload:(id)payload
{
  payloadCopy = payload;
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
  if (objc_opt_isKindOfClass() & 1) != 0 && ([payloadCopy vpnType], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", kMCVPNPayloadBaseVPNTypeAlwaysOn), v10, (v11))
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

- (void)addSetAsideAccountIdentifier:(id)identifier forPayloadClass:(Class)class
{
  identifierCopy = identifier;
  v6 = NSStringFromClass(class);
  setAsideAccountIdentifiersByPayloadClass = [(MCInstaller *)self setAsideAccountIdentifiersByPayloadClass];
  v8 = [setAsideAccountIdentifiersByPayloadClass objectForKeyedSubscript:v6];

  if (!v8)
  {
    v8 = +[NSMutableSet set];
    setAsideAccountIdentifiersByPayloadClass2 = [(MCInstaller *)self setAsideAccountIdentifiersByPayloadClass];
    [setAsideAccountIdentifiersByPayloadClass2 setObject:v8 forKeyedSubscript:v6];
  }

  [v8 addObject:identifierCopy];
}

- (id)setAsideAccountIdentifiersForPayloadClass:(Class)class
{
  v4 = NSStringFromClass(class);
  setAsideAccountIdentifiersByPayloadClass = [(MCInstaller *)self setAsideAccountIdentifiersByPayloadClass];
  v6 = [setAsideAccountIdentifiersByPayloadClass objectForKeyedSubscript:v4];
  allObjects = [v6 allObjects];

  return allObjects;
}

- (void)addSetAsideDictionary:(id)dictionary forPayloadHandlerClass:(Class)class
{
  dictionaryCopy = dictionary;
  v6 = NSStringFromClass(class);
  v7 = [(NSMutableDictionary *)self->_setAsideDictionariesByPayloadClass objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = +[NSMutableSet set];
    [(NSMutableDictionary *)self->_setAsideDictionariesByPayloadClass setObject:v7 forKeyedSubscript:v6];
  }

  [v7 addObject:dictionaryCopy];
}

- (id)setAsideDictionariesForPayloadHandlerClass:(Class)class
{
  v4 = NSStringFromClass(class);
  v5 = [(NSMutableDictionary *)self->_setAsideDictionariesByPayloadClass objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)_showWarningsForProfile:(id)profile interactionClient:(id)client outError:(id *)error
{
  clientCopy = client;
  installationWarnings = [profile installationWarnings];
  LOBYTE(error) = [(MCInstaller *)self _showWarnings:installationWarnings interactionClient:clientCopy outError:error];

  return error;
}

- (BOOL)_showWarningsForUpdatingProfile:(id)profile originalProfile:(id)originalProfile interactionClient:(id)client outError:(id *)error
{
  clientCopy = client;
  profileCopy = profile;
  installationWarnings = [originalProfile installationWarnings];
  installationWarnings2 = [profileCopy installationWarnings];

  v14 = [installationWarnings2 mutableCopy];
  [v14 removeObjectsInArray:installationWarnings];
  LOBYTE(error) = [(MCInstaller *)self _showWarnings:v14 interactionClient:clientCopy outError:error];

  return error;
}

- (BOOL)_showWarnings:(id)warnings interactionClient:(id)client outError:(id *)error
{
  warningsCopy = warnings;
  clientCopy = client;
  v9 = clientCopy;
  if (!clientCopy)
  {
    goto LABEL_10;
  }

  v14 = 0;
  v10 = [clientCopy showUserWarnings:warningsCopy outResult:&v14];
  if (v14 == 1 && v10 != 0)
  {
    clientCopy = 0;
LABEL_10:
    v12 = 1;
    goto LABEL_11;
  }

  clientCopy = +[MCProfileHandler userCancelledError];
  v12 = clientCopy == 0;
  if (error && clientCopy)
  {
    clientCopy = clientCopy;
    v12 = 0;
    *error = clientCopy;
  }

LABEL_11:

  return v12;
}

- (id)installProfileData:(id)data options:(id)options interactionClient:(id)client source:(id)source outError:(id *)error
{
  dataCopy = data;
  optionsCopy = options;
  clientCopy = client;
  sourceCopy = source;
  v14 = kMCInstallProfileOptionFilterFlag;
  v15 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionFilterFlag];
  intValue = [v15 intValue];

  if (intValue <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = intValue;
  }

  v18 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionInstallationType];
  intValue2 = [v18 intValue];

  if (intValue2 == 2)
  {
    v20 = 8;
  }

  else
  {
    v20 = 16;
  }

  if (optionsCopy)
  {
    v21 = [optionsCopy mutableCopy];
  }

  else
  {
    v21 = +[NSMutableDictionary dictionary];
  }

  v22 = v21;
  v23 = [NSNumber numberWithUnsignedInt:v20 | v17];
  [v22 setObject:v23 forKeyedSubscript:v14];

  if (clientCopy)
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
  v27 = [MCProfile profileWithData:dataCopy options:v22 outError:&v189];
  v28 = v189;
  v173 = v22;
  if (v28)
  {
    friendlyName7 = v28;
    selfCopy = 0;
    goto LABEL_79;
  }

  v169 = clientCopy;
  v188 = 0;
  v31 = [v27 mayInstallWithOptions:v22 hasInteractionClient:clientCopy != 0 outError:&v188];
  v32 = v27;
  v33 = v31;
  friendlyName7 = v188;
  if (!v33)
  {
    selfCopy = 0;
    v27 = v32;
    goto LABEL_78;
  }

  v168 = sourceCopy;
  v27 = v32;
  createHandler = [v32 createHandler];
  if (!createHandler)
  {
    _deviceLockedError = [(MCInstaller *)self _malformedPayloadErrorInternal:0];
    v38 = 0;
    goto LABEL_76;
  }

  v167 = v27;
  v35 = +[MCPasscodeManagerWriter sharedManager];
  isDeviceLocked = [v35 isDeviceLocked];

  if (isDeviceLocked)
  {
    _deviceLockedError = [(MCInstaller *)self _deviceLockedError];
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
      targetDeviceType = [v167 targetDeviceType];
      v40 = targetDeviceType == +[MCProfile thisDeviceType];
      v27 = v167;
      if (!v40)
      {
        _targetDeviceMismatchError = [(MCInstaller *)self _targetDeviceMismatchError];
        _deviceLockedError = [(MCInstaller *)self _targetDeviceErrorWithUnderlyingError:_targetDeviceMismatchError];

        v38 = 0;
        friendlyName7 = _targetDeviceMismatchError;
        goto LABEL_76;
      }
    }
  }

  if ([v27 isStub])
  {
    v41 = v27;
    v42 = MCProfileErrorDomain;
    friendlyName = [v41 friendlyName];
    v43 = MCErrorArray();
    v44 = [NSError MCErrorWithDomain:v42 code:1000 descriptionArray:v43 underlyingError:0 errorType:MCErrorTypeFatal, friendlyName, 0];
    v45 = createHandler;
    mCCopyAsPrimaryError = [v44 MCCopyAsPrimaryError];

    v38 = 0;
    friendlyName7 = friendlyName;
    v27 = v41;
    _deviceLockedError = mCCopyAsPrimaryError;
    createHandler = v45;
    goto LABEL_76;
  }

  v47 = +[MDMCloudConfiguration sharedConfiguration];
  userMode = [v47 userMode];

  if (userMode != 1)
  {
    selfCopy = friendlyName7;
    v27 = v167;
    goto LABEL_50;
  }

  v49 = +[MCPayload unavailablePayloadsInEphemeralMultiUser];
  sourceCopy = v168;
  if (intValue2 == 2)
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
  v161 = dataCopy;
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
        type = [v55 type];
        v58 = MCErrorArray();
        v59 = [NSError MCErrorWithDomain:v160 code:v56 descriptionArray:v58 errorType:MCErrorTypeFatal, type, 0];

        friendlyName7 = v59;
        goto LABEL_48;
      }

      if ([v165 containsObject:objc_opt_class()])
      {
        if (intValue2 == 2)
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
  dataCopy = v161;
  sourceCopy = v168;
LABEL_49:

  selfCopy = 0;
  v27 = v167;
  if (friendlyName7)
  {
    goto LABEL_77;
  }

LABEL_50:
  v166 = createHandler;
  v60 = selfCopy;
  if ([v27 containsPayloadOfClass:objc_opt_class()])
  {
    v61 = objc_opt_class();
    identifier = [v27 identifier];
    friendlyName7 = [(MCInstaller *)self existingProfileContainingPayloadClass:v61 excludingProfileIdentifier:identifier];

    if (friendlyName7)
    {
      v63 = MCInstallationErrorDomain;
      friendlyName2 = [friendlyName7 friendlyName];
      v158 = friendlyName2;
      v65 = MCErrorArray();
      v66 = MCErrorTypeFatal;
      v67 = v63;
      v68 = 4017;
      goto LABEL_74;
    }

    if ([v27 countOfPayloadsOfClass:objc_opt_class()] >= 2)
    {
      selfCopy = NSError;
      v69 = MCInstallationErrorDomain;
      friendlyName3 = [v27 friendlyName];
      v71 = MCErrorArray();
      v72 = [NSError MCErrorWithDomain:v69 code:4017 descriptionArray:v71 errorType:MCErrorTypeFatal, friendlyName3, 0];

      v60 = v72;
    }
  }

  if ([v27 containsPayloadOfClass:objc_opt_class()])
  {
    v73 = objc_opt_class();
    identifier2 = [v27 identifier];
    friendlyName7 = [(MCInstaller *)self existingProfileContainingPayloadClass:v73 excludingProfileIdentifier:identifier2];

    if (friendlyName7)
    {
      v75 = MCInstallationErrorDomain;
      friendlyName2 = [friendlyName7 friendlyName];
      v158 = friendlyName2;
      v65 = MCErrorArray();
      v66 = MCErrorTypeFatal;
      v67 = v75;
      v68 = 4019;
      goto LABEL_74;
    }

    if ([v27 countOfPayloadsOfClass:objc_opt_class()] >= 2)
    {
      selfCopy = NSError;
      v76 = MCInstallationErrorDomain;
      friendlyName4 = [v27 friendlyName];
      v78 = MCErrorArray();
      v79 = [NSError MCErrorWithDomain:v76 code:4019 descriptionArray:v78 errorType:MCErrorTypeFatal, friendlyName4, 0];

      v60 = v79;
    }
  }

  if ([v27 containsPayloadOfClass:objc_opt_class()])
  {
    if (intValue2 == 2)
    {
      selfCopy = 9;
    }

    else
    {
      selfCopy = 19;
    }

    v80 = objc_opt_class();
    identifier3 = [v27 identifier];
    friendlyName7 = [(MCInstaller *)self existingProfileContainingPayloadClass:v80 inProfilesWithFilterFlags:selfCopy excludingProfileIdentifier:identifier3];

    if (friendlyName7)
    {
      v82 = MCInstallationErrorDomain;
      friendlyName2 = [friendlyName7 friendlyName];
      v158 = friendlyName2;
      v65 = MCErrorArray();
      v66 = MCErrorTypeFatal;
      v67 = v82;
      v68 = 4027;
      goto LABEL_74;
    }

    if ([v27 countOfPayloadsOfClass:objc_opt_class()] >= 2)
    {
      selfCopy = NSError;
      v83 = MCInstallationErrorDomain;
      friendlyName5 = [v27 friendlyName];
      v85 = MCErrorArray();
      v86 = [NSError MCErrorWithDomain:v83 code:4027 descriptionArray:v85 errorType:MCErrorTypeFatal, friendlyName5, 0];

      v60 = v86;
    }
  }

  if (![v27 containsPayloadOfClass:objc_opt_class()])
  {
LABEL_93:
    if (([v27 containsPayloadOfClass:objc_opt_class()] & 1) != 0 || objc_msgSend(v27, "containsPayloadOfClass:", objc_opt_class()))
    {
      v108 = objc_opt_class();
      identifier4 = [v27 identifier];
      selfCopy = self;
      friendlyName7 = [(MCInstaller *)self existingProfileContainingPayloadClass:v108 excludingProfileIdentifier:identifier4];

      if (friendlyName7 || (v110 = objc_opt_class(), [v27 identifier], v111 = objc_claimAutoreleasedReturnValue(), -[MCInstaller existingProfileContainingPayloadClass:excludingProfileIdentifier:](self, "existingProfileContainingPayloadClass:excludingProfileIdentifier:", v110, v111), friendlyName7 = objc_claimAutoreleasedReturnValue(), v111, friendlyName7))
      {
        v112 = MCInstallationErrorDomain;
        friendlyName6 = [friendlyName7 friendlyName];
        v114 = MCErrorArray();
        v115 = [NSError MCErrorWithDomain:v112 code:4018 descriptionArray:v114 errorType:MCErrorTypeFatal, friendlyName6, 0];

LABEL_98:
        v38 = 0;
        _deviceLockedError = v115;
        goto LABEL_75;
      }

      v116 = [v27 countOfPayloadsOfClass:objc_opt_class()];
      if (&v116[[v27 countOfPayloadsOfClass:objc_opt_class()]] >= 2)
      {
        v124 = MCInstallationErrorDomain;
        friendlyName7 = [v27 friendlyName];
        friendlyName6 = MCErrorArray();
        v115 = [NSError MCErrorWithDomain:v124 code:4018 descriptionArray:friendlyName6 errorType:MCErrorTypeFatal, friendlyName7, 0];
        v114 = v60;
        goto LABEL_98;
      }
    }

    if ([v27 containsPayloadOfClass:objc_opt_class()])
    {
      v117 = objc_opt_class();
      identifier5 = [v27 identifier];
      friendlyName7 = [(MCInstaller *)self existingProfileContainingPayloadClass:v117 excludingProfileIdentifier:identifier5];

      if (friendlyName7)
      {
        v119 = MCInstallationErrorDomain;
        v29FriendlyName = [friendlyName7 friendlyName];
        v159 = v29FriendlyName;
LABEL_128:
        v135 = MCErrorArray();
        v136 = [NSError MCErrorWithDomain:v119 code:4034 descriptionArray:v135 errorType:MCErrorTypeFatal, v159, 0];

        v38 = 0;
        _deviceLockedError = v136;
        goto LABEL_75;
      }

      if ([v27 countOfPayloadsOfClass:objc_opt_class()] >= 2)
      {
        v119 = MCInstallationErrorDomain;
        v29FriendlyName = [v27 friendlyName];
        v159 = v29FriendlyName;
        goto LABEL_128;
      }
    }

    if ([v27 containsPayloadOfClass:objc_opt_class()])
    {
      v183 = v60;
      v121 = [(MCInstaller *)self _allowsPasswordPoliciesFromProfile:v27 outError:&v183];
      friendlyName7 = v183;

      if (!v121)
      {
        selfCopy = 0;
        sourceCopy = v168;
        createHandler = v166;
        goto LABEL_77;
      }

      v60 = friendlyName7;
    }

    if ([v27 containsPayloadOfClass:objc_opt_class()])
    {
      v122 = objc_opt_class();
      identifier6 = [v27 identifier];
      friendlyName7 = [(MCInstaller *)self existingProfileContainingPayloadClass:v122 excludingProfileIdentifier:identifier6];

      if (friendlyName7)
      {
        v119 = MCInstallationErrorDomain;
        v29FriendlyName = [friendlyName7 friendlyName];
        v159 = v29FriendlyName;
        goto LABEL_128;
      }

      if ([v27 countOfPayloadsOfClass:objc_opt_class()] >= 2)
      {
        v119 = MCInstallationErrorDomain;
        v29FriendlyName = [v27 friendlyName];
        v159 = v29FriendlyName;
        goto LABEL_128;
      }
    }

    friendlyName7 = [v27 removalDate];
    if (friendlyName7)
    {
      v125 = +[NSDate date];
      v126 = [friendlyName7 compare:v125];

      if (v126 == -1)
      {
        v133 = MCInstallationErrorDomain;
        friendlyName8 = [v27 friendlyName];
        v134 = MCErrorArray();
        _deviceLockedError = [NSError MCErrorWithDomain:v133 code:4025 descriptionArray:v134 errorType:MCErrorTypeFatal, friendlyName8, 0];

        goto LABEL_125;
      }
    }

    v127 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionsIsRMUserEnrollment];
    bOOLValue = [v127 BOOLValue];
    if (bOOLValue)
    {
      goto LABEL_117;
    }

    selfCopy = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
    if ([selfCopy BOOLValue])
    {
      obj = +[MDMConfiguration sharedConfiguration];
      if ([obj isUserEnrollment])
      {
        v27 = v167;
LABEL_117:
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((bOOLValue & 1) == 0)
        {
        }

        if (isKindOfClass)
        {
          v130 = MCInstallationErrorDomain;
          friendlyName8 = [v27 friendlyName];
          v132 = MCErrorArray();
          _deviceLockedError = [NSError MCErrorWithDomain:v130 code:4040 descriptionArray:v132 errorType:MCErrorTypeFatal, friendlyName8, 0];

LABEL_125:
          v38 = 0;
LABEL_126:

          goto LABEL_75;
        }

LABEL_131:
        v137 = +[MCActivationUtilities sharedInstance];
        isHRNMode = [v137 isHRNMode];

        v162 = dataCopy;
        if (isHRNMode > 1)
        {
          _deviceLockedError = v60;
        }

        else
        {
          v139 = +[MCPayload hrnRequiredPayloads];
          v179 = 0u;
          v180 = 0u;
          v181 = 0u;
          v182 = 0u;
          payloads = [v27 payloads];
          v141 = [payloads countByEnumeratingWithState:&v179 objects:v192 count:16];
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
                  objc_enumerationMutation(payloads);
                }

                v145 = *(*(&v179 + 1) + 8 * j);
                if ([v139 containsObject:objc_opt_class()])
                {
                  obja = MCInstallationErrorDomain;
                  type2 = [v145 type];
                  v147 = MCErrorArray();
                  v148 = [NSError MCErrorWithDomain:obja code:4044 descriptionArray:v147 errorType:MCErrorTypeFatal, type2, 0];

                  _deviceLockedError = v148;
                  goto LABEL_143;
                }
              }

              v142 = [payloads countByEnumeratingWithState:&v179 objects:v192 count:16];
              if (v142)
              {
                continue;
              }

              break;
            }
          }

          _deviceLockedError = v60;
LABEL_143:
        }

        createHandler = v166;
        if (_deviceLockedError)
        {
          v38 = 0;
          dataCopy = v162;
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
            _deviceLockedError = v151;
            v38 = 0;
            dataCopy = v162;
            v27 = v167;
            goto LABEL_76;
          }

          v176 = 0;
          v177 = 0;
          v152 = [v166 fetchFinalProfileWithClient:v169 outProfileData:&v177 outError:&v176];
          friendlyName8 = v177;
          v153 = v176;
          if (v153)
          {
            _deviceLockedError = v153;
LABEL_160:

            v38 = 0;
            v166 = createHandler;
            v27 = v167;
            dataCopy = v162;
            goto LABEL_126;
          }

          v154 = v152;

          v167 = v154;
          createHandler = [v154 createHandler];

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
          _deviceLockedError = v175;
          if (!v156)
          {
            goto LABEL_160;
          }

          if (v169 && ([v169 didBeginInstallingNextProfileData:friendlyName8] & 1) == 0)
          {
            userCancelledError = [createHandler userCancelledError];

            _deviceLockedError = userCancelledError;
            goto LABEL_160;
          }

          v150 = createHandler;
        }

        else
        {
          _deviceLockedError = 0;
        }

        v166 = v150;
        friendlyName8 = _deviceLockedError;
        v174 = _deviceLockedError;
        v38 = [(MCInstaller *)self _installProfileHandler:createHandler options:v173 interactionClient:v169 source:v168 outError:&v174];
        _deviceLockedError = v174;
        dataCopy = v162;
        v27 = v167;
        goto LABEL_126;
      }

      v27 = v167;
    }

    goto LABEL_131;
  }

  if (intValue2 == 2)
  {
    v87 = 9;
  }

  else
  {
    v87 = 19;
  }

  v88 = objc_opt_class();
  identifier7 = [v27 identifier];
  friendlyName7 = [(MCInstaller *)self existingProfileContainingPayloadClass:v88 inProfilesWithFilterFlags:v87 excludingProfileIdentifier:identifier7];

  if (!friendlyName7)
  {
    if ([v27 countOfPayloadsOfClass:objc_opt_class()] >= 2)
    {
      v104 = MCInstallationErrorDomain;
      friendlyName9 = [v27 friendlyName];
      v106 = MCErrorArray();
      v107 = [NSError MCErrorWithDomain:v104 code:4028 descriptionArray:v106 errorType:MCErrorTypeFatal, friendlyName9, 0];

      v60 = v107;
    }

    goto LABEL_93;
  }

  v90 = MCInstallationErrorDomain;
  friendlyName2 = [friendlyName7 friendlyName];
  v158 = friendlyName2;
  v65 = MCErrorArray();
  v66 = MCErrorTypeFatal;
  v67 = v90;
  v68 = 4028;
LABEL_74:
  _deviceLockedError = [NSError MCErrorWithDomain:v67 code:v68 descriptionArray:v65 errorType:v66, v158, 0];

  v38 = 0;
LABEL_75:
  createHandler = v166;
LABEL_76:

  selfCopy = v38;
  friendlyName7 = _deviceLockedError;
  sourceCopy = v168;
LABEL_77:

LABEL_78:
  clientCopy = v169;
LABEL_79:

  [v26 commitChanges];
  if (selfCopy)
  {
    MCSendProfileListChangedNotification();
  }

  if (friendlyName7)
  {
    v91 = v26;
    v92 = clientCopy;
    v93 = sourceCopy;
    v94 = dataCopy;
    v95 = MCInstallationErrorDomain;
    v96 = MCErrorArray();
    v97 = [NSError MCErrorWithDomain:v95 code:4001 descriptionArray:v96 underlyingError:friendlyName7 errorType:MCErrorTypeFatal, 0];

    v98 = _MCLogObjects[9];
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      v99 = v98;
      mCVerboseDescription = [v97 MCVerboseDescription];
      *buf = 138543362;
      v191 = mCVerboseDescription;
      _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "Installation failed. Error: %{public}@", buf, 0xCu);
    }

    dataCopy = v94;
    sourceCopy = v93;
    if (error)
    {
      v101 = v97;
      *error = v97;
    }

    v102 = 0;
    clientCopy = v92;
    v26 = v91;
  }

  else
  {
    v102 = selfCopy;
  }

  return v102;
}

- (id)_assumeOwnershipProfileHandler:(id)handler options:(id)options source:(id)source outError:(id *)error
{
  handlerCopy = handler;
  optionsCopy = options;
  sourceCopy = source;
  profile = [handlerCopy profile];
  identifier = [profile identifier];

  v14 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionInstallationType];
  LODWORD(source) = [v14 intValue];

  v58 = +[MCDependencyManager sharedManager];
  sourceCopy2 = source;
  if (source == 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v16 = [(MCInstaller *)self _installedProfileWithIdentifier:identifier installationType:v15];
  v17 = kMCInstallProfileOptionsIsInstalledByDeclarativeManagement;
  v18 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionsIsInstalledByDeclarativeManagement];
  bOOLValue = [v18 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v20 = MCInstallationErrorDomain;
    v21 = MCErrorArray();
    v22 = [NSError MCErrorWithDomain:v20 code:4048 descriptionArray:v21 errorType:MCErrorTypeFatal, 0];
    mCCopyAsPrimaryError = [v22 MCCopyAsPrimaryError];

    if (mCCopyAsPrimaryError)
    {
      goto LABEL_19;
    }
  }

  profile2 = [handlerCopy profile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    profile3 = [handlerCopy profile];
    isMDMProfile = [profile3 isMDMProfile];

    if (isMDMProfile)
    {
      v27 = MCInstallationErrorDomain;
      MCErrorArray();
      v29 = v28 = error;
      v30 = [NSError MCErrorWithDomain:v27 code:4049 descriptionArray:v29 errorType:MCErrorTypeFatal, 0];
      mCCopyAsPrimaryError = [v30 MCCopyAsPrimaryError];

      error = v28;
      if (mCCopyAsPrimaryError)
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
  v44 = v43 = error;
  v45 = [NSError MCErrorWithDomain:v42 code:4050 descriptionArray:v44 errorType:MCErrorTypeFatal, identifier, 0];
  mCCopyAsPrimaryError = [v45 MCCopyAsPrimaryError];

  error = v43;
  if (!mCCopyAsPrimaryError)
  {
LABEL_12:
    if ([v16 isManagedByMDM])
    {
      mCCopyAsPrimaryError = 0;
    }

    else
    {
      v31 = MCInstallationErrorDomain;
      MCErrorArray();
      v33 = v32 = error;
      v34 = [NSError MCErrorWithDomain:v31 code:4051 descriptionArray:v33 errorType:MCErrorTypeFatal, identifier, 0];
      mCCopyAsPrimaryError = [v34 MCCopyAsPrimaryError];

      error = v32;
      if (mCCopyAsPrimaryError)
      {
        goto LABEL_19;
      }
    }

    if (v16)
    {
      installOptions = [v16 installOptions];
      v36 = [installOptions mutableCopy];

      v37 = kMCInstallProfileOptionManagingProfileIdentifier;
      v38 = [v36 objectForKeyedSubscript:kMCInstallProfileOptionManagingProfileIdentifier];
      [v36 setObject:0 forKeyedSubscript:v37];
      v39 = kMCInstallProfileOptionInstalledBy;
      v40 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionInstalledBy];
      [v36 setObject:v40 forKeyedSubscript:v39];

      [v36 setObject:&__kCFBooleanTrue forKeyedSubscript:v17];
      v41 = [optionsCopy objectForKeyedSubscript:@"RemoteManagement.UserInfo"];
      [v36 setObject:v41 forKeyedSubscript:@"RemoteManagement.UserInfo"];

      [v16 setInstallOptions:v36];
      if (sourceCopy2 == 2)
      {
        sub_100046460();
      }

      else
      {
        sub_1000464B0();
      }
      v53 = ;
      v50 = v58;
      v49 = sourceCopy;
      [v16 writeStubToDirectory:v53];

      identifier2 = [v16 identifier];
      [v58 removeDependent:identifier2 fromParent:v38 inDomain:kMCDMManagingProfileToManagedProfileKey reciprocalDomain:kMCDMManagedProfileToManagingProfileKey fromSystem:1 user:1];

      [v58 commitChanges];
      v55 = objc_opt_new();
      [v55 addEventForProfile:v16 operation:@"assume-ownership" source:sourceCopy];

      v52 = identifier;
      mCCopyAsPrimaryError = 0;
      goto LABEL_26;
    }
  }

LABEL_19:
  v46 = _MCLogObjects[9];
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    v47 = v46;
    mCVerboseDescription = [mCCopyAsPrimaryError MCVerboseDescription];
    *buf = 138543362;
    v61 = mCVerboseDescription;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Installation failed. Error: %{public}@", buf, 0xCu);
  }

  v50 = v58;
  v49 = sourceCopy;
  if (error)
  {
    v51 = mCCopyAsPrimaryError;
    v52 = 0;
    *error = mCCopyAsPrimaryError;
  }

  else
  {
    v52 = 0;
  }

LABEL_26:

  return v52;
}

- (BOOL)_allowsPasswordPoliciesFromProfile:(id)profile outError:(id *)error
{
  profileCopy = profile;
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
    v7 = [profileCopy payloadsOfKindOfClass:objc_opt_class()];
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      errorCopy = error;
      v23 = profileCopy;
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
        restrictions = [v14 restrictions];
        v24 = v13;
        v17 = [v15 currentPasscodeCompliesWithPolicyFromRestrictions:restrictions outError:&v24];
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

      v6 = errorCopy;
      if (errorCopy)
      {
        v18 = MCInstallationErrorDomain;
        profileCopy = v23;
        friendlyName = [v23 friendlyName];
        v20 = MCErrorArray();
        *errorCopy = [NSError MCErrorWithDomain:v18 code:4026 descriptionArray:v20 underlyingError:v10 errorType:MCErrorTypeFatal, friendlyName, 0];

        v6 = 0;
        goto LABEL_16;
      }

LABEL_15:
      profileCopy = v23;
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

- (id)_errorUnacceptablePayload:(id)payload
{
  v3 = MCInstallationErrorDomain;
  type = [payload type];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:4022 descriptionArray:v5 errorType:MCErrorTypeFatal, type, 0];

  return v6;
}

- (id)_preflightProfileForInstallationOnHomePod:(id)pod
{
  podCopy = pod;
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
    payloads = [podCopy payloads];
    v9 = [payloads countByEnumeratingWithState:&v20 objects:v28 count:16];
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
            objc_enumerationMutation(payloads);
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
              type = [v13 type];
              *buf = 138543618;
              v25 = v17;
              v26 = 2114;
              v27 = type;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Payload class %{public}@ (%{public}@) is not available on HomePod", buf, 0x16u);
            }

            v6 = [(MCInstaller *)self _errorUnacceptablePayload:v13];
            goto LABEL_17;
          }
        }

        v10 = [payloads countByEnumeratingWithState:&v20 objects:v28 count:16];
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

- (id)_preflightProfileForInstallationOnWatch:(id)watch
{
  watchCopy = watch;
  if ([(MCInstaller *)self _overrideProfileValidation])
  {
    v5 = _MCLogObjects[9];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Overriding profile validation for Watch", buf, 2u);
    }

    selfCopy = 0;
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
    payloads = [watchCopy payloads];
    v9 = [payloads countByEnumeratingWithState:&v29 objects:v40 count:16];
    if (v9)
    {
      v10 = v9;
      selfCopy = self;
      v11 = *v30;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(payloads);
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
            type = [v13 type];
            *buf = 138543618;
            v35 = v19;
            v36 = 2114;
            v37 = type;
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
              type = [v13 type];
              v24 = [v7 description];
              *buf = 138543874;
              v35 = v19;
              v36 = 2114;
              v37 = type;
              v38 = 2114;
              v39 = v24;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Payload class %{public}@ (%{public}@) is not supported on any Watch version: %{public}@", buf, 0x20u);

              goto LABEL_28;
            }

LABEL_29:
            selfCopy = [(MCInstaller *)selfCopy _errorUnacceptablePayload:v13, selfCopy];
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
              type = [v13 type];
              *buf = 138543618;
              v35 = v19;
              v36 = 2114;
              v37 = type;
              v21 = "Payload class %{public}@ (%{public}@) requires a cellular-capable Watch";
LABEL_27:
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v21, buf, 0x16u);
LABEL_28:

              goto LABEL_29;
            }
          }
        }

        v10 = [payloads countByEnumeratingWithState:&v29 objects:v40 count:16];
        selfCopy = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      selfCopy = 0;
    }

LABEL_30:
  }

  return selfCopy;
}

- (id)_watchInformationOutIsCellularSupported:(BOOL *)supported
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
    supportedCopy = supported;
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
            *supportedCopy = 1;
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

- (id)_profileNotEligibleErrorWithProfile:(id)profile
{
  v3 = MCInstallationErrorDomain;
  friendlyName = [profile friendlyName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:4012 descriptionArray:v5 errorType:MCErrorTypeFatal, friendlyName, 0];

  return v6;
}

- (id)updateProfileWithIdentifier:(id)identifier interactionClient:(id)client installForSystem:(BOOL)system source:(id)source outError:(id *)error
{
  identifierCopy = identifier;
  clientCopy = client;
  sourceCopy = source;
  v12 = +[MCDependencyManager sharedManager];
  v13 = +[MCManifest sharedManifest];
  allInstalledUserProfileIdentifiers = [v13 allInstalledUserProfileIdentifiers];

  v15 = [allInstalledUserProfileIdentifiers containsObject:identifierCopy];
  if (v15)
  {
    MCUserProfileStorageDirectory();
  }

  else
  {
    MCSystemProfileStorageDirectory();
  }
  v16 = ;
  v17 = [identifierCopy MCHashedFilenameWithExtension:@"stub"];
  friendlyName = [v16 stringByAppendingPathComponent:v17];

  v19 = [NSData dataWithContentsOfFile:friendlyName];
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
    _deviceLockedError = v21;
    v25 = 0;
    goto LABEL_11;
  }

  oTAProfile = [v20 OTAProfile];
  if (oTAProfile)
  {
    v54 = clientCopy;
    v22 = +[MCPasscodeManagerWriter sharedManager];
    isDeviceLocked = [v22 isDeviceLocked];

    if (isDeviceLocked)
    {
      _deviceLockedError = [(MCInstaller *)self _deviceLockedError];
      v25 = 0;
      clientCopy = v54;
    }

    else
    {
      v33 = MCLocalizedString();
      [v54 setDefaultStatus:v33];

      clientCopy = v54;
      v59 = 0;
      v60 = 0;
      createHandler = [oTAProfile createHandler];
      v53 = [createHandler fetchFinalProfileWithClient:v54 outProfileData:&v60 outError:&v59];
      v52 = v60;
      v34 = v59;
      if (v34)
      {
        _deviceLockedError = v34;
        v25 = 0;
      }

      else
      {
        identifier = [v53 identifier];
        identifier2 = [v20 identifier];
        v49 = [identifier isEqualToString:identifier2];

        if (v49)
        {
          createHandler2 = [v53 createHandler];
          if (createHandler2)
          {
            clientCopy = v54;
            if (v54 && ([v54 didBeginInstallingNextProfileData:v52] & 1) == 0)
            {
              v42 = createHandler2;
              _deviceLockedError = [createHandler2 userCancelledError];
              v25 = 0;
            }

            else
            {
              v37 = +[NSMutableDictionary dictionary];
              identifier3 = [v20 identifier];
              selfCopy = self;
              v39 = [(MCInstaller *)self _managingProfileIdentifierForProfileIdentifier:identifier3];

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
              v42 = createHandler2;
              clientCopy = v54;
              v25 = [(MCInstaller *)selfCopy _installProfileHandler:createHandler2 options:v37 interactionClient:v54 source:sourceCopy outError:&v58];
              v47 = v37;
              _deviceLockedError = v58;
            }
          }

          else
          {
            _deviceLockedError = [(MCInstaller *)self _malformedPayloadErrorInternal:0];
            v25 = 0;
            clientCopy = v54;
            v42 = 0;
          }
        }

        else
        {
          v43 = MCInstallationErrorDomain;
          v42 = MCErrorArray();
          _deviceLockedError = [NSError MCErrorWithDomain:v43 code:4010 descriptionArray:v42 errorType:MCErrorTypeFatal, 0];
          v25 = 0;
          clientCopy = v54;
        }
      }
    }
  }

  else
  {
    _deviceLockedError = [(MCInstaller *)self _profileNotEligibleErrorWithProfile:v20];
    v25 = 0;
  }

LABEL_11:
  [v12 commitChanges];
  if (v25)
  {
    MCSendProfileListChangedNotification();
  }

  if (_deviceLockedError)
  {
    v26 = MCInstallationErrorDomain;
    if (v20)
    {
      friendlyName = [v20 friendlyName];
      v44 = friendlyName;
      v45 = 0;
    }

    else
    {
      v44 = 0;
    }

    v27 = MCErrorArray();
    v29 = [NSError MCErrorWithDomain:v26 code:4013 descriptionArray:v27 underlyingError:_deviceLockedError errorType:MCErrorTypeFatal, v44, v45];
    if (v20)
    {

      v27 = friendlyName;
    }

    v30 = _MCLogObjects[9];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v63 = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Profile update failed: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      v31 = v29;
      *error = v29;
    }

    v28 = 0;
  }

  else
  {
    v28 = v25;
  }

  return v28;
}

- (BOOL)interactionClient:(id)client didRequestPreflightUserInputResponses:(id)responses forPayloadIndex:(unint64_t)index outError:(id *)error
{
  responsesCopy = responses;
  if ([responsesCopy count])
  {
    v9 = [responsesCopy objectAtIndex:0];
    v10 = [v9 objectForKey:kMCIDResponseKey];
    if (v10)
    {
      currentlyInstallingRestrictions = self->_currentlyInstallingRestrictions;
      v20 = 0;
      v12 = [MCPasscodeManagerWriter passcode:v10 compliesWithPolicyFromRestrictions:currentlyInstallingRestrictions checkHistory:1 outError:&v20];
      v13 = v20;
      v14 = v13;
      if (error)
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
          userInfo = [v13 userInfo];
          v17 = [userInfo mutableCopy];

          [v17 setObject:MCErrorTypeNeedsRetry forKey:MCErrorTypeKey];
          domain = [v14 domain];
          *error = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [v14 code], v17);
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

- (void)_removeOrphanedResourcesOptions:(id)options includingAccounts:(BOOL)accounts
{
  accountsCopy = accounts;
  optionsCopy = options;
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
    effectiveUserSettings = [v20 effectiveUserSettings];
    [v19 recomputeHacksAfterProfileChangesEffectiveUserSettings:effectiveUserSettings sendNotifications:1];
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
    v38 = [optionsCopy objectForKeyedSubscript:kMDMPersonaKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [optionsCopy objectForKeyedSubscript:v37];
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
          path = [v63 path];
          v66 = [v64 fileExistsAtPath:path];

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

  if (accountsCopy)
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

- (void)_removeOrphanedCertificateDependencyManager:(id)manager persistentID:(id)d persona:(id)persona
{
  managerCopy = manager;
  dCopy = d;
  personaCopy = persona;
  v11 = [managerCopy dependentsOfParent:dCopy inDomain:kMCDMCertificateToHostIdentifierDependencyKey];
  v12 = [v11 count];

  if (!v12)
  {
    v13 = [(MCInstaller *)self isCertificateReference:dCopy aliasedInDependencyManager:managerCopy];
    v14 = _MCLogObjects[9];
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        *buf = 138543362;
        v23 = dCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping aliased certificate with persistent ID %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (v15)
      {
        *buf = 138543362;
        v23 = dCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removing certificate with persistent ID %{public}@", buf, 0xCu);
      }

      v16 = [NSData MCDataWithHexString:dCopy];
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

      if ([personaCopy length])
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1000513B4;
        v20[3] = &unk_10011B688;
        v21 = v16;
        v19 = [DMCPersonaHelper performBlockUnderPersona:personaCopy block:v20];
      }

      else
      {
        [MCKeychain removeItemWithPersistentID:v16 useSystemKeychain:1];
      }
    }
  }
}

- (id)_managingProfileIdentifierForProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[MCDependencyManager sharedManager];
  v5 = [v4 dependentsOfParent:identifierCopy inDomain:kMCDMManagedProfileToManagingProfileKey];

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

- (id)_reallyRemoveInstalledProfileWithIdentifier:(id)identifier installationType:(int64_t)type options:(id)options source:(id)source
{
  sourceCopy = source;
  optionsCopy = options;
  identifierCopy = identifier;
  sourceCopy = [(MCInstaller *)self _reallyRemoveProfileWithIdentifier:identifierCopy installationType:type profileInstalled:1 targetDeviceType:+[MCProfile options:"thisDeviceType"]source:optionsCopy, sourceCopy];

  return sourceCopy;
}

- (id)_reallyRemoveProfileWithIdentifier:(id)identifier installationType:(int64_t)type profileInstalled:(BOOL)installed targetDeviceType:(unint64_t)deviceType options:(id)options source:(id)source
{
  installedCopy = installed;
  identifierCopy = identifier;
  optionsCopy = options;
  sourceCopy = source;
  if (!identifierCopy)
  {
    v30 = _MCLogObjects[5];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Profile identifier is nil.", buf, 2u);
    }

    goto LABEL_21;
  }

  if (installedCopy)
  {
    v17 = [(MCInstaller *)self pathToInstalledProfileByIdentifier:identifierCopy installationType:type];
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

        mCDeepCopy = 0;
        v56 = 0;
        v28 = 0;
        v29 = 0;
        v57 = 1;
LABEL_30:

        [(MCInstaller *)self _cleanUpAfterRemovingProfileWithIdentifier:identifierCopy installedForUser:type == 2 profileHandler:v29 oldRestrictions:mCDeepCopy];
        if (v28)
        {
          v44 = _MCLogObjects[9];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = v44;
            profile = [v29 profile];
            identifier = [profile identifier];
            *buf = 138543362;
            v61 = identifier;
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
        if (type == 2)
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
          mCVerboseDescription = [v22 MCVerboseDescription];
          *buf = 138543362;
          v61 = mCVerboseDescription;
          v26 = "Cannot parse profile to uninstall. Error: %{public}@";
LABEL_8:
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v26, buf, 0xCu);
        }
      }

      else
      {
        createHandler = [v20 createHandler];
        if (createHandler)
        {
          v29 = createHandler;
          v53 = v19;
          v37 = +[MCRestrictionManager sharedManager];
          currentRestrictions = [v37 currentRestrictions];
          mCDeepCopy = [currentRestrictions MCDeepCopy];

          v39 = _MCLogObjects[5];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = v39;
            profile2 = [v29 profile];
            identifier2 = [profile2 identifier];
            *buf = 138543618;
            v61 = identifier2;
            v62 = 2114;
            v63 = sourceCopy;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Removing profile “%{public}@” on behalf of “%{public}@”...", buf, 0x16u);
          }

          [v29 removeWithInstaller:self options:optionsCopy];
          v42 = objc_opt_new();
          profile3 = [v29 profile];
          [v42 addEventForProfile:profile3 operation:@"remove" source:sourceCopy];

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
          mCVerboseDescription = [v20 friendlyName];
          *buf = 138543362;
          v61 = mCVerboseDescription;
          v26 = "Cannot create handler for profile ‚“%{public}@”.";
          goto LABEL_8;
        }
      }

      mCDeepCopy = 0;
      v56 = 0;
      v28 = 0;
      v29 = 0;
      v57 = 1;
LABEL_29:

      goto LABEL_30;
    }

    goto LABEL_16;
  }

  v31 = [(MCInstaller *)self pathToUninstalledProfileByIdentifier:identifierCopy installationType:type targetDeviceType:deviceType];
  if (!v31)
  {
LABEL_16:
    v32 = _MCLogObjects[5];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v61 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Profile “%{public}@” is not installed. Ignoring.", buf, 0xCu);
    }

    if (installedCopy)
    {
      [(MCInstaller *)self _cleanUpAfterRemovingProfileWithIdentifier:identifierCopy installedForUser:type == 2 profileHandler:0 oldRestrictions:0];
      v29 = 0;
      v18 = 0;
      mCDeepCopy = 0;
      v33 = 1;
      if (type == 2)
      {
LABEL_39:
        v34 = +[MCManifest sharedManifest];
        [v34 removeIdentifierFromUserManifest:identifierCopy flag:3];
LABEL_40:

        if ((v33 & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_41;
      }

LABEL_20:
      v34 = +[MCManifest sharedManifest];
      [v34 removeIdentifierFromSystemManifest:identifierCopy flag:3];
      goto LABEL_40;
    }

LABEL_21:
    mCDeepCopy = 0;
    v18 = 0;
    v29 = 0;
LABEL_41:
    v49 = _MCLogObjects[5];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v61 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Removed profile “%{public}@” from manifest anyway", buf, 0xCu);
    }

    goto LABEL_43;
  }

  v18 = v31;
  if ([MCTargetDeviceResolver purgatorySupportedForDevice:deviceType])
  {
    [(MCInstaller *)self purgePurgatoryProfileWithIdentifier:identifierCopy targetDevice:deviceType];
  }

  mCDeepCopy = 0;
  v29 = 0;
LABEL_43:
  profile4 = [v29 profile];

  return profile4;
}

- (void)_cleanUpAfterRemovingProfileWithIdentifier:(id)identifier installedForUser:(BOOL)user profileHandler:(id)handler oldRestrictions:(id)restrictions
{
  userCopy = user;
  identifierCopy = identifier;
  handlerCopy = handler;
  restrictionsCopy = restrictions;
  v11 = +[MCRestrictionManagerWriter sharedManager];
  v12 = +[MCDependencyManager sharedManager];
  if (restrictionsCopy)
  {
    mCDeepCopy = restrictionsCopy;
  }

  else
  {
    currentRestrictions = [v11 currentRestrictions];
    mCDeepCopy = [currentRestrictions MCDeepCopy];
  }

  systemProfileRestrictions = [v11 systemProfileRestrictions];
  mCMutableDeepCopy = [systemProfileRestrictions MCMutableDeepCopy];

  userProfileRestrictions = [v11 userProfileRestrictions];
  mCMutableDeepCopy2 = [userProfileRestrictions MCMutableDeepCopy];

  if (userCopy)
  {
    v19 = mCMutableDeepCopy2;
  }

  else
  {
    v19 = mCMutableDeepCopy;
  }

  [v19 removeObjectForKey:identifierCopy];
  profile = [handlerCopy profile];
  loggingID = [profile loggingID];
  v44 = mCMutableDeepCopy2;
  [v11 setSystemProfileRestrictions:mCMutableDeepCopy userProfileRestrictions:mCMutableDeepCopy2 sender:loggingID outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outAppWhitelistSettingsChanged:0 outRecomputedNag:0 outError:0];

  currentRestrictions2 = [v11 currentRestrictions];
  [handlerCopy didRemoveOldGlobalRestrictions:mCDeepCopy newGlobalRestrictions:currentRestrictions2];

  v23 = kMCDMManagingProfileToManagedProfileKey;
  v24 = [v12 dependentsOfParent:identifierCopy inDomain:kMCDMManagingProfileToManagedProfileKey];
  v25 = kMCDMManagingProfileToProvisioningProfileKey;
  v47 = [v12 dependentsOfParent:identifierCopy inDomain:kMCDMManagingProfileToProvisioningProfileKey];
  if ([v24 count] || objc_msgSend(v47, "count"))
  {
    v40 = mCMutableDeepCopy;
    v41 = mCDeepCopy;
    v43 = restrictionsCopy;
    v46 = handlerCopy;
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

          [v12 removeDependent:*(*(&v52 + 1) + 8 * i) fromParent:identifierCopy inDomain:v23 reciprocalDomain:v30 fromSystem:1 user:1];
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
    mCMutableDeepCopy = v40;
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

          [v12 removeDependent:*(*(&v48 + 1) + 8 * j) fromParent:identifierCopy inDomain:v25 reciprocalDomain:v36 fromSystem:1 user:1];
        }

        v34 = [v32 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v34);
    }

    handlerCopy = v46;
    mCDeepCopy = v41;
    restrictionsCopy = v43;
    v24 = v39;
  }

  else
  {
    v38 = [(MCInstaller *)self _managingProfileIdentifierForProfileIdentifier:identifierCopy];
    if (v38)
    {
      [v12 removeDependent:identifierCopy fromParent:v38 inDomain:v23 reciprocalDomain:kMCDMManagedProfileToManagingProfileKey fromSystem:!userCopy user:?];
    }
  }
}

- (void)removeProfileWithIdentifier:(id)identifier installationType:(int64_t)type options:(id)options source:(id)source
{
  sourceCopy = source;
  optionsCopy = options;
  identifierCopy = identifier;
  v25 = +[MCDependencyManager sharedManager];
  [v25 commitChanges];
  v13 = +[MCRestrictionManager sharedManager];
  currentRestrictions = [v13 currentRestrictions];
  mCDeepCopy = [currentRestrictions MCDeepCopy];

  v16 = [(MCInstaller *)self _reallyRemoveInstalledProfileWithIdentifier:identifierCopy installationType:type options:optionsCopy source:sourceCopy];

  v17 = +[MCPayload accountPayloads];
  v18 = [v17 setByAddingObject:objc_opt_class()];

  -[MCInstaller _removeOrphanedResourcesOptions:includingAccounts:](self, "_removeOrphanedResourcesOptions:includingAccounts:", optionsCopy, [v16 containsAnyPayloadOfClasses:v18]);
  v19 = +[MCServerSideHacks sharedHacks];
  v20 = +[MCRestrictionManager sharedManager];
  effectiveUserSettings = [v20 effectiveUserSettings];
  [v19 recomputeHacksAfterProfileChangesEffectiveUserSettings:effectiveUserSettings sendNotifications:1];

  recomputeAccountVPNAssociations = [v19 recomputeAccountVPNAssociations];
  LODWORD(v20) = [MCRestrictionManager isWebContentFilterUIActiveWithRestrictionDictionary:mCDeepCopy];
  v23 = +[MCRestrictionManager sharedManager];
  currentRestrictions2 = [v23 currentRestrictions];
  LODWORD(effectiveUserSettings) = [MCRestrictionManager isWebContentFilterUIActiveWithRestrictionDictionary:currentRestrictions2];

  if (v20 != effectiveUserSettings)
  {
    MCSendWebContentFilterUIActiveChangedNotification();
  }

  [v25 commitChanges];
  MCSendProfileListChangedNotification();
}

- (void)removeUninstalledProfileWithIdentifier:(id)identifier installationType:(int64_t)type targetDeviceType:(unint64_t)deviceType
{
  identifierCopy = identifier;
  v8 = +[MCHoldingTankManifest sharedManifest];
  v9 = [v8 uninstalledProfileDataWithIdentifier:identifierCopy targetDevice:deviceType];

  v10 = [MCProfile profileWithData:v9 outError:0];
  sub_1000826D8(v10);
  v11 = [(MCInstaller *)self _reallyRemoveProfileWithIdentifier:identifierCopy installationType:type profileInstalled:0 targetDeviceType:deviceType options:0 source:@"Uninstalled Profile Removal"];
  MCSendProfileListChangedNotification();
}

- (void)removeManagedProfilesIfNecessary
{
  v3 = +[MCDependencyManager sharedManager];
  v4 = [v3 parentsInDomain:kMCDMManagingProfileToManagedProfileKey];
  firstObject = [v4 firstObject];

  v5 = firstObject;
  if (firstObject)
  {
    v6 = +[MCManifest sharedManifest];
    v7 = [v6 installedSystemProfileWithIdentifier:firstObject];

    if (!v7)
    {
      [(MCInstaller *)self removeProfileWithIdentifier:firstObject installationType:1 source:@"Managed Profile Removal"];
    }

    v5 = firstObject;
  }
}

- (id)removeProvisioningProfileUUID:(id)d sender:(id)sender
{
  dCopy = d;
  senderCopy = sender;
  v7 = _MCLogObjects[2];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = dCopy;
    v13 = 2114;
    v14 = senderCopy;
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
    managingProfileIdentifier = [v20 managingProfileIdentifier];

    if (managingProfileIdentifier)
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

  selfCopy = self;
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
      selfCopy = [MCManifest installedProfileWithIdentifier:v9, selfCopy];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      payloads = [selfCopy payloads];
      v12 = [payloads countByEnumeratingWithState:&v32 objects:v41 count:16];
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
              objc_enumerationMutation(payloads);
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

          v13 = [payloads countByEnumeratingWithState:&v32 objects:v41 count:16];
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

  self = selfCopy;
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

- (void)recomputeProfileRestrictionsWithCompletionBlock:(id)block
{
  blockCopy = block;
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
  allInstalledProfileIdentifiers = [v5 allInstalledProfileIdentifiers];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = allInstalledProfileIdentifiers;
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
  allInstalledUserProfileIdentifiers = [v15 allInstalledUserProfileIdentifiers];

  v64 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v51 = allInstalledUserProfileIdentifiers;
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
              mCVerboseDescription = [v34 MCVerboseDescription];
              *buf = 138543618;
              v70 = v30;
              v71 = 2114;
              v72 = mCVerboseDescription;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Error parsing stub for profile ID %{public}@. Error:%{public}@", buf, 0x16u);
            }
          }

          else
          {
            v55 = 0;
            v39 = [v33 restrictionsWithHeuristicsAppliedOutError:&v55];
            v34 = v55;
            identifier = [v33 identifier];
            if (v39)
            {
              [v50 setObject:v39 forKey:identifier];
            }

            else
            {
              [v50 removeObjectForKey:identifier];
            }

            appAccessibilityParameters = [v33 appAccessibilityParameters];
            if (appAccessibilityParameters)
            {
              [v49 addEntriesFromDictionary:appAccessibilityParameters];
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
  effectiveUserSettings = [v43 effectiveUserSettings];
  [v45 recomputeHacksAfterProfileChangesEffectiveUserSettings:effectiveUserSettings sendNotifications:1];

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v44);
  }
}

+ (void)_setPathsSystemProfileStorageDirectory:(id)directory userProfileStorageDirectory:(id)storageDirectory
{
  directoryCopy = directory;
  storageDirectoryCopy = storageDirectory;
  v7 = qword_100136B50;
  qword_100136B50 = directoryCopy;
  v9 = directoryCopy;

  v8 = qword_100136B58;
  qword_100136B58 = storageDirectoryCopy;
}

+ (id)_installationFailureErrorWithUnderlyingError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:ACErrorDomain])
  {
    [errorCopy code];
  }

  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:MCInstallationErrorDomain code:4001 descriptionArray:v5 underlyingError:errorCopy errorType:MCErrorTypeFatal, 0];

  return v6;
}

- (id)_installedProfileWithIdentifier:(id)identifier installationType:(int64_t)type
{
  identifierCopy = identifier;
  v6 = +[MCManifest sharedManifest];
  v7 = v6;
  if (type == 2)
  {
    v8 = [v6 identifiersOfProfilesWithFilterFlags:9];

    if ([v8 containsObject:identifierCopy])
    {
      v9 = sub_100046460();
LABEL_6:
      v10 = v9;
      v11 = [identifierCopy MCHashedFilenameWithExtension:@"stub"];
      v12 = [v10 stringByAppendingPathComponent:v11];

      goto LABEL_8;
    }
  }

  else
  {
    v8 = [v6 identifiersOfProfilesWithFilterFlags:19];

    if ([v8 containsObject:identifierCopy])
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

- (void)_sendMDMEnrollmentEventWithInstallationOptions:(id)options
{
  optionsCopy = options;
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
  enrollmentMode = [v4 enrollmentMode];
  if (([enrollmentMode isEqualToString:kMDMEnrollmentModeBYOD] & 1) == 0)
  {
    enrollmentMode2 = [v4 enrollmentMode];
    [enrollmentMode2 isEqualToString:kMDMEnrollmentModeADDE];
  }

  v7 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionInstallationSource];
  [v7 isEqualToString:kDMCProfileInstallationSourceReturnToService];

  v8 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsESSOEnrollment];

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
    isSupervised = [v2 isSupervised];
  }

  else
  {
    isSupervised = 0;
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
  if (isSupervised && [v6 length])
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

- (BOOL)sendPurgatoryProfileData:(id)data identifier:(id)identifier targetDevice:(unint64_t)device outError:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  [(MCInstaller *)self _replacePurgatoryProfilesForTargetDevice:device];
  v12 = +[MCHoldingTankManifest sharedManifest];
  v18 = 0;
  v13 = [v12 addPurgatoryProfileData:dataCopy identifier:identifierCopy targetDevice:device outError:&v18];

  v14 = v18;
  if (v13)
  {
    [(MCInstaller *)self _postPurgatoryFollowUpForProfileData:dataCopy targetDevice:device];
    MCSendProfileListChangedNotification();
  }

  else if (error)
  {
    v15 = MCInstallationErrorDomain;
    v16 = MCErrorArray();
    *error = [NSError MCErrorWithDomain:v15 code:4043 descriptionArray:v16 underlyingError:v14 errorType:MCErrorTypeFatal, 0];
  }

  return v13;
}

- (void)_postPurgatoryFollowUpForProfileData:(id)data targetDevice:(unint64_t)device
{
  v47 = 0;
  v6 = [MCProfile profileWithData:data outError:&v47];
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
    followUpController = [(MCInstaller *)self followUpController];
    v46 = 0;
    v11 = [followUpController clearPendingFollowUpItems:&v46];
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
      organization = [v6 organization];
      v16 = MCLocalizedFormat();

      identifier = [NSURL URLWithString:kMCSettingsURLOnsiteProfileInstallation, organization];
      [v14 setUrl:identifier];
    }

    else
    {
      MCLocalizedString();
      selfCopy = self;
      v19 = v41 = v14;
      v20 = kMDMSettingsURLDownloadedProfile;
      v21 = v15;
      v22 = v12;
      deviceCopy = device;
      v24 = kMDMSettingsURLResourceID;
      identifier = [v6 identifier];
      v40 = v24;
      device = deviceCopy;
      v12 = v22;
      v15 = v21;
      v39 = v20;
      v16 = v19;
      v14 = v41;
      self = selfCopy;
      v25 = [NSString stringWithFormat:@"%@?%@=%@", v39, v40, identifier];
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
    followUpController2 = [(MCInstaller *)self followUpController];
    v45 = v12;
    v30 = [followUpController2 postFollowUpItem:v15 error:&v45];
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

    purgatoryTimer = [(MCInstaller *)self purgatoryTimer];
    [purgatoryTimer invalidate];

    v33 = [NSTimer alloc];
    v34 = [NSDate dateWithTimeIntervalSinceNow:480.0];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000542AC;
    v42[3] = &unk_10011C7C8;
    v42[4] = self;
    v43 = v6;
    deviceCopy2 = device;
    v35 = [v33 initWithFireDate:v34 interval:0 repeats:v42 block:0.0];
    [(MCInstaller *)self setPurgatoryTimer:v35];

    v36 = +[NSRunLoop mainRunLoop];
    purgatoryTimer2 = [(MCInstaller *)self purgatoryTimer];
    [v36 addTimer:purgatoryTimer2 forMode:NSRunLoopCommonModes];
  }
}

- (void)_replacePurgatoryProfilesForTargetDevice:(unint64_t)device
{
  v4 = +[MCHoldingTankManifest sharedManifest];
  v5 = [v4 uninstalledProfileIdentifiersForDevice:device];
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
        v11 = [v4 uninstalledProfileDataWithIdentifier:v10 targetDevice:device];
        v12 = [MCProfile profileWithData:v11 outError:0];
        v13 = v12;
        if (v12)
        {
          sub_1000826D8(v12);
        }

        [v4 removeProfileDataWithIdentifier:v10 fromHoldingTankForDevice:device];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)purgePurgatoryProfilesForTargetDevice:(unint64_t)device
{
  v4 = _MCLogObjects[9];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Purging purgatory profiles", buf, 2u);
  }

  v5 = +[MCHoldingTankManifest sharedManifest];
  v6 = [v5 uninstalledProfileIdentifiersForDevice:device];
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

        [v5 removeProfileDataWithIdentifier:v11 fromHoldingTankForDevice:device];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }

  -[MCInstaller _purgatoryWorkerQueue_didPurgePurgatory:](self, "_purgatoryWorkerQueue_didPurgePurgatory:", [v6 count] != 0);
}

- (void)purgePurgatoryProfileWithIdentifier:(id)identifier targetDevice:(unint64_t)device
{
  identifierCopy = identifier;
  v7 = +[MCHoldingTankManifest sharedManifest];
  v8 = [v7 uninstalledProfileIdentifiersForDevice:device];
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
        if ([v13 isEqualToString:identifierCopy])
        {
          [v7 removeProfileDataWithIdentifier:v13 fromHoldingTankForDevice:device];
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

- (void)_purgatoryWorkerQueue_didPurgePurgatory:(BOOL)purgatory
{
  purgatoryCopy = purgatory;
  purgatoryTimer = [(MCInstaller *)self purgatoryTimer];
  [purgatoryTimer invalidate];

  [(MCInstaller *)self setPurgatoryTimer:0];
  v6 = _MCLogObjects[9];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (purgatoryCopy)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Profile purgatory clearing pending follow up items...", buf, 2u);
    }

    followUpController = [(MCInstaller *)self followUpController];
    v12 = 0;
    v9 = [followUpController clearPendingFollowUpItems:&v12];
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

- (id)peekPurgatoryProfileDataForTargetDevice:(unint64_t)device
{
  v4 = +[MCHoldingTankManifest sharedManifest];
  v5 = [v4 uninstalledProfileIdentifiersForDevice:device];
  if ([v5 count])
  {
    firstObject = [v5 firstObject];
    v7 = [v4 uninstalledProfileDataWithIdentifier:firstObject targetDevice:device];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCertificateReference:(id)reference aliasedInDependencyManager:(id)manager
{
  managerCopy = manager;
  v6 = [NSData MCDataWithHexString:reference];
  v7 = [MCKeychain canonicalPersistentReferenceForItemWithPersistentReference:v6 inSystemKeychain:1];
  v8 = [managerCopy parentsInDomain:kMCDMCertificateToPayloadUUIDDependencyKey];
  v9 = [NSSet setWithArray:v8];

  mCHexString = [v7 MCHexString];
  if ([v9 containsObject:mCHexString])
  {
    v11 = _MCLogObjects[9];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      mCHexString2 = [v6 MCHexString];
      mCHexString3 = [v7 MCHexString];
      *buf = 138543618;
      v36 = mCHexString2;
      v37 = 2114;
      v38 = mCHexString3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Certificate ID %{public}@ is aliased to canonical ID %{public}@, which is still referenced.", buf, 0x16u);
    }

    v15 = 1;
  }

  else
  {
    v28 = mCHexString;
    v29 = managerCopy;
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
              mCHexString4 = [v6 MCHexString];
              mCHexString5 = [v7 MCHexString];
              *buf = 138543618;
              v36 = mCHexString4;
              v37 = 2114;
              v38 = mCHexString5;
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
    mCHexString = v28;
    managerCopy = v29;
  }

  return v15;
}

@end