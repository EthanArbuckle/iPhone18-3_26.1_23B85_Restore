@interface MCProfileServicer
- (BOOL)isCloudLockedProfileWithIdentifier:(id)identifier;
- (BOOL)remoteProcessHasBooleanEntitlement:(id)entitlement;
- (BOOL)remoteProcessHasBooleanEntitlement:(id)entitlement error:(id *)error;
- (BOOL)remoteProcessHasEntitlementArray:(id)array containingString:(id)string;
- (BOOL)remoteProcessHasEntitlementArray:(id)array containingString:(id)string error:(id *)error;
- (NSXPCConnection)xpcConnection;
- (id)_invalidValue:(id)value forArgument:(id)argument;
- (id)_missingWatchMDMEnrollmentEntitlementError;
- (id)lacksArrayEntitlementError:(id)error withMemberString:(id)string;
- (id)lacksBooleanEntitlementError:(id)error;
- (id)prefixedFeaturePromptIdentifierForIdentifier:(id)identifier;
- (id)remoteProcessBundleID;
- (id)remoteProcessEntitlementStringArrayForKey:(id)key;
- (void)_debug_scheduleBackgroundTask:(id)task interval:(double)interval tolerance:(double)tolerance completion:(id)completion;
- (void)applyPairingWatchMDMEnrollmentData:(id)data completion:(id)completion;
- (void)applyRestrictionDictionary:(id)dictionary toSystem:(BOOL)system overrideRestrictions:(BOOL)restrictions appsAndOptions:(id)options clientType:(id)type clientUUID:(id)d localizedClientDescription:(id)description localizedWarningMessage:(id)self0 completion:(id)self1;
- (void)areBundlesBlocked:(id)blocked completion:(id)completion;
- (void)cancelFeaturePromptWithIdentifier:(id)identifier completion:(id)completion;
- (void)checkInWithCompletion:(id)completion;
- (void)clearPasscodeWithEscrowKeybagData:(id)data secret:(id)secret completion:(id)completion;
- (void)clearPasscodeWithEscrowKeybagData:(id)data secretContext:(id)context completion:(id)completion;
- (void)clearRecoveryPasscodeWithCompletion:(id)completion;
- (void)cloudConfigurationMachineInfoDataWithAdditionalInfo:(id)info completion:(id)completion;
- (void)cloudConfigurationStoreDetails:(id)details completion:(id)completion;
- (void)cloudConfigurationStoreDetailsForPendingMigration:(id)migration completion:(id)completion;
- (void)createActivationLockBypassCodeWithCompletion:(id)completion;
- (void)createMDMUnlockTokenIfNeededWithPasscode:(id)passcode completion:(id)completion;
- (void)createMDMUnlockTokenIfNeededWithPasscodeContext:(id)context completion:(id)completion;
- (void)defaultAppBundleIDForCommunicationServiceType:(id)type forAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)effectiveBoolValueForWatchSetting:(id)setting pairingID:(id)d pairingDataStore:(id)store completion:(id)completion;
- (void)effectiveValueForWatchSetting:(id)setting pairingID:(id)d pairingDataStore:(id)store completion:(id)completion;
- (void)effectiveValuesForWatchIntersectionSetting:(id)setting pairingID:(id)d pairingDataStore:(id)store completion:(id)completion;
- (void)effectiveValuesForWatchUnionSetting:(id)setting pairingID:(id)d pairingDataStore:(id)store completion:(id)completion;
- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion:(id)completion;
- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:(id)token completion:(id)completion;
- (void)fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion:(id)completion;
- (void)installProfileData:(id)data interactive:(BOOL)interactive options:(id)options completion:(id)completion;
- (void)installProvisioningProfileData:(id)data managingProfileIdentifier:(id)identifier completion:(id)completion;
- (void)isBundleBlocked:(id)blocked completion:(id)completion;
- (void)isPasscodeCompliantWithNamedPolicy:(id)policy completion:(id)completion;
- (void)isProfileInstalledWithIdentifier:(id)identifier completion:(id)completion;
- (void)managedSystemConfigurationServiceIDsWithCompletion:(id)completion;
- (void)managedWiFiNetworkNamesWithCompletion:(id)completion;
- (void)managingOrganizationInformationWithCompletion:(id)completion;
- (void)markStoredProfileAsInstalledWithCompletion:(id)completion;
- (void)monitorEnrollmentStateWithPersonaID:(id)d;
- (void)notifyDeviceUnlockedAndPasscodeRequiredWithCompletion:(id)completion;
- (void)notifyDeviceUnlockedWithCompletion:(id)completion;
- (void)notifyHaveSeenComplianceMessageWithLastLockDate:(id)date completion:(id)completion;
- (void)notifyStartComplianceTimer:(id)timer completion:(id)completion;
- (void)peekProfileDataFromPurgatoryForDeviceType:(unint64_t)type withCompletion:(id)completion;
- (void)popProfileDataFromHeadOfInstallationQueueWithCompletion:(id)completion;
- (void)provisiongProfileUUIDsForSignerIdentity:(id)identity completion:(id)completion;
- (void)recomputePerClientUserComplianceWithCompletion:(id)completion;
- (void)recomputeProfileRestrictionsWithCompletionBlock:(id)block;
- (void)recomputeUserComplianceWarningWithCompletion:(id)completion;
- (void)reducedMachineInfoDataWithCompletion:(id)completion;
- (void)removeBoolSetting:(id)setting completion:(id)completion;
- (void)removeExpiredProfilesWithCompletion:(id)completion;
- (void)removeOrphanedClientRestrictionsWithCompletion:(id)completion;
- (void)removePostSetupAutoInstallSetAsideProfileWithCompletion:(id)completion;
- (void)removeProfileWithIdentifier:(id)identifier installationType:(int64_t)type completion:(id)completion;
- (void)removeProtectedProfileWithIdentifier:(id)identifier installationType:(int64_t)type completion:(id)completion;
- (void)removeProvisioningProfileWithUUID:(id)d managingProfileIdentifier:(id)identifier completion:(id)completion;
- (void)removeSetAsideCloudConfigurationProfileWithCompletion:(id)completion;
- (void)removeUninstalledProfileWithIdentifier:(id)identifier installationType:(int64_t)type targetDeviceType:(unint64_t)deviceType completion:(id)completion;
- (void)removeValueSetting:(id)setting completion:(id)completion;
- (void)rereadManagedAppAttributesWithCompletion:(id)completion;
- (void)resetPasscodeMetadataWithCompletion:(id)completion;
- (void)restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:(id)completion;
- (void)setAllowedURLStrings:(id)strings completion:(id)completion;
- (void)setParametersForSettingsByType:(id)type configurationUUID:(id)d toSystem:(BOOL)system user:(BOOL)user credentialSet:(id)set completion:(id)completion;
- (void)setUserBookmarks:(id)bookmarks completion:(id)completion;
- (void)setUserInfo:(id)info forClientUUID:(id)d completion:(id)completion;
- (void)setupAssistantDidFinishCompletion:(id)completion;
- (void)showFeaturePromptForSetting:(id)setting configurationUUID:(id)d promptOptions:(id)options promptIdentifier:(id)identifier completion:(id)completion;
- (void)shutDownWithCompletion:(id)completion;
- (void)signerIdentityForBundleID:(id)d completion:(id)completion;
- (void)storeActivationRecord:(id)record completion:(id)completion;
- (void)storeCertificateData:(id)data forIPCUIdentifier:(id)identifier completion:(id)completion;
- (void)storeProfileData:(id)data completion:(id)completion;
- (void)storedProfileDataWithCompletion:(id)completion;
- (void)syncTrustedCodeSigningIdentitiesWithCompletion:(id)completion;
- (void)trustedCodeSigningIdentitiesWithCompletion:(id)completion;
- (void)unstageMDMEnrollmentInfoForPairingWatchWithCompletion:(id)completion;
- (void)updateMDMEnrollmentInfoForPairingWatch:(id)watch completion:(id)completion;
- (void)updateProfileIdentifier:(id)identifier interactive:(BOOL)interactive completion:(id)completion;
- (void)validateAppBundleIDs:(id)ds completion:(id)completion;
- (void)verifiedMDMProfileIdentifierWithCompletion:(id)completion;
@end

@implementation MCProfileServicer

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- (void)checkInWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[MCProfileServiceServer sharedServer];
  connectionTracker = [v5 connectionTracker];
  xpcConnection = [(MCProfileServicer *)self xpcConnection];
  [connectionTracker trackRequestFromPID:{objc_msgSend(xpcConnection, "processIdentifier")}];

  v8 = +[MCProfileServiceServer sharedServer];
  [v8 checkInWithCompletion:completionCopy];
}

- (void)notifyDeviceUnlockedAndPasscodeRequiredWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[MCProfileServiceServer sharedServer];
  [v4 notifyDeviceUnlockedAndPasscodeRequiredWithCompletion:completionCopy];
}

- (void)notifyDeviceUnlockedWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[MCProfileServiceServer sharedServer];
  [v4 notifyDeviceUnlockedWithCompletion:completionCopy];
}

- (void)defaultAppBundleIDForCommunicationServiceType:(id)type forAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  typeCopy = type;
  v10 = +[MCProfileServiceServer sharedServer];
  [v10 defaultAppBundleIDForCommunicationServiceType:typeCopy forAccountWithIdentifier:identifierCopy completion:completionCopy];
}

- (void)setAllowedURLStrings:(id)strings completion:(id)completion
{
  completionCopy = completion;
  stringsCopy = strings;
  xpcConnection = [(MCProfileServicer *)self xpcConnection];
  processIdentifier = [xpcConnection processIdentifier];

  v11 = +[MCProfileServiceServer sharedServer];
  remoteProcessBundleID = [(MCProfileServicer *)self remoteProcessBundleID];
  [v11 setAllowedURLStrings:stringsCopy senderPID:processIdentifier sender:remoteProcessBundleID completion:completionCopy];
}

- (BOOL)remoteProcessHasBooleanEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  if (!entitlementCopy)
  {
    sub_1000C2828(a2, self);
  }

  xpcConnection = [(MCProfileServicer *)self xpcConnection];
  v7 = [xpcConnection valueForEntitlement:entitlementCopy];

  v8 = 0;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 BOOLValue])
    {
      v8 = 1;
    }
  }

  return v8;
}

- (id)remoteProcessEntitlementStringArrayForKey:(id)key
{
  keyCopy = key;
  xpcConnection = [(MCProfileServicer *)self xpcConnection];
  v6 = [xpcConnection valueForEntitlement:keyCopy];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v13 = 0;
            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = v7;
LABEL_14:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)remoteProcessHasEntitlementArray:(id)array containingString:(id)string
{
  arrayCopy = array;
  stringCopy = string;
  if (arrayCopy)
  {
    v9 = [(MCProfileServicer *)self remoteProcessEntitlementStringArrayForKey:arrayCopy];
    v10 = v9;
    if (stringCopy)
    {
      v11 = [v9 containsObject:stringCopy];
    }

    else if (v9)
    {
      v12 = _MCLogObjects[2];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = arrayCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No containing string demanded from process with array entitlement %{public}@. Granting entitlement since array is present.", &v14, 0xCu);
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    sub_1000C289C(a2, self);
    v11 = 0;
  }

  return v11;
}

- (id)remoteProcessBundleID
{
  v8 = 0u;
  v9 = 0u;
  xpcConnection = [(MCProfileServicer *)self xpcConnection];
  v3 = xpcConnection;
  if (xpcConnection)
  {
    [xpcConnection auditToken];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v4 = MCBundleIDFromAuditToken();
  if (!v4)
  {
    v5 = _MCLogObjects[2];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "The process XPC-ing to profiled is missing an application-identifier entitlement. Check client logs from the ManagedConfiguration framework for a log fault.", v7, 2u);
    }
  }

  return v4;
}

- (id)lacksBooleanEntitlementError:(id)error
{
  v3 = MCXPCErrorDomain;
  v4 = MCErrorArray();
  v5 = [NSError MCErrorWithDomain:v3 code:39000 descriptionArray:v4 errorType:MCErrorTypeFatal, error, 0];

  return v5;
}

- (id)lacksArrayEntitlementError:(id)error withMemberString:(id)string
{
  v4 = MCXPCErrorDomain;
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v4 code:39000 descriptionArray:v5 errorType:MCErrorTypeFatal, error, string, 0];

  return v6;
}

- (BOOL)remoteProcessHasBooleanEntitlement:(id)entitlement error:(id *)error
{
  entitlementCopy = entitlement;
  if (![(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:entitlementCopy]&& ![(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled-access"])
  {
    v7 = [(MCProfileServicer *)self lacksBooleanEntitlementError:entitlementCopy];
    v8 = 0;
    if (!error)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v7 = 0;
  v8 = 1;
  if (error)
  {
LABEL_4:
    v7 = v7;
    *error = v7;
  }

LABEL_5:

  return v8;
}

- (BOOL)remoteProcessHasEntitlementArray:(id)array containingString:(id)string error:(id *)error
{
  arrayCopy = array;
  stringCopy = string;
  if (![(MCProfileServicer *)self remoteProcessHasEntitlementArray:arrayCopy containingString:stringCopy]&& ![(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled-access"])
  {
    v10 = [(MCProfileServicer *)self lacksArrayEntitlementError:arrayCopy withMemberString:stringCopy];
    v11 = 0;
    if (!error)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v10 = 0;
  v11 = 1;
  if (error)
  {
LABEL_4:
    v10 = v10;
    *error = v10;
  }

LABEL_5:

  return v11;
}

- (void)verifiedMDMProfileIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled-access" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 verifiedMDMProfileIdentifierWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v6, 0);
  }
}

- (void)isProfileInstalledWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled.profile-list-read"])
  {
    v8 = 0;
  }

  else
  {
    v13 = 0;
    v9 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"Inspection" error:&v13];
    v8 = v13;
    if ((v9 & 1) == 0)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v8, 0);
      }

      goto LABEL_11;
    }
  }

  if (identifierCopy)
  {
    v10 = +[MCManifest sharedManifest];
    allInstalledProfileIdentifiers = [v10 allInstalledProfileIdentifiers];
    v12 = [allInstalledProfileIdentifiers containsObject:identifierCopy];

    if (!completionCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v12 = 0;
  if (completionCopy)
  {
LABEL_8:
    (completionCopy)[2](completionCopy, 0, v12);
  }

LABEL_11:
}

- (void)installProfileData:(id)data interactive:(BOOL)interactive options:(id)options completion:(id)completion
{
  interactiveCopy = interactive;
  dataCopy = data;
  optionsCopy = options;
  completionCopy = completion;
  if (interactiveCopy)
  {
    v32 = 0;
    v13 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"CustomUIInstallation" error:&v32];
    v14 = v32;
  }

  else
  {
    v31 = 0;
    v13 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"SilentNonUIInstallation" error:&v31];
    v14 = v31;
  }

  v15 = v14;
  if (v13)
  {
    v16 = [optionsCopy objectForKey:kMCInstallProfileOptionFilterFlag];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 integerValue] == 2)
    {
      v30 = v15;
      v17 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"CarrierInstallation" error:&v30];
      v18 = v30;

      if ((v17 & 1) == 0)
      {
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0, v18);
        }

        goto LABEL_20;
      }

      v28 = v18;
    }

    else
    {
      v28 = v15;
    }

    v19 = optionsCopy;
    remoteProcessBundleID = [(MCProfileServicer *)self remoteProcessBundleID];
    if (remoteProcessBundleID)
    {
      v21 = [[NSMutableDictionary alloc] initWithDictionary:v19];
      [v21 setObject:remoteProcessBundleID forKey:kMCInstallProfileOptionInstalledBy];
      v22 = [v21 copy];

      v19 = v22;
    }

    else
    {
      v23 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not retrieve the bundle ID of the calling process. Not marking profile's installer.", buf, 2u);
      }
    }

    if (interactiveCopy)
    {
      v24 = [MCInteractionClient alloc];
      xpcConnection = [(MCProfileServicer *)self xpcConnection];
      v26 = [(MCInteractionClient *)v24 initWithXPCClientConnection:xpcConnection];
    }

    else
    {
      v26 = 0;
    }

    v27 = +[MCProfileServiceServer sharedServer];
    [v27 installProfileData:dataCopy interactionClient:v26 options:v19 source:remoteProcessBundleID completion:completionCopy];

    v18 = v28;
LABEL_20:

    v15 = v18;
    goto LABEL_21;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v15);
  }

LABEL_21:
}

- (void)popProfileDataFromHeadOfInstallationQueueWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"PopInstallationQueue" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 popProfileDataFromHeadOfInstallationQueueWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v6);
  }
}

- (void)peekProfileDataFromPurgatoryForDeviceType:(unint64_t)type withCompletion:(id)completion
{
  completionCopy = completion;
  v13 = 0;
  v7 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"PopInstallationQueue" error:&v13];
  v8 = v13;
  if (type >= 8 && v7)
  {
    v9 = [NSNumber numberWithUnsignedInteger:type];
    stringValue = [v9 stringValue];
    v11 = [(MCProfileServicer *)self _invalidValue:stringValue forArgument:@"MCProfileTargetDeviceType"];

    v8 = v11;
  }

  else if (v7)
  {
    v12 = +[MCProfileServiceServer sharedServer];
    [v12 peekProfileDataFromPurgatoryForDeviceType:type withCompletion:completionCopy];

    goto LABEL_8;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v8);
  }

LABEL_8:
}

- (void)updateProfileIdentifier:(id)identifier interactive:(BOOL)interactive completion:(id)completion
{
  interactiveCopy = interactive;
  identifierCopy = identifier;
  completionCopy = completion;
  if (interactiveCopy)
  {
    v19 = 0;
    v10 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"CustomUIInstallation" error:&v19];
    v11 = v19;
    if (v10)
    {
      v12 = [MCInteractionClient alloc];
      xpcConnection = [(MCProfileServicer *)self xpcConnection];
      v14 = [(MCInteractionClient *)v12 initWithXPCClientConnection:xpcConnection];

LABEL_6:
      v16 = +[MCProfileServiceServer sharedServer];
      remoteProcessBundleID = [(MCProfileServicer *)self remoteProcessBundleID];
      [v16 updateProfileIdentifier:identifierCopy interactionClient:v14 source:remoteProcessBundleID completion:completionCopy];

      goto LABEL_9;
    }
  }

  else
  {
    v18 = 0;
    v15 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"SilentNonUIInstallation" error:&v18];
    v11 = v18;
    if (v15)
    {
      v14 = 0;
      goto LABEL_6;
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v11);
  }

LABEL_9:
}

- (id)_invalidValue:(id)value forArgument:(id)argument
{
  v4 = MCProfileRemovalErrorDomain;
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v4 code:1010 descriptionArray:v5 errorType:MCErrorTypeFatal, argument, value, 0];

  return v6;
}

- (void)removeProfileWithIdentifier:(id)identifier installationType:(int64_t)type completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v18 = 0;
  v10 = [(MCProfileServicer *)self remoteProcessCanRemoveProfilesOutError:&v18];
  v11 = v18;
  if (v10)
  {
    if ([(MCProfileServicer *)self isCloudLockedProfileWithIdentifier:identifierCopy])
    {
      v12 = MCProfileRemovalErrorDomain;
      v13 = MCErrorArray();
      v14 = [NSError MCErrorWithDomain:v12 code:52000 descriptionArray:v13 errorType:MCErrorTypeFatal, 0];
    }

    else
    {
      if (type < 3)
      {
        v15 = +[MCProfileServiceServer sharedServer];
        remoteProcessBundleID = [(MCProfileServicer *)self remoteProcessBundleID];
        [v15 removeProfileWithIdentifier:identifierCopy installationType:type source:remoteProcessBundleID completion:completionCopy];

        goto LABEL_10;
      }

      v13 = [NSNumber numberWithInteger:type];
      stringValue = [v13 stringValue];
      v14 = [(MCProfileServicer *)self _invalidValue:stringValue forArgument:@"MCProfileInstallationType"];

      v11 = stringValue;
    }

    v11 = v14;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11);
  }

LABEL_10:
}

- (void)removeUninstalledProfileWithIdentifier:(id)identifier installationType:(int64_t)type targetDeviceType:(unint64_t)deviceType completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v20 = 0;
  v12 = [(MCProfileServicer *)self remoteProcessCanRemoveProfilesOutError:&v20];
  v13 = v20;
  if (type >= 3 && v12)
  {
    v14 = [NSNumber numberWithInteger:type];
    v15 = @"MCProfileInstallationType";
LABEL_8:
    stringValue = [v14 stringValue];
    v18 = [(MCProfileServicer *)self _invalidValue:stringValue forArgument:v15];

    v13 = v18;
    goto LABEL_9;
  }

  v16 = v12 ^ 1;
  if (deviceType < 8)
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    v14 = [NSNumber numberWithUnsignedInteger:deviceType];
    v15 = @"MCProfileTargetDeviceType";
    goto LABEL_8;
  }

  if (v12)
  {
    v19 = +[MCProfileServiceServer sharedServer];
    [v19 removeUninstalledProfileWithIdentifier:identifierCopy installationType:type targetDeviceType:deviceType completion:completionCopy];

    goto LABEL_11;
  }

LABEL_9:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v13);
  }

LABEL_11:
}

- (void)removeProtectedProfileWithIdentifier:(id)identifier installationType:(int64_t)type completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v19 = 0;
  v10 = [(MCProfileServicer *)self remoteProcessCanRemoveProfilesOutError:&v19];
  v11 = v19;
  if (v10)
  {
    v12 = [(MCProfileServicer *)self isCloudLockedProfileWithIdentifier:identifierCopy];
    v13 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"CloudLockedRemoval"];
    if (!v12 || (v13 & 1) != 0)
    {
      if (type < 3)
      {
        v15 = +[MCProfileServiceServer sharedServer];
        remoteProcessBundleID = [(MCProfileServicer *)self remoteProcessBundleID];
        [v15 removeProfileWithIdentifier:identifierCopy installationType:type source:remoteProcessBundleID completion:completionCopy];

        goto LABEL_11;
      }

      v17 = [NSNumber numberWithInteger:type];
      stringValue = [v17 stringValue];
      v14 = [(MCProfileServicer *)self _invalidValue:stringValue forArgument:@"MCProfileInstallationType"];

      v11 = v17;
    }

    else
    {
      v14 = [(MCProfileServicer *)self lacksArrayEntitlementError:@"com.apple.managedconfiguration.profiled.configurationprofiles" withMemberString:@"CloudLockedRemoval"];
    }

    v11 = v14;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11);
  }

LABEL_11:
}

- (void)removePostSetupAutoInstallSetAsideProfileWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessCanRemoveProfilesOutError:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 removePostSetupAutoInstallSetAsideProfileWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v6);
  }
}

- (void)removeSetAsideCloudConfigurationProfileWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"CloudConfiguration" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 removeSetAsideCloudConfigurationProfileWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v6);
  }
}

- (BOOL)isCloudLockedProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[MCManifest sharedManifest];
  v5 = [v4 installedProfileWithIdentifier:identifierCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isCloudLocked = [v5 isCloudLocked];
  }

  else
  {
    isCloudLocked = 0;
  }

  return isCloudLocked;
}

- (void)applyRestrictionDictionary:(id)dictionary toSystem:(BOOL)system overrideRestrictions:(BOOL)restrictions appsAndOptions:(id)options clientType:(id)type clientUUID:(id)d localizedClientDescription:(id)description localizedWarningMessage:(id)self0 completion:(id)self1
{
  systemCopy = system;
  restrictionsCopy = restrictions;
  dictionaryCopy = dictionary;
  optionsCopy = options;
  typeCopy = type;
  dCopy = d;
  descriptionCopy = description;
  messageCopy = message;
  completionCopy = completion;
  v28 = 0;
  v22 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"ClientRestrictions" error:&v28];
  v23 = v28;
  if (v22)
  {
    v24 = +[MCProfileServiceServer sharedServer];
    remoteProcessBundleID = [(MCProfileServicer *)self remoteProcessBundleID];
    [v24 applyRestrictionDictionary:dictionaryCopy toSystem:systemCopy overrideRestrictions:restrictionsCopy appsAndOptions:optionsCopy clientType:typeCopy clientUUID:dCopy sender:remoteProcessBundleID localizedClientDescription:descriptionCopy localizedWarningMessage:messageCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, v23);
  }
}

- (void)clearRecoveryPasscodeWithCompletion:(id)completion
{
  completionCopy = completion;
  v9 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"Passcode" error:&v9];
  v6 = v9;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    remoteProcessBundleID = [(MCProfileServicer *)self remoteProcessBundleID];
    [v7 clearRecoveryPasscodeWithSenderBundleID:remoteProcessBundleID completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v6);
  }
}

- (void)clearPasscodeWithEscrowKeybagData:(id)data secret:(id)secret completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v16 = 0;
  v10 = [MCSecurePasscodeContextWrapper contextWrapperForSecureSecretData:secret outError:&v16];
  v11 = v16;
  if (v11)
  {
    completionCopy[2](completionCopy, v11);
  }

  else
  {
    externalizedContext = [v10 externalizedContext];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100057CF0;
    v13[3] = &unk_10011C818;
    v15 = completionCopy;
    v14 = v10;
    [(MCProfileServicer *)self clearPasscodeWithEscrowKeybagData:dataCopy secretContext:externalizedContext completion:v13];
  }
}

- (void)clearPasscodeWithEscrowKeybagData:(id)data secretContext:(id)context completion:(id)completion
{
  dataCopy = data;
  contextCopy = context;
  completionCopy = completion;
  v15 = 0;
  v11 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"Passcode" error:&v15];
  v12 = v15;
  if (v11)
  {
    v13 = +[MCProfileServiceServer sharedServer];
    remoteProcessBundleID = [(MCProfileServicer *)self remoteProcessBundleID];
    [v13 clearPasscodeWithEscrowKeybagData:dataCopy secretContext:contextCopy senderBundleID:remoteProcessBundleID completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v12);
  }
}

- (void)isPasscodeCompliantWithNamedPolicy:(id)policy completion:(id)completion
{
  policyCopy = policy;
  completionCopy = completion;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"PasscodeCompliance" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 isPasscodeCompliantWithNamedPolicy:policyCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v9);
  }
}

- (void)resetPasscodeMetadataWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"PasscodeMetadata" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 resetPasscodeMetadataWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v6);
  }
}

- (void)removeOrphanedClientRestrictionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"ClientRestrictions" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 removeOrphanedClientRestrictionsWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v6);
  }
}

- (void)managedSystemConfigurationServiceIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"NetworkExtension" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 managedSystemConfigurationServiceIDsWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v6);
  }
}

- (void)managedWiFiNetworkNamesWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"WiFiNetworks" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 managedWiFiNetworkNamesWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v6);
  }
}

- (void)setParametersForSettingsByType:(id)type configurationUUID:(id)d toSystem:(BOOL)system user:(BOOL)user credentialSet:(id)set completion:(id)completion
{
  systemCopy = system;
  userCopy = user;
  typeCopy = type;
  dCopy = d;
  setCopy = set;
  completionCopy = completion;
  v75 = 0;
  LOBYTE(completion) = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"UserSettings" error:&v75];
  v62 = v75;
  if (completion)
  {
LABEL_2:
    v16 = [typeCopy objectForKeyedSubscript:MCRestrictedBoolKey];
    v17 = MCFeatureUSBRestrictedModeAllowed;
    v18 = [v16 objectForKeyedSubscript:MCFeatureUSBRestrictedModeAllowed];
    if (v18)
    {
      v19 = v18;
      v20 = +[MCPasscodeManager sharedManager];
      isDeviceLocked = [v20 isDeviceLocked];

      if (isDeviceLocked)
      {
        v22 = MCSettingsErrorDomain;
        v54 = v17;
        v23 = MCErrorArray();
        v24 = [NSError MCErrorWithDomain:v22 code:28006 descriptionArray:v23 errorType:MCErrorTypeFatal, v54, 0];

        if (completionCopy)
        {
          completionCopy[2](completionCopy, v24);
        }

        goto LABEL_39;
      }
    }

    else
    {
    }

    xpcConnection = [(MCProfileServicer *)self xpcConnection];
    processIdentifier = [xpcConnection processIdentifier];

    v24 = +[MCProfileServiceServer sharedServer];
    remoteProcessBundleID = [(MCProfileServicer *)self remoteProcessBundleID];
    [v24 setParametersForSettingsByType:typeCopy configurationUUID:dCopy toSystem:systemCopy user:userCopy credentialSet:setCopy senderPID:processIdentifier sender:remoteProcessBundleID completion:completionCopy];

LABEL_39:
    v46 = 0;
    v47 = v62;
    goto LABEL_40;
  }

  v57 = completionCopy;
  v58 = dCopy;
  v25 = +[NSMutableArray array];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  allKeys = [typeCopy allKeys];
  v27 = [allKeys countByEnumeratingWithState:&v71 objects:v82 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v72;
    v59 = typeCopy;
    v55 = *v72;
    while (2)
    {
      v30 = 0;
      v56 = v28;
      do
      {
        if (*v72 != v29)
        {
          objc_enumerationMutation(allKeys);
        }

        v31 = *(*(&v71 + 1) + 8 * v30);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_33:

          typeCopy = v59;
          goto LABEL_34;
        }

        v32 = [v59 objectForKeyedSubscript:v31];
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v33 = v32;
        v34 = [v33 countByEnumeratingWithState:&v67 objects:v81 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v68;
          while (2)
          {
            for (i = 0; i != v35; i = i + 1)
            {
              if (*v68 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v67 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

                goto LABEL_33;
              }

              [v25 addObject:v38];
            }

            v35 = [v33 countByEnumeratingWithState:&v67 objects:v81 count:16];
            if (v35)
            {
              continue;
            }

            break;
          }
        }

        v30 = v30 + 1;
        v29 = v55;
      }

      while (v30 != v56);
      v28 = [allKeys countByEnumeratingWithState:&v71 objects:v82 count:16];
      typeCopy = v59;
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  if ([v25 count])
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v39 = v25;
    v40 = [v39 countByEnumeratingWithState:&v63 objects:v80 count:16];
    if (!v40)
    {
LABEL_31:

      dCopy = v58;
      completionCopy = v57;
      goto LABEL_2;
    }

    v41 = v40;
    v42 = *v64;
LABEL_25:
    v43 = 0;
    while (1)
    {
      if (*v64 != v42)
      {
        objc_enumerationMutation(v39);
      }

      v44 = *(*(&v63 + 1) + 8 * v43);
      v45 = objc_autoreleasePoolPush();
      v46 = [NSString stringWithFormat:@"%@%@", @"com.apple.managedconfiguration.feature-setting.", v44];
      if (![(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:v46])
      {
        break;
      }

      objc_autoreleasePoolPop(v45);
      if (v41 == ++v43)
      {
        v41 = [v39 countByEnumeratingWithState:&v63 objects:v80 count:16];
        if (v41)
        {
          goto LABEL_25;
        }

        goto LABEL_31;
      }
    }

    v51 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v52 = v51;
      remoteProcessBundleID2 = [(MCProfileServicer *)self remoteProcessBundleID];
      *buf = 138543618;
      v77 = remoteProcessBundleID2;
      v78 = 2114;
      v79 = v46;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Process %{public}@ needs the entitlement “%{public}@”", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v45);

    dCopy = v58;
    completionCopy = v57;
    if (!v46)
    {
      goto LABEL_35;
    }

    v24 = [(MCProfileServicer *)self lacksBooleanEntitlementError:v46];
    v47 = v62;
    if (v57)
    {
      goto LABEL_36;
    }
  }

  else
  {
LABEL_34:

    dCopy = v58;
    completionCopy = v57;
LABEL_35:
    v47 = v62;
    v24 = v62;
    v46 = 0;
    if (completionCopy)
    {
LABEL_36:
      completionCopy[2](completionCopy, v24);
    }
  }

LABEL_40:
}

- (void)removeBoolSetting:(id)setting completion:(id)completion
{
  settingCopy = setting;
  completionCopy = completion;
  v12 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"UserSettings" error:&v12];
  v9 = v12;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    remoteProcessBundleID = [(MCProfileServicer *)self remoteProcessBundleID];
    [v10 removeBoolSetting:settingCopy sender:remoteProcessBundleID completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v9);
  }
}

- (void)removeValueSetting:(id)setting completion:(id)completion
{
  settingCopy = setting;
  completionCopy = completion;
  v12 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"UserSettings" error:&v12];
  v9 = v12;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    remoteProcessBundleID = [(MCProfileServicer *)self remoteProcessBundleID];
    [v10 removeValueSetting:settingCopy sender:remoteProcessBundleID completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v9);
  }
}

- (void)storeCertificateData:(id)data forIPCUIdentifier:(id)identifier completion:(id)completion
{
  dataCopy = data;
  identifierCopy = identifier;
  completionCopy = completion;
  v14 = 0;
  v11 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"Certificates" error:&v14];
  v12 = v14;
  if (v11)
  {
    v13 = +[MCProfileServiceServer sharedServer];
    [v13 storeCertificateData:dataCopy forIPCUIdentifier:identifierCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v12);
  }
}

- (void)installProvisioningProfileData:(id)data managingProfileIdentifier:(id)identifier completion:(id)completion
{
  dataCopy = data;
  identifierCopy = identifier;
  completionCopy = completion;
  v14 = 0;
  v11 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.provisioningprofiles" containingString:@"Installation" error:&v14];
  v12 = v14;
  if (v11)
  {
    v13 = +[MCProfileServiceServer sharedServer];
    [v13 installProvisioningProfileData:dataCopy managingProfileIdentifier:identifierCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v12);
  }
}

- (void)removeProvisioningProfileWithUUID:(id)d managingProfileIdentifier:(id)identifier completion:(id)completion
{
  dCopy = d;
  identifierCopy = identifier;
  completionCopy = completion;
  v15 = 0;
  v11 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.provisioningprofiles" containingString:@"Removal" error:&v15];
  v12 = v15;
  if (v11)
  {
    v13 = +[MCProfileServiceServer sharedServer];
    remoteProcessBundleID = [(MCProfileServicer *)self remoteProcessBundleID];
    [v13 removeProvisioningProfileWithUUID:dCopy managingProfileIdentifier:identifierCopy sender:remoteProcessBundleID completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)trustedCodeSigningIdentitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[MCProfileServiceServer sharedServer];
  [v4 trustedCodeSigningIdentitiesWithCompletion:completionCopy];
}

- (void)syncTrustedCodeSigningIdentitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[MCProfileServiceServer sharedServer];
  [v4 syncTrustedCodeSigningIdentitiesWithCompletion:completionCopy];
}

- (void)provisiongProfileUUIDsForSignerIdentity:(id)identity completion:(id)completion
{
  completionCopy = completion;
  identityCopy = identity;
  v7 = +[MCProfileServiceServer sharedServer];
  [v7 provisiongProfileUUIDsForSignerIdentity:identityCopy completion:completionCopy];
}

- (void)signerIdentityForBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v7 = +[MCProfileServiceServer sharedServer];
  [v7 signerIdentityForBundleID:dCopy completion:completionCopy];
}

- (void)isBundleBlocked:(id)blocked completion:(id)completion
{
  blockedCopy = blocked;
  completionCopy = completion;
  v16 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled-access" error:&v16];
  v9 = v16;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    v14 = 0;
    v15 = 0;
    v11 = [v10 isBundleBlocked:blockedCopy outHash:&v15 outHashType:&v14];
    v12 = v15;
    v13 = v14;
    completionCopy[2](completionCopy, v11, v12, v13, 0);
  }

  else if (completionCopy)
  {
    (completionCopy)[2](completionCopy, 0, 0, 0, v9);
  }
}

- (void)areBundlesBlocked:(id)blocked completion:(id)completion
{
  blockedCopy = blocked;
  completionCopy = completion;
  v37 = 0;
  LOBYTE(completion) = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled-access" error:&v37];
  v8 = v37;
  v9 = v8;
  if (completion)
  {
    v22 = v8;
    v23 = completionCopy;
    v30 = +[MCProfileServiceServer sharedServer];
    v29 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = blockedCopy;
    obj = blockedCopy;
    v10 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v28 = *v34;
      v12 = kMCMISIsBlockedKey;
      v27 = kMCMISHashKey;
      v26 = kMCMISHashTypeKey;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          v31 = 0;
          v32 = 0;
          v15 = [v30 isBundleBlocked:v14 outHash:&v32 outHashType:&v31];
          v16 = v32;
          v17 = v31;
          v18 = [NSMutableDictionary alloc];
          v38 = v12;
          v19 = [NSNumber numberWithBool:v15];
          v39 = v19;
          v20 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          v21 = [v18 initWithDictionary:v20];

          if (v16)
          {
            [v21 setObject:v16 forKeyedSubscript:v27];
          }

          if (v17)
          {
            [v21 setObject:v17 forKeyedSubscript:v26];
          }

          [v29 setObject:v21 forKeyedSubscript:v14];
        }

        v11 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v11);
    }

    completionCopy = v23;
    (v23)[2](v23, v29, 0);

    blockedCopy = v24;
    v9 = v22;
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v8);
  }
}

- (void)notifyStartComplianceTimer:(id)timer completion:(id)completion
{
  timerCopy = timer;
  completionCopy = completion;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled.usercompliance" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 notifyStartComplianceTimer:timerCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v9);
  }
}

- (void)notifyHaveSeenComplianceMessageWithLastLockDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled.usercompliance" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 notifyHaveSeenComplianceMessageWithLastLockDate:dateCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v9);
  }
}

- (void)recomputeUserComplianceWarningWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled.usercompliance" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 recomputeUserComplianceWarningWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v6);
  }
}

- (void)recomputePerClientUserComplianceWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled.usercompliance" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 recomputePerClientUserComplianceWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v6);
  }
}

- (void)setUserInfo:(id)info forClientUUID:(id)d completion:(id)completion
{
  infoCopy = info;
  dCopy = d;
  completionCopy = completion;
  v15 = 0;
  v11 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"ClientRestrictions" error:&v15];
  v12 = v15;
  if (v11)
  {
    v13 = +[MCProfileServiceServer sharedServer];
    remoteProcessBundleID = [(MCProfileServicer *)self remoteProcessBundleID];
    [v13 setUserInfo:infoCopy forClientUUID:dCopy sender:remoteProcessBundleID completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v12);
  }
}

- (void)removeExpiredProfilesWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.provisioningprofiles" containingString:@"Removal" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 removeExpiredProfilesWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v6);
  }
}

- (void)storeProfileData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"DEPInstallation" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 storeProfileData:dataCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v9);
  }
}

- (void)storedProfileDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"DEPInstallation" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 storedProfileDataWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v6);
  }
}

- (void)markStoredProfileAsInstalledWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"DEPInstallation" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 markStoredProfileAsInstalledWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v6);
  }
}

- (void)rereadManagedAppAttributesWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"ManagedApplications" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 rereadManagedAppAttributesWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v6);
  }
}

- (void)reducedMachineInfoDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"MachineInfo" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 reducedMachineInfoDataWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v6);
  }
}

- (void)cloudConfigurationMachineInfoDataWithAdditionalInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"MachineInfo" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 cloudConfigurationMachineInfoDataWithAdditionalInfo:infoCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v9);
  }
}

- (void)cloudConfigurationStoreDetails:(id)details completion:(id)completion
{
  detailsCopy = details;
  completionCopy = completion;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"CloudConfiguration" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 cloudConfigurationStoreDetails:detailsCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v9);
  }
}

- (void)cloudConfigurationStoreDetailsForPendingMigration:(id)migration completion:(id)completion
{
  migrationCopy = migration;
  completionCopy = completion;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"CloudConfiguration" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 cloudConfigurationStoreDetailsForPendingMigration:migrationCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v9);
  }
}

- (void)restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v11 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"CloudConfiguration" error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = +[MCProfileServiceServer sharedServer];
    [v8 restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:completionCopy];
  }

  else if (v6)
  {
    v9 = _MCLogObjects[2];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Remote process doesn't have the right entitlment!", v10, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v7);
    }
  }
}

- (void)createActivationLockBypassCodeWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"ActivationLock" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 createActivationLockBypassCodeWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v6);
  }
}

- (void)storeActivationRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"ActivationRecord" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 storeActivationRecord:recordCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v9);
  }
}

- (void)setUserBookmarks:(id)bookmarks completion:(id)completion
{
  bookmarksCopy = bookmarks;
  completionCopy = completion;
  v14 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"Safari" error:&v14];
  v9 = v14;
  if (v8)
  {
    xpcConnection = [(MCProfileServicer *)self xpcConnection];
    processIdentifier = [xpcConnection processIdentifier];

    v12 = +[MCProfileServiceServer sharedServer];
    remoteProcessBundleID = [(MCProfileServicer *)self remoteProcessBundleID];
    [v12 setUserBookmarks:bookmarksCopy senderPID:processIdentifier sender:remoteProcessBundleID completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v9);
  }
}

- (void)setupAssistantDidFinishCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setup Assistant finished.", buf, 2u);
  }

  v5 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-SetupAssistantFinished"];
  v6 = +[MDMClient sharedClient];
  v7 = +[MDMConfiguration sharedConfiguration];
  accessRights = [v7 accessRights];

  v9 = +[MDMCloudConfiguration sharedConfiguration];
  isSupervised = [v9 isSupervised];

  v11 = +[NSFileManager defaultManager];
  v12 = MDMFilePath();
  v13 = [v11 fileExistsAtPath:v12 isDirectory:0];

  v14 = accessRights & 4;
  v15 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v35 = v13;
    v36 = 1024;
    v37 = isSupervised;
    v38 = 1024;
    v39 = v14 >> 2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Buddy completed. Enrolled in MDM: %u, supervised: %u, hasPasscodeRemovalRight: %u", buf, 0x14u);
  }

  v16 = _MCLogObjects[0];
  if (v13 && v14)
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Scheduling token update to inform the server about the new unlock token", buf, 2u);
    }

    [v6 scheduleTokenUpdate];
  }

  else
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Deleting any unlock token created during Buddy", buf, 2u);
    }

    MCKeybagDeleteMDMEscrowData();
    MCKeybagDeleteMDMEscrowSecret();
  }

  v17 = dispatch_time(0, 10000000000);
  v18 = dispatch_get_global_queue(0, 0);
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_10005ABD0;
  v31 = &unk_10011C868;
  v33 = v13;
  v19 = v5;
  v32 = v19;
  dispatch_after(v17, v18, &v28);

  v20 = [MDMCloudConfiguration sharedConfiguration:v28];
  mAIDUsername = [v20 MAIDUsername];

  v22 = +[MDMCloudConfiguration sharedConfiguration];
  hasMAIDCredential = [v22 hasMAIDCredential];

  v24 = +[MDMCloudConfiguration sharedConfiguration];
  alreadySignedIntoFaceTime = [v24 alreadySignedIntoFaceTime];

  if (mAIDUsername && hasMAIDCredential && (alreadySignedIntoFaceTime & 1) == 0)
  {
    v26 = +[MCProfileServiceServer sharedServer];
    [v26 signIntoFaceTimeWithUsername:mAIDUsername];
  }

  else
  {
    v27 = _MCLogObjects[2];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "No FT credentials provided in the DEP", buf, 2u);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)validateAppBundleIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v12 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.provisioningprofiles" containingString:@"Validation" error:&v12];
  v9 = v12;
  if (v8)
  {
    v10 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v14 = dsCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Validate app bundle IDs: %{public}@", buf, 0xCu);
    }

    v11 = +[MCProfileServiceServer sharedServer];
    [v11 validateAppBundleIDs:dsCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v9);
  }
}

- (void)recomputeProfileRestrictionsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled.migration" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 recomputeProfileRestrictionsWithCompletionBlock:blockCopy];
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy, v6);
  }
}

- (void)shutDownWithCompletion:(id)completion
{
  completionCopy = completion;
  v15 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled.shutdown" error:&v15];
  v6 = v15;
  if (v5)
  {
    xpc_transaction_exit_clean();
    if (completionCopy)
    {
      v7 = dispatch_get_global_queue(0, 0);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10005AFD8;
      v10[3] = &unk_10011B800;
      v8 = &v11;
      v11 = completionCopy;
      dispatch_async(v7, v10);
LABEL_6:
    }
  }

  else if (completionCopy)
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005AFC4;
    block[3] = &unk_10011B918;
    v8 = &v14;
    v14 = completionCopy;
    v13 = v6;
    dispatch_async(v9, block);

    v7 = v13;
    goto LABEL_6;
  }
}

- (void)showFeaturePromptForSetting:(id)setting configurationUUID:(id)d promptOptions:(id)options promptIdentifier:(id)identifier completion:(id)completion
{
  optionsCopy = options;
  identifierCopy = identifier;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10005B2AC;
  v30[3] = &unk_10011C8B8;
  completionCopy = completion;
  v31 = completionCopy;
  v13 = objc_retainBlock(v30);
  v29 = 0;
  v14 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"UserSettings" error:&v29];
  v15 = v29;
  if (v14)
  {
    v16 = +[MCUserNotificationManager sharedManager];
    v23 = identifierCopy;
    v22 = [(MCProfileServicer *)self prefixedFeaturePromptIdentifierForIdentifier:identifierCopy];
    v26 = [optionsCopy objectForKeyedSubscript:kMCFeaturePromptTitleKey];
    v25 = [optionsCopy objectForKeyedSubscript:kMCFeaturePromptMessageKey];
    v24 = MCLocalizedString();
    v17 = MCLocalizedString();
    v18 = [optionsCopy objectForKeyedSubscript:kMCFeaturePromptShowAlwaysAllowButtonKey];
    bOOLValue = [v18 BOOLValue];
    if (bOOLValue)
    {
      v20 = MCLocalizedString();
    }

    else
    {
      v20 = 0;
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10005B398;
    v27[3] = &unk_10011C210;
    v28 = v13;
    BYTE2(v21) = 1;
    LOWORD(v21) = 1;
    [v16 displayUserNotificationWithIdentifier:v22 title:v26 message:v25 defaultButtonText:v24 alternateButtonText:v17 otherButtonText:v20 textfieldPlaceholder:0.0 displayOnLockScreen:0 dismissOnLock:v21 displayInAppWhitelistModes:0 dismissAfterTimeInterval:v27 assertion:? completionBlock:?];
    if (bOOLValue)
    {
    }

    identifierCopy = v23;
  }

  else
  {
    (v13[2])(v13, 0, v15);
  }
}

- (void)cancelFeaturePromptWithIdentifier:(id)identifier completion:(id)completion
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005B6CC;
  v17[3] = &unk_10011BE40;
  completionCopy = completion;
  v18 = completionCopy;
  identifierCopy = identifier;
  v8 = objc_retainBlock(v17);
  if (!identifierCopy)
  {
    v9 = MCFeaturePromptErrorDomain;
    v10 = MCErrorArray();
    v11 = [NSError MCErrorWithDomain:v9 code:50002 descriptionArray:v10 errorType:MCErrorTypeFatal, 0];
    (v8[2])(v8, v11);
  }

  v12 = +[MCUserNotificationManager sharedManager];
  v13 = [(MCProfileServicer *)self prefixedFeaturePromptIdentifierForIdentifier:identifierCopy];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005B7AC;
  v15[3] = &unk_10011B800;
  v16 = v8;
  v14 = v8;
  [v12 cancelNotificationsWithIdentifier:v13 completionBlock:v15];
}

- (id)prefixedFeaturePromptIdentifierForIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [@"feature-prompt:" stringByAppendingString:?];
  }

  else
  {
    v4 = @"feature-prompt:";
  }

  return v4;
}

- (void)createMDMUnlockTokenIfNeededWithPasscode:(id)passcode completion:(id)completion
{
  completionCopy = completion;
  v13 = 0;
  v7 = [MCExtractablePasscodeContextWrapper contextWrapperForExtractablePasscode:passcode outError:&v13];
  v8 = v13;
  if (v8)
  {
    completionCopy[2](completionCopy, v8);
  }

  else
  {
    externalizedContext = [v7 externalizedContext];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005BC30;
    v10[3] = &unk_10011C818;
    v12 = completionCopy;
    v11 = v7;
    [(MCProfileServicer *)self createMDMUnlockTokenIfNeededWithPasscodeContext:externalizedContext completion:v10];
  }
}

- (void)createMDMUnlockTokenIfNeededWithPasscodeContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"Passcode" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 createMDMUnlockTokenIfNeededWithPasscodeContext:contextCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v9);
  }
}

- (void)monitorEnrollmentStateWithPersonaID:(id)d
{
  dCopy = d;
  v5 = [MCInteractionClient alloc];
  xpcConnection = [(MCProfileServicer *)self xpcConnection];
  v8 = [(MCInteractionClient *)v5 initWithXPCClientConnection:xpcConnection];

  v7 = +[MCProfileServiceServer sharedServer];
  [v7 monitorEnrollmentStateForClient:v8 personaID:dCopy];
}

- (void)managingOrganizationInformationWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"MDMInfo" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 managingOrganizationInformationWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v6);
  }
}

- (void)unstageMDMEnrollmentInfoForPairingWatchWithCompletion:(id)completion
{
  completionCopy = completion;
  _missingWatchMDMEnrollmentEntitlementError = [(MCProfileServicer *)self _missingWatchMDMEnrollmentEntitlementError];
  if (_missingWatchMDMEnrollmentEntitlementError)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, _missingWatchMDMEnrollmentEntitlementError);
    }
  }

  else
  {
    v5 = +[MCProfileServiceServer sharedServer];
    [v5 unstageMDMEnrollmentInfoForPairingWatchWithCompletion:completionCopy];
  }
}

- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion:(id)completion
{
  completionCopy = completion;
  _missingWatchMDMEnrollmentEntitlementError = [(MCProfileServicer *)self _missingWatchMDMEnrollmentEntitlementError];
  if (_missingWatchMDMEnrollmentEntitlementError)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, _missingWatchMDMEnrollmentEntitlementError);
    }
  }

  else
  {
    v5 = +[MCProfileServiceServer sharedServer];
    [v5 fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion:completionCopy];
  }
}

- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  _missingWatchMDMEnrollmentEntitlementError = [(MCProfileServicer *)self _missingWatchMDMEnrollmentEntitlementError];
  if (_missingWatchMDMEnrollmentEntitlementError)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, _missingWatchMDMEnrollmentEntitlementError);
    }
  }

  else
  {
    v8 = +[MCProfileServiceServer sharedServer];
    [v8 fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:tokenCopy completion:completionCopy];
  }
}

- (void)fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion:(id)completion
{
  completionCopy = completion;
  _missingWatchMDMEnrollmentEntitlementError = [(MCProfileServicer *)self _missingWatchMDMEnrollmentEntitlementError];
  if (_missingWatchMDMEnrollmentEntitlementError)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, _missingWatchMDMEnrollmentEntitlementError);
    }
  }

  else
  {
    v5 = +[MCProfileServiceServer sharedServer];
    [v5 fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion:completionCopy];
  }
}

- (void)applyPairingWatchMDMEnrollmentData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  _missingWatchMDMEnrollmentEntitlementError = [(MCProfileServicer *)self _missingWatchMDMEnrollmentEntitlementError];
  if (_missingWatchMDMEnrollmentEntitlementError)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, _missingWatchMDMEnrollmentEntitlementError);
    }
  }

  else
  {
    remoteProcessBundleID = [(MCProfileServicer *)self remoteProcessBundleID];
    if (!remoteProcessBundleID)
    {
      v10 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not retrieve the bundle ID of the calling process. Not marking profile's installer.", v12, 2u);
      }
    }

    v11 = +[MCProfileServiceServer sharedServer];
    [v11 applyPairingWatchMDMEnrollmentData:dataCopy source:remoteProcessBundleID completion:completionCopy];
  }
}

- (void)updateMDMEnrollmentInfoForPairingWatch:(id)watch completion:(id)completion
{
  watchCopy = watch;
  completionCopy = completion;
  _missingWatchMDMEnrollmentEntitlementError = [(MCProfileServicer *)self _missingWatchMDMEnrollmentEntitlementError];
  if (_missingWatchMDMEnrollmentEntitlementError)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, _missingWatchMDMEnrollmentEntitlementError);
    }
  }

  else
  {
    v8 = +[MCProfileServiceServer sharedServer];
    [v8 updateMDMEnrollmentInfoForPairingWatch:watchCopy completion:completionCopy];
  }
}

- (id)_missingWatchMDMEnrollmentEntitlementError
{
  v7 = 0;
  v2 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"WatchMDMEnrollment" error:&v7];
  v3 = v7;
  v4 = v3;
  v5 = 0;
  if ((v2 & 1) == 0)
  {
    v5 = v3;
  }

  return v5;
}

- (void)effectiveBoolValueForWatchSetting:(id)setting pairingID:(id)d pairingDataStore:(id)store completion:(id)completion
{
  settingCopy = setting;
  dCopy = d;
  storeCopy = store;
  completionCopy = completion;
  v17 = 0;
  v14 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"WatchSettings" error:&v17];
  v15 = v17;
  if (v14)
  {
    v16 = +[MCProfileServiceServer sharedServer];
    [v16 effectiveBoolValueForWatchSetting:settingCopy pairingID:dCopy pairingDataStore:storeCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v15);
  }
}

- (void)effectiveValueForWatchSetting:(id)setting pairingID:(id)d pairingDataStore:(id)store completion:(id)completion
{
  settingCopy = setting;
  dCopy = d;
  storeCopy = store;
  completionCopy = completion;
  v17 = 0;
  v14 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"WatchSettings" error:&v17];
  v15 = v17;
  if (v14)
  {
    v16 = +[MCProfileServiceServer sharedServer];
    [v16 effectiveValueForWatchSetting:settingCopy pairingID:dCopy pairingDataStore:storeCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v15);
  }
}

- (void)effectiveValuesForWatchIntersectionSetting:(id)setting pairingID:(id)d pairingDataStore:(id)store completion:(id)completion
{
  settingCopy = setting;
  dCopy = d;
  storeCopy = store;
  completionCopy = completion;
  v17 = 0;
  v14 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"WatchSettings" error:&v17];
  v15 = v17;
  if (v14)
  {
    v16 = +[MCProfileServiceServer sharedServer];
    [v16 effectiveValuesForWatchIntersectionSetting:settingCopy pairingID:dCopy pairingDataStore:storeCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v15);
  }
}

- (void)effectiveValuesForWatchUnionSetting:(id)setting pairingID:(id)d pairingDataStore:(id)store completion:(id)completion
{
  settingCopy = setting;
  dCopy = d;
  storeCopy = store;
  completionCopy = completion;
  v17 = 0;
  v14 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"WatchSettings" error:&v17];
  v15 = v17;
  if (v14)
  {
    v16 = +[MCProfileServiceServer sharedServer];
    [v16 effectiveValuesForWatchUnionSetting:settingCopy pairingID:dCopy pairingDataStore:storeCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v15);
  }
}

- (void)_debug_scheduleBackgroundTask:(id)task interval:(double)interval tolerance:(double)tolerance completion:(id)completion
{
  completionCopy = completion;
  taskCopy = task;
  v11 = +[MCProfileServiceServer sharedServer];
  [v11 _debug_scheduleBackgroundTask:taskCopy interval:completionCopy tolerance:interval completion:tolerance];
}

@end